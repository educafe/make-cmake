CC = gcc
CFLAGS = -Wall
TARGET = a.out
SRC = 14.flowcontrol.c

VALID_CUSTOMERS := SAMSUNG SKHYNIX HYUNDAI

ifeq ($(filter $(CUSTOMER),$(VALID_CUSTOMERS)),)
    $(error define a customer (e.q, CUSTOMER=SAMSUNG))
endif

CFLAGS += -D$(CUSTOMER)

all:
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)
	
	