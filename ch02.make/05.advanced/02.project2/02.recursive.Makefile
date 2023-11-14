## ch02.make/05.advanced/02.project2/02.recursive.Makefile
.SUFFIXES:
SUBDIRS := appSrc libSrc
CFLAGS := -I include -MMD

.PHONY: $(SUBDIRS)
a.out: $(SUBDIRS)
	@echo "$@ depends on $^"
	gcc appSrc/*.o libSrc/*.o -o $@
	
$(SUBDIRS):
	cd $@ && $(MAKE)

clean:
	-rm -r a.out
	-cd appSrc && make clean 
	-cd libSrc && make clean
	
	