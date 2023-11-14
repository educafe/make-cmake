## ch02.make/02.variables/06.canned.Makefile
# .ONESHELL:
MOM := educafe
DAD := ubuntu
define PRINTVAR
echo $(MOM) $(DAD)
endef

all: 
	@$(PRINTVAR)
	$(myfuncs); \
	args good morning; 

sub-all:
	$(myfuncs); \
	args hello world

define myfuncs
@args() { printf 'arg: %s\n' "$$@"; }
endef

