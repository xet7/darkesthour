#!/bin/bash

if [ -L /usr/local/bin/68k-amigaos-gcc ] ; then
	(sudo apt-get -y install gcc-multilib)
	(sudo cp archive/m68k-amigaos_linux_i386.tar.gz /tmp/)
	(cd /opt && sudo tar zxf /tmp/m68k-amigaos_linux_i386.tar.gz)
	(cd /usr/local/bin && sudo ln -s /opt/m68k-amigaos/bin/*m68k* . && sudo ln -s /opt/m68k-amigaos/bin/v* .)
	(cd /usr/local/bin && sudo ln -s /opt/m68k-amigaos/bin/v* .)
fi
