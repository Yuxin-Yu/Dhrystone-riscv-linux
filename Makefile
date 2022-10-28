TOOLS = $(RISCV)
CC = $(TOOLS)/bin/riscv64-unknown-linux-gnu-gcc
CFLAGS = -O2 
CFLAGS += -c -fno-inline
OBJOUT 	= -o

.PHONY:all clean

all:src/dhry_1.c src/dhry_2.c
	mkdir build
	$(CC) $(CFLAGS) src/dhry_1.c -o build/dhry_1.o
	$(CC) $(CFLAGS) src/dhry_2.c -o build/dhry_2.o
	$(CC) $(OBJOUT) dhrystone build/dhry_1.o build/dhry_2.o
clean:
	rm -rf build/
	rm dhrystone