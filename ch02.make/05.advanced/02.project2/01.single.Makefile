## ch02.make/05.advanced/02.project2/01.single.Makefile
.SUFFIXES:
VPATH := appSrc:libSrc
SRCS := main.c func1.c func2.c
OBJS := $(SRCS:.c=.o)
CFLAGS := -I include -MMD

%.o: %.c
	@echo $@ depends on $<
	gcc -c $(CFLAGS) $< -o $@

a.out: $(OBJS)
	@echo $@ depends on $^
	gcc $^ -o $@

clean:
	-rm -f a.out $(OBJS)
	-rm -f $(shell find . -name "*.d")

-include $(SRCS:.c=.d)
	
	