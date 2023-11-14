## ch02.make/03.Makefiles/06.pre-defined.Makefile
SRCS= main.c func1.c func2.c
OBJS= main.o func1.o func2.o 
CFLAGS= -g -O2 -Wall

all: a.out
a.out: $(OBJS)
	$(LINK.c) $^ -o $@
main.o: main.c 
	$(COMPILE.c) $<
func1.o: func1.c 
	$(COMPILE.c) $<
func2.o: func2.c 
	$(COMPILE.c) $<
	
clean:
	rm -f $(OBJS) a.out depend
	
include depend
depend:
	gcc -M $(SRCS) > depend
	
	