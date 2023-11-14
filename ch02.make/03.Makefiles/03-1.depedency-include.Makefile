## ch02.make/03.Makefiles/03-1.depedency-include.Makefile
all: a.out
a.out: main.o func1.o func2.o 
	gcc main.o func1.o func2.o -o a.out
main.o: main.c 
	gcc -c main.c
func1.o: func1.c 
	gcc -c func1.c
func2.o: func2.c 
	gcc -c func2.c
clean:
	rm -f *.o a.out depend
depend:
	gcc -M main.c func1.c func2.c > depend
include depend