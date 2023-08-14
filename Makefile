CC = gcc
CFLAGS = -I .
DEPS = olamundo.h
OBJ = olamundo.o olafunc.o

#se descomentar a linha a seguir, passa a ser a regra padrão ao chamar make (sem argumentos)
#all: um dois tres

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
	rm -f teste $(OBJ) olamundo 01 02 03

todos: um dois tres

um:
	touch 01
dois:
	touch 02
tres:
	touch 03