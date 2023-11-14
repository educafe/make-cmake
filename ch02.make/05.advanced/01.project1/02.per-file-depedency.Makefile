## ch02.make/05.advanced/01.project1/02.per-file-depedency.Makefile
.SUFFIXES:
SRCS = src/main.c src/func1.c src/func2.c
OBJS = $(SRCS:.c=.o)

%.o: %.c 
	@echo "$(@F) depends on $(<F)"
	gcc -c -I ./include $< -o $@
	
%.d: %.c 
	@echo "$(@) depends on $(<)"
	@gcc -M -I ./include $< >$@
	@sed -i 's/[a-zA-Z0-9_-]*\.o/src\/&/g' $@
	
a.out:$(OBJS)
	@echo "Linking ..... $^"
	gcc $^ -o $@

.PHONY: clean
clean:
	-rm -f $(OBJS) a.out depend
	-rm -f src/*.d

-include $(SRCS:.c=.d)

# include depend
# depend:
	# gcc -M -I ./include $(SRCS) > depend
	# sed -i 's/[a-zA-Z0-9_-]*\.o/src\/&/g' depend
	# gcc -M -I ./include $(SRCS) | sed 's/[a-zA-Z0-9_-]*\.o/src\/&/g' > depend



