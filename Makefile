CC = gcc
CFLAGS = -I .
DEPS = olamundo.h
OBJ = olamundo.o olafunc.o

%.o: %.c $(DEPS)
	$(CC) $< $(CFLAGS) -c -o $@

hellomake: olamundo.o olafunc.o
	$(CC) -o olamundo olamundo.o olafunc.o $(CCFLAGS)