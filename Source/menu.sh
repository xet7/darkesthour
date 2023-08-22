#!/bin/bash

#====== SETTINGS START =======

# Read settings for filenames from settings.sh
source settings.sh

#====== SETTINGS END =======

function pause(){
        read -p "$*"
}

#"Build Linux-mips" "Build Linux-mipsel" "Build Linux-mips64" "Build Linux-mips64el" \

#No qemu-user:  "Run Linux-mipsisa32r6" "Run Linux-mipsisa32r6el" \

echo "$NAMESPACE: Build or run with dosbox/wine/qemu"
echo
PS3='Please enter your choice: '
options=("List filetypes of built executeables" "Build All" \
"Build Cosmopolitan" "Build AmigaOS3" \
"Build AppleII" "Build CBM-II" "Build C64" \
"Build DOS" "Build Win32" "Build Win64" "Build Plus4" \
"Build CommodorePET40columns" "Build CommodorePET80columns" \
"Build Plus4" "Build NetBSD" "Build OpenBSD" "Build Haiku" "Build Linux-x32" \
"Build Linux-x64" "Build Linux-arm32" "Build Linux-arm64" "Build Linux-m68k" \
"Build Linux-ppc" "Build Linux-ppc64" "Build Linux-ppc64le" \
"Build Linux-mips" "Build Linux-mipsel" "Build Linux-mips64" "Build Linux-mips64el" \
"Build Linux-mipsisa32r6" "Build Linux-mipsisa32r6el" \
"Build Linux-riscv64" "Build Linux-s390x" "Build Linux-sparc64" \
"Run Cosmopolitan" "Run DOS" "Run Win32" "Run Win64" "Run Linux-x32" "Run Linux-x64" \
"Run Linux-arm32" "Run Linux-arm64" "Run Linux-m68k" \
"Run Linux-mips" "Run Linux-mipsel" "Run Linux-mips64" "Run Linux-mips64el" \
"Run Linux-ppc" "Run Linux-ppc64" "Run Linux-ppc64le" \
"Run Linux-riscv64" "Run Linux-s390x" "Run Linux-sparc64" "Quit")

## Not working:
## "Build Linux-sparc64" builds but "Run Linux-sparc64" gives core dump

