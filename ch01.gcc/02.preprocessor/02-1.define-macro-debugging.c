#include <stdio.h>

#define DEBUG 1

#define LOG(msg)    \
    do {            \
        if(DEBUG)   \
            printf("DEBUG: %s\n", msg); \
    } while (0)

int main() {
    LOG("Program started");
    return 0;
}

