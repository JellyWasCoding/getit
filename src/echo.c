// a -> rax
// D -> rdi
// S -> rsi
// d -> rdx

#include "lib.h"

void _start(int argc, char* argv) {
    sys_write(1, "Hello World", 11);
    sys_exit(0);
}