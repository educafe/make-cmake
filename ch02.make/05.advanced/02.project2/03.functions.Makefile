## ch02.make/05.advanced/02.project2/03.fuctions.Makefile
.SUFFIXES:
SUBDIRS := appSrc libSrc
CFLAGS := -I include -MMD

.PHONY: $(SUBDIRS)
a.out: $(SUBDIRS)
	@echo "$@ depends on $(addsuffix /*.o, $^)"
	gcc $(addsuffix /*.o, $^) -o $@
	# gcc $(foreach dir, $(SUBDIRS), $(wildcard $(dir)/*.o)) -o $@
	
$(SUBDIRS):
	$(MAKE) -C $@
	
clean:
	-rm a.out
	@for dir in $(SUBDIRS); \
		do $(MAKE) -C $$dir clean;\
	done

	
	
	