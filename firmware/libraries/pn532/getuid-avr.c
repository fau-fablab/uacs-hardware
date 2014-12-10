#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <avr/pgmspace.h>
#include <avr/power.h>
#include <util/delay.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <avr/wdt.h>

#include "avr/usart.h"
#include "avr/spi.h"
#include "avr/pn532.h"
#include "faucard_getuid.h"

#ifdef DEBUG
#include "hexdump.h"
#endif

static unsigned char pn532ack[] = {
	0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00};

static uint8_t pcb = 0x02;

uint8_t pn532_read_status()
{
	uint8_t x;

	spi_ss(1);
	spi_transceive(PN532_SPI_STATREAD);
	x = spi_transceive(0x00);
	spi_ss(0);

	return x;
}

void spiwritecommand(unsigned char *cmd, unsigned char cmdlen) {
	uint8_t checksum = 0;
	int i;

	cmdlen++;

	spi_ss(1);

	spi_transceive(PN532_SPI_DATAWRITE);

	spi_transceive(PN532_PREAMBLE); checksum += PN532_PREAMBLE;
	spi_transceive(PN532_STARTCODE1); checksum += PN532_STARTCODE1;
	spi_transceive(PN532_STARTCODE2); checksum += PN532_STARTCODE2;
	spi_transceive(cmdlen);
	spi_transceive(~cmdlen + 1);
	spi_transceive(PN532_HOSTTOPN532); checksum += PN532_HOSTTOPN532;

	for (i = 0; i < cmdlen - 1; i++) {
		spi_transceive(cmd[i]); checksum += cmd[i];
	}
	spi_transceive(~checksum);
	spi_transceive(PN532_POSTAMBLE);

	spi_ss(0);

}

int pn532_read(unsigned char *buf, int len, int content) {
	int i;
	int cnt;
	int rlen = len;
	unsigned char x;

	cnt=20;
	do {
		x = pn532_read_status();
		_delay_ms(10);
		cnt--;
	} while ((x != PN532_SPI_READY) && cnt);

	if (x != PN532_SPI_READY) {
		printf("No RESPONSE frame ready!\n");
		return 0;
	}

	if (content)
		rlen += 6;

	if (rlen < 6)
		return 0;

	spi_ss(1);
	spi_transceive(PN532_SPI_DATAREAD);
	for (i = 0; i < rlen; i++) {
		x = spi_transceive(0x00);
		if (i == 3)
			rlen = 6 + x;
		if (content) {
			if (i >= 6)
				buf[i-6] = x;
		} else {
			buf[i] = x;
		}
		wdt_reset();
	}
	spi_ss(0);

	if (content)
		rlen -= 6;

	return rlen;
}

int pn532_cmd_ack(unsigned char *cmd, unsigned char cmdlen, int try) {
	int cnt;
	unsigned char x;
	unsigned char ackbuf[6];

	do {
		spiwritecommand(cmd, cmdlen);
		cnt=5;

		do {
			x = pn532_read_status();
			_delay_ms(2);
			cnt--;
		} while ((x != PN532_SPI_READY) && cnt);
		try--;
	} while ((x != PN532_SPI_READY) && (try > 0));
	if (x != PN532_SPI_READY) {
		printf("No ACK frame ready!\n");
		return 0;
	}

	pn532_read(ackbuf, 6, 0);

	if (memcmp(ackbuf, pn532ack, sizeof(ackbuf))) {
		printf("NACK!\n");
		return 0;
	}

	return 1;
}

void pn532_init()
{
	uint8_t answer[30];

	printf("> init\n");
	uint8_t samConfig[] = { PN532_COMMAND_SAMCONFIGURATION, 0x1, 0x0, 0x0 };
	pn532_cmd_ack(samConfig, sizeof(samConfig), 1);
	pn532_read(answer, sizeof(answer), 1);

	uint8_t RFConfig[] = { PN532_COMMAND_RFCONFIGURATION, 0x2, 0x0, 0x10, 0x10 };
	pn532_cmd_ack(RFConfig, sizeof(RFConfig), 1);
	pn532_read(answer, sizeof(answer), 1);

	uint8_t RFConfig2[] = { PN532_COMMAND_RFCONFIGURATION, 0x4, 0x05};
	pn532_cmd_ack(RFConfig2, sizeof(RFConfig2), 1);
	pn532_read(answer, sizeof(answer), 1);

	uint8_t RFConfig4[] = { PN532_COMMAND_RFCONFIGURATION, 0x0a, 0x59, 0xf4, 0x3f, 0x11, 0x4d, 0x85, 0x61, 0x67, 0x26, 0x62, 0x87};
	pn532_cmd_ack(RFConfig4, sizeof(RFConfig4), 1);
	pn532_read(answer, sizeof(answer), 1);

	uint8_t RFConfig3[] = { PN532_COMMAND_RFCONFIGURATION, 0x1, 0};
	pn532_cmd_ack(RFConfig3, sizeof(RFConfig3), 1);
	pn532_read(answer, sizeof(answer), 1);

	RFConfig3[2] = 1;
	pn532_cmd_ack(RFConfig3, sizeof(RFConfig3), 1);
	pn532_read(answer, sizeof(answer), 1);

	uint8_t setParameters[] = { PN532_COMMAND_SETPARAMETERS, (1<<4)};
	pn532_cmd_ack(setParameters, sizeof(setParameters), 1);
	pn532_read(answer, sizeof(answer), 1);

	uint8_t readRegister[] = { PN532_COMMAND_READREGISTER, 0x63, 0x16 };
	pn532_cmd_ack(readRegister, sizeof(readRegister), 1);
	pn532_read(answer, sizeof(answer), 1);

	printf("< init\n");
}

