## ch02.make/04.functions/02.filename.Makefile
OBJS := $(patsubst %.c,%.o,$(wildcard *.c))
dir:
	@echo $(dir src/main.c $(shell which gcc))

notdir:
	@echo $(notdir src/main.c $(shell which gcc))
	
basename:
	@echo $(shell echo *) 
	@echo $(basename $(shell echo *))

addsuffix:
	@echo $(basename $(shell echo *.c))
	@echo $(addsuffix .o, $(basename $(shell echo *.c)))

addprefix:
	@echo $(shell echo *.c)
	@echo $(addprefix src/, $(shell echo *.c))
	
wildcard:
	@echo $(OBJS)
	@echo $(wildcard main.c func1.c exam1.c task1.c)
	
	