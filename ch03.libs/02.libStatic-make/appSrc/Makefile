## ch03.libs/02.libStatic-make/appSrc/Makefile
.SUFFIXES:
INC_PATH = ../include
CC = gcc
CFLAGS = -Wall -O2 -I$(INC_PATH)
LIBS = ../libs
LDFLAGS = -L $(LIBS) -lfuncs -static
SRCS=main.c
OBJS=$(SRCS:.c=.o)

all: a.out-static
.PHONY: all

a.out-static : libfuncs.a $(OBJS) 
	@echo "Building : $@ depends on $^ ...."
	$(CC) -o $@ $^ $(LDFLAGS)
	
%.o : %.c 
	@echo "Compiling : $@ depends on $< ....."
	$(CC) $(CFLAGS) -c $< -o $@
	
libfuncs.a:
	$(MAKE) -C $(LIBS)

clean :
	-$(MAKE) -C $(LIBS) clean
	-rm -f a.out-static main.o depend
	
-include depend
depend: main.c 
	gcc -M $^ -I$(INC_PATH) > depend 
