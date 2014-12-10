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
#include "hexdump.h"
#include "desfire_functions.h"

static void lsl (uint8_t *data, size_t len);
static void XORn(uint8_t *inout, uint8_t *x, size_t n);

/* Calculate CMAC subkeys */
void calculate_cmac_subkeys(struct cmac_subkeys *sk, uint8_t *key, int quiet)
{
	uint8_t cmac_iv[16];
	const uint8_t R = 0x87;	/* magic constant for block size 16, for 8 it would be 0x1b */
	int should_xor = 0;	/* should the last subkey byte xored with R? */

	memset(cmac_iv, 0, sizeof(cmac_iv));

	/* Encrypt 16 bytes of 0x00 with key and an IV if 16 bytes 0x00 */
	memset(sk->sk1, 0, sizeof(sk->sk1));
	AES(sk->sk1, sk->sk1, sizeof(sk->sk1), key, cmac_iv, 1);

	/* Generate CMAC subkey 1 */
	should_xor = sk->sk1[0] & 0x80;
	lsl(sk->sk1, 16);
	if(should_xor)
		sk->sk1[sizeof(sk->sk1)-1] ^= R;

	if (!quiet)
		hexdump(sk->sk1, sizeof(sk->sk1), "cmac_sk1\t");

	/* Generate CMAC subkey 2 */
	memcpy(sk->sk2, sk->sk1, sizeof(sk->sk2));
	should_xor = sk->sk1[0] & 0x80;
	lsl(sk->sk2, 16);
	if (should_xor)
		sk->sk2[sizeof(sk->sk2)-1] ^= R;

	if (!quiet)
		hexdump(sk->sk2, sizeof(sk->sk2), "cmac_sk2\t");
}

/*
 * Calculate CMAC for command to update AES IV, so response can
 * be successfully decrypted
 */
uint8_t *cmac(uint8_t *data, size_t len, uint8_t *key, uint8_t *iv, struct cmac_subkeys *sk)
{
	static uint8_t buffer[128];

	memset(buffer, 0, sizeof(buffer));
	memcpy (buffer, data, len);

	if ((!len) || (len % 16)) {
		/*
		 * If the command does not completely fill the buffer add
		 * padding (0x80 | 0x00 ...) and XOR with subkey 2
		 */ 
		buffer[len++] = 0x80;
		while (len % 16) {
			buffer[len++] = 0x00;
		}
		XORn(buffer + len - 16, sk->sk2, sizeof(sk->sk2));
	} else {
		/*
		 * If the command completely fills the buffer just XOR with
		 * subkey 1
		 */
		XORn(buffer + len - 16, sk->sk1, sizeof(sk->sk1));
	}

	/* Update AES IV by encrypting the buffer with the session key */
	AES(buffer, buffer, len, key, iv, 1);

	return buffer;
}

static void XORn(uint8_t *inout, uint8_t *x, size_t n)
{
	size_t i;

	for (i = 0; i < n; i++)
		inout[i] ^= x[i];
}

uint32_t crc32(uint8_t *buf, int len)
{
	int i, j;
	uint32_t crc = 0xffffffff;

	for(i = 0; i < len; i++) {
		for (j = 0; j < 8; j ++) {
			uint8_t bit = (buf[i] >> j) & 1;
				
			if ((crc & 1) != bit)
				crc = crc >> 1 ^ 0xedb88320;
			else
				crc >>= 1;
		}
	}

	return crc;
}

uint8_t check_crc32(uint8_t *payload, int len, uint8_t *status_byte, uint8_t *crc)
{
	uint8_t buf[len+1];
	uint32_t crc_calc;

	memcpy(buf, payload, len);
	memcpy(buf+len, status_byte, 1);
	crc_calc = crc32(buf, len+1);

	if (memcmp(crc, &crc_calc, 4) == 0)
		return 1;

	return 0;
}

#define OPERATION_OK		0x00
#define NO_CHANGES		0x0C
#define OUT_OF_EEPROM_ERROR	0x0E
#define ILLEGAL_COMMAND_CODE	0x1C
#define INTEGRITY_ERROR		0x1E
#define NO_SUCH_KEY		0x40
#define LENGTH_ERROR		0x7E
#define PERMISSION_DENIED	0x9D
#define PARAMETER_ERROR		0x9E
#define APPLICATION_NOT_FOUND	0xA0
#define APPL_INTEGRITY_ERROR	0xA1
#define AUTHENTICATION_ERROR	0xAE
#define ADDITIONAL_FRAME	0xAF
#define BOUNDARY_ERROR		0xBE
#define PICC_INTEGRITY_ERROR	0xC1
#define COMMAND_ABORTED		0xCA
#define PICC_DISABLED_ERROR	0xCD
#define COUNT_ERROR		0xCE
#define DUPLICATE_ERROR		0xDE
#define EEPROM_ERROR		0xEE
#define FILE_NOT_FOUND		0xF0
#define FILE_INTEGRITY_ERROR	0xF1

