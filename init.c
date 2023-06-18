#include <asm/unistd.h>
#include <asm-generic/fcntl.h>

int syscall(int nr, ...);

int main()
{	
	syscall(__NR_open, "/dev/console", O_RDWR | O_NOCTTY | O_NONBLOCK, 0, 0);
	syscall(__NR_write, 0, "test", 4, 0);
	while (1) {}
	return 0;
}
