#!/bin/bash

if [ ! -f /usr/bin/ia16-elf-gcc ] ; then
	sudo add-apt-repository -y ppa:tkchia/build-ia16
	sudo apt-get update
	sudo apt-get -y install gcc-ia16-elf build-essential mingw-w64 p7zip-full \
		gcc-arm-linux-gnueabi binutils-arm-linux-gnueabi \
		gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu \
		gcc-s390x-linux-gnu binutils-s390x-linux-gnu \
		gcc-powerpc-linux-gnu binutils-powerpc-linux-gnu \
		gcc-powerpc64-linux-gnu binutils-powerpc64-linux-gnu \
		gcc-powerpc64le-linux-gnu binutils-powerpc64le-linux-gnu \
		gcc-riscv32-linux-gnu binutils-riscv32-linux-gnu \
		gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu \
		gcc-m68k-linux-gnu binutils-m68k-linux-gnu \
		dosbox wine32 wine64 qemu-system qemu-user
fi

#### Build newest cc65 from source
if [ ! -d archive/cc65 ] ; then
	(cd archive && git clone https://github.com/cc65/cc65 && cd cc65 && make)
fi

#### If using old cc65 version:
#if [ ! -d archive/cc65 ] ; then
#	(cd archive && 7z x cc65.7z)
#fi

if [ -L /usr/local/bin/68k-amigaos-gcc ] ; then
	(sudo apt-get -y install gcc-multilib)
	(sudo cp archive/m68k-amigaos_linux_i386.tar.gz /tmp/)
	(cd /opt && sudo tar zxf /tmp/m68k-amigaos_linux_i386.tar.gz)
	(cd /usr/local/bin && sudo ln -s /opt/m68k-amigaos/bin/*m68k* . && sudo ln -s /opt/m68k-amigaos/bin/v* .)
	(cd /usr/local/bin && sudo ln -s /opt/m68k-amigaos/bin/v* .)
	(sudo rm /tmp/m68k-amigaos_linux_i386.tar.gz)
fi
