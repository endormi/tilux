CC = gcc
CFLAGS = -Wall -g
FORMATTER = clang-format-10

SRCS = $(wildcard sys/**/*.c)
HEADERS = $(wildcard sys/**/*.h) $(wildcard tools/*.h)
OBJS = $(patsubst %.c,%.o,$(SRCS))

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
	./scripts/build_sphinx
	./scripts/run_sphinx_locally

.PHONY: sphinx
