## ch02.make/03.Makefiles/04.variables.Makefile
SRCS = main.c func1.c func2.c
OBJS= main.o func1.o func2.o 
all: a.out
a.out: $(OBJS)
	gcc $(OBJS) -o a.out
main.o: main.c 
	gcc -c main.c
func1.o: func1.c 
	gcc -c func1.c
func2.o: func2.c 
	gcc -c func2.c
clean:
	rm -f *.o a.out depend

include depend
depend:
	gcc -M $(SRCS) > depend