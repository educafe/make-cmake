## ch02.make/03.Makefiles/02.prerequisites.Makefile
all: a.out
a.out: main.o func1.o func2.o
	gcc main.o func1.o func2.o
main.o: main.c a.h b.h
	gcc -c main.c
func1.o: func1.c a.h c.h
	gcc -c func1.c
func2.o: func2.c a.h b.h c.h
	gcc -c func2.c

clean:
	rm -f *.o a.out
