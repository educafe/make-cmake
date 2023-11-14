#include "a.h"
#include "b.h"

void func1();
void func2();

int main(void){
	int count;
#ifdef MYNUM
	int n=100;
#else
	int n=NO1;
#endif
	printf("main(%d)\n", n);
	func1();
	func2();
	return 0;
}

