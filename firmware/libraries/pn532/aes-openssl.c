#include <stdlib.h>
#include <stdio.h>
#include <inttypes.h>
#include <strings.h>
#include <openssl/aes.h>

#include "aes.h"

/* AES CBC implementation using openssl primitives */
void AES(uint8_t *in, uint8_t *out, int len, const uint8_t *key, uint8_t *iv, int enc)
{
	AES_KEY k;
	uint8_t tmp[16];
	int i, j;

	if (enc)
		AES_set_encrypt_key(key, 128, &k);
	else
		AES_set_decrypt_key(key, 128, &k);

	for (i = 0; i < len; i += 16) {
		if (enc) {
			for (j = 0; j < 16; j++)
				tmp[j] = in[i + j] ^ iv[j];
			AES_encrypt(tmp, out+i, &k);
			memcpy(iv, out+i, 16);
		} else {
			memcpy(tmp, in+i, 16);
			AES_decrypt(in+i, out+i, &k);
			for (j = 0; j < 16; j++)
				out[i+j] ^= iv[j];
			memcpy(iv, tmp, 16);
		}
	}
}
