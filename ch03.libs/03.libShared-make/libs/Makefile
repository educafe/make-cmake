## ch03.libs/03.libShared-make/libs/Makefile

.SUFFIXES:
CC = gcc
CFLAGS = -Wall -O2 -I$(INC_PATH)
ARFLAGS = -rcs
INC_PATH = ../include
LIB_SRCS = func1.c func2.c
LIB_OBJS = $(LIB_SRCS:.c=.o)

all: libfuncs.so

libfuncs.so : $(LIB_OBJS)
	@echo "Building : $@ depends on $^ ....."
	gcc -shared $(LIB_OBJS) -o $@
	
%.o : %.c
	@echo "Compiling : $@ depends on $< ....."
	$(CC) -c -fPIC -MMD $< $(CFLAGS) -MF $(*F).d -o $@
	
clean :
	-rm -f $(LIB_OBJS) libfuncs.so *.d

-include $(LIB_SRCS:.c=.d)

