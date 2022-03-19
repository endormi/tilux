CC = gcc
CFLAGS = -Wall -g
FORMATTER = clang-format-10
FORMATTER_FLAGS = --dry-run -Werror

# Since the codes are not in the same directory
SRCS = $(wildcard sys/file_folder/*.c) $(wildcard sys/info/*.c) $(wildcard sys/proc/*.c)
HEADERS = $(wildcard sys/file_folder/*.h) $(wildcard sys/info/*.h) $(wildcard sys/proc/*.h) $(wildcard tools/*.h)
OBJS = $(patsubst %.c,%.o,$(SRCS))

.PHONY: all clean

all: $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -rf $(OBJS)

cformat:
	$(FORMATTER) -i $(SRCS) $(HEADERS)

# This is to check if user needs to compile code
cformat_check:
	$(FORMATTER) $(FORMATTER_FLAGS) $(SRCS) $(HEADERS)
