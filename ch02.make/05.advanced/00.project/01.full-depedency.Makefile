## ch02.make/05.advanced/00.project/01.full-depedency.Makefile
.SUFFIXES:
SRCS = main.c func1.c func2.c
OBJS = $(SRCS:.c=.o)

obj/%.o: src/%.c 
	@echo "$@ depends on $<"
	gcc -c -I ./include $< -o $@
	
a.out:$(addprefix obj/, $(OBJS))
	@echo "Linking ..... $^"
	gcc $^ -o $@

.PHONY: clean
clean:
	-rm -f obj/*.o a.out depend

include depend
depend:
	gcc -M $(addprefix src/,$(SRCS)) > depend
	sed -i 's/[a-zA-Z0-9_-]*\.o/obj\/&/g' depend
	# gcc -M -I ./include $(SRCS) | sed 's/[a-zA-Z0-9_-]*\.o/src\/&/g' > depend


# gcc -M -I ./include  $(SRCS) > depend 을 실행하는 경우 depend 파일에는 
# main.o: src/main.c include/a.h include/b.h 과 같이 저장되어 있으며,
# 실제는 src/main.o 파일이 존재하며, 해당 파일을 이용하여 dependency 확인해야 한다.
# 따라서 include/c.h 파일이 수정되어도 dependency 확인을 제대로 하지 못한다

# gcc -M -I ./include $(SRCS) | sed 's|[a-zA-Z0-9_-]*\.o|src/&|' > depend 는
# src/main.o: src/main.c include/a.h include/b.h 와 같이 저장되므로 
# .o 파일이 저장되는 위치에 있는 obj 파일을 이용하여 dependency 확인을 한다

# -MMD 옵션을 사용하여 컴파일 하는 경우 각 .c 파일에 대한 .d 파일이 생성되며, 
# 현재의 구성은 해당 파일이 src/ 하위에 저장되므로 
# dependency 확인은 src/*.d 파일로 확인을 해야 한다
# 그렇게 하기 위해서 -include $(SRCS:.c=.d) 명령을 실행함으로서 가능하다


