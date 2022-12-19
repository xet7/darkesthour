.PHONY: all

all: deps linux-x32 linux-x64 linux-arm32 linux-arm64 linux-s390x linux-sparc64 linux-ppc linux-ppc64 linux-ppc64le linux-riscv64 linux-m68k dos c64 pet pet80 plus4 cbm apple2 win32 win64 amigaos3

deps:
	@./deps.sh

linux-x32:
	@mkdir -p build/Linux-x32
	gcc -m32 darkest-hour.c -o build/Linux-x32/darkest-hour -Wall -static

linux-x64:
	@mkdir -p build/Linux-x64
	gcc darkest-hour.c -o build/Linux-x64/darkest-hour -Wall -static

linux-arm32:
	@mkdir -p build/Linux-arm32
	arm-linux-gnueabi-gcc darkest-hour.c -o build/Linux-arm32/darkest-hour -Wall -static

linux-arm64:
	@mkdir -p build/Linux-arm64
	aarch64-linux-gnu-gcc darkest-hour.c -o build/Linux-arm64/darkest-hour -Wall -static

linux-s390x:
	@mkdir -p build/Linux-s390x
	s390x-linux-gnu-gcc darkest-hour.c -o build/Linux-s390x/darkest-hour -Wall -static

linux-sparc64:
	@mkdir -p build/Linux-sparc64
	sparc64-linux-gnu-gcc darkest-hour.c -o build/Linux-sparc64/darkest-hour -Wall -static

linux-ppc:
	@mkdir -p build/Linux-ppc
	powerpc-linux-gnu-gcc darkest-hour.c -o build/Linux-ppc/darkest-hour -Wall -static

linux-ppc64:
	@mkdir -p build/Linux-ppc64
	powerpc64-linux-gnu-gcc darkest-hour.c -o build/Linux-ppc64/darkest-hour -Wall -static

linux-ppc64le:
	@mkdir -p build/Linux-ppc64le
	powerpc64le-linux-gnu-gcc darkest-hour.c -o build/Linux-ppc64le/darkest-hour -Wall -static

linux-riscv64:
	@mkdir -p build/Linux-riscv64
	riscv64-linux-gnu-gcc darkest-hour.c -o build/Linux-riscv64/darkest-hour -Wall -static

linux-m68k:
	@mkdir -p build/Linux-m68k
	m68k-linux-gnu-gcc darkest-hour.c -o build/Linux-m68k/darkest-hour -Wall -static

dos:
	@mkdir -p build/DOS
	ia16-elf-gcc ./darkest-hour.c -o build/DOS/DARKHOUR.EXE -Wall

c64:
	@mkdir -p build/C64
	./archive/cc65/bin/cl65 ./darkest-hour.c -t c64 -o build/C64/DarkestHour.prg

pet:
        # Commodore PET 40 columns
	@mkdir -p build/CommodorePET40columns
	./archive/cc65/bin/cl65 ./darkest-hour.c -t pet -o build/CommodorePET40columns/DarkestHour.prg

pet80:
	@mkdir -p build/CommodorePET80columns
	./archive/cc65/bin/cl65 ./darkest-hour.c -t pet -o build/CommodorePET80columns/DarkestHour.prg

plus4:
	@mkdir -p build/Plus4
	./archive/cc65/bin/cl65 ./darkest-hour.c -t plus4 -o build/Plus4/DarkestHour.prg

cbm:
	@mkdir -p build/CBM-II
	./archive/cc65/bin/cl65 ./darkest-hour.c -t cbm610 -o build/CBM-II/DarkestHour.prg

apple2:
	@mkdir -p build/AppleII
	./archive/cc65/bin/cl65 -t apple2 ./darkest-hour.c -o build/AppleII/DarkestHour

win32:
	@mkdir -p build/Win32
	i686-w64-mingw32-gcc -o ./build/Win32/darkest-hour-win32.exe ./darkest-hour.c

win64:
	@mkdir -p build/Win64
	x86_64-w64-mingw32-gcc -o ./build/Win64/darkest-hour-win64.exe ./darkest-hour.c

amigaos3:
	@mkdir -p build/AmigaOS3
	m68k-amigaos-gcc darkest-hour.c -noixemul -o build/AmigaOS3/darkest-hour
