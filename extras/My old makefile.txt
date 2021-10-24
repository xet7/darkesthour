linux:
	clear && gcc ./src/darkest-hour.c -o bin/darkest-hour -Wall || exit 1
	./bin/darkest-hour && clear

dos:
	clear && ia16-elf-gcc ./src/darkest-hour.c -o bin/DARKHOUR.EXE -Wall || exit 1

c64:
	clear && cl65 ./src/darkest-hour.c -t c64 -o bin/darkest-hour-C64.prg && rm ./src/*.o && clear || exit 1

pet:
	clear && cl65 ./src/darkest-hour.c -t pet -o bin/darkest-hour-PET.prg && rm ./src/*.o && clear || exit 1

pet80:
	clear && cl65 ./src/darkest-hour.c -t pet -o bin/darkest-hour-PET80.prg && rm ./src/*.o && clear || exit 1

plus4:
	clear && cl65 ./src/darkest-hour.c -t plus4 -o bin/darkest-hour-PLUS4.prg && rm ./src/*.o && clear || exit 1

cbm:
	clear && cl65 ./src/darkest-hour.c -t cbm610 -o bin/darkest-hour-CBM-II.prg && rm ./src/*.o && clear || exit 1

apple2:
	clear && cl65 -t apple2 ./src/darkest-hour.c -o bin/darkest-hour-Apple-II && rm ./src/*.o && clear || exit 1

win32:
	clear && i686-w64-mingw32-gcc -o ./bin/darkest-hour-win32.exe ./src/darkest-hour.c

win64:
	clear && x86_64-w64-mingw32-gcc -o ./bin/darkest-hour-win64.exe ./src/darkest-hour.c
