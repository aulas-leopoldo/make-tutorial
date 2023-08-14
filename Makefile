CC = gcc
CFLAGS = -I .
DEPS = olamundo.h
OBJ = olamundo.o olafunc.o

%.o: %.c $(DEPS)
	$(CC) $< $(CFLAGS) -c -o $@

olamundo: $(OBJ)
	$(CC) $(CCFLAGS) -o $@ $^