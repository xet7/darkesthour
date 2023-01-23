#!/bin/bash

#====== SETTINGS START =======

# Read settings for filenames from settings.sh
source settings.sh

#====== SETTINGS END =======

function pause(){
        read -p "$*"
}

echo "$NAMESPACE: Build or run with dosbox/wine/qemu"
echo
PS3='Please enter your choice: '
options=("List filetypes of built executeables" "Build All" "Build AmigaOS3" "Build AppleII" "Build CBM-II" "Build C64" \
"Build DOS" "Build Plus4" "Build CommodorePET40columns" "Build CommodorePET80columns" "Build Plus4" "Build Linux-x32" \
"Build Linux-x64" "Build Linux-arm32" "Build Linux-arm64" \
"Build Linux-mips" "Build Linux-mipsel" "Build Linux-mips64" "Build Linux-mips64el" \
"Build Linux-m68k" "Build Linux-ppc" \
"Build Linux-ppc64" "Build Linux-ppc64le" "Build Linux-riscv64" "Build Linux-s390x" \
"Run DOS" "Run Win32" "Run Win64" "Run Linux-x32" "Run Linux-x64" \
"Run Linux-arm32" "Run Linux-arm64" \
"Run Linux-m68k" "Run Linux-mips" "Run Linux-mipsel" "Run Linux-mips64" "Run Linux-mips64el" \
"Run Linux-ppc" "Run Linux-ppc64" "Run Linux-ppc64le" "Run Linux-riscv64" \
"Run Linux-s390x" "Quit")

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
      ./deps.sh
      mkdir -p build/AmigaOS3
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
      break
      ;;
   "Build AmigaOS3")
      ./deps.sh
      mkdir -p build/AmigaOS3
      echo m68k-amigaos-gcc $NAMEMINUS.c -noixemul -o build/AmigaOS3/$NAMEMINUS
      m68k-amigaos-gcc $NAMEMINUS.c -noixemul -o build/AmigaOS3/$NAMEMINUS
      break
      ;;
   "Build AppleII")
      ./deps.sh
      mkdir -p build/AppleII
      echo ./archive/cc65/bin/cl65 -t apple2 ./$NAMEMINUS.c -o build/AppleII/$NAMECAMELCASE
      ./archive/cc65/bin/cl65 -t apple2 ./$NAMEMINUS.c -o build/AppleII/$NAMECAMELCASE
      break
      ;;
   "Build C64")
      ./deps.sh
      mkdir -p build/C64
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t c64 -o build/C64/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t c64 -o build/C64/$NAMECAMELCASE.prg
      break
      ;;
    "Build CBM-II")
      ./deps.sh
      mkdir -p build/CBM-II
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t cbm610 -o build/CBM-II/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t cbm610 -o build/CBM-II/$NAMECAMELCASE.prg
      break
      ;;
    "Build CommodorePET40columns")
      ./deps.sh
      mkdir -p build/CommodorePET40columns
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET40columns/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET40columns/$NAMECAMELCASE.prg
      break
      ;;
    "Build CommodorePET80columns")
      ./deps.sh
      mkdir -p build/CommodorePET80columns
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET80columns/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t pet -o build/CommodorePET80columns/$NAMECAMELCASE.prg
      break
      ;;
    "Build DOS")
      ./deps.sh
      mkdir -p build/DOS
      echo ia16-elf-gcc ./$NAMEMINUS.c -o build/DOS/$NAMEDOS.EXE -Wall
      ia16-elf-gcc ./$NAMEMINUS.c -o build/DOS/$NAMEDOS.EXE -Wall
      break
      ;;
    "Build Plus4")
      ./deps.sh
      mkdir -p build/Plus4
      echo ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t plus4 -o build/Plus4/$NAMECAMELCASE.prg
      ./archive/cc65/bin/cl65 ./$NAMEMINUS.c -t plus4 -o build/Plus4/$NAMECAMELCASE.prg
      break
      ;;
    "Build Linux-x32")
      ./deps.sh
      mkdir -p build/Linux-x32
      echo gcc -m32 $NAMEMINUS.c -o build/Linux-x32/$NAMEMINUS -Wall -static
      gcc -m32 $NAMEMINUS.c -o build/Linux-x32/$NAMEMINUS -Wall -static
      break
      ;;
   "Build Linux-x64")
      ./deps.sh
      mkdir -p build/Linux-x64
      echo gcc $NAMEMINUS.c -o build/Linux-x64/$NAMEMINUS -Wall -static
      gcc $NAMEMINUS.c -o build/Linux-x64/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-arm32")
      ./deps.sh
      mkdir -p build/Linux-arm32
      echo arm-linux-gnueabi-gcc $NAMEMINUS.c -o build/Linux-arm32/$NAMEMINUS -Wall -static
      arm-linux-gnueabi-gcc $NAMEMINUS.c -o build/Linux-arm32/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-arm64")
      ./deps.sh
      mkdir -p build/Linux-arm64
      echo aarch64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-arm64/$NAMEMINUS -Wall -static
      aarch64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-arm64/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-m68k")
      ./deps.sh
      mkdir -p build/Linux-m68k
      echo m68k-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-m68k/$NAMEMINUS -Wall -static
      m68k-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-m68k/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-mips")
      ./deps.sh
      mkdir -p build/Linux-mips
      echo mips-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mips/$NAMEMINUS -Wall -static
      mips-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mips/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-mipsel")
      ./deps.sh
      mkdir -p build/Linux-mipsel
      echo mipsel-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsel/$NAMEMINUS -Wall -static
      mipsel-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-mipsel/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-mips64")
      ./deps.sh
      mkdir -p build/Linux-mips64
      echo mips64-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64/$NAMEMINUS -Wall -static
      mips64-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-mips64el")
      ./deps.sh
      mkdir -p build/Linux-mips64el
      echo mips64el-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64el/$NAMEMINUS -Wall -static
      mips64el-linux-gnuabi64-gcc $NAMEMINUS.c -o build/Linux-mips64el/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-ppc")
      ./deps.sh
      mkdir -p build/Linux-ppc
      echo powerpc-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc/$NAMEMINUS -Wall -static
      powerpc-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-ppc64")
      ./deps.sh
      mkdir -p build/Linux-ppc64
      echo powerpc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc64/$NAMEMINUS -Wall -static
      powerpc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc64/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-ppc64le")
      ./deps.sh
      mkdir -p build/Linux-ppc64le
      echo powerpc64le-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-ppc64le/$NAMEMINUS -Wall -static
      break
      ;;
    "Build Linux-riscv64")
      ./deps.sh
      mkdir -p build/Linux-riscv64
      echo riscv64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-riscv64/$NAMEMINUS -Wall -static
      riscv64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-riscv64/$NAMEMINUS -Wall -static
      break
      ;;
#    "Build Linux-sparc64")
#      ./deps.sh
#      mkdir -p build/Linux-sparc64
#      echo sparc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-sparc64/$NAMEMINUS -Wall -static
#      sparc64-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-sparc64/$NAMEMINUS -Wall -static
#      break
#      ;;
    "Build Linux-s390x")
      ./deps.sh
      mkdir -p build/Linux-s390x
      echo s390x-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-s390x/$NAMEMINUS -Wall -static
      s390x-linux-gnu-gcc $NAMEMINUS.c -o build/Linux-s390x/$NAMEMINUS -Wall -static
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
