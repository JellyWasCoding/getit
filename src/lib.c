#include "lib.h"

void sys_exit(int error_code) {
    asm volatile
    (
        "syscall"
        :
        : "a"(60), "D"(error_code)
    );
}

void sys_write(unsigned fd, const char *buf, size_t count) {
    asm
    (
        "syscall"
        :
        :"a"(1), "D"(fd), "S"(buf), "d"(count)
    );
}