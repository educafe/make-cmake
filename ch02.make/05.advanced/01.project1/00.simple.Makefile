## ch02.make/03.Makefiles/09.var-substitution.Makefile
.SUFFIXES:
SRCS= main.c func1.c func2.c
OBJS= $(SRCS:.c=.o)

%.o: $(addprefix src/, %.c)
	@echo $@ depends on $<
	gcc -c -I include $<
	
all: a.out
a.out: $(OBJS)
	gcc -o $@ $^
	
clean:
	rm -f $(OBJS) a.out depend

-include depend
depend: 
	gcc -M $(addprefix src/, $(SRCS)) -I include > depend

