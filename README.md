# Darkest Hour

## Overview

This is an old-fashioned text adventure game, hopefully the first of many.

Game made by GeekOnSkates: http://www.geekonskates.com/games/

Blogpost about this game: https://lunduke.substack.com/p/new-spooky-multi-retro-platform-text

Game built for:

- AmigaOS3
- Apple II
- C64
- CBM-II
- Commodore PET, with 40 columns of text
- Commodore PET, with 80 columns of text
- DOS
- Plus4
- Windows 32bit
- Windows 64bit
- Linux. These usually work for any Linux distro for that CPU:
  - Linux x64
  - Linux arm64, for arm64 servers and RasPi3/RasPi4 arm64 distros like Raspberry Pi OS 64bit and Ubuntu
  - Linux s390x, for IBM Z-Series mainframes, using RedHat or Ubuntu
  - Linux ppc64el, using Ubuntu

## Story

Halloween is almost here, but something is happening that's much scarier than the annual haunted house at the fire hall.  There are rumors of a vampire - a real one - attacking people at night.  Of course most people think it's just silly; who wouldn't?  But people are going missing, and others swear they've seen it.  It's up to you to track down this vampire, stop it if possible.  The question is, will you even survive the night?

## Downloads

[At this repo directory: Original](https://github.com/xet7/darkesthour/tree/main/Original)

## How to play

1. Download the version that matches the type of computer you're using.  The different versions can be found in the "bin" folder.
2. If you're on an 8-bit computer, load the file; if you're on Windows, double-click it or press Enter on it; if you're on Linux, you know what to do. :)
3. From here, it's all about the keyboard.  You play by typing stuff.  To send an instruction to the game, type a letter or number and then press Enter (Return).  The game comes with complete instructions on what to do from there.

## A note about the Apple 2 disk

On the Apple 2, instead of pressing Return, you may have to press Space a bunch of times after typing a command.  This is due to a bug in the C compiler I used that only affects the Apple 2.  I tried several different ways to fix it, but none have worked.  But the game does run on my Apple 2 emulator, that minor catch aside.

## Source

[At this repo directory: Source](https://github.com/xet7/darkesthour/tree/main/Source). There is darkest-hour.c that works on all platforms.

Some compilers at directory [Source/Archive](https://github.com/xet7/darkesthour/tree/main/Source/archive), some can be installed with
`make deps`. See Makefile.

Building only Linux: `make linux`

Building all: `make all`

Binaries built mostly on Linux Mint x64, using compilers and crosscompilers. Linux binaries for arm64/s390x/ppc64el were built on Linux servers
donated to [Wekan Open Source kanban](https://wekan.github.io) project by CNCF/Linux Foundation, IBM LinuxOne Community Cloud
and OpenPower MiniCloud.

# License

This game is in the public domain (see [the Unlicense](http://www.unlicense.org) or the source code for the full legalese).
