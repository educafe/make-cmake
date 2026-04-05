#include <stdio.h>

// #if defined(SAMSUNG) + defined(SKHYNIX) + defined(HYUNDAI) != 1
// #error "Define exactly one of SAMAUNG, SKHYNIX, HYUNDAI"
// #endif


#if defined(SAMSUNG)
    #define CUSTOMER_NAME "Samsung"
#elif defined(SKHYNIX)
    #define CUSTOMER_NAME "SKHynix Semiconductor"
#elif defined(HYUNDAI)
    #define CUSTOMER_NAME "Hyundai Automobile"
#else
	#error "Define exactly one of SAMAUNG, SKHYNIX, HYUNDAI"	
#endif

// #ifdef "Samsung"
// #warning "Samsung is not stable"
// #endif

int main(void) {
    printf("Customer for Build : %s\n", CUSTOMER_NAME);
    return 0;
}