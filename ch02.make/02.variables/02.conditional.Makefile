## ch02.make/02.variables/02.conditional.Makefile
MOM = educafe
MOM ?= ubuntu
DAD ?= ubuntu
ifndef CAT
CAT := linux
endif

all:
	@echo "MOM =" $(MOM)
	@echo "DAD =" $(DAD)
	@echo "CAT =" $(CAT)
	
