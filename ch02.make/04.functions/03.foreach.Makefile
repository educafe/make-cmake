## ch02.make/04.functions/03.foreach.Makefile
SRCS := $(shell echo *.c)
dirs := /home/educafe/make-cmake/ch02.make/03.Makefiles
foreach:
	@echo $(foreach obj, $(shell echo *), $(obj))
	@echo $(foreach obj, $(SRCS), $(shell gcc -c $(obj)))
	@echo $(foreach obj, $(shell echo *), $(obj))
dirs:
	@echo $(foreach dir, $(dirs), $(dir)/* && echo) 
	@echo $(foreach dir, $(dirs), $(notdir $(dir)/*))
	
