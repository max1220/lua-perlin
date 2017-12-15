# Adjust to your needs. lua5.1 is ABI-Compatible with luajit.
CFLAGS= -O3 -Wall -Wextra -fPIC -I/usr/include/lua5.1
LIBS= -shared -llua5.1

.PHONY: clean all
.DEFAULT_GOAL := all

all: perlin.so

clean:
	rm perlin.so

perlin.so: perlin.c
	$(CC) -o $@ $(CFLAGS) $(LIBS) $<
	strip $@
