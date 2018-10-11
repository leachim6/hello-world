#include <stdio.h>

__global__ void f() {
    printf("hello world\n");
}

int main() {
    f<<<1,1>>>();
    cudaDeviceSynchronize();
    return 0;
}
