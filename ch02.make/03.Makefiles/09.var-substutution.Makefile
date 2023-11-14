## ch02.make/03.Makefiles/09.var-substitution.Makefile
.SUFFIXES:
SRCS= main.c func1.c func2.c
OBJS= $(SRCS:.c=.o)
CC = gcc
CFLAGS = -g -O2 -Wall

%.o: %.c
	@echo $@ depends on $<
	$(CC) -c $(CFLAGS) $<
	
all: a.out
a.out: $(OBJS)
	$(LINK.c) -o $@ $^
clean:
	rm -f $(OBJS) a.out depend

include depend
depend: $(SRCS)
	gcc -M $(SRCS) > depend

