## ch02.make/02.variables/12.pattern_specific.Makefile
.SUFFIXES:
SRCS = educafe.c
SRCS += ubuntu.c
OBJS = $(SRCS:.c=.o)

a.out: educafe.o ubuntu.o
	@echo a.out depends on $(OBJS)
	
%.o: CFLAGS = -O2
%.o: CC = gcc

educafe.o: educafe.c
	$(CC) $(CFLAGS) -c educafe.c

ubuntu.o: ubuntu.c
	$(CC) $(CFLAGS) -c ubuntu.c
	
# Test order
# 1. Run make without .SUFFIXES: declaration, implicit rule will be applied
# 2. Run make with .SUFFIXES: declaration, explicit rule should be defined,
# but variable defined in pattern specific will be applied


