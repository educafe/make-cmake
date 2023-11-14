#define SIZE	512
int buf[SIZE];

// The preprocessor processes the text in order and will only make macro
// substitutions after the macro has been defined
#define A 100
sum = A + B; 
#define B 200
sum = A + B; 

// Substitutions are recursive, so they can be nested one inside the other
#define BUF BUFSIZE
#define BUFSIZE 100
buf1 = BUF;
#define BUFSIZE 200
buf2 = BUF;

// To change the definition of a macro, it is necessary to delete it and define it again
#define MLKEYVAL 889
#undef MLKEYVAL
#define MLKEYVAL 890

// Macro names are not substituted inside strings
#define BLOCK 8192
printf("The BLOCK number.\n");

