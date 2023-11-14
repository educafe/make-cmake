#include <stdio.h>
// A macro definition is contained on one line
#define min(a,b)	((a) < (b) ? (a) : (b))
int result;
#define showint(a) printf("%d\n",a)
#define HELLO(WORLD) printf("The term "  #WORLD " is a string\n")
#define err(...) fprintf(stderr, __VA_ARGS__)
#define errout(a,b,...) \
fprintf(stderr,"File %s Line %d : ",a,b); \
fprintf(stderr, __VA_ARGS__ )
#define debug(format, ...) \
fprintf (stderr, format, ##__VA_ARGS__);

int main(){
	int limit=10;
	printf("MIN=%d\n", min(100, limit));
	showint(300);
	HELLO(A to B);
	err("The error code: %d\n",48);
	errout(__FILE__, __LINE__, "Unexpected termination\n");
	debug("hello World\n");
	debug("Error Code is : value=%d\n", limit);
	return 0;
}