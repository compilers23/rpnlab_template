

all:
	as -o lab.o lab.s
	ld -o lab lab.o
