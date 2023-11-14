## ch02.make/03.Makefiles/08.suffix.Makefile
.SUFFIXES:
.SUFFIXES: .c .o
SRCS= main.c func1.c func2.c
OBJS= main.o func1.o func2.o 
CFLAGS = -g -O2 -Wall

.c.o: 
	$(CC) -c $(CFLAGS) $<
all: a.out
a.out: $(OBJS)
	$(CC) -o $@ $^
clean:
	rm -f $(OBJS) a.out depend

include depend
depend: $(SRCS)
	gcc -M $(SRCS) > depend