int pn532_card_comm(uint8_t *buf, size_t to_len, size_t from_max, void *data) {
	uint8_t cmd[to_len+2];
	uint8_t buf_r[from_max + 4];
	int r;

	cmd[0] = PN532_COMMAND_INCOMMUNICATETHRU;
	cmd[1] = pcb;
	memcpy(cmd+2, buf, to_len);

	pcb = (pcb & 0x01) ? ( pcb & ~0x01) : (pcb | 0x01);

#ifdef DEBUG
	hexdump(cmd, sizeof(cmd), "< ");
#endif

	if(!pn532_cmd_ack(cmd, sizeof(cmd), 1))
		return 0;

	r = pn532_read(buf_r, sizeof(buf_r), 1);

#ifdef DEBUG
	hexdump(buf_r, r, "> ");
#endif

	if (r < 4)
		return 0;

	memcpy(buf, buf_r + 3, r - 3);

	return r - 4;
}

void pn532_periodic()
{
	uint8_t answer[30];
	uint8_t size;
	int i;

	uint8_t listTargets[] = { PN532_COMMAND_INLISTPASSIVETARGET, 0x1, 0x0 };
	if (!pn532_cmd_ack(listTargets, sizeof(listTargets), 1))
		return;

	if (pn532_read_status() != PN532_SPI_READY)
		printf("Waiting for card...\n");

	while(pn532_read_status() != PN532_SPI_READY)
		wdt_reset();

	size = pn532_read(answer, sizeof(answer), 1);

	// DESfire: 4b 01 01 03 04 20 04 80 65 60 2d 06 75 77 81 02 80 4c
	// Classic: 4b 01 01 00 04 08 04 d2 50 a1 af 5c

	if (size < 12) {
		printf("Response to short!\n");
		return;
	}

	if (answer[1] < 1) //Need at least one tag
		return;

	printf("Found %d tag(s), UID of first tag: ", answer[1]);
	for (i = 0; i < answer[6]; i++)
		printf("%02x", answer[7 + i]);

	printf("\n");

	if ((answer[5] == 0x20) && (answer[6] < 7) && ((answer[7] == 0x80) || (answer[7] == 0x08))) {
		printf("Looks like DESfire with random UID...\n");
	} else {
		return;
	}

	uint8_t selectCard[] = { PN532_COMMAND_INSELECT, 0x1 };
	if (!pn532_cmd_ack(selectCard, sizeof(selectCard), 1))
		return;

	size = pn532_read(answer, sizeof(answer), 1);

	if ((size < 1) || (answer[1] != 0))
		return;

	printf("Trying to read real UID...\n");

	/* Init PCB */
	pcb = 0x02;

	uint8_t uid[16];
	if(faucard_getuid(uid, NULL, pn532_card_comm, 1))
		printf("Card UID: %02x%02x%02x%02x%02x%02x%02x, CRC32: %02x%02x%02x%02x\n",
				uid[0], uid[1], uid[2], uid[3], uid[4], uid[5], uid[6],
				uid[7], uid[8], uid[9], uid[10]);

	uint8_t releaseTg[] = { PN532_COMMAND_INRELEASE, 0x0 };
	if (!pn532_cmd_ack(releaseTg, sizeof(releaseTg), 1))
		return;

	size = pn532_read(answer, sizeof(answer), 1);
}

int main(void)
{
	int i, r;
	unsigned char recv_buf[12];

	usart_init();
	spi_init();

	sei();

	wdt_disable();
	spi_ss(0);
	_delay_ms(20);
	spi_ss(1);
	for(i = 0; i < 10; i++)
		_delay_ms(100);
	spi_ss(0);

	wdt_enable(WDTO_250MS);
	wdt_reset();

	/* So there is an initial seed */
	srand((MAGIC1 << 8) | MAGIC0);
	pn532_cmd_ack((unsigned char*)"\x02", 1, 1);

	printf_P(PSTR("\nWelcome!\n"));
	while(1) {
		wdt_reset();
		if (!pn532_cmd_ack((unsigned char*)"\x02", 1, 3))
			continue;

		r = pn532_read(recv_buf, sizeof(recv_buf), 0);
		if (r != 12)
			continue;

		printf("IC: 0x%02x, Version: 0x%02x, Revision: 0x%02x, Support: 0x%02x\n",
			recv_buf[7],
			recv_buf[8],
			recv_buf[9],
			recv_buf[10]);
		printf("\n");

		pn532_init();
		while(1) {
			wdt_reset();
			printf("> periodic\n");
			pn532_periodic();
			printf("< periodic\n");
			wdt_reset();
			#if 1
			for(i = 0; i < 10; i++) {
				_delay_ms(100);
				wdt_reset();
			}
			#endif
		}
	}
	return 0;
}
