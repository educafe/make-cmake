CC = gcc
CFLAGS = -Wall
TARGET = a.out
SRC = 14.flowcontrol.c

all:
	@if [ "$(CUSTOMER)" = "SAMSUNG" ]; then \
		FLAGS="-DSAMSUNG"; \
	else \
		FLAGS="-DHYUNDAI"; \
	fi; \
	$(CC) $(CFLAGS) $$FLAGS -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)
	
	