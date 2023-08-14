CC = gcc
CFLAGS = -I .

hellomake: olamundo.o olafunc.o
	$(CC) -o olamundo olamundo.o olafunc.o $(CCFLAGS)