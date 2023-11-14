## ch02.make/04.functions/01.subst.Makefile
VAR=$(subst ee,EE,feet on the street)
OBJS := $(patsubst %.c,%.o, x.c.c bar.c)
SRCS := main.c func1.c func2.c a.h b.h c.h
VPATH := src:../headers

all: a.out
a.out:
	@echo VAR=$(VAR)
	@echo OBJS=$(OBJS)

%.o: %.c
	@echo $@ depends on $<

main: $(patsubst %.c,%.o, $(filter %c, $(SRCS)))
	@echo SRCS=$(filter %c, $(SRCS))
	@echo $@ depends on $^

path:
	@echo VPATH=$(subst :, , $(VPATH))

	
	
