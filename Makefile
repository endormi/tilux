CC = gcc
CFLAGS = -Wall -g
FORMATTER = clang-format-10

SRCS = $(wildcard sys/**/*.c)
HEADERS = $(wildcard sys/**/*.h) $(wildcard tools/*.h)
OBJS = $(patsubst %.c,%.o,$(SRCS))

.PHONY: all clean

all: $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -rf $(OBJS)

cformat:
	$(FORMATTER) -i $(SRCS) $(HEADERS)
