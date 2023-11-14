## ch02.make/06.additionals/02.project2/libSrc/Makefile
.SUFFIXES:
SRCS := func1.c func2.c
OBJS := $(SRCS:.c=.o)
CFLAGS := -MMD -I ../include

%.o: %.c
	@echo $@ depends on $<
	gcc -c $(CFLAGS) $< -o $@

all: $(OBJS)

clean:
	-rm -f a.out $(OBJS)
	-rm -f $(shell find ./ -name "*.d")
	
-include $(SRCS:.c=.d)

