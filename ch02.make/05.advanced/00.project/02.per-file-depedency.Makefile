## ch02.make/05.advanced/00.project/02.per-file-depedency.Makefile
.SUFFIXES:
SRCS = main.c func1.c func2.c
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)

obj/%.o: src/%.c 
	@echo "$@ depends on $<"
	gcc -c -I ./include $< -o $@
	
dep/%.d: src/%.c 
	@echo "$(@) depends on $(<)"
	@gcc -M -I ./include $< >$@
	@sed -i 's/[a-zA-Z0-9_-]*\.o/obj\/&/g' $@
	
a.out:$(addprefix obj/,$(OBJS))
	@echo "Linking ..... $^"
	gcc $^ -o $@

.PHONY: clean
clean:
	-rm a.out 
	-rm -f obj/*.o
	rm -f dep/*.d

-include $(addprefix dep/,$(DEPS))

# include depend
# depend:
	# gcc -M -I ./include $(SRCS) > depend
	# sed -i 's/[a-zA-Z0-9_-]*\.o/src\/&/g' depend
	# gcc -M -I ./include $(SRCS) | sed 's/[a-zA-Z0-9_-]*\.o/src\/&/g' > depend



