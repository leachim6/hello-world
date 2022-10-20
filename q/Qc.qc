package main

foreign import "stdio.h"

func main() {
    foreign use "C" {
        printf("Hello, World!");
    }
}