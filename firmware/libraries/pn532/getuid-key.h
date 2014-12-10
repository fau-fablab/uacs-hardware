#ifdef HAVE_OBFUSCATED_KEY
#include "getuid-key-faucard-obfuscated.h"
#elif HAVE_REAL_KEY
#include "getuid-key-faucard.h"
#else
/*
 * This file contains _dummy_ key material for autheticating to an OWOK
 * light DESFire card (included with ReinerSCT Rfid basis reader).
 * It will not work with the FAUcard
 */

#define APP_AID	0x808301	/* Application ID for authentication */
#define APP_KEY	0		/* Key Number for authentication */

static const uint8_t key_data[16] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
#endif
