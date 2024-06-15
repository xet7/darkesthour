pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const struct___va_list_1 = extern struct {
    __stack: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __gr_top: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __vr_top: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __gr_offs: c_int = @import("std").mem.zeroes(c_int),
    __vr_offs: c_int = @import("std").mem.zeroes(c_int),
};
pub const __builtin_va_list = struct___va_list_1;
pub const __gnuc_va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_uint;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_int;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
const union_unnamed_2 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t = @import("std").mem.zeroes(__off_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = @import("std").mem.zeroes(__off64_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int = @import("std").mem.zeroes(c_int),
    _IO_read_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_backup_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _markers: ?*struct__IO_marker = @import("std").mem.zeroes(?*struct__IO_marker),
    _chain: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _fileno: c_int = @import("std").mem.zeroes(c_int),
    _flags2: c_int = @import("std").mem.zeroes(c_int),
    _old_offset: __off_t = @import("std").mem.zeroes(__off_t),
    _cur_column: c_ushort = @import("std").mem.zeroes(c_ushort),
    _vtable_offset: i8 = @import("std").mem.zeroes(i8),
    _shortbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lock: ?*_IO_lock_t = @import("std").mem.zeroes(?*_IO_lock_t),
    _offset: __off64_t = @import("std").mem.zeroes(__off64_t),
    _codecvt: ?*struct__IO_codecvt = @import("std").mem.zeroes(?*struct__IO_codecvt),
    _wide_data: ?*struct__IO_wide_data = @import("std").mem.zeroes(?*struct__IO_wide_data),
    _freeres_list: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _freeres_buf: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __pad5: usize = @import("std").mem.zeroes(usize),
    _mode: c_int = @import("std").mem.zeroes(c_int),
    _unused2: [20]u8 = @import("std").mem.zeroes([20]u8),
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const cookie_read_function_t = fn (?*anyopaque, [*c]u8, usize) callconv(.C) __ssize_t;
pub const cookie_write_function_t = fn (?*anyopaque, [*c]const u8, usize) callconv(.C) __ssize_t;
pub const cookie_seek_function_t = fn (?*anyopaque, [*c]__off64_t, c_int) callconv(.C) c_int;
pub const cookie_close_function_t = fn (?*anyopaque) callconv(.C) c_int;
pub const struct__IO_cookie_io_functions_t = extern struct {
    read: ?*const cookie_read_function_t = @import("std").mem.zeroes(?*const cookie_read_function_t),
    write: ?*const cookie_write_function_t = @import("std").mem.zeroes(?*const cookie_write_function_t),
    seek: ?*const cookie_seek_function_t = @import("std").mem.zeroes(?*const cookie_seek_function_t),
    close: ?*const cookie_close_function_t = @import("std").mem.zeroes(?*const cookie_close_function_t),
};
pub const cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const va_list = __gnuc_va_list;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fopencookie(noalias __magic_cookie: ?*anyopaque, noalias __modes: [*c]const u8, __io_funcs: cookie_io_functions_t) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: __builtin_va_list) c_int;
pub extern fn vprintf(__format: [*c]const u8, __arg: __builtin_va_list) c_int;
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: __builtin_va_list) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: __builtin_va_list) c_int;
pub extern fn vasprintf(noalias __ptr: [*c][*c]u8, noalias __f: [*c]const u8, __arg: __gnuc_va_list) c_int;
pub extern fn __asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: __gnuc_va_list) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub const _Float128 = c_longdouble;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: __builtin_va_list) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: __builtin_va_list) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: __builtin_va_list) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub extern fn feof_unlocked(__stream: [*c]FILE) c_int;
pub extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const wchar_t = c_uint;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_3 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_3,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_int = @import("std").mem.zeroes(c_int),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __pad1: c_ulong = @import("std").mem.zeroes(c_ulong),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_refs: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [8]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [8]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [64]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [48]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [8]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    state: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rand_type: c_int = @import("std").mem.zeroes(c_int),
    rand_deg: c_int = @import("std").mem.zeroes(c_int),
    rand_sep: c_int = @import("std").mem.zeroes(c_int),
    end_ptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = @import("std").mem.zeroes(c_ushort),
    __init: c_ushort = @import("std").mem.zeroes(c_ushort),
    __a: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn arc4random() __uint32_t;
