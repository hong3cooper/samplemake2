# Definitions for constants
CC=gcc
CFLAGS=-I.

# This will create your final output using .o compiled files
make: main.o atof.o
	$(CC) $(CFLAGS) -o main.out main.o atof.o

# This will compile atof.c
atof.o: atof.c atof.h
	$(CC) $(CFLAGS) -c atof.c

# This will compile main.c with its dependency
main.o: main.c atof.h
	$(CC) $(CFLAGS) -c main.c

# This will clean or remove compiled files so you can start fresh
clean:
	rm -f *.o *.out

