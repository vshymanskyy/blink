export GCC_MCU=attiny85
export AVRDUDE_PART=ATtiny85
export AVRDUDE_PROG=dasa

avr-gcc -g -Os -c -mmcu=$GCC_MCU blink.c
avr-gcc -mmcu=$GCC_MCU blink.o -o blink.elf
avr-objcopy -O ihex -R .eeprom blink.elf blink.hex
avrdude -P /dev/ttyUSB0 -p $AVRDUDE_PART -c $AVRDUDE_PROG -U flash:w:blink.hex