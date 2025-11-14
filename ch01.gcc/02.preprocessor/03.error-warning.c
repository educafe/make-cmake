#include <stdio.h>

// #ifndef DEBUG
// #error Only Debug builds are supported
// #endif

#ifdef DEBUG        
    #pragma message ("Debug configiuration")
#elif defined(RELEASE)   
    #warning "Release configuration"
#else
    #error "Unknown configuration. Try either DEBUG or RELEASE"
#endif

int main(){
    printf("Successfully compiled\n");
    return 0;
}

