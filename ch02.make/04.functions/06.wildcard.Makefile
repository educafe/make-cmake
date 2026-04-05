CC      := gcc
CFLAGS  := -Wall 
SRCS     := $(wildcard src/*.c)
OBJS     := $(patsubst src/%.c,build/%.o,$(SRCS))
TARGET  := a.out

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

build/%.o: src/%.c
	@mkdir -p build
	$(CC) $(CFLAGS) -c $< -o $@
	
include depend
depend:
	gcc -M -I $(SRCS) > depend
	sed -i 's/[a-zA-Z0-9_-]*\.o/build\/&/g' depend

clean:
	-rm -rf ./build
	rm depend
