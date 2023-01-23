# TODO

From @xet7

## Changeable filename?

- Change everywhere that it's not hardcoded to filename "darkesthour" or "darkesthour.c",
  but instead it's changeable variable in settings.

## Check C code for type safety?

- https://github.com/microsoft/checkedc
- https://news.ycombinator.com/item?id=34084455

## Learn C

- https://news.ycombinator.com/item?id=34105770
- Mobile C examples at https://github.com/dztall/ccr_examples

## Additional build architectures?

- At `deps.sh` is currently included like `gcc-m68k-linux-gnu binutils-m68k-linux-gnu`
- Additional can be found like `sudo apt-cache search binutils-`
- it shows some more like hppa, mips, sparc etc, but are there any of that hardware available?
- These are not crosscompiled yet from Ubuntu amd64:
  - AROS-ABIv0-i386 maybe add crosscompiler from https://aros.sourceforge.io/nightly1.php
  - Android
    - Android-arm64 binary added
    - How to crosscompile? Zig? And other Android CPUs?
  - RISC OS for Raspberry Pi etc
    - Compiling on RasPi1 using RISC OS Direct did not have enough RAM. Better to try crosscompile (or RasPi4).
    - Newest small RISC OS https://www.riscosopen.org/content/
    - Many development tools at https://www.riscosdev.com/direct/
    - https://web.archive.org/web/20201026043910/https://www.riscos.info/index.php/Cross-compiling_software_with_GCCSDK
  - Haiku, maybe crosscompiling possible somehow?
  - BSD
    - FreeBSD
    - OpenBSD
    - NetBSD
  - macOS, binaries work on most macOS versions
    - macOS-BigSur-arm64 (maybe with Zig ?)
    - macOS-BigSur-x64   (maybe with Zig possible?)
    - For Zig, see:
      - https://zig.news/kristoff/cross-compile-a-c-c-project-with-zig-3599
      - https://github.com/mrexodia/zig-cross

## Additional run architectures?

- `ls /usr/bin/qemu*` shows some, not added yet
- For these, AmigaForever/C64Forever would maybe work for testing:
  - AmigaOS3/darkest-hour
  - AppleII/DarkestHour
  - C64/DarkestHour.prg
  - CBM-II/DarkestHour.prg
  - CommodorePET40columns/DarkestHour.prg
  - CommodorePET80columns/DarkestHour.prg
  - Plus4/DarkestHour.prg
