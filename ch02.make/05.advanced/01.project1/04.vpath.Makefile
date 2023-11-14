## ch02.make/05.advanced/01.project1/04.vpath.Makefile
.SUFFIXES:
VPATH = src
SRCS = main.c func1.c func2.c
OBJS = $(SRCS:.c=.o)

DEPDIR := deps

a.out: $(addprefix $(VPATH)/,$(OBJS))
	@echo $@ depends on $^
	gcc $^ -o $@

%.o: %.c | $(DEPDIR)
	@echo $@ depends on $<
	gcc -c -I include $< -o $@ -MMD -MF $(DEPDIR)/$(*F).d
	
$(DEPDIR): ; @mkdir -p $@

-include $(SRCS:%.c=$(DEPDIR)/%.d)
# DEPFILES := $(SRCS:%.c=$(DEPDIR)/%.d)
# $(DEPFILES):
# include $(wildcard $(DEPFILES))

clean:
	-rm -f a.out 
	-rm -f $(shell find ./ -name "*.o")
	-rm -f $(shell find ./ -name "*.d")
	-rm -r deps
	
	