select opt in "${options[@]}"
do
  case $opt in
    "List filetypes of built executeables")
      echo "file build/*/*"
      file build/*/*
      break
      ;;
   "Build All")
      #mkdir -p build/Cosmopolitan build/NetBSD build/OpenBSD build/Haiku build/AmigaOS3
      # $NAMEMINUS-cosmo.c had one line difference: below of #include <stdio.h> is
      # added new line: #include <cosmo.h>
      echo cosmocc -o build/Cosmopolitan/$NAMEMINUS-cosmo.com $NAMEMINUS-cosmo.c
      cosmocc -o build/Cosmopolitan/$NAMEMINUS-cosmo.com $NAMEMINUS-cosmo.c
      echo m68k-amigaos-gcc $NAMEMINUS.c -noixemul -o build/AmigaOS3/$NAMEMINUS
      m68k-amigaos-gcc $NAMEMINUS.c -noixemul -o build/AmigaOS3/$NAMEMINUS
      mkdir -p build/AppleII
      echo ./archive/cc65/bin/cl65 -t apple2 ./$NAMEMINUS.c -o build/AppleII/$NAMECAMELCASE
      ./archive/cc65/bin/cl65 -t apple2 ./$NAMEMINUS.c -o build/AppleII/$NAMECAMELCASE
      mkdir -p build/C64
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t c64 -o build/C64/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t c64 -o build/C64/$NAMECAMELCASE.prg
      mkdir -p build/CBM-II
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t cbm610 -o build/CBM-II/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t cbm610 -o build/CBM-II/$NAMECAMELCASE.prg
      mkdir -p build/CommodorePET40columns
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET40columns/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET40columns/$NAMECAMELCASE.prg
      mkdir -p build/CommodorePET80columns
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET80columns/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET80columns/$NAMECAMELCASE.prg
      mkdir -p build/DOS
      echo ia16-elf-gcc ./$NAMEMINUS.c -o build/DOS/$NAMEDOS.EXE -Wall
      ia16-elf-gcc ./$NAMEMINUS.c -o build/DOS/$NAMEDOS.EXE -Wall
      mkdir -p build/Win32
      echo i686-w64-mingw32-gcc -o ./build/Win32/$NAMEMINUS-win32.exe ./$NAMEMINUS.c
      i686-w64-mingw32-gcc -o ./build/Win32/$NAMEMINUS-win32.exe ./$NAMEMINUS.c
      mkdir -p build/Win64
      echo x86_64-w64-mingw32-gcc -o ./build/Win64/$NAMEMINUS-win64.exe ./$NAMEMINUS.c
      x86_64-w64-mingw32-gcc -o ./build/Win64/$NAMEMINUS-win64.exe ./$NAMEMINUS.c
      mkdir -p build/Plus4
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t plus4 -o build/Plus4/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t plus4 -o build/Plus4/$NAMECAMELCASE.prg
      mkdir -p build/Linux-x32
      echo gcc -m32 $NAMEMINUS.c -o build/Linux-x32/$NAMEMINUS -Wall -static
      gcc -m32 $NAMEMINUS.c -o build/Linux-x32/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-x64
      echo gcc $NAMEMINUS.c -o build/Linux-x64/$NAMEMINUS -Wall -static
      gcc $NAMEMINUS.c -o build/Linux-x64/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-arm32
      echo arm-linux-gnueabi-gcc $NAMEMINUS.c -o build/Linux-arm32/$NAMEMINUS -Wall -static
      arm-linux-gnueabi-gcc $NAMEMINUS.c -o build/Linux-arm32/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-arm64
      echo aarch64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-arm64/$NAMEMINUS -Wall -static
      aarch64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-arm64/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-m68k
      echo m68k-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-m68k/$NAMEMINUS -Wall -static
      m68k-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-m68k/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-mips
      echo mips-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mips/$NAMEMINUS -Wall -static
      mips-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mips/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-mipsel
      echo mipsel-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsel/$NAMEMINUS -Wall -static
      mipsel-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsel/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-mips64
      echo mips64-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64/$NAMEMINUS -Wall -static
      mips64-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-mips64el
      echo mips64el-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64el/$NAMEMINUS -Wall -static
      mips64el-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64el/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-mipsisa32r6
      echo mipsisa32r6-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsisa32r6/$NAMEMINUS -Wall -static
      mipsisa32r6-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsisa32r6/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-mipsisa32r6el
      echo mipsisa32r6el-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsisa32r6el/$NAMEMINUS -Wall -static
      mipsisa32r6el-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsisa32r6el/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-ppc
      echo powerpc-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc/$NAMEMINUS -Wall -static
      powerpc-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-ppc64
      echo powerpc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc64/$NAMEMINUS -Wall -static
      powerpc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc64/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-ppc64le
      echo powerpc64le-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc64le/$NAMEMINUS -Wall -static
      powerpc64le-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc64le/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-riscv64
      echo riscv64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-riscv64/$NAMEMINUS -Wall -static
      riscv64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-riscv64/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-s390x
      echo s390x-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-s390x/$NAMEMINUS -Wall -static
      s390x-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-s390x/$NAMEMINUS -Wall -static
      mkdir -p build/Linux-sparc64
      echo sparc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-sparc64/$NAMEMINUS -Wall -static
      sparc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-sparc64/$NAMEMINUS -Wall -static
      break
      ;;
   "Build Cosmopolitan")
      mkdir -p build/Cosmopolitan
      # $NAMEMINUS-cosmo.c had one line difference: below of #include <stdio.h> is
      # added new line: #include <cosmo.h>
      echo cosmocc -o build/Cosmopolitan/$NAMEMINUS-cosmo.com $NAMEMINUS-cosmo.c
      cosmocc -o build/Cosmopolitan/$NAMEMINUS-cosmo.com $NAMEMINUS-cosmo.c
      break
      ;;
   "Build AmigaOS3")
      mkdir -p build/AmigaOS3
      echo m68k-amigaos-gcc $NAMEMINUS.c -noixemul -o build/AmigaOS3/$NAMEMINUS
      m68k-amigaos-gcc $NAMEMINUS.c -noixemul -o build/AmigaOS3/$NAMEMINUS
      break
      ;;
   "Build AppleII")
      mkdir -p build/AppleII
      echo ./archive/cc65/bin/cl65 -t apple2 ./$NAMEMINUS.c -o build/AppleII/$NAMECAMELCASE
      ./archive/cc65/bin/cl65 -t apple2 ./$NAMEMINUS.c -o build/AppleII/$NAMECAMELCASE
      break
      ;;
   "Build C64")
      mkdir -p build/C64
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t c64 -o build/C64/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t c64 -o build/C64/$NAMECAMELCASE.prg
      break
      ;;
    "Build CBM-II")
      mkdir -p build/CBM-II
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t cbm610 -o build/CBM-II/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t cbm610 -o build/CBM-II/$NAMECAMELCASE.prg
      break
      ;;
    "Build CommodorePET40columns")
      mkdir -p build/CommodorePET40columns
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET40columns/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET40columns/$NAMECAMELCASE.prg
      break
      ;;
    "Build CommodorePET80columns")
      mkdir -p build/CommodorePET80columns
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET80columns/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET80columns/$NAMECAMELCASE.prg
      break
      ;;
    "Build DOS")
      mkdir -p build/DOS
      echo ia16-elf-gcc ./$NAMEMINUS.c -o build/DOS/$NAMEDOS.EXE -Wall
      ia16-elf-gcc ./$NAMEMINUS.c -o build/DOS/$NAMEDOS.EXE -Wall
      break
      ;;
    "Build Win32")
      mkdir -p build/Win32
      echo i686-w64-mingw32-gcc -o ./build/Win32/$NAMEMINUS-win32.exe ./$NAMEMINUS.c
      i686-w64-mingw32-gcc -o ./build/Win32/$NAMEMINUS-win32.exe ./$NAMEMINUS.c
      break
      ;;
    "Build Win64")
      mkdir -p build/Win64
      echo x86_64-w64-mingw32-gcc -o ./build/Win64/$NAMEMINUS-win64.exe ./$NAMEMINUS.c
      x86_64-w64-mingw32-gcc -o ./build/Win64/$NAMEMINUS-win64.exe ./$NAMEMINUS.c
      break
      ;;
    "Build Plus4")
      mkdir -p build/Plus4
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t plus4 -o build/Plus4/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t plus4 -o build/Plus4/$NAMECAMELCASE.prg
      break
      ;;
    "Build NetBSD")
      mkdir -p build/NetBSD
      echo "Build for NetBSD at NetBSD:"
      echo gcc $NAMEMINUS.c -o build/NetBSD/$NAMEMINUS -Wall -static
      gcc $NAMEMINUS.c -o build/NetBSD/$NAMEMINUS -Wall -static
      break
      ;;
    "Build OpenBSD")
      mkdir -p build/OpenBSD
      echo Build for OpenBSD at OpenBSD:
      echo egcc $NAMEMINUS.c -o build/OpenBSD/$NAMEMINUS -Wall -static
      egcc $NAMEMINUS.c -o build/OpenBSD/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Haiku")
      echo Build for Haiku at Haiku:
      echo gcc $NAMEMINUS.c -o build/Haiku/$NAMEMINUS -Wall -static
      gcc $NAMEMINUS.c -o build/Haiku/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-x32")
      mkdir -p build/Linux-x32
      echo gcc -m32 $NAMEMINUS.c -o build/Linux-x32/$NAMEMINUS -Wall -static
      gcc -m32 $NAMEMINUS.c -o build/Linux-x32/$NAMEMINUS -Wall -static
      break
      ;;
   "Build Linux-x64")
      mkdir -p build/Linux-x64
      echo gcc $NAMEMINUS.c -o build/Linux-x64/$NAMEMINUS -Wall -static
      gcc $NAMEMINUS.c -o build/Linux-x64/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-arm32")
      mkdir -p build/Linux-arm32
      echo arm-linux-gnueabi-gcc $NAMEMINUS.c -o build/Linux-arm32/$NAMEMINUS -Wall -static
      arm-linux-gnueabi-gcc $NAMEMINUS.c -o build/Linux-arm32/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-arm64")
      mkdir -p build/Linux-arm64
      echo aarch64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-arm64/$NAMEMINUS -Wall -static
      aarch64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-arm64/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-m68k")
      mkdir -p build/Linux-m68k
      echo m68k-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-m68k/$NAMEMINUS -Wall -static
      m68k-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-m68k/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-mips")
      mkdir -p build/Linux-mips
      echo mips-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mips/$NAMEMINUS -Wall -static
      mips-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mips/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-mipsel")
      mkdir -p build/Linux-mipsel
      echo mipsel-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsel/$NAMEMINUS -Wall -static
      mipsel-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsel/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-mips64")
      mkdir -p build/Linux-mips64
      echo mips64-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64/$NAMEMINUS -Wall -static
      mips64-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-mips64el")
      mkdir -p build/Linux-mips64el
      echo mips64el-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64el/$NAMEMINUS -Wall -static
      mips64el-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64el/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-mipsisa32r6")
      mkdir -p build/Linux-mipsisa32r6
      echo mipsisa32r6-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsisa32r6/$NAMEMINUS -Wall -static
      mipsisa32r6-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsisa32r6/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-mipsisa32r6el")
      mkdir -p build/Linux-mipsisa32r6el
      echo mipsisa32r6el-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsisa32r6el/$NAMEMINUS -Wall -static
      mipsisa32r6el-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsisa32r6el/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-ppc")
      mkdir -p build/Linux-ppc
      echo powerpc-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc/$NAMEMINUS -Wall -static
      powerpc-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-ppc64")
      mkdir -p build/Linux-ppc64
      echo powerpc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc64/$NAMEMINUS -Wall -static
      powerpc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc64/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-ppc64le")
      mkdir -p build/Linux-ppc64le
      echo powerpc64le-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc64le/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-riscv64")
      mkdir -p build/Linux-riscv64
      echo riscv64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-riscv64/$NAMEMINUS -Wall -static
      riscv64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-riscv64/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-sparc64")
      mkdir -p build/Linux-sparc64
      echo sparc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-sparc64/$NAMEMINUS -Wall -static
      sparc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-sparc64/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-s390x")
      mkdir -p build/Linux-s390x
      echo s390x-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-s390x/$NAMEMINUS -Wall -static
      s390x-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-s390x/$NAMEMINUS -Wall -static
      break
      ;;
    "Run Cosmopolitan")
     echo "./build/Cosmopolitan/$NAMEMINUS-cosmo.com"
     ./build/Cosmopolitan/$NAMEMINUS-cosmo.com
     break
     ;;
    "Run DOS")
      echo "dosbox ./build/DOS/$NAMEDOS.EXE"
      dosbox ./build/DOS/$NAMEDOS.EXE
      break
      ;;
    "Run Win32")
      echo "wine ./build/Win32/$NAMEMINUS-win32.exe"
      wine ./build/Win32/$NAMEMINUS-win32.exe
      break
      ;;
    "Run Win64")
      echo "wine ./build/Win64/$NAMEMINUS-win64.exe"
      wine ./build/Win64/$NAMEMINUS-win64.exe
      break
      ;;
    "Run Linux-x32")
      echo "qemu-i386 ./build/Linux-x32/$NAMEMINUS"
      qemu-i386 ./build/Linux-x32/$NAMEMINUS
      break
      ;;
    "Run Linux-x64")
      echo "qemu-x86_64 ./build/Linux-x64/$NAMEMINUS"
      qemu-x86_64 ./build/Linux-x64/$NAMEMINUS
      break
      ;;
    "Run Linux-arm32")
      echo "qemu-arm build/Linux-arm32/$NAMEMINUS"
      qemu-arm build/Linux-arm32/$NAMEMINUS
      break
      ;;
    "Run Linux-arm64")
      echo "qemu-aarch64 build/Linux-arm64/$NAMEMINUS"
      qemu-aarch64 build/Linux-arm64/$NAMEMINUS
      break
      ;;
   "Run Linux-m68k")
      echo "qemu-m68k build/Linux-m68k/$NAMEMINUS"
      qemu-m68k build/Linux-m68k/$NAMEMINUS
      break
      ;;
   "Run Linux-mips")
      echo "qemu-mips build/Linux-mips/$NAMEMINUS"
      qemu-mips build/Linux-mips/$NAMEMINUS
      break
      ;;
   "Run Linux-mipsel")
      echo "qemu-mipsel build/Linux-mipsel/$NAMEMINUS"
      qemu-mipsel build/Linux-mipsel/$NAMEMINUS
      break
      ;;
   "Run Linux-mips64")
      echo "qemu-mips64 build/Linux-mips64/$NAMEMINUS"
      qemu-mips64 build/Linux-mips64/$NAMEMINUS
      break
      ;;
   "Run Linux-mips64el")
      echo "qemu-mips64el build/Linux-mips64el/$NAMEMINUS"
      qemu-mips64el build/Linux-mips64el/$NAMEMINUS
      break
      ;;
   "Run Linux-mipsisa32r6")
      echo "qemu-mipsisa32r6 build/Linux-mipsisa32r6/$NAMEMINUS"
      qemu-mipsisa32r6 build/Linux-mipsisa32r6/$NAMEMINUS
      break
      ;;
    "Run Linux-ppc")
      echo "qemu-ppc build/Linux-ppc/$NAMEMINUS"
      qemu-ppc build/Linux-ppc/$NAMEMINUS
      break
      ;;
    "Run Linux-ppc64")
      echo "qemu-ppc64 build/Linux-ppc64/$NAMEMINUS"
      qemu-ppc64 build/Linux-ppc64/$NAMEMINUS
      break
      ;;
    "Run Linux-ppc64le")
      echo "qemu-ppc64le build/Linux-ppc64le/$NAMEMINUS"
      qemu-ppc64le build/Linux-ppc64le/$NAMEMINUS
      break
      ;;
    "Run Linux-riscv64")
      echo "qemu-riscv64 build/Linux-riscv64/$NAMEMINUS"
      qemu-riscv64 build/Linux-riscv64/$NAMEMINUS
      break
      ;;
    "Run Linux-s390x")
      echo "qemu-s390x build/Linux-s390x/$NAMEMINUS"
      qemu-s390x build/Linux-s390x/$NAMEMINUS
      break
      ;;
    "Run Linux-sparc64")
      echo "qemu-sparc64 build/Linux-sparc64/$NAMEMINUS"
      qemu-sparc64 build/Linux-sparc64/$NAMEMINUS
      break
      ;;
    "Quit")
      break
      ;;
    *) echo invalid option;;
    esac
done
