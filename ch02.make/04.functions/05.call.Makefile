## ch02.make/04.functions\05.call.Makefile
reverse = $(2) $(1)
find = $(wildcard $(addsuffix /$(1), $(subst :, ,$(PATH))))
which = $(firstword $(wildcard $(addsuffix /$(1),$(subst :, ,$(PATH)))))

call:
	@echo $(call reverse, world, hello)
	@echo find=$(call find,ls)
	@echo which=$(call which,ls)
	
