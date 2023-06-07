FROM --platform=linux/amd64 ubuntu:22.04 as build
LABEL maintainer="xet7"

ARG DEBIAN_FRONTEND=noninteractive

RUN \
    set -o xtrace && \
    apt-get update && \
    useradd --user-group --system --home-dir /home/wekan wekan && \
    apt-get -y install apt-utils libarchive-tools ca-certificates wget curl bzip2 g++ build-essential git python3 software-properties-common && \
    add-apt-repository -y ppa:tkchia/build-ia16 && \
    apt-get update && \
    apt-get -y install gcc-ia16-elf build-essential mingw-w64 p7zip-full \
    gcc-arm-linux-gnueabi binutils-arm-linux-gnueabi \
    gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu \
    gcc-s390x-linux-gnu binutils-s390x-linux-gnu \
    gcc-powerpc-linux-gnu binutils-powerpc-linux-gnu \
    gcc-powerpc64-linux-gnu binutils-powerpc64-linux-gnu \
    gcc-powerpc64le-linux-gnu binutils-powerpc64le-linux-gnu \
    gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu \
    gcc-m68k-linux-gnu binutils-m68k-linux-gnu \
    gcc-mips64-linux-gnuabi64 binutils-mips64-linux-gnuabi64 \
    dosbox wine64 qemu-system qemu-user && \
    mkdir -p /home/wekan && \
    chown wekan --recursive /home/wekan && \
    # 2>&1 | tee log.txt
    #gcc-sparc64-linux-gnu binutils-sparc64-linux-gnu \   ## Running causes core dump
    #gcc-mips-linux-gnu binutils-mips-linux-gnu \
    #gcc-mipsel-linux-gnu binutils-mipsel-linux-gnu \
    #gcc-mips64el-linux-gnuabi64 binutils-mips64el-linux-gnuabi64 \
    #gcc-mipsisa32r6-linux-gnu binutils-mipsisa32r6-linux-gnu \
    #gcc-mipsisa32r6el-linux-gnu binutils-mipsisa32r6el-linux-gnu \
    #gcc-mipsisa64r6-linux-gnuabi64 binutils-mipsisa64r6-linux-gnuabi64 \
    #gcc-mipsisa64r6el-linux-gnuabi64 binutils-mipsisa64r6el-linux-gnuabi64 \
    #gcc-linux-gnuabi64 binutils-mips64el-linux-gnuabi64 \
    #
    #### Build newest cc65 compiler for C64 etc from source
    #if [ ! -d archive/cc65 ] ; then
    (cd archive && git clone https://github.com/cc65/cc65 && cd cc65 && make) && \
    #fi
    #### If using old cc65 version:
    #if [ ! -d archive/cc65 ] ; then
    #  (cd archive && 7z x cc65.7z)
    #fi
    #### Install Linux i386 to AmigaOS3 crosscompiler
    #if [ -L /usr/local/bin/68k-amigaos-gcc ] ; then
    (sudo apt-get -y install gcc-multilib) && \
    (sudo cp archive/m68k-amigaos_linux_i386.tar.gz /tmp/) && \
    (cd /opt && sudo tar zxf /tmp/m68k-amigaos_linux_i386.tar.gz) && \
    (cd /usr/local/bin && sudo ln -s /opt/m68k-amigaos/bin/*m68k* . && sudo ln -s /opt/m68k-amigaos/bin/v* .) && \
    (cd /usr/local/bin && sudo ln -s /opt/m68k-amigaos/bin/v* .) && \
    (sudo rm /tmp/m68k-amigaos_linux_i386.tar.gz)

USER wekan

STOPSIGNAL SIGKILL

CMD ["bash", "-c", "ulimit -s 65500; exec sleep infinity"]
