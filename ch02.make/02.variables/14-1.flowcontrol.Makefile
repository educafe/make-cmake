CC = gcc
CFLAGS = -Wall
TARGET = a.out
SRC = 14.flowcontrol.c

ifeq ($(CUSTOMER),SAMSUNG)
    CFLAGS += -DSAMSUNG
else ifeq ($(CUSTOMER),SKHYNIX)
    CFLAGS += -DSKHYNIX
else ifeq ($(CUSTOMER),HYUNDAI)
    CFLAGS += -DHYUNDAI
else
    $(error Please specify CUSTOMER=SAMSUNG | SKHYNIX | HYUNDAI)
endif

all:
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)
	
	