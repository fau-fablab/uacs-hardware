#include <inttypes.h>
#include <openssl/rand.h>

#include "random.h"

void random_bytes(uint8_t *buf, int count)
{
	RAND_bytes(buf, count);
}
