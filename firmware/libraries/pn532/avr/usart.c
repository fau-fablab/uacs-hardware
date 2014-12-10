#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <stdio.h>

#define BAUD 115200
#include <util/setbaud.h>
#include <avr/wdt.h>
#include "fifo.h"
#include "usart.h"

#define BUFSIZE_IN  0x2
uint8_t inbuf[BUFSIZE_IN];
fifo_t infifo;

#define BUFSIZE_OUT 0xff
uint8_t outbuf[BUFSIZE_OUT];
fifo_t outfifo;

int usart_put(char c, FILE *stream)
{
	int wdt_triggered = 0;

	if (c == '\n')
		usart_put('\r', stream);
    	
	cli();
	while(!fifo_put(&outfifo, c)) {
		sleep_enable();
		sei();
		sleep_cpu();
		sleep_disable();
		if (!wdt_triggered) {
			wdt_reset();
			wdt_triggered = 1;
		}
		cli();
	}
	sei();
	UCSR0B |= (1 << UDRIE0)|(1 << TXEN0)|(1<<TXCIE0);

	return 0;
}

int usart_get(FILE *stream)
{
	int ret;

	ret=fifo_get_wait(&infifo);

	return ret;
}

int empty_fifo(void)
{
	int cnt = 0;

	while(fifo_get_nowait(&infifo) >= 0)
		cnt++;

	return cnt;
}

int get_fifo(void)
{
	return fifo_get_nowait(&infifo);
}

static FILE usart_stream = FDEV_SETUP_STREAM(usart_put, usart_get, _FDEV_SETUP_RW);

void usart_init()
{
	uint8_t sreg = SREG;

	UBRR0H = UBRRH_VALUE;
	UBRR0L = UBRRL_VALUE;

	cli();

	UCSR0B = (1<<RXEN0)|(1<<RXCIE0); //|(1<<TXEN0); //|(1<<TXCIE0);
	UCSR0C = (1 << UCSZ01)|(1 << UCSZ00);

	do {
		UDR0;
	} while (UCSR0A & (1 << RXC0));

	UCSR0A = (1 << TXC0);
#if USE_2X
	UCSR0A |= (1 << U2X0);
#else
	UCSR0A &= ~(1 << U2X0);
#endif

	fifo_init(&infifo,   inbuf, BUFSIZE_IN);
	fifo_init(&outfifo, outbuf, BUFSIZE_OUT);

	SREG = sreg;

	stdout = &usart_stream;
	stdin = &usart_stream;
}


ISR (USART_RX_vect)
{
	_inline_fifo_put (&infifo, UDR0);
}

ISR (USART_TX_vect)
{
	if (outfifo.count == 0)
		UCSR0B &= ~((1 << TXEN0) | (1 <<TXCIE0));
	//set_sleep_mode(SLEEP_MODE_PWR_SAVE);
}

ISR(USART_UDRE_vect)
{
	if (outfifo.count > 0)
		UDR0 = _inline_fifo_get(&outfifo);
	else
		UCSR0B &= ~(1 << UDRIE0);
}
