## ch02.make/02.variables/07.undefine.Makefile
MOM := educafe
DAD := ubuntu
define PRINTVAR
echo $(MOM) $(DAD)
endef

undefine MOM 

all:
	@echo "MOM="$(MOM) "DAD="$(DAD) 
	@$(PRINTVAR)
	
	
	