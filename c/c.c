#include <unistd.h>

int main() {
	return write(1, "Hello World\n", 12);
}
