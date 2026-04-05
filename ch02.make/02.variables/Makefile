CC = gcc
CFLAGS = -Wall
TARGET = a.out
SRC = 14.flowcontrol.c


all:
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

samsung:
	CFLAGS += -DSAMSUNG
	$(Make) CUSTOMER=SAMSUNG

clean:
	rm -f $(TARGET)
	
	