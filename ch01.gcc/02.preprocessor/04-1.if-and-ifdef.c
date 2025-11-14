#include <stdio.h>
#define LINUX   1
#define MAC     2
#define OS      2

#if OS == LINUX
    #pragma message "Linux version build"
#else 
    #error "MAC version not supported"
#endif

int main() {
#if OS == 1
    printf("Linux version\n");
#elif OS == 2
    printf("MAC version\n");
#else
    printf("WINDOWS version\n");
#endif
    return 0;
}


