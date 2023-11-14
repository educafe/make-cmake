##ch02.make/05.advanced/01.project1/06.make-control.Makefile
.SUFFIXES:
VPATH = src
SRCS := main.c func1.c func2.c
OBJS := $(SRCS:.c=.o)

OBJDIR := objs

a.out: $(addprefix objs/, $(OBJS))
	@echo "$@ depends on $^"
	gcc $^ -o $@
	
ifneq ($(VPATH), )
	
$(addprefix objs/, %.o): %.c | $(OBJDIR)
	@echo "$@ depends on $<"
	gcc -c -I ./include $< -o $@

else
	
objs/main.o: src/main.c | $(OBJDIR)
	gcc -c -I ./include $< -o $@

objs/func1.o: src/func1.c
	gcc -c -I ./include $< -o $@

objs/func2.o: src/func2.c
	gcc -c -I ./include $< -o $@

endif
	
$(OBJDIR):
	mkdir -p $@

.PHONY: clean
clean:
	-rm -f $(OBJS) a.out depend
	-rm -f $(shell find ./ -name "*.o")
	-rm -r objs

include depend
depend: 
	gcc -M -I ./include $(addprefix src/, $(SRCS)) > depend
	sed -i 's/[a-zA-Z0-9_-]*\.o/objs\/&/g' depend



