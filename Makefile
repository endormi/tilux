CC = gcc
CFLAGS = -Wall -g
FORMATTER = clang-format-10

SRCS = $(wildcard sys/**/*.c)
HEADERS = $(wildcard sys/**/*.h) $(wildcard tools/*.h)
OBJS = $(patsubst %.c,%.o,$(SRCS))

SCRIPTS_LOCATION = ./scripts

all: $(OBJS)

.PHONY: all

%.o: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -rf $(OBJS)

.PHONY: clean

cformat:
	$(FORMATTER) -i $(SRCS) $(HEADERS)

sphinx:
	$(SCRIPT_LOCATION)/build_sphinx
	$(SCRIPT_LOCATION)/run_sphinx_locally

.PHONY: sphinx
