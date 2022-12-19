# Darkest Hour

## Overview

This is an old-fashioned text adventure game, hopefully the first of many.

Game made by GeekOnSkates: http://www.geekonskates.com/games/

Blogpost with screenshots: https://lunduke.substack.com/p/new-spooky-multi-retro-platform-text

## Story

Halloween is almost here, but something is happening that's much scarier than the annual haunted house at the fire hall.
 There are rumors of a vampire - a real one - attacking people at night. 
Of course most people think it's just silly; who wouldn't?  But people are going missing, and others swear they've seen it. 
It's up to you to track down this vampire, stop it if possible.  The question is, will you even survive the night?

## Downloads

[**Downloads**](https://github.com/xet7/darkesthour/tree/main/Original)   <==== HERE

Game binaries by [@GeekOnSkates](https://github.com/GeekOnSkates):

- Apple II
- C64
- CBM-II
- Commodore PET, with 40 columns of text
- Commodore PET, with 80 columns of text
- DOS
- Plus4
- Windows 32bit
- Windows 64bit
- Linux x64

## Game binaries by [@xet7](https://github.com/xet7):

### Android
  - xet7 used F-Droid to install Termux, and compiled with `gcc -o darkest-hour darkest-hour.c`

### AmigaOS3
  - xet7 used [crosscompiler at Linux](http://fengestad.no/m68k-amigaos-toolchain/) , there is [copy of those files also at this repo](https://github.com/xet7/darkesthour/tree/main/Source/archive)
  - It is compiled at Linux [here at Makefile](https://github.com/xet7/darkesthour/blob/main/Source/Makefile#L53)
  - After compiling, xet7 tested binary on AmigaOS 3.x at WinUAE at AmigaForever at PlayOnLinux on Linux Mint. At PlayOnLinux, xet7 installed IE8 bottle, and then to same bottle AmigaForever. Later PlayOnLinux did not work for some reason, xet7 used CrossOver Linux, by creating Win7 32bit bottle (AmigaForever requires Win7 or newer), and to that bottle installing WinUAE template, and then in that bottle running AmigaForever9 installer .msi. At bottle Wine desktop settings, xet7 changed desktop size to have bigger height and width in pixels, so that all of AmigaForever fits to screen. Later xet7 will also copy AmigaForever AmigaOS 4.x PPC template with right click menu copy to another template for installing [AmigaOS 4.1 Final Edition for Classic](https://www.hyperion-entertainment.com/index.php/where-to-buy/direct-downloads)
  - Because running binary on AmigaOS did give errors, [xet7 made some changes to code](https://github.com/xet7/darkesthour/commit/91a28c9d798a78b8a4f977d3e1724d581b621520) to make it working.

### Other Amiga compilers, not used here
  - [Docker AmigaOS Cross Toolchain](https://github.com/sebastianbergmann/docker-amigaos-cross-toolchain)
  - [Amiga compilers at Aminet](http://aminet.net/tree?path=dev)
  - [Haujobb Amiga Framework for Windows](https://github.com/leifo/haujobb-amiga)
  - At [ALBs Blog](https://blog.alb42.de) are links to [Amiga Lazarus Wiki](http://fpcamigawiki.alb42.de/index.php?title=Main_Page) and online FreePascal compilers for [AmigaOS 1.x](http://home.alb42.de/fpamiga13) and [AmigaOS 3.x/4.x, AROS, MorphOS](http://home.alb42.de/fpamiga/)

### Linux
  - These usually work for any Linux distro for that CPU, like Ubuntu, Debian, RedHat, etc. These have been compiled by using ssh to connect those donated build servers.
  - arm64, for arm64 servers and RasPi3/RasPi4 arm64 distros like Raspberry Pi OS 64bit, Ubuntu and Ubuntu Touch. Compiled at [server donated to WeKan development by CNCF that is part of Linux Foundation](https://blog.wekan.team/2019/06/wekan-on-raspi3-and-arm64-server-now-works-and-whats-next-with-cncf/)
  - s390x, for IBM Z-Series mainframes.  Compiled at [server donated to WeKan development by IBM LinuxOne Community Cloud](https://www.openmainframeproject.org/blog/2020/11/20/wekan-open-source-kanban-on-s390x)
  - ppc64el, for OpenPower. Compiled at [server donated to WeKan development by OpenPower MiniCloud](https://openpower.ic.unicamp.br/minicloud/)

### iOS
  - No binaries, but you can use `Mobile C` Android app [git clone example](https://github.com/dztall/ccr_resources/blob/master/Examples/fetch_mobilec_examples.c) to download this git repo, and at [darkest-hour.c](https://raw.githubusercontent.com/xet7/darkesthour/main/Source/darkest-hour.c) click `Run` button at `Mobile C` app to run game.

### macOS Big Sur
  - Compiled at [server donated to WeKan development by MacStadium](https://github.com/wekan/wekan/wiki/Mac)
  - arm64
  - x64

## Game binaries by [@aGGre55or](https://github.com/aGGre55or)

- AmigaOS4
- AROS ABIv0 i386

## How to play

1. Download the version that matches the type of computer you're using.  The different versions can be found in the "bin" folder.
2. If you're on an 8-bit computer, load the file; if you're on Windows, double-click it or press Enter on it; if you're on Linux, you know what to do. :)
3. From here, it's all about the keyboard.  You play by typing stuff.  To send an instruction to the game, type a letter or number and then press Enter (Return).  The game comes with complete instructions on what to do from there.

## A note about the Apple 2 disk

On the Apple 2, instead of pressing Return, you may have to press Space a bunch of times after typing a command.  This is due to a bug in the C compiler I used that only affects the Apple 2.  I tried several different ways to fix it, but none have worked.  But the game does run on my Apple 2 emulator, that minor catch aside.

## Source

[At this repo directory: Source](https://github.com/xet7/darkesthour/tree/main/Source). There is darkest-hour.c that works on all platforms.

Menu to build and run at newest Ubuntu amd64:

```
git clone https://github.com/xet7/darkesthour

cd darkesthour/Source

./menu.sh
```
Menu looks like this, there write number and press enter:
```
~/repos/darkesthour/Source$ ./menu.sh
Darkest Hour: Build or run with dosbox/wine/qemu

 1) List filetypes of built executeables  18) Build Linux-ppc
 2) Build All				  19) Build Linux-ppc64
 3) Build AmigaOS3			  20) Build Linux-ppc64le
 4) Build AppleII			  21) Run DOS
 5) Build CBM-II			  22) Run Win32
 6) Build C64				  23) Run Win64
 7) Build DOS				  24) Run Linux-x32
 8) Build Plus4				  25) Run Linux-x64
 9) Build CommodorePET40columns		  26) Run Linux-arm32
10) Build CommodorePET80columns		  27) Run Linux-arm64
11) Build Plus4				  28) Run Linux-m68k
12) Build Linux-x32			  29) Run Linux-ppc
13) Build Linux-x64			  30) Run Linux-ppc64
14) Build Linux-arm32			  31) Run Linux-ppc64le
15) Build Linux-arm64			  32) Run Linux-riscv64
16) Build Linux-m68k			  33) Run Linux-s390x
17) Build Linux-riscv64			  34) Quit
Please enter your choice:
```

Binaries built mostly on Linux Mint x64, using compilers and crosscompilers.
Before setting up some of the above Linux crosscompilers at 2022-12-19, Linux binaries for arm64/s390x/ppc64el
were built on Linux servers donated to [Wekan Open Source kanban](https://wekan.github.io) project by
CNCF/Linux Foundation, IBM LinuxOne Community Cloud, OpenPower MiniCloud and MacStadium.

# License

This game is in the public domain (see [the Unlicense](http://www.unlicense.org) or the source code for the full legalese).
