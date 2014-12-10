struct cmac_subkeys {
	uint8_t sk1[16];
	uint8_t sk2[16];
};

void calculate_cmac_subkeys(struct cmac_subkeys *sk, uint8_t *key, int quiet);
uint8_t *cmac(uint8_t *data, size_t len, uint8_t *key, uint8_t *iv, struct cmac_subkeys *sk);
uint32_t crc32(uint8_t *buf, int len);
uint8_t check_crc32(uint8_t *payload, int len, uint8_t *status_byte, uint8_t *crc);
char *desfire_status_string(uint8_t *buf, int buflen);
