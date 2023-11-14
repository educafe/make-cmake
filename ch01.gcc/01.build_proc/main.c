#include <stdlib.h>
#include <stdio.h>
#include "function.h"
int alpha1=10, alpha2=20;							//data
int beta1, beta2;											//bss

int main(){														//text
	int comma1=100, comma2;							//stack (runtime)
	char *delta = "hello";							//data (const) (runtime)
	char *name, *score;									//stack
	
	name = malloc(50);									//runtime		
	score = malloc(20*sizeof(int));			//runtime

	// printf("%s\n", delta);
	// printf("addr(TEXT)=> main:%p, f1:%p, f2:%p\n", main, f1, f2);
	// printf("addr(CONST)=> delta:%p\n", delta);
	// printf("addr(DATA)=> alpha1:%p, alpha2:%p\n", &alpha1, &alpha2);
	// printf("addr(BSS)=> beta1:%p, beta2:%p\n", &beta1, &beta2);
	// printf("addr(STACK)=> comma1:%p, comma2:%p\n", &comma1, &comma2);
	// printf("addr(HEAP)=> name:%p, score:%p\n", name, score);	
	
	return 0;
}

