#include <stdio.h>

#define LINUX   1
#define MAC     2

#ifndef OS
#error "Please define OS (e.g., -DOS=LINUX)"
#endif

#if (OS == LINUX)
    #pragma message ("Linux version build")
#elif (OS == MAC)
    #error "MAC version not supported"
#else
    #error "Unknown OS"
#endif

int main(void) {
#if (OS == LINUX)
    printf("Linux version\n");
#elif (OS == MAC)
    printf("MAC version\n");
#endif
    return 0;
}

