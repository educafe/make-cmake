## ch02.make/04.functions/04.shell.Makefile
contents := $(shell getent passwd educafe)
path := $(shell echo $(PATH))

shell:
	@echo $(contents)
	@echo $(path)
	
