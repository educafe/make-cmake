#include<stdio.h>
	
void func1();
void func2();
	
// #pragma startup func1
// #pragma exit func2
void __attribute__((constructor)) func1(); 
void __attribute__((destructor)) func2();
	
void func1(){
	printf("func1() excuted\n");
}
	
void func2(){
	printf("func2() excuted\n");	
}
	
int main(){
	printf("main() excuted\n");
	return 0;
}


