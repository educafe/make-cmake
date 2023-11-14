## ch04.cmake/1.basic/make/Makefile
.SUFFIXES:
SRCS := main.c func1.c func2.c
OBJS = $(SRCS:.c=.o)
CC = gcc
CFLAGS = -g -c -O2 -Wall

a.out: $(OBJS)
	@echo Build : $@ depends on $^
	$(CC) -o $@ $^

%.o: %.c
	@echo Compile : $@ depends on $<
	$(CC) -c $< -o $@

clean:
	rm $(OBJS) a.out depend

-include depend
depend:
	gcc -M $(SRCS) > depend
	