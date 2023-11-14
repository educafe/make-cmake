#include "a.h"
#include "b.h"

void func1();
void func2();
int max(int x, int y);

int main(void){
   int n=NO1;
   printf("main(%d), MAX=%d\n", n, max(5,2));
   func1();
   func2();
   return 0;
}
