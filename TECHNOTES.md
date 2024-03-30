# TECHNICAL NOTES

From @GeekOnSkates

Written in standard C, with no dependencies outside the standard library, this game is designed to be VERY portable.  My goal is to have pre-compiled binaries for:

* The following Commodore systems: C64, PET, Plus/4, CBM-II
* DOS
* Linux
* Windows
* And anything else I can get it working on

Originally I had planned to make it look right on 20-, 40-, and 80-column displays.  Unfortunately I didn't have time to test that, but the code is mostly in place in case you want to try it.  I also didn't have time to cut it down enough for a VIC-20 build (~1K short) but that's something else you'd be welcome to try (and maybe I will next Halloween, lol).  But for now, the pre-compiled binaries only support 40 columns.

Now if you're an experienced C programmer, let me forewarn you: coding for retro systems means you have to do things... well, let's just say, "differently".

* Some compilers (most notably Borland Turbo C) don't support the "//" comments (I don't think they were in ISO 89 or whatever the original C language spec was).
* I put everything in one big file.  This is because (again, for DOS), converting all those files from one format to the other is a lot of work I didn't have time for.  At one point they were separate, which is more standard, but nah, this is a weekend project!  Standard?  What's that? :D
* And I used more global variables than I meant to.  I know some people say global variables are evil, but IMO they do have their place.  This was another reason I put everything in one file (all those files had to re-state that those variables existed with "extern").
* And I used pre-processor macros like crazy.  Again, I know some C programmers who see lines like #define EXIT_NORTH 1 and think of all the reasons that shouldn't be so.  Well sorry, when u only have 64K of data, it gets the job done. :D

A few last things I'd like to say on the tech side:

* If you have a real 8-bit computer, I would *love* to see pics of it running the game!  I've mostly worked with emulators, and also used a cross-compiler for DOS and Windows.
* This should run on any system with a C compiler.  It was my plan to include builds for Android (Termux), the Raspberry Pi, and any other platform I could get my hands on.  There's an iPhone app called "ish" that I thought about, and I know a guy with an IMSAI 8080.  So if I didn't compile a version for your favorite platform (retro or modern) feel free to have at it.  :)
* Unfortunately I didn't have time to cut the byte-count down to what I'd need for a VIC-20 build, but that is a thing you can do if you want.
* Regarding the Apple 2 bug: One thing I didn't have time to try was the getstr and getch functions in conio.h; I mainly tried to focus on standard C for maximum portability, but it wasn't until the last minute that I thought of this.  So if you're a serious Apple 2 fan, that bug drives you crazy, and you feel like playing with cc65, feel free to have at it.
* And thank you for checking out my game! :)

## Amiga C  compiler workaroud

At Asahi Fedora arm64 at M1 Air happens this error, when running
Amiga C compiler with qemu-user for i386,
when using https://github.com/xet7/darkesthour

```
$ qemu-i386 /opt/m68k-amigaos/bin/m68k-amigaos-gcc
qemu-i386: /opt/m68k-amigaos/bin/m68k-amigaos-gcc: Unable to find a guest_base
  to satisfy all guest address mapping requirements
  00000000-ffffffff
```
This is bug that happens at Fedora: https://gitlab.com/qemu-project/qemu/-/issues/2082

There is workaroud at `.spec` file:
```
--enable-pie
```
It works around the issue by making the qemu binary load address random,
o the issue now happens sometimes, while it looks like it is solved.

Info about compiling Qemu is at:

https://github.com/howinfo/howinfo/wiki/Qemu

