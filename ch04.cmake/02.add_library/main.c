#include "a.h"
#include "b.h"

void func1();
void func2();

int main(void){
   int n=NO1;
   printf("main(%d)\n", n);
   func1();
   func2();
   return 0;
}
