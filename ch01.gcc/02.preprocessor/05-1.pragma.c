#include<stdio.h>

#pragma GCC poison printf

int main(){
	int a=10;
	
	if(a==10)
		printf("Hello World\n");
	else
		printf("Good Morning\n");
	return 0;
}

