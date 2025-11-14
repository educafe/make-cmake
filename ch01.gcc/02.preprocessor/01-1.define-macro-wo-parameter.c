#include <stdio.h>

#define BEGIN printf("Program starts\n")
#define END printf("Program ends\n")
#define MILESTONE(parameter) printf("MILESTONE = %s\n", parameter)
int main() {
    BEGIN;
    MILESTONE("Stage -- 1");
    END;
    return 0;
}

