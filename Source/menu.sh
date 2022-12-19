#!/bin/bash

#AmigaOS3
#build/AmigaOS3/darkest-hour
#AppleII/DarkestHour
#C64/DarkestHour.prg
#CBM-II/DarkestHour.prg
#CommodorePET40columns/DarkestHour.prg
#CommodorePET80columns/DarkestHour.prg
#DOS/DARKHOUR.EXE
#Linux-arm32/darkest-hour
#Linux-arm64/darkest-hour
#Linux-ppc/darkest-hour
#Linux-ppc64/darkest-hour
#Linux-ppc64le/darkest-hour
#Linux-riscv64/darkest-hour
#Linux-s390x/darkest-hour
#Linux-x64/darkest-hour
#Plus4/DarkestHour.prg
#Win32/darkest-hour-win32.exe
#Win64/darkest-hour-win64.exe

function pause(){
        read -p "$*"
}

echo "Darkest Hour: Build or run with qemu or other emulator"
echo
PS3='Please enter your choice: '
options=("Build All" "Run Linux-x32" "Run Linux-x64" "Run Linux-arm32" "Run Linux-arm64" "Run Linux-ppc" "Run Linux-ppc64" "Run Linux-ppc64le" "Run Linux-riscv64" "Run Linux-s390x" "Quit")

select opt in "${options[@]}"
do
  case $opt in
    "Build All")
      make
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
      echo "qemu-ppc64le build/Linux-ppcle/darkest-hour"
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
