## ch02.make/03.Makefiles/11.phony.Makefile
.SUFFIXES:

SRCS = main.c func1.c func2.c
OBJS = $(SRCS:.c=.o)

%.o: %.c
	@echo $@ depends on $<
	$(CC) -c $<
	
all: a.out
a.out: $(OBJS)
	gcc -o $@ $^


.PHONY: clean
clean:
	-rm a.out $(OBJS) depend

include depend
depend: $(SRCS)
	gcc -M $(SRCS) > depend

