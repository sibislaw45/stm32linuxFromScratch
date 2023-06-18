all:
	arm-none-eabi-as -mcpu=cortex-m4 init.S -o init.o
	arm-none-eabi-gcc -c -fpic -Os -mcpu=cortex-m4 -fpie -Wall init.c -o init-c.o -Iheaders/include
	arm-none-eabi-ld init.o init-c.o --oformat elf32-littlearm-fdpic -pie -o init --thumb-entry=_start

clean:
	rm init init-c.o init.o