char *desfire_status_string(uint8_t *buf, int buflen)
{
	static char status[64];
	uint8_t sw1, sw2;

	if (buflen < 2)
		return "Answer too short";

	sw1 = buf[buflen-2];
	sw2 = buf[buflen-1];
	
	/* SW1 has to be 0x91, see M075040 page 18 */
	if (sw1 != 0x91) {
		snprintf(status, sizeof(status), "Not a DESfire response: %02X %02X", sw1, sw2);
		return status;
	}

#ifndef AVR
	/* Real status byte is in SW2 */
	switch(sw2) {
		case OPERATION_OK:
			return "OPERATION_OK: Successful operation";
			break;
		case NO_CHANGES:
			return "NO_CHANGES: No changes done to backup files, CommitTransaction / AbortTransaction not necessary";
			break;
		case OUT_OF_EEPROM_ERROR:
			return "OUT_OF_EEPROM_ERROR: Insufficient NV-Memory to complete command";
			break;
		case ILLEGAL_COMMAND_CODE:
			return "ILLEGAL_COMMAND_CODE: Command code not supported";
			break;
		case INTEGRITY_ERROR:
			return "INTEGRITY_ERROR: CRC or MAC does not match data / Padding bytes not valid";
			break;
		case NO_SUCH_KEY:
			return "NO_SUCH_KEY: Invalid key number specified";
			break;
		case LENGTH_ERROR:
			return "LENGTH_ERROR: Length of command string invalid";
			break;
		case PERMISSION_DENIED:
			return "PERMISSION_DENIED: Current configuration / status does not allow the requested command";
			break;
		case PARAMETER_ERROR:
			return "PARAMETER_ERROR: Value of the parameter(s) invalid";
			break;
		case APPLICATION_NOT_FOUND:
			return "APPLICATION_NOT_FOUND: Requested AID not present on PICC";
			break;
		case APPL_INTEGRITY_ERROR:
			return "APPL_INTEGRITY_ERROR: Unrecoverable error within application, application will be disabled";
			break;
		case AUTHENTICATION_ERROR:
			return "AUTHENTICATION_ERROR: Current authentication status does not allow the requested command";
			break;
		case ADDITIONAL_FRAME:
			return "ADDITIONAL_FRAME: Additional data frame is expected to be sent";
			break;
		case BOUNDARY_ERROR:
			return "BOUNDARY_ERROR: Attempt to read/write data from/to beyond the file's/record's limits. Attempt to exceed the limits of a value file.";
			break;
		case PICC_INTEGRITY_ERROR:
			return "PICC_INTEGRITY_ERROR: Unrecoverable error within PICC, PICC will be disabled";
			break;
		case COMMAND_ABORTED:
			return "COMMAND_ABORTED: Previous Command was not fully completed / Not all Frames were requested or provided by the PCD";
			break;
		case PICC_DISABLED_ERROR:
			return "PICC_DISABLED_ERROR: PICC was disabled by an unrecoverable error ";
			break;
		case COUNT_ERROR:
			return "COUNT_ERROR: Number of Applications limited to 28, no additional CreateApplication possible";
			break;
		case DUPLICATE_ERROR:
			return "DUPLICATE_ERROR: Creation of file/application failed because file/application with same number already exists";
			break;
		case EEPROM_ERROR:
			return "EEPROM_ERROR: Could not complete NV-write operation due to loss of power, internal backup/rollback mechanism activated";
			break;
		case FILE_NOT_FOUND:
			return "FILE_NOT_FOUND: Specified file number does not exist";
			break;
		case FILE_INTEGRITY_ERROR:
			return "FILE_INTEGRITY_ERROR: Unrecoverable error within file, file will be disabled";
			break;
		default:
			snprintf(status, sizeof(status), "Unknown: %02X", sw2);
			return status;
	}
#else
	snprintf(status, sizeof(status), "%02X", sw2);
	return status;
#endif

	/* Never reached */
	return "Unknown";
}

/* from libfreefare */
static void lsl (uint8_t *data, size_t len)
{
	size_t n;

	for (n = 0; n < len - 1; n++) {
		data[n] = (data[n] << 1) | (data[n+1] >> 7);
	}
	data[len - 1] <<= 1;
}
