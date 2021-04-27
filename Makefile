CC = gcc
CFLAGS = -g -Wall

default:
	$(CC) sys/fs.c $(CFLAGS) -o fs.o
	$(CC) sys/space.c $(CFLAGS) -o space.o

# Doesn't affect the functionality in any way and is not needed
c+:
	g++ proc.cpp -o proc.o

clean:
	rm -rf *.o
