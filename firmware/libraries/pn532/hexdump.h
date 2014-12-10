static void asciishow(unsigned char *buf, int len)
{
	int i;

	printf("  ");
	for (i = 0; i < len; i++) {
		if ((buf[i] >=32) && (buf[i] <=126)) {
			printf("%c", buf[i]);
		} else {
			printf(".");
		}
	}
}

static void hexdump(unsigned char *buf, int len, char *prefix)
{
	int i, j;

	printf("\n%s", prefix);
	for (i = 0; i < len; i++) {
		if((i%16) == 0) {
			printf("0x%04x: ", i);
		}
		printf("%02x ", buf[i]);
		if ((i%16) == 15) {
			asciishow(buf+i-15, 16);
			if (i != (len-1))
				printf("\n%s", prefix);
		}
	}
	for (j = (i%16); j < 16; j++)
		printf("   ");
	asciishow(buf+i-(i%16), (i%16));
	printf("\n");
}
