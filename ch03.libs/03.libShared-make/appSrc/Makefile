## ch03.libs/03.libShared-make/appSrc/Makefile

.SUFFIXES:
INC_PATH = ../include
CC = gcc
CFLAGS = -Wall -O2 -I$(INC_PATH)
LIBS = ../libs
LDFLAGS = -L $(LIBS) -lfuncs
SRCS = main.c
OBJS = $(SRCS:.c=.o)

a.out-shared : libfuncs.so $(OBJS)
	@echo "Building : $@ depends on $^ ...."
	$(CC) -o $@ $(OBJS) $(LDFLAGS) -Wl,-rpath=$(LIBS)
%.o : %.c 
	@echo "Compiling : $@ depends on $< ....."
	$(CC) $(CFLAGS) -c -MMD $< -MF $(*F).d -o $@
libfuncs.so:
	$(MAKE) -C $(LIBS)
clean :
	-$(MAKE) -C $(LIBS) clean
	-rm -f a.out-shared $(OBJS) *.d
	
-include $(SRCS:.c=.d)

