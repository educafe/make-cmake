## ch02.make/02.variables/04.append.Makefile
MOM = linux centos
MOM += ubuntu
# MOM = $(MOM) educafe 

DAD := hello world
DAD += good
DAD := $(DAD) morning
# DAD = $(DAD) morning
all:
	@echo $(MOM)
	@echo $(DAD)
	
	