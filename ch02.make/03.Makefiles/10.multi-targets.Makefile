## ch02.make/02.Makefiles/10.multi-target.Makefile
.SUFFIXES:
CC = gcc
CFLAGS = -Wall -O2 -g
SRCS1 = main.c func1.c func2.c
SRCS2 = exam1.c func1.c
SRCS3 = exam2.c func2.c
OBJS1 = $(SRCS1:.c=.o)
OBJS2 = $(SRCS2:.c=.o)
OBJS3 = $(SRCS3:.c=.o)
TARGETS = a.out exam1 exam2

%.o: %.c
	@echo $@ depends on $<
	$(CC) -c $< 
	
all: $(TARGETS)
a.out: $(OBJS1)
	$(CC) -o $@ $^
exam1: $(OBJS2)
	$(CC) -o $@ $^
exam2: $(OBJS3)
	$(CC) -o $@ $^
clean:
	-rm $(OBJS1) $(OBJS2) $(OBJS3) depend
	-rm $(TARGETS)
	
include depend
depend: 
	gcc -M $(SRCS1) $(SRCS2) $(SRCS3) > depend
