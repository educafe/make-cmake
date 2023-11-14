## ch02.make/05.advanced/02.project2/appSrc/Makefile
.SUFFIXES:
SRCS := main.c 
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

