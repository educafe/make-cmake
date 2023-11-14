## ch03_libs/02.libStatic-make/libs/Makefile

.SUFFIXES:
CC = gcc
CFLAGS = -Wall -O2 -I$(INC_PATH)
ARFLAGS = -rcs
INC_PATH = ../include
LIB_SRCS = func1.c func2.c
LIB_OBJS = $(LIB_SRCS:.c=.o)

all: libfuncs.a

libfuncs.a : func1.o func2.o
	@echo "Building : $@ depends on $^ ....."
	$(AR) $(ARFLAGS) $@ $^
	
%.o : %.c  
	@echo "Compiling : $@ depends on $< ....."
	$(CC) -c $< $(CFLAGS) -o $@

clean :
	-rm -f func1.o func2.o libfuncs.a depend
	
include depend
depend: $(LIB_SRCS)
	gcc -M $^ -I $(INC_PATH) > depend 

