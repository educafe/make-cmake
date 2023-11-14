## \ch03_libs\04.liball-make\appSrc\Makefile
.SUFFIXES:
INC_PATH = ../include
CC = gcc
CFLAGS = -Wall -O2 -I$(INC_PATH)
LINK = -L $(LIBS) -lfuncs
LIBS = ../libs
SRCS := main.c
OBJS := $(SRCS:.c=.o)

DEPDIR := ../deps
OBJDIR := ../objs

$(addprefix $(OBJDIR)/,%.o) : %.c
	@@echo "Compiling : $@ depends on $< ....."
	$(CC) $(CFLAGS) -c -MMD $< -MF $(DEPDIR)/$(*F).d -o $@

all: libfuncs.a libfuncs.so static shared

static : libfuncs.a $(addprefix $(OBJDIR)/,$(OBJS))
	@echo "Building : $@ depends on $^ ...."
	$(CC) -o $@ $(addprefix $(OBJDIR)/,$(OBJS)) $(LINK) -static

shared : libfuncs.so $(addprefix $(OBJDIR)/,$(OBJS))
	@echo "Building : $@ depends on $^ ...."
	$(CC) -o $@ $(addprefix $(OBJDIR)/,$(OBJS)) $(LINK) -Wl,-rpath=$(LIBS)

libfuncs.a:
	$(MAKE) -C $(LIBS) libfuncs.a

libfuncs.so:
	$(MAKE) -C $(LIBS) libfuncs.so

clean :
	-$(MAKE) -C $(LIBS) clean
	-rm -f static shared main.o depend
	
-include $(SRCS:%.c=$(DEPDIR)/%.d)
