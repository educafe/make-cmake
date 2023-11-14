#if defined COUNT20
	#define LOOP	20
#elif defined COUNT10
	#define	LOOP	10
#else
	#error "Either COUNT20 or COUNT10 must be defined!!!"
	// #warning "Either COUNT20 or COUNT10 must be defined!!!"
	#define	LOOP	5
#endif
int main(){
	int i;
	for(i=0; i<LOOP; i++){
	}
}

