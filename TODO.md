# TODO

## Additional build architectures?

- At `deps.sh` is currently included like `gcc-m68k-linux-gnu binutils-m68k-linux-gnu`
- Additional can be found like `sudo apt-cache search binutils-`
- it shows some more like hppa, mips, sparc etc, but are there any of that hardware available?
- These are not crosscompiled yet from Ubuntu amd64:
  - AROS-ABIv0-i386
  - Android-arm64
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
