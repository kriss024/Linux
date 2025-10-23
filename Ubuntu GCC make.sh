# 1. Install make and a compiler
sudo apt-get update
sudo apt-get install build-essential

make --version
gcc --version

# 2. Prepare your source code
# main.c
#include <stdio.h>
#include "functions.h"

int main() {
    print_hello();
    return 0;
}

# utils.c
#include <stdio.h>
#include "functions.h"

void print_hello() {
    printf("Hello, world!\n");
}

# functions.h
#ifndef FUNCTIONS_H
#define FUNCTIONS_H

void print_hello();

#endif

# 3. Create a Makefile
# This is a comment
# The first target is the default one executed by "make"

main: main.o functions.o
	gcc main.o functions.o -o main

main.o: main.c functions.h
	gcc -c main.c

utils.o: utils.c functions.h
	gcc -c utils.c

clean:
	rm -f *.o main

# 4. Run make
# -- To compile your project, simply run make in the directory with your Makefile
make

# To clean up:
make clean

# Run and test:
./main

# 5. A general and compact Makefile
CC = gcc
CFLAGS = -Wall -O2
OBJ = main.o functions.o
TARGET = main

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

# 6. To specify a different Makefile, use the -f flag
make -f MyCustomMakefile