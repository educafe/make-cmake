## ch02.make/02.variables/03.cmd_subs.Makefile
MOM != echo root
DAD != getent passwd root
SRCS = $(shell echo *.Makefile)
all:
	@echo "MOM =" $(MOM)
	@echo "DAD =" $(DAD)
	@echo "SRCS =" $(SRCS)
	
	
	