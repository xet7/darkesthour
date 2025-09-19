From @xet7

# DONE

## Changeable filename

- [X] Change everywhere that it's not hardcoded to filename "darkesthour" or "darkesthour.c",
  but instead it's changeable variable in settings. => Done: Source/settings.sh

# TODO

## C64 version of kanban related, colors and rounded corners possible

- https://github.com/EgonOlsen71/moscription
- https://www.youtube.com/watch?v=vj07cuVY1XA

## JSON

- Ultralightweight JSON parser in ANSI C
  - https://github.com/DaveGamble/cJSON 

## How to Secure Existing C and C++ Software Without Memory Safety

- https://arxiv.org/abs/2503.21145
- https://news.ycombinator.com/item?id=43532220

## C and C++ Prioritize Performance over Correctness (2023)

- https://research.swtch.com/ub
- https://news.ycombinator.com/item?id=43509524

## C Programming and Memory Management - Full Course

- https://www.youtube.com/watch?v=rJrd2QMVbGM

## Compiler Options Hardening Guide for C and C++

- https://best.openssf.org/Compiler-Hardening-Guides/Compiler-Options-Hardening-Guide-for-C-and-C++.html
- https://news.ycombinator.com/item?id=43533516

## Beej's Guide to C Programming

- https://beej.us/guide/bgc/pdf/bgc_a4_c_1.pdf
- https://news.ycombinator.com/item?id=43471393

## C++ creator calls for help to defend programming language from 'serious attacks'

- https://www.theregister.com/2025/03/02/c_creator_calls_for_action/
- https://www.youtube.com/watch?v=nfx9iV7GuNk

## Fil-C

- Safepoints and Fil-C
  - https://fil-c.org/safepoints
  - https://archive.is/IW4B1
  - https://news.ycombinator.com/item?id=45258029
  - https://archive.is/HBGwY
- Fil-C for C/C++ Memory Safety
  - https://www.youtube.com/live/_VF3pISRYRc?t=5510s
  - https://github.com/pizlonator/llvm-project-deluge/blob/deluge/Manifesto.md
  - https://archive.is/L6hPe
  - https://lunduke.locals.com/post/6578635/fil-c-memorysafety-fil-c-for-c-c-memory-safety-etc-https-www-youtube-com-watch-v-vf3p

## stdlib not threadsafe

- https://www.edgedb.com/blog/c-stdlib-isn-t-threadsafe-and-even-safe-rust-didn-t-save-us
- https://news.ycombinator.com/item?id=42796058

## The C23 edition of Modern C

- https://gustedt.wordpress.com/2024/10/15/the-c23-edition-of-modern-c/
- https://news.ycombinator.com/item?id=41850017

## reftrack-plugin – plugin for GCC that tracks references to allocated objects

- https://github.com/acbits/reftrack-plugin
- https://news.ycombinator.com/item?id=41884662

## Memory safety without lifetime parameters

- https://www.open-std.org/jtc1/sc22/wg21/docs/papers/2024/p3444r0.html
- https://news.ycombinator.com/item?id=41899828

## C memory safety

- https://lunduke.locals.com/post/6226090/the-biggest-lie-of-rust-is-that-you-cannot-program-safe-c-because-it-is-too-difficult-but-this-igno
- "The biggest lie of Rust is that you cannot program safe C because it is too difficult, but this ignores that you in fact can program safe C, as easy as Rust, with the help of a Theorem Prover like Lean. Is the way the seL4 kernel, a kernel written in C, was written with a memory safety guarantee.
This also has the bonus that for external contributors is not necessary to learn the Theorem Prover, unless the project request the proof to be in companion of the contribution."
  - Michael Norrish. C formalised in HOL. PhD thesis, University of Cambridge Computer Laboratory, 1998.
  - http://web1.cs.columbia.edu/~junfeng/09fa-e6998/papers/sel4.pdf
  - https://trustworthy.systems/publications/nictaabstracts/Klein_AEMSKH_14.abstract
- "After the xz backdoor incident, there was made a study of Rust's supply-chain security. And what he found was disconcerting: https://lunduke.locals.com/post/5454672/the-incredible-terrible-insecurity-of-rust-so-by-now-im-sure-youve-heard-the-news-about-a-backd In addition, there's that whole business of trademarks. https://lunduke.locals.com/post/3837410/this-one-is-borderline-if-this-is-on-the-wrong-side-lunduke-tell-me-so-and-ill-move-it-the In summary: if there was more than one compiler for Rust, created by somebody who isn't associated with The Rust Team, then it might be a decent idea. In addition, I seem to remember some dude somewhere figured out how to subvert the entire memory safety system of Rust, but I can't remember where exactly I read that."

The incredible, terrible insecurity of Rust

So, by now I'm sure you've heard the news about a backdoor making it into xz builds on unstable versions of Debian and Fedora. I made a joke in one of the threads here about Rust surely being able to prevent this kind of vulnerability.

Then, I decided to look into the state of supply-chain security in Rust. And... wow.

