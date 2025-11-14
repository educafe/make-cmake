#include <stdio.h>

#define LINUX 0

int main() {
#ifdef LINUX
    printf("Linux version\n");
#elif defined(MAC)
    printf("MAC version\n");
#else
    printf("WINDOWS version\n");
#endif
    return 0;
}

