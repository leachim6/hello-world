#include <stdio.h>

int main (int argc, char **argv) {
	int error = fputs ("Hello World", stdout);	// prints to standard output
	if (error = EOF) {
		// Houston, we have a problem, and our string was not printed
		return 1;	// nonzero return codes indicate failure
	}

	return 0;
}
