#include <avr/io.h>
#define F_CPU 1000000UL
#include <util/delay.h>

int main(void) {
    int n;
    DDRB |= ( 1 << 4 );
    while (1) {
        PORTB &= ~(1 << 4 );
        _delay_ms(1000);
        PORTB |= ( 1 << 4 );
        _delay_ms(1000);
    }
    return 0;
}
  
