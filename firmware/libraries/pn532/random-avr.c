#include <inttypes.h>
#include <stdlib.h>

#include "random.h"

void random_bytes(uint8_t *buf, int count)
{
	int i;

	for (i=0; i < count; i++ ) {
		buf[i] = rand() & 0xff;
	}
}
