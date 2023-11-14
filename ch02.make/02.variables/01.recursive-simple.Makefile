## ch02.make/02.variables/01.recursive-simple.Makefile
MOM = educafe
DAD := $(MOM) ubuntu
MOM = hello

CAT = educafe
DOG = $(CAT) ubuntu
CAT = hello

CAT := $(CAT) world

all:
	@echo "DAD = "$(DAD)
	@echo "DOG = "$(DOG)
	@echo "CAT = "$(CAT)

