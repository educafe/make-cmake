#include <stdio.h>

#if defined(DEBUG)
    #pragma message ("Debug configuration")
    #define MODE "DEBUG"
#elif defined(RELEASE)
    #warning "Release configuration"
    #define MODE "RELEASE"
#else
    #error "Unknown configuration. Try either DEBUG or RELEASE"
#endif

int main() {
    printf("Successfully compiled in %s mode\n", MODE);
    return 0;
}

