## ch02.make/02.variables/05.override.Makefile
MOM = educafe
MOM += ubuntu
$(info MOM = $(MOM))

override MOM = root
MOM += centos

override DAD := educafe
override DAD += centos

all:
	@echo "MOM =" $(MOM)
	@echo "DAD =" $(DAD)
	
	