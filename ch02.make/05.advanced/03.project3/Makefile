## ch02.make/05.advanced/03.project3/01.install.Makefile
.SUFFIXES:
lib_codec := lib/codec
lib_db := lib/db
lib_ui := lib/ui
player := app/player
libraries := $(lib_ui) $(lib_db) $(lib_codec)

.PHONY: all $(player) $(libraries)
all: $(player) $(libraries)

$(player): $(libraries)	

$(player) $(libraries):
	$(MAKE) --directory=$@
	
# $(lib_ui): $(lib_db) $(lib_codec)

clean:
	@for dir in $(libraries) $(player); \
		do $(MAKE) -C $$dir clean; \
	done