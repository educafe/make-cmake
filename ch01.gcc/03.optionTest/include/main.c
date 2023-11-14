#include <stdio.h>
#include "myheader.h"

#define SIZE	1000

int a=10, a2=20;
int b, b2;

int main(){
	int c=100, c2, c3;
	char *d = "educafe", *e;
#ifndef DEBUG
	printf("a:%d, a2:%d, b:%d, b2:%d, c:%d, c2:%d\n", a, a2, b, b2, c, c2);
#endif
	b = f1(a);
	b2 = f2(a2);
	c2 = SIZE;
	printf("b:%d, b2:%d, c:%d, c2:%d, d=%s, e=%s\n", b, b2, c, c2, d, e);
	return 0;
}

