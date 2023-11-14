## ch02.make/05.advanced/01.project1/05.separated.Makefile
.SUFFIXES:
VPATH = src
SRCS = main.c func1.c func2.c
OBJS = $(SRCS:.c=.o)

DEPDIR := deps
OBJDIR := objs

a.out: $(addprefix objs/,$(OBJS))
	@echo "$@ depends on $^"
	gcc  $^ -o $@

$(addprefix objs/,%.o): %.c | $(DEPDIR) $(OBJDIR)
	@echo "$@ depends on $<"
	gcc -c -MMD -I include $< -MF $(DEPDIR)/$(*F).d -o $@
	
$(DEPDIR): ; @mkdir -p $@
$(OBJDIR): ; @mkdir -p $@

clean:
	-rm -f a.out $(OBJS)
	-rm -f $(shell find ./ -name "*.d")
	-rm -f $(shell find ./ -name "*.o")
	-rm -r objs deps

-include $(SRCS:%.c=$(DEPDIR)/%.d)
# -include $(addprefix dep/,$(DEPS))
	