## ch02.make/03.Makefiles/01-1.dummy.Makefile
all: a.out
a.out:
	gcc main.c func1.c func2.c

clean:
	rm a.out

