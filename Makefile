CC = gcc
CFLAGS = -g -Wall -o

default:
	$(CC) sys/file_folder/fs.c $(CFLAGS) fs.o
	$(CC) sys/info/space.c $(CFLAGS) space.o


.PHONY: clean

clean:
	rm -rf *.o
