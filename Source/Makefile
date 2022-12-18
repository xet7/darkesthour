.PHONY: all

all: linux dos c64 pet pet80 plus4 cbm apple2 win32 win64 amigaos3

deps:
	sudo add-apt-repository -y ppa:tkchia/build-ia16
	sudo apt-get update
	sudo apt-get -y install gcc-ia16-elf build-essential mingw-w64

linux:
	@mkdir -p build/Linux-x64
	gcc darkest-hour.c -o build/Linux-x64/darkest-hour -Wall

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
	@./install-amiga.sh
	m68k-amigaos-gcc darkest-hour.c -noixemul -o build/AmigaOS3/darkest-hour
