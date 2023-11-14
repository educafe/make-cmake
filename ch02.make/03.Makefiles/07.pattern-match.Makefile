## ch02.make/03.Makefiles/07.pattern-match.Makefile
.SUFFIXES:
SRCS= main.c func1.c func2.c
OBJS= main.o func1.o func2.o 
CFLAGS= -g -O2 -Wall

all: a.out
a.out: $(OBJS)
	$(LINK.c) $^ -o $@
	
%.o: %.c
	@echo $@ depends on $<
	$(COMPILE.c) $<
	
clean:
	$(RM) $(OBJS) a.out depend
	
include depend
depend:
	gcc -M $(SRCS) > depend
	
	