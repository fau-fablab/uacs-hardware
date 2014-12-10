#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#ifdef WIN32
#include "windows-types.h"
#else
#include <inttypes.h>
 #ifndef AVR
 #include <strings.h>
 #endif
#endif

#include "aes.h"
#include "random.h"
#include "hexdump.h"
#include "desfire_functions.h"
#include "faucard_getuid.h"
#include "getuid-key-faucard.h"

int faucard_getuid(uint8_t *uid_buf, void *data, int card_comm(uint8_t *buf, size_t to_len, size_t from_max, void *data), int quiet)
{
	struct cmac_subkeys sk;
	uint8_t buf[38]; /* 38 is absolute minimum (RndAB + cla,ins,p1,p2,lc,le) */
	uint8_t iv[16];
	uint8_t RndB[16];
	uint8_t RndA[16];
	uint8_t Ksess[16];
	int res;
	int i;

	/* Example communication with TAG 04811a4aae2780, wrapped native APDU mode */

	/*
	 * This has already happened:
	 *     26
	 * Request type A (ISO14443-3 page 10f)
	 *
	 *     52
	 * Wake-Up (ISO14443-3 page 10f)
	 *
	 * TAG 04  03
	 * ATQA (ISO14443-3 page 13)
	 *
	 *     93  20
	 * Select with cascade level 1 (ISO14443-3 page 16)
	 * 
	 * TAG 80  8b  7a  4d  3c
	 * Tag with (random) UID 808b7a4d present
	 *
	 *     93  70  80  8b  7a  4d  3c  e1  40
	 * Select Tag 808b7a4d with cascade level 1 (ISO14443-3 page 16)
	 *
	 * TAG 20  fc  70
	 * SAK
	 *
	 *     e0  50  bc  a5
	 * RATS (ISO14443-4 page 4f, M075040 page 23)
	 *
	 * TAG 06  75  77  81  02  80  02  f0
	 * ATS
	 * 
	 */

	/*
	 * Select Application
	 *
	 * Wrapped native APDU mode begins here: (P1, P2 are always 00), PCB see ISO14443-4 page 14
	 *    PCB CLA INS  P1  P2  Lc  +--Data--+  Le  CRCCRC
	 *     02  90  5a  00  00  03  17  00  00  00  e1  bc
	 * Select application AID 000017 (M075040 page 38)
	 *
	 *    PCB SW1 SW2  CRCCRC
	 * TAG 02  91  00  29  10
	 * OK (Response-code is always SW2: 00)
	 *
	 * The PCB is usually added and stripped by the smartcard middleware (like PCSC)
	 * It will not be generated for and must not be present in the answers from card_comm
	 */
	buf[0] = 0x90; /* CLA */
	buf[1] = 0x5a; /* INS */
	buf[2] = 0x00; /* P1 */
	buf[3] = 0x00; /* P2 */
	buf[4] = 0x03; /* Lc */
	buf[5] = (APP_AID & 0xff);
	buf[6] = ((APP_AID >> 8) & 0xff);
	buf[7] = ((APP_AID >> 16) & 0xff);
	buf[8] = 0x00; /* Le */

	res = card_comm(buf, 9, sizeof(buf), data);
	if ((res != 2) || (memcmp(buf, "\x91\x00", 2))) {
		fprintf(stderr, "Select application: %s\n", desfire_status_string(buf, res));
		return 0;
	}

	/*
	 * Start Authentication
	 *
	 *     03  90  aa  00  00  01  07  00  26  52
	 * Start AES authentication (AA) on Key number 7 (see libfreefare source)
	 * AES IV is initialized with 00000000000000000000000000000000
	 *
	 *    PCB  +----------------------------Data----------------------------+ SW1 SW2  CRCCRC
	 * TAG 03  aa  be  2f  31  64  a5  f2  36  ad  a3  0a  f4  d6  c4  ec  3f  91  af  eb  66
	 * Tag generates random number RndB (09e78ff5c0ab9c0ce2e2b9e1d44d01e6) and sends it encrypted:
	 * aabe2f3164a5f236ada30af4d6c4ec3f
	 * E(RndB)
	 */
	buf[0] = 0x90; /* CLA */
	buf[1] = 0xaa; /* INS */
	buf[2] = 0x00; /* P1 */
	buf[3] = 0x00; /* P2 */
	buf[4] = 0x01; /* Lc */
	buf[5] = APP_KEY;
	buf[6] = 0x00; /* Le */
	res = card_comm(buf, 7, sizeof(buf), data);

	if ((res != 18) || (memcmp(buf+16, "\x91\xaf", 2))) {
		fprintf(stderr, "Authentication phase 1: %s\n", desfire_status_string(buf, res));
		return 0;
	}

	/* AES IV is initialized with 16 bytes of 0x00 */
	memset(iv, 0, sizeof(iv));

	/* Card sends encrypted RndB */
	if (!quiet)
		hexdump(buf, sizeof(RndB), "eRndB\t\t");
	AES(buf, RndB, sizeof(RndB), key_data, iv, 0);
	if (!quiet)
		hexdump(RndB, sizeof(RndB), "RndB\t\t");

	/* Our random key */
	random_bytes(RndA, 16);

	/*
	 * We send encrypted RndAB (RndB rotated left 1)
	 *
	 *     02  90  af  00  00  20  77  37  91  08  47  1d  6b  e5  ca  6a  62  cf  6f  e9  2c  94  b6  1d  fb  fa  58  14  5c  58  97  4e  c1  73  39  a3  07  0e  00  cb  bf
	 * Host generates 16 byte random RndA (21f86f0492f4baf2184d1f7817938245)
	 * Host decrypts tag random (RndB) and rotates it left one byte (e78ff5c0ab9c0ce2e2b9e1d44d01e609)
	 * Host concatenates both
	 * Host encrypts concatenated 32 bytes with key:
	 * 77379108471d6be5ca6a62cf6fe92c94 b61dfbfa58145c58974ec17339a3070e
	 * E(RndA                         + RndB)
	 *
	 * TAG 02  22  a8  f0  20  d6  07  5b  6b  80  8a  6c  d7  75  06  ba  24  91  00  5c  a3
	 * TAG decrypts both RndA and RndB, compares RndB and if it is correct
	 * TAG rotates RndA left one byte (f86f0492f4baf2184d1f781793824521) and encrypts it:
	 * 22a8f020d6075b6b808a6cd77506ba24
	 * E(RndA)
	 */


	buf[0] = 0x90; /* CLA */
	buf[1] = 0xaf; /* INS */
	buf[2] = 0x00; /* P1 */
	buf[3] = 0x00; /* P2 */
	buf[4] = sizeof(RndA) + sizeof(RndB); /* Lc */
	memcpy(buf+5, RndA, sizeof(RndA));
	memcpy(buf+5+sizeof(RndA), RndB+1, sizeof(RndB)-1);
	buf[5+sizeof(RndA)+sizeof(RndB)-1] = RndB[0];

	if (!quiet)
		hexdump(buf+5, sizeof(RndA) + sizeof(RndB), "RndAB\t\t");
	AES(buf+5, buf+5, sizeof(RndA) + sizeof(RndB), key_data, iv, 1);
	if (!quiet)
		hexdump(buf+5, sizeof(RndA) + sizeof(RndB), "eRndAB\t\t");

	buf[5+sizeof(RndA)+sizeof(RndB)] = 0x00; /* Le */

	res = card_comm(buf, 6+sizeof(RndA)+sizeof(RndB), sizeof(buf), data);

	if ((res != 18) || (memcmp(buf+16, "\x91\x00", 2))) {
		fprintf(stderr, "Authentication phase 2: %s\n", desfire_status_string(buf, res));
		return 0;
	}

	/* Card sends encrypted RndA_rol (rotated left 1) */
	AES(buf, buf, sizeof(RndA), key_data, iv, 0);

	for (i = 16; i > 0; i--)
		buf[i] = buf[i-1];
	buf[0] = buf[16];
	
	if (!quiet) {
		hexdump(RndA, sizeof(RndA), "RndA\t\t");
		hexdump(buf, sizeof(RndA), "RndA_card\t");
	}

	if (memcmp(RndA, buf, sizeof(RndA))) {
		fprintf(stderr, "RndA provided from card does not match our own! Wrong key?\n");
		return 0;
	}

	/*
	 * Generate session key Ksess
	 *
	 * The resulting session key is:
	 * Ksess = RndA[0..3]+RndB[0..3]+RndA[12..15]+RndB[12..15]
	 */
	for(i = 0; i <= 3; i++)
		Ksess[i] = RndA[i];
	for(i = 0; i <= 3; i++)
		Ksess[i+4] = RndB[i];
	for(i = 12; i <= 15; i++)
		Ksess[i-4] = RndA[i];
	for(i = 12; i <= 15; i++)
		Ksess[i] = RndB[i];

	if (!quiet)
		hexdump(Ksess, sizeof(Ksess), "Ksess\t\t");

	/* Reset IV after successfull authentication */
	memset(iv, 0, sizeof(iv));

	/* Calculate CMAC subkeys from session key */
	calculate_cmac_subkeys(&sk, Ksess, quiet);


	/*
	 * GetCardUid
	 *
	 *     03  90  51  00  00  00  76  cc
	 * Get card UID (see libfreefare source)
	 *
	 * The CMAC is calculated over the command byte (51) to update the IV (see desfire_functions.c)
	 *
	 * TAG 03  c0  c3  24  02  d6  c8  b9  c1  3f  41  da  d9  3c  36  34  15  91  00  93  ca
	 * Tag responds with encryted uid and crc32(with Ksess):
	 * c0c32402d6c8b9c13f41dad93c363415
	 * decrypted:
	 * Card UID: 04811a4aae2780, CRC32: 2708cd2b
	 */
	buf[0] = 0x90; /* CLA */
	buf[1] = 0x51; /* INS */
	buf[2] = 0x00; /* P1 */
	buf[3] = 0x00; /* P2 */
	buf[4] = 0x00; /* Le */

	/* Update IV with GetCardUid command (0x51) */
	cmac(buf+1, 1, Ksess, iv, &sk);

	res = card_comm(buf, 5, sizeof(buf), data);

	if ((res != 18) || (memcmp(buf+16, "\x91\x00", 2))) {
		fprintf(stderr, "GetCardUid: %s\n", desfire_status_string(buf, res));
		return 0;
	}

	/* Card sends encrypted UID with CRC32 checksum */
	if (!quiet)
		hexdump(buf, 16, "eUID\t\t");
	AES(buf, uid_buf, 16, Ksess, iv, 0);
	if (!quiet)
		hexdump(uid_buf, 16, "UID\t\t");

	if (!check_crc32(uid_buf, 7, buf+17, uid_buf+7)) {
		fprintf(stderr, "CRC32 does not match!\n");
		return 0;
	}

	return 1;
}
