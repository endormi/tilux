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

docs:
	./scripts/build_sphinx
	./scripts/run_sphinx_locally

.PHONY: docs

alias:
	./scripts/add_alias
	./scripts/add_alias_venv

.PHONY: alias
