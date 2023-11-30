PARAM = -nostdlib -ffreestanding -fno-stack-protector -fdata-sections -ffunction-sections -Wl,-n -s -Os -no-pie -Wl,--gc-sections -Wl,--build-id=none -fno-unwind-tables -fno-asynchronous-unwind-tables

all: echo

echo: src/echo.c
	gcc $(PARAM) -o out/echo src/echo.c src/lib.c && strip -R .comment out/echo