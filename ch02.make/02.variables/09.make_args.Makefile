## ch02.make/02.variables09.make_args.Makefile
HOME = /root
$(info HOME=$(HOME) $(origin HOME))
PATH:=$(PATH)
$(info PATH=$(PATH) $(origin PATH))
$(info SHELL=$(SHELL) $(origin SHELL))

all:
	@echo   
