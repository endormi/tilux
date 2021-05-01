CC = gcc
CFLAGS = -g -Wall -o

default:
	$(CC) sys/fs.c $(CFLAGS) fs.o
	$(CC) sys/space.c $(CFLAGS) space.o

# Doesn't affect the functionality in any way and is not needed
c+:
	g++ proc.cpp $(CFLAGS) proc.o

clean:
	rm -rf *.o
