#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>
#include <avr/wdt.h>
#include "spi.h"

#define DDR_SPI	DDRB

#define DD_SCK	DDB5
#define DD_MISO	DDB4
#define DD_MOSI	DDB3
#define DD_SS	DDB2

#define DDR_SS	DDRD
#define P_SS	DDD6

void spi_ss(int enable)
{
	if (enable) {
		PORTD &= ~(1 << P_SS);
		_delay_ms(2);
	} else {
		PORTD |= (1 << P_SS);
	}
	wdt_reset();
}

static void spi_master_init()
{
	/* Set MOSI and SCK output, all others input */
	DDR_SPI |= (1 << DD_MOSI) | (1 << DD_SCK) | (1 << DD_SS);
	PORTB |= (1 << DD_SS);
	DDR_SS |= (1 << P_SS);
	PORTD |= (1 << P_SS);
	PORTB &= ~((1 << DD_MOSI) | (1 << DD_SCK));
	/* Enable SPI, Master, set clock rate fck/16 */
	SPCR = (1 << SPE) | (1 << MSTR) | (1 << DORD) | (1 << SPR0);
}

#if 0
static void spi_slave_init()
{
	/* Set MISO output, all others input */
	DDR_SPI &= ~((1 << DD_MOSI) | (1 << DD_SCK));
	DDR_SPI |= (1<<DD_MISO);
	/* Enable SPI */
	SPCR = (1 << SPE);
}
#endif


void spi_init()
{
	spi_master_init();
}


unsigned char spi_transceive(unsigned char buf)
{
	unsigned char x;

	wdt_reset();

	SPDR = buf; /* Send Data */
	while(!(SPSR & (1<<SPIF))) {}
	wdt_reset();

	x = SPDR;

	return x;
}
