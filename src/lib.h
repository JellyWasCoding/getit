typedef unsigned size_t;

void sys_exit(int error_code);
void sys_write(unsigned fd, const char *buf, size_t count);