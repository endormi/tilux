CC = gcc
CFLAGS = -g -Wall -o

default:
	$(CC) sys/fs.c $(CFLAGS) fs.o
	$(CC) sys/space.c $(CFLAGS) space.o


.PHONY: clean

clean:
	rm -rf *.o
