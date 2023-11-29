PARAM= -nostdlib -ffreestanding -fno-stack-protector src/start.S

all: false true

false: src/false.c
	@echo "CC src/false.o"
	@gcc src/false.c $(PARAM) -o out/false

true: src/true.c
	@echo "CC src/true.o"
	@gcc src/true.c $(PARAM) -o out/true