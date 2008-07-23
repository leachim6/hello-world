#!/usr/sbin/dtrace -qs
BEGIN {
	printf("Hello World");
	exit(0);
}
