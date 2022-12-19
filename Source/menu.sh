#!/bin/bash

#AmigaOS3
#build/AmigaOS3/darkest-hour
#AppleII/DarkestHour
#C64/DarkestHour.prg
#CBM-II/DarkestHour.prg
#CommodorePET40columns/DarkestHour.prg
#CommodorePET80columns/DarkestHour.prg
#DOS/DARKHOUR.EXE
#Plus4/DarkestHour.prg

function pause(){
        read -p "$*"
}

echo "Darkest Hour: Build or run with dosbox/wine/qemu"
echo
PS3='Please enter your choice: '
options=("List filetypes of built executeables" "Build All" "Build AmigaOS3" "Build AppleII" "Build CBM-II" "Build C64" "Build DOS" "Build Plus4" "Build CommodorePET40columns" "Build CommodorePET80columns" "Build Plus4" "Build Linux-x32" "Build Linux-x64" "Build Linux-arm32" "Build Linux-arm64" "Build Linux-m68k" "Build Linux-riscv64" "Build Linux-ppc" "Build Linux-ppc64" "Build Linux-ppc64le" "Run DOS" "Run Win32" "Run Win64" "Run Linux-x32" "Run Linux-x64" "Run Linux-arm32" "Run Linux-arm64" "Run Linux-m68k" "Run Linux-ppc" "Run Linux-ppc64" "Run Linux-ppc64le" "Run Linux-riscv64" "Run Linux-s390x" "Quit")

select opt in "${options[@]}"
do
  case $opt in
    "List filetypes of built exe file")
      echo "file build/*/*"
      file build/*/*
      break
      ;;
    "Build All")
      make
      break
      ;;
   "Build AmigaOS3")
      make deps
      make amigaos3
      break
      ;;
   "Build AppleII")
      make deps
      make apple2
      break
      ;;
   "Build C64")
      make deps
      make c64
      break
      ;;
    "Build CBM-II")
      make deps
      make cbm
      break
      ;;
    "Build CommodorePET40columns")
      make deps
      make pet40
      break
      ;;
    "Build CommodorePET80columns")
      make deps
      make pet80
      break
      ;;
    "Build DOS")
      make deps
      make dos
      break
      ;;
    "Build Plus4")
      make deps
      make plus4
      break
      ;;
    "Build Linux-x32")
      make deps
      make linux-x32
      break
      ;;
   "Build Linux-x64")
      make deps
      make linux-x64
      break
      ;;
    "Build Linux-arm32")
      make deps
      make linux-arm32
      break
      ;;
    "Build Linux-arm64")
      make deps
      make linux-arm64
      break
      ;;
    "Build Linux-m68k")
      make deps
      make linux-m68k
      break
      ;;
    "Build Linux-riscv64")
      make deps
      make linux-riscv64
      break
      ;;
    "Build Linux-ppc")
      make deps
      make linux-ppc
      break
      ;;
    "Build Linux-ppc64")
      make deps
      make linux-ppc64
      break
      ;;
    "Build Linux-ppc64le")
      make deps
      make linux-ppc64le
      break
      ;;
    "Run DOS")
      echo "dosbox ./build/DOS/DARKHOUR.EXE"
      dosbox ./build/DOS/DARKHOUR.EXE
      break
      ;;
    "Run Win32")
      echo "wine ./build/Win32/darkest-hour-win32.exe"
      wine ./build/Win32/darkest-hour-win32.exe
      break
      ;;
    "Run Win64")
      echo "wine ./build/Win64/darkest-hour-win64.exe"
      wine ./build/Win64/darkest-hour-win64.exe
      break
      ;;
    "Run Linux-x32")
      echo "qemu-i386 ./build/Linux-x32/darkest-hour"
      qemu-i386 ./build/Linux-x32/darkest-hour
      break
      ;;
    "Run Linux-x64")
      echo "qemu-x86_64 ./build/Linux-x64/darkest-hour"
      qemu-x86_64 ./build/Linux-x64/darkest-hour
      break
      ;;
    "Run Linux-arm32")
      echo "qemu-arm build/Linux-arm32/darkest-hour"
      qemu-arm build/Linux-arm32/darkest-hour
      break
      ;;
    "Run Linux-arm64")
      echo "qemu-aarch64 build/Linux-arm64/darkest-hour"
      qemu-aarch64 build/Linux-arm64/darkest-hour
      break
      ;;
   "Run Linux-m68k")
      echo "qemu-m68k build/Linux-m68k/darkest-hour"
      qemu-m68k build/Linux-m68k/darkest-hour
      break
      ;;
    "Run Linux-ppc")
      echo "qemu-ppc build/Linux-ppc/darkest-hour"
      qemu-ppc build/Linux-ppc/darkest-hour
      break
      ;;
    "Run Linux-ppc64")
      echo "qemu-ppc64 build/Linux-ppc64/darkest-hour"
      qemu-ppc64 build/Linux-ppc64/darkest-hour
      break
      ;;
    "Run Linux-ppc64le")
      echo "qemu-ppc64le build/Linux-ppc64le/darkest-hour"
      qemu-ppc64le build/Linux-ppc64le/darkest-hour
      break
      ;;
    "Run Linux-riscv64")
      echo "qemu-riscv64 build/Linux-riscv64/darkest-hour"
      qemu-riscv64 build/Linux-riscv64/darkest-hour
      break
      ;;
    "Run Linux-s390x")
      echo "qemu-s390x build/Linux-s390x/darkest-hour"
      qemu-s390x build/Linux-s390x/darkest-hour
      break
      ;;
    "Quit")
      break
      ;;
    *) echo invalid option;;
    esac
done
