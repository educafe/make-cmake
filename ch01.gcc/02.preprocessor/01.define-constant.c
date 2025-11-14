#include <stdio.h>

#define SIZE    4096
// const int SIZE = 4096;
int main() {
    char buf[SIZE];
    printf("BUFFER SIZE = %ld\n", sizeof(buf));
    return 0;
}

