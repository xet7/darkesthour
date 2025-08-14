#!/bin/bash

#### If crosscompilers and emulators do not exist, add them
#if [ ! -f /usr/bin/ia16-elf-gcc ] ; then

# If apt-get exists
if command -v apt-get &> /dev/null
then
	sudo apt-get update
        sudo apt-get -y install software-properties-common python3-launchpadlib git gitk zip unzip p7zip-full unp wget curl
#gcc-multilib
	sudo add-apt-repository -y ppa:tkchia/build-ia16
	sudo sed -i 's|bookworm|lunar|g' /etc/apt/sources.list.d/tkchia-ubuntu-build-ia16-bookworm.list
	sudo apt-get -y install gcc-ia16-elf build-essential mingw-w64 p7zip-full \
		gcc-arm-linux-gnueabi binutils-arm-linux-gnueabi \
		gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu \
		gcc-s390x-linux-gnu binutils-s390x-linux-gnu \
		gcc-powerpc-linux-gnu binutils-powerpc-linux-gnu \
		gcc-powerpc64-linux-gnu binutils-powerpc64-linux-gnu \
		gcc-powerpc64le-linux-gnu binutils-powerpc64le-linux-gnu \
		gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu \
		gcc-m68k-linux-gnu binutils-m68k-linux-gnu \
		gcc-mips64-linux-gnuabi64 binutils-mips64-linux-gnuabi64 \
		dosbox wine64 qemu-system qemu-user \
		gcc-sparc64-linux-gnu binutils-sparc64-linux-gnu \
		gcc-mips-linux-gnu binutils-mips-linux-gnu \
		gcc-mipsel-linux-gnu binutils-mipsel-linux-gnu \
		gcc-mips64el-linux-gnuabi64 binutils-mips64el-linux-gnuabi64 \
		gcc-mipsisa32r6-linux-gnu binutils-mipsisa32r6-linux-gnu \
		gcc-mipsisa32r6el-linux-gnu binutils-mipsisa32r6el-linux-gnu \
		gcc-mipsisa64r6-linux-gnuabi64 binutils-mipsisa64r6-linux-gnuabi64 \
		gcc-mipsisa64r6el-linux-gnuabi64 binutils-mipsisa64r6el-linux-gnuabi64
fi

#		tree 2>&1 | tee ../../darkest-hour-install-deps-log.txt
#		gcc-sparc64-linux-gnu binutils-sparc64-linux-gnu \   ## Running causes core dump


# If command dnf exists at Fedora
if command -v dnf &> /dev/null
then
  sudo dnf -y install gcc* glibc-devel glibc-headers
  sudo dnf -y groupinstall "Development Tools" "Development Libraries"
fi

#### Build newest cc65 compiler for C64 etc from source
if [ ! -d archive/cc65 ] ; then
	(cd archive && git clone https://github.com/cc65/cc65 && cd cc65 && make)
fi

#### If using old cc65 version:
#if [ ! -d archive/cc65 ] ; then
#	(cd archive && 7z x cc65.7z)
#fi

#### Install Linux i386 to AmigaOS3 crosscompiler
if [ ! -L /usr/local/bin/68k-amigaos-gcc ] ; then
	#(sudo apt-get -y install gcc-multilib)
	(sudo cp archive/m68k-amigaos_linux_i386.tar.gz /tmp/)
	(cd /opt && sudo tar zxf /tmp/m68k-amigaos_linux_i386.tar.gz)
	(cd /usr/local/bin && sudo ln -s /opt/m68k-amigaos/bin/*m68k* . && sudo ln -s /opt/m68k-amigaos/bin/v* .)
	(cd /usr/local/bin && sudo ln -s /opt/m68k-amigaos/bin/v* .)
	(sudo rm /tmp/m68k-amigaos_linux_i386.tar.gz)
fi

# Not needed, because downloading binaries below.
# Clone Cosmopolitan repo
#if [ ! -d ~/repos/cosmopolitan ] ; then
#	(mkdir -p ~/repos && \
#	cd ~/repos && \
#	git clone https://github.com/jart/cosmopolitan)
#fi

# Install Ape
sudo wget -O /usr/bin/ape https://cosmo.zip/pub/cosmos/bin/ape-$(uname -m).elf
sudo chmod +x /usr/bin/ape
sudo sh -c "echo ':APE:M::MZqFpD::/usr/bin/ape:' >/proc/sys/fs/binfmt_misc/register"
sudo sh -c "echo ':APE-jart:M::jartsr::/usr/bin/ape:' >/proc/sys/fs/binfmt_misc/register"
sudo sh -c 'echo -1 > /proc/sys/fs/binfmt_misc/cli'     # remove Ubuntu's MZ interpreter
sudo sh -c 'echo -1 > /proc/sys/fs/binfmt_misc/status'  # remove ALL binfmt_misc entries

# Install CosmoCC
if [ ! -d ~/cosmo ] ; then
	(mkdir -p ~/cosmo && \
	cd ~/cosmo && \
	wget https://cosmo.zip/pub/cosmocc/cosmocc.zip && \
	wget https://cosmo.zip/pub/cosmos/zip/cosmos.zip && \
	wget https://cosmo.zip/pub/cosmos/zip/web.zip && \
	unzip -o -f -u cosmocc.zip && \
	unzip -o -f -u cosmos.zip && \
	unzip -o -f -u web.zip)
fi
