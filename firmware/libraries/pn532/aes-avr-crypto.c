#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "avr-crypto/aes/aes.h"
#include "aes.h"

/* AES CBC implementation using AVR-Crypto-Lib */
void AES(uint8_t *in, uint8_t *out, int len, const uint8_t *key, uint8_t *iv, int enc)
{
	aes128_ctx_t ctx;
	int i, j;

	aes128_init(key, &ctx);

	for (i = 0; i < len; i += 16) {
		if (enc) {
			for (j = 0; j < 16; j++)
				out[i+j] = in[i + j] ^ iv[j];
			aes128_enc(out+i, &ctx);
			memcpy(iv, out+i, 16);
		} else {
			memcpy(out+i, in+i, 16);
			aes128_dec(out+i, &ctx);
			for (j = 0; j < 16; j++)
				out[i+j] ^= iv[j];
			memcpy(iv, in+i, 16);
		}
	}
}
