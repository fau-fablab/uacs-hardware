#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#ifdef WIN32
#include "windows-types.h"
#else
#include <inttypes.h>
#include <strings.h>
#endif

#include "rijndael-api-fst.h"
#include "aes.h"

/* AES CBC implementation using rijndael original source */
void AES(uint8_t *in, uint8_t *out, int len, const uint8_t *key, uint8_t *iv, int enc)
{
	keyInstance k;
	cipherInstance c;
	char hexstring[33];

	snprintf(hexstring, sizeof(hexstring),
			"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
			key[0], key[1], key[2], key[3], key[4], key[5], key[6], key[7],
			key[8], key[9], key[10], key[11], key[12], key[13], key[14], key[15]);

	if (enc)
		makeKey(&k, DIR_ENCRYPT, 128, hexstring);
	else
		makeKey(&k, DIR_DECRYPT, 128, hexstring);

	snprintf(hexstring, sizeof(hexstring),
			"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
			iv[0], iv[1], iv[2], iv[3], iv[4], iv[5], iv[6], iv[7],
			iv[8], iv[9], iv[10], iv[11], iv[12], iv[13], iv[14], iv[15]);

	cipherInit(&c, MODE_CBC, hexstring);

	if (enc) {
		blockEncrypt(&c, &k, in, len*8, out);
		memcpy(iv, out+len-16, 16);
	} else {
		blockDecrypt(&c, &k, in, len*8, out);
		memcpy(iv, in+len-16, 16);
	}
}