For the last seventy-seven releases of the Rust compiler -- the last nine years of development -- the Rust team has worked meticulously to ensure that each new version of the compiler can only be built using the exact previous version. Want to compile rustc 1.77? You'll need to compile rustc 1.76 first; rustc 1.75 won't cut it. So compiling the most recent version of Rust from scratch is really difficult and expensive. (Even if you start from the third-party "mrustc" implementation, you'll still need to build more than 20 intermediate versions. "gccrs" won't save you either because they're planning to take hard dependencies on Rust libraries that will need to be compiled with rustc.)

This would not be a huge problem except that Rust developers demand that the latest version of Rust be available in distributions immediately. There's no official specification for the Rust language, and the year-based "editions" mechanism is almost worthless; correct Rust is whatever the compiler happens to accept at the moment, and that changes every six weeks. If you're a distro, good luck reviewing all those changes. If you're not, good luck participating in the community without bypassing your distro's security process to download rustc directly from the Rust team.

And that community is important! Rust is intentionally designed to (force) heavily encourage you to download packages from Crates.io, their community package manager. (Important features like proc macros and async are almost completely unusable without third-party packages.) Crates.io is heavily inspired by NPM, the JavaScript package manager you might have heard about from the constant stream of news articles about malicious packages and left-pad controversies.

Combine that with the "welcoming" behavior required by the Rust Code of Conduct and, well... if I was a nation-state actor trying to scheme a way to sneak backdoors onto people's computers, I don't think I could come up with much better than this.

## Check C code for type safety?

- https://github.com/microsoft/checkedc
- https://news.ycombinator.com/item?id=34084455
- https://frama-c.com
- https://clang.llvm.org/docs/ShadowCallStack.html

## C programming course 2024

- https://www.cc4e.com
- https://github.com/csev/cc4e
- https://www.youtube.com/watch?v=PaPN51Mm5qQ

## Book

- https://www.amazon.com/Secure-Coding-2nd-Software-Engineering/dp/0321822137

## Learn C

- https://news.ycombinator.com/item?id=34105770
- http://www.cs.cmu.edu/~tom7/abc/paper.pdf
- https://news.ycombinator.com/item?id=36821985
- Modern C
  - https://gustedt.gitlabpages.inria.fr/modern-c/
  - https://news.ycombinator.com/item?id=36167820
  - https://inria.hal.science/hal-02383654v1/preview/ModernC.pdf
  - Code: https://inria.hal.science/hal-03345464v1/document
- C not low level
  - https://queue.acm.org/detail.cfm?id=3212479
  - https://news.ycombinator.com/item?id=37897946
- Ask HN: Good practices for my first C project?
  - https://news.ycombinator.com/item?id=37927792

## Reading and writing files

- For modern OS, try Mobile C examples at https://github.com/dztall/ccr_examples
- For C64, try:
  - https://github.com/TheGeekOnSkates/RetroDisk
  - Related http://8bit-unity.com
  - Related https://github.com/cc65/wiki/wiki

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
- VICE emulator has commands like "xvic" or "xpet" or "x64". Try could those start emulator with DarkestHour app directly?
- Can other emulators start app directly too?

## Other compiling, transpiling related, from post of xet7 elsewhere

I have not got Emscripten to work yet.

With Haxe https://haxe.org I have transpiled hello world
https://github.com/wekan/hx/blob/main/prototypes/code/hello/Wekan.hx to
some other programming languages https://github.com/wekan/hx/blob/main/prototypes/code/hello/build.sh#L296 .
I'm also trying to learn HaxeUI http://haxeui.org .

But I think HaxeUI is also too heavy, similar like Godot to HTML5 would be,
I would need to hand-code HTML4 to get smallest possible webpage size for web apps.

Today 2023-01-23 I found w2c2:

- https://twitter.com/turbolent/status/1617231570573873152
- https://github.com/turbolent/w2c2

I'm trying to learn wax https://github.com/LingDong-/wax , it has some
strange Lisp like AST syntax code, it is rare in so that it can also transpile to Swift.
Transpiled code is near like hand-generated simple syntax, not much extra.

I did at 2018-2019 fork OneLang https://ide.onelang.io so that I could run it
locally https://github.com/xet7?tab=repositories&q=onelang ,
but I have not looked has that language made some progress.

Nim with Python-like syntax can transpile to Javascript https://nim-lang.org

V with Go-like syntax can also transpile to Javascript https://vlang.io

Because doing big quality control app with MS Access 97 kind of made me like VBA and SQL,
I have been looking at various basics at https://github.com/JohnBlood/awesome-basic
like https://github.com/google/wwwbasic , DecimalBasic https://hp.vector.co.jp/authors/VA008683/english/
that can also be transpiled to Lazarus/FreePascal, Gambas Basic https://github.com/wekan/hx/tree/main/prototypes/ui/gambas

And while WeKan https://wekan.github.io is made with Javascript, some have paid me to write some
WeKan related Python, and some others sent Python too https://github.com/wekan/wekan/wiki/Python

I did some benchmarks because I'm trying to make WeKan faster https://github.com/wekan/hx/tree/main/prototypes/code/webserver

Current lightweight mostly HTML4 WeKan prototype is still in beginning stages at https://github.com/wekan/php/blob/main/public/index.php

Current Meteor WeKan requires modern desktop or mobile browser like Safari/Firefox/Chromium based.

Related to Haxe, there is this diff tool made with Haxe https://github.com/paulfitz/daff ,
it also uses some older fork of Haxe that has transpile to Ruby support.
I did send some PR sometime to daff project to fix some stuff I found.