pub extern fn arc4random_buf(__buf: ?*anyopaque, __size: usize) void;
pub extern fn arc4random_uniform(__upper_bound: __uint32_t) __uint32_t;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data_4 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_4 = @import("std").mem.zeroes([13]?*struct___locale_data_4),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strchrnul(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strcasestr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn memmem(__haystack: ?*const anyopaque, __haystacklen: usize, __needle: ?*const anyopaque, __needlelen: usize) ?*anyopaque;
pub extern fn __mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: c_ulong) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strlcpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strlcat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const _ISupper: c_int = 256;
pub const _ISlower: c_int = 512;
pub const _ISalpha: c_int = 1024;
pub const _ISdigit: c_int = 2048;
pub const _ISxdigit: c_int = 4096;
pub const _ISspace: c_int = 8192;
pub const _ISprint: c_int = 16384;
pub const _ISgraph: c_int = 32768;
pub const _ISblank: c_int = 1;
pub const _IScntrl: c_int = 2;
pub const _ISpunct: c_int = 4;
pub const _ISalnum: c_int = 8;
const enum_unnamed_5 = c_uint;
pub extern fn __ctype_b_loc() [*c][*c]const c_ushort;
pub extern fn __ctype_tolower_loc() [*c][*c]const __int32_t;
pub extern fn __ctype_toupper_loc() [*c][*c]const __int32_t;
pub extern fn isalnum(c_int) c_int;
pub extern fn isalpha(c_int) c_int;
pub extern fn iscntrl(c_int) c_int;
pub extern fn isdigit(c_int) c_int;
pub extern fn islower(c_int) c_int;
pub extern fn isgraph(c_int) c_int;
pub extern fn isprint(c_int) c_int;
pub extern fn ispunct(c_int) c_int;
pub extern fn isspace(c_int) c_int;
pub extern fn isupper(c_int) c_int;
pub extern fn isxdigit(c_int) c_int;
pub extern fn tolower(__c: c_int) c_int;
pub extern fn toupper(__c: c_int) c_int;
pub extern fn isblank(c_int) c_int;
pub extern fn isascii(__c: c_int) c_int;
pub extern fn toascii(__c: c_int) c_int;
pub extern fn _toupper(c_int) c_int;
pub extern fn _tolower(c_int) c_int;
pub extern fn isalnum_l(c_int, locale_t) c_int;
pub extern fn isalpha_l(c_int, locale_t) c_int;
pub extern fn iscntrl_l(c_int, locale_t) c_int;
pub extern fn isdigit_l(c_int, locale_t) c_int;
pub extern fn islower_l(c_int, locale_t) c_int;
pub extern fn isgraph_l(c_int, locale_t) c_int;
pub extern fn isprint_l(c_int, locale_t) c_int;
pub extern fn ispunct_l(c_int, locale_t) c_int;
pub extern fn isspace_l(c_int, locale_t) c_int;
pub extern fn isupper_l(c_int, locale_t) c_int;
pub extern fn isxdigit_l(c_int, locale_t) c_int;
pub extern fn isblank_l(c_int, locale_t) c_int;
pub extern fn __tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn __toupper_l(__c: c_int, __l: locale_t) c_int;
pub extern fn toupper_l(__c: c_int, __l: locale_t) c_int;
pub const uint8 = u8;
pub const int8 = i8;
pub const uint16 = c_ushort;
pub const int16 = c_short;
pub const uint32 = c_ulong;
pub const int32 = c_long;
pub export var player: u8 = @import("std").mem.zeroes(u8);
pub export var vampire: u8 = @import("std").mem.zeroes(u8);
pub export var items: u8 = @import("std").mem.zeroes(u8);
pub export var exits: u8 = @import("std").mem.zeroes(u8);
pub export var input: [8]u8 = @import("std").mem.zeroes([8]u8);
pub export var isDay: bool = @import("std").mem.zeroes(bool);
pub export var isGameOver: bool = @import("std").mem.zeroes(bool);
pub export var struck: bool = @import("std").mem.zeroes(bool);
pub export fn Credits() void {
    _ = printf("\nCREDITS\n\nWritten and programmed by:\nThe Geek on Skates\ngeekonskates.com\n\nBeta testing:\nCasey Matthews\nwebfriendlyhelp.com\n\nSpecial thanks to:\nThe Lunduke community\nlunduke.locals.com\n\nAnd to my mom,, who showed me how to\nget through life's real \"darkest hour\"");
}
pub export fn Exits() void {
    _ = printf("\nExits are: ");
    if ((@as(c_int, @bitCast(@as(c_uint, exits))) & @as(c_int, 1)) != 0) {
        _ = printf("north ");
    }
    if ((@as(c_int, @bitCast(@as(c_uint, exits))) & @as(c_int, 2)) != 0) {
        _ = printf("south ");
    }
    if ((@as(c_int, @bitCast(@as(c_uint, exits))) & @as(c_int, 4)) != 0) {
        _ = printf("east ");
    }
    if ((@as(c_int, @bitCast(@as(c_uint, exits))) & @as(c_int, 8)) != 0) {
        _ = printf("west ");
    }
}
pub export fn GameOver() void {
    isGameOver = @as(c_int, 1) != 0;
    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 1)) != 0) {
        if (!struck) {
            struck = @as(c_int, 1) != 0;
            _ = printf("\nSuddenly, the vampire strikes! You fall\non your back! In a moment she's\nstanding over you, grabbing your neck!\nYou pull the Bible out of your pocket,\nand she jumps back!\n\"The Living Word!\" she screams,\nvanishing in a puff of smoke.  You get\nup and look around.  She's gone.\n");
        }
        isGameOver = @as(c_int, 0) != 0;
        return;
    }
    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 4)) != 0) {
        _ = printf("\nYou walk down the quiet road, turning\naround every few minutes.  The sounds\nhere make you feel like someone's\nwatching you.  You grab the crucifix,\njust in case.  Whoa!  Oh, just a cat.\nIt's not her.  You laugh at how\nparanoid this vampire hunt has made\nyou.  Is it even real?\nThen you get your answer!  Bats\nsurround you!  You swat them away, and\nsomeone grabs you from behind!  You try\nto break free, holding up the crucifix\nlike in the movies.  \"That's just a\nsymbol,\" she smiles, her hot breath on\nyour neck, \"And He isn't there\nanymore...\"");
    } else if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 2)) != 0) {
        _ = printf("\nYou turn the corner and find yourself\nstanding face-to-face with the vampire!\nShe smiles, showing her long white\nfangs.  You bite the garlic, chew, and\nspit it in her face!\n\"That's disgusting,\" she says, wiping\nthe junk off her cheek. \"And I'm done\nplaying!\"  As she says this, her feet\nlift off the ground.  You run as fast\nas you can, but it's not fast enough!\nShe grabs you, and everything goes\nblack...");
    } else if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 32)) != 0) {
        _ = printf("\nSomeone knocks you to the ground! You\njump to your feet and face her.  A\ntall, dark-haired woman in a black robe\nhovers off the ground in front of you.\nShe smiles, and you see this lady has\nrazor-sharp fangs!  You draw your gun\nand fire!  A direct hit!\n\"Seriously?\" she laughs, \"do I look\nlike a werewolf?\"  You now realize\nyour mistake, but it's too late...");
    } else if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 8)) != 0) {
        _ = printf("\nThe vampire grabs you by the throat!\nYou use your wooden stake to try to\nfend her off!  It snaps like a twig\nagainst her chest, and she laughs.\n\"Should have listened to the old man,\"\nshe says, finishing you off...");
    } else {
        _ = printf("\nSmoke swirls around you, blotting out\nthe starry sky.  You hear her laugh,\nand see her bright yellow eyes stare at\nyou.  Instantly she's at your throat,\nand everything goes black...");
    }
    _ = printf("\n\nGAME OVER");
    ShowPassword();
}
pub export fn Help() void {
    _ = printf("\r\n\nCOMMAND LIST:\r\n\n  N: Go north\r\n  S: Go south\r\n  E: Go east\r\n  W: Go west\r\n  L: Look around\r\n  G: Grab something\r\n  T: Talk to people\r\n  I: inventory\r\n  X: List exits\r\n  H: view this list\r\n  Q: Quit the game\r\n\n");
}
pub export fn Inventory() void {
    _ = printf("\nINVENTORY:");
    if (@as(c_int, @bitCast(@as(c_uint, items))) == @as(c_int, 0)) {
        _ = printf("\n  You don't have anything yet.");
        return;
    }
    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 2)) != 0) {
        _ = printf("\n  Four heads of garlic");
    }
    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 8)) != 0) {
        _ = printf("\n  A wood tent spike");
    }
    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 16)) != 0) {
        _ = printf("\n  A plastic pumpkin with a light");
    }
    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 32)) != 0) {
        _ = printf("\n  A gun with silver bullets");
    }
    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 4)) != 0) {
        _ = printf("\n  A crucifix");
    }
    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 128)) != 0) {
        _ = printf("\n  A $100 bill");
    }
    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 1)) != 0) {
        _ = printf("\n  A pocket-size Bible");
    }
    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 64)) != 0) {
        _ = printf("\n  A diamond ring");
    }
}
pub export fn Location0() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2) | @as(c_int, 4)))));
    player = 0;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nHIKING TRAIL");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 119), @as(c_int, 110) => {
                    _ = printf("Can't go that way.");
                    break;
                },
                @as(c_int, 116) => {
                    _ = printf("\nNo one to talk to here (unless you\nspeak Squirrel)");
                    break;
                },
                @as(c_int, 103) => {
                    if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 64)) != 0) {
                        _ = printf("\nNothing to grab here.");
                    } else {
                        items |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 64)))));
                        _ = printf("\nYou grab the ring.");
                    }
                    break;
                },
                @as(c_int, 108) => {
                    _ = printf("\nYou're in a dense forest, on a winding\ntrail.  It's hard to see where you're\ngoing.");
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nIt's creepy here at night!  The trees\nseem to reach out at you.  You hear\nfootsteps coming toward you.  You stop\nand listen.  It's just a deer.");
                    }
                    if (!((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 64)) != 0) and !((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 1)) != 0)) {
                        _ = printf("\nYou see something shiny on the ground.\nA diamond ring?!  Whoever lost it must\nbe looking for it.");
                    }
                    break;
                },
                @as(c_int, 101) => {
                    Location1();
                    return;
                },
                @as(c_int, 115) => {
                    Location4();
                    return;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn Location1() void {
    player = 1;
    exits = @as(u8, @bitCast(@as(i8, @truncate((@as(c_int, 2) | @as(c_int, 4)) | @as(c_int, 8)))));
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nLOWLAND ELEMENTARY SCHOOL");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 119) => {
                    Location0();
                    return;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nNobody here");
                    } else {
                        _ = printf("\n\"You're LOOKING for the vampire?\" a\nkid asks, \"No!  She'll get you, like\nshe got my mom!\"\n\"Your mom ditched you,\" says a bigger\nkid, \"Vampires aren't real, moron!\nNow come on, you playin' or not?\"\n\"Kiss my skates, jerk!\" says the\nfirst, slapping the puck hard.  They\nplay on, and you wonder what really\nhappened to this poor kid's mom.  Kids\ncan be so mean!");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    _ = printf("\nNothing to grab here.");
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nYou're in a parking lot.  Street lights\ncast strange shadows on the only car\nstill here.  It's dead silent, a bit\nweird, but at least you can see where\nyou're going.");
                    } else {
                        _ = printf("\nYou're in the parking lot.  There are\nkids playing street hockey here.");
                    }
                    break;
                },
                @as(c_int, 101) => {
                    Location2();
                    return;
                },
                @as(c_int, 115) => {
                    Location5();
                    return;
                },
                @as(c_int, 110) => {
                    _ = printf("\nCan't go that way.");
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn Location2() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate((@as(c_int, 2) | @as(c_int, 4)) | @as(c_int, 8)))));
    player = 2;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nFRESH-MART");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    _ = printf("\nYou go behind the store.\nNothing to see here.");
                    break;
                },
                @as(c_int, 119) => {
                    Location1();
                    return;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\n\"If you're into that stuff,\" says a\nguy, \"try the library.  The lady there\nis very helpful.\"");
                    } else {
                        _ = printf("\n\"Vampires?\" says a girl, \"I don't\nknow, in the movies they use wooden\nstakes to kill vampires.  Why do you\nask?\"");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    if (!((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 2)) != 0)) {
                        items |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2)))));
                        _ = printf("\nYou grab the garlic.");
                    } else {
                        _ = printf("\nNothing here.");
                    }
                    break;
                },
                @as(c_int, 108) => {
                    _ = printf("\nThe supermarket parking lot is nuts!\nThere must be a sale on candy.  There\nare lines out the the door.  Oh,\nit's a sale on garlic.  That's weird.");
                    if (!((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 2)) != 0)) {
                        _ = printf("\nA guy runs to his car, drops some\ngarlic, and drives off.");
                    }
                    break;
                },
                @as(c_int, 101) => {
                    Location3();
                    return;
                },
                @as(c_int, 115) => {
                    Location6();
                    return;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn Location3() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2) | @as(c_int, 8)))));
    player = 3;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nST. MARY'S CATHEDRAL");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110), @as(c_int, 101) => {
                    _ = printf("\nCan't go that way.");
                    break;
                },
                @as(c_int, 119) => {
                    Location2();
                    return;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\n\"Is anyone there?\" you whisper, looking\naround uneasily.  A woman laughs in the\ndistance.  It's her!  Run!");
                    } else {
                        _ = printf("\n\"Bless you!\" says the priest,\ncrossing himself.  \"You're looking for\na vampire?  I can't say anything\nofficially, but I've heard... the\nstories are true.  A young man who\nused to attend mass here went\nmissing... I've already said more than\nI should.   But I will say this: I've\noften heard vampires hate holy things.\nAs a boy I played a video game where\nyou used holy water as a weapon (not\nthat I'd recommend that), but if you\ncan find a crucifix, it might help.\"");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    if ((@as(c_int, @bitCast(@as(c_uint, vampire))) <= @as(c_int, 7)) and !((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 4)) != 0)) {
                        items |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 4)))));
                        _ = printf("\nYou grab the crucifix.");
                    } else {
                        _ = printf("\nNothing here.");
                    }
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nThe towering spires and ornately carved\ngargoyles loom above you.  At night, it\nlooks like the kind of place you would\nsee in a scary movie.");
                    } else {
                        _ = printf("\nIn front of you is a huge stone\nbuilding that reminds you of a castle\nin a horror movie.  You step inside to\nrest a bit.  It's beautiful, all\nstained glass windows and marble\nstatues.  A priest sits in a pew,\nstudying a book.");
                        if (!((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 4)) != 0)) {
                            _ = printf("\nYou see a crucifix on the pew in front\nof you.");
                        }
                    }
                    break;
                },
                @as(c_int, 115) => {
                    Location7();
                    return;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn Location4() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate((@as(c_int, 1) | @as(c_int, 2)) | @as(c_int, 4)))));
    player = 4;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nLOWLAND FIRE HALL");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    Location0();
                    return;
                },
                @as(c_int, 119) => {
                    _ = printf("\nCan't go that way.");
                    break;
                },
                @as(c_int, 101) => {
                    Location5();
                    return;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\n\"Seriously?\" she laughs, \"You\nthought I was a REAL vampire?  You're\nnuts!\"");
                    } else {
                        _ = printf("\n\"Don't tell anyone I said this,\" says a\nfireman, \"but we've been super busy\nlooking for missing people.  We got a\ncall from a lady whose husband was\nattacked.  I don't know who or what it\nis, but it's weird. We're Fire &\nRescue, not the dang Ghostbusters!\nAnd now when I finally get a break they\ngot us setting up for a party.\nSheesh!\"");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    _ = printf("\nYou grab a cup of cider.\nMmmm!");
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nThe Halloween party is going on.  Kids\nwalk through a haunted house, and a\nmonster greets guests with cider and\ndoughnuts.  Whoa, is that a vampire?!");
                    } else {
                        _ = printf("\nThe garage doors are open, and people\nare putting up decorations like paper\nbats, rubber spiders, and glowing\norange lights.  Two guys lug a cauldron\nas big as a bathtub, and a lady hangs\nlong black ribbons over a door.");
                    }
                    break;
                },
                @as(c_int, 115) => {
                    Location8();
                    return;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn Location5() void {
    var tacos: u8 = 0;
    _ = &tacos;
    exits = @as(u8, @bitCast(@as(i8, @truncate(((@as(c_int, 1) | @as(c_int, 2)) | @as(c_int, 4)) | @as(c_int, 8)))));
    player = 5;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nNIKO'S TACOS");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    Location1();
                    return;
                },
                @as(c_int, 119) => {
                    Location4();
                    return;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nIt's like her voice is in your head!\n\"Keep running...\"!");
                    } else {
                        _ = printf("\n\"I'm telling you,\" she says,\n\"something weird is going on.  That\nkid down the street swears a vampire\ngot his mom. Then there's my boss; she\nsaid it got her husband.  And there's a\nrun on garlic at the Fresh-Mart.\"\n\n\"Rumors,\" he laughs, \"the kid's\nprobably messing with you, your boss is\na drunk and garlic makes great Italian\nfood.\"\n\n\"Yeah, but our neighbor?\" she insists,\n\"he says there's a ghost in the \ncemetery warning people!\"\n\n\"Honey, the guy's crazy!\" he laughs, \"I\nmean come on, he took apart his camping\ntent so he could get a wooden stake.\nOh, steak, should have gotten that.\"");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nNothing here");
                    } else {
                        tacos +%= 1;
                        if (@as(c_int, @bitCast(@as(c_uint, tacos))) >= @as(c_int, 13)) {
                            _ = printf("\n%d tacos! If the vampire gets you, she\nwill be sucking salsa instead of blood!", @as(c_int, @bitCast(@as(c_uint, tacos))));
                        } else if (@as(c_int, @bitCast(@as(c_uint, tacos))) == @as(c_int, 0)) {
                            _ = printf("\nYou run to the restroom.\nCool, just opened up room for more!");
                        } else {
                            _ = printf("\nYou grab a taco.  Yum!");
                        }
                    }
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nThe taco shop is closed, and at this\ntime of night it smells like beer.");
                    } else {
                        _ = printf("\nTwo guys make tacos at a buffet.  A man\nand his wife are enjoying a nice meal;\nthe woman has a guide dog, and the man\nhas a humongous burrito and four tacos.");
                    }
                    break;
                },
                @as(c_int, 101) => {
                    Location6();
                    return;
                },
                @as(c_int, 115) => {
                    Location9();
                    return;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn Location6() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate(((@as(c_int, 1) | @as(c_int, 2)) | @as(c_int, 4)) | @as(c_int, 8)))));
    player = 6;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nLIBRARY");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    Location2();
                    return;
                },
                @as(c_int, 115) => {
                    LocationA();
                    return;
                },
                @as(c_int, 119) => {
                    Location5();
                    return;
                },
                @as(c_int, 101) => {
                    Location7();
                    return;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nYou look around... no one is here!?");
                    } else if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 1)) != 0) {
                        _ = printf("\n\"Thank you so much for finding my ring!\nI'm sorry I can't do more to help you.\"");
                    } else if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 64)) != 0) {
                        _ = printf("\n\"You found it!\" the librarian shouts,\nmaking everyone stare.  \"Thank you!\nOh, by the way...\" and here her voice\nsoftens, \"please come with me.\" You\nfollow her into her office, and she\ncloses the door.  \"The vampire is\nreal! I saw her!\" she says.  \"Last\nnight she attacked me when I was out\nlooking for my ring.  But then, my\nBible fell out of my pocket, and she\njust... flew away! I think the Bible\nscares her like she scares us.  Here,\nyou can have my spare.\"");
                        items |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1)))));
                        items &= @as(u8, @bitCast(@as(i8, @truncate(~@as(c_int, 64)))));
                    } else {
                        _ = printf("\n\"Hello,\" the librarian smiles.  \"Oh\nyeah, we have lots of books about\nvampires.  There's Dracula, of course,\nand... oh, a real one?  No, sorry, I\ndon't believe in vampires.  Hey, you\nhaven't seen a diamond ring around\nhere, have you?  I lost it sometime\nthis morning and can't find it\nanywhere!  It's my wedding ring and...\nno?  Okay.  Thanks anyway.\"");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nNothing to grab here.");
                    } else {
                        _ = printf("\nYou grab a book, read some,\nand put it down");
                    }
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nYou hear her voice again.  \"Come out,\ncome out wherever you are...\"");
                    } else {
                        _ = printf("\nA girl reads a story to kids around a\nsmall table, people use the computers,\nand a librarian sits at the front desk.");
                    }
                    break;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn Location7() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate((@as(c_int, 1) | @as(c_int, 2)) | @as(c_int, 8)))));
    player = 7;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nCEMETERY");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    Location3();
                    return;
                },
                @as(c_int, 115) => {
                    LocationB();
                    return;
                },
                @as(c_int, 119) => {
                    Location6();
                    return;
                },
                @as(c_int, 101) => {
                    _ = printf("\nCan't go that way.");
                    break;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\n  \"In darkest hour of evil's night,\n  Your only hope is in the light.\n  If your life you wish to save,\n  place the Book inside her grave...\"\n\nThe man disappears!  Was that a ghost?\nWhat was that?!  What book?  What was\nthat about light? You look around, and\ndon't see a grave that looks like it\ncould be hers.  All the women's graves\nhad names like Amy Smith and Jane\nBrown.  The vampire's grave isn't here.");
                    } else {
                        _ = printf("\nNobody here.");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    _ = printf("\nNothing to grab here.");
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nThe full moon shines on the tombstones,\nmaking the place even spookier than\nusual.  A man with an old-fashioned\nlantern stands watch.");
                    } else {
                        _ = printf("\nYou quietly walk across the rows of\ntombstones.  Some of them are ancient,\nor at least so old you can't read them.\nThere's no one else around.");
                    }
                    break;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn Location8() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate((@as(c_int, 1) | @as(c_int, 2)) | @as(c_int, 4)))));
    player = 8;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nW PUTNAM ST.");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    Location4();
                    return;
                },
                @as(c_int, 115) => {
                    LocationC();
                    return;
                },
                @as(c_int, 119) => {
                    _ = printf("\nCan't go that way.");
                    break;
                },
                @as(c_int, 101) => {
                    Location9();
                    break;
                },
                @as(c_int, 116) => {
                    _ = printf("\nNobody here.");
                    break;
                },
                @as(c_int, 103) => {
                    if (!((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 16)) != 0)) {
                        items |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 16)))));
                        _ = printf("\nYou grab the jack-o-lantern.");
                    } else {
                        _ = printf("\nNothing to grab here.");
                    }
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        if (!((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 16)) != 0)) {
                            _ = printf("\nThere are no lights here.  Did you hear\nsomething?");
                        } else {
                            _ = printf("\nIn the orange light of your pumpkin,\nyou look around.  It's so quiet!  Where\nare all the trick-or-treaters?  All\nthe houses are dark, too!");
                        }
                    } else {
                        _ = printf("\nYou walk down the street, looking at\nall the cool decorations.  One house\nhas a scarecrow and corn stalks.\nAnother is covered in cobwebs and has a\nfoam tombstone by the mailbox.");
                        if (!((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 16)) != 0)) {
                            _ = printf("\nA plastic jack-o-lantern with a glowing\norange light sits on the road.");
                        }
                    }
                    break;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn Location9() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate(((@as(c_int, 1) | @as(c_int, 2)) | @as(c_int, 4)) | @as(c_int, 8)))));
    player = 9;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nE PUTNAM ST.");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    Location5();
                    return;
                },
                @as(c_int, 115) => {
                    LocationD();
                    return;
                },
                @as(c_int, 119) => {
                    Location8();
                    return;
                },
                @as(c_int, 101) => {
                    LocationA();
                    break;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) <= @as(c_int, 7)) {
                        _ = printf("\n\"It's happening again,\" he says.\n\"When I was young, I had a neighbor\nfrom a foreign country.  He told a\nfantastic story about a witch who tried\nto protect herself from vampires, by\nmaking a brew of all the things they\nhate.  It worked, but not how she\nplanned.  She was bitten, but her spell\ndidn't work till after she became a\nvampire.  Now things like garlic don't\nharm her.  It was only a story, but\nthen people started disappearing - \neven the old man.  I think his story\nwas true.  Anyway, I just took apart\nmy tent to get a wooden stake.  I doubt\nit'll stop her, but you're welcome to\nhave one too.\"");
                    } else {
                        _ = printf("\nNo one else here");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    if (!((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 8)) != 0)) {
                        items |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 8)))));
                        _ = printf("\nYou grab a wooden stake.");
                    } else {
                        _ = printf("\nNothing else here.");
                    }
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nYou walk around the block, listening to\nevery sound.  A black cat walks by, but\nyou're sure there's something else.  Or\nmaybe you're just getting spooked.");
                    } else {
                        _ = printf("\nOn this road, you just see more houses.\nSome are decorated, some not. An old\nman sits on his front porch.");
                    }
                    break;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn LocationA() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate(((@as(c_int, 1) | @as(c_int, 2)) | @as(c_int, 4)) | @as(c_int, 8)))));
    player = 10;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nBIFF'S GYM");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    Location6();
                    return;
                },
                @as(c_int, 115) => {
                    LocationE();
                    return;
                },
                @as(c_int, 119) => {
                    Location9();
                    return;
                },
                @as(c_int, 101) => {
                    LocationB();
                    return;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nNo one answers, but you hear a lady\nlaugh somewhere nearby.");
                    } else {
                        _ = printf("\n'If you're not here to sign up,' he\nsays, 'get out.'");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    if (!((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 128)) != 0) and (@as(c_int, @bitCast(@as(c_uint, vampire))) <= @as(c_int, 7))) {
                        items |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128)))));
                        _ = printf("\nYou look around cautiously, then grab\nthe cash");
                    } else {
                        _ = printf("\nNothing else here");
                    }
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nThe door's locked.");
                    } else {
                        if (!((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 128)) != 0) and !((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 32)) != 0)) {
                            _ = printf("\nOutside, you see a $100 bill on the\nground!  No one is around.");
                        }
                        _ = printf("\nYou go inside.  A woman bench-presses\ntwice her weight, and a big guy gasps\nfor air on a treadmill.  The owner\nhelps a girl sign up.");
                    }
                    break;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn LocationB() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate((@as(c_int, 1) | @as(c_int, 2)) | @as(c_int, 8)))));
    player = 11;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\n16-MILE CREEK");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    Location7();
                    return;
                },
                @as(c_int, 115) => {
                    LocationF();
                    return;
                },
                @as(c_int, 119) => {
                    LocationA();
                    return;
                },
                @as(c_int, 101) => {
                    _ = printf("\nCan't go that way.");
                    break;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nNo one is here");
                    } else {
                        _ = printf("\n\"Nah,\" said the fisherman, \"I ain't\nhad a bite all day.\"");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    _ = printf("\nNothing to grab here.");
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nYou come to the bridge.  Still blocked\noff.  There are no lights, and you hear\nweird sounds.  Probably just wild\nanimals.");
                    } else {
                        _ = printf("\nOn the other side of the plaza is a\nbridge.  There are cones blocking the\nway, and construction work going on the\nother side.  A guy is fishing.");
                    }
                    break;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn LocationC() void {
    if (isGameOver) return;
    exits = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1) | @as(c_int, 4)))));
    player = 12;
    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
        if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 1)) != 0) {
            _ = printf("\nYou duck behind a car as the vampire\nflies by.  Did she see you?  You wait a\nfew minutes, then step out.  The gate\nis wide open, so you sneak in.  She\nleft the front door open, so you step\ninside.  The room is pitch dark, but\nyou turn on a light switch.  What\nthe...?!  Is that a coffin?!  Thinking\nabout all you have heard, you know what\nyou have to do.  You take a deep breath,\nlook around one last time, and lift the\ntop of the coffin.  It's empty, so you\nthrow the Bible inside and close it.");
            WaitForReturn();
            _ = printf("\n\"What are you doing?!  Get away from\nthere!\" The vampire shouts, charging\ninto the room.  She throws you against\na wall, opens the coffin, and falls\nover backwards!  Gasping for air, she\npulls herself off the ground.\n\"You...!  Take it out!  Take it out\nNOW!\"\nYou try to run, but you can't move!");
            WaitForReturn();
            _ = printf("\n\"Take it out or I'll... what... is...\nhappening...?!\" Suddenly you find you\ncan move again - she can't!  Through\nthe window in the front door, you can\nsee a single ray of light peeking out\nfrom behind her front gate, touching\nher forehead.  You run to the windows,\nripping off the curtains.\n\"No, stop!\" she yells,\n\"NOOOOOOOO!!!!!!\"\nAs the sun rises, the room is flooded\nwith brilliant orange light.  The\nvampire screams, then dissolves into a\nheap of ash.  Catching your breath, you\nrealize your adventure has finally\nended.  This evil creature's days of\nhunting the innocent are over.  Not\nexactly a happy ending, but you\nsurvived...");
            WaitForReturn();
            _ = printf("\n\"You did it!\"  You hear someone say,\n\"you destroyed her!  We're free!\"\nYou watch as two people step out from\nanother room.  \"She was keeping us\nhere, keeping us alive just so she\ncould keep drinking...\" said a man,\nholding back tears.  \"Thank you!  God\nbless you!  I've got to get back to my\nwife!\"\n\"And my son!\" said a lady, \"he\nprobably thinks I left him!  Oh thank\nyou so much!  Come on, let's go home!\"\nTHE END");
            WaitForReturn();
            isGameOver = @as(c_int, 1) != 0;
            _ = printf("\nPress Enter/Return to go\nback to the main menu.");
            _ = getchar();
            return;
        }
        _ = printf("\nYou're standing in front of a huge\nmansion.  The gates creak open as you\nwalk towards them.  You carefully step\nthrough, trying not to make a sound.\nBut as soon as you're inside, the gates\nslam behind you!  You run back to find\nthem locked!  You turn around as the\nfront door of the mansion swings open.\nA lady steps out and the door closes\nbehind her.  With a flick of her wrist,\nyou are flung down to the foot of the\nstaircase!\n\"Welcome to my new home,\" she says,\n\"I hope you like it here, because it's\nthe last place you will ever see!\"");
        GameOver();
        return;
    }
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nMATTHEWS MANSION.");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    Location8();
                    return;
                },
                @as(c_int, 119), @as(c_int, 115) => {
                    _ = printf("\nCan't go that way.");
                    break;
                },
                @as(c_int, 101) => {
                    LocationD();
                    return;
                },
                @as(c_int, 116) => {
                    _ = printf("\nNo one is here.");
                    break;
                },
                @as(c_int, 103) => {
                    _ = printf("\nNothing to grab here.");
                    break;
                },
                @as(c_int, 108) => {
                    _ = printf("\nYou walk down another row of houses and\ncome to another corner.  Here, one big\nhouse takes up half the street.  It's\nold and a bit spooky, but not abandoned\nor anything.  It's actually a very nice\nplace, with a fancy iron gate and a\nlittle tower like a castle.  If this is\nwhere the vampire lives, she must be\nswimming in money!");
                    break;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn LocationD() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate((@as(c_int, 1) | @as(c_int, 4)) | @as(c_int, 8)))));
    player = 13;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nWELLINGTON AVE.");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    Location9();
                    return;
                },
                @as(c_int, 115) => {
                    _ = printf("\nCan't go that way.");
                    break;
                },
                @as(c_int, 119) => {
                    LocationC();
                    return;
                },
                @as(c_int, 101) => {
                    LocationE();
                    return;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\n\"I'm coming...\" you hear a whisper.");
                    } else {
                        _ = printf("\n\"Out of the way!\" a kid shouts.");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    _ = printf("\nNothing to grab here.");
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nIt's dark and quiet here.\nYou can't see much.");
                    } else {
                        _ = printf("\nTwo kids fly down the street on skates.\n\"Come on,\" says one, \"The guys are\nalready at the school.  I want to play\ngoalie this time!\"");
                    }
                    break;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn LocationE() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate((@as(c_int, 1) | @as(c_int, 4)) | @as(c_int, 8)))));
    player = 14;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nTHE DRUNK SKUNK");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    LocationA();
                    return;
                },
                @as(c_int, 115) => {
                    _ = printf("\nCan't go that way.");
                    break;
                },
                @as(c_int, 119) => {
                    LocationD();
                    return;
                },
                @as(c_int, 101) => {
                    LocationF();
                    return;
                },
                @as(c_int, 116) => {
                    _ = printf("\n\"Oh, she's real,\" she says, downing\nanother drink.  \"I've seen her.  One\nnight, a bunch of bats flew out of our\nfireplace, and I swear... they turned\ninto the vampire!  She snatched him\naway in a second, then came for me.  I\nran to the kitchen and got garlic, but\nshe kept coming, till she bumped into\nhis old Bible.  Then she freaked and\nvanished.  I don't get it, but now I'm\nwalking around with a Bible all the\ntime.  If I were you, I'd get one.  I\njust wish...\"");
                    break;
                },
                @as(c_int, 103) => {
                    _ = printf("\nYou grab a cold drink.");
                    break;
                },
                @as(c_int, 108) => {
                    _ = printf("\nIt doesn't look great, but smells\ndelicious.  A server brings a plate of\nwings to some guys watching football.\nIn the corner, a young woman drinks\nsmall glasses so fast you'd think they\nwere full of water.");
                    break;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn LocationF() void {
    exits = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 1) | @as(c_int, 8)))));
    player = 15;
    UpdateAI();
    if (isGameOver) return;
    _ = printf("\nPAWN SHOP");
    while (true) {
        if (isGameOver) return;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 110) => {
                    LocationB();
                    return;
                },
                @as(c_int, 115), @as(c_int, 101) => {
                    _ = printf("\nCan't go that way.");
                    break;
                },
                @as(c_int, 119) => {
                    LocationE();
                    return;
                },
                @as(c_int, 116) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nNo one else here");
                    } else if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 128)) != 0) {
                        _ = printf("\n\"Oh, you got $100?  You're in luck!\"\nThe shop owner grabs a handgun from\nunder the counter and reaches into a\njar.  \"These are silver bullets,\" he\nsays.  \"I've been selling them... let's\nsay, quietly... ever since the vampire\nattacks started.  You can have a gun\nand ammo for $100.\"");
                    } else {
                        _ = printf("\n\"Well, I think we got vampire movies,\nbut that's about it,\" says the shop\nowner.  \"Try again later.\"");
                    }
                    break;
                },
                @as(c_int, 103) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nNothing to grab here.");
                    } else if ((@as(c_int, @bitCast(@as(c_uint, items))) & @as(c_int, 128)) != 0) {
                        items &= @as(u8, @bitCast(@as(i8, @truncate(~@as(c_int, 128)))));
                        items |= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 32)))));
                        _ = printf("\nYou pay him and grab the gun and silver\nbullets.  It's not legal, but the only\none you want to shoot is already dead.");
                    } else {
                        _ = printf("\n\"Hey, you gotta pay for that!\"");
                    }
                    break;
                },
                @as(c_int, 108) => {
                    if (@as(c_int, @bitCast(@as(c_uint, vampire))) > @as(c_int, 7)) {
                        _ = printf("\nThe door is locked.  Something moves\nnearby.  Is it her?  Better keep\nmoving.");
                    } else {
                        _ = printf("\nThe place is a mess, but there's all\nkinds of cool stuff here; chess sets,\na baseball bat, old computers, and a\nshelf full of movies.");
                    }
                    break;
                },
                else => {},
            }
            break;
        }
        Prompt();
        if (isGameOver) return;
    }
}
pub export fn Password() void {
    var temp: u8 = undefined;
    _ = &temp;
    _ = printf("\r\n\nEnter password:  ");
    _ = memset(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&input))))), @as(c_int, 8), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))));
    Input();
    temp = ReadNybble(input[@as(c_uint, @intCast(@as(c_int, 0)))]);
    if (@as(c_int, @bitCast(@as(c_uint, temp))) == @as(c_int, 255)) {
        _ = printf("Invalid password.\r\n");
        return;
    }
    player = temp;
    temp = ReadNybble(input[@as(c_uint, @intCast(@as(c_int, 1)))]);
    if (@as(c_int, @bitCast(@as(c_uint, temp))) == @as(c_int, 255)) {
        _ = printf("Invalid password.\r\n");
        return;
    }
    items = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, temp))) << @intCast(4)))));
    temp = ReadNybble(input[@as(c_uint, @intCast(@as(c_int, 2)))]);
    if (@as(c_int, @bitCast(@as(c_uint, temp))) == @as(c_int, 255)) {
        _ = printf("Invalid password.\r\n");
        return;
    }
    items +%= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, temp)))))));
    StartGame();
}
pub export fn Prompt() void {
    _ = printf("\n\n");
    Input();
    input[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(u8, @bitCast(@as(i8, @truncate(tolower(@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))]))))))));
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
            @as(c_int, 120) => {
                Exits();
                return;
            },
            @as(c_int, 99) => {
                Credits();
                return;
            },
            @as(c_int, 105) => {
                Inventory();
                return;
            },
            @as(c_int, 104) => {
                Help();
                return;
            },
            @as(c_int, 113) => {
                _ = printf("\nPassword: %x%02x\n\nPress ENTER/RETURN to exit.", @as(c_int, @bitCast(@as(c_uint, player))), @as(c_int, @bitCast(@as(c_uint, items))));
                _ = getchar();
                exit(@as(c_int, 0));
                return;
            },
            @as(c_int, 110), @as(c_int, 115), @as(c_int, 101), @as(c_int, 119), @as(c_int, 116), @as(c_int, 108), @as(c_int, 103) => return,
            else => {},
        }
        break;
    }
    _ = printf("I can't do that.  For help, type H.");
}
pub export fn ReadNybble(arg_ch: u8) u8 {
    var ch = arg_ch;
    _ = &ch;
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, ch)))) {
            @as(c_int, 48) => return 0,
            @as(c_int, 49) => return 1,
            @as(c_int, 50) => return 2,
            @as(c_int, 51) => return 3,
            @as(c_int, 52) => return 4,
            @as(c_int, 53) => return 5,
            @as(c_int, 54) => return 6,
            @as(c_int, 55) => return 7,
            @as(c_int, 56) => return 8,
            @as(c_int, 57) => return 9,
            @as(c_int, 97), @as(c_int, 65) => return 10,
            @as(c_int, 98), @as(c_int, 66) => return 11,
            @as(c_int, 99), @as(c_int, 67) => return 12,
            @as(c_int, 100), @as(c_int, 68) => return 13,
            @as(c_int, 101), @as(c_int, 69) => return 14,
            @as(c_int, 102), @as(c_int, 70) => return 15,
            else => {},
        }
        break;
    }
    return 255;
}
pub export fn Row(arg_n: u8) u8 {
    var n = arg_n;
    _ = &n;
    if (@as(c_int, @bitCast(@as(c_uint, n))) < @as(c_int, 4)) return 0;
    if (@as(c_int, @bitCast(@as(c_uint, n))) < @as(c_int, 8)) return 1;
    if (@as(c_int, @bitCast(@as(c_uint, n))) < @as(c_int, 12)) return 2;
    return 3;
}
pub export fn ShowPassword() void {
    _ = printf("\nPassword: %x%02x\n\nPress ENTER/RETURN to go\nback to the main menu.", @as(c_int, @bitCast(@as(c_uint, player))), @as(c_int, @bitCast(@as(c_uint, items))));
    _ = getchar();
    isGameOver = @as(c_int, 1) != 0;
}
pub export fn StartGame() void {
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, player)))) {
            @as(c_int, 0) => {
                Location0();
                return;
            },
            @as(c_int, 1) => {
                Location1();
                return;
            },
            @as(c_int, 2) => {
                Location2();
                return;
            },
            @as(c_int, 3) => {
                Location3();
                return;
            },
            @as(c_int, 4) => {
                Location4();
                return;
            },
            @as(c_int, 5) => {
                Location5();
                return;
            },
            @as(c_int, 6) => {
                Location6();
                return;
            },
            @as(c_int, 7) => {
                Location7();
                return;
            },
            @as(c_int, 8) => {
                Location8();
                return;
            },
            @as(c_int, 9) => {
                Location9();
                return;
            },
            @as(c_int, 10) => {
                LocationA();
                return;
            },
            @as(c_int, 11) => {
                LocationB();
                return;
            },
            @as(c_int, 12) => {
                LocationC();
                return;
            },
            @as(c_int, 13) => {
                LocationD();
                return;
            },
            @as(c_int, 14) => {
                LocationE();
                return;
            },
            else => {
                LocationF();
                return;
            },
        }
        break;
    }
}
pub export fn UpdateAI() void {
    const timer = struct {
        var static: u8 = @import("std").mem.zeroes(u8);
    };
    _ = &timer;
    input[@as(c_uint, @intCast(@as(c_int, 0)))] = 'l';
    timer.static = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, vampire))) - ((@as(c_int, @bitCast(@as(c_uint, vampire))) >> @intCast(4)) * @as(c_int, 16))))));
    vampire -%= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, timer.static)))))));
    if (!isDay and (@divTrunc(@as(c_int, @bitCast(@as(c_uint, vampire))), @as(c_int, 16)) == @as(c_int, @bitCast(@as(c_uint, player))))) {
        GameOver();
        return;
    }
    timer.static +%= 1;
    if (@as(c_int, @bitCast(@as(c_uint, timer.static))) == @as(c_int, 8)) {
        if (isDay) {
            _ = printf("\nThe sun sets, and the darkness brings\nan eerie silence...\n");
            vampire = 192;
        } else {
            _ = printf("\nThe sun rises.  You survived another\nnight...\n");
            vampire = 0;
            return;
        }
        isDay = !isDay;
    }
    if (isDay) {
        vampire +%= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, timer.static)))))));
        return;
    }
    vampire /= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 16)))));
    if (@as(c_int, @bitCast(@as(c_uint, Row(vampire)))) < @as(c_int, @bitCast(@as(c_uint, Row(player))))) {
        vampire +%= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 4)))));
    } else if (@as(c_int, @bitCast(@as(c_uint, Row(vampire)))) > @as(c_int, @bitCast(@as(c_uint, Row(player))))) {
        vampire -%= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 4)))));
    } else if (@as(c_int, @bitCast(@as(c_uint, vampire))) < @as(c_int, @bitCast(@as(c_uint, player)))) {
        vampire +%= 1;
    } else {
        vampire -%= 1;
    }
    if (@as(c_int, @bitCast(@as(c_uint, vampire))) == @as(c_int, @bitCast(@as(c_uint, player)))) {
        GameOver();
        return;
    }
    vampire *%= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 16)))));
    vampire +%= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, timer.static)))))));
}
pub export fn WaitForReturn() void {
    _ = printf("\n\nPress Enter/Return to continue...");
    _ = getchar();
}
pub export fn Input() void {
    var i: u8 = 0;
    _ = &i;
    while (@as(c_int, @bitCast(@as(c_uint, i))) < @as(c_int, 8)) {
        input[i] = @as(u8, @bitCast(@as(i8, @truncate(getchar()))));
        if (@as(c_int, @bitCast(@as(c_uint, input[i]))) == @as(c_int, '\n')) return;
        i +%= 1;
    }
}
pub export fn main() c_int {
    input[@as(c_uint, @intCast(@as(c_int, 0)))] = 'm';
    while (true) {
        isDay = @as(c_int, 1) != 0;
        isGameOver = @as(c_int, 0) != 0;
        player = 5;
        vampire = 0;
        items = 0;
        struck = @as(c_int, 0) != 0;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, input[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                @as(c_int, 109), @as(c_int, 77) => {
                    _ = printf("\n\nDARKEST HOUR\n\nMain Menu:\n    1. New Game\n    2. Enter Password\n    3. Help\n    4. Exit");
                    break;
                },
                @as(c_int, 49) => {
                    StartGame();
                    input[@as(c_uint, @intCast(@as(c_int, 0)))] = 'm';
                    continue;
                    Password();
                    input[@as(c_uint, @intCast(@as(c_int, 0)))] = 'm';
                    continue;
                    Help();
                    break;
                },
                @as(c_int, 50) => {
                    Password();
                    input[@as(c_uint, @intCast(@as(c_int, 0)))] = 'm';
                    continue;
                    Help();
                    break;
                },
                @as(c_int, 51) => {
                    Help();
                    break;
                },
                @as(c_int, 99), @as(c_int, 67) => {
                    Credits();
                    break;
                },
                @as(c_int, 52) => return 0,
                else => {
                    _ = printf("That's not on the menu.\nTo see the menu again, enter M.\n");
                },
            }
            break;
        }
        _ = printf("\n\nYour choice:  ");
        _ = fgets(@as([*c]u8, @ptrCast(@alignCast(&input))), @as(c_int, 8), stdin);
    }
    return 0;
}
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 18);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 7);
pub const __clang_version__ = "18.1.7 (https://github.com/ziglang/zig-bootstrap ec2dca85a340f134d2fcfdc9007e91f9abed6996)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 18.1.7 (https://github.com/ziglang/zig-bootstrap ec2dca85a340f134d2fcfdc9007e91f9abed6996)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @as(c_int, 128);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):95:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):101:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_uint;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 6.47517511943802511092443895822764655e-4966);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 33);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 36);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.92592994438723585305597794258492732e-34);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 113);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176508575932662800702e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626267781732175260e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __CHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WCHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):200:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):222:9
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):230:9
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __ELF__ = @as(c_int, 1);
pub const __AARCH64EL__ = @as(c_int, 1);
pub const __aarch64__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __AARCH64_CMODEL_SMALL__ = @as(c_int, 1);
pub const __ARM_ACLE = @as(c_int, 200);
pub const __ARM_ARCH = @as(c_int, 8);
pub const __ARM_ARCH_PROFILE = 'A';
pub const __ARM_64BIT_STATE = @as(c_int, 1);
pub const __ARM_PCS_AAPCS64 = @as(c_int, 1);
pub const __ARM_ARCH_ISA_A64 = @as(c_int, 1);
pub const __ARM_FEATURE_CLZ = @as(c_int, 1);
pub const __ARM_FEATURE_FMA = @as(c_int, 1);
pub const __ARM_FEATURE_LDREX = @as(c_int, 0xF);
pub const __ARM_FEATURE_IDIV = @as(c_int, 1);
pub const __ARM_FEATURE_DIV = @as(c_int, 1);
pub const __ARM_FEATURE_NUMERIC_MAXMIN = @as(c_int, 1);
pub const __ARM_FEATURE_DIRECTED_ROUNDING = @as(c_int, 1);
pub const __ARM_ALIGN_MAX_STACK_PWR = @as(c_int, 4);
pub const __ARM_STATE_ZA = @as(c_int, 1);
pub const __ARM_STATE_ZT0 = @as(c_int, 1);
pub const __ARM_FP = @as(c_int, 0xE);
pub const __ARM_FP16_FORMAT_IEEE = @as(c_int, 1);
pub const __ARM_FP16_ARGS = @as(c_int, 1);
pub const __ARM_SIZEOF_WCHAR_T = @as(c_int, 4);
pub const __ARM_SIZEOF_MINIMAL_ENUM = @as(c_int, 4);
pub const __ARM_NEON = @as(c_int, 1);
pub const __ARM_NEON_FP = @as(c_int, 0xE);
pub const __ARM_FEATURE_CRC32 = @as(c_int, 1);
pub const __ARM_FEATURE_RCPC = @as(c_int, 1);
pub const __ARM_FEATURE_CRYPTO = @as(c_int, 1);
pub const __ARM_FEATURE_AES = @as(c_int, 1);
pub const __ARM_FEATURE_SHA2 = @as(c_int, 1);
pub const __ARM_FEATURE_UNALIGNED = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_DOTPROD = @as(c_int, 1);
pub const __ARM_FEATURE_ATOMICS = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __FP_FAST_FMA = @as(c_int, 1);
pub const __FP_FAST_FMAF = @as(c_int, 1);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __GLIBC_MINOR__ = @as(c_int, 39);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const _DARKEST_HOUR_H = "";
pub const _STDIO_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /usr/include/features.h:188:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 0);
pub const __TIMESIZE = @as(c_int, 64);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C2X_STRTOL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    _ = &name;
    return __has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:55:10
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:216:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:217:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:225:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:256:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:263:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:265:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:268:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:298:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:309:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:315:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:325:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:332:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:338:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:347:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:348:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:356:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:366:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:379:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:389:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:401:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:414:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:423:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:441:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:450:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:468:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:469:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:512:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:561:10
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:638:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:639:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:653:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:654:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:699:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:700:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:701:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:711:10
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`");
// /usr/include/aarch64-linux-gnu/sys/cdefs.h:718:10
pub const __stub___compat_bdflush = "";
pub const __stub___compat_create_module = "";
pub const __stub___compat_get_kernel_syms = "";
pub const __stub___compat_query_module = "";
pub const __stub___compat_uselib = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const __need_size_t = "";
pub const __need_NULL = "";
pub const _SIZE_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __need___va_list = "";
pub const __GNUC_VA_LIST = "";
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'");
// /usr/include/aarch64-linux-gnu/bits/types.h:137:10
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __INO_T_TYPE = __ULONGWORD_TYPE;
pub const __OFF_T_TYPE = __SLONGWORD_TYPE;
pub const __RLIM_T_TYPE = __ULONGWORD_TYPE;
pub const __BLKCNT_T_TYPE = __SLONGWORD_TYPE;
pub const __FSBLKCNT_T_TYPE = __ULONGWORD_TYPE;
pub const __FSFILCNT_T_TYPE = __ULONGWORD_TYPE;
pub const __TIME_T_TYPE = __SLONGWORD_TYPE;
pub const __SUSECONDS_T_TYPE = __SLONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __U32_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSWORD_T_TYPE = __SWORD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SLONGWORD_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __S32_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /usr/include/aarch64-linux-gnu/bits/typesizes.h:72:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __CPU_MASK_TYPE = __ULONGWORD_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = __WORDSIZE == @as(c_int, 64);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:106:9
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const __cookie_io_functions_t_defined = @as(c_int, 1);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 1);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = __HAVE_FLOAT128;
pub const __HAVE_FLOAT64X_LONG_DOUBLE = __HAVE_FLOAT128;
pub const __f128 = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __CFLOAT128 = @compileError("unable to translate: TODO _Complex");
// /usr/include/aarch64-linux-gnu/bits/floatn.h:69:12
pub const __builtin_huge_valf128 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /usr/include/aarch64-linux-gnu/bits/floatn.h:85:12
pub const __builtin_inff128 = @compileError("unable to translate macro: undefined identifier `__builtin_infl`");
// /usr/include/aarch64-linux-gnu/bits/floatn.h:86:12
pub const __builtin_nanf128 = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`");
// /usr/include/aarch64-linux-gnu/bits/floatn.h:87:12
pub const __builtin_nansf128 = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`");
// /usr/include/aarch64-linux-gnu/bits/floatn.h:88:12
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:178:13
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    _ = &x;
    return __builtin_nanf(x);
}
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`");
// /usr/include/aarch64-linux-gnu/bits/floatn-common.h:292:13
pub const __need_wchar_t = "";
pub const _WCHAR_T = "";
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &status;
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    _ = &status;
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    _ = &status;
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    _ = &status;
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    _ = &status;
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    _ = &status;
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    _ = &status;
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    _ = &status;
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    _ = &status;
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    _ = &status;
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    _ = &status;
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    _ = &status;
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    _ = &status;
    return __WIFCONTINUED(status);
}
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`");
// /usr/include/aarch64-linux-gnu/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /usr/include/aarch64-linux-gnu/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /usr/include/aarch64-linux-gnu/bits/select.h:34:9
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &s;
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    _ = &d;
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    _ = &set;
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 64);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/aarch64-linux-gnu/bits/struct_mutex.h:77:10
pub const _RWLOCK_INTERNAL_H = "";
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:113:9
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const _STRING_H = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const _CTYPE_H = @as(c_int, 1);
pub inline fn _ISbit(bit: anytype) @TypeOf(if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8)) {
    _ = &bit;
    return if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8);
}
pub inline fn __isctype(c: anytype, @"type": anytype) @TypeOf(__ctype_b_loc().*[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    _ = &c;
    _ = &@"type";
    return __ctype_b_loc().*[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub inline fn __isascii(c: anytype) @TypeOf((c & ~@as(c_int, 0x7f)) == @as(c_int, 0)) {
    _ = &c;
    return (c & ~@as(c_int, 0x7f)) == @as(c_int, 0);
}
pub inline fn __toascii(c: anytype) @TypeOf(c & @as(c_int, 0x7f)) {
    _ = &c;
    return c & @as(c_int, 0x7f);
}
pub const __exctype = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/ctype.h:102:9
pub const __tobody = @compileError("unable to translate macro: undefined identifier `__res`");
// /usr/include/ctype.h:155:9
pub inline fn __isctype_l(c: anytype, @"type": anytype, locale: anytype) @TypeOf(locale.*.__ctype_b[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    _ = &c;
    _ = &@"type";
    _ = &locale;
    return locale.*.__ctype_b[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub const __exctype_l = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/ctype.h:244:10
pub inline fn __isalnum_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalnum, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISalnum, l);
}
pub inline fn __isalpha_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalpha, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISalpha, l);
}
pub inline fn __iscntrl_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _IScntrl, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _IScntrl, l);
}
pub inline fn __isdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISdigit, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISdigit, l);
}
pub inline fn __islower_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISlower, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISlower, l);
}
pub inline fn __isgraph_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISgraph, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISgraph, l);
}
pub inline fn __isprint_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISprint, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISprint, l);
}
pub inline fn __ispunct_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISpunct, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISpunct, l);
}
pub inline fn __isspace_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISspace, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISspace, l);
}
pub inline fn __isupper_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISupper, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISupper, l);
}
pub inline fn __isxdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISxdigit, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISxdigit, l);
}
pub inline fn __isblank_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISblank, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISblank, l);
}
pub inline fn __isascii_l(c: anytype, l: anytype) @TypeOf(__isascii(c)) {
    _ = &c;
    _ = &l;
    return blk_1: {
        _ = &l;
        break :blk_1 __isascii(c);
    };
}
pub inline fn __toascii_l(c: anytype, l: anytype) @TypeOf(__toascii(c)) {
    _ = &c;
    _ = &l;
    return blk_1: {
        _ = &l;
        break :blk_1 __toascii(c);
    };
}
pub inline fn isascii_l(c: anytype, l: anytype) @TypeOf(__isascii_l(c, l)) {
    _ = &c;
    _ = &l;
    return __isascii_l(c, l);
}
pub inline fn toascii_l(c: anytype, l: anytype) @TypeOf(__toascii_l(c, l)) {
    _ = &c;
    _ = &l;
    return __toascii_l(c, l);
}
pub const COLUMNS = @as(c_int, 40);
pub const APPLE2 = "";
pub const LOCATION_WOODS = @as(c_int, 0);
pub const LOCATION_SCHOOL = @as(c_int, 1);
pub const LOCATION_FRESH_MART = @as(c_int, 2);
pub const LOCATION_CHURCH = @as(c_int, 3);
pub const LOCATION_FIRE_HALL = @as(c_int, 4);
pub const LOCATION_NIKOS_TACOS = @as(c_int, 5);
pub const LOCATION_LIBRARY = @as(c_int, 6);
pub const LOCATION_CEMETERY = @as(c_int, 7);
pub const LOCATION_HOUSE1 = @as(c_int, 8);
pub const LOCATION_OLD_MAN = @as(c_int, 9);
pub const LOCATION_GYM = @as(c_int, 10);
pub const LOCATION_BRIDGE = @as(c_int, 11);
pub const LOCATION_VAMPS_HOUSE = @as(c_int, 12);
pub const LOCATION_HOUSE2 = @as(c_int, 13);
pub const LOCATION_BAR = @as(c_int, 14);
pub const LOCATION_PAWN_SHOP = @as(c_int, 15);
pub const EXIT_NORTH = @as(c_int, 1);
pub const EXIT_SOUTH = @as(c_int, 2);
pub const EXIT_EAST = @as(c_int, 4);
pub const EXIT_WEST = @as(c_int, 8);
pub const ITEM_BIBLE = @as(c_int, 1);
pub const ITEM_GARLIC = @as(c_int, 2);
pub const ITEM_CRUCIFIX = @as(c_int, 4);
pub const ITEM_STAKE = @as(c_int, 8);
pub const ITEM_PUMPKIN = @as(c_int, 16);
pub const ITEM_BULLETS = @as(c_int, 32);
pub const ITEM_RING = @as(c_int, 64);
pub const ITEM_MONEY = @as(c_int, 128);
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const _IO_cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const __locale_struct = struct___locale_struct;
