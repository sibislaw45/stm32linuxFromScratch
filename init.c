#define USART1_DR (*((volatile unsigned int *)0x40011004))

void _putchar(int c)
{
	volatile int i;
	USART1_DR = c;
	for (i = 0; i < 100000; i++) {
	}
}

void _puts(char *str)
{
	while (*str) {
		_putchar(*str);
		str++;
	}
}

int main()
{	
	_putchar('A');
	_putchar('B');
	_puts("A to jest string!");
	while (1) {}
	return 0;
}
