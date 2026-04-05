#include <stdio.h>

#if defined(SAMSUNG) + defined(SKHYNIX) + defined(HYUNDAI) != 1
#error "Define exactly one of SAMAUNG, SKHYNIX, HYUNDAI"
#endif

#ifndef CUSTOMER
#error "Define CUSTOMER (e.g., -DCUSTOMER=HYUNDAI)"
#endif

#define STR(x) #x
#define XSTR(x) STR(x)

int main(void) {
    printf("Customer: %s\n", XSTR(CUSTOMER));
    return 0;
}