CC = gcc
CFLAGS = -I .
DEPS = olamundo.h
OBJ = olamundo.o olafunc.o

%.o: %.c $(DEPS)
	$(CC) $< $(CFLAGS) -c -o $@

olamundo: $(OBJ)
	$(CC) $(CCFLAGS) -o $@ $^

ola:
	echo "Olá mundo!"
	echo "Outra linha..."

#targets: prerequisitos
#	command
#	command
#	command

teste: teste.c
	gcc teste.c -o teste

clean: 
	rm -f teste $(OBJ) olamundo