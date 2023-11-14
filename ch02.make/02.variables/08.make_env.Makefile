## ch02.make/02.variables/08.make_env.Makefile
all:
	@echo $$\(COMPILE.c\) = $(COMPILE.c)
	@echo $$\(AR\) $$\(ARFLAGS\) = $(AR) $(ARFLAGS)
	@echo $$\(LINK.c\) = $(LINK.c)
	@echo $$\(MAKE\) = $(MAKE)
	@echo $$\(.SHELLFLAGS\) = $(.SHELLFLAGS)
	@echo $$\(SHELL\) = $(SHELL)
	@echo $$\(PATH\) = $(PATH)
	@echo $$\(HOME\) = $(HOME)
	@echo $$\(PWD\) = $(PWD)
	