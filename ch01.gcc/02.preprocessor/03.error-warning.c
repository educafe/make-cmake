#ifndef DEBUG
#error Only Debug builds are supported
#endif

#ifdef DEBUG        
    #pragma message ( "Debug configuration - OK" )
#elif RELEASE   
    #error "Release configuration - WRONG"
#else
    #error "Unknown configuration - DEFINITELY WRONG"
#endif

