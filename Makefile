TOOLS = $(RISCV)
CC = $(TOOLS)/bin/riscv64-unknown-linux-gnu-gcc
OPT = -O1 
CFLAGS += $(OPT) -c -fno-inline
OBJOUT 	= -o
BUILD_DIR = build

.PHONY: all clean

all:src/dhry_1.c src/dhry_2.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) src/dhry_1.c -o build/dhry_1.o
	$(CC) $(CFLAGS) src/dhry_2.c -o build/dhry_2.o
	$(CC) $(OBJOUT) build/dhrystone$(OPT) build/dhry_1.o build/dhry_2.o
clean:
	rm $(BUILD_DIR)/*