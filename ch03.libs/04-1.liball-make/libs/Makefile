## ch03_libs/04.liball-make/libs/Makefile
.SUFFIXES:
CC = gcc
ARFLAGS = -rcs
VPATH=../libSrc
INC_PATH = ../include
LIB_SRCS = func1.c func2.c
LIB_OBJS = $(LIB_SRCS:.c=.o)

DEPDIR := ../deps
OBJDIR := ../objs

all: libfuncs.a libfuncs.so

$(DEPDIR): ; @mkdir -p $@
$(OBJDIR): ; @mkdir -p $@

libfuncs.a : $(addprefix $(OBJDIR)/a-,$(LIB_OBJS))
	@echo "Building : $@ depends on $^ ....."
	$(AR) $(ARFLAGS) $@  $^
	
$(addprefix $(OBJDIR)/a-, %.o) : %.c | $(DEPDIR) $(OBJDIR)
	@echo "Compiling : $@ depends on $< ..."
	gcc -c -MMD -I$(INC_PATH) -c $< -MF $(DEPDIR)/$(addprefix a-,$(*F)).d -o $@

libfuncs.so: $(addprefix $(OBJDIR)/so-,$(LIB_OBJS))
	@echo "Building : $@ depends on $^ ....."
	gcc -shared -o $@ $^

$(addprefix $(OBJDIR)/so-, %.o) : %.c | $(DEPDIR) $(OBJDIR)
	@echo "Compiling : $@ depends on $< ..."
	gcc -c -MMD -fPIC -I$(INC_PATH) -c $< -MF $(DEPDIR)/$(addprefix so-,$(*F)).d -o $@

clean :
	-rm -f $(LIB_OBJS) *.d libfuncs.a libfuncs.so
	-rm -f depend
	-rm -r $(DEPDIR) $(OBJDIR)

-include $(LIB_SRCS:%.c=$(DEPDIR)/$(addprefix a-,%.d))
-include $(LIB_SRCS:%.c=$(DEPDIR)/$(addprefix so-,%.d))

