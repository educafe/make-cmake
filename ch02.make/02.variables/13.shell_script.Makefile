## ch02.make/02.variables\13.shell_script.Makefile
LIST = one two three
SRCS = educafe.c ubuntu.c
define myshell
@for i in $(LIST);\
do \
	echo $$i; \
done
endef
all:
	$(myshell)
	@for i in $(SRCS);\
	do \
		echo $$i; \
	done
