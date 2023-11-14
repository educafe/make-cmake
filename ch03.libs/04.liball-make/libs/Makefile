## ch03_libs/04.liball-make/libs/Makefile
.SUFFIXES:
CC = gcc
ARFLAGS = -rcs
VPATH=../libSrc
INC_PATH = ../include
LIB_SRCS = func1.c func2.c
# LIB_OBJS = $(LIB_SRCS:.c=.o)
STATIC_OBJS = $(LIB_SRCS:.c=.a.o)
SHARED_OBJS = $(LIB_SRCS:.c=.so.o)

DEPDIR := ../deps
OBJDIR := ../objs

.PHONY: all
all: libfuncs.a libfuncs.so

$(DEPDIR): ; @mkdir -p $@
$(OBJDIR): ; @mkdir -p $@

libfuncs.a : $(addprefix $(OBJDIR)/,$(STATIC_OBJS))
	@echo "Building : $@ depends on $^ ....."
	$(AR) $(ARFLAGS) $@  $^
	
$(addprefix $(OBJDIR)/, %.a.o) : %.c | $(DEPDIR) $(OBJDIR)
	@echo "Compiling : $@ depends on $< ..."
	gcc -c -MMD -I$(INC_PATH) -c $< -MF $(DEPDIR)/$(*F).a.d -o $@

libfuncs.so: $(addprefix $(OBJDIR)/,$(SHARED_OBJS))
	@echo "Building : $@ depends on $^ ....."
	gcc -shared -o $@ $^

$(addprefix $(OBJDIR)/, %.so.o) : %.c | $(DEPDIR) $(OBJDIR)
	@echo "Compiling : $@ depends on $< ..."
	gcc -c -MMD -fPIC -I$(INC_PATH) -c $< -MF $(DEPDIR)/$(*F).so.d -o $@

clean :
	-rm -f $(STATIC_OBJS) $(SHARED_OBJS) libfuncs.a libfuncs.so
	-rm -f depend
	-rm -r $(DEPDIR) $(OBJDIR)

-include $(LIB_SRCS:%.c=$(DEPDIR)/%.so.d)
-include $(LIB_SRCS:%.c=$(DEPDIR)/%.a.d)

# -include $(LIB_SRCS:%.c=$(DEPDIR)/*.d)