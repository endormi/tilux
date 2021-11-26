CC = gcc
CFLAGS = -Wall -g

# Since the codes are not in the same directory
SRCS = $(wildcard sys/file_folder/*.c) $(wildcard sys/info/*.c)
OBJS = $(patsubst %.c,%.o,$(SRCS))

.PHONY: all clean

all: $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -rf $(OBJS)
