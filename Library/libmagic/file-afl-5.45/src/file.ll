; ModuleID = '.file.o.bc'
source_filename = "file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.anon.1 = type { i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.anon.3 = type { i8*, i64, i64, i8*, i32, i32 }
%struct.magic_set = type { [2 x %struct.mlist*], %struct.cont, %struct.out, i32, i32, i32, i32, i32, i8*, i64, i32, %struct.anon.0, %union.VALUETYPE, i16, i16, i16, i16, i16, i16, i64, i64, i64, %struct.__locale_struct* }
%struct.mlist = type { %struct.magic*, %struct.re_pattern_buffer**, i64, i8*, %struct.mlist*, %struct.mlist* }
%struct.magic = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %union.anon, %union.VALUETYPE, [64 x i8], [80 x i8], [8 x i8], [64 x i8] }
%union.anon = type { i64 }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.cont = type { i64, %struct.level_info* }
%struct.level_info = type { i32, i32, i32, i32 }
%struct.out = type { i8*, i64, i8* }
%struct.anon.0 = type { i8*, i64, i64, i64 }
%union.VALUETYPE = type { [2 x i64], [112 x i8] }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon.2 }
%union.anon.2 = type { i32 }

$main = comdat nodeduplicate

$file_setprogname = comdat nodeduplicate

$load = comdat nodeduplicate

$applyparam = comdat nodeduplicate

$file_getprogname = comdat nodeduplicate

$file_warnx = comdat nodeduplicate

$file_warn = comdat nodeduplicate

$file_mbswidth = comdat nodeduplicate

$process = comdat nodeduplicate

$file_err = comdat nodeduplicate

$docprint = comdat nodeduplicate

$sancov.module_ctor_trace_pc_guard = comdat any

@rcsid = internal constant [61 x i8] c"@(#)$File: file.c,v 1.215 2023/05/21 17:08:34 christos Exp $\00", align 16, !dbg !0
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@posixly = internal unnamed_addr global i32 0, align 4, !dbg !20
@.str.2 = private unnamed_addr constant [31 x i8] c"bcCde:Ef:F:hiklLm:nNpP:rsSvzZ0\00", align 1
@long_options = internal constant [31 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 1 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i32 0, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 1, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 1, i32* null, i32 6 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 1, i32* null, i32 70 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 0, i32* null, i32 2 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 0, i32* null, i32 3 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 0, i32* null, i32 4 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 0, i32* null, i32 5 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 0, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 78 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option zeroinitializer], align 16, !dbg !26
@nulsep = internal unnamed_addr global i32 0, align 4, !dbg !40
@bflag = internal unnamed_addr global i32 0, align 4, !dbg !42
@nv = internal unnamed_addr constant [13 x %struct.anon.1] [%struct.anon.1 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 32768 }, %struct.anon.1 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 131072 }, %struct.anon.1 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 262144 }, %struct.anon.1 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 4096 }, %struct.anon.1 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i32 524288 }, %struct.anon.1 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i32 65536 }, %struct.anon.1 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 2097152 }, %struct.anon.1 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 16384 }, %struct.anon.1 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i32 8192 }, %struct.anon.1 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 4194304 }, %struct.anon.1 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 8388608 }, %struct.anon.1 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 131072 }, %struct.anon.1 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 1048576 }], align 16, !dbg !44
@optarg = external local_unnamed_addr global i8*, align 8
@separator = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), align 8, !dbg !54
@nobuffer = internal unnamed_addr global i32 0, align 4, !dbg !56
@nopad = internal unnamed_addr global i32 0, align 4, !dbg !58
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%s-%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"5.45\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"magic file from %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"Compiled magic version [%d] does not match with shared library magic version [%d]\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Can't create magic\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@file_progname = internal unnamed_addr global i8* null, align 8, !dbg !22
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" (%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"magic-file\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"uncompress\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"uncompress-noreport\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"brief\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"checking-printout\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"exclude\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"exclude-quiet\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"files-from\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"mime\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"mime-type\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"mime-encoding\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"keep-going\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"dereference\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"no-dereference\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"no-buffer\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"no-pad\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"print0\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"preserve-date\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"special-files\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"no-sandbox\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"compile\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"apptype\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"cdf\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"csv\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"elf\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"simh\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c":\00", align 1
@pm = internal global [9 x %struct.anon.3] [%struct.anon.3 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i64 0, i64 7340032, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0), i32 6, i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i64 0, i64 256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i32 0, i32 0), i32 4, i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i64 0, i64 2048, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i32 0, i32 0), i32 2, i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i64 0, i64 32768, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i32 3, i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i64 0, i64 134217728, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i32 8, i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i64 0, i64 65536, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), i32 7, i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i64 0, i64 50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.69, i32 0, i32 0), i32 0, i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i64 0, i64 50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0), i32 1, i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i64 0, i64 8192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i32 0, i32 0), i32 5, i32 0 }], align 16, !dbg !60
@.str.56 = private unnamed_addr constant [13 x i8] c"Can't set %s\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"max bytes to look inside file\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"elf_notes\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"max ELF notes processed\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"elf_phnum\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"max ELF prog sections processed\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"elf_shnum\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"max ELF sections processed\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"elf_shsize\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"max ELF section size\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"max bytes to scan for encoding\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"indir\00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"recursion limit for indirection\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"use limit for name/use magic\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"length limit for REGEX searches\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"Unknown param %s\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.76 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"Cannot open `%s'\00", align 1
@.str.78 = private unnamed_addr constant [37 x i8] c"Cannot allocate memory for file list\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"/dev/stdin\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"%*s \00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"ERROR: %s%c\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"%lc\00", align 1
@.str.84 = private unnamed_addr constant [297 x i8] c"Usage: %s [-bcCdEhikLlNnprsSvzZ0] [--apple] [--extension] [--mime-encoding]\0A            [--mime-type] [-e <testname>] [-F <separator>]  [-f <namefile>]\0A            [-m <magicfiles>] [-P <parameter=value>] [--exclude-quiet]\0A            <file> ...\0A       %s -C [-m <magicfiles>]\0A       %s [--help]\0A\00", align 1
@.str.85 = private unnamed_addr constant [61 x i8] c"Usage: file [OPTION...] [FILE...]\0ADetermine type of FILEs.\0A\0A\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"      --help\00", align 1
@.str.87 = private unnamed_addr constant [45 x i8] c"                 display this help and exit\0A\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"  -%c, --version\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"              output version information and exit\0A\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"  -%c, --magic-file\00", align 1
@.str.91 = private unnamed_addr constant [100 x i8] c" LIST      use LIST as a colon-separated list of magic\0A                               number files\0A\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"  -%c, --uncompress\00", align 1
@.str.93 = private unnamed_addr constant [48 x i8] c"           try to look inside compressed files\0A\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"  -%c, --uncompress-noreport\00", align 1
@.str.95 = private unnamed_addr constant [47 x i8] c"  only print the contents of compressed files\0A\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"  -%c, --brief\00", align 1
@.str.97 = private unnamed_addr constant [58 x i8] c"                do not prepend filenames to output lines\0A\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"  -%c, --checking-printout\00", align 1
@.str.99 = private unnamed_addr constant [182 x i8] c"    print the parsed form of the magic file, use in\0A                               conjunction with -m to debug a new magic file\0A                               before installing it\0A\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"  -%c, --exclude\00", align 1
@.str.101 = private unnamed_addr constant [158 x i8] c" TEST         exclude TEST from the list of test to be\0A                               performed for file. Valid tests are:\0A                               %e\0A\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"      --exclude-quiet\00", align 1
@.str.103 = private unnamed_addr constant [48 x i8] c" TEST   like exclude, but ignore unknown tests\0A\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"  -%c, --files-from\00", align 1
@.str.105 = private unnamed_addr constant [56 x i8] c" FILE      read the filenames to be examined from FILE\0A\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"  -%c, --separator\00", align 1
@.str.107 = private unnamed_addr constant [52 x i8] c" STRING     use string as separator instead of `:'\0A\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"  -%c, --mime\00", align 1
@.str.109 = private unnamed_addr constant [108 x i8] c"                 output MIME type strings (--mime-type and\0A                               --mime-encoding)\0A\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"      --apple\00", align 1
@.str.111 = private unnamed_addr constant [47 x i8] c"                output the Apple CREATOR/TYPE\0A\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"      --extension\00", align 1
@.str.113 = private unnamed_addr constant [57 x i8] c"            output a slash-separated list of extensions\0A\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"      --mime-type\00", align 1
@.str.115 = private unnamed_addr constant [34 x i8] c"            output the MIME type\0A\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c"      --mime-encoding\00", align 1
@.str.117 = private unnamed_addr constant [34 x i8] c"        output the MIME encoding\0A\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"  -%c, --keep-going\00", align 1
@.str.119 = private unnamed_addr constant [42 x i8] c"           don't stop at the first match\0A\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"  -%c, --list\00", align 1
@.str.121 = private unnamed_addr constant [38 x i8] c"                 list magic strength\0A\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"  -%c, --dereference\00", align 1
@.str.123 = private unnamed_addr constant [62 x i8] c"          follow symlinks (default if POSIXLY_CORRECT is set)\00", align 1
@.str.124 = private unnamed_addr constant [24 x i8] c"  -%c, --no-dereference\00", align 1
@.str.125 = private unnamed_addr constant [69 x i8] c"       don't follow symlinks (default if POSIXLY_CORRECT is not set)\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"  -%c, --no-buffer\00", align 1
@.str.127 = private unnamed_addr constant [34 x i8] c"            do not buffer output\0A\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"  -%c, --no-pad\00", align 1
@.str.129 = private unnamed_addr constant [34 x i8] c"               do not pad output\0A\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"  -%c, --print0\00", align 1
@.str.131 = private unnamed_addr constant [51 x i8] c"               terminate filenames with ASCII NUL\0A\00", align 1
@.str.132 = private unnamed_addr constant [23 x i8] c"  -%c, --preserve-date\00", align 1
@.str.133 = private unnamed_addr constant [40 x i8] c"        preserve access times on files\0A\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"  -%c, --parameter\00", align 1
@.str.135 = private unnamed_addr constant [80 x i8] c"            set file engine parameter limits\0A                               %P\0A\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"  -%c, --raw\00", align 1
@.str.137 = private unnamed_addr constant [61 x i8] c"                  don't translate unprintable chars to \\ooo\0A\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"  -%c, --special-files\00", align 1
@.str.139 = private unnamed_addr constant [96 x i8] c"        treat special (block/char devices) files as\0A                             ordinary ones\0A\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"  -%c, --no-sandbox\00", align 1
@.str.141 = private unnamed_addr constant [43 x i8] c"           disable system call sandboxing\0A\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"  -%c, --compile\00", align 1
@.str.143 = private unnamed_addr constant [44 x i8] c"              compile file specified by -m\0A\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"  -%c, --debug\00", align 1
@.str.145 = private unnamed_addr constant [42 x i8] c"                print debugging messages\0A\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c",\0A%*s\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"%9s %7zu %s\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"\0A%*s\00", align 1
@.str.153 = private unnamed_addr constant [36 x i8] c"Unknown escape `%c' in long options\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@str = private unnamed_addr constant [41 x i8] c"\0AReport bugs to https://bugs.astron.com/\00", align 1
@__afl_area_ptr = external global i8*
@__sancov_gen_ = private global [118 x i32] zeroinitializer, section "__sancov_guards", comdat($main), align 4
@__sancov_gen_.155 = private global [1 x i32] zeroinitializer, section "__sancov_guards", comdat($file_setprogname), align 4
@__sancov_gen_.156 = private global [5 x i32] zeroinitializer, section "__sancov_guards", comdat($load), align 4
@__sancov_gen_.157 = private global [28 x i32] zeroinitializer, section "__sancov_guards", comdat($applyparam), align 4
@__sancov_gen_.158 = private global [1 x i32] zeroinitializer, section "__sancov_guards", comdat($file_getprogname), align 4
@__sancov_gen_.159 = private global [1 x i32] zeroinitializer, section "__sancov_guards", comdat($file_warnx), align 4
@__sancov_gen_.160 = private global [3 x i32] zeroinitializer, section "__sancov_guards", comdat($file_warn), align 4
@__sancov_gen_.161 = private global [10 x i32] zeroinitializer, section "__sancov_guards", comdat($file_mbswidth), align 4
@__sancov_gen_.162 = private global [28 x i32] zeroinitializer, section "__sancov_guards", comdat($process), align 4
@__sancov_gen_.163 = private global [3 x i32] zeroinitializer, section "__sancov_guards", comdat($file_err), align 4
@__sancov_gen_.164 = private global [20 x i32] zeroinitializer, section "__sancov_guards", comdat($docprint), align 4
@__start___sancov_guards = extern_weak hidden global i32*
@__stop___sancov_guards = extern_weak hidden global i32*
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor_trace_pc_guard, i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*) }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*)], section "llvm.metadata"
@llvm.compiler.used = appending global [12 x i8*] [i8* getelementptr inbounds ([61 x i8], [61 x i8]* @rcsid, i32 0, i32 0), i8* bitcast ([118 x i32]* @__sancov_gen_ to i8*), i8* bitcast ([1 x i32]* @__sancov_gen_.155 to i8*), i8* bitcast ([5 x i32]* @__sancov_gen_.156 to i8*), i8* bitcast ([28 x i32]* @__sancov_gen_.157 to i8*), i8* bitcast ([1 x i32]* @__sancov_gen_.158 to i8*), i8* bitcast ([1 x i32]* @__sancov_gen_.159 to i8*), i8* bitcast ([3 x i32]* @__sancov_gen_.160 to i8*), i8* bitcast ([10 x i32]* @__sancov_gen_.161 to i8*), i8* bitcast ([28 x i32]* @__sancov_gen_.162 to i8*), i8* bitcast ([3 x i32]* @__sancov_gen_.163 to i8*), i8* bitcast ([20 x i32]* @__sancov_gen_.164 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define hidden i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #0 comdat !dbg !82 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds ([118 x i32], [118 x i32]* @__sancov_gen_, i32 0, i32 0), align 4, !dbg !293, !nosanitize !294
  %7 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !293, !nosanitize !294
  %8 = getelementptr i8, i8* %7, i32 %6, !dbg !293
  %9 = load i8, i8* %8, align 1, !dbg !293, !nosanitize !294
  %10 = add i8 %9, 1, !dbg !293
  %11 = icmp eq i8 %10, 0, !dbg !293
  %12 = zext i1 %11 to i8, !dbg !293
  %13 = add i8 %10, %12, !dbg !293
  store i8 %13, i8* %8, align 1, !dbg !293, !nosanitize !294
  call void @llvm.dbg.value(metadata i32 %0, metadata !86, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8** %1, metadata !87, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 0, metadata !94, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 0, metadata !95, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 0, metadata !97, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata %struct.magic_set* null, metadata !98, metadata !DIExpression()), !dbg !295
  %14 = bitcast i32* %5 to i8*, !dbg !296
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #19, !dbg !296
  call void @llvm.dbg.value(metadata i8* null, metadata !290, metadata !DIExpression()), !dbg !295
  %15 = tail call i8* @setlocale(i32 noundef 0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #19, !dbg !297
  %16 = load i8*, i8** %1, align 8, !dbg !298, !tbaa !300
  %17 = tail call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %16, i32 noundef 47) #20, !dbg !304
  call void @llvm.dbg.value(metadata i8* %17, metadata !291, metadata !DIExpression()), !dbg !295
  %18 = icmp eq i8* %17, null, !dbg !305
  %19 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !306
  %20 = select i1 %18, i8* %16, i8* %19, !dbg !306
  %21 = select i1 %18, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 428) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 432) to i32*), !dbg !295
  %22 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !295, !nosanitize !294
  %23 = load i32, i32* %21, align 4, !dbg !295, !nosanitize !294
  %24 = getelementptr i8, i8* %22, i32 %23, !dbg !295
  %25 = load i8, i8* %24, align 1, !dbg !295, !nosanitize !294
  %26 = add i8 %25, 1, !dbg !295
  %27 = icmp eq i8 %26, 0, !dbg !295
  %28 = zext i1 %27 to i8, !dbg !295
  %29 = add i8 %26, %28, !dbg !295
  store i8 %29, i8* %24, align 1, !dbg !295, !nosanitize !294
  call void @llvm.dbg.value(metadata i8* %20, metadata !291, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8* %20, metadata !307, metadata !DIExpression()), !dbg !312
  store i8* %20, i8** @file_progname, align 8, !dbg !314, !tbaa !300
  %30 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #19, !dbg !315
  %31 = icmp ne i8* %30, null, !dbg !316
  %32 = zext i1 %31 to i32, !dbg !316
  store i32 %32, i32* @posixly, align 4, !dbg !317, !tbaa !318
  %33 = select i1 %31, i32 2, i32 0, !dbg !320
  %34 = select i1 %31, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 436) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 440) to i32*), !dbg !295
  %35 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !295, !nosanitize !294
  %36 = load i32, i32* %34, align 4, !dbg !295, !nosanitize !294
  %37 = getelementptr i8, i8* %35, i32 %36, !dbg !295
  %38 = load i8, i8* %37, align 1, !dbg !295, !nosanitize !294
  %39 = add i8 %38, 1, !dbg !295
  %40 = icmp eq i8 %39, 0, !dbg !295
  %41 = zext i1 %40 to i8, !dbg !295
  %42 = add i8 %39, %41, !dbg !295
  store i8 %42, i8* %37, align 1, !dbg !295, !nosanitize !294
  call void @llvm.dbg.value(metadata i32 %33, metadata !96, metadata !DIExpression()), !dbg !295
  %43 = bitcast i8** %3 to i8*
  %44 = bitcast i64* %4 to i8*
  br label %45, !dbg !321

45:                                               ; preds = %392, %2
  %46 = phi i32 [ 0, %2 ], [ %393, %392 ], !dbg !322
  %47 = phi i32 [ 0, %2 ], [ %394, %392 ], !dbg !323
  %48 = phi i32 [ 0, %2 ], [ %395, %392 ], !dbg !295
  %49 = phi i32 [ %33, %2 ], [ %396, %392 ], !dbg !324
  %50 = phi i32 [ 0, %2 ], [ %397, %392 ], !dbg !325
  %51 = phi %struct.magic_set* [ null, %2 ], [ %398, %392 ], !dbg !326
  %52 = phi i8* [ null, %2 ], [ %399, %392 ], !dbg !327
  call void @llvm.dbg.value(metadata i8* %52, metadata !290, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata %struct.magic_set* %51, metadata !98, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %50, metadata !97, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %49, metadata !96, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %48, metadata !95, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %47, metadata !94, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %46, metadata !93, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32* %5, metadata !289, metadata !DIExpression(DW_OP_deref)), !dbg !295
  %53 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([31 x %struct.option], [31 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef nonnull %5) #19, !dbg !328
  call void @llvm.dbg.value(metadata i32 %53, metadata !88, metadata !DIExpression()), !dbg !295
  switch i32 %53, label %1045 [
    i32 -1, label %1055
    i32 1, label %81
    i32 2, label %123
    i32 3, label %133
    i32 4, label %143
    i32 5, label %153
    i32 48, label %163
    i32 98, label %174
    i32 99, label %185
    i32 67, label %194
    i32 100, label %203
    i32 69, label %213
    i32 101, label %72
    i32 6, label %63
    i32 102, label %405
    i32 70, label %725
    i32 105, label %735
    i32 107, label %745
    i32 108, label %755
    i32 109, label %764
    i32 110, label %774
    i32 78, label %785
    i32 112, label %796
    i32 80, label %806
    i32 114, label %957
    i32 115, label %967
    i32 83, label %54
    i32 118, label %977
    i32 122, label %1005
    i32 90, label %1015
    i32 76, label %1025
    i32 104, label %1035
  ], !dbg !321

54:                                               ; preds = %45
  %55 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 4) to i32*), align 4, !dbg !321, !nosanitize !294
  %56 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !321, !nosanitize !294
  %57 = getelementptr i8, i8* %56, i32 %55, !dbg !321
  %58 = load i8, i8* %57, align 1, !dbg !321, !nosanitize !294
  %59 = add i8 %58, 1, !dbg !321
  %60 = icmp eq i8 %59, 0, !dbg !321
  %61 = zext i1 %60 to i8, !dbg !321
  %62 = add i8 %59, %61, !dbg !321
  store i8 %62, i8* %57, align 1, !dbg !321, !nosanitize !294
  br label %392, !dbg !321

63:                                               ; preds = %45
  %64 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 8) to i32*), align 4, !dbg !321, !nosanitize !294
  %65 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !321, !nosanitize !294
  %66 = getelementptr i8, i8* %65, i32 %64, !dbg !321
  %67 = load i8, i8* %66, align 1, !dbg !321, !nosanitize !294
  %68 = add i8 %67, 1, !dbg !321
  %69 = icmp eq i8 %68, 0, !dbg !321
  %70 = zext i1 %69 to i8, !dbg !321
  %71 = add i8 %68, %70, !dbg !321
  store i8 %71, i8* %66, align 1, !dbg !321, !nosanitize !294
  br label %223, !dbg !321

72:                                               ; preds = %45
  %73 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 12) to i32*), align 4, !dbg !321, !nosanitize !294
  %74 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !321, !nosanitize !294
  %75 = getelementptr i8, i8* %74, i32 %73, !dbg !321
  %76 = load i8, i8* %75, align 1, !dbg !321, !nosanitize !294
  %77 = add i8 %76, 1, !dbg !321
  %78 = icmp eq i8 %77, 0, !dbg !321
  %79 = zext i1 %78 to i8, !dbg !321
  %80 = add i8 %77, %79, !dbg !321
  store i8 %80, i8* %75, align 1, !dbg !321, !nosanitize !294
  br label %223, !dbg !321

81:                                               ; preds = %45
  %82 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 16) to i32*), align 4, !dbg !329, !nosanitize !294
  %83 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !329, !nosanitize !294
  %84 = getelementptr i8, i8* %83, i32 %82, !dbg !329
  %85 = load i8, i8* %84, align 1, !dbg !329, !nosanitize !294
  %86 = add i8 %85, 1, !dbg !329
  %87 = icmp eq i8 %86, 0, !dbg !329
  %88 = zext i1 %87 to i8, !dbg !329
  %89 = add i8 %86, %88, !dbg !329
  store i8 %89, i8* %84, align 1, !dbg !329, !nosanitize !294
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !329, !tbaa !300
  %91 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.85, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %90) #19, !dbg !335
  %92 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i64 0, i64 0)) #19, !dbg !336
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.87, i64 0, i64 0), i32 noundef 0) #19, !dbg !336
  %93 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i64 0, i64 0), i32 noundef 118) #19, !dbg !339
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.89, i64 0, i64 0), i32 noundef 0) #19, !dbg !339
  %94 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i64 0, i64 0), i32 noundef 109) #19, !dbg !340
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.91, i64 0, i64 0), i32 noundef 0) #19, !dbg !340
  %95 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i64 0, i64 0), i32 noundef 122) #19, !dbg !341
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.93, i64 0, i64 0), i32 noundef 0) #19, !dbg !341
  %96 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.94, i64 0, i64 0), i32 noundef 90) #19, !dbg !342
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.95, i64 0, i64 0), i32 noundef 0) #19, !dbg !342
  %97 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i64 0, i64 0), i32 noundef 98) #19, !dbg !343
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.97, i64 0, i64 0), i32 noundef 0) #19, !dbg !343
  %98 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i32 noundef 99) #19, !dbg !344
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([182 x i8], [182 x i8]* @.str.99, i64 0, i64 0), i32 noundef 0) #19, !dbg !344
  %99 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.100, i64 0, i64 0), i32 noundef 101) #19, !dbg !345
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([158 x i8], [158 x i8]* @.str.101, i64 0, i64 0), i32 noundef 0) #19, !dbg !345
  %100 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i64 0, i64 0)) #19, !dbg !346
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.103, i64 0, i64 0), i32 noundef 0) #19, !dbg !346
  %101 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i64 0, i64 0), i32 noundef 102) #19, !dbg !347
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.105, i64 0, i64 0), i32 noundef 0) #19, !dbg !347
  %102 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i64 0, i64 0), i32 noundef 70) #19, !dbg !348
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.107, i64 0, i64 0), i32 noundef 0) #19, !dbg !348
  %103 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.108, i64 0, i64 0), i32 noundef 105) #19, !dbg !349
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.109, i64 0, i64 0), i32 noundef 0) #19, !dbg !349
  %104 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i64 0, i64 0)) #19, !dbg !350
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.111, i64 0, i64 0), i32 noundef 0) #19, !dbg !350
  %105 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.112, i64 0, i64 0)) #19, !dbg !351
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.113, i64 0, i64 0), i32 noundef 0) #19, !dbg !351
  %106 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i64 0, i64 0)) #19, !dbg !352
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.115, i64 0, i64 0), i32 noundef 0) #19, !dbg !352
  %107 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.116, i64 0, i64 0)) #19, !dbg !353
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.117, i64 0, i64 0), i32 noundef 0) #19, !dbg !353
  %108 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.118, i64 0, i64 0), i32 noundef 107) #19, !dbg !354
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.119, i64 0, i64 0), i32 noundef 0) #19, !dbg !354
  %109 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i64 0, i64 0), i32 noundef 108) #19, !dbg !355
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.121, i64 0, i64 0), i32 noundef 0) #19, !dbg !355
  %110 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i64 0, i64 0), i32 noundef 76) #19, !dbg !356
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.123, i64 0, i64 0), i32 noundef 1) #19, !dbg !356
  %111 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0), i32 noundef 104) #19, !dbg !357
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.125, i64 0, i64 0), i32 noundef 2) #19, !dbg !357
  %112 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.126, i64 0, i64 0), i32 noundef 110) #19, !dbg !358
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.127, i64 0, i64 0), i32 noundef 0) #19, !dbg !358
  %113 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.128, i64 0, i64 0), i32 noundef 78) #19, !dbg !359
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.129, i64 0, i64 0), i32 noundef 0) #19, !dbg !359
  %114 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.130, i64 0, i64 0), i32 noundef 48) #19, !dbg !360
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.131, i64 0, i64 0), i32 noundef 0) #19, !dbg !360
  %115 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.132, i64 0, i64 0), i32 noundef 112) #19, !dbg !361
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.133, i64 0, i64 0), i32 noundef 0) #19, !dbg !361
  %116 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.134, i64 0, i64 0), i32 noundef 80) #19, !dbg !362
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.135, i64 0, i64 0), i32 noundef 0) #19, !dbg !362
  %117 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i64 0, i64 0), i32 noundef 114) #19, !dbg !363
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.137, i64 0, i64 0), i32 noundef 0) #19, !dbg !363
  %118 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.138, i64 0, i64 0), i32 noundef 115) #19, !dbg !364
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.139, i64 0, i64 0), i32 noundef 0) #19, !dbg !364
  %119 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.140, i64 0, i64 0), i32 noundef 83) #19, !dbg !365
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.141, i64 0, i64 0), i32 noundef 0) #19, !dbg !365
  %120 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.142, i64 0, i64 0), i32 noundef 67) #19, !dbg !366
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.143, i64 0, i64 0), i32 noundef 0) #19, !dbg !366
  %121 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i64 0, i64 0), i32 noundef 100) #19, !dbg !367
  call fastcc void @docprint(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.145, i64 0, i64 0), i32 noundef 0) #19, !dbg !367
  %122 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @str, i64 0, i64 0)) #19, !dbg !368
  call void @exit(i32 noundef 0) #21, !dbg !370
  unreachable, !dbg !370

123:                                              ; preds = %45
  %124 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 20) to i32*), align 4, !dbg !371, !nosanitize !294
  %125 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !371, !nosanitize !294
  %126 = getelementptr i8, i8* %125, i32 %124, !dbg !371
  %127 = load i8, i8* %126, align 1, !dbg !371, !nosanitize !294
  %128 = add i8 %127, 1, !dbg !371
  %129 = icmp eq i8 %128, 0, !dbg !371
  %130 = zext i1 %129 to i8, !dbg !371
  %131 = add i8 %128, %130, !dbg !371
  store i8 %131, i8* %126, align 1, !dbg !371, !nosanitize !294
  %132 = or i32 %49, 2048, !dbg !371
  call void @llvm.dbg.value(metadata i32 %132, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !372

133:                                              ; preds = %45
  %134 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 24) to i32*), align 4, !dbg !373, !nosanitize !294
  %135 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !373, !nosanitize !294
  %136 = getelementptr i8, i8* %135, i32 %134, !dbg !373
  %137 = load i8, i8* %136, align 1, !dbg !373, !nosanitize !294
  %138 = add i8 %137, 1, !dbg !373
  %139 = icmp eq i8 %138, 0, !dbg !373
  %140 = zext i1 %139 to i8, !dbg !373
  %141 = add i8 %138, %140, !dbg !373
  store i8 %141, i8* %136, align 1, !dbg !373, !nosanitize !294
  %142 = or i32 %49, 16777216, !dbg !373
  call void @llvm.dbg.value(metadata i32 %142, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !374

143:                                              ; preds = %45
  %144 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 28) to i32*), align 4, !dbg !375, !nosanitize !294
  %145 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !375, !nosanitize !294
  %146 = getelementptr i8, i8* %145, i32 %144, !dbg !375
  %147 = load i8, i8* %146, align 1, !dbg !375, !nosanitize !294
  %148 = add i8 %147, 1, !dbg !375
  %149 = icmp eq i8 %148, 0, !dbg !375
  %150 = zext i1 %149 to i8, !dbg !375
  %151 = add i8 %148, %150, !dbg !375
  store i8 %151, i8* %146, align 1, !dbg !375, !nosanitize !294
  %152 = or i32 %49, 16, !dbg !375
  call void @llvm.dbg.value(metadata i32 %152, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !376

153:                                              ; preds = %45
  %154 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 32) to i32*), align 4, !dbg !377, !nosanitize !294
  %155 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !377, !nosanitize !294
  %156 = getelementptr i8, i8* %155, i32 %154, !dbg !377
  %157 = load i8, i8* %156, align 1, !dbg !377, !nosanitize !294
  %158 = add i8 %157, 1, !dbg !377
  %159 = icmp eq i8 %158, 0, !dbg !377
  %160 = zext i1 %159 to i8, !dbg !377
  %161 = add i8 %158, %160, !dbg !377
  store i8 %161, i8* %156, align 1, !dbg !377, !nosanitize !294
  %162 = or i32 %49, 1024, !dbg !377
  call void @llvm.dbg.value(metadata i32 %162, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !378

163:                                              ; preds = %45
  %164 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 36) to i32*), align 4, !dbg !379, !nosanitize !294
  %165 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !379, !nosanitize !294
  %166 = getelementptr i8, i8* %165, i32 %164, !dbg !379
  %167 = load i8, i8* %166, align 1, !dbg !379, !nosanitize !294
  %168 = add i8 %167, 1, !dbg !379
  %169 = icmp eq i8 %168, 0, !dbg !379
  %170 = zext i1 %169 to i8, !dbg !379
  %171 = add i8 %168, %170, !dbg !379
  store i8 %171, i8* %166, align 1, !dbg !379, !nosanitize !294
  %172 = load i32, i32* @nulsep, align 4, !dbg !379, !tbaa !318
  %173 = add nsw i32 %172, 1, !dbg !379
  store i32 %173, i32* @nulsep, align 4, !dbg !379, !tbaa !318
  br label %392, !dbg !380

174:                                              ; preds = %45
  %175 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 40) to i32*), align 4, !dbg !381, !nosanitize !294
  %176 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !381, !nosanitize !294
  %177 = getelementptr i8, i8* %176, i32 %175, !dbg !381
  %178 = load i8, i8* %177, align 1, !dbg !381, !nosanitize !294
  %179 = add i8 %178, 1, !dbg !381
  %180 = icmp eq i8 %179, 0, !dbg !381
  %181 = zext i1 %180 to i8, !dbg !381
  %182 = add i8 %179, %181, !dbg !381
  store i8 %182, i8* %177, align 1, !dbg !381, !nosanitize !294
  %183 = load i32, i32* @bflag, align 4, !dbg !381, !tbaa !318
  %184 = add nsw i32 %183, 1, !dbg !381
  store i32 %184, i32* @bflag, align 4, !dbg !381, !tbaa !318
  br label %392, !dbg !382

185:                                              ; preds = %45
  %186 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 44) to i32*), align 4, !dbg !295, !nosanitize !294
  %187 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !295, !nosanitize !294
  %188 = getelementptr i8, i8* %187, i32 %186, !dbg !295
  %189 = load i8, i8* %188, align 1, !dbg !295, !nosanitize !294
  %190 = add i8 %189, 1, !dbg !295
  %191 = icmp eq i8 %190, 0, !dbg !295
  %192 = zext i1 %191 to i8, !dbg !295
  %193 = add i8 %190, %192, !dbg !295
  store i8 %193, i8* %188, align 1, !dbg !295, !nosanitize !294
  call void @llvm.dbg.value(metadata i32 1, metadata !93, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !383

194:                                              ; preds = %45
  %195 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 48) to i32*), align 4, !dbg !295, !nosanitize !294
  %196 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !295, !nosanitize !294
  %197 = getelementptr i8, i8* %196, i32 %195, !dbg !295
  %198 = load i8, i8* %197, align 1, !dbg !295, !nosanitize !294
  %199 = add i8 %198, 1, !dbg !295
  %200 = icmp eq i8 %199, 0, !dbg !295
  %201 = zext i1 %200 to i8, !dbg !295
  %202 = add i8 %199, %201, !dbg !295
  store i8 %202, i8* %197, align 1, !dbg !295, !nosanitize !294
  call void @llvm.dbg.value(metadata i32 2, metadata !93, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !384

203:                                              ; preds = %45
  %204 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 52) to i32*), align 4, !dbg !385, !nosanitize !294
  %205 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !385, !nosanitize !294
  %206 = getelementptr i8, i8* %205, i32 %204, !dbg !385
  %207 = load i8, i8* %206, align 1, !dbg !385, !nosanitize !294
  %208 = add i8 %207, 1, !dbg !385
  %209 = icmp eq i8 %208, 0, !dbg !385
  %210 = zext i1 %209 to i8, !dbg !385
  %211 = add i8 %208, %210, !dbg !385
  store i8 %211, i8* %206, align 1, !dbg !385, !nosanitize !294
  %212 = or i32 %49, 65, !dbg !385
  call void @llvm.dbg.value(metadata i32 %212, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !386

213:                                              ; preds = %45
  %214 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 56) to i32*), align 4, !dbg !387, !nosanitize !294
  %215 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !387, !nosanitize !294
  %216 = getelementptr i8, i8* %215, i32 %214, !dbg !387
  %217 = load i8, i8* %216, align 1, !dbg !387, !nosanitize !294
  %218 = add i8 %217, 1, !dbg !387
  %219 = icmp eq i8 %218, 0, !dbg !387
  %220 = zext i1 %219 to i8, !dbg !387
  %221 = add i8 %218, %220, !dbg !387
  store i8 %221, i8* %216, align 1, !dbg !387, !nosanitize !294
  %222 = or i32 %49, 512, !dbg !387
  call void @llvm.dbg.value(metadata i32 %222, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !388

223:                                              ; preds = %63, %72
  call void @llvm.dbg.value(metadata i64 0, metadata !89, metadata !DIExpression()), !dbg !295
  %224 = load i8*, i8** @optarg, align 8, !tbaa !300
  call void @llvm.dbg.value(metadata i64 0, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 0, metadata !89, metadata !DIExpression()), !dbg !295
  %225 = call i32 @strcmp(i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %226 = icmp eq i32 %225, 0, !dbg !393
  br i1 %226, label %227, label %236, !dbg !394

227:                                              ; preds = %223
  %228 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 60) to i32*), align 4, !dbg !394, !nosanitize !294
  %229 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %230 = getelementptr i8, i8* %229, i32 %228, !dbg !394
  %231 = load i8, i8* %230, align 1, !dbg !394, !nosanitize !294
  %232 = add i8 %231, 1, !dbg !394
  %233 = icmp eq i8 %232, 0, !dbg !394
  %234 = zext i1 %233 to i8, !dbg !394
  %235 = add i8 %232, %234, !dbg !394
  store i8 %235, i8* %230, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

236:                                              ; preds = %223
  call void @llvm.dbg.value(metadata i64 1, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 1, metadata !89, metadata !DIExpression()), !dbg !295
  %237 = call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %238 = icmp eq i32 %237, 0, !dbg !393
  br i1 %238, label %239, label %248, !dbg !394

239:                                              ; preds = %236
  %240 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 64) to i32*), align 4, !dbg !394, !nosanitize !294
  %241 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %242 = getelementptr i8, i8* %241, i32 %240, !dbg !394
  %243 = load i8, i8* %242, align 1, !dbg !394, !nosanitize !294
  %244 = add i8 %243, 1, !dbg !394
  %245 = icmp eq i8 %244, 0, !dbg !394
  %246 = zext i1 %245 to i8, !dbg !394
  %247 = add i8 %244, %246, !dbg !394
  store i8 %247, i8* %242, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

248:                                              ; preds = %236
  call void @llvm.dbg.value(metadata i64 2, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 2, metadata !89, metadata !DIExpression()), !dbg !295
  %249 = call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %250 = icmp eq i32 %249, 0, !dbg !393
  br i1 %250, label %251, label %260, !dbg !394

251:                                              ; preds = %248
  %252 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 68) to i32*), align 4, !dbg !394, !nosanitize !294
  %253 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %254 = getelementptr i8, i8* %253, i32 %252, !dbg !394
  %255 = load i8, i8* %254, align 1, !dbg !394, !nosanitize !294
  %256 = add i8 %255, 1, !dbg !394
  %257 = icmp eq i8 %256, 0, !dbg !394
  %258 = zext i1 %257 to i8, !dbg !394
  %259 = add i8 %256, %258, !dbg !394
  store i8 %259, i8* %254, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

260:                                              ; preds = %248
  call void @llvm.dbg.value(metadata i64 3, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 3, metadata !89, metadata !DIExpression()), !dbg !295
  %261 = call i32 @strcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %262 = icmp eq i32 %261, 0, !dbg !393
  br i1 %262, label %263, label %272, !dbg !394

263:                                              ; preds = %260
  %264 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 72) to i32*), align 4, !dbg !394, !nosanitize !294
  %265 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %266 = getelementptr i8, i8* %265, i32 %264, !dbg !394
  %267 = load i8, i8* %266, align 1, !dbg !394, !nosanitize !294
  %268 = add i8 %267, 1, !dbg !394
  %269 = icmp eq i8 %268, 0, !dbg !394
  %270 = zext i1 %269 to i8, !dbg !394
  %271 = add i8 %268, %270, !dbg !394
  store i8 %271, i8* %266, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

272:                                              ; preds = %260
  call void @llvm.dbg.value(metadata i64 4, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 4, metadata !89, metadata !DIExpression()), !dbg !295
  %273 = call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %274 = icmp eq i32 %273, 0, !dbg !393
  br i1 %274, label %275, label %284, !dbg !394

275:                                              ; preds = %272
  %276 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 76) to i32*), align 4, !dbg !394, !nosanitize !294
  %277 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %278 = getelementptr i8, i8* %277, i32 %276, !dbg !394
  %279 = load i8, i8* %278, align 1, !dbg !394, !nosanitize !294
  %280 = add i8 %279, 1, !dbg !394
  %281 = icmp eq i8 %280, 0, !dbg !394
  %282 = zext i1 %281 to i8, !dbg !394
  %283 = add i8 %280, %282, !dbg !394
  store i8 %283, i8* %278, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

284:                                              ; preds = %272
  call void @llvm.dbg.value(metadata i64 5, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 5, metadata !89, metadata !DIExpression()), !dbg !295
  %285 = call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %286 = icmp eq i32 %285, 0, !dbg !393
  br i1 %286, label %287, label %296, !dbg !394

287:                                              ; preds = %284
  %288 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 80) to i32*), align 4, !dbg !394, !nosanitize !294
  %289 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %290 = getelementptr i8, i8* %289, i32 %288, !dbg !394
  %291 = load i8, i8* %290, align 1, !dbg !394, !nosanitize !294
  %292 = add i8 %291, 1, !dbg !394
  %293 = icmp eq i8 %292, 0, !dbg !394
  %294 = zext i1 %293 to i8, !dbg !394
  %295 = add i8 %292, %294, !dbg !394
  store i8 %295, i8* %290, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

296:                                              ; preds = %284
  call void @llvm.dbg.value(metadata i64 6, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 6, metadata !89, metadata !DIExpression()), !dbg !295
  %297 = call i32 @strcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %298 = icmp eq i32 %297, 0, !dbg !393
  br i1 %298, label %299, label %308, !dbg !394

299:                                              ; preds = %296
  %300 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 84) to i32*), align 4, !dbg !394, !nosanitize !294
  %301 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %302 = getelementptr i8, i8* %301, i32 %300, !dbg !394
  %303 = load i8, i8* %302, align 1, !dbg !394, !nosanitize !294
  %304 = add i8 %303, 1, !dbg !394
  %305 = icmp eq i8 %304, 0, !dbg !394
  %306 = zext i1 %305 to i8, !dbg !394
  %307 = add i8 %304, %306, !dbg !394
  store i8 %307, i8* %302, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

308:                                              ; preds = %296
  call void @llvm.dbg.value(metadata i64 7, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 7, metadata !89, metadata !DIExpression()), !dbg !295
  %309 = call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %310 = icmp eq i32 %309, 0, !dbg !393
  br i1 %310, label %311, label %320, !dbg !394

311:                                              ; preds = %308
  %312 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 88) to i32*), align 4, !dbg !394, !nosanitize !294
  %313 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %314 = getelementptr i8, i8* %313, i32 %312, !dbg !394
  %315 = load i8, i8* %314, align 1, !dbg !394, !nosanitize !294
  %316 = add i8 %315, 1, !dbg !394
  %317 = icmp eq i8 %316, 0, !dbg !394
  %318 = zext i1 %317 to i8, !dbg !394
  %319 = add i8 %316, %318, !dbg !394
  store i8 %319, i8* %314, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

320:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 8, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 8, metadata !89, metadata !DIExpression()), !dbg !295
  %321 = call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %322 = icmp eq i32 %321, 0, !dbg !393
  br i1 %322, label %323, label %332, !dbg !394

323:                                              ; preds = %320
  %324 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 92) to i32*), align 4, !dbg !394, !nosanitize !294
  %325 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %326 = getelementptr i8, i8* %325, i32 %324, !dbg !394
  %327 = load i8, i8* %326, align 1, !dbg !394, !nosanitize !294
  %328 = add i8 %327, 1, !dbg !394
  %329 = icmp eq i8 %328, 0, !dbg !394
  %330 = zext i1 %329 to i8, !dbg !394
  %331 = add i8 %328, %330, !dbg !394
  store i8 %331, i8* %326, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

332:                                              ; preds = %320
  call void @llvm.dbg.value(metadata i64 9, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 9, metadata !89, metadata !DIExpression()), !dbg !295
  %333 = call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %334 = icmp eq i32 %333, 0, !dbg !393
  br i1 %334, label %335, label %344, !dbg !394

335:                                              ; preds = %332
  %336 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 96) to i32*), align 4, !dbg !394, !nosanitize !294
  %337 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %338 = getelementptr i8, i8* %337, i32 %336, !dbg !394
  %339 = load i8, i8* %338, align 1, !dbg !394, !nosanitize !294
  %340 = add i8 %339, 1, !dbg !394
  %341 = icmp eq i8 %340, 0, !dbg !394
  %342 = zext i1 %341 to i8, !dbg !394
  %343 = add i8 %340, %342, !dbg !394
  store i8 %343, i8* %338, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

344:                                              ; preds = %332
  call void @llvm.dbg.value(metadata i64 10, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 10, metadata !89, metadata !DIExpression()), !dbg !295
  %345 = call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %346 = icmp eq i32 %345, 0, !dbg !393
  br i1 %346, label %347, label %356, !dbg !394

347:                                              ; preds = %344
  %348 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 100) to i32*), align 4, !dbg !394, !nosanitize !294
  %349 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %350 = getelementptr i8, i8* %349, i32 %348, !dbg !394
  %351 = load i8, i8* %350, align 1, !dbg !394, !nosanitize !294
  %352 = add i8 %351, 1, !dbg !394
  %353 = icmp eq i8 %352, 0, !dbg !394
  %354 = zext i1 %353 to i8, !dbg !394
  %355 = add i8 %352, %354, !dbg !394
  store i8 %355, i8* %350, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

356:                                              ; preds = %344
  call void @llvm.dbg.value(metadata i64 11, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 11, metadata !89, metadata !DIExpression()), !dbg !295
  %357 = call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %358 = icmp eq i32 %357, 0, !dbg !393
  br i1 %358, label %359, label %368, !dbg !394

359:                                              ; preds = %356
  %360 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 104) to i32*), align 4, !dbg !394, !nosanitize !294
  %361 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %362 = getelementptr i8, i8* %361, i32 %360, !dbg !394
  %363 = load i8, i8* %362, align 1, !dbg !394, !nosanitize !294
  %364 = add i8 %363, 1, !dbg !394
  %365 = icmp eq i8 %364, 0, !dbg !394
  %366 = zext i1 %365 to i8, !dbg !394
  %367 = add i8 %364, %366, !dbg !394
  store i8 %367, i8* %362, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

368:                                              ; preds = %356
  call void @llvm.dbg.value(metadata i64 12, metadata !89, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 12, metadata !89, metadata !DIExpression()), !dbg !295
  %369 = call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %224) #20, !dbg !389
  %370 = icmp eq i32 %369, 0, !dbg !393
  br i1 %370, label %371, label %380, !dbg !394

371:                                              ; preds = %368
  %372 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 108) to i32*), align 4, !dbg !394, !nosanitize !294
  %373 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !394, !nosanitize !294
  %374 = getelementptr i8, i8* %373, i32 %372, !dbg !394
  %375 = load i8, i8* %374, align 1, !dbg !394, !nosanitize !294
  %376 = add i8 %375, 1, !dbg !394
  %377 = icmp eq i8 %376, 0, !dbg !394
  %378 = zext i1 %377 to i8, !dbg !394
  %379 = add i8 %376, %378, !dbg !394
  store i8 %379, i8* %374, align 1, !dbg !394, !nosanitize !294
  br label %400, !dbg !394

380:                                              ; preds = %368
  %381 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 112) to i32*), align 4, !dbg !295, !nosanitize !294
  %382 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !295, !nosanitize !294
  %383 = getelementptr i8, i8* %382, i32 %381, !dbg !295
  %384 = load i8, i8* %383, align 1, !dbg !295, !nosanitize !294
  %385 = add i8 %384, 1, !dbg !295
  %386 = icmp eq i8 %385, 0, !dbg !295
  %387 = zext i1 %386 to i8, !dbg !295
  %388 = add i8 %385, %387, !dbg !295
  store i8 %388, i8* %383, align 1, !dbg !295, !nosanitize !294
  call void @llvm.dbg.value(metadata i64 13, metadata !89, metadata !DIExpression()), !dbg !295
  %389 = icmp ne i32 %53, 6, !dbg !395
  %390 = zext i1 %389 to i32, !dbg !399
  %391 = add nsw i32 %48, %390, !dbg !399
  br label %392, !dbg !399

392:                                              ; preds = %54, %380, %400, %1045, %1035, %1025, %1015, %1005, %967, %957, %949, %796, %785, %774, %764, %755, %745, %735, %725, %721, %213, %203, %194, %185, %174, %163, %153, %143, %133, %123
  %393 = phi i32 [ %46, %1045 ], [ %46, %1035 ], [ %46, %1025 ], [ %46, %1015 ], [ %46, %1005 ], [ %46, %967 ], [ %46, %957 ], [ %46, %949 ], [ %46, %796 ], [ %46, %785 ], [ %46, %774 ], [ %46, %764 ], [ 3, %755 ], [ %46, %745 ], [ %46, %735 ], [ %46, %725 ], [ 0, %721 ], [ %46, %400 ], [ %46, %213 ], [ %46, %203 ], [ 2, %194 ], [ 1, %185 ], [ %46, %174 ], [ %46, %163 ], [ %46, %153 ], [ %46, %143 ], [ %46, %133 ], [ %46, %123 ], [ %46, %54 ], [ %46, %380 ]
  %394 = phi i32 [ %47, %1045 ], [ %47, %1035 ], [ %47, %1025 ], [ %47, %1015 ], [ %47, %1005 ], [ %47, %967 ], [ %47, %957 ], [ %47, %949 ], [ %47, %796 ], [ %47, %785 ], [ %47, %774 ], [ %47, %764 ], [ %47, %755 ], [ %47, %745 ], [ %47, %735 ], [ %47, %725 ], [ %724, %721 ], [ %47, %400 ], [ %47, %213 ], [ %47, %203 ], [ %47, %194 ], [ %47, %185 ], [ %47, %174 ], [ %47, %163 ], [ %47, %153 ], [ %47, %143 ], [ %47, %133 ], [ %47, %123 ], [ %47, %54 ], [ %47, %380 ]
  %395 = phi i32 [ %1054, %1045 ], [ %48, %1035 ], [ %48, %1025 ], [ %48, %1015 ], [ %48, %1005 ], [ %48, %967 ], [ %48, %957 ], [ %48, %949 ], [ %48, %796 ], [ %48, %785 ], [ %48, %774 ], [ %48, %764 ], [ %48, %755 ], [ %48, %745 ], [ %48, %735 ], [ %48, %725 ], [ %48, %721 ], [ %48, %400 ], [ %48, %213 ], [ %48, %203 ], [ %48, %194 ], [ %48, %185 ], [ %48, %174 ], [ %48, %163 ], [ %48, %153 ], [ %48, %143 ], [ %48, %133 ], [ %48, %123 ], [ %48, %54 ], [ %391, %380 ]
  %396 = phi i32 [ %49, %1045 ], [ %1044, %1035 ], [ %1034, %1025 ], [ %1024, %1015 ], [ %1014, %1005 ], [ %976, %967 ], [ %966, %957 ], [ %49, %949 ], [ %805, %796 ], [ %49, %785 ], [ %49, %774 ], [ %49, %764 ], [ %49, %755 ], [ %754, %745 ], [ %744, %735 ], [ %49, %725 ], [ %49, %721 ], [ %404, %400 ], [ %222, %213 ], [ %212, %203 ], [ %49, %194 ], [ %49, %185 ], [ %49, %174 ], [ %49, %163 ], [ %162, %153 ], [ %152, %143 ], [ %142, %133 ], [ %132, %123 ], [ %49, %54 ], [ %49, %380 ]
  %397 = phi i32 [ %50, %1045 ], [ %50, %1035 ], [ %50, %1025 ], [ %50, %1015 ], [ %50, %1005 ], [ %50, %967 ], [ %50, %957 ], [ %50, %949 ], [ %50, %796 ], [ %50, %785 ], [ %50, %774 ], [ %50, %764 ], [ %50, %755 ], [ %50, %745 ], [ %50, %735 ], [ %50, %725 ], [ %723, %721 ], [ %50, %400 ], [ %50, %213 ], [ %50, %203 ], [ %50, %194 ], [ %50, %185 ], [ %50, %174 ], [ %50, %163 ], [ %50, %153 ], [ %50, %143 ], [ %50, %133 ], [ %50, %123 ], [ %50, %54 ], [ %50, %380 ]
  %398 = phi %struct.magic_set* [ %51, %1045 ], [ %51, %1035 ], [ %51, %1025 ], [ %51, %1015 ], [ %51, %1005 ], [ %51, %967 ], [ %51, %957 ], [ %51, %949 ], [ %51, %796 ], [ %51, %785 ], [ %51, %774 ], [ %51, %764 ], [ %51, %755 ], [ %51, %745 ], [ %51, %735 ], [ %51, %725 ], [ %452, %721 ], [ %51, %400 ], [ %51, %213 ], [ %51, %203 ], [ %51, %194 ], [ %51, %185 ], [ %51, %174 ], [ %51, %163 ], [ %51, %153 ], [ %51, %143 ], [ %51, %133 ], [ %51, %123 ], [ %51, %54 ], [ %51, %380 ]
  %399 = phi i8* [ %52, %1045 ], [ %52, %1035 ], [ %52, %1025 ], [ %52, %1015 ], [ %52, %1005 ], [ %52, %967 ], [ %52, %957 ], [ %52, %949 ], [ %52, %796 ], [ %52, %785 ], [ %52, %774 ], [ %773, %764 ], [ %52, %755 ], [ %52, %745 ], [ %52, %735 ], [ %52, %725 ], [ %52, %721 ], [ %52, %400 ], [ %52, %213 ], [ %52, %203 ], [ %52, %194 ], [ %52, %185 ], [ %52, %174 ], [ %52, %163 ], [ %52, %153 ], [ %52, %143 ], [ %52, %133 ], [ %52, %123 ], [ %52, %54 ], [ %52, %380 ]
  br label %45, !dbg !295, !llvm.loop !400

400:                                              ; preds = %371, %359, %347, %335, %323, %311, %299, %287, %275, %263, %251, %239, %227
  %401 = phi i64 [ 0, %227 ], [ 1, %239 ], [ 2, %251 ], [ 3, %263 ], [ 4, %275 ], [ 5, %287 ], [ 6, %299 ], [ 7, %311 ], [ 8, %323 ], [ 9, %335 ], [ 10, %347 ], [ 11, %359 ], [ 12, %371 ]
  %402 = getelementptr inbounds [13 x %struct.anon.1], [13 x %struct.anon.1]* @nv, i64 0, i64 %401, i32 1, !dbg !403
  %403 = load i32, i32* %402, align 8, !dbg !403, !tbaa !404
  %404 = or i32 %403, %49, !dbg !406
  call void @llvm.dbg.value(metadata i32 %404, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392

405:                                              ; preds = %45
  %406 = icmp eq i32 %46, 0, !dbg !407
  br i1 %406, label %419, label %407, !dbg !409

407:                                              ; preds = %405
  %408 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 116) to i32*), align 4, !dbg !410, !nosanitize !294
  %409 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !410, !nosanitize !294
  %410 = getelementptr i8, i8* %409, i32 %408, !dbg !410
  %411 = load i8, i8* %410, align 1, !dbg !410, !nosanitize !294
  %412 = add i8 %411, 1, !dbg !410
  %413 = icmp eq i8 %412, 0, !dbg !410
  %414 = zext i1 %413 to i8, !dbg !410
  %415 = add i8 %412, %414, !dbg !410
  store i8 %415, i8* %410, align 1, !dbg !410, !nosanitize !294
  %416 = load i8*, i8** @file_progname, align 8, !dbg !410, !tbaa !300
  call void @llvm.dbg.value(metadata i8* %416, metadata !417, metadata !DIExpression()) #19, !dbg !419
  %417 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !420, !tbaa !300
  %418 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %417, i8* noundef getelementptr inbounds ([297 x i8], [297 x i8]* @.str.84, i64 0, i64 0), i8* noundef %416, i8* noundef %416, i8* noundef %416) #22, !dbg !421
  call void @exit(i32 noundef 1) #21, !dbg !422
  unreachable, !dbg !422

419:                                              ; preds = %405
  %420 = icmp eq %struct.magic_set* %51, null, !dbg !423
  br i1 %420, label %430, label %421, !dbg !425

421:                                              ; preds = %419
  %422 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 120) to i32*), align 4, !dbg !425, !nosanitize !294
  %423 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !425, !nosanitize !294
  %424 = getelementptr i8, i8* %423, i32 %422, !dbg !425
  %425 = load i8, i8* %424, align 1, !dbg !425, !nosanitize !294
  %426 = add i8 %425, 1, !dbg !425
  %427 = icmp eq i8 %426, 0, !dbg !425
  %428 = zext i1 %427 to i8, !dbg !425
  %429 = add i8 %426, %428, !dbg !425
  store i8 %429, i8* %424, align 1, !dbg !425, !nosanitize !294
  br label %451, !dbg !425

430:                                              ; preds = %419
  %431 = call fastcc %struct.magic_set* @load(i8* noundef %52, i32 noundef %49), !dbg !426
  call void @llvm.dbg.value(metadata %struct.magic_set* %431, metadata !98, metadata !DIExpression()), !dbg !295
  %432 = icmp eq %struct.magic_set* %431, null, !dbg !428
  br i1 %432, label %442, label %433, !dbg !429

433:                                              ; preds = %430
  %434 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 124) to i32*), align 4, !dbg !429, !nosanitize !294
  %435 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !429, !nosanitize !294
  %436 = getelementptr i8, i8* %435, i32 %434, !dbg !429
  %437 = load i8, i8* %436, align 1, !dbg !429, !nosanitize !294
  %438 = add i8 %437, 1, !dbg !429
  %439 = icmp eq i8 %438, 0, !dbg !429
  %440 = zext i1 %439 to i8, !dbg !429
  %441 = add i8 %438, %440, !dbg !429
  store i8 %441, i8* %436, align 1, !dbg !429, !nosanitize !294
  br label %451, !dbg !429

442:                                              ; preds = %430
  %443 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 128) to i32*), align 4, !dbg !429, !nosanitize !294
  %444 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !429, !nosanitize !294
  %445 = getelementptr i8, i8* %444, i32 %443, !dbg !429
  %446 = load i8, i8* %445, align 1, !dbg !429, !nosanitize !294
  %447 = add i8 %446, 1, !dbg !429
  %448 = icmp eq i8 %447, 0, !dbg !429
  %449 = zext i1 %448 to i8, !dbg !429
  %450 = add i8 %447, %449, !dbg !429
  store i8 %450, i8* %445, align 1, !dbg !429, !nosanitize !294
  br label %1404, !dbg !429

451:                                              ; preds = %433, %421
  %452 = phi %struct.magic_set* [ %431, %433 ], [ %51, %421 ], !dbg !295
  call void @llvm.dbg.value(metadata %struct.magic_set* %452, metadata !98, metadata !DIExpression()), !dbg !295
  call fastcc void @applyparam(%struct.magic_set* noundef nonnull %452), !dbg !430
  %453 = load i8*, i8** @optarg, align 8, !dbg !431, !tbaa !300
  call void @llvm.dbg.value(metadata %struct.magic_set* %452, metadata !432, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i8* %453, metadata !437, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #19, !dbg !511
  call void @llvm.dbg.value(metadata i8* null, metadata !497, metadata !DIExpression()) #19, !dbg !509
  store i8* null, i8** %3, align 8, !dbg !512, !tbaa !300
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #19, !dbg !513
  call void @llvm.dbg.value(metadata i64 0, metadata !498, metadata !DIExpression()) #19, !dbg !509
  store i64 0, i64* %4, align 8, !dbg !514, !tbaa !515
  call void @llvm.dbg.value(metadata i32 0, metadata !499, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64 0, metadata !502, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64 0, metadata !503, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i8** null, metadata !504, metadata !DIExpression()) #19, !dbg !509
  %454 = call i32 @strcmp(i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %453) #20, !dbg !517
  %455 = icmp eq i32 %454, 0, !dbg !519
  br i1 %455, label %456, label %466, !dbg !520

456:                                              ; preds = %451
  %457 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 132) to i32*), align 4, !dbg !521, !nosanitize !294
  %458 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !521, !nosanitize !294
  %459 = getelementptr i8, i8* %458, i32 %457, !dbg !521
  %460 = load i8, i8* %459, align 1, !dbg !521, !nosanitize !294
  %461 = add i8 %460, 1, !dbg !521
  %462 = icmp eq i8 %461, 0, !dbg !521
  %463 = zext i1 %462 to i8, !dbg !521
  %464 = add i8 %461, %463, !dbg !521
  store i8 %464, i8* %459, align 1, !dbg !521, !nosanitize !294
  %465 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !521, !tbaa !300
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %465, metadata !438, metadata !DIExpression()) #19, !dbg !509
  br label %487, !dbg !522

466:                                              ; preds = %451
  %467 = call noalias %struct._IO_FILE* @fopen(i8* noundef %453, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #19, !dbg !523
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %467, metadata !438, metadata !DIExpression()) #19, !dbg !509
  %468 = icmp eq %struct._IO_FILE* %467, null, !dbg !526
  br i1 %468, label %478, label %469, !dbg !527

469:                                              ; preds = %466
  %470 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 136) to i32*), align 4, !dbg !527, !nosanitize !294
  %471 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !527, !nosanitize !294
  %472 = getelementptr i8, i8* %471, i32 %470, !dbg !527
  %473 = load i8, i8* %472, align 1, !dbg !527, !nosanitize !294
  %474 = add i8 %473, 1, !dbg !527
  %475 = icmp eq i8 %474, 0, !dbg !527
  %476 = zext i1 %475 to i8, !dbg !527
  %477 = add i8 %474, %476, !dbg !527
  store i8 %477, i8* %472, align 1, !dbg !527, !nosanitize !294
  br label %487, !dbg !527

478:                                              ; preds = %466
  %479 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 140) to i32*), align 4, !dbg !528, !nosanitize !294
  %480 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !528, !nosanitize !294
  %481 = getelementptr i8, i8* %480, i32 %479, !dbg !528
  %482 = load i8, i8* %481, align 1, !dbg !528, !nosanitize !294
  %483 = add i8 %482, 1, !dbg !528
  %484 = icmp eq i8 %483, 0, !dbg !528
  %485 = zext i1 %484 to i8, !dbg !528
  %486 = add i8 %483, %485, !dbg !528
  store i8 %486, i8* %481, align 1, !dbg !528, !nosanitize !294
  call void (i8*, ...) @file_warn(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0), i8* noundef %453) #19, !dbg !528
  br label %721, !dbg !530

487:                                              ; preds = %469, %456
  %488 = phi %struct._IO_FILE* [ %465, %456 ], [ %467, %469 ], !dbg !531
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %488, metadata !438, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i8** null, metadata !504, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64 0, metadata !503, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64 0, metadata !502, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !499, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i8** %3, metadata !497, metadata !DIExpression(DW_OP_deref)) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64* %4, metadata !498, metadata !DIExpression(DW_OP_deref)) #19, !dbg !509
  call void @llvm.dbg.value(metadata i8** %3, metadata !532, metadata !DIExpression()) #19, !dbg !541
  call void @llvm.dbg.value(metadata i64* %4, metadata !539, metadata !DIExpression()) #19, !dbg !541
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %488, metadata !540, metadata !DIExpression()) #19, !dbg !541
  %489 = call i64 @__getdelim(i8** noundef nonnull %3, i64* noundef nonnull %4, i32 noundef 10, %struct._IO_FILE* noundef %488) #19, !dbg !543
  call void @llvm.dbg.value(metadata i64 %489, metadata !493, metadata !DIExpression()) #19, !dbg !509
  %490 = icmp sgt i64 %489, 0, !dbg !544
  br i1 %490, label %500, label %491, !dbg !545

491:                                              ; preds = %487
  %492 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 144) to i32*), align 4, !dbg !545, !nosanitize !294
  %493 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !545, !nosanitize !294
  %494 = getelementptr i8, i8* %493, i32 %492, !dbg !545
  %495 = load i8, i8* %494, align 1, !dbg !545, !nosanitize !294
  %496 = add i8 %495, 1, !dbg !545
  %497 = icmp eq i8 %496, 0, !dbg !545
  %498 = zext i1 %497 to i8, !dbg !545
  %499 = add i8 %496, %498, !dbg !545
  store i8 %499, i8* %494, align 1, !dbg !545, !nosanitize !294
  br label %696, !dbg !545

500:                                              ; preds = %487
  br label %501, !dbg !545

501:                                              ; preds = %631, %500
  %502 = phi i64 [ %620, %631 ], [ %489, %500 ]
  %503 = phi i8** [ %616, %631 ], [ null, %500 ]
  %504 = phi i64 [ %615, %631 ], [ 0, %500 ]
  %505 = phi i64 [ %618, %631 ], [ 0, %500 ]
  %506 = phi i32 [ %510, %631 ], [ 0, %500 ]
  %507 = phi i32 [ %569, %631 ], [ 0, %500 ]
  call void @llvm.dbg.value(metadata i8** %503, metadata !504, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64 %504, metadata !503, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64 %505, metadata !502, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i32 %506, metadata !501, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i32 %507, metadata !499, metadata !DIExpression()) #19, !dbg !509
  br label %508, !dbg !545

508:                                              ; preds = %557, %501
  %509 = phi i64 [ %502, %501 ], [ %546, %557 ]
  %510 = phi i32 [ %506, %501 ], [ %544, %557 ]
  call void @llvm.dbg.value(metadata i32 %510, metadata !501, metadata !DIExpression()) #19, !dbg !509
  %511 = load i8*, i8** %3, align 8, !dbg !546, !tbaa !300
  call void @llvm.dbg.value(metadata i8* %511, metadata !497, metadata !DIExpression()) #19, !dbg !509
  %512 = add nsw i64 %509, -1, !dbg !548
  %513 = getelementptr inbounds i8, i8* %511, i64 %512, !dbg !546
  %514 = load i8, i8* %513, align 1, !dbg !546, !tbaa !549
  %515 = icmp eq i8 %514, 10, !dbg !550
  br i1 %515, label %525, label %516, !dbg !551

516:                                              ; preds = %508
  %517 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 148) to i32*), align 4, !dbg !551, !nosanitize !294
  %518 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !551, !nosanitize !294
  %519 = getelementptr i8, i8* %518, i32 %517, !dbg !551
  %520 = load i8, i8* %519, align 1, !dbg !551, !nosanitize !294
  %521 = add i8 %520, 1, !dbg !551
  %522 = icmp eq i8 %521, 0, !dbg !551
  %523 = zext i1 %522 to i8, !dbg !551
  %524 = add i8 %521, %523, !dbg !551
  store i8 %524, i8* %519, align 1, !dbg !551, !nosanitize !294
  br label %535, !dbg !551

525:                                              ; preds = %508
  %526 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 152) to i32*), align 4, !dbg !552, !nosanitize !294
  %527 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !552, !nosanitize !294
  %528 = getelementptr i8, i8* %527, i32 %526, !dbg !552
  %529 = load i8, i8* %528, align 1, !dbg !552, !nosanitize !294
  %530 = add i8 %529, 1, !dbg !552
  %531 = icmp eq i8 %530, 0, !dbg !552
  %532 = zext i1 %531 to i8, !dbg !552
  %533 = add i8 %530, %532, !dbg !552
  store i8 %533, i8* %528, align 1, !dbg !552, !nosanitize !294
  store i8 0, i8* %513, align 1, !dbg !552, !tbaa !549
  %534 = load i8*, i8** %3, align 8, !dbg !553, !tbaa !300
  br label %535, !dbg !554

535:                                              ; preds = %516, %525
  %536 = phi i8* [ %534, %525 ], [ %511, %516 ], !dbg !553
  call void @llvm.dbg.value(metadata i8* %536, metadata !497, metadata !DIExpression()) #19, !dbg !509
  %537 = call i64 @file_mbswidth(%struct.magic_set* noundef %452, i8* noundef %536) #19, !dbg !555
  call void @llvm.dbg.value(metadata i64 %537, metadata !500, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !509
  %538 = load i32, i32* @nobuffer, align 4, !dbg !556, !tbaa !318
  %539 = icmp eq i32 %538, 0, !dbg !556
  %540 = trunc i64 %537 to i32, !dbg !555
  br i1 %539, label %566, label %541, !dbg !558

541:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i32 %540, metadata !500, metadata !DIExpression()) #19, !dbg !509
  %542 = load i8*, i8** %3, align 8, !dbg !559, !tbaa !300
  call void @llvm.dbg.value(metadata i8* %542, metadata !497, metadata !DIExpression()) #19, !dbg !509
  %543 = call fastcc i32 @process(%struct.magic_set* noundef %452, i8* noundef %542, i32 noundef %540) #19, !dbg !561
  %544 = or i32 %543, %510, !dbg !562
  call void @llvm.dbg.value(metadata i32 %544, metadata !501, metadata !DIExpression()) #19, !dbg !509
  %545 = load i8*, i8** %3, align 8, !dbg !563, !tbaa !300
  call void @llvm.dbg.value(metadata i8* %545, metadata !497, metadata !DIExpression()) #19, !dbg !509
  call void @free(i8* noundef %545) #19, !dbg !564
  call void @llvm.dbg.value(metadata i8* null, metadata !497, metadata !DIExpression()) #19, !dbg !509
  store i8* null, i8** %3, align 8, !dbg !565, !tbaa !300
  call void @llvm.dbg.value(metadata i64 0, metadata !498, metadata !DIExpression()) #19, !dbg !509
  store i64 0, i64* %4, align 8, !dbg !566, !tbaa !515
  call void @llvm.dbg.value(metadata i8** %503, metadata !504, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64 %504, metadata !503, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64 %505, metadata !502, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i32 %507, metadata !499, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i8** %3, metadata !497, metadata !DIExpression(DW_OP_deref)) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64* %4, metadata !498, metadata !DIExpression(DW_OP_deref)) #19, !dbg !509
  call void @llvm.dbg.value(metadata i8** %3, metadata !532, metadata !DIExpression()) #19, !dbg !541
  call void @llvm.dbg.value(metadata i64* %4, metadata !539, metadata !DIExpression()) #19, !dbg !541
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %488, metadata !540, metadata !DIExpression()) #19, !dbg !541
  %546 = call i64 @__getdelim(i8** noundef nonnull %3, i64* noundef nonnull %4, i32 noundef 10, %struct._IO_FILE* noundef %488) #19, !dbg !543
  call void @llvm.dbg.value(metadata i64 %546, metadata !493, metadata !DIExpression()) #19, !dbg !509
  %547 = icmp sgt i64 %546, 0, !dbg !544
  br i1 %547, label %557, label %548, !dbg !545, !llvm.loop !567

548:                                              ; preds = %541
  %549 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 156) to i32*), align 4, !dbg !545, !nosanitize !294
  %550 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !545, !nosanitize !294
  %551 = getelementptr i8, i8* %550, i32 %549, !dbg !545
  %552 = load i8, i8* %551, align 1, !dbg !545, !nosanitize !294
  %553 = add i8 %552, 1, !dbg !545
  %554 = icmp eq i8 %553, 0, !dbg !545
  %555 = zext i1 %554 to i8, !dbg !545
  %556 = add i8 %553, %555, !dbg !545
  store i8 %556, i8* %551, align 1, !dbg !545, !nosanitize !294
  br label %640, !dbg !545

557:                                              ; preds = %541
  %558 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 160) to i32*), align 4, !dbg !545, !nosanitize !294
  %559 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !545, !nosanitize !294
  %560 = getelementptr i8, i8* %559, i32 %558, !dbg !545
  %561 = load i8, i8* %560, align 1, !dbg !545, !nosanitize !294
  %562 = add i8 %561, 1, !dbg !545
  %563 = icmp eq i8 %562, 0, !dbg !545
  %564 = zext i1 %563 to i8, !dbg !545
  %565 = add i8 %562, %564, !dbg !545
  store i8 %565, i8* %560, align 1, !dbg !545, !nosanitize !294
  br label %508, !dbg !545

566:                                              ; preds = %535
  %567 = trunc i64 %537 to i32, !dbg !555
  %568 = icmp slt i32 %507, %567, !dbg !569
  %569 = select i1 %568, i32 %567, i32 %507, !dbg !571
  %570 = select i1 %568, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 444) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 448) to i32*), !dbg !509
  %571 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !509, !nosanitize !294
  %572 = load i32, i32* %570, align 4, !dbg !509, !nosanitize !294
  %573 = getelementptr i8, i8* %571, i32 %572, !dbg !509
  %574 = load i8, i8* %573, align 1, !dbg !509, !nosanitize !294
  %575 = add i8 %574, 1, !dbg !509
  %576 = icmp eq i8 %575, 0, !dbg !509
  %577 = zext i1 %576 to i8, !dbg !509
  %578 = add i8 %575, %577, !dbg !509
  store i8 %578, i8* %573, align 1, !dbg !509, !nosanitize !294
  call void @llvm.dbg.value(metadata i32 %569, metadata !499, metadata !DIExpression()) #19, !dbg !509
  %579 = icmp ult i64 %505, %504, !dbg !572
  br i1 %579, label %580, label %589, !dbg !573

580:                                              ; preds = %566
  %581 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 164) to i32*), align 4, !dbg !573, !nosanitize !294
  %582 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !573, !nosanitize !294
  %583 = getelementptr i8, i8* %582, i32 %581, !dbg !573
  %584 = load i8, i8* %583, align 1, !dbg !573, !nosanitize !294
  %585 = add i8 %584, 1, !dbg !573
  %586 = icmp eq i8 %585, 0, !dbg !573
  %587 = zext i1 %586 to i8, !dbg !573
  %588 = add i8 %585, %587, !dbg !573
  store i8 %588, i8* %583, align 1, !dbg !573, !nosanitize !294
  br label %614, !dbg !573

589:                                              ; preds = %566
  %590 = add i64 %504, 100, !dbg !574
  call void @llvm.dbg.value(metadata i64 %590, metadata !503, metadata !DIExpression()) #19, !dbg !509
  %591 = bitcast i8** %503 to i8*, !dbg !575
  %592 = shl i64 %590, 3, !dbg !575
  %593 = call i8* @realloc(i8* noundef %591, i64 noundef %592) #19, !dbg !575
  call void @llvm.dbg.value(metadata i8* %593, metadata !505, metadata !DIExpression()) #19, !dbg !576
  %594 = icmp eq i8* %593, null, !dbg !577
  br i1 %594, label %595, label %604, !dbg !579

595:                                              ; preds = %589
  %596 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 168) to i32*), align 4, !dbg !580, !nosanitize !294
  %597 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !580, !nosanitize !294
  %598 = getelementptr i8, i8* %597, i32 %596, !dbg !580
  %599 = load i8, i8* %598, align 1, !dbg !580, !nosanitize !294
  %600 = add i8 %599, 1, !dbg !580
  %601 = icmp eq i8 %600, 0, !dbg !580
  %602 = zext i1 %601 to i8, !dbg !580
  %603 = add i8 %600, %602, !dbg !580
  store i8 %603, i8* %598, align 1, !dbg !580, !nosanitize !294
  call void (i32, i8*, ...) @file_err(i32 noundef 1, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.78, i64 0, i64 0)) #21, !dbg !580
  unreachable, !dbg !580

604:                                              ; preds = %589
  %605 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 172) to i32*), align 4, !dbg !575, !nosanitize !294
  %606 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !575, !nosanitize !294
  %607 = getelementptr i8, i8* %606, i32 %605, !dbg !575
  %608 = load i8, i8* %607, align 1, !dbg !575, !nosanitize !294
  %609 = add i8 %608, 1, !dbg !575
  %610 = icmp eq i8 %609, 0, !dbg !575
  %611 = zext i1 %610 to i8, !dbg !575
  %612 = add i8 %609, %611, !dbg !575
  store i8 %612, i8* %607, align 1, !dbg !575, !nosanitize !294
  %613 = bitcast i8* %593 to i8**, !dbg !575
  call void @llvm.dbg.value(metadata i8** %613, metadata !505, metadata !DIExpression()) #19, !dbg !576
  call void @llvm.dbg.value(metadata i8* %593, metadata !504, metadata !DIExpression()) #19, !dbg !509
  br label %614, !dbg !582

614:                                              ; preds = %580, %604
  %615 = phi i64 [ %590, %604 ], [ %504, %580 ], !dbg !509
  %616 = phi i8** [ %613, %604 ], [ %503, %580 ], !dbg !509
  call void @llvm.dbg.value(metadata i8** %616, metadata !504, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64 %615, metadata !503, metadata !DIExpression()) #19, !dbg !509
  %617 = load i8*, i8** %3, align 8, !dbg !583, !tbaa !300
  call void @llvm.dbg.value(metadata i8* %617, metadata !497, metadata !DIExpression()) #19, !dbg !509
  %618 = add i64 %505, 1, !dbg !584
  call void @llvm.dbg.value(metadata i64 %618, metadata !502, metadata !DIExpression()) #19, !dbg !509
  %619 = getelementptr inbounds i8*, i8** %616, i64 %505, !dbg !585
  store i8* %617, i8** %619, align 8, !dbg !586, !tbaa !300
  call void @llvm.dbg.value(metadata i8* null, metadata !497, metadata !DIExpression()) #19, !dbg !509
  store i8* null, i8** %3, align 8, !dbg !587, !tbaa !300
  call void @llvm.dbg.value(metadata i64 0, metadata !498, metadata !DIExpression()) #19, !dbg !509
  store i64 0, i64* %4, align 8, !dbg !588, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %510, metadata !501, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i32 %569, metadata !499, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i8** %3, metadata !497, metadata !DIExpression(DW_OP_deref)) #19, !dbg !509
  call void @llvm.dbg.value(metadata i64* %4, metadata !498, metadata !DIExpression(DW_OP_deref)) #19, !dbg !509
  call void @llvm.dbg.value(metadata i8** %3, metadata !532, metadata !DIExpression()) #19, !dbg !541
  call void @llvm.dbg.value(metadata i64* %4, metadata !539, metadata !DIExpression()) #19, !dbg !541
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %488, metadata !540, metadata !DIExpression()) #19, !dbg !541
  %620 = call i64 @__getdelim(i8** noundef nonnull %3, i64* noundef nonnull %4, i32 noundef 10, %struct._IO_FILE* noundef %488) #19, !dbg !543
  call void @llvm.dbg.value(metadata i64 %620, metadata !493, metadata !DIExpression()) #19, !dbg !509
  %621 = icmp sgt i64 %620, 0, !dbg !544
  br i1 %621, label %631, label %622, !dbg !545, !llvm.loop !589

622:                                              ; preds = %614
  %623 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 176) to i32*), align 4, !dbg !545, !nosanitize !294
  %624 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !545, !nosanitize !294
  %625 = getelementptr i8, i8* %624, i32 %623, !dbg !545
  %626 = load i8, i8* %625, align 1, !dbg !545, !nosanitize !294
  %627 = add i8 %626, 1, !dbg !545
  %628 = icmp eq i8 %627, 0, !dbg !545
  %629 = zext i1 %628 to i8, !dbg !545
  %630 = add i8 %627, %629, !dbg !545
  store i8 %630, i8* %625, align 1, !dbg !545, !nosanitize !294
  br label %640, !dbg !545

631:                                              ; preds = %614
  %632 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 180) to i32*), align 4, !dbg !545, !nosanitize !294
  %633 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !545, !nosanitize !294
  %634 = getelementptr i8, i8* %633, i32 %632, !dbg !545
  %635 = load i8, i8* %634, align 1, !dbg !545, !nosanitize !294
  %636 = add i8 %635, 1, !dbg !545
  %637 = icmp eq i8 %636, 0, !dbg !545
  %638 = zext i1 %637 to i8, !dbg !545
  %639 = add i8 %636, %638, !dbg !545
  store i8 %639, i8* %634, align 1, !dbg !545, !nosanitize !294
  br label %501, !dbg !545

640:                                              ; preds = %622, %548
  %641 = phi i32 [ %507, %548 ], [ %569, %622 ]
  %642 = phi i64 [ %505, %548 ], [ %618, %622 ]
  %643 = phi i8** [ %503, %548 ], [ %616, %622 ]
  %644 = phi i32 [ %544, %548 ], [ %510, %622 ], !dbg !509
  %645 = load i32, i32* @nobuffer, align 4, !dbg !590, !tbaa !318
  %646 = icmp eq i32 %645, 0, !dbg !590
  %647 = icmp ne i64 %642, 0
  %648 = select i1 %646, i1 %647, i1 false, !dbg !592
  %649 = select i1 %646, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 452) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 456) to i32*), !dbg !509
  %650 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !509, !nosanitize !294
  %651 = load i32, i32* %649, align 4, !dbg !509, !nosanitize !294
  %652 = getelementptr i8, i8* %650, i32 %651, !dbg !509
  %653 = load i8, i8* %652, align 1, !dbg !509, !nosanitize !294
  %654 = add i8 %653, 1, !dbg !509
  %655 = icmp eq i8 %654, 0, !dbg !509
  %656 = zext i1 %655 to i8, !dbg !509
  %657 = add i8 %654, %656, !dbg !509
  store i8 %657, i8* %652, align 1, !dbg !509, !nosanitize !294
  call void @llvm.dbg.value(metadata i64 0, metadata !502, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i32 %644, metadata !501, metadata !DIExpression()) #19, !dbg !509
  br i1 %648, label %667, label %658, !dbg !592

658:                                              ; preds = %640
  %659 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 184) to i32*), align 4, !dbg !592, !nosanitize !294
  %660 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !592, !nosanitize !294
  %661 = getelementptr i8, i8* %660, i32 %659, !dbg !592
  %662 = load i8, i8* %661, align 1, !dbg !592, !nosanitize !294
  %663 = add i8 %662, 1, !dbg !592
  %664 = icmp eq i8 %663, 0, !dbg !592
  %665 = zext i1 %664 to i8, !dbg !592
  %666 = add i8 %663, %665, !dbg !592
  store i8 %666, i8* %661, align 1, !dbg !592, !nosanitize !294
  br label %696, !dbg !592

667:                                              ; preds = %640
  br label %668, !dbg !592

668:                                              ; preds = %678, %667
  %669 = phi i64 [ %676, %678 ], [ 0, %667 ]
  %670 = phi i32 [ %674, %678 ], [ %644, %667 ]
  call void @llvm.dbg.value(metadata i64 %669, metadata !502, metadata !DIExpression()) #19, !dbg !509
  call void @llvm.dbg.value(metadata i32 %670, metadata !501, metadata !DIExpression()) #19, !dbg !509
  %671 = getelementptr inbounds i8*, i8** %643, i64 %669, !dbg !593
  %672 = load i8*, i8** %671, align 8, !dbg !593, !tbaa !300
  %673 = call fastcc i32 @process(%struct.magic_set* noundef %452, i8* noundef %672, i32 noundef %641) #19, !dbg !598
  %674 = or i32 %673, %670, !dbg !599
  call void @llvm.dbg.value(metadata i32 %674, metadata !501, metadata !DIExpression()) #19, !dbg !509
  %675 = load i8*, i8** %671, align 8, !dbg !600, !tbaa !300
  call void @free(i8* noundef %675) #19, !dbg !601
  %676 = add nuw i64 %669, 1, !dbg !602
  call void @llvm.dbg.value(metadata i64 %676, metadata !502, metadata !DIExpression()) #19, !dbg !509
  %677 = icmp eq i64 %676, %642, !dbg !603
  br i1 %677, label %687, label %678, !dbg !604, !llvm.loop !605

678:                                              ; preds = %668
  %679 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 188) to i32*), align 4, !dbg !604, !nosanitize !294
  %680 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !604, !nosanitize !294
  %681 = getelementptr i8, i8* %680, i32 %679, !dbg !604
  %682 = load i8, i8* %681, align 1, !dbg !604, !nosanitize !294
  %683 = add i8 %682, 1, !dbg !604
  %684 = icmp eq i8 %683, 0, !dbg !604
  %685 = zext i1 %684 to i8, !dbg !604
  %686 = add i8 %683, %685, !dbg !604
  store i8 %686, i8* %681, align 1, !dbg !604, !nosanitize !294
  br label %668, !dbg !604

687:                                              ; preds = %668
  %688 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 192) to i32*), align 4, !dbg !604, !nosanitize !294
  %689 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !604, !nosanitize !294
  %690 = getelementptr i8, i8* %689, i32 %688, !dbg !604
  %691 = load i8, i8* %690, align 1, !dbg !604, !nosanitize !294
  %692 = add i8 %691, 1, !dbg !604
  %693 = icmp eq i8 %692, 0, !dbg !604
  %694 = zext i1 %693 to i8, !dbg !604
  %695 = add i8 %692, %694, !dbg !604
  store i8 %695, i8* %690, align 1, !dbg !604, !nosanitize !294
  br label %696, !dbg !604

696:                                              ; preds = %687, %658, %491
  %697 = phi i8** [ %643, %658 ], [ null, %491 ], [ %643, %687 ]
  %698 = phi i32 [ %644, %658 ], [ 0, %491 ], [ %674, %687 ], !dbg !607
  call void @llvm.dbg.value(metadata i32 %698, metadata !501, metadata !DIExpression()) #19, !dbg !509
  %699 = bitcast i8** %697 to i8*, !dbg !608
  call void @free(i8* noundef %699) #19, !dbg !609
  %700 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !610, !tbaa !300
  %701 = icmp eq %struct._IO_FILE* %488, %700, !dbg !612
  br i1 %701, label %702, label %711, !dbg !613

702:                                              ; preds = %696
  %703 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 196) to i32*), align 4, !dbg !613, !nosanitize !294
  %704 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !613, !nosanitize !294
  %705 = getelementptr i8, i8* %704, i32 %703, !dbg !613
  %706 = load i8, i8* %705, align 1, !dbg !613, !nosanitize !294
  %707 = add i8 %706, 1, !dbg !613
  %708 = icmp eq i8 %707, 0, !dbg !613
  %709 = zext i1 %708 to i8, !dbg !613
  %710 = add i8 %707, %709, !dbg !613
  store i8 %710, i8* %705, align 1, !dbg !613, !nosanitize !294
  br label %721, !dbg !613

711:                                              ; preds = %696
  %712 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 200) to i32*), align 4, !dbg !614, !nosanitize !294
  %713 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !614, !nosanitize !294
  %714 = getelementptr i8, i8* %713, i32 %712, !dbg !614
  %715 = load i8, i8* %714, align 1, !dbg !614, !nosanitize !294
  %716 = add i8 %715, 1, !dbg !614
  %717 = icmp eq i8 %716, 0, !dbg !614
  %718 = zext i1 %717 to i8, !dbg !614
  %719 = add i8 %716, %718, !dbg !614
  store i8 %719, i8* %714, align 1, !dbg !614, !nosanitize !294
  %720 = call i32 @fclose(%struct._IO_FILE* noundef %488) #19, !dbg !614
  br label %721, !dbg !615

721:                                              ; preds = %702, %478, %711
  %722 = phi i32 [ 1, %478 ], [ %698, %711 ], [ %698, %702 ], !dbg !509
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #19, !dbg !616
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #19, !dbg !616
  %723 = or i32 %722, %50, !dbg !617
  call void @llvm.dbg.value(metadata i32 %723, metadata !97, metadata !DIExpression()), !dbg !295
  %724 = add nsw i32 %47, 1, !dbg !618
  call void @llvm.dbg.value(metadata i32 %724, metadata !94, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !619

725:                                              ; preds = %45
  %726 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 204) to i32*), align 4, !dbg !620, !nosanitize !294
  %727 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !620, !nosanitize !294
  %728 = getelementptr i8, i8* %727, i32 %726, !dbg !620
  %729 = load i8, i8* %728, align 1, !dbg !620, !nosanitize !294
  %730 = add i8 %729, 1, !dbg !620
  %731 = icmp eq i8 %730, 0, !dbg !620
  %732 = zext i1 %731 to i8, !dbg !620
  %733 = add i8 %730, %732, !dbg !620
  store i8 %733, i8* %728, align 1, !dbg !620, !nosanitize !294
  %734 = load i8*, i8** @optarg, align 8, !dbg !620, !tbaa !300
  store i8* %734, i8** @separator, align 8, !dbg !621, !tbaa !300
  br label %392, !dbg !622

735:                                              ; preds = %45
  %736 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 208) to i32*), align 4, !dbg !623, !nosanitize !294
  %737 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !623, !nosanitize !294
  %738 = getelementptr i8, i8* %737, i32 %736, !dbg !623
  %739 = load i8, i8* %738, align 1, !dbg !623, !nosanitize !294
  %740 = add i8 %739, 1, !dbg !623
  %741 = icmp eq i8 %740, 0, !dbg !623
  %742 = zext i1 %741 to i8, !dbg !623
  %743 = add i8 %740, %742, !dbg !623
  store i8 %743, i8* %738, align 1, !dbg !623, !nosanitize !294
  %744 = or i32 %49, 1040, !dbg !623
  call void @llvm.dbg.value(metadata i32 %744, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !624

745:                                              ; preds = %45
  %746 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 212) to i32*), align 4, !dbg !625, !nosanitize !294
  %747 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !625, !nosanitize !294
  %748 = getelementptr i8, i8* %747, i32 %746, !dbg !625
  %749 = load i8, i8* %748, align 1, !dbg !625, !nosanitize !294
  %750 = add i8 %749, 1, !dbg !625
  %751 = icmp eq i8 %750, 0, !dbg !625
  %752 = zext i1 %751 to i8, !dbg !625
  %753 = add i8 %750, %752, !dbg !625
  store i8 %753, i8* %748, align 1, !dbg !625, !nosanitize !294
  %754 = or i32 %49, 32, !dbg !625
  call void @llvm.dbg.value(metadata i32 %754, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !626

755:                                              ; preds = %45
  %756 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 216) to i32*), align 4, !dbg !295, !nosanitize !294
  %757 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !295, !nosanitize !294
  %758 = getelementptr i8, i8* %757, i32 %756, !dbg !295
  %759 = load i8, i8* %758, align 1, !dbg !295, !nosanitize !294
  %760 = add i8 %759, 1, !dbg !295
  %761 = icmp eq i8 %760, 0, !dbg !295
  %762 = zext i1 %761 to i8, !dbg !295
  %763 = add i8 %760, %762, !dbg !295
  store i8 %763, i8* %758, align 1, !dbg !295, !nosanitize !294
  call void @llvm.dbg.value(metadata i32 3, metadata !93, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !627

764:                                              ; preds = %45
  %765 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 220) to i32*), align 4, !dbg !628, !nosanitize !294
  %766 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !628, !nosanitize !294
  %767 = getelementptr i8, i8* %766, i32 %765, !dbg !628
  %768 = load i8, i8* %767, align 1, !dbg !628, !nosanitize !294
  %769 = add i8 %768, 1, !dbg !628
  %770 = icmp eq i8 %769, 0, !dbg !628
  %771 = zext i1 %770 to i8, !dbg !628
  %772 = add i8 %769, %771, !dbg !628
  store i8 %772, i8* %767, align 1, !dbg !628, !nosanitize !294
  %773 = load i8*, i8** @optarg, align 8, !dbg !628, !tbaa !300
  call void @llvm.dbg.value(metadata i8* %773, metadata !290, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !629

774:                                              ; preds = %45
  %775 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 224) to i32*), align 4, !dbg !630, !nosanitize !294
  %776 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !630, !nosanitize !294
  %777 = getelementptr i8, i8* %776, i32 %775, !dbg !630
  %778 = load i8, i8* %777, align 1, !dbg !630, !nosanitize !294
  %779 = add i8 %778, 1, !dbg !630
  %780 = icmp eq i8 %779, 0, !dbg !630
  %781 = zext i1 %780 to i8, !dbg !630
  %782 = add i8 %779, %781, !dbg !630
  store i8 %782, i8* %777, align 1, !dbg !630, !nosanitize !294
  %783 = load i32, i32* @nobuffer, align 4, !dbg !630, !tbaa !318
  %784 = add nsw i32 %783, 1, !dbg !630
  store i32 %784, i32* @nobuffer, align 4, !dbg !630, !tbaa !318
  br label %392, !dbg !631

785:                                              ; preds = %45
  %786 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 228) to i32*), align 4, !dbg !632, !nosanitize !294
  %787 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !632, !nosanitize !294
  %788 = getelementptr i8, i8* %787, i32 %786, !dbg !632
  %789 = load i8, i8* %788, align 1, !dbg !632, !nosanitize !294
  %790 = add i8 %789, 1, !dbg !632
  %791 = icmp eq i8 %790, 0, !dbg !632
  %792 = zext i1 %791 to i8, !dbg !632
  %793 = add i8 %790, %792, !dbg !632
  store i8 %793, i8* %788, align 1, !dbg !632, !nosanitize !294
  %794 = load i32, i32* @nopad, align 4, !dbg !632, !tbaa !318
  %795 = add nsw i32 %794, 1, !dbg !632
  store i32 %795, i32* @nopad, align 4, !dbg !632, !tbaa !318
  br label %392, !dbg !633

796:                                              ; preds = %45
  %797 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 232) to i32*), align 4, !dbg !634, !nosanitize !294
  %798 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !634, !nosanitize !294
  %799 = getelementptr i8, i8* %798, i32 %797, !dbg !634
  %800 = load i8, i8* %799, align 1, !dbg !634, !nosanitize !294
  %801 = add i8 %800, 1, !dbg !634
  %802 = icmp eq i8 %801, 0, !dbg !634
  %803 = zext i1 %802 to i8, !dbg !634
  %804 = add i8 %801, %803, !dbg !634
  store i8 %804, i8* %799, align 1, !dbg !634, !nosanitize !294
  %805 = or i32 %49, 128, !dbg !634
  call void @llvm.dbg.value(metadata i32 %805, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !635

806:                                              ; preds = %45
  %807 = load i8*, i8** @optarg, align 8, !dbg !636, !tbaa !300
  call void @llvm.dbg.value(metadata i8* %807, metadata !637, metadata !DIExpression()) #19, !dbg !643
  %808 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %807, i32 noundef 61) #20, !dbg !645
  call void @llvm.dbg.value(metadata i8* %808, metadata !641, metadata !DIExpression()) #19, !dbg !643
  %809 = icmp eq i8* %808, null, !dbg !647
  br i1 %809, label %810, label %819, !dbg !648

810:                                              ; preds = %806
  %811 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 236) to i32*), align 4, !dbg !648, !nosanitize !294
  %812 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !648, !nosanitize !294
  %813 = getelementptr i8, i8* %812, i32 %811, !dbg !648
  %814 = load i8, i8* %813, align 1, !dbg !648, !nosanitize !294
  %815 = add i8 %814, 1, !dbg !648
  %816 = icmp eq i8 %815, 0, !dbg !648
  %817 = zext i1 %816 to i8, !dbg !648
  %818 = add i8 %815, %817, !dbg !648
  store i8 %818, i8* %813, align 1, !dbg !648, !nosanitize !294
  br label %948, !dbg !648

819:                                              ; preds = %806
  %820 = ptrtoint i8* %808 to i64, !dbg !645
  %821 = ptrtoint i8* %807 to i64
  %822 = sub i64 %820, %821
  call void @llvm.dbg.value(metadata i64 0, metadata !640, metadata !DIExpression()) #19, !dbg !643
  %823 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 0, i32 0), align 16, !dbg !649, !tbaa !654
  %824 = call i32 @strncmp(i8* noundef %807, i8* noundef %823, i64 noundef %822) #20, !dbg !656
  %825 = icmp eq i32 %824, 0, !dbg !657
  br i1 %825, label %826, label %835, !dbg !658

826:                                              ; preds = %819
  %827 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 240) to i32*), align 4, !dbg !658, !nosanitize !294
  %828 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !658, !nosanitize !294
  %829 = getelementptr i8, i8* %828, i32 %827, !dbg !658
  %830 = load i8, i8* %829, align 1, !dbg !658, !nosanitize !294
  %831 = add i8 %830, 1, !dbg !658
  %832 = icmp eq i8 %831, 0, !dbg !658
  %833 = zext i1 %832 to i8, !dbg !658
  %834 = add i8 %831, %833, !dbg !658
  store i8 %834, i8* %829, align 1, !dbg !658, !nosanitize !294
  br label %949, !dbg !658

835:                                              ; preds = %819
  call void @llvm.dbg.value(metadata i64 1, metadata !640, metadata !DIExpression()) #19, !dbg !643
  %836 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 1, i32 0), align 8, !dbg !649, !tbaa !654
  %837 = call i32 @strncmp(i8* noundef %807, i8* noundef %836, i64 noundef %822) #20, !dbg !656
  %838 = icmp eq i32 %837, 0, !dbg !657
  br i1 %838, label %839, label %848, !dbg !658

839:                                              ; preds = %835
  %840 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 244) to i32*), align 4, !dbg !658, !nosanitize !294
  %841 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !658, !nosanitize !294
  %842 = getelementptr i8, i8* %841, i32 %840, !dbg !658
  %843 = load i8, i8* %842, align 1, !dbg !658, !nosanitize !294
  %844 = add i8 %843, 1, !dbg !658
  %845 = icmp eq i8 %844, 0, !dbg !658
  %846 = zext i1 %845 to i8, !dbg !658
  %847 = add i8 %844, %846, !dbg !658
  store i8 %847, i8* %842, align 1, !dbg !658, !nosanitize !294
  br label %949, !dbg !658

848:                                              ; preds = %835
  call void @llvm.dbg.value(metadata i64 2, metadata !640, metadata !DIExpression()) #19, !dbg !643
  %849 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 2, i32 0), align 16, !dbg !649, !tbaa !654
  %850 = call i32 @strncmp(i8* noundef %807, i8* noundef %849, i64 noundef %822) #20, !dbg !656
  %851 = icmp eq i32 %850, 0, !dbg !657
  br i1 %851, label %852, label %861, !dbg !658

852:                                              ; preds = %848
  %853 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 248) to i32*), align 4, !dbg !658, !nosanitize !294
  %854 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !658, !nosanitize !294
  %855 = getelementptr i8, i8* %854, i32 %853, !dbg !658
  %856 = load i8, i8* %855, align 1, !dbg !658, !nosanitize !294
  %857 = add i8 %856, 1, !dbg !658
  %858 = icmp eq i8 %857, 0, !dbg !658
  %859 = zext i1 %858 to i8, !dbg !658
  %860 = add i8 %857, %859, !dbg !658
  store i8 %860, i8* %855, align 1, !dbg !658, !nosanitize !294
  br label %949, !dbg !658

861:                                              ; preds = %848
  call void @llvm.dbg.value(metadata i64 3, metadata !640, metadata !DIExpression()) #19, !dbg !643
  %862 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 3, i32 0), align 8, !dbg !649, !tbaa !654
  %863 = call i32 @strncmp(i8* noundef %807, i8* noundef %862, i64 noundef %822) #20, !dbg !656
  %864 = icmp eq i32 %863, 0, !dbg !657
  br i1 %864, label %865, label %874, !dbg !658

865:                                              ; preds = %861
  %866 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 252) to i32*), align 4, !dbg !658, !nosanitize !294
  %867 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !658, !nosanitize !294
  %868 = getelementptr i8, i8* %867, i32 %866, !dbg !658
  %869 = load i8, i8* %868, align 1, !dbg !658, !nosanitize !294
  %870 = add i8 %869, 1, !dbg !658
  %871 = icmp eq i8 %870, 0, !dbg !658
  %872 = zext i1 %871 to i8, !dbg !658
  %873 = add i8 %870, %872, !dbg !658
  store i8 %873, i8* %868, align 1, !dbg !658, !nosanitize !294
  br label %949, !dbg !658

874:                                              ; preds = %861
  call void @llvm.dbg.value(metadata i64 4, metadata !640, metadata !DIExpression()) #19, !dbg !643
  %875 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 4, i32 0), align 16, !dbg !649, !tbaa !654
  %876 = call i32 @strncmp(i8* noundef %807, i8* noundef %875, i64 noundef %822) #20, !dbg !656
  %877 = icmp eq i32 %876, 0, !dbg !657
  br i1 %877, label %878, label %887, !dbg !658

878:                                              ; preds = %874
  %879 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 256) to i32*), align 4, !dbg !658, !nosanitize !294
  %880 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !658, !nosanitize !294
  %881 = getelementptr i8, i8* %880, i32 %879, !dbg !658
  %882 = load i8, i8* %881, align 1, !dbg !658, !nosanitize !294
  %883 = add i8 %882, 1, !dbg !658
  %884 = icmp eq i8 %883, 0, !dbg !658
  %885 = zext i1 %884 to i8, !dbg !658
  %886 = add i8 %883, %885, !dbg !658
  store i8 %886, i8* %881, align 1, !dbg !658, !nosanitize !294
  br label %949, !dbg !658

887:                                              ; preds = %874
  call void @llvm.dbg.value(metadata i64 5, metadata !640, metadata !DIExpression()) #19, !dbg !643
  %888 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 5, i32 0), align 8, !dbg !649, !tbaa !654
  %889 = call i32 @strncmp(i8* noundef %807, i8* noundef %888, i64 noundef %822) #20, !dbg !656
  %890 = icmp eq i32 %889, 0, !dbg !657
  br i1 %890, label %891, label %900, !dbg !658

891:                                              ; preds = %887
  %892 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 260) to i32*), align 4, !dbg !658, !nosanitize !294
  %893 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !658, !nosanitize !294
  %894 = getelementptr i8, i8* %893, i32 %892, !dbg !658
  %895 = load i8, i8* %894, align 1, !dbg !658, !nosanitize !294
  %896 = add i8 %895, 1, !dbg !658
  %897 = icmp eq i8 %896, 0, !dbg !658
  %898 = zext i1 %897 to i8, !dbg !658
  %899 = add i8 %896, %898, !dbg !658
  store i8 %899, i8* %894, align 1, !dbg !658, !nosanitize !294
  br label %949, !dbg !658

900:                                              ; preds = %887
  call void @llvm.dbg.value(metadata i64 6, metadata !640, metadata !DIExpression()) #19, !dbg !643
  %901 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 6, i32 0), align 16, !dbg !649, !tbaa !654
  %902 = call i32 @strncmp(i8* noundef %807, i8* noundef %901, i64 noundef %822) #20, !dbg !656
  %903 = icmp eq i32 %902, 0, !dbg !657
  br i1 %903, label %904, label %913, !dbg !658

904:                                              ; preds = %900
  %905 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 264) to i32*), align 4, !dbg !658, !nosanitize !294
  %906 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !658, !nosanitize !294
  %907 = getelementptr i8, i8* %906, i32 %905, !dbg !658
  %908 = load i8, i8* %907, align 1, !dbg !658, !nosanitize !294
  %909 = add i8 %908, 1, !dbg !658
  %910 = icmp eq i8 %909, 0, !dbg !658
  %911 = zext i1 %910 to i8, !dbg !658
  %912 = add i8 %909, %911, !dbg !658
  store i8 %912, i8* %907, align 1, !dbg !658, !nosanitize !294
  br label %949, !dbg !658

913:                                              ; preds = %900
  call void @llvm.dbg.value(metadata i64 7, metadata !640, metadata !DIExpression()) #19, !dbg !643
  %914 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 7, i32 0), align 8, !dbg !649, !tbaa !654
  %915 = call i32 @strncmp(i8* noundef %807, i8* noundef %914, i64 noundef %822) #20, !dbg !656
  %916 = icmp eq i32 %915, 0, !dbg !657
  br i1 %916, label %917, label %926, !dbg !658

917:                                              ; preds = %913
  %918 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 268) to i32*), align 4, !dbg !658, !nosanitize !294
  %919 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !658, !nosanitize !294
  %920 = getelementptr i8, i8* %919, i32 %918, !dbg !658
  %921 = load i8, i8* %920, align 1, !dbg !658, !nosanitize !294
  %922 = add i8 %921, 1, !dbg !658
  %923 = icmp eq i8 %922, 0, !dbg !658
  %924 = zext i1 %923 to i8, !dbg !658
  %925 = add i8 %922, %924, !dbg !658
  store i8 %925, i8* %920, align 1, !dbg !658, !nosanitize !294
  br label %949, !dbg !658

926:                                              ; preds = %913
  call void @llvm.dbg.value(metadata i64 8, metadata !640, metadata !DIExpression()) #19, !dbg !643
  %927 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 8, i32 0), align 16, !dbg !649, !tbaa !654
  %928 = call i32 @strncmp(i8* noundef %807, i8* noundef %927, i64 noundef %822) #20, !dbg !656
  %929 = icmp eq i32 %928, 0, !dbg !657
  br i1 %929, label %939, label %930, !dbg !658

930:                                              ; preds = %926
  %931 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 272) to i32*), align 4, !dbg !658, !nosanitize !294
  %932 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !658, !nosanitize !294
  %933 = getelementptr i8, i8* %932, i32 %931, !dbg !658
  %934 = load i8, i8* %933, align 1, !dbg !658, !nosanitize !294
  %935 = add i8 %934, 1, !dbg !658
  %936 = icmp eq i8 %935, 0, !dbg !658
  %937 = zext i1 %936 to i8, !dbg !658
  %938 = add i8 %935, %937, !dbg !658
  store i8 %938, i8* %933, align 1, !dbg !658, !nosanitize !294
  br label %948, !dbg !658

939:                                              ; preds = %926
  %940 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 276) to i32*), align 4, !dbg !658, !nosanitize !294
  %941 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !658, !nosanitize !294
  %942 = getelementptr i8, i8* %941, i32 %940, !dbg !658
  %943 = load i8, i8* %942, align 1, !dbg !658, !nosanitize !294
  %944 = add i8 %943, 1, !dbg !658
  %945 = icmp eq i8 %944, 0, !dbg !658
  %946 = zext i1 %945 to i8, !dbg !658
  %947 = add i8 %944, %946, !dbg !658
  store i8 %947, i8* %942, align 1, !dbg !658, !nosanitize !294
  br label %949, !dbg !658

948:                                              ; preds = %930, %810
  call void @llvm.dbg.label(metadata !642) #19, !dbg !659
  call void (i32, i8*, ...) @file_errx(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i64 0, i64 0), i8* noundef %807) #21, !dbg !660
  unreachable, !dbg !660

949:                                              ; preds = %939, %917, %904, %891, %878, %865, %852, %839, %826
  %950 = phi i64 [ 0, %826 ], [ 1, %839 ], [ 2, %852 ], [ 3, %865 ], [ 4, %878 ], [ 5, %891 ], [ 6, %904 ], [ 7, %917 ], [ 8, %939 ]
  %951 = getelementptr inbounds i8, i8* %808, i64 1, !dbg !661
  call void @llvm.dbg.value(metadata i8* %951, metadata !662, metadata !DIExpression()) #19, !dbg !668
  %952 = call i64 @strtol(i8* nocapture noundef nonnull %951, i8** noundef null, i32 noundef 10) #19, !dbg !670
  %953 = shl i64 %952, 32, !dbg !671
  %954 = ashr exact i64 %953, 32, !dbg !671
  %955 = getelementptr inbounds [9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 %950, i32 1, !dbg !672
  store i64 %954, i64* %955, align 8, !dbg !673, !tbaa !674
  %956 = getelementptr inbounds [9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 %950, i32 5, !dbg !675
  store i32 1, i32* %956, align 4, !dbg !676, !tbaa !677
  br label %392, !dbg !678

957:                                              ; preds = %45
  %958 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 280) to i32*), align 4, !dbg !679, !nosanitize !294
  %959 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !679, !nosanitize !294
  %960 = getelementptr i8, i8* %959, i32 %958, !dbg !679
  %961 = load i8, i8* %960, align 1, !dbg !679, !nosanitize !294
  %962 = add i8 %961, 1, !dbg !679
  %963 = icmp eq i8 %962, 0, !dbg !679
  %964 = zext i1 %963 to i8, !dbg !679
  %965 = add i8 %962, %964, !dbg !679
  store i8 %965, i8* %960, align 1, !dbg !679, !nosanitize !294
  %966 = or i32 %49, 256, !dbg !679
  call void @llvm.dbg.value(metadata i32 %966, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !680

967:                                              ; preds = %45
  %968 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 284) to i32*), align 4, !dbg !681, !nosanitize !294
  %969 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !681, !nosanitize !294
  %970 = getelementptr i8, i8* %969, i32 %968, !dbg !681
  %971 = load i8, i8* %970, align 1, !dbg !681, !nosanitize !294
  %972 = add i8 %971, 1, !dbg !681
  %973 = icmp eq i8 %972, 0, !dbg !681
  %974 = zext i1 %973 to i8, !dbg !681
  %975 = add i8 %972, %974, !dbg !681
  store i8 %975, i8* %970, align 1, !dbg !681, !nosanitize !294
  %976 = or i32 %49, 8, !dbg !681
  call void @llvm.dbg.value(metadata i32 %976, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !682

977:                                              ; preds = %45
  %978 = icmp eq i8* %52, null, !dbg !683
  br i1 %978, label %988, label %979, !dbg !685

979:                                              ; preds = %977
  %980 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 288) to i32*), align 4, !dbg !685, !nosanitize !294
  %981 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !685, !nosanitize !294
  %982 = getelementptr i8, i8* %981, i32 %980, !dbg !685
  %983 = load i8, i8* %982, align 1, !dbg !685, !nosanitize !294
  %984 = add i8 %983, 1, !dbg !685
  %985 = icmp eq i8 %984, 0, !dbg !685
  %986 = zext i1 %985 to i8, !dbg !685
  %987 = add i8 %984, %986, !dbg !685
  store i8 %987, i8* %982, align 1, !dbg !685, !nosanitize !294
  br label %998, !dbg !685

988:                                              ; preds = %977
  %989 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 292) to i32*), align 4, !dbg !686, !nosanitize !294
  %990 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !686, !nosanitize !294
  %991 = getelementptr i8, i8* %990, i32 %989, !dbg !686
  %992 = load i8, i8* %991, align 1, !dbg !686, !nosanitize !294
  %993 = add i8 %992, 1, !dbg !686
  %994 = icmp eq i8 %993, 0, !dbg !686
  %995 = zext i1 %994 to i8, !dbg !686
  %996 = add i8 %993, %995, !dbg !686
  store i8 %996, i8* %991, align 1, !dbg !686, !nosanitize !294
  %997 = call i8* @magic_getpath(i8* noundef null, i32 noundef %46) #19, !dbg !686
  call void @llvm.dbg.value(metadata i8* %997, metadata !290, metadata !DIExpression()), !dbg !295
  br label %998, !dbg !687

998:                                              ; preds = %979, %988
  %999 = phi i8* [ %997, %988 ], [ %52, %979 ], !dbg !295
  call void @llvm.dbg.value(metadata i8* %999, metadata !290, metadata !DIExpression()), !dbg !295
  %1000 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !300
  %1001 = load i8*, i8** @file_progname, align 8, !dbg !689, !tbaa !300
  %1002 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1000, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %1001, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !691
  %1003 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !692, !tbaa !300
  %1004 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1003, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* noundef %999), !dbg !693
  br label %1404, !dbg !694

1005:                                             ; preds = %45
  %1006 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 296) to i32*), align 4, !dbg !695, !nosanitize !294
  %1007 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !695, !nosanitize !294
  %1008 = getelementptr i8, i8* %1007, i32 %1006, !dbg !695
  %1009 = load i8, i8* %1008, align 1, !dbg !695, !nosanitize !294
  %1010 = add i8 %1009, 1, !dbg !695
  %1011 = icmp eq i8 %1010, 0, !dbg !695
  %1012 = zext i1 %1011 to i8, !dbg !695
  %1013 = add i8 %1010, %1012, !dbg !695
  store i8 %1013, i8* %1008, align 1, !dbg !695, !nosanitize !294
  %1014 = or i32 %49, 4, !dbg !695
  call void @llvm.dbg.value(metadata i32 %1014, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !696

1015:                                             ; preds = %45
  %1016 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 300) to i32*), align 4, !dbg !697, !nosanitize !294
  %1017 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !697, !nosanitize !294
  %1018 = getelementptr i8, i8* %1017, i32 %1016, !dbg !697
  %1019 = load i8, i8* %1018, align 1, !dbg !697, !nosanitize !294
  %1020 = add i8 %1019, 1, !dbg !697
  %1021 = icmp eq i8 %1020, 0, !dbg !697
  %1022 = zext i1 %1021 to i8, !dbg !697
  %1023 = add i8 %1020, %1022, !dbg !697
  store i8 %1023, i8* %1018, align 1, !dbg !697, !nosanitize !294
  %1024 = or i32 %49, 33554436, !dbg !697
  call void @llvm.dbg.value(metadata i32 %1024, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !698

1025:                                             ; preds = %45
  %1026 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 304) to i32*), align 4, !dbg !699, !nosanitize !294
  %1027 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !699, !nosanitize !294
  %1028 = getelementptr i8, i8* %1027, i32 %1026, !dbg !699
  %1029 = load i8, i8* %1028, align 1, !dbg !699, !nosanitize !294
  %1030 = add i8 %1029, 1, !dbg !699
  %1031 = icmp eq i8 %1030, 0, !dbg !699
  %1032 = zext i1 %1031 to i8, !dbg !699
  %1033 = add i8 %1030, %1032, !dbg !699
  store i8 %1033, i8* %1028, align 1, !dbg !699, !nosanitize !294
  %1034 = or i32 %49, 2, !dbg !699
  call void @llvm.dbg.value(metadata i32 %1034, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !700

1035:                                             ; preds = %45
  %1036 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 308) to i32*), align 4, !dbg !701, !nosanitize !294
  %1037 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !701, !nosanitize !294
  %1038 = getelementptr i8, i8* %1037, i32 %1036, !dbg !701
  %1039 = load i8, i8* %1038, align 1, !dbg !701, !nosanitize !294
  %1040 = add i8 %1039, 1, !dbg !701
  %1041 = icmp eq i8 %1040, 0, !dbg !701
  %1042 = zext i1 %1041 to i8, !dbg !701
  %1043 = add i8 %1040, %1042, !dbg !701
  store i8 %1043, i8* %1038, align 1, !dbg !701, !nosanitize !294
  %1044 = and i32 %49, -3, !dbg !701
  call void @llvm.dbg.value(metadata i32 %1044, metadata !96, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !702

1045:                                             ; preds = %45
  %1046 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 312) to i32*), align 4, !dbg !703, !nosanitize !294
  %1047 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !703, !nosanitize !294
  %1048 = getelementptr i8, i8* %1047, i32 %1046, !dbg !703
  %1049 = load i8, i8* %1048, align 1, !dbg !703, !nosanitize !294
  %1050 = add i8 %1049, 1, !dbg !703
  %1051 = icmp eq i8 %1050, 0, !dbg !703
  %1052 = zext i1 %1051 to i8, !dbg !703
  %1053 = add i8 %1050, %1052, !dbg !703
  store i8 %1053, i8* %1048, align 1, !dbg !703, !nosanitize !294
  %1054 = add nsw i32 %48, 1, !dbg !703
  call void @llvm.dbg.value(metadata i32 %1054, metadata !95, metadata !DIExpression()), !dbg !295
  br label %392, !dbg !704

1055:                                             ; preds = %45
  %1056 = icmp eq i32 %48, 0, !dbg !705
  br i1 %1056, label %1069, label %1057, !dbg !707

1057:                                             ; preds = %1055
  %1058 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 316) to i32*), align 4, !dbg !708, !nosanitize !294
  %1059 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !708, !nosanitize !294
  %1060 = getelementptr i8, i8* %1059, i32 %1058, !dbg !708
  %1061 = load i8, i8* %1060, align 1, !dbg !708, !nosanitize !294
  %1062 = add i8 %1061, 1, !dbg !708
  %1063 = icmp eq i8 %1062, 0, !dbg !708
  %1064 = zext i1 %1063 to i8, !dbg !708
  %1065 = add i8 %1062, %1064, !dbg !708
  store i8 %1065, i8* %1060, align 1, !dbg !708, !nosanitize !294
  %1066 = load i8*, i8** @file_progname, align 8, !dbg !708, !tbaa !300
  call void @llvm.dbg.value(metadata i8* %1066, metadata !417, metadata !DIExpression()) #19, !dbg !712
  %1067 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !713, !tbaa !300
  %1068 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1067, i8* noundef getelementptr inbounds ([297 x i8], [297 x i8]* @.str.84, i64 0, i64 0), i8* noundef %1066, i8* noundef %1066, i8* noundef %1066) #22, !dbg !714
  call void @exit(i32 noundef 1) #21, !dbg !715
  unreachable, !dbg !715

1069:                                             ; preds = %1055
  %1070 = icmp eq i32 %50, 0, !dbg !716
  br i1 %1070, label %1080, label %1071, !dbg !718

1071:                                             ; preds = %1069
  %1072 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 320) to i32*), align 4, !dbg !718, !nosanitize !294
  %1073 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !718, !nosanitize !294
  %1074 = getelementptr i8, i8* %1073, i32 %1072, !dbg !718
  %1075 = load i8, i8* %1074, align 1, !dbg !718, !nosanitize !294
  %1076 = add i8 %1075, 1, !dbg !718
  %1077 = icmp eq i8 %1076, 0, !dbg !718
  %1078 = zext i1 %1077 to i8, !dbg !718
  %1079 = add i8 %1076, %1078, !dbg !718
  store i8 %1079, i8* %1074, align 1, !dbg !718, !nosanitize !294
  br label %1404, !dbg !718

1080:                                             ; preds = %1069
  %1081 = call i32 @magic_version() #19, !dbg !719
  %1082 = icmp eq i32 %1081, 545, !dbg !721
  br i1 %1082, label %1083, label %1092, !dbg !722

1083:                                             ; preds = %1080
  %1084 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 324) to i32*), align 4, !dbg !722, !nosanitize !294
  %1085 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !722, !nosanitize !294
  %1086 = getelementptr i8, i8* %1085, i32 %1084, !dbg !722
  %1087 = load i8, i8* %1086, align 1, !dbg !722, !nosanitize !294
  %1088 = add i8 %1087, 1, !dbg !722
  %1089 = icmp eq i8 %1088, 0, !dbg !722
  %1090 = zext i1 %1089 to i8, !dbg !722
  %1091 = add i8 %1088, %1090, !dbg !722
  store i8 %1091, i8* %1086, align 1, !dbg !722, !nosanitize !294
  br label %1102, !dbg !722

1092:                                             ; preds = %1080
  %1093 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 328) to i32*), align 4, !dbg !723, !nosanitize !294
  %1094 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !723, !nosanitize !294
  %1095 = getelementptr i8, i8* %1094, i32 %1093, !dbg !723
  %1096 = load i8, i8* %1095, align 1, !dbg !723, !nosanitize !294
  %1097 = add i8 %1096, 1, !dbg !723
  %1098 = icmp eq i8 %1097, 0, !dbg !723
  %1099 = zext i1 %1098 to i8, !dbg !723
  %1100 = add i8 %1097, %1099, !dbg !723
  store i8 %1100, i8* %1095, align 1, !dbg !723, !nosanitize !294
  %1101 = call i32 @magic_version() #19, !dbg !723
  call void (i8*, ...) @file_warnx(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0), i32 noundef 545, i32 noundef %1101), !dbg !724
  br label %1102, !dbg !724

1102:                                             ; preds = %1083, %1092
  %1103 = add nsw i32 %46, -1, !dbg !725
  %1104 = icmp ult i32 %1103, 3, !dbg !725
  br i1 %1104, label %1105, label %1180, !dbg !725

1105:                                             ; preds = %1102
  %1106 = or i32 %49, 64, !dbg !726
  %1107 = call %struct.magic_set* @magic_open(i32 noundef %1106) #19, !dbg !728
  call void @llvm.dbg.value(metadata %struct.magic_set* %1107, metadata !98, metadata !DIExpression()), !dbg !295
  %1108 = icmp eq %struct.magic_set* %1107, null, !dbg !729
  br i1 %1108, label %1109, label %1118, !dbg !731

1109:                                             ; preds = %1105
  %1110 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 332) to i32*), align 4, !dbg !732, !nosanitize !294
  %1111 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !732, !nosanitize !294
  %1112 = getelementptr i8, i8* %1111, i32 %1110, !dbg !732
  %1113 = load i8, i8* %1112, align 1, !dbg !732, !nosanitize !294
  %1114 = add i8 %1113, 1, !dbg !732
  %1115 = icmp eq i8 %1114, 0, !dbg !732
  %1116 = zext i1 %1115 to i8, !dbg !732
  %1117 = add i8 %1114, %1116, !dbg !732
  store i8 %1117, i8* %1112, align 1, !dbg !732, !nosanitize !294
  call void (i8*, ...) @file_warn(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)), !dbg !732
  br label %1404, !dbg !734

1118:                                             ; preds = %1105
  switch i32 %46, label %1149 [
    i32 1, label %1119
    i32 2, label %1129
    i32 3, label %1139
  ], !dbg !735

1119:                                             ; preds = %1118
  %1120 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 336) to i32*), align 4, !dbg !736, !nosanitize !294
  %1121 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !736, !nosanitize !294
  %1122 = getelementptr i8, i8* %1121, i32 %1120, !dbg !736
  %1123 = load i8, i8* %1122, align 1, !dbg !736, !nosanitize !294
  %1124 = add i8 %1123, 1, !dbg !736
  %1125 = icmp eq i8 %1124, 0, !dbg !736
  %1126 = zext i1 %1125 to i8, !dbg !736
  %1127 = add i8 %1124, %1126, !dbg !736
  store i8 %1127, i8* %1122, align 1, !dbg !736, !nosanitize !294
  %1128 = call i32 @magic_check(%struct.magic_set* noundef nonnull %1107, i8* noundef %52) #19, !dbg !736
  call void @llvm.dbg.value(metadata i32 %1128, metadata !88, metadata !DIExpression()), !dbg !295
  br label %1158, !dbg !738

1129:                                             ; preds = %1118
  %1130 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 340) to i32*), align 4, !dbg !739, !nosanitize !294
  %1131 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !739, !nosanitize !294
  %1132 = getelementptr i8, i8* %1131, i32 %1130, !dbg !739
  %1133 = load i8, i8* %1132, align 1, !dbg !739, !nosanitize !294
  %1134 = add i8 %1133, 1, !dbg !739
  %1135 = icmp eq i8 %1134, 0, !dbg !739
  %1136 = zext i1 %1135 to i8, !dbg !739
  %1137 = add i8 %1134, %1136, !dbg !739
  store i8 %1137, i8* %1132, align 1, !dbg !739, !nosanitize !294
  %1138 = call i32 @magic_compile(%struct.magic_set* noundef nonnull %1107, i8* noundef %52) #19, !dbg !739
  call void @llvm.dbg.value(metadata i32 %1138, metadata !88, metadata !DIExpression()), !dbg !295
  br label %1158, !dbg !740

1139:                                             ; preds = %1118
  %1140 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 344) to i32*), align 4, !dbg !741, !nosanitize !294
  %1141 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !741, !nosanitize !294
  %1142 = getelementptr i8, i8* %1141, i32 %1140, !dbg !741
  %1143 = load i8, i8* %1142, align 1, !dbg !741, !nosanitize !294
  %1144 = add i8 %1143, 1, !dbg !741
  %1145 = icmp eq i8 %1144, 0, !dbg !741
  %1146 = zext i1 %1145 to i8, !dbg !741
  %1147 = add i8 %1144, %1146, !dbg !741
  store i8 %1147, i8* %1142, align 1, !dbg !741, !nosanitize !294
  %1148 = call i32 @magic_list(%struct.magic_set* noundef nonnull %1107, i8* noundef %52) #19, !dbg !741
  call void @llvm.dbg.value(metadata i32 %1148, metadata !88, metadata !DIExpression()), !dbg !295
  br label %1158, !dbg !742

1149:                                             ; preds = %1118
  %1150 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 348) to i32*), align 4, !dbg !743, !nosanitize !294
  %1151 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !743, !nosanitize !294
  %1152 = getelementptr i8, i8* %1151, i32 %1150, !dbg !743
  %1153 = load i8, i8* %1152, align 1, !dbg !743, !nosanitize !294
  %1154 = add i8 %1153, 1, !dbg !743
  %1155 = icmp eq i8 %1154, 0, !dbg !743
  %1156 = zext i1 %1155 to i8, !dbg !743
  %1157 = add i8 %1154, %1156, !dbg !743
  store i8 %1157, i8* %1152, align 1, !dbg !743, !nosanitize !294
  call void @abort() #21, !dbg !743
  unreachable, !dbg !743

1158:                                             ; preds = %1139, %1129, %1119
  %1159 = phi i32 [ %1148, %1139 ], [ %1138, %1129 ], [ %1128, %1119 ], !dbg !744
  call void @llvm.dbg.value(metadata i32 %1159, metadata !88, metadata !DIExpression()), !dbg !295
  %1160 = icmp eq i32 %1159, -1, !dbg !745
  br i1 %1160, label %1170, label %1161, !dbg !747

1161:                                             ; preds = %1158
  %1162 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 352) to i32*), align 4, !dbg !747, !nosanitize !294
  %1163 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !747, !nosanitize !294
  %1164 = getelementptr i8, i8* %1163, i32 %1162, !dbg !747
  %1165 = load i8, i8* %1164, align 1, !dbg !747, !nosanitize !294
  %1166 = add i8 %1165, 1, !dbg !747
  %1167 = icmp eq i8 %1166, 0, !dbg !747
  %1168 = zext i1 %1167 to i8, !dbg !747
  %1169 = add i8 %1166, %1168, !dbg !747
  store i8 %1169, i8* %1164, align 1, !dbg !747, !nosanitize !294
  br label %1355, !dbg !747

1170:                                             ; preds = %1158
  %1171 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 356) to i32*), align 4, !dbg !748, !nosanitize !294
  %1172 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !748, !nosanitize !294
  %1173 = getelementptr i8, i8* %1172, i32 %1171, !dbg !748
  %1174 = load i8, i8* %1173, align 1, !dbg !748, !nosanitize !294
  %1175 = add i8 %1174, 1, !dbg !748
  %1176 = icmp eq i8 %1175, 0, !dbg !748
  %1177 = zext i1 %1176 to i8, !dbg !748
  %1178 = add i8 %1175, %1177, !dbg !748
  store i8 %1178, i8* %1173, align 1, !dbg !748, !nosanitize !294
  %1179 = call i8* @magic_error(%struct.magic_set* noundef nonnull %1107) #19, !dbg !748
  call void (i8*, ...) @file_warnx(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef %1179), !dbg !750
  call void @llvm.dbg.value(metadata i32 1, metadata !97, metadata !DIExpression()), !dbg !295
  br label %1355, !dbg !751

1180:                                             ; preds = %1102
  %1181 = icmp eq %struct.magic_set* %51, null, !dbg !752
  br i1 %1181, label %1191, label %1182, !dbg !754

1182:                                             ; preds = %1180
  %1183 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 360) to i32*), align 4, !dbg !754, !nosanitize !294
  %1184 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !754, !nosanitize !294
  %1185 = getelementptr i8, i8* %1184, i32 %1183, !dbg !754
  %1186 = load i8, i8* %1185, align 1, !dbg !754, !nosanitize !294
  %1187 = add i8 %1186, 1, !dbg !754
  %1188 = icmp eq i8 %1187, 0, !dbg !754
  %1189 = zext i1 %1188 to i8, !dbg !754
  %1190 = add i8 %1187, %1189, !dbg !754
  store i8 %1190, i8* %1185, align 1, !dbg !754, !nosanitize !294
  br label %1212, !dbg !754

1191:                                             ; preds = %1180
  %1192 = call fastcc %struct.magic_set* @load(i8* noundef %52, i32 noundef %49), !dbg !755
  call void @llvm.dbg.value(metadata %struct.magic_set* %1192, metadata !98, metadata !DIExpression()), !dbg !295
  %1193 = icmp eq %struct.magic_set* %1192, null, !dbg !757
  br i1 %1193, label %1203, label %1194, !dbg !758

1194:                                             ; preds = %1191
  %1195 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 364) to i32*), align 4, !dbg !758, !nosanitize !294
  %1196 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !758, !nosanitize !294
  %1197 = getelementptr i8, i8* %1196, i32 %1195, !dbg !758
  %1198 = load i8, i8* %1197, align 1, !dbg !758, !nosanitize !294
  %1199 = add i8 %1198, 1, !dbg !758
  %1200 = icmp eq i8 %1199, 0, !dbg !758
  %1201 = zext i1 %1200 to i8, !dbg !758
  %1202 = add i8 %1199, %1201, !dbg !758
  store i8 %1202, i8* %1197, align 1, !dbg !758, !nosanitize !294
  br label %1212, !dbg !758

1203:                                             ; preds = %1191
  %1204 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 368) to i32*), align 4, !dbg !758, !nosanitize !294
  %1205 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !758, !nosanitize !294
  %1206 = getelementptr i8, i8* %1205, i32 %1204, !dbg !758
  %1207 = load i8, i8* %1206, align 1, !dbg !758, !nosanitize !294
  %1208 = add i8 %1207, 1, !dbg !758
  %1209 = icmp eq i8 %1208, 0, !dbg !758
  %1210 = zext i1 %1209 to i8, !dbg !758
  %1211 = add i8 %1208, %1210, !dbg !758
  store i8 %1211, i8* %1206, align 1, !dbg !758, !nosanitize !294
  br label %1404, !dbg !758

1212:                                             ; preds = %1194, %1182
  %1213 = phi %struct.magic_set* [ %1192, %1194 ], [ %51, %1182 ], !dbg !295
  call void @llvm.dbg.value(metadata %struct.magic_set* %1213, metadata !98, metadata !DIExpression()), !dbg !295
  call fastcc void @applyparam(%struct.magic_set* noundef nonnull %1213), !dbg !759
  %1214 = load i32, i32* @optind, align 4, !dbg !760, !tbaa !318
  %1215 = icmp eq i32 %1214, %0, !dbg !762
  br i1 %1215, label %1216, label %1236, !dbg !763

1216:                                             ; preds = %1212
  %1217 = icmp eq i32 %47, 0, !dbg !764
  br i1 %1217, label %1227, label %1218, !dbg !767

1218:                                             ; preds = %1216
  %1219 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 372) to i32*), align 4, !dbg !767, !nosanitize !294
  %1220 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !767, !nosanitize !294
  %1221 = getelementptr i8, i8* %1220, i32 %1219, !dbg !767
  %1222 = load i8, i8* %1221, align 1, !dbg !767, !nosanitize !294
  %1223 = add i8 %1222, 1, !dbg !767
  %1224 = icmp eq i8 %1223, 0, !dbg !767
  %1225 = zext i1 %1224 to i8, !dbg !767
  %1226 = add i8 %1223, %1225, !dbg !767
  store i8 %1226, i8* %1221, align 1, !dbg !767, !nosanitize !294
  br label %1355, !dbg !767

1227:                                             ; preds = %1216
  %1228 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 376) to i32*), align 4, !dbg !768, !nosanitize !294
  %1229 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !768, !nosanitize !294
  %1230 = getelementptr i8, i8* %1229, i32 %1228, !dbg !768
  %1231 = load i8, i8* %1230, align 1, !dbg !768, !nosanitize !294
  %1232 = add i8 %1231, 1, !dbg !768
  %1233 = icmp eq i8 %1232, 0, !dbg !768
  %1234 = zext i1 %1233 to i8, !dbg !768
  %1235 = add i8 %1232, %1234, !dbg !768
  store i8 %1235, i8* %1230, align 1, !dbg !768, !nosanitize !294
  call fastcc void @usage(), !dbg !768
  unreachable, !dbg !768

1236:                                             ; preds = %1212
  call void @llvm.dbg.value(metadata i64 0, metadata !91, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %1214, metadata !90, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !295
  %1237 = sext i32 %0 to i64
  %1238 = icmp ult i32 %1214, %0, !dbg !769
  br i1 %1238, label %1248, label %1239, !dbg !772

1239:                                             ; preds = %1236
  %1240 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 380) to i32*), align 4, !dbg !772, !nosanitize !294
  %1241 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !772, !nosanitize !294
  %1242 = getelementptr i8, i8* %1241, i32 %1240, !dbg !772
  %1243 = load i8, i8* %1242, align 1, !dbg !772, !nosanitize !294
  %1244 = add i8 %1243, 1, !dbg !772
  %1245 = icmp eq i8 %1244, 0, !dbg !772
  %1246 = zext i1 %1245 to i8, !dbg !772
  %1247 = add i8 %1244, %1246, !dbg !772
  store i8 %1247, i8* %1242, align 1, !dbg !772, !nosanitize !294
  br label %1288, !dbg !772

1248:                                             ; preds = %1236
  %1249 = sext i32 %1214 to i64, !dbg !773
  call void @llvm.dbg.value(metadata i64 %1249, metadata !90, metadata !DIExpression()), !dbg !295
  br label %1250, !dbg !772

1250:                                             ; preds = %1269, %1248
  %1251 = phi i64 [ %1257, %1269 ], [ 0, %1248 ]
  %1252 = phi i64 [ %1267, %1269 ], [ %1249, %1248 ]
  call void @llvm.dbg.value(metadata i64 %1251, metadata !91, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 %1252, metadata !90, metadata !DIExpression()), !dbg !295
  %1253 = getelementptr inbounds i8*, i8** %1, i64 %1252, !dbg !774
  %1254 = load i8*, i8** %1253, align 8, !dbg !774, !tbaa !300
  %1255 = call i64 @file_mbswidth(%struct.magic_set* noundef %1213, i8* noundef %1254), !dbg !776
  call void @llvm.dbg.value(metadata i64 %1255, metadata !92, metadata !DIExpression()), !dbg !295
  %1256 = icmp ugt i64 %1255, %1251, !dbg !777
  %1257 = select i1 %1256, i64 %1255, i64 %1251, !dbg !779
  %1258 = select i1 %1256, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 460) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 464) to i32*), !dbg !295
  %1259 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !295, !nosanitize !294
  %1260 = load i32, i32* %1258, align 4, !dbg !295, !nosanitize !294
  %1261 = getelementptr i8, i8* %1259, i32 %1260, !dbg !295
  %1262 = load i8, i8* %1261, align 1, !dbg !295, !nosanitize !294
  %1263 = add i8 %1262, 1, !dbg !295
  %1264 = icmp eq i8 %1263, 0, !dbg !295
  %1265 = zext i1 %1264 to i8, !dbg !295
  %1266 = add i8 %1263, %1265, !dbg !295
  store i8 %1266, i8* %1261, align 1, !dbg !295, !nosanitize !294
  call void @llvm.dbg.value(metadata i64 %1257, metadata !91, metadata !DIExpression()), !dbg !295
  %1267 = add nuw i64 %1252, 1, !dbg !780
  call void @llvm.dbg.value(metadata i64 %1267, metadata !90, metadata !DIExpression()), !dbg !295
  %1268 = icmp ult i64 %1267, %1237, !dbg !769
  br i1 %1268, label %1269, label %1278, !dbg !772, !llvm.loop !781

1269:                                             ; preds = %1250
  %1270 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 384) to i32*), align 4, !dbg !772, !nosanitize !294
  %1271 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !772, !nosanitize !294
  %1272 = getelementptr i8, i8* %1271, i32 %1270, !dbg !772
  %1273 = load i8, i8* %1272, align 1, !dbg !772, !nosanitize !294
  %1274 = add i8 %1273, 1, !dbg !772
  %1275 = icmp eq i8 %1274, 0, !dbg !772
  %1276 = zext i1 %1275 to i8, !dbg !772
  %1277 = add i8 %1274, %1276, !dbg !772
  store i8 %1277, i8* %1272, align 1, !dbg !772, !nosanitize !294
  br label %1250, !dbg !772

1278:                                             ; preds = %1250
  %1279 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 388) to i32*), align 4, !dbg !783, !nosanitize !294
  %1280 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !783, !nosanitize !294
  %1281 = getelementptr i8, i8* %1280, i32 %1279, !dbg !783
  %1282 = load i8, i8* %1281, align 1, !dbg !783, !nosanitize !294
  %1283 = add i8 %1282, 1, !dbg !783
  %1284 = icmp eq i8 %1283, 0, !dbg !783
  %1285 = zext i1 %1284 to i8, !dbg !783
  %1286 = add i8 %1283, %1285, !dbg !783
  store i8 %1286, i8* %1281, align 1, !dbg !783, !nosanitize !294
  %1287 = trunc i64 %1257 to i32, !dbg !783
  br label %1288, !dbg !783

1288:                                             ; preds = %1239, %1278
  %1289 = phi i32 [ 0, %1239 ], [ %1287, %1278 ]
  %1290 = load i32, i32* @bflag, align 4, !dbg !783, !tbaa !318
  %1291 = icmp eq i32 %1290, 2, !dbg !785
  %1292 = load i32, i32* @optind, align 4, !dbg !295, !tbaa !318
  br i1 %1291, label %1302, label %1293, !dbg !786

1293:                                             ; preds = %1288
  %1294 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 392) to i32*), align 4, !dbg !786, !nosanitize !294
  %1295 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !786, !nosanitize !294
  %1296 = getelementptr i8, i8* %1295, i32 %1294, !dbg !786
  %1297 = load i8, i8* %1296, align 1, !dbg !786, !nosanitize !294
  %1298 = add i8 %1297, 1, !dbg !786
  %1299 = icmp eq i8 %1298, 0, !dbg !786
  %1300 = zext i1 %1299 to i8, !dbg !786
  %1301 = add i8 %1298, %1300, !dbg !786
  store i8 %1301, i8* %1296, align 1, !dbg !786, !nosanitize !294
  br label %1314, !dbg !786

1302:                                             ; preds = %1288
  %1303 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 396) to i32*), align 4, !dbg !787, !nosanitize !294
  %1304 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !787, !nosanitize !294
  %1305 = getelementptr i8, i8* %1304, i32 %1303, !dbg !787
  %1306 = load i8, i8* %1305, align 1, !dbg !787, !nosanitize !294
  %1307 = add i8 %1306, 1, !dbg !787
  %1308 = icmp eq i8 %1307, 0, !dbg !787
  %1309 = zext i1 %1308 to i8, !dbg !787
  %1310 = add i8 %1307, %1309, !dbg !787
  store i8 %1310, i8* %1305, align 1, !dbg !787, !nosanitize !294
  %1311 = add nsw i32 %0, -1, !dbg !787
  %1312 = icmp sge i32 %1292, %1311, !dbg !789
  %1313 = zext i1 %1312 to i32, !dbg !789
  store i32 %1313, i32* @bflag, align 4, !dbg !790, !tbaa !318
  br label %1314, !dbg !791

1314:                                             ; preds = %1293, %1302
  call void @llvm.dbg.value(metadata i32 0, metadata !97, metadata !DIExpression()), !dbg !295
  %1315 = icmp slt i32 %1292, %0, !dbg !792
  br i1 %1315, label %1325, label %1316, !dbg !795

1316:                                             ; preds = %1314
  %1317 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 400) to i32*), align 4, !dbg !795, !nosanitize !294
  %1318 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !795, !nosanitize !294
  %1319 = getelementptr i8, i8* %1318, i32 %1317, !dbg !795
  %1320 = load i8, i8* %1319, align 1, !dbg !795, !nosanitize !294
  %1321 = add i8 %1320, 1, !dbg !795
  %1322 = icmp eq i8 %1321, 0, !dbg !795
  %1323 = zext i1 %1322 to i8, !dbg !795
  %1324 = add i8 %1321, %1323, !dbg !795
  store i8 %1324, i8* %1319, align 1, !dbg !795, !nosanitize !294
  br label %1355, !dbg !795

1325:                                             ; preds = %1314
  br label %1326, !dbg !795

1326:                                             ; preds = %1346, %1325
  %1327 = phi i32 [ %1335, %1346 ], [ %1292, %1325 ]
  %1328 = phi i32 [ %1333, %1346 ], [ 0, %1325 ]
  call void @llvm.dbg.value(metadata i32 %1328, metadata !97, metadata !DIExpression()), !dbg !295
  %1329 = sext i32 %1327 to i64, !dbg !796
  %1330 = getelementptr inbounds i8*, i8** %1, i64 %1329, !dbg !796
  %1331 = load i8*, i8** %1330, align 8, !dbg !796, !tbaa !300
  %1332 = call fastcc i32 @process(%struct.magic_set* noundef %1213, i8* noundef %1331, i32 noundef %1289), !dbg !797
  %1333 = or i32 %1332, %1328, !dbg !798
  call void @llvm.dbg.value(metadata i32 %1333, metadata !97, metadata !DIExpression()), !dbg !295
  %1334 = load i32, i32* @optind, align 4, !dbg !799, !tbaa !318
  %1335 = add nsw i32 %1334, 1, !dbg !799
  store i32 %1335, i32* @optind, align 4, !dbg !799, !tbaa !318
  %1336 = icmp slt i32 %1335, %0, !dbg !792
  br i1 %1336, label %1346, label %1337, !dbg !795, !llvm.loop !800

1337:                                             ; preds = %1326
  %1338 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 404) to i32*), align 4, !dbg !795, !nosanitize !294
  %1339 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !795, !nosanitize !294
  %1340 = getelementptr i8, i8* %1339, i32 %1338, !dbg !795
  %1341 = load i8, i8* %1340, align 1, !dbg !795, !nosanitize !294
  %1342 = add i8 %1341, 1, !dbg !795
  %1343 = icmp eq i8 %1342, 0, !dbg !795
  %1344 = zext i1 %1343 to i8, !dbg !795
  %1345 = add i8 %1342, %1344, !dbg !795
  store i8 %1345, i8* %1340, align 1, !dbg !795, !nosanitize !294
  br label %1355, !dbg !795

1346:                                             ; preds = %1326
  %1347 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 408) to i32*), align 4, !dbg !795, !nosanitize !294
  %1348 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !795, !nosanitize !294
  %1349 = getelementptr i8, i8* %1348, i32 %1347, !dbg !795
  %1350 = load i8, i8* %1349, align 1, !dbg !795, !nosanitize !294
  %1351 = add i8 %1350, 1, !dbg !795
  %1352 = icmp eq i8 %1351, 0, !dbg !795
  %1353 = zext i1 %1352 to i8, !dbg !795
  %1354 = add i8 %1351, %1353, !dbg !795
  store i8 %1354, i8* %1349, align 1, !dbg !795, !nosanitize !294
  br label %1326, !dbg !795

1355:                                             ; preds = %1337, %1316, %1218, %1161, %1170
  %1356 = phi i32 [ 0, %1218 ], [ 1, %1170 ], [ 0, %1161 ], [ 0, %1316 ], [ %1333, %1337 ], !dbg !295
  %1357 = phi %struct.magic_set* [ %1213, %1218 ], [ %1107, %1170 ], [ %1107, %1161 ], [ %1213, %1316 ], [ %1213, %1337 ], !dbg !802
  call void @llvm.dbg.value(metadata %struct.magic_set* %1357, metadata !98, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %1356, metadata !97, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.label(metadata !292), !dbg !803
  %1358 = load i32, i32* @nobuffer, align 4, !dbg !804, !tbaa !318
  %1359 = icmp eq i32 %1358, 0, !dbg !804
  br i1 %1359, label %1369, label %1360, !dbg !806

1360:                                             ; preds = %1355
  %1361 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 412) to i32*), align 4, !dbg !806, !nosanitize !294
  %1362 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !806, !nosanitize !294
  %1363 = getelementptr i8, i8* %1362, i32 %1361, !dbg !806
  %1364 = load i8, i8* %1363, align 1, !dbg !806, !nosanitize !294
  %1365 = add i8 %1364, 1, !dbg !806
  %1366 = icmp eq i8 %1365, 0, !dbg !806
  %1367 = zext i1 %1366 to i8, !dbg !806
  %1368 = add i8 %1365, %1367, !dbg !806
  store i8 %1368, i8* %1363, align 1, !dbg !806, !nosanitize !294
  br label %1383, !dbg !806

1369:                                             ; preds = %1355
  %1370 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 416) to i32*), align 4, !dbg !807, !nosanitize !294
  %1371 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !807, !nosanitize !294
  %1372 = getelementptr i8, i8* %1371, i32 %1370, !dbg !807
  %1373 = load i8, i8* %1372, align 1, !dbg !807, !nosanitize !294
  %1374 = add i8 %1373, 1, !dbg !807
  %1375 = icmp eq i8 %1374, 0, !dbg !807
  %1376 = zext i1 %1375 to i8, !dbg !807
  %1377 = add i8 %1374, %1376, !dbg !807
  store i8 %1377, i8* %1372, align 1, !dbg !807, !nosanitize !294
  %1378 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !807, !tbaa !300
  %1379 = call i32 @fflush(%struct._IO_FILE* noundef %1378), !dbg !808
  %1380 = icmp ne i32 %1379, 0, !dbg !809
  %1381 = zext i1 %1380 to i32, !dbg !809
  %1382 = or i32 %1356, %1381, !dbg !810
  call void @llvm.dbg.value(metadata i32 %1382, metadata !97, metadata !DIExpression()), !dbg !295
  br label %1383, !dbg !811

1383:                                             ; preds = %1360, %1369
  %1384 = phi i32 [ %1356, %1360 ], [ %1382, %1369 ], !dbg !295
  call void @llvm.dbg.value(metadata i32 %1384, metadata !97, metadata !DIExpression()), !dbg !295
  %1385 = icmp eq %struct.magic_set* %1357, null, !dbg !812
  br i1 %1385, label %1386, label %1395, !dbg !814

1386:                                             ; preds = %1383
  %1387 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 420) to i32*), align 4, !dbg !814, !nosanitize !294
  %1388 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !814, !nosanitize !294
  %1389 = getelementptr i8, i8* %1388, i32 %1387, !dbg !814
  %1390 = load i8, i8* %1389, align 1, !dbg !814, !nosanitize !294
  %1391 = add i8 %1390, 1, !dbg !814
  %1392 = icmp eq i8 %1391, 0, !dbg !814
  %1393 = zext i1 %1392 to i8, !dbg !814
  %1394 = add i8 %1391, %1393, !dbg !814
  store i8 %1394, i8* %1389, align 1, !dbg !814, !nosanitize !294
  br label %1404, !dbg !814

1395:                                             ; preds = %1383
  %1396 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([118 x i32]* @__sancov_gen_ to i64), i64 424) to i32*), align 4, !dbg !815, !nosanitize !294
  %1397 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !815, !nosanitize !294
  %1398 = getelementptr i8, i8* %1397, i32 %1396, !dbg !815
  %1399 = load i8, i8* %1398, align 1, !dbg !815, !nosanitize !294
  %1400 = add i8 %1399, 1, !dbg !815
  %1401 = icmp eq i8 %1400, 0, !dbg !815
  %1402 = zext i1 %1401 to i8, !dbg !815
  %1403 = add i8 %1400, %1402, !dbg !815
  store i8 %1403, i8* %1398, align 1, !dbg !815, !nosanitize !294
  call void @magic_close(%struct.magic_set* noundef nonnull %1357) #19, !dbg !815
  br label %1404, !dbg !815

1404:                                             ; preds = %1386, %1203, %1071, %442, %1395, %1109, %998
  %1405 = phi i32 [ 0, %998 ], [ 1, %1109 ], [ %50, %1071 ], [ 1, %1203 ], [ %1384, %1395 ], [ %1384, %1386 ], [ 1, %442 ], !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #19, !dbg !816
  ret i32 %1405, !dbg !816
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !817 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define hidden void @file_setprogname(i8* noundef %0) local_unnamed_addr #5 comdat !dbg !308 {
  %2 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @__sancov_gen_.155, i32 0, i32 0), align 4, !dbg !821, !nosanitize !294
  %3 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !821, !nosanitize !294
  %4 = getelementptr i8, i8* %3, i32 %2, !dbg !821
  %5 = load i8, i8* %4, align 1, !dbg !821, !nosanitize !294
  %6 = add i8 %5, 1, !dbg !821
  %7 = icmp eq i8 %6, 0, !dbg !821
  %8 = zext i1 %7 to i8, !dbg !821
  %9 = add i8 %6, %8, !dbg !821
  store i8 %9, i8* %4, align 1, !dbg !821, !nosanitize !294
  call void @llvm.dbg.value(metadata i8* %0, metadata !307, metadata !DIExpression()), !dbg !822
  store i8* %0, i8** @file_progname, align 8, !dbg !823, !tbaa !300
  ret void, !dbg !824
}

; Function Attrs: nofree nounwind readonly
declare !dbg !825 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !828 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @usage() unnamed_addr #7 !dbg !415 {
  %1 = load i8*, i8** @file_progname, align 8, !dbg !834, !tbaa !300
  call void @llvm.dbg.value(metadata i8* %1, metadata !417, metadata !DIExpression()), !dbg !836
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !837, !tbaa !300
  %3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([297 x i8], [297 x i8]* @.str.84, i64 0, i64 0), i8* noundef %1, i8* noundef %1, i8* noundef %1) #23, !dbg !838
  tail call void @exit(i32 noundef 1) #21, !dbg !839
  unreachable, !dbg !839
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.magic_set* @load(i8* noundef %0, i32 noundef %1) unnamed_addr #0 comdat !dbg !840 {
  %3 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @__sancov_gen_.156, i32 0, i32 0), align 4, !dbg !848, !nosanitize !294
  %4 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !848, !nosanitize !294
  %5 = getelementptr i8, i8* %4, i32 %3, !dbg !848
  %6 = load i8, i8* %5, align 1, !dbg !848, !nosanitize !294
  %7 = add i8 %6, 1, !dbg !848
  %8 = icmp eq i8 %7, 0, !dbg !848
  %9 = zext i1 %8 to i8, !dbg !848
  %10 = add i8 %7, %9, !dbg !848
  store i8 %10, i8* %5, align 1, !dbg !848, !nosanitize !294
  call void @llvm.dbg.value(metadata i8* %0, metadata !844, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i32 %1, metadata !845, metadata !DIExpression()), !dbg !849
  %11 = tail call %struct.magic_set* @magic_open(i32 noundef %1) #19, !dbg !850
  call void @llvm.dbg.value(metadata %struct.magic_set* %11, metadata !846, metadata !DIExpression()), !dbg !849
  %12 = icmp eq %struct.magic_set* %11, null, !dbg !851
  br i1 %12, label %13, label %22, !dbg !853

13:                                               ; preds = %2
  %14 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([5 x i32]* @__sancov_gen_.156 to i64), i64 4) to i32*), align 4, !dbg !854, !nosanitize !294
  %15 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !854, !nosanitize !294
  %16 = getelementptr i8, i8* %15, i32 %14, !dbg !854
  %17 = load i8, i8* %16, align 1, !dbg !854, !nosanitize !294
  %18 = add i8 %17, 1, !dbg !854
  %19 = icmp eq i8 %18, 0, !dbg !854
  %20 = zext i1 %19 to i8, !dbg !854
  %21 = add i8 %18, %20, !dbg !854
  store i8 %21, i8* %16, align 1, !dbg !854, !nosanitize !294
  tail call void (i8*, ...) @file_warn(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)), !dbg !854
  br label %55, !dbg !856

22:                                               ; preds = %2
  %23 = tail call i32 @magic_load(%struct.magic_set* noundef nonnull %11, i8* noundef %0) #19, !dbg !857
  %24 = icmp eq i32 %23, -1, !dbg !859
  %25 = tail call i8* @magic_error(%struct.magic_set* noundef nonnull %11) #19, !dbg !849
  br i1 %24, label %26, label %35, !dbg !860

26:                                               ; preds = %22
  %27 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([5 x i32]* @__sancov_gen_.156 to i64), i64 8) to i32*), align 4, !dbg !861, !nosanitize !294
  %28 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !861, !nosanitize !294
  %29 = getelementptr i8, i8* %28, i32 %27, !dbg !861
  %30 = load i8, i8* %29, align 1, !dbg !861, !nosanitize !294
  %31 = add i8 %30, 1, !dbg !861
  %32 = icmp eq i8 %31, 0, !dbg !861
  %33 = zext i1 %32 to i8, !dbg !861
  %34 = add i8 %31, %33, !dbg !861
  store i8 %34, i8* %29, align 1, !dbg !861, !nosanitize !294
  tail call void (i8*, ...) @file_warn(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef %25), !dbg !861
  tail call void @magic_close(%struct.magic_set* noundef nonnull %11) #19, !dbg !863
  br label %55, !dbg !864

35:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8* %25, metadata !847, metadata !DIExpression()), !dbg !849
  %36 = icmp eq i8* %25, null, !dbg !865
  br i1 %36, label %37, label %46, !dbg !867

37:                                               ; preds = %35
  %38 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([5 x i32]* @__sancov_gen_.156 to i64), i64 12) to i32*), align 4, !dbg !867, !nosanitize !294
  %39 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !867, !nosanitize !294
  %40 = getelementptr i8, i8* %39, i32 %38, !dbg !867
  %41 = load i8, i8* %40, align 1, !dbg !867, !nosanitize !294
  %42 = add i8 %41, 1, !dbg !867
  %43 = icmp eq i8 %42, 0, !dbg !867
  %44 = zext i1 %43 to i8, !dbg !867
  %45 = add i8 %42, %44, !dbg !867
  store i8 %45, i8* %40, align 1, !dbg !867, !nosanitize !294
  br label %55, !dbg !867

46:                                               ; preds = %35
  %47 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([5 x i32]* @__sancov_gen_.156 to i64), i64 16) to i32*), align 4, !dbg !868, !nosanitize !294
  %48 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !868, !nosanitize !294
  %49 = getelementptr i8, i8* %48, i32 %47, !dbg !868
  %50 = load i8, i8* %49, align 1, !dbg !868, !nosanitize !294
  %51 = add i8 %50, 1, !dbg !868
  %52 = icmp eq i8 %51, 0, !dbg !868
  %53 = zext i1 %52 to i8, !dbg !868
  %54 = add i8 %51, %53, !dbg !868
  store i8 %54, i8* %49, align 1, !dbg !868, !nosanitize !294
  tail call void (i8*, ...) @file_warn(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %25), !dbg !868
  br label %55, !dbg !868

55:                                               ; preds = %37, %46, %26, %13
  %56 = phi %struct.magic_set* [ null, %13 ], [ null, %26 ], [ %11, %46 ], [ %11, %37 ], !dbg !849
  ret %struct.magic_set* %56, !dbg !869
}

; Function Attrs: nounwind uwtable
define internal fastcc void @applyparam(%struct.magic_set* noundef %0) unnamed_addr #0 comdat !dbg !870 {
  %2 = load i32, i32* getelementptr inbounds ([28 x i32], [28 x i32]* @__sancov_gen_.157, i32 0, i32 0), align 4, !dbg !878, !nosanitize !294
  %3 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !878, !nosanitize !294
  %4 = getelementptr i8, i8* %3, i32 %2, !dbg !878
  %5 = load i8, i8* %4, align 1, !dbg !878, !nosanitize !294
  %6 = add i8 %5, 1, !dbg !878
  %7 = icmp eq i8 %6, 0, !dbg !878
  %8 = zext i1 %7 to i8, !dbg !878
  %9 = add i8 %6, %8, !dbg !878
  store i8 %9, i8* %4, align 1, !dbg !878, !nosanitize !294
  call void @llvm.dbg.value(metadata %struct.magic_set* %0, metadata !876, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 0, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 0, metadata !877, metadata !DIExpression()), !dbg !879
  %10 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 0, i32 5), align 4, !dbg !880, !tbaa !677
  %11 = icmp eq i32 %10, 0, !dbg !885
  br i1 %11, label %12, label %21, !dbg !886

12:                                               ; preds = %1
  %13 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 4) to i32*), align 4, !dbg !886, !nosanitize !294
  %14 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !886, !nosanitize !294
  %15 = getelementptr i8, i8* %14, i32 %13, !dbg !886
  %16 = load i8, i8* %15, align 1, !dbg !886, !nosanitize !294
  %17 = add i8 %16, 1, !dbg !886
  %18 = icmp eq i8 %17, 0, !dbg !886
  %19 = zext i1 %18 to i8, !dbg !886
  %20 = add i8 %17, %19, !dbg !886
  store i8 %20, i8* %15, align 1, !dbg !886, !nosanitize !294
  br label %47, !dbg !886

21:                                               ; preds = %1
  %22 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 0, i32 4), align 16, !dbg !887, !tbaa !889
  %23 = tail call i32 @magic_setparam(%struct.magic_set* noundef %0, i32 noundef %22, i8* noundef nonnull bitcast (i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 0, i32 1) to i8*)) #19, !dbg !890
  %24 = icmp eq i32 %23, -1, !dbg !891
  br i1 %24, label %34, label %25, !dbg !892

25:                                               ; preds = %21
  %26 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 8) to i32*), align 4, !dbg !892, !nosanitize !294
  %27 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %28 = getelementptr i8, i8* %27, i32 %26, !dbg !892
  %29 = load i8, i8* %28, align 1, !dbg !892, !nosanitize !294
  %30 = add i8 %29, 1, !dbg !892
  %31 = icmp eq i8 %30, 0, !dbg !892
  %32 = zext i1 %31 to i8, !dbg !892
  %33 = add i8 %30, %32, !dbg !892
  store i8 %33, i8* %28, align 1, !dbg !892, !nosanitize !294
  br label %47, !dbg !892

34:                                               ; preds = %21
  %35 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 12) to i32*), align 4, !dbg !892, !nosanitize !294
  %36 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %37 = getelementptr i8, i8* %36, i32 %35, !dbg !892
  %38 = load i8, i8* %37, align 1, !dbg !892, !nosanitize !294
  %39 = add i8 %38, 1, !dbg !892
  %40 = icmp eq i8 %39, 0, !dbg !892
  %41 = zext i1 %40 to i8, !dbg !892
  %42 = add i8 %39, %41, !dbg !892
  store i8 %42, i8* %37, align 1, !dbg !892, !nosanitize !294
  br label %43, !dbg !892

43:                                               ; preds = %310, %276, %242, %208, %174, %140, %106, %72, %34
  %44 = phi i64 [ 0, %34 ], [ 1, %72 ], [ 2, %106 ], [ 3, %140 ], [ 4, %174 ], [ 5, %208 ], [ 6, %242 ], [ 7, %276 ], [ 8, %310 ]
  %45 = getelementptr inbounds [9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 %44, i32 0, !dbg !893
  %46 = load i8*, i8** %45, align 8, !dbg !893, !tbaa !654
  tail call void (i32, i8*, ...) @file_err(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %46) #24, !dbg !894
  unreachable, !dbg !894

47:                                               ; preds = %25, %12
  call void @llvm.dbg.value(metadata i64 1, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 1, metadata !877, metadata !DIExpression()), !dbg !879
  %48 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 1, i32 5), align 4, !dbg !880, !tbaa !677
  %49 = icmp eq i32 %48, 0, !dbg !885
  br i1 %49, label %50, label %59, !dbg !886

50:                                               ; preds = %47
  %51 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 16) to i32*), align 4, !dbg !886, !nosanitize !294
  %52 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !886, !nosanitize !294
  %53 = getelementptr i8, i8* %52, i32 %51, !dbg !886
  %54 = load i8, i8* %53, align 1, !dbg !886, !nosanitize !294
  %55 = add i8 %54, 1, !dbg !886
  %56 = icmp eq i8 %55, 0, !dbg !886
  %57 = zext i1 %56 to i8, !dbg !886
  %58 = add i8 %55, %57, !dbg !886
  store i8 %58, i8* %53, align 1, !dbg !886, !nosanitize !294
  br label %81, !dbg !886

59:                                               ; preds = %47
  %60 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 1, i32 4), align 8, !dbg !887, !tbaa !889
  %61 = tail call i32 @magic_setparam(%struct.magic_set* noundef %0, i32 noundef %60, i8* noundef nonnull bitcast (i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 1, i32 1) to i8*)) #19, !dbg !890
  %62 = icmp eq i32 %61, -1, !dbg !891
  br i1 %62, label %72, label %63, !dbg !892

63:                                               ; preds = %59
  %64 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 20) to i32*), align 4, !dbg !892, !nosanitize !294
  %65 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %66 = getelementptr i8, i8* %65, i32 %64, !dbg !892
  %67 = load i8, i8* %66, align 1, !dbg !892, !nosanitize !294
  %68 = add i8 %67, 1, !dbg !892
  %69 = icmp eq i8 %68, 0, !dbg !892
  %70 = zext i1 %69 to i8, !dbg !892
  %71 = add i8 %68, %70, !dbg !892
  store i8 %71, i8* %66, align 1, !dbg !892, !nosanitize !294
  br label %81, !dbg !892

72:                                               ; preds = %59
  %73 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 24) to i32*), align 4, !dbg !892, !nosanitize !294
  %74 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %75 = getelementptr i8, i8* %74, i32 %73, !dbg !892
  %76 = load i8, i8* %75, align 1, !dbg !892, !nosanitize !294
  %77 = add i8 %76, 1, !dbg !892
  %78 = icmp eq i8 %77, 0, !dbg !892
  %79 = zext i1 %78 to i8, !dbg !892
  %80 = add i8 %77, %79, !dbg !892
  store i8 %80, i8* %75, align 1, !dbg !892, !nosanitize !294
  br label %43, !dbg !892

81:                                               ; preds = %63, %50
  call void @llvm.dbg.value(metadata i64 2, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 2, metadata !877, metadata !DIExpression()), !dbg !879
  %82 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 2, i32 5), align 4, !dbg !880, !tbaa !677
  %83 = icmp eq i32 %82, 0, !dbg !885
  br i1 %83, label %84, label %93, !dbg !886

84:                                               ; preds = %81
  %85 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 28) to i32*), align 4, !dbg !886, !nosanitize !294
  %86 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !886, !nosanitize !294
  %87 = getelementptr i8, i8* %86, i32 %85, !dbg !886
  %88 = load i8, i8* %87, align 1, !dbg !886, !nosanitize !294
  %89 = add i8 %88, 1, !dbg !886
  %90 = icmp eq i8 %89, 0, !dbg !886
  %91 = zext i1 %90 to i8, !dbg !886
  %92 = add i8 %89, %91, !dbg !886
  store i8 %92, i8* %87, align 1, !dbg !886, !nosanitize !294
  br label %115, !dbg !886

93:                                               ; preds = %81
  %94 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 2, i32 4), align 16, !dbg !887, !tbaa !889
  %95 = tail call i32 @magic_setparam(%struct.magic_set* noundef %0, i32 noundef %94, i8* noundef nonnull bitcast (i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 2, i32 1) to i8*)) #19, !dbg !890
  %96 = icmp eq i32 %95, -1, !dbg !891
  br i1 %96, label %106, label %97, !dbg !892

97:                                               ; preds = %93
  %98 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 32) to i32*), align 4, !dbg !892, !nosanitize !294
  %99 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %100 = getelementptr i8, i8* %99, i32 %98, !dbg !892
  %101 = load i8, i8* %100, align 1, !dbg !892, !nosanitize !294
  %102 = add i8 %101, 1, !dbg !892
  %103 = icmp eq i8 %102, 0, !dbg !892
  %104 = zext i1 %103 to i8, !dbg !892
  %105 = add i8 %102, %104, !dbg !892
  store i8 %105, i8* %100, align 1, !dbg !892, !nosanitize !294
  br label %115, !dbg !892

106:                                              ; preds = %93
  %107 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 36) to i32*), align 4, !dbg !892, !nosanitize !294
  %108 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %109 = getelementptr i8, i8* %108, i32 %107, !dbg !892
  %110 = load i8, i8* %109, align 1, !dbg !892, !nosanitize !294
  %111 = add i8 %110, 1, !dbg !892
  %112 = icmp eq i8 %111, 0, !dbg !892
  %113 = zext i1 %112 to i8, !dbg !892
  %114 = add i8 %111, %113, !dbg !892
  store i8 %114, i8* %109, align 1, !dbg !892, !nosanitize !294
  br label %43, !dbg !892

115:                                              ; preds = %97, %84
  call void @llvm.dbg.value(metadata i64 3, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 3, metadata !877, metadata !DIExpression()), !dbg !879
  %116 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 3, i32 5), align 4, !dbg !880, !tbaa !677
  %117 = icmp eq i32 %116, 0, !dbg !885
  br i1 %117, label %118, label %127, !dbg !886

118:                                              ; preds = %115
  %119 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 40) to i32*), align 4, !dbg !886, !nosanitize !294
  %120 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !886, !nosanitize !294
  %121 = getelementptr i8, i8* %120, i32 %119, !dbg !886
  %122 = load i8, i8* %121, align 1, !dbg !886, !nosanitize !294
  %123 = add i8 %122, 1, !dbg !886
  %124 = icmp eq i8 %123, 0, !dbg !886
  %125 = zext i1 %124 to i8, !dbg !886
  %126 = add i8 %123, %125, !dbg !886
  store i8 %126, i8* %121, align 1, !dbg !886, !nosanitize !294
  br label %149, !dbg !886

127:                                              ; preds = %115
  %128 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 3, i32 4), align 8, !dbg !887, !tbaa !889
  %129 = tail call i32 @magic_setparam(%struct.magic_set* noundef %0, i32 noundef %128, i8* noundef nonnull bitcast (i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 3, i32 1) to i8*)) #19, !dbg !890
  %130 = icmp eq i32 %129, -1, !dbg !891
  br i1 %130, label %140, label %131, !dbg !892

131:                                              ; preds = %127
  %132 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 44) to i32*), align 4, !dbg !892, !nosanitize !294
  %133 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %134 = getelementptr i8, i8* %133, i32 %132, !dbg !892
  %135 = load i8, i8* %134, align 1, !dbg !892, !nosanitize !294
  %136 = add i8 %135, 1, !dbg !892
  %137 = icmp eq i8 %136, 0, !dbg !892
  %138 = zext i1 %137 to i8, !dbg !892
  %139 = add i8 %136, %138, !dbg !892
  store i8 %139, i8* %134, align 1, !dbg !892, !nosanitize !294
  br label %149, !dbg !892

140:                                              ; preds = %127
  %141 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 48) to i32*), align 4, !dbg !892, !nosanitize !294
  %142 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %143 = getelementptr i8, i8* %142, i32 %141, !dbg !892
  %144 = load i8, i8* %143, align 1, !dbg !892, !nosanitize !294
  %145 = add i8 %144, 1, !dbg !892
  %146 = icmp eq i8 %145, 0, !dbg !892
  %147 = zext i1 %146 to i8, !dbg !892
  %148 = add i8 %145, %147, !dbg !892
  store i8 %148, i8* %143, align 1, !dbg !892, !nosanitize !294
  br label %43, !dbg !892

149:                                              ; preds = %131, %118
  call void @llvm.dbg.value(metadata i64 4, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 4, metadata !877, metadata !DIExpression()), !dbg !879
  %150 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 4, i32 5), align 4, !dbg !880, !tbaa !677
  %151 = icmp eq i32 %150, 0, !dbg !885
  br i1 %151, label %152, label %161, !dbg !886

152:                                              ; preds = %149
  %153 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 52) to i32*), align 4, !dbg !886, !nosanitize !294
  %154 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !886, !nosanitize !294
  %155 = getelementptr i8, i8* %154, i32 %153, !dbg !886
  %156 = load i8, i8* %155, align 1, !dbg !886, !nosanitize !294
  %157 = add i8 %156, 1, !dbg !886
  %158 = icmp eq i8 %157, 0, !dbg !886
  %159 = zext i1 %158 to i8, !dbg !886
  %160 = add i8 %157, %159, !dbg !886
  store i8 %160, i8* %155, align 1, !dbg !886, !nosanitize !294
  br label %183, !dbg !886

161:                                              ; preds = %149
  %162 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 4, i32 4), align 16, !dbg !887, !tbaa !889
  %163 = tail call i32 @magic_setparam(%struct.magic_set* noundef %0, i32 noundef %162, i8* noundef nonnull bitcast (i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 4, i32 1) to i8*)) #19, !dbg !890
  %164 = icmp eq i32 %163, -1, !dbg !891
  br i1 %164, label %174, label %165, !dbg !892

165:                                              ; preds = %161
  %166 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 56) to i32*), align 4, !dbg !892, !nosanitize !294
  %167 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %168 = getelementptr i8, i8* %167, i32 %166, !dbg !892
  %169 = load i8, i8* %168, align 1, !dbg !892, !nosanitize !294
  %170 = add i8 %169, 1, !dbg !892
  %171 = icmp eq i8 %170, 0, !dbg !892
  %172 = zext i1 %171 to i8, !dbg !892
  %173 = add i8 %170, %172, !dbg !892
  store i8 %173, i8* %168, align 1, !dbg !892, !nosanitize !294
  br label %183, !dbg !892

174:                                              ; preds = %161
  %175 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 60) to i32*), align 4, !dbg !892, !nosanitize !294
  %176 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %177 = getelementptr i8, i8* %176, i32 %175, !dbg !892
  %178 = load i8, i8* %177, align 1, !dbg !892, !nosanitize !294
  %179 = add i8 %178, 1, !dbg !892
  %180 = icmp eq i8 %179, 0, !dbg !892
  %181 = zext i1 %180 to i8, !dbg !892
  %182 = add i8 %179, %181, !dbg !892
  store i8 %182, i8* %177, align 1, !dbg !892, !nosanitize !294
  br label %43, !dbg !892

183:                                              ; preds = %165, %152
  call void @llvm.dbg.value(metadata i64 5, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 5, metadata !877, metadata !DIExpression()), !dbg !879
  %184 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 5, i32 5), align 4, !dbg !880, !tbaa !677
  %185 = icmp eq i32 %184, 0, !dbg !885
  br i1 %185, label %186, label %195, !dbg !886

186:                                              ; preds = %183
  %187 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 64) to i32*), align 4, !dbg !886, !nosanitize !294
  %188 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !886, !nosanitize !294
  %189 = getelementptr i8, i8* %188, i32 %187, !dbg !886
  %190 = load i8, i8* %189, align 1, !dbg !886, !nosanitize !294
  %191 = add i8 %190, 1, !dbg !886
  %192 = icmp eq i8 %191, 0, !dbg !886
  %193 = zext i1 %192 to i8, !dbg !886
  %194 = add i8 %191, %193, !dbg !886
  store i8 %194, i8* %189, align 1, !dbg !886, !nosanitize !294
  br label %217, !dbg !886

195:                                              ; preds = %183
  %196 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 5, i32 4), align 8, !dbg !887, !tbaa !889
  %197 = tail call i32 @magic_setparam(%struct.magic_set* noundef %0, i32 noundef %196, i8* noundef nonnull bitcast (i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 5, i32 1) to i8*)) #19, !dbg !890
  %198 = icmp eq i32 %197, -1, !dbg !891
  br i1 %198, label %208, label %199, !dbg !892

199:                                              ; preds = %195
  %200 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 68) to i32*), align 4, !dbg !892, !nosanitize !294
  %201 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %202 = getelementptr i8, i8* %201, i32 %200, !dbg !892
  %203 = load i8, i8* %202, align 1, !dbg !892, !nosanitize !294
  %204 = add i8 %203, 1, !dbg !892
  %205 = icmp eq i8 %204, 0, !dbg !892
  %206 = zext i1 %205 to i8, !dbg !892
  %207 = add i8 %204, %206, !dbg !892
  store i8 %207, i8* %202, align 1, !dbg !892, !nosanitize !294
  br label %217, !dbg !892

208:                                              ; preds = %195
  %209 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 72) to i32*), align 4, !dbg !892, !nosanitize !294
  %210 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %211 = getelementptr i8, i8* %210, i32 %209, !dbg !892
  %212 = load i8, i8* %211, align 1, !dbg !892, !nosanitize !294
  %213 = add i8 %212, 1, !dbg !892
  %214 = icmp eq i8 %213, 0, !dbg !892
  %215 = zext i1 %214 to i8, !dbg !892
  %216 = add i8 %213, %215, !dbg !892
  store i8 %216, i8* %211, align 1, !dbg !892, !nosanitize !294
  br label %43, !dbg !892

217:                                              ; preds = %199, %186
  call void @llvm.dbg.value(metadata i64 6, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 6, metadata !877, metadata !DIExpression()), !dbg !879
  %218 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 6, i32 5), align 4, !dbg !880, !tbaa !677
  %219 = icmp eq i32 %218, 0, !dbg !885
  br i1 %219, label %220, label %229, !dbg !886

220:                                              ; preds = %217
  %221 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 76) to i32*), align 4, !dbg !886, !nosanitize !294
  %222 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !886, !nosanitize !294
  %223 = getelementptr i8, i8* %222, i32 %221, !dbg !886
  %224 = load i8, i8* %223, align 1, !dbg !886, !nosanitize !294
  %225 = add i8 %224, 1, !dbg !886
  %226 = icmp eq i8 %225, 0, !dbg !886
  %227 = zext i1 %226 to i8, !dbg !886
  %228 = add i8 %225, %227, !dbg !886
  store i8 %228, i8* %223, align 1, !dbg !886, !nosanitize !294
  br label %251, !dbg !886

229:                                              ; preds = %217
  %230 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 6, i32 4), align 16, !dbg !887, !tbaa !889
  %231 = tail call i32 @magic_setparam(%struct.magic_set* noundef %0, i32 noundef %230, i8* noundef nonnull bitcast (i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 6, i32 1) to i8*)) #19, !dbg !890
  %232 = icmp eq i32 %231, -1, !dbg !891
  br i1 %232, label %242, label %233, !dbg !892

233:                                              ; preds = %229
  %234 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 80) to i32*), align 4, !dbg !892, !nosanitize !294
  %235 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %236 = getelementptr i8, i8* %235, i32 %234, !dbg !892
  %237 = load i8, i8* %236, align 1, !dbg !892, !nosanitize !294
  %238 = add i8 %237, 1, !dbg !892
  %239 = icmp eq i8 %238, 0, !dbg !892
  %240 = zext i1 %239 to i8, !dbg !892
  %241 = add i8 %238, %240, !dbg !892
  store i8 %241, i8* %236, align 1, !dbg !892, !nosanitize !294
  br label %251, !dbg !892

242:                                              ; preds = %229
  %243 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 84) to i32*), align 4, !dbg !892, !nosanitize !294
  %244 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %245 = getelementptr i8, i8* %244, i32 %243, !dbg !892
  %246 = load i8, i8* %245, align 1, !dbg !892, !nosanitize !294
  %247 = add i8 %246, 1, !dbg !892
  %248 = icmp eq i8 %247, 0, !dbg !892
  %249 = zext i1 %248 to i8, !dbg !892
  %250 = add i8 %247, %249, !dbg !892
  store i8 %250, i8* %245, align 1, !dbg !892, !nosanitize !294
  br label %43, !dbg !892

251:                                              ; preds = %233, %220
  call void @llvm.dbg.value(metadata i64 7, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 7, metadata !877, metadata !DIExpression()), !dbg !879
  %252 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 7, i32 5), align 4, !dbg !880, !tbaa !677
  %253 = icmp eq i32 %252, 0, !dbg !885
  br i1 %253, label %254, label %263, !dbg !886

254:                                              ; preds = %251
  %255 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 88) to i32*), align 4, !dbg !886, !nosanitize !294
  %256 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !886, !nosanitize !294
  %257 = getelementptr i8, i8* %256, i32 %255, !dbg !886
  %258 = load i8, i8* %257, align 1, !dbg !886, !nosanitize !294
  %259 = add i8 %258, 1, !dbg !886
  %260 = icmp eq i8 %259, 0, !dbg !886
  %261 = zext i1 %260 to i8, !dbg !886
  %262 = add i8 %259, %261, !dbg !886
  store i8 %262, i8* %257, align 1, !dbg !886, !nosanitize !294
  br label %285, !dbg !886

263:                                              ; preds = %251
  %264 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 7, i32 4), align 8, !dbg !887, !tbaa !889
  %265 = tail call i32 @magic_setparam(%struct.magic_set* noundef %0, i32 noundef %264, i8* noundef nonnull bitcast (i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 7, i32 1) to i8*)) #19, !dbg !890
  %266 = icmp eq i32 %265, -1, !dbg !891
  br i1 %266, label %276, label %267, !dbg !892

267:                                              ; preds = %263
  %268 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 92) to i32*), align 4, !dbg !892, !nosanitize !294
  %269 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %270 = getelementptr i8, i8* %269, i32 %268, !dbg !892
  %271 = load i8, i8* %270, align 1, !dbg !892, !nosanitize !294
  %272 = add i8 %271, 1, !dbg !892
  %273 = icmp eq i8 %272, 0, !dbg !892
  %274 = zext i1 %273 to i8, !dbg !892
  %275 = add i8 %272, %274, !dbg !892
  store i8 %275, i8* %270, align 1, !dbg !892, !nosanitize !294
  br label %285, !dbg !892

276:                                              ; preds = %263
  %277 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 96) to i32*), align 4, !dbg !892, !nosanitize !294
  %278 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %279 = getelementptr i8, i8* %278, i32 %277, !dbg !892
  %280 = load i8, i8* %279, align 1, !dbg !892, !nosanitize !294
  %281 = add i8 %280, 1, !dbg !892
  %282 = icmp eq i8 %281, 0, !dbg !892
  %283 = zext i1 %282 to i8, !dbg !892
  %284 = add i8 %281, %283, !dbg !892
  store i8 %284, i8* %279, align 1, !dbg !892, !nosanitize !294
  br label %43, !dbg !892

285:                                              ; preds = %267, %254
  call void @llvm.dbg.value(metadata i64 8, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 8, metadata !877, metadata !DIExpression()), !dbg !879
  %286 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 8, i32 5), align 4, !dbg !880, !tbaa !677
  %287 = icmp eq i32 %286, 0, !dbg !885
  br i1 %287, label %288, label %297, !dbg !886

288:                                              ; preds = %285
  %289 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 100) to i32*), align 4, !dbg !886, !nosanitize !294
  %290 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !886, !nosanitize !294
  %291 = getelementptr i8, i8* %290, i32 %289, !dbg !886
  %292 = load i8, i8* %291, align 1, !dbg !886, !nosanitize !294
  %293 = add i8 %292, 1, !dbg !886
  %294 = icmp eq i8 %293, 0, !dbg !886
  %295 = zext i1 %294 to i8, !dbg !886
  %296 = add i8 %293, %295, !dbg !886
  store i8 %296, i8* %291, align 1, !dbg !886, !nosanitize !294
  br label %319, !dbg !886

297:                                              ; preds = %285
  %298 = load i32, i32* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 8, i32 4), align 16, !dbg !887, !tbaa !889
  %299 = tail call i32 @magic_setparam(%struct.magic_set* noundef %0, i32 noundef %298, i8* noundef nonnull bitcast (i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 8, i32 1) to i8*)) #19, !dbg !890
  %300 = icmp eq i32 %299, -1, !dbg !891
  br i1 %300, label %310, label %301, !dbg !892

301:                                              ; preds = %297
  %302 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 104) to i32*), align 4, !dbg !892, !nosanitize !294
  %303 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %304 = getelementptr i8, i8* %303, i32 %302, !dbg !892
  %305 = load i8, i8* %304, align 1, !dbg !892, !nosanitize !294
  %306 = add i8 %305, 1, !dbg !892
  %307 = icmp eq i8 %306, 0, !dbg !892
  %308 = zext i1 %307 to i8, !dbg !892
  %309 = add i8 %306, %308, !dbg !892
  store i8 %309, i8* %304, align 1, !dbg !892, !nosanitize !294
  br label %319, !dbg !892

310:                                              ; preds = %297
  %311 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.157 to i64), i64 108) to i32*), align 4, !dbg !892, !nosanitize !294
  %312 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !892, !nosanitize !294
  %313 = getelementptr i8, i8* %312, i32 %311, !dbg !892
  %314 = load i8, i8* %313, align 1, !dbg !892, !nosanitize !294
  %315 = add i8 %314, 1, !dbg !892
  %316 = icmp eq i8 %315, 0, !dbg !892
  %317 = zext i1 %316 to i8, !dbg !892
  %318 = add i8 %315, %317, !dbg !892
  store i8 %318, i8* %313, align 1, !dbg !892, !nosanitize !294
  br label %43, !dbg !892

319:                                              ; preds = %301, %288
  call void @llvm.dbg.value(metadata i64 9, metadata !877, metadata !DIExpression()), !dbg !879
  ret void, !dbg !895
}

declare !dbg !896 i8* @magic_getpath(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define hidden i8* @file_getprogname() local_unnamed_addr #10 comdat !dbg !411 {
  %1 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @__sancov_gen_.158, i32 0, i32 0), align 4, !dbg !899, !nosanitize !294
  %2 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !899, !nosanitize !294
  %3 = getelementptr i8, i8* %2, i32 %1, !dbg !899
  %4 = load i8, i8* %3, align 1, !dbg !899, !nosanitize !294
  %5 = add i8 %4, 1, !dbg !899
  %6 = icmp eq i8 %5, 0, !dbg !899
  %7 = zext i1 %6 to i8, !dbg !899
  %8 = add i8 %5, %7, !dbg !899
  store i8 %8, i8* %3, align 1, !dbg !899, !nosanitize !294
  %9 = load i8*, i8** @file_progname, align 8, !dbg !900, !tbaa !300
  ret i8* %9, !dbg !901
}

declare !dbg !902 i32 @magic_version() local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define hidden void @file_warnx(i8* nocapture noundef readonly %0, ...) local_unnamed_addr #11 comdat !dbg !905 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @__sancov_gen_.159, i32 0, i32 0), align 4, !dbg !924, !nosanitize !294
  %4 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !924, !nosanitize !294
  %5 = getelementptr i8, i8* %4, i32 %3, !dbg !924
  %6 = load i8, i8* %5, align 1, !dbg !924, !nosanitize !294
  %7 = add i8 %6, 1, !dbg !924
  %8 = icmp eq i8 %7, 0, !dbg !924
  %9 = zext i1 %8 to i8, !dbg !924
  %10 = add i8 %7, %9, !dbg !924
  store i8 %10, i8* %5, align 1, !dbg !924, !nosanitize !294
  call void @llvm.dbg.value(metadata i8* %0, metadata !909, metadata !DIExpression()), !dbg !925
  %11 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !926
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #19, !dbg !926
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !910, metadata !DIExpression()), !dbg !927
  %12 = tail call i32* @__errno_location() #25, !dbg !928
  %13 = load i32, i32* %12, align 4, !dbg !928, !tbaa !318
  call void @llvm.dbg.value(metadata i32 %13, metadata !923, metadata !DIExpression()), !dbg !925
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !929
  call void @llvm.va_start(i8* nonnull %11), !dbg !929
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !930, !tbaa !300
  %16 = load i8*, i8** @file_progname, align 8, !dbg !931, !tbaa !300
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %16) #23, !dbg !932
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !933, !tbaa !300
  %19 = call i32 @vfprintf(%struct._IO_FILE* noundef %18, i8* noundef %0, %struct.__va_list_tag* noundef nonnull %14) #23, !dbg !934
  call void @llvm.va_end(i8* nonnull %11), !dbg !935
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !936, !tbaa !300
  %21 = call i32 @fputc(i32 10, %struct._IO_FILE* %20), !dbg !937
  store i32 %13, i32* %12, align 4, !dbg !938, !tbaa !318
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #19, !dbg !939
  ret void, !dbg !939
}

declare !dbg !940 %struct.magic_set* @magic_open(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden void @file_warn(i8* nocapture noundef readonly %0, ...) local_unnamed_addr #0 comdat !dbg !943 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @__sancov_gen_.160, i32 0, i32 0), align 4, !dbg !948, !nosanitize !294
  %4 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !948, !nosanitize !294
  %5 = getelementptr i8, i8* %4, i32 %3, !dbg !948
  %6 = load i8, i8* %5, align 1, !dbg !948, !nosanitize !294
  %7 = add i8 %6, 1, !dbg !948
  %8 = icmp eq i8 %7, 0, !dbg !948
  %9 = zext i1 %8 to i8, !dbg !948
  %10 = add i8 %7, %9, !dbg !948
  store i8 %10, i8* %5, align 1, !dbg !948, !nosanitize !294
  call void @llvm.dbg.value(metadata i8* %0, metadata !945, metadata !DIExpression()), !dbg !949
  %11 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !950
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #19, !dbg !950
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !946, metadata !DIExpression()), !dbg !951
  %12 = tail call i32* @__errno_location() #25, !dbg !952
  %13 = load i32, i32* %12, align 4, !dbg !952, !tbaa !318
  call void @llvm.dbg.value(metadata i32 %13, metadata !947, metadata !DIExpression()), !dbg !949
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !953
  call void @llvm.va_start(i8* nonnull %11), !dbg !953
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !954, !tbaa !300
  %16 = load i8*, i8** @file_progname, align 8, !dbg !955, !tbaa !300
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %16) #23, !dbg !956
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !957, !tbaa !300
  %19 = call i32 @vfprintf(%struct._IO_FILE* noundef %18, i8* noundef %0, %struct.__va_list_tag* noundef nonnull %14) #23, !dbg !958
  call void @llvm.va_end(i8* nonnull %11), !dbg !959
  %20 = icmp eq i32 %13, 0, !dbg !960
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !962, !tbaa !300
  br i1 %20, label %33, label %22, !dbg !963

22:                                               ; preds = %1
  %23 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([3 x i32]* @__sancov_gen_.160 to i64), i64 4) to i32*), align 4, !dbg !964, !nosanitize !294
  %24 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !964, !nosanitize !294
  %25 = getelementptr i8, i8* %24, i32 %23, !dbg !964
  %26 = load i8, i8* %25, align 1, !dbg !964, !nosanitize !294
  %27 = add i8 %26, 1, !dbg !964
  %28 = icmp eq i8 %27, 0, !dbg !964
  %29 = zext i1 %28 to i8, !dbg !964
  %30 = add i8 %27, %29, !dbg !964
  store i8 %30, i8* %25, align 1, !dbg !964, !nosanitize !294
  %31 = call i8* @strerror(i32 noundef %13) #19, !dbg !964
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* noundef %31) #23, !dbg !965
  br label %43, !dbg !966

33:                                               ; preds = %1
  %34 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([3 x i32]* @__sancov_gen_.160 to i64), i64 8) to i32*), align 4, !dbg !967, !nosanitize !294
  %35 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !967, !nosanitize !294
  %36 = getelementptr i8, i8* %35, i32 %34, !dbg !967
  %37 = load i8, i8* %36, align 1, !dbg !967, !nosanitize !294
  %38 = add i8 %37, 1, !dbg !967
  %39 = icmp eq i8 %38, 0, !dbg !967
  %40 = zext i1 %39 to i8, !dbg !967
  %41 = add i8 %38, %40, !dbg !967
  store i8 %41, i8* %36, align 1, !dbg !967, !nosanitize !294
  %42 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !967
  br label %43

43:                                               ; preds = %33, %22
  store i32 %13, i32* %12, align 4, !dbg !968, !tbaa !318
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #19, !dbg !969
  ret void, !dbg !969
}

declare !dbg !970 i32 @magic_check(%struct.magic_set* noundef, i8* noundef) local_unnamed_addr #8

declare !dbg !973 i32 @magic_compile(%struct.magic_set* noundef, i8* noundef) local_unnamed_addr #8

declare !dbg !974 i32 @magic_list(%struct.magic_set* noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #12

declare !dbg !975 i8* @magic_error(%struct.magic_set* noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden i64 @file_mbswidth(%struct.magic_set* nocapture noundef readonly %0, i8* noundef %1) local_unnamed_addr #0 comdat !dbg !978 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @__sancov_gen_.161, i32 0, i32 0), align 4, !dbg !1007, !nosanitize !294
  %6 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1007, !nosanitize !294
  %7 = getelementptr i8, i8* %6, i32 %5, !dbg !1007
  %8 = load i8, i8* %7, align 1, !dbg !1007, !nosanitize !294
  %9 = add i8 %8, 1, !dbg !1007
  %10 = icmp eq i8 %9, 0, !dbg !1007
  %11 = zext i1 %10 to i8, !dbg !1007
  %12 = add i8 %9, %11, !dbg !1007
  store i8 %12, i8* %7, align 1, !dbg !1007, !nosanitize !294
  %13 = bitcast i64* %3 to %struct.__mbstate_t*
  call void @llvm.dbg.value(metadata %struct.magic_set* %0, metadata !982, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i8* %1, metadata !983, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i64 0, metadata !984, metadata !DIExpression()), !dbg !1008
  %14 = bitcast i64* %3 to i8*, !dbg !1009
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #19, !dbg !1009
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %13, metadata !987, metadata !DIExpression()), !dbg !1010
  %15 = bitcast i32* %4 to i8*, !dbg !1011
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #19, !dbg !1011
  store i64 0, i64* %3, align 8, !dbg !1012
  %16 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #20, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %16, metadata !986, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i8* %1, metadata !983, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i64 0, metadata !984, metadata !DIExpression()), !dbg !1008
  %17 = icmp eq i64 %16, 0, !dbg !1014
  br i1 %17, label %18, label %27, !dbg !1015

18:                                               ; preds = %2
  %19 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_.161 to i64), i64 4) to i32*), align 4, !dbg !1015, !nosanitize !294
  %20 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1015, !nosanitize !294
  %21 = getelementptr i8, i8* %20, i32 %19, !dbg !1015
  %22 = load i8, i8* %21, align 1, !dbg !1015, !nosanitize !294
  %23 = add i8 %22, 1, !dbg !1015
  %24 = icmp eq i8 %23, 0, !dbg !1015
  %25 = zext i1 %24 to i8, !dbg !1015
  %26 = add i8 %23, %25, !dbg !1015
  store i8 %26, i8* %21, align 1, !dbg !1015, !nosanitize !294
  br label %123, !dbg !1015

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %0, i64 0, i32 6
  br label %29, !dbg !1015

29:                                               ; preds = %105, %27
  %30 = phi i8* [ %1, %27 ], [ %102, %105 ]
  %31 = phi i64 [ %16, %27 ], [ %103, %105 ]
  %32 = phi i64 [ 0, %27 ], [ %101, %105 ]
  call void @llvm.dbg.value(metadata i8* %30, metadata !983, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i64 %31, metadata !986, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i64 %32, metadata !984, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i32* %4, metadata !1001, metadata !DIExpression(DW_OP_deref)), !dbg !1008
  %33 = call i64 @mbrtowc(i32* noundef nonnull %4, i8* noundef %30, i64 noundef %31, %struct.__mbstate_t* noundef nonnull %13) #19, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %33, metadata !985, metadata !DIExpression()), !dbg !1008
  %34 = icmp ugt i64 %33, -3, !dbg !1017
  br i1 %34, label %35, label %46, !dbg !1017

35:                                               ; preds = %29
  %36 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_.161 to i64), i64 8) to i32*), align 4, !dbg !1018, !nosanitize !294
  %37 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1018, !nosanitize !294
  %38 = getelementptr i8, i8* %37, i32 %36, !dbg !1018
  %39 = load i8, i8* %38, align 1, !dbg !1018, !nosanitize !294
  %40 = add i8 %39, 1, !dbg !1018
  %41 = icmp eq i8 %40, 0, !dbg !1018
  %42 = zext i1 %41 to i8, !dbg !1018
  %43 = add i8 %40, %42, !dbg !1018
  store i8 %43, i8* %38, align 1, !dbg !1018, !nosanitize !294
  %44 = load i8, i8* %30, align 1, !dbg !1018, !tbaa !549
  %45 = sext i8 %44 to i32, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %45, metadata !1001, metadata !DIExpression()), !dbg !1008
  store i32 %45, i32* %4, align 4, !dbg !1020, !tbaa !318
  call void @llvm.dbg.value(metadata i64 1, metadata !985, metadata !DIExpression()), !dbg !1008
  store i64 0, i64* %3, align 8, !dbg !1021
  call void @llvm.dbg.value(metadata i64 undef, metadata !984, metadata !DIExpression()), !dbg !1008
  br label %98, !dbg !1022

46:                                               ; preds = %29
  %47 = load i32, i32* %4, align 4, !dbg !1023, !tbaa !318
  call void @llvm.dbg.value(metadata i32 %47, metadata !1001, metadata !DIExpression()), !dbg !1008
  %48 = call i32 @wcwidth(i32 noundef %47) #19, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %48, metadata !1003, metadata !DIExpression()), !dbg !1025
  %49 = load i32, i32* %28, align 4, !dbg !1026, !tbaa !1027
  %50 = and i32 %49, 256, !dbg !1033
  %51 = icmp eq i32 %50, 0, !dbg !1034
  br i1 %51, label %61, label %52, !dbg !1035

52:                                               ; preds = %46
  %53 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_.161 to i64), i64 12) to i32*), align 4, !dbg !1035, !nosanitize !294
  %54 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1035, !nosanitize !294
  %55 = getelementptr i8, i8* %54, i32 %53, !dbg !1035
  %56 = load i8, i8* %55, align 1, !dbg !1035, !nosanitize !294
  %57 = add i8 %56, 1, !dbg !1035
  %58 = icmp eq i8 %57, 0, !dbg !1035
  %59 = zext i1 %58 to i8, !dbg !1035
  %60 = add i8 %57, %59, !dbg !1035
  store i8 %60, i8* %55, align 1, !dbg !1035, !nosanitize !294
  br label %83, !dbg !1035

61:                                               ; preds = %46
  %62 = load i32, i32* %4, align 4, !dbg !1036, !tbaa !318
  call void @llvm.dbg.value(metadata i32 %62, metadata !1001, metadata !DIExpression()), !dbg !1008
  %63 = call i32 @iswprint(i32 noundef %62) #19, !dbg !1037
  %64 = icmp eq i32 %63, 0, !dbg !1037
  br i1 %64, label %74, label %65, !dbg !1038

65:                                               ; preds = %61
  %66 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_.161 to i64), i64 16) to i32*), align 4, !dbg !1038, !nosanitize !294
  %67 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1038, !nosanitize !294
  %68 = getelementptr i8, i8* %67, i32 %66, !dbg !1038
  %69 = load i8, i8* %68, align 1, !dbg !1038, !nosanitize !294
  %70 = add i8 %69, 1, !dbg !1038
  %71 = icmp eq i8 %70, 0, !dbg !1038
  %72 = zext i1 %71 to i8, !dbg !1038
  %73 = add i8 %70, %72, !dbg !1038
  store i8 %73, i8* %68, align 1, !dbg !1038, !nosanitize !294
  br label %83, !dbg !1038

74:                                               ; preds = %61
  %75 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_.161 to i64), i64 20) to i32*), align 4, !dbg !1038, !nosanitize !294
  %76 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1038, !nosanitize !294
  %77 = getelementptr i8, i8* %76, i32 %75, !dbg !1038
  %78 = load i8, i8* %77, align 1, !dbg !1038, !nosanitize !294
  %79 = add i8 %78, 1, !dbg !1038
  %80 = icmp eq i8 %79, 0, !dbg !1038
  %81 = zext i1 %80 to i8, !dbg !1038
  %82 = add i8 %79, %81, !dbg !1038
  store i8 %82, i8* %77, align 1, !dbg !1038, !nosanitize !294
  br label %95, !dbg !1038

83:                                               ; preds = %65, %52
  %84 = icmp sgt i32 %48, 1, !dbg !1039
  %85 = select i1 %84, i32 %48, i32 1, !dbg !1039
  %86 = select i1 %84, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_.161 to i64), i64 32) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_.161 to i64), i64 36) to i32*), !dbg !1038
  %87 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1038, !nosanitize !294
  %88 = load i32, i32* %86, align 4, !dbg !1038, !nosanitize !294
  %89 = getelementptr i8, i8* %87, i32 %88, !dbg !1038
  %90 = load i8, i8* %89, align 1, !dbg !1038, !nosanitize !294
  %91 = add i8 %90, 1, !dbg !1038
  %92 = icmp eq i8 %91, 0, !dbg !1038
  %93 = zext i1 %92 to i8, !dbg !1038
  %94 = add i8 %91, %93, !dbg !1038
  store i8 %94, i8* %89, align 1, !dbg !1038, !nosanitize !294
  br label %95, !dbg !1038

95:                                               ; preds = %74, %83
  %96 = phi i32 [ %85, %83 ], [ 4, %74 ], !dbg !1038
  %97 = zext i32 %96 to i64, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %101, metadata !984, metadata !DIExpression()), !dbg !1008
  br label %98

98:                                               ; preds = %95, %35
  %99 = phi i64 [ %97, %95 ], [ 4, %35 ]
  %100 = phi i64 [ %33, %95 ], [ 1, %35 ], !dbg !1040
  %101 = add i64 %32, %99, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %100, metadata !985, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i64 %101, metadata !984, metadata !DIExpression()), !dbg !1008
  %102 = getelementptr inbounds i8, i8* %30, i64 %100, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %102, metadata !983, metadata !DIExpression()), !dbg !1008
  %103 = sub i64 %31, %100, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %103, metadata !986, metadata !DIExpression()), !dbg !1008
  %104 = icmp eq i64 %103, 0, !dbg !1014
  br i1 %104, label %114, label %105, !dbg !1015, !llvm.loop !1044

105:                                              ; preds = %98
  %106 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_.161 to i64), i64 24) to i32*), align 4, !dbg !1015, !nosanitize !294
  %107 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1015, !nosanitize !294
  %108 = getelementptr i8, i8* %107, i32 %106, !dbg !1015
  %109 = load i8, i8* %108, align 1, !dbg !1015, !nosanitize !294
  %110 = add i8 %109, 1, !dbg !1015
  %111 = icmp eq i8 %110, 0, !dbg !1015
  %112 = zext i1 %111 to i8, !dbg !1015
  %113 = add i8 %110, %112, !dbg !1015
  store i8 %113, i8* %108, align 1, !dbg !1015, !nosanitize !294
  br label %29, !dbg !1015

114:                                              ; preds = %98
  %115 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_.161 to i64), i64 28) to i32*), align 4, !dbg !1015, !nosanitize !294
  %116 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1015, !nosanitize !294
  %117 = getelementptr i8, i8* %116, i32 %115, !dbg !1015
  %118 = load i8, i8* %117, align 1, !dbg !1015, !nosanitize !294
  %119 = add i8 %118, 1, !dbg !1015
  %120 = icmp eq i8 %119, 0, !dbg !1015
  %121 = zext i1 %120 to i8, !dbg !1015
  %122 = add i8 %119, %121, !dbg !1015
  store i8 %122, i8* %117, align 1, !dbg !1015, !nosanitize !294
  br label %123, !dbg !1015

123:                                              ; preds = %114, %18
  %124 = phi i64 [ 0, %18 ], [ %101, %114 ], !dbg !1008
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #19, !dbg !1046
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #19, !dbg !1046
  ret i64 %124, !dbg !1047
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @process(%struct.magic_set* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 comdat !dbg !1048 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds ([28 x i32], [28 x i32]* @__sancov_gen_.162, i32 0, i32 0), align 4, !dbg !1062, !nosanitize !294
  %7 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1062, !nosanitize !294
  %8 = getelementptr i8, i8* %7, i32 %6, !dbg !1062
  %9 = load i8, i8* %8, align 1, !dbg !1062, !nosanitize !294
  %10 = add i8 %9, 1, !dbg !1062
  %11 = icmp eq i8 %10, 0, !dbg !1062
  %12 = zext i1 %11 to i8, !dbg !1062
  %13 = add i8 %10, %12, !dbg !1062
  store i8 %13, i8* %8, align 1, !dbg !1062, !nosanitize !294
  call void @llvm.dbg.value(metadata %struct.magic_set* %0, metadata !1052, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8* %1, metadata !1053, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 %2, metadata !1054, metadata !DIExpression()), !dbg !1063
  %14 = load i32, i32* @nulsep, align 4, !dbg !1064, !tbaa !318
  %15 = icmp sgt i32 %14, 1, !dbg !1065
  %16 = select i1 %15, i8 0, i8 10, !dbg !1064
  %17 = select i1 %15, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 72) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 76) to i32*), !dbg !1063
  %18 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1063, !nosanitize !294
  %19 = load i32, i32* %17, align 4, !dbg !1063, !nosanitize !294
  %20 = getelementptr i8, i8* %18, i32 %19, !dbg !1063
  %21 = load i8, i8* %20, align 1, !dbg !1063, !nosanitize !294
  %22 = add i8 %21, 1, !dbg !1063
  %23 = icmp eq i8 %22, 0, !dbg !1063
  %24 = zext i1 %23 to i8, !dbg !1063
  %25 = add i8 %22, %24, !dbg !1063
  store i8 %25, i8* %20, align 1, !dbg !1063, !nosanitize !294
  call void @llvm.dbg.value(metadata i8 %16, metadata !1056, metadata !DIExpression()), !dbg !1063
  %26 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0)) #20, !dbg !1066
  %27 = icmp eq i32 %26, 0, !dbg !1067
  call void @llvm.dbg.value(metadata i1 %27, metadata !1057, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1063
  call void @llvm.dbg.value(metadata i32 0, metadata !1058, metadata !DIExpression()), !dbg !1063
  %28 = icmp slt i32 %2, 1, !dbg !1068
  %29 = load i32, i32* @bflag, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 true, i1 %30, !dbg !1069
  %32 = select i1 %28, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 80) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 84) to i32*), !dbg !1069
  %33 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1069, !nosanitize !294
  %34 = load i32, i32* %32, align 4, !dbg !1069, !nosanitize !294
  %35 = getelementptr i8, i8* %33, i32 %34, !dbg !1069
  %36 = load i8, i8* %35, align 1, !dbg !1069, !nosanitize !294
  %37 = add i8 %36, 1, !dbg !1069
  %38 = icmp eq i8 %37, 0, !dbg !1069
  %39 = zext i1 %38 to i8, !dbg !1069
  %40 = add i8 %37, %39, !dbg !1069
  store i8 %40, i8* %35, align 1, !dbg !1069, !nosanitize !294
  br i1 %31, label %41, label %50, !dbg !1069

41:                                               ; preds = %3
  %42 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 4) to i32*), align 4, !dbg !1069, !nosanitize !294
  %43 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1069, !nosanitize !294
  %44 = getelementptr i8, i8* %43, i32 %42, !dbg !1069
  %45 = load i8, i8* %44, align 1, !dbg !1069, !nosanitize !294
  %46 = add i8 %45, 1, !dbg !1069
  %47 = icmp eq i8 %46, 0, !dbg !1069
  %48 = zext i1 %47 to i8, !dbg !1069
  %49 = add i8 %46, %48, !dbg !1069
  store i8 %49, i8* %44, align 1, !dbg !1069, !nosanitize !294
  br label %254, !dbg !1069

50:                                               ; preds = %3
  %51 = select i1 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i64 0, i64 0), i8* %1, !dbg !1070
  %52 = select i1 %27, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 88) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 92) to i32*), !dbg !1071
  %53 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1071, !nosanitize !294
  %54 = load i32, i32* %52, align 4, !dbg !1071, !nosanitize !294
  %55 = getelementptr i8, i8* %53, i32 %54, !dbg !1071
  %56 = load i8, i8* %55, align 1, !dbg !1071, !nosanitize !294
  %57 = add i8 %56, 1, !dbg !1071
  %58 = icmp eq i8 %57, 0, !dbg !1071
  %59 = zext i1 %58 to i8, !dbg !1071
  %60 = add i8 %57, %59, !dbg !1071
  store i8 %60, i8* %55, align 1, !dbg !1071, !nosanitize !294
  call void @llvm.dbg.value(metadata i8* %51, metadata !1059, metadata !DIExpression()), !dbg !1071
  %61 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %0, i64 0, i32 6, !dbg !1072
  %62 = load i32, i32* %61, align 4, !dbg !1072, !tbaa !1027
  %63 = and i32 %62, 256, !dbg !1074
  %64 = icmp eq i32 %63, 0, !dbg !1075
  br i1 %64, label %65, label %180, !dbg !1076

65:                                               ; preds = %50
  %66 = bitcast i64* %4 to %struct.__mbstate_t*
  call void @llvm.dbg.value(metadata i8* %51, metadata !1077, metadata !DIExpression()) #19, !dbg !1084
  %67 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %51) #20, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %67, metadata !1080, metadata !DIExpression()) #19, !dbg !1084
  %68 = bitcast i64* %4 to i8*, !dbg !1087
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #19, !dbg !1087
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %66, metadata !1081, metadata !DIExpression()) #19, !dbg !1088
  %69 = bitcast i32* %5 to i8*, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %69) #19, !dbg !1089
  store i64 0, i64* %4, align 8, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %51, metadata !1077, metadata !DIExpression()) #19, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %67, metadata !1080, metadata !DIExpression()) #19, !dbg !1084
  %70 = icmp eq i64 %67, 0, !dbg !1091
  br i1 %70, label %72, label %71, !dbg !1092

71:                                               ; preds = %65
  br label %81, !dbg !1092

72:                                               ; preds = %65
  %73 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 8) to i32*), align 4, !dbg !1092, !nosanitize !294
  %74 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1092, !nosanitize !294
  %75 = getelementptr i8, i8* %74, i32 %73, !dbg !1092
  %76 = load i8, i8* %75, align 1, !dbg !1092, !nosanitize !294
  %77 = add i8 %76, 1, !dbg !1092
  %78 = icmp eq i8 %77, 0, !dbg !1092
  %79 = zext i1 %78 to i8, !dbg !1092
  %80 = add i8 %77, %79, !dbg !1092
  store i8 %80, i8* %75, align 1, !dbg !1092, !nosanitize !294
  br label %179, !dbg !1092

81:                                               ; preds = %119, %71
  %82 = phi i8* [ %117, %119 ], [ %51, %71 ]
  %83 = phi i64 [ %116, %119 ], [ %67, %71 ]
  call void @llvm.dbg.value(metadata i8* %82, metadata !1077, metadata !DIExpression()) #19, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %83, metadata !1080, metadata !DIExpression()) #19, !dbg !1084
  call void @llvm.dbg.value(metadata i32* %5, metadata !1082, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1084
  %84 = call i64 @mbrtowc(i32* noundef nonnull %5, i8* noundef %82, i64 noundef %83, %struct.__mbstate_t* noundef nonnull %66) #19, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %84, metadata !1083, metadata !DIExpression()) #19, !dbg !1084
  %85 = icmp ugt i64 %84, -3, !dbg !1095
  br i1 %85, label %86, label %137, !dbg !1095

86:                                               ; preds = %81
  %87 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 12) to i32*), align 4, !dbg !1097, !nosanitize !294
  %88 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1097, !nosanitize !294
  %89 = getelementptr i8, i8* %88, i32 %87, !dbg !1097
  %90 = load i8, i8* %89, align 1, !dbg !1097, !nosanitize !294
  %91 = add i8 %90, 1, !dbg !1097
  %92 = icmp eq i8 %91, 0, !dbg !1097
  %93 = zext i1 %92 to i8, !dbg !1097
  %94 = add i8 %91, %93, !dbg !1097
  store i8 %94, i8* %89, align 1, !dbg !1097, !nosanitize !294
  %95 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %95, metadata !1077, metadata !DIExpression()) #19, !dbg !1084
  %96 = load i8, i8* %82, align 1, !dbg !1099, !tbaa !549
  %97 = sext i8 %96 to i32, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %97, metadata !1082, metadata !DIExpression()) #19, !dbg !1084
  store i32 %97, i32* %5, align 4, !dbg !1100, !tbaa !318
  %98 = add i64 %83, -1, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %98, metadata !1080, metadata !DIExpression()) #19, !dbg !1084
  store i64 0, i64* %4, align 8, !dbg !1102
  call void @llvm.dbg.value(metadata i32 %97, metadata !1082, metadata !DIExpression()) #19, !dbg !1084
  call void @llvm.dbg.value(metadata i8 %96, metadata !1103, metadata !DIExpression()) #19, !dbg !1108
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1110, !tbaa !300
  %100 = call i32 @putc(i32 noundef 92, %struct._IO_FILE* noundef %99) #19, !dbg !1111
  %101 = zext i8 %96 to i32, !dbg !1112
  %102 = lshr i32 %101, 6, !dbg !1113
  %103 = or i32 %102, 48, !dbg !1114
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1115, !tbaa !300
  %105 = call i32 @putc(i32 noundef %103, %struct._IO_FILE* noundef %104) #19, !dbg !1116
  %106 = lshr i32 %101, 3, !dbg !1117
  %107 = and i32 %106, 7, !dbg !1118
  %108 = or i32 %107, 48, !dbg !1119
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1120, !tbaa !300
  %110 = call i32 @putc(i32 noundef %108, %struct._IO_FILE* noundef %109) #19, !dbg !1121
  %111 = and i32 %101, 7, !dbg !1122
  %112 = or i32 %111, 48, !dbg !1123
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1124, !tbaa !300
  %114 = call i32 @putc(i32 noundef %112, %struct._IO_FILE* noundef %113) #19, !dbg !1125
  br label %115, !dbg !1126

115:                                              ; preds = %154, %144, %86
  %116 = phi i64 [ %98, %86 ], [ %139, %144 ], [ %139, %154 ]
  %117 = phi i8* [ %95, %86 ], [ %138, %144 ], [ %138, %154 ]
  call void @llvm.dbg.value(metadata i8* %117, metadata !1077, metadata !DIExpression()) #19, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %116, metadata !1080, metadata !DIExpression()) #19, !dbg !1084
  %118 = icmp eq i64 %116, 0, !dbg !1091
  br i1 %118, label %128, label %119, !dbg !1092, !llvm.loop !1127

119:                                              ; preds = %115
  %120 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 16) to i32*), align 4, !dbg !1092, !nosanitize !294
  %121 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1092, !nosanitize !294
  %122 = getelementptr i8, i8* %121, i32 %120, !dbg !1092
  %123 = load i8, i8* %122, align 1, !dbg !1092, !nosanitize !294
  %124 = add i8 %123, 1, !dbg !1092
  %125 = icmp eq i8 %124, 0, !dbg !1092
  %126 = zext i1 %125 to i8, !dbg !1092
  %127 = add i8 %124, %126, !dbg !1092
  store i8 %127, i8* %122, align 1, !dbg !1092, !nosanitize !294
  br label %81, !dbg !1092

128:                                              ; preds = %115
  %129 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 20) to i32*), align 4, !dbg !1092, !nosanitize !294
  %130 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1092, !nosanitize !294
  %131 = getelementptr i8, i8* %130, i32 %129, !dbg !1092
  %132 = load i8, i8* %131, align 1, !dbg !1092, !nosanitize !294
  %133 = add i8 %132, 1, !dbg !1092
  %134 = icmp eq i8 %133, 0, !dbg !1092
  %135 = zext i1 %134 to i8, !dbg !1092
  %136 = add i8 %133, %135, !dbg !1092
  store i8 %136, i8* %131, align 1, !dbg !1092, !nosanitize !294
  br label %179, !dbg !1092

137:                                              ; preds = %81
  %138 = getelementptr inbounds i8, i8* %82, i64 %84, !dbg !1129
  call void @llvm.dbg.value(metadata i8* %138, metadata !1077, metadata !DIExpression()) #19, !dbg !1084
  %139 = sub i64 %83, %84, !dbg !1130
  call void @llvm.dbg.value(metadata i64 %139, metadata !1080, metadata !DIExpression()) #19, !dbg !1084
  %140 = load i32, i32* %5, align 4, !dbg !1131, !tbaa !318
  call void @llvm.dbg.value(metadata i32 %140, metadata !1082, metadata !DIExpression()) #19, !dbg !1084
  %141 = call i32 @iswprint(i32 noundef %140) #19, !dbg !1133
  %142 = icmp eq i32 %141, 0, !dbg !1133
  %143 = load i32, i32* %5, align 4, !dbg !1134, !tbaa !318
  call void @llvm.dbg.value(metadata i32 %143, metadata !1082, metadata !DIExpression()) #19, !dbg !1084
  call void @llvm.dbg.value(metadata i32 %143, metadata !1082, metadata !DIExpression()) #19, !dbg !1084
  br i1 %142, label %154, label %144, !dbg !1135

144:                                              ; preds = %137
  %145 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 24) to i32*), align 4, !dbg !1136, !nosanitize !294
  %146 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1136, !nosanitize !294
  %147 = getelementptr i8, i8* %146, i32 %145, !dbg !1136
  %148 = load i8, i8* %147, align 1, !dbg !1136, !nosanitize !294
  %149 = add i8 %148, 1, !dbg !1136
  %150 = icmp eq i8 %149, 0, !dbg !1136
  %151 = zext i1 %150 to i8, !dbg !1136
  %152 = add i8 %149, %151, !dbg !1136
  store i8 %152, i8* %147, align 1, !dbg !1136, !nosanitize !294
  %153 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i32 noundef %143) #19, !dbg !1136
  br label %115, !dbg !1138

154:                                              ; preds = %137
  %155 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 28) to i32*), align 4, !dbg !1139, !nosanitize !294
  %156 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1139, !nosanitize !294
  %157 = getelementptr i8, i8* %156, i32 %155, !dbg !1139
  %158 = load i8, i8* %157, align 1, !dbg !1139, !nosanitize !294
  %159 = add i8 %158, 1, !dbg !1139
  %160 = icmp eq i8 %159, 0, !dbg !1139
  %161 = zext i1 %160 to i8, !dbg !1139
  %162 = add i8 %159, %161, !dbg !1139
  store i8 %162, i8* %157, align 1, !dbg !1139, !nosanitize !294
  call void @llvm.dbg.value(metadata i32 %143, metadata !1103, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #19, !dbg !1139
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1141, !tbaa !300
  %164 = call i32 @putc(i32 noundef 92, %struct._IO_FILE* noundef %163) #19, !dbg !1142
  %165 = lshr i32 %143, 6, !dbg !1143
  %166 = and i32 %165, 3, !dbg !1143
  %167 = or i32 %166, 48, !dbg !1144
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1145, !tbaa !300
  %169 = call i32 @putc(i32 noundef %167, %struct._IO_FILE* noundef %168) #19, !dbg !1146
  %170 = lshr i32 %143, 3, !dbg !1147
  %171 = and i32 %170, 7, !dbg !1148
  %172 = or i32 %171, 48, !dbg !1149
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1150, !tbaa !300
  %174 = call i32 @putc(i32 noundef %172, %struct._IO_FILE* noundef %173) #19, !dbg !1151
  %175 = and i32 %143, 7, !dbg !1152
  %176 = or i32 %175, 48, !dbg !1153
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1154, !tbaa !300
  %178 = call i32 @putc(i32 noundef %176, %struct._IO_FILE* noundef %177) #19, !dbg !1155
  br label %115, !dbg !1092

179:                                              ; preds = %128, %72
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %69) #19, !dbg !1156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #19, !dbg !1156
  br label %190, !dbg !1157

180:                                              ; preds = %50
  %181 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 32) to i32*), align 4, !dbg !1158, !nosanitize !294
  %182 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1158, !nosanitize !294
  %183 = getelementptr i8, i8* %182, i32 %181, !dbg !1158
  %184 = load i8, i8* %183, align 1, !dbg !1158, !nosanitize !294
  %185 = add i8 %184, 1, !dbg !1158
  %186 = icmp eq i8 %185, 0, !dbg !1158
  %187 = zext i1 %186 to i8, !dbg !1158
  %188 = add i8 %185, %187, !dbg !1158
  store i8 %188, i8* %183, align 1, !dbg !1158, !nosanitize !294
  %189 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef %51), !dbg !1158
  br label %190

190:                                              ; preds = %180, %179
  %191 = load i32, i32* @nulsep, align 4, !dbg !1159, !tbaa !318
  %192 = icmp eq i32 %191, 0, !dbg !1159
  br i1 %192, label %193, label %202, !dbg !1161

193:                                              ; preds = %190
  %194 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 36) to i32*), align 4, !dbg !1161, !nosanitize !294
  %195 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1161, !nosanitize !294
  %196 = getelementptr i8, i8* %195, i32 %194, !dbg !1161
  %197 = load i8, i8* %196, align 1, !dbg !1161, !nosanitize !294
  %198 = add i8 %197, 1, !dbg !1161
  %199 = icmp eq i8 %198, 0, !dbg !1161
  %200 = zext i1 %199 to i8, !dbg !1161
  %201 = add i8 %198, %200, !dbg !1161
  store i8 %201, i8* %196, align 1, !dbg !1161, !nosanitize !294
  br label %225, !dbg !1161

202:                                              ; preds = %190
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1162, !tbaa !300
  %204 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %203), !dbg !1163
  %205 = load i32, i32* @nulsep, align 4, !dbg !1164, !tbaa !318
  %206 = icmp slt i32 %205, 2, !dbg !1166
  br i1 %206, label %216, label %207, !dbg !1167

207:                                              ; preds = %202
  %208 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 40) to i32*), align 4, !dbg !1167, !nosanitize !294
  %209 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1167, !nosanitize !294
  %210 = getelementptr i8, i8* %209, i32 %208, !dbg !1167
  %211 = load i8, i8* %210, align 1, !dbg !1167, !nosanitize !294
  %212 = add i8 %211, 1, !dbg !1167
  %213 = icmp eq i8 %212, 0, !dbg !1167
  %214 = zext i1 %213 to i8, !dbg !1167
  %215 = add i8 %212, %214, !dbg !1167
  store i8 %215, i8* %210, align 1, !dbg !1167, !nosanitize !294
  br label %254, !dbg !1167

216:                                              ; preds = %202
  %217 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 44) to i32*), align 4, !dbg !1167, !nosanitize !294
  %218 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1167, !nosanitize !294
  %219 = getelementptr i8, i8* %218, i32 %217, !dbg !1167
  %220 = load i8, i8* %219, align 1, !dbg !1167, !nosanitize !294
  %221 = add i8 %220, 1, !dbg !1167
  %222 = icmp eq i8 %221, 0, !dbg !1167
  %223 = zext i1 %222 to i8, !dbg !1167
  %224 = add i8 %221, %223, !dbg !1167
  store i8 %224, i8* %219, align 1, !dbg !1167, !nosanitize !294
  br label %225, !dbg !1167

225:                                              ; preds = %216, %193
  %226 = load i8*, i8** @separator, align 8, !dbg !1168, !tbaa !300
  %227 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef %226), !dbg !1170
  %228 = load i32, i32* @nopad, align 4, !dbg !1171, !tbaa !318
  %229 = icmp eq i32 %228, 0, !dbg !1171
  br i1 %229, label %239, label %230, !dbg !1171

230:                                              ; preds = %225
  %231 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 48) to i32*), align 4, !dbg !1171, !nosanitize !294
  %232 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1171, !nosanitize !294
  %233 = getelementptr i8, i8* %232, i32 %231, !dbg !1171
  %234 = load i8, i8* %233, align 1, !dbg !1171, !nosanitize !294
  %235 = add i8 %234, 1, !dbg !1171
  %236 = icmp eq i8 %235, 0, !dbg !1171
  %237 = zext i1 %236 to i8, !dbg !1171
  %238 = add i8 %235, %237, !dbg !1171
  store i8 %238, i8* %233, align 1, !dbg !1171, !nosanitize !294
  br label %251, !dbg !1171

239:                                              ; preds = %225
  %240 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 52) to i32*), align 4, !dbg !1171, !nosanitize !294
  %241 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1171, !nosanitize !294
  %242 = getelementptr i8, i8* %241, i32 %240, !dbg !1171
  %243 = load i8, i8* %242, align 1, !dbg !1171, !nosanitize !294
  %244 = add i8 %243, 1, !dbg !1171
  %245 = icmp eq i8 %244, 0, !dbg !1171
  %246 = zext i1 %245 to i8, !dbg !1171
  %247 = add i8 %244, %246, !dbg !1171
  store i8 %247, i8* %242, align 1, !dbg !1171, !nosanitize !294
  %248 = call i64 @file_mbswidth(%struct.magic_set* noundef %0, i8* noundef %1), !dbg !1171
  %249 = trunc i64 %248 to i32, !dbg !1171
  %250 = sub i32 %2, %249, !dbg !1171
  br label %251, !dbg !1171

251:                                              ; preds = %230, %239
  %252 = phi i32 [ %250, %239 ], [ 0, %230 ]
  %253 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i32 noundef %252, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !1172
  br label %254, !dbg !1173

254:                                              ; preds = %207, %41, %251
  %255 = select i1 %27, i8* null, i8* %1, !dbg !1174
  %256 = select i1 %27, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 96) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 100) to i32*), !dbg !1175
  %257 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1175, !nosanitize !294
  %258 = load i32, i32* %256, align 4, !dbg !1175, !nosanitize !294
  %259 = getelementptr i8, i8* %257, i32 %258, !dbg !1175
  %260 = load i8, i8* %259, align 1, !dbg !1175, !nosanitize !294
  %261 = add i8 %260, 1, !dbg !1175
  %262 = icmp eq i8 %261, 0, !dbg !1175
  %263 = zext i1 %262 to i8, !dbg !1175
  %264 = add i8 %261, %263, !dbg !1175
  store i8 %264, i8* %259, align 1, !dbg !1175, !nosanitize !294
  %265 = call i8* @magic_file(%struct.magic_set* noundef %0, i8* noundef %255) #19, !dbg !1175
  call void @llvm.dbg.value(metadata i8* %265, metadata !1055, metadata !DIExpression()), !dbg !1063
  %266 = icmp eq i8* %265, null, !dbg !1176
  br i1 %266, label %267, label %279, !dbg !1178

267:                                              ; preds = %254
  %268 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 56) to i32*), align 4, !dbg !1179, !nosanitize !294
  %269 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1179, !nosanitize !294
  %270 = getelementptr i8, i8* %269, i32 %268, !dbg !1179
  %271 = load i8, i8* %270, align 1, !dbg !1179, !nosanitize !294
  %272 = add i8 %271, 1, !dbg !1179
  %273 = icmp eq i8 %272, 0, !dbg !1179
  %274 = zext i1 %273 to i8, !dbg !1179
  %275 = add i8 %272, %274, !dbg !1179
  store i8 %275, i8* %270, align 1, !dbg !1179, !nosanitize !294
  %276 = call i8* @magic_error(%struct.magic_set* noundef %0) #19, !dbg !1179
  %277 = zext i8 %16 to i32
  %278 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* noundef %276, i32 noundef %277), !dbg !1181
  call void @llvm.dbg.value(metadata i32 %278, metadata !1058, metadata !DIExpression()), !dbg !1063
  br label %291, !dbg !1182

279:                                              ; preds = %254
  %280 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 60) to i32*), align 4, !dbg !1063, !nosanitize !294
  %281 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1063, !nosanitize !294
  %282 = getelementptr i8, i8* %281, i32 %280, !dbg !1063
  %283 = load i8, i8* %282, align 1, !dbg !1063, !nosanitize !294
  %284 = add i8 %283, 1, !dbg !1063
  %285 = icmp eq i8 %284, 0, !dbg !1063
  %286 = zext i1 %285 to i8, !dbg !1063
  %287 = add i8 %284, %286, !dbg !1063
  store i8 %287, i8* %282, align 1, !dbg !1063, !nosanitize !294
  %288 = zext i8 %16 to i32
  %289 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %265, i32 noundef %288), !dbg !1183
  %290 = lshr i32 %289, 31, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %290, metadata !1058, metadata !DIExpression()), !dbg !1063
  br label %291

291:                                              ; preds = %279, %267
  %292 = phi i32 [ %278, %267 ], [ %290, %279 ], !dbg !1186
  call void @llvm.dbg.value(metadata i32 %292, metadata !1058, metadata !DIExpression()), !dbg !1063
  %293 = load i32, i32* @nobuffer, align 4, !dbg !1187, !tbaa !318
  %294 = icmp eq i32 %293, 0, !dbg !1187
  br i1 %294, label %295, label %304, !dbg !1189

295:                                              ; preds = %291
  %296 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 64) to i32*), align 4, !dbg !1189, !nosanitize !294
  %297 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1189, !nosanitize !294
  %298 = getelementptr i8, i8* %297, i32 %296, !dbg !1189
  %299 = load i8, i8* %298, align 1, !dbg !1189, !nosanitize !294
  %300 = add i8 %299, 1, !dbg !1189
  %301 = icmp eq i8 %300, 0, !dbg !1189
  %302 = zext i1 %301 to i8, !dbg !1189
  %303 = add i8 %300, %302, !dbg !1189
  store i8 %303, i8* %298, align 1, !dbg !1189, !nosanitize !294
  br label %318, !dbg !1189

304:                                              ; preds = %291
  %305 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 68) to i32*), align 4, !dbg !1190, !nosanitize !294
  %306 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1190, !nosanitize !294
  %307 = getelementptr i8, i8* %306, i32 %305, !dbg !1190
  %308 = load i8, i8* %307, align 1, !dbg !1190, !nosanitize !294
  %309 = add i8 %308, 1, !dbg !1190
  %310 = icmp eq i8 %309, 0, !dbg !1190
  %311 = zext i1 %310 to i8, !dbg !1190
  %312 = add i8 %309, %311, !dbg !1190
  store i8 %312, i8* %307, align 1, !dbg !1190, !nosanitize !294
  %313 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1190, !tbaa !300
  %314 = call i32 @fflush(%struct._IO_FILE* noundef %313), !dbg !1191
  %315 = icmp ne i32 %314, 0, !dbg !1192
  %316 = zext i1 %315 to i32, !dbg !1192
  %317 = or i32 %292, %316, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %317, metadata !1058, metadata !DIExpression()), !dbg !1063
  br label %318, !dbg !1194

318:                                              ; preds = %295, %304
  %319 = phi i32 [ %317, %304 ], [ %292, %295 ], !dbg !1063
  call void @llvm.dbg.value(metadata i32 %319, metadata !1058, metadata !DIExpression()), !dbg !1063
  %320 = icmp ne i32 %319, 0, !dbg !1195
  %321 = select i1 %320, i1 true, i1 %266, !dbg !1196
  %322 = select i1 %320, i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 104) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([28 x i32]* @__sancov_gen_.162 to i64), i64 108) to i32*), !dbg !1196
  %323 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1196, !nosanitize !294
  %324 = load i32, i32* %322, align 4, !dbg !1196, !nosanitize !294
  %325 = getelementptr i8, i8* %323, i32 %324, !dbg !1196
  %326 = load i8, i8* %325, align 1, !dbg !1196, !nosanitize !294
  %327 = add i8 %326, 1, !dbg !1196
  %328 = icmp eq i8 %327, 0, !dbg !1196
  %329 = zext i1 %328 to i8, !dbg !1196
  %330 = add i8 %327, %329, !dbg !1196
  store i8 %330, i8* %325, align 1, !dbg !1196, !nosanitize !294
  %331 = zext i1 %321 to i32, !dbg !1196
  ret i32 %331, !dbg !1197
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind
declare !dbg !1198 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

declare !dbg !1201 void @magic_close(%struct.magic_set* noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1202 i64 @mbrtowc(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1211 i32 @wcwidth(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1214 i32 @iswprint(i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define hidden void @file_err(i32 noundef %0, i8* nocapture noundef readonly %1, ...) local_unnamed_addr #7 comdat !dbg !1218 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @__sancov_gen_.163, i32 0, i32 0), align 4, !dbg !1226, !nosanitize !294
  %5 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1226, !nosanitize !294
  %6 = getelementptr i8, i8* %5, i32 %4, !dbg !1226
  %7 = load i8, i8* %6, align 1, !dbg !1226, !nosanitize !294
  %8 = add i8 %7, 1, !dbg !1226
  %9 = icmp eq i8 %8, 0, !dbg !1226
  %10 = zext i1 %9 to i8, !dbg !1226
  %11 = add i8 %8, %10, !dbg !1226
  store i8 %11, i8* %6, align 1, !dbg !1226, !nosanitize !294
  call void @llvm.dbg.value(metadata i32 %0, metadata !1222, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8* %1, metadata !1223, metadata !DIExpression()), !dbg !1227
  %12 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1228
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #19, !dbg !1228
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1224, metadata !DIExpression()), !dbg !1229
  %13 = tail call i32* @__errno_location() #25, !dbg !1230
  %14 = load i32, i32* %13, align 4, !dbg !1230, !tbaa !318
  call void @llvm.dbg.value(metadata i32 %14, metadata !1225, metadata !DIExpression()), !dbg !1227
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1231
  call void @llvm.va_start(i8* nonnull %12), !dbg !1231
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1232, !tbaa !300
  %17 = load i8*, i8** @file_progname, align 8, !dbg !1233, !tbaa !300
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %17) #23, !dbg !1234
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1235, !tbaa !300
  %20 = call i32 @vfprintf(%struct._IO_FILE* noundef %19, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %15) #23, !dbg !1236
  call void @llvm.va_end(i8* nonnull %12), !dbg !1237
  %21 = icmp eq i32 %14, 0, !dbg !1238
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1240, !tbaa !300
  br i1 %21, label %34, label %23, !dbg !1241

23:                                               ; preds = %2
  %24 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([3 x i32]* @__sancov_gen_.163 to i64), i64 4) to i32*), align 4, !dbg !1242, !nosanitize !294
  %25 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1242, !nosanitize !294
  %26 = getelementptr i8, i8* %25, i32 %24, !dbg !1242
  %27 = load i8, i8* %26, align 1, !dbg !1242, !nosanitize !294
  %28 = add i8 %27, 1, !dbg !1242
  %29 = icmp eq i8 %28, 0, !dbg !1242
  %30 = zext i1 %29 to i8, !dbg !1242
  %31 = add i8 %28, %30, !dbg !1242
  store i8 %31, i8* %26, align 1, !dbg !1242, !nosanitize !294
  %32 = call i8* @strerror(i32 noundef %14) #19, !dbg !1242
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* noundef %32) #23, !dbg !1243
  br label %44, !dbg !1244

34:                                               ; preds = %2
  %35 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([3 x i32]* @__sancov_gen_.163 to i64), i64 8) to i32*), align 4, !dbg !1245, !nosanitize !294
  %36 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1245, !nosanitize !294
  %37 = getelementptr i8, i8* %36, i32 %35, !dbg !1245
  %38 = load i8, i8* %37, align 1, !dbg !1245, !nosanitize !294
  %39 = add i8 %38, 1, !dbg !1245
  %40 = icmp eq i8 %39, 0, !dbg !1245
  %41 = zext i1 %40 to i8, !dbg !1245
  %42 = add i8 %39, %41, !dbg !1245
  store i8 %42, i8* %37, align 1, !dbg !1245, !nosanitize !294
  %43 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %22), !dbg !1245
  br label %44

44:                                               ; preds = %34, %23
  call void @exit(i32 noundef %0) #21, !dbg !1246
  unreachable, !dbg !1246
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #14

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #14

; Function Attrs: nounwind
declare i8* @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1247 noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: noreturn nounwind uwtable
define hidden void @file_errx(i32 noundef %0, i8* nocapture noundef readonly %1, ...) local_unnamed_addr #7 !dbg !1250 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1252, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %1, metadata !1253, metadata !DIExpression()), !dbg !1255
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1256
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #19, !dbg !1256
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1254, metadata !DIExpression()), !dbg !1257
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1258
  call void @llvm.va_start(i8* nonnull %4), !dbg !1258
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1259, !tbaa !300
  %7 = load i8*, i8** @file_progname, align 8, !dbg !1260, !tbaa !300
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %7) #23, !dbg !1261
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1262, !tbaa !300
  %10 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %5) #23, !dbg !1263
  call void @llvm.va_end(i8* nonnull %4), !dbg !1264
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1265, !tbaa !300
  %12 = call i32 @fputc(i32 10, %struct._IO_FILE* %11), !dbg !1266
  call void @exit(i32 noundef %0) #21, !dbg !1267
  unreachable, !dbg !1267
}

declare !dbg !1268 i32 @magic_setparam(%struct.magic_set* noundef, i32 noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #15

declare !dbg !1273 i32 @magic_load(%struct.magic_set* noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #16

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare !dbg !1274 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

declare i64 @__getdelim(i8** noundef, i64* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1275 noundef i32 @putc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

declare !dbg !1276 i8* @magic_file(%struct.magic_set* noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !1279 noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @docprint(i8* noundef %0, i32 noundef %1) unnamed_addr #0 comdat !dbg !1283 {
  %3 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @__sancov_gen_.164, i32 0, i32 0), align 4, !dbg !1294, !nosanitize !294
  %4 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1294, !nosanitize !294
  %5 = getelementptr i8, i8* %4, i32 %3, !dbg !1294
  %6 = load i8, i8* %5, align 1, !dbg !1294, !nosanitize !294
  %7 = add i8 %6, 1, !dbg !1294
  %8 = icmp eq i8 %7, 0, !dbg !1294
  %9 = zext i1 %8 to i8, !dbg !1294
  %10 = add i8 %7, %9, !dbg !1294
  store i8 %10, i8* %5, align 1, !dbg !1294, !nosanitize !294
  call void @llvm.dbg.value(metadata i8* %0, metadata !1287, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %1, metadata !1288, metadata !DIExpression()), !dbg !1295
  %11 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 37) #20, !dbg !1296
  %12 = ptrtoint i8* %11 to i64, !dbg !1296
  call void @llvm.dbg.value(metadata i8* %11, metadata !1293, metadata !DIExpression()), !dbg !1295
  %13 = icmp eq i8* %11, null, !dbg !1297
  br i1 %13, label %15, label %14, !dbg !1299

14:                                               ; preds = %2
  br label %89, !dbg !1299

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1300, !tbaa !300
  %17 = tail call i32 @fputs(i8* %0, %struct._IO_FILE* %16), !dbg !1302
  call void @llvm.dbg.value(metadata i32 %1, metadata !1303, metadata !DIExpression()) #19, !dbg !1308
  %18 = icmp eq i32 %1, 0, !dbg !1310
  br i1 %18, label %19, label %28, !dbg !1312

19:                                               ; preds = %15
  %20 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 4) to i32*), align 4, !dbg !1312, !nosanitize !294
  %21 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1312, !nosanitize !294
  %22 = getelementptr i8, i8* %21, i32 %20, !dbg !1312
  %23 = load i8, i8* %22, align 1, !dbg !1312, !nosanitize !294
  %24 = add i8 %23, 1, !dbg !1312
  %25 = icmp eq i8 %24, 0, !dbg !1312
  %26 = zext i1 %25 to i8, !dbg !1312
  %27 = add i8 %24, %26, !dbg !1312
  store i8 %27, i8* %22, align 1, !dbg !1312, !nosanitize !294
  br label %269, !dbg !1312

28:                                               ; preds = %15
  %29 = and i32 %1, 1, !dbg !1313
  %30 = icmp ne i32 %29, 0, !dbg !1313
  %31 = load i32, i32* @posixly, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false, !dbg !1315
  %34 = select i1 %30, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 56) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 60) to i32*), !dbg !1315
  %35 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1315, !nosanitize !294
  %36 = load i32, i32* %34, align 4, !dbg !1315, !nosanitize !294
  %37 = getelementptr i8, i8* %35, i32 %36, !dbg !1315
  %38 = load i8, i8* %37, align 1, !dbg !1315, !nosanitize !294
  %39 = add i8 %38, 1, !dbg !1315
  %40 = icmp eq i8 %39, 0, !dbg !1315
  %41 = zext i1 %40 to i8, !dbg !1315
  %42 = add i8 %39, %41, !dbg !1315
  store i8 %42, i8* %37, align 1, !dbg !1315, !nosanitize !294
  br i1 %33, label %43, label %52, !dbg !1315

43:                                               ; preds = %28
  %44 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 8) to i32*), align 4, !dbg !1315, !nosanitize !294
  %45 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1315, !nosanitize !294
  %46 = getelementptr i8, i8* %45, i32 %44, !dbg !1315
  %47 = load i8, i8* %46, align 1, !dbg !1315, !nosanitize !294
  %48 = add i8 %47, 1, !dbg !1315
  %49 = icmp eq i8 %48, 0, !dbg !1315
  %50 = zext i1 %49 to i8, !dbg !1315
  %51 = add i8 %48, %50, !dbg !1315
  store i8 %51, i8* %46, align 1, !dbg !1315, !nosanitize !294
  br label %83, !dbg !1315

52:                                               ; preds = %28
  %53 = and i32 %1, 2, !dbg !1316
  %54 = icmp eq i32 %53, 0, !dbg !1316
  %55 = select i1 %54, i1 true, i1 %32, !dbg !1317
  %56 = select i1 %54, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 64) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 68) to i32*), !dbg !1317
  %57 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1317, !nosanitize !294
  %58 = load i32, i32* %56, align 4, !dbg !1317, !nosanitize !294
  %59 = getelementptr i8, i8* %57, i32 %58, !dbg !1317
  %60 = load i8, i8* %59, align 1, !dbg !1317, !nosanitize !294
  %61 = add i8 %60, 1, !dbg !1317
  %62 = icmp eq i8 %61, 0, !dbg !1317
  %63 = zext i1 %62 to i8, !dbg !1317
  %64 = add i8 %61, %63, !dbg !1317
  store i8 %64, i8* %59, align 1, !dbg !1317, !nosanitize !294
  br i1 %55, label %74, label %65, !dbg !1317

65:                                               ; preds = %52
  %66 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 12) to i32*), align 4, !dbg !1317, !nosanitize !294
  %67 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1317, !nosanitize !294
  %68 = getelementptr i8, i8* %67, i32 %66, !dbg !1317
  %69 = load i8, i8* %68, align 1, !dbg !1317, !nosanitize !294
  %70 = add i8 %69, 1, !dbg !1317
  %71 = icmp eq i8 %70, 0, !dbg !1317
  %72 = zext i1 %71 to i8, !dbg !1317
  %73 = add i8 %70, %72, !dbg !1317
  store i8 %73, i8* %68, align 1, !dbg !1317, !nosanitize !294
  br label %83, !dbg !1317

74:                                               ; preds = %52
  %75 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 16) to i32*), align 4, !dbg !1317, !nosanitize !294
  %76 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1317, !nosanitize !294
  %77 = getelementptr i8, i8* %76, i32 %75, !dbg !1317
  %78 = load i8, i8* %77, align 1, !dbg !1317, !nosanitize !294
  %79 = add i8 %78, 1, !dbg !1317
  %80 = icmp eq i8 %79, 0, !dbg !1317
  %81 = zext i1 %80 to i8, !dbg !1317
  %82 = add i8 %79, %81, !dbg !1317
  store i8 %82, i8* %77, align 1, !dbg !1317, !nosanitize !294
  br label %86, !dbg !1317

83:                                               ; preds = %65, %43
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1318, !tbaa !300
  %85 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.154, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %84) #19, !dbg !1319
  br label %86, !dbg !1320

86:                                               ; preds = %74, %83
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1321, !tbaa !300
  %88 = tail call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %87) #19, !dbg !1322
  br label %269, !dbg !1323

89:                                               ; preds = %114, %14
  %90 = phi i8* [ %91, %114 ], [ %11, %14 ]
  %91 = getelementptr inbounds i8, i8* %90, i64 -1, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %91, metadata !1292, metadata !DIExpression()), !dbg !1295
  %92 = icmp ugt i8* %91, %0, !dbg !1326
  br i1 %92, label %102, label %93, !dbg !1328

93:                                               ; preds = %89
  %94 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 20) to i32*), align 4, !dbg !1328, !nosanitize !294
  %95 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1328, !nosanitize !294
  %96 = getelementptr i8, i8* %95, i32 %94, !dbg !1328
  %97 = load i8, i8* %96, align 1, !dbg !1328, !nosanitize !294
  %98 = add i8 %97, 1, !dbg !1328
  %99 = icmp eq i8 %98, 0, !dbg !1328
  %100 = zext i1 %99 to i8, !dbg !1328
  %101 = add i8 %98, %100, !dbg !1328
  store i8 %101, i8* %96, align 1, !dbg !1328, !nosanitize !294
  br label %123, !dbg !1328

102:                                              ; preds = %89
  %103 = load i8, i8* %91, align 1, !dbg !1329, !tbaa !549
  %104 = icmp eq i8 %103, 32, !dbg !1330
  br i1 %104, label %114, label %105, !dbg !1331, !llvm.loop !1332

105:                                              ; preds = %102
  %106 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 24) to i32*), align 4, !dbg !1331, !nosanitize !294
  %107 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1331, !nosanitize !294
  %108 = getelementptr i8, i8* %107, i32 %106, !dbg !1331
  %109 = load i8, i8* %108, align 1, !dbg !1331, !nosanitize !294
  %110 = add i8 %109, 1, !dbg !1331
  %111 = icmp eq i8 %110, 0, !dbg !1331
  %112 = zext i1 %111 to i8, !dbg !1331
  %113 = add i8 %110, %112, !dbg !1331
  store i8 %113, i8* %108, align 1, !dbg !1331, !nosanitize !294
  br label %123, !dbg !1331

114:                                              ; preds = %102
  %115 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 28) to i32*), align 4, !dbg !1331, !nosanitize !294
  %116 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1331, !nosanitize !294
  %117 = getelementptr i8, i8* %116, i32 %115, !dbg !1331
  %118 = load i8, i8* %117, align 1, !dbg !1331, !nosanitize !294
  %119 = add i8 %118, 1, !dbg !1331
  %120 = icmp eq i8 %119, 0, !dbg !1331
  %121 = zext i1 %120 to i8, !dbg !1331
  %122 = add i8 %119, %121, !dbg !1331
  store i8 %122, i8* %117, align 1, !dbg !1331, !nosanitize !294
  br label %89, !dbg !1331

123:                                              ; preds = %105, %93
  %124 = ptrtoint i8* %0 to i64, !dbg !1334
  %125 = sub i64 %12, %124, !dbg !1334
  %126 = trunc i64 %125 to i32, !dbg !1334
  %127 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i32 noundef %126, i8* noundef %0), !dbg !1335
  %128 = ptrtoint i8* %91 to i64, !dbg !1336
  %129 = xor i64 %128, -1, !dbg !1336
  %130 = add i64 %129, %12, !dbg !1336
  %131 = trunc i64 %130 to i32, !dbg !1336
  call void @llvm.dbg.value(metadata i32 %131, metadata !1291, metadata !DIExpression()), !dbg !1295
  %132 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %132, metadata !1293, metadata !DIExpression()), !dbg !1295
  %133 = load i8, i8* %132, align 1, !dbg !1338, !tbaa !549
  %134 = sext i8 %133 to i32, !dbg !1338
  switch i32 %134, label %254 [
    i32 101, label %135
    i32 80, label %201
  ], !dbg !1339

135:                                              ; preds = %123
  call void @llvm.dbg.value(metadata i64 0, metadata !1289, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 1, metadata !1290, metadata !DIExpression()), !dbg !1295
  %136 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0)), !dbg !1340
  call void @llvm.dbg.value(metadata i64 1, metadata !1289, metadata !DIExpression()), !dbg !1295
  br label %137, !dbg !1345

137:                                              ; preds = %183, %135
  %138 = phi i64 [ %181, %183 ], [ 1, %135 ]
  %139 = phi i32 [ %180, %183 ], [ 1, %135 ]
  call void @llvm.dbg.value(metadata i64 %138, metadata !1289, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %139, metadata !1290, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1295
  %140 = icmp eq i32 %139, 0, !dbg !1346
  %141 = select i1 %140, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.149, i64 0, i64 0), !dbg !1346
  %142 = select i1 %140, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 72) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 76) to i32*), !dbg !1347
  %143 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1347, !nosanitize !294
  %144 = load i32, i32* %142, align 4, !dbg !1347, !nosanitize !294
  %145 = getelementptr i8, i8* %143, i32 %144, !dbg !1347
  %146 = load i8, i8* %145, align 1, !dbg !1347, !nosanitize !294
  %147 = add i8 %146, 1, !dbg !1347
  %148 = icmp eq i8 %147, 0, !dbg !1347
  %149 = zext i1 %148 to i8, !dbg !1347
  %150 = add i8 %147, %149, !dbg !1347
  store i8 %150, i8* %145, align 1, !dbg !1347, !nosanitize !294
  %151 = getelementptr inbounds [13 x %struct.anon.1], [13 x %struct.anon.1]* @nv, i64 0, i64 %138, i32 0, !dbg !1347
  %152 = load i8*, i8** %151, align 16, !dbg !1347, !tbaa !1348
  %153 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i8* noundef %141, i8* noundef %152), !dbg !1340
  %154 = add nsw i32 %139, 1, !dbg !1349
  call void @llvm.dbg.value(metadata i32 %154, metadata !1290, metadata !DIExpression()), !dbg !1295
  %155 = trunc i64 %138 to i8, !dbg !1350
  %156 = urem i8 %155, 5, !dbg !1350
  %157 = icmp eq i8 %156, 0, !dbg !1352
  %158 = icmp ne i64 %138, 12
  %159 = and i1 %158, %157, !dbg !1353
  br i1 %159, label %169, label %160, !dbg !1353

160:                                              ; preds = %137
  %161 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 32) to i32*), align 4, !dbg !1353, !nosanitize !294
  %162 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1353, !nosanitize !294
  %163 = getelementptr i8, i8* %162, i32 %161, !dbg !1353
  %164 = load i8, i8* %163, align 1, !dbg !1353, !nosanitize !294
  %165 = add i8 %164, 1, !dbg !1353
  %166 = icmp eq i8 %165, 0, !dbg !1353
  %167 = zext i1 %166 to i8, !dbg !1353
  %168 = add i8 %165, %167, !dbg !1353
  store i8 %168, i8* %163, align 1, !dbg !1353, !nosanitize !294
  br label %179, !dbg !1353

169:                                              ; preds = %137
  %170 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 36) to i32*), align 4, !dbg !1354, !nosanitize !294
  %171 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1354, !nosanitize !294
  %172 = getelementptr i8, i8* %171, i32 %170, !dbg !1354
  %173 = load i8, i8* %172, align 1, !dbg !1354, !nosanitize !294
  %174 = add i8 %173, 1, !dbg !1354
  %175 = icmp eq i8 %174, 0, !dbg !1354
  %176 = zext i1 %175 to i8, !dbg !1354
  %177 = add i8 %174, %176, !dbg !1354
  store i8 %177, i8* %172, align 1, !dbg !1354, !nosanitize !294
  %178 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i64 0, i64 0), i32 noundef %131, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !1354
  call void @llvm.dbg.value(metadata i32 0, metadata !1290, metadata !DIExpression()), !dbg !1295
  br label %179, !dbg !1356

179:                                              ; preds = %160, %169
  %180 = phi i32 [ 0, %169 ], [ %154, %160 ], !dbg !1357
  call void @llvm.dbg.value(metadata i32 %180, metadata !1290, metadata !DIExpression()), !dbg !1295
  %181 = add nuw nsw i64 %138, 1, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %181, metadata !1289, metadata !DIExpression()), !dbg !1295
  %182 = icmp eq i64 %181, 13, !dbg !1359
  br i1 %182, label %192, label %183, !dbg !1345, !llvm.loop !1360

183:                                              ; preds = %179
  %184 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 40) to i32*), align 4, !dbg !1345, !nosanitize !294
  %185 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1345, !nosanitize !294
  %186 = getelementptr i8, i8* %185, i32 %184, !dbg !1345
  %187 = load i8, i8* %186, align 1, !dbg !1345, !nosanitize !294
  %188 = add i8 %187, 1, !dbg !1345
  %189 = icmp eq i8 %188, 0, !dbg !1345
  %190 = zext i1 %189 to i8, !dbg !1345
  %191 = add i8 %188, %190, !dbg !1345
  store i8 %191, i8* %186, align 1, !dbg !1345, !nosanitize !294
  br label %137, !dbg !1345

192:                                              ; preds = %179
  %193 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 44) to i32*), align 4, !dbg !1345, !nosanitize !294
  %194 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1345, !nosanitize !294
  %195 = getelementptr i8, i8* %194, i32 %193, !dbg !1345
  %196 = load i8, i8* %195, align 1, !dbg !1345, !nosanitize !294
  %197 = add i8 %196, 1, !dbg !1345
  %198 = icmp eq i8 %197, 0, !dbg !1345
  %199 = zext i1 %198 to i8, !dbg !1345
  %200 = add i8 %197, %199, !dbg !1345
  store i8 %200, i8* %195, align 1, !dbg !1345, !nosanitize !294
  br label %263, !dbg !1345

201:                                              ; preds = %123
  %202 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 48) to i32*), align 4, !dbg !1295, !nosanitize !294
  %203 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1295, !nosanitize !294
  %204 = getelementptr i8, i8* %203, i32 %202, !dbg !1295
  %205 = load i8, i8* %204, align 1, !dbg !1295, !nosanitize !294
  %206 = add i8 %205, 1, !dbg !1295
  %207 = icmp eq i8 %206, 0, !dbg !1295
  %208 = zext i1 %207 to i8, !dbg !1295
  %209 = add i8 %206, %208, !dbg !1295
  store i8 %209, i8* %204, align 1, !dbg !1295, !nosanitize !294
  call void @llvm.dbg.value(metadata i64 0, metadata !1289, metadata !DIExpression()), !dbg !1295
  %210 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 0, i32 0), align 16, !dbg !1363, !tbaa !654
  %211 = load i64, i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 0, i32 2), align 16, !dbg !1367, !tbaa !1368
  %212 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 0, i32 3), align 8, !dbg !1369, !tbaa !1370
  %213 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i8* noundef %210, i64 noundef %211, i8* noundef %212), !dbg !1371
  %214 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i32 noundef %131, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !1372
  call void @llvm.dbg.value(metadata i64 1, metadata !1289, metadata !DIExpression()), !dbg !1295
  %215 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 1, i32 0), align 8, !dbg !1363, !tbaa !654
  %216 = load i64, i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 1, i32 2), align 8, !dbg !1367, !tbaa !1368
  %217 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 1, i32 3), align 16, !dbg !1369, !tbaa !1370
  %218 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i8* noundef %215, i64 noundef %216, i8* noundef %217), !dbg !1371
  %219 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i32 noundef %131, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !1372
  call void @llvm.dbg.value(metadata i64 2, metadata !1289, metadata !DIExpression()), !dbg !1295
  %220 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 2, i32 0), align 16, !dbg !1363, !tbaa !654
  %221 = load i64, i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 2, i32 2), align 16, !dbg !1367, !tbaa !1368
  %222 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 2, i32 3), align 8, !dbg !1369, !tbaa !1370
  %223 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i8* noundef %220, i64 noundef %221, i8* noundef %222), !dbg !1371
  %224 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i32 noundef %131, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !1372
  call void @llvm.dbg.value(metadata i64 3, metadata !1289, metadata !DIExpression()), !dbg !1295
  %225 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 3, i32 0), align 8, !dbg !1363, !tbaa !654
  %226 = load i64, i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 3, i32 2), align 8, !dbg !1367, !tbaa !1368
  %227 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 3, i32 3), align 16, !dbg !1369, !tbaa !1370
  %228 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i8* noundef %225, i64 noundef %226, i8* noundef %227), !dbg !1371
  %229 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i32 noundef %131, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !1372
  call void @llvm.dbg.value(metadata i64 4, metadata !1289, metadata !DIExpression()), !dbg !1295
  %230 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 4, i32 0), align 16, !dbg !1363, !tbaa !654
  %231 = load i64, i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 4, i32 2), align 16, !dbg !1367, !tbaa !1368
  %232 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 4, i32 3), align 8, !dbg !1369, !tbaa !1370
  %233 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i8* noundef %230, i64 noundef %231, i8* noundef %232), !dbg !1371
  %234 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i32 noundef %131, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !1372
  call void @llvm.dbg.value(metadata i64 5, metadata !1289, metadata !DIExpression()), !dbg !1295
  %235 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 5, i32 0), align 8, !dbg !1363, !tbaa !654
  %236 = load i64, i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 5, i32 2), align 8, !dbg !1367, !tbaa !1368
  %237 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 5, i32 3), align 16, !dbg !1369, !tbaa !1370
  %238 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i8* noundef %235, i64 noundef %236, i8* noundef %237), !dbg !1371
  %239 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i32 noundef %131, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !1372
  call void @llvm.dbg.value(metadata i64 6, metadata !1289, metadata !DIExpression()), !dbg !1295
  %240 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 6, i32 0), align 16, !dbg !1363, !tbaa !654
  %241 = load i64, i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 6, i32 2), align 16, !dbg !1367, !tbaa !1368
  %242 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 6, i32 3), align 8, !dbg !1369, !tbaa !1370
  %243 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i8* noundef %240, i64 noundef %241, i8* noundef %242), !dbg !1371
  %244 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i32 noundef %131, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !1372
  call void @llvm.dbg.value(metadata i64 7, metadata !1289, metadata !DIExpression()), !dbg !1295
  %245 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 7, i32 0), align 8, !dbg !1363, !tbaa !654
  %246 = load i64, i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 7, i32 2), align 8, !dbg !1367, !tbaa !1368
  %247 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 7, i32 3), align 16, !dbg !1369, !tbaa !1370
  %248 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i8* noundef %245, i64 noundef %246, i8* noundef %247), !dbg !1371
  %249 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i32 noundef %131, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !1372
  call void @llvm.dbg.value(metadata i64 8, metadata !1289, metadata !DIExpression()), !dbg !1295
  %250 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 8, i32 0), align 16, !dbg !1363, !tbaa !654
  %251 = load i64, i64* getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 8, i32 2), align 16, !dbg !1367, !tbaa !1368
  %252 = load i8*, i8** getelementptr inbounds ([9 x %struct.anon.3], [9 x %struct.anon.3]* @pm, i64 0, i64 8, i32 3), align 8, !dbg !1369, !tbaa !1370
  %253 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i8* noundef %250, i64 noundef %251, i8* noundef %252), !dbg !1371
  call void @llvm.dbg.value(metadata i64 9, metadata !1289, metadata !DIExpression()), !dbg !1295
  br label %263, !dbg !1374

254:                                              ; preds = %123
  %255 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([20 x i32]* @__sancov_gen_.164 to i64), i64 52) to i32*), align 4, !dbg !1375, !nosanitize !294
  %256 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !1375, !nosanitize !294
  %257 = getelementptr i8, i8* %256, i32 %255, !dbg !1375
  %258 = load i8, i8* %257, align 1, !dbg !1375, !nosanitize !294
  %259 = add i8 %258, 1, !dbg !1375
  %260 = icmp eq i8 %259, 0, !dbg !1375
  %261 = zext i1 %260 to i8, !dbg !1375
  %262 = add i8 %259, %261, !dbg !1375
  store i8 %262, i8* %257, align 1, !dbg !1375, !nosanitize !294
  tail call void (i32, i8*, ...) @file_errx(i32 noundef 1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.153, i64 0, i64 0), i32 noundef %134) #24, !dbg !1375
  unreachable, !dbg !1375

263:                                              ; preds = %192, %201
  %264 = ptrtoint i8* %132 to i64, !dbg !1374
  %265 = sub i64 %264, %124, !dbg !1374
  %266 = getelementptr inbounds i8, i8* %0, i64 %265, !dbg !1376
  %267 = getelementptr inbounds i8, i8* %266, i64 1, !dbg !1377
  %268 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %267), !dbg !1378
  br label %269, !dbg !1379

269:                                              ; preds = %19, %86, %263
  ret void, !dbg !1379
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #17

declare void @__sanitizer_cov_trace_pc_guard_init(i32**, i32**)

; Function Attrs: nounwind uwtable
define internal void @sancov.module_ctor_trace_pc_guard() #18 comdat {
  call void @__sanitizer_cov_trace_pc_guard_init(i32** @__start___sancov_guards, i32** @__stop___sancov_guards)
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind willreturn }
attributes #15 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind uwtable }
attributes #19 = { nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { noreturn nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { cold }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rcsid", scope: !2, file: !3, line: 35, type: !73, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "file.c", directory: "/home/kansx/Fuzz/APISpecFuzz/Library/libmagic/file-5.45/src", checksumkind: CSK_MD5, checksum: "d0fd7e2bdbe0aa8dc27a2c38cb2ce018")
!4 = !{!5, !6, !9, !11, !13, !14, !15, !16}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "node_modules/llvm-14.0.0.obj/lib/clang/14.0.0/include/stddef.h", directory: "/home/kansx", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !12, line: 90, baseType: !8)
!12 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !17, line: 20, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!0, !20, !22, !26, !40, !42, !44, !54, !56, !58, !60}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "posixly", scope: !2, file: !3, line: 171, type: !13, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "file_progname", scope: !2, file: !3, line: 786, type: !24, isLocal: true, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 107, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 7936, elements: !38)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !31, line: 50, size: 256, elements: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!32 = !{!33, !34, !35, !37}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !31, line: 52, baseType: !24, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !30, file: !31, line: 55, baseType: !13, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !30, file: !31, line: 56, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !30, file: !31, line: 57, baseType: !13, size: 32, offset: 192)
!38 = !{!39}
!39 = !DISubrange(count: 31)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "nulsep", scope: !2, file: !3, line: 104, type: !13, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "bflag", scope: !2, file: !3, line: 101, type: !13, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "nv", scope: !2, file: !3, line: 127, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1664, elements: !52)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 124, size: 128, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !48, file: !3, line: 125, baseType: !24, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !48, file: !3, line: 126, baseType: !13, size: 32, offset: 64)
!52 = !{!53}
!53 = !DISubrange(count: 13)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "separator", scope: !2, file: !3, line: 106, type: !24, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "nobuffer", scope: !2, file: !3, line: 103, type: !13, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "nopad", scope: !2, file: !3, line: 102, type: !13, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pm", scope: !2, file: !3, line: 150, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 2880, elements: !71)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 143, size: 320, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !63, file: !3, line: 144, baseType: !24, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !63, file: !3, line: 145, baseType: !6, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !63, file: !3, line: 146, baseType: !6, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !63, file: !3, line: 147, baseType: !24, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !63, file: !3, line: 148, baseType: !13, size: 32, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !63, file: !3, line: 149, baseType: !13, size: 32, offset: 288)
!71 = !{!72}
!72 = !DISubrange(count: 9)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 488, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 61)
!76 = !{i32 7, !"Dwarf Version", i32 5}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 4}
!79 = !{i32 7, !"PIC Level", i32 2}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{!"clang version 14.0.0"}
!82 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 194, type: !83, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!83 = !DISubroutineType(types: !84)
!84 = !{!13, !13, !14}
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !289, !290, !291, !292}
!86 = !DILocalVariable(name: "argc", arg: 1, scope: !82, file: !3, line: 194, type: !13)
!87 = !DILocalVariable(name: "argv", arg: 2, scope: !82, file: !3, line: 194, type: !14)
!88 = !DILocalVariable(name: "c", scope: !82, file: !3, line: 196, type: !13)
!89 = !DILocalVariable(name: "i", scope: !82, file: !3, line: 197, type: !6)
!90 = !DILocalVariable(name: "j", scope: !82, file: !3, line: 197, type: !6)
!91 = !DILocalVariable(name: "wid", scope: !82, file: !3, line: 197, type: !6)
!92 = !DILocalVariable(name: "nw", scope: !82, file: !3, line: 197, type: !6)
!93 = !DILocalVariable(name: "action", scope: !82, file: !3, line: 198, type: !13)
!94 = !DILocalVariable(name: "didsomefiles", scope: !82, file: !3, line: 198, type: !13)
!95 = !DILocalVariable(name: "errflg", scope: !82, file: !3, line: 198, type: !13)
!96 = !DILocalVariable(name: "flags", scope: !82, file: !3, line: 199, type: !13)
!97 = !DILocalVariable(name: "e", scope: !82, file: !3, line: 199, type: !13)
!98 = !DILocalVariable(name: "magic", scope: !82, file: !3, line: 203, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic_set", file: !101, line: 455, size: 2496, elements: !102)
!101 = !DIFile(filename: "./file.h", directory: "/home/kansx/Fuzz/APISpecFuzz/Library/libmagic/file-5.45/src", checksumkind: CSK_MD5, checksum: "73737282a91c9a166137ffd3c170ad6a")
!102 = !{!103, !222, !234, !240, !241, !242, !243, !244, !245, !246, !247, !251, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "mlist", scope: !100, file: !101, line: 456, baseType: !104, size: 128)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !158)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlist", file: !101, line: 421, size: 384, elements: !107)
!107 = !{!108, !191, !218, !219, !220, !221}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !106, file: !101, line: 422, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !101, line: 209, size: 3008, elements: !111)
!111 = !{!112, !118, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !134, !135, !138, !149, !180, !184, !188, !190}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "cont_level", scope: !110, file: !101, line: 211, baseType: !113, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !114, line: 25, baseType: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !116, line: 40, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !110, file: !101, line: 212, baseType: !119, size: 8, offset: 16)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !114, line: 24, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !116, line: 38, baseType: !15)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "factor", scope: !110, file: !101, line: 223, baseType: !119, size: 8, offset: 24)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "reln", scope: !110, file: !101, line: 226, baseType: !119, size: 8, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "vallen", scope: !110, file: !101, line: 227, baseType: !119, size: 8, offset: 40)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !101, line: 228, baseType: !119, size: 8, offset: 48)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "in_type", scope: !110, file: !101, line: 229, baseType: !119, size: 8, offset: 56)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "in_op", scope: !110, file: !101, line: 312, baseType: !119, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "mask_op", scope: !110, file: !101, line: 313, baseType: !119, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !110, file: !101, line: 315, baseType: !119, size: 8, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "factor_op", scope: !110, file: !101, line: 319, baseType: !119, size: 8, offset: 88)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !110, file: !101, line: 350, baseType: !131, size: 32, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !132, line: 26, baseType: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !116, line: 41, baseType: !13)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "in_offset", scope: !110, file: !101, line: 352, baseType: !131, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !110, file: !101, line: 354, baseType: !136, size: 32, offset: 160)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !114, line: 26, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !116, line: 42, baseType: !18)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_u", scope: !110, file: !101, line: 362, baseType: !139, size: 64, offset: 192)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !101, line: 356, size: 64, elements: !140)
!140 = !{!141, !144}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_mask", scope: !139, file: !101, line: 357, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !114, line: 27, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !116, line: 45, baseType: !8)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_s", scope: !139, file: !101, line: 361, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !139, file: !101, line: 358, size: 64, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_count", scope: !145, file: !101, line: 359, baseType: !136, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !145, file: !101, line: 360, baseType: !136, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !110, file: !101, line: 367, baseType: !150, size: 1024, offset: 256)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "VALUETYPE", file: !101, line: 194, size: 1024, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !160, !164, !168, !172, !174, !176, !178}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !150, file: !101, line: 195, baseType: !119, size: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !150, file: !101, line: 196, baseType: !113, size: 16)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !150, file: !101, line: 197, baseType: !136, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !150, file: !101, line: 198, baseType: !142, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "hs", scope: !150, file: !101, line: 199, baseType: !157, size: 16)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 16, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 2)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "hl", scope: !150, file: !101, line: 200, baseType: !161, size: 32)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 32, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 4)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "hq", scope: !150, file: !101, line: 201, baseType: !165, size: 64)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !150, file: !101, line: 202, baseType: !169, size: 1024)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "us", scope: !150, file: !101, line: 203, baseType: !173, size: 1024)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, elements: !170)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !150, file: !101, line: 204, baseType: !175, size: 128)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, elements: !158)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !150, file: !101, line: 205, baseType: !177, size: 32)
!177 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !150, file: !101, line: 206, baseType: !179, size: 64)
!179 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !110, file: !101, line: 369, baseType: !181, size: 512, offset: 1280)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 512, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mimetype", scope: !110, file: !101, line: 371, baseType: !185, size: 640, offset: 1792)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 640, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 80)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "apple", scope: !110, file: !101, line: 373, baseType: !189, size: 64, offset: 2432)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !166)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !110, file: !101, line: 375, baseType: !181, size: 512, offset: 2496)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "magic_rxcomp", scope: !106, file: !101, line: 423, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "file_regex_t", file: !101, line: 182, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !196, line: 478, baseType: !197)
!196 = !DIFile(filename: "/usr/include/regex.h", directory: "", checksumkind: CSK_MD5, checksum: "6d816f6cca462fea1b68ba10523ed664")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !196, line: 413, size: 512, elements: !198)
!198 = !{!199, !202, !204, !205, !207, !208, !210, !211, !212, !213, !214, !215, !216, !217}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !197, file: !196, line: 417, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !196, line: 417, flags: DIFlagFwdDecl)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !197, file: !196, line: 420, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !196, line: 56, baseType: !8)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !197, file: !196, line: 423, baseType: !203, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !197, file: !196, line: 426, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !196, line: 72, baseType: !8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !197, file: !196, line: 431, baseType: !9, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !197, file: !196, line: 437, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !197, file: !196, line: 440, baseType: !6, size: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !197, file: !196, line: 446, baseType: !18, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !197, file: !196, line: 457, baseType: !18, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !197, file: !196, line: 461, baseType: !18, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !197, file: !196, line: 465, baseType: !18, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !197, file: !196, line: 469, baseType: !18, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !197, file: !196, line: 472, baseType: !18, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !197, file: !196, line: 475, baseType: !18, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "nmagic", scope: !106, file: !101, line: 424, baseType: !6, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !106, file: !101, line: 425, baseType: !5, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !101, line: 426, baseType: !105, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !106, file: !101, line: 426, baseType: !105, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !100, file: !101, line: 457, baseType: !223, size: 128, offset: 128)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cont", file: !101, line: 448, size: 128, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !223, file: !101, line: 449, baseType: !6, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !223, file: !101, line: 450, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "level_info", file: !101, line: 439, size: 128, elements: !229)
!229 = !{!230, !231, !232, !233}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !228, file: !101, line: 440, baseType: !131, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "got_match", scope: !228, file: !101, line: 441, baseType: !13, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "last_match", scope: !228, file: !101, line: 443, baseType: !13, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "last_cond", scope: !228, file: !101, line: 444, baseType: !13, size: 32, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !100, file: !101, line: 462, baseType: !235, size: 192, offset: 256)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "out", file: !101, line: 458, size: 192, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !235, file: !101, line: 459, baseType: !9, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "blen", scope: !235, file: !101, line: 460, baseType: !6, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pbuf", scope: !235, file: !101, line: 461, baseType: !9, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !100, file: !101, line: 463, baseType: !136, size: 32, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "eoffset", scope: !100, file: !101, line: 465, baseType: !136, size: 32, offset: 480)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !100, file: !101, line: 466, baseType: !13, size: 32, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !101, line: 467, baseType: !13, size: 32, offset: 544)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !100, file: !101, line: 468, baseType: !13, size: 32, offset: 576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !100, file: !101, line: 470, baseType: !24, size: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !100, file: !101, line: 471, baseType: !6, size: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !100, file: !101, line: 472, baseType: !248, size: 32, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !249, line: 50, baseType: !250)
!249 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !116, line: 150, baseType: !18)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !100, file: !101, line: 480, baseType: !252, size: 256, offset: 832)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !101, line: 475, size: 256, elements: !253)
!253 = !{!254, !255, !256, !257}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !252, file: !101, line: 476, baseType: !24, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "s_len", scope: !252, file: !101, line: 477, baseType: !6, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !252, file: !101, line: 478, baseType: !6, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rm_len", scope: !252, file: !101, line: 479, baseType: !6, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ms_value", scope: !100, file: !101, line: 484, baseType: !150, size: 1024, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "indir_max", scope: !100, file: !101, line: 485, baseType: !113, size: 16, offset: 2112)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name_max", scope: !100, file: !101, line: 486, baseType: !113, size: 16, offset: 2128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "elf_shnum_max", scope: !100, file: !101, line: 487, baseType: !113, size: 16, offset: 2144)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "elf_phnum_max", scope: !100, file: !101, line: 488, baseType: !113, size: 16, offset: 2160)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "elf_notes_max", scope: !100, file: !101, line: 489, baseType: !113, size: 16, offset: 2176)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "regex_max", scope: !100, file: !101, line: 490, baseType: !113, size: 16, offset: 2192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_max", scope: !100, file: !101, line: 491, baseType: !6, size: 64, offset: 2240)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "encoding_max", scope: !100, file: !101, line: 492, baseType: !6, size: 64, offset: 2304)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "elf_shsize_max", scope: !100, file: !101, line: 493, baseType: !6, size: 64, offset: 2368)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "c_lc_ctype", scope: !100, file: !101, line: 507, baseType: !269, size: 64, offset: 2432)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !270, line: 24, baseType: !271)
!270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !272, line: 41, baseType: !273)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !272, line: 27, size: 1856, elements: !275)
!275 = !{!276, !280, !283, !286, !287}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !274, file: !272, line: 30, baseType: !277, size: 832)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 832, elements: !52)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !272, line: 30, flags: DIFlagFwdDecl)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !274, file: !272, line: 33, baseType: !281, size: 64, offset: 832)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !274, file: !272, line: 34, baseType: !284, size: 64, offset: 896)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !274, file: !272, line: 35, baseType: !284, size: 64, offset: 960)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !274, file: !272, line: 38, baseType: !288, size: 832, offset: 1024)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 832, elements: !52)
!289 = !DILocalVariable(name: "longindex", scope: !82, file: !3, line: 204, type: !13)
!290 = !DILocalVariable(name: "magicfile", scope: !82, file: !3, line: 205, type: !24)
!291 = !DILocalVariable(name: "progname", scope: !82, file: !3, line: 206, type: !9)
!292 = !DILabel(scope: !82, name: "out", file: !3, line: 445)
!293 = !DILocation(line: 195, scope: !82)
!294 = !{}
!295 = !DILocation(line: 0, scope: !82)
!296 = !DILocation(line: 204, column: 2, scope: !82)
!297 = !DILocation(line: 209, column: 8, scope: !82)
!298 = !DILocation(line: 216, column: 26, scope: !299)
!299 = distinct !DILexicalBlock(scope: !82, file: !3, line: 216, column: 6)
!300 = !{!301, !301, i64 0}
!301 = !{!"any pointer", !302, i64 0}
!302 = !{!"omnipotent char", !303, i64 0}
!303 = !{!"Simple C/C++ TBAA"}
!304 = !DILocation(line: 216, column: 18, scope: !299)
!305 = !DILocation(line: 216, column: 41, scope: !299)
!306 = !DILocation(line: 216, column: 6, scope: !82)
!307 = !DILocalVariable(name: "progname", arg: 1, scope: !308, file: !3, line: 789, type: !24)
!308 = distinct !DISubprogram(name: "file_setprogname", scope: !3, file: !3, line: 789, type: !309, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !24}
!311 = !{!307}
!312 = !DILocation(line: 0, scope: !308, inlinedAt: !313)
!313 = distinct !DILocation(line: 221, column: 2, scope: !82)
!314 = !DILocation(line: 791, column: 16, scope: !308, inlinedAt: !313)
!315 = !DILocation(line: 225, column: 12, scope: !82)
!316 = !DILocation(line: 225, column: 38, scope: !82)
!317 = !DILocation(line: 225, column: 10, scope: !82)
!318 = !{!319, !319, i64 0}
!319 = !{!"int", !302, i64 0}
!320 = !DILocation(line: 226, column: 12, scope: !82)
!321 = !DILocation(line: 228, column: 2, scope: !82)
!322 = !DILocation(line: 198, column: 6, scope: !82)
!323 = !DILocation(line: 198, column: 18, scope: !82)
!324 = !DILocation(line: 226, column: 8, scope: !82)
!325 = !DILocation(line: 199, column: 17, scope: !82)
!326 = !DILocation(line: 203, column: 20, scope: !82)
!327 = !DILocation(line: 205, column: 14, scope: !82)
!328 = !DILocation(line: 228, column: 14, scope: !82)
!329 = !DILocation(line: 772, column: 7, scope: !330, inlinedAt: !333)
!330 = distinct !DISubprogram(name: "help", scope: !3, file: !3, line: 767, type: !331, scopeLine: 768, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!331 = !DISubroutineType(types: !332)
!332 = !{null}
!333 = distinct !DILocation(line: 232, column: 4, scope: !334)
!334 = distinct !DILexicalBlock(scope: !82, file: !3, line: 230, column: 14)
!335 = !DILocation(line: 769, column: 8, scope: !330, inlinedAt: !333)
!336 = !DILocation(line: 18, column: 1, scope: !337, inlinedAt: !333)
!337 = !DILexicalBlockFile(scope: !330, file: !338, discriminator: 0)
!338 = !DIFile(filename: "./file_opts.h", directory: "/home/kansx/Fuzz/APISpecFuzz/Library/libmagic/file-5.45/src", checksumkind: CSK_MD5, checksum: "f15c0ef0e592f6d0cafef25248b96502")
!339 = !DILocation(line: 20, column: 1, scope: !337, inlinedAt: !333)
!340 = !DILocation(line: 22, column: 1, scope: !337, inlinedAt: !333)
!341 = !DILocation(line: 25, column: 1, scope: !337, inlinedAt: !333)
!342 = !DILocation(line: 27, column: 1, scope: !337, inlinedAt: !333)
!343 = !DILocation(line: 29, column: 1, scope: !337, inlinedAt: !333)
!344 = !DILocation(line: 31, column: 1, scope: !337, inlinedAt: !333)
!345 = !DILocation(line: 35, column: 1, scope: !337, inlinedAt: !333)
!346 = !DILocation(line: 39, column: 1, scope: !337, inlinedAt: !333)
!347 = !DILocation(line: 41, column: 1, scope: !337, inlinedAt: !333)
!348 = !DILocation(line: 43, column: 1, scope: !337, inlinedAt: !333)
!349 = !DILocation(line: 45, column: 1, scope: !337, inlinedAt: !333)
!350 = !DILocation(line: 48, column: 1, scope: !337, inlinedAt: !333)
!351 = !DILocation(line: 50, column: 1, scope: !337, inlinedAt: !333)
!352 = !DILocation(line: 52, column: 1, scope: !337, inlinedAt: !333)
!353 = !DILocation(line: 54, column: 1, scope: !337, inlinedAt: !333)
!354 = !DILocation(line: 56, column: 1, scope: !337, inlinedAt: !333)
!355 = !DILocation(line: 58, column: 1, scope: !337, inlinedAt: !333)
!356 = !DILocation(line: 61, column: 1, scope: !337, inlinedAt: !333)
!357 = !DILocation(line: 63, column: 1, scope: !337, inlinedAt: !333)
!358 = !DILocation(line: 66, column: 1, scope: !337, inlinedAt: !333)
!359 = !DILocation(line: 68, column: 1, scope: !337, inlinedAt: !333)
!360 = !DILocation(line: 70, column: 1, scope: !337, inlinedAt: !333)
!361 = !DILocation(line: 73, column: 1, scope: !337, inlinedAt: !333)
!362 = !DILocation(line: 76, column: 1, scope: !337, inlinedAt: !333)
!363 = !DILocation(line: 79, column: 1, scope: !337, inlinedAt: !333)
!364 = !DILocation(line: 81, column: 1, scope: !337, inlinedAt: !333)
!365 = !DILocation(line: 84, column: 1, scope: !337, inlinedAt: !333)
!366 = !DILocation(line: 86, column: 1, scope: !337, inlinedAt: !333)
!367 = !DILocation(line: 88, column: 1, scope: !337, inlinedAt: !333)
!368 = !DILocation(line: 782, column: 8, scope: !369, inlinedAt: !333)
!369 = !DILexicalBlockFile(scope: !330, file: !3, discriminator: 0)
!370 = !DILocation(line: 783, column: 2, scope: !369, inlinedAt: !333)
!371 = !DILocation(line: 235, column: 10, scope: !334)
!372 = !DILocation(line: 236, column: 4, scope: !334)
!373 = !DILocation(line: 238, column: 10, scope: !334)
!374 = !DILocation(line: 239, column: 4, scope: !334)
!375 = !DILocation(line: 241, column: 10, scope: !334)
!376 = !DILocation(line: 242, column: 4, scope: !334)
!377 = !DILocation(line: 244, column: 10, scope: !334)
!378 = !DILocation(line: 245, column: 4, scope: !334)
!379 = !DILocation(line: 247, column: 10, scope: !334)
!380 = !DILocation(line: 248, column: 4, scope: !334)
!381 = !DILocation(line: 250, column: 9, scope: !334)
!382 = !DILocation(line: 251, column: 4, scope: !334)
!383 = !DILocation(line: 254, column: 4, scope: !334)
!384 = !DILocation(line: 257, column: 4, scope: !334)
!385 = !DILocation(line: 259, column: 10, scope: !334)
!386 = !DILocation(line: 260, column: 4, scope: !334)
!387 = !DILocation(line: 262, column: 10, scope: !334)
!388 = !DILocation(line: 263, column: 4, scope: !334)
!389 = !DILocation(line: 267, column: 9, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 267, column: 9)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 266, column: 4)
!392 = distinct !DILexicalBlock(scope: !334, file: !3, line: 266, column: 4)
!393 = !DILocation(line: 267, column: 36, scope: !390)
!394 = !DILocation(line: 267, column: 9, scope: !391)
!395 = !DILocation(line: 271, column: 11, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !3, line: 271, column: 9)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 270, column: 31)
!398 = distinct !DILexicalBlock(scope: !334, file: !3, line: 270, column: 8)
!399 = !DILocation(line: 271, column: 9, scope: !397)
!400 = distinct !{!400, !321, !401, !402}
!401 = !DILocation(line: 357, column: 3, scope: !82)
!402 = !{!"llvm.loop.mustprogress"}
!403 = !DILocation(line: 274, column: 20, scope: !398)
!404 = !{!405, !319, i64 8}
!405 = !{!"", !301, i64 0, !319, i64 8}
!406 = !DILocation(line: 274, column: 11, scope: !398)
!407 = !DILocation(line: 278, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !334, file: !3, line: 278, column: 7)
!409 = !DILocation(line: 278, column: 7, scope: !334)
!410 = !DILocation(line: 797, column: 9, scope: !411, inlinedAt: !414)
!411 = distinct !DISubprogram(name: "file_getprogname", scope: !3, file: !3, line: 795, type: !412, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!412 = !DISubroutineType(types: !413)
!413 = !{!24}
!414 = distinct !DILocation(line: 703, column: 19, scope: !415, inlinedAt: !418)
!415 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 701, type: !331, scopeLine: 702, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!416 = !{!417}
!417 = !DILocalVariable(name: "pn", scope: !415, file: !3, line: 703, type: !24)
!418 = distinct !DILocation(line: 279, column: 5, scope: !408)
!419 = !DILocation(line: 0, scope: !415, inlinedAt: !418)
!420 = !DILocation(line: 704, column: 16, scope: !415, inlinedAt: !418)
!421 = !DILocation(line: 704, column: 8, scope: !415, inlinedAt: !418)
!422 = !DILocation(line: 705, column: 2, scope: !415, inlinedAt: !418)
!423 = !DILocation(line: 280, column: 14, scope: !424)
!424 = distinct !DILexicalBlock(scope: !334, file: !3, line: 280, column: 8)
!425 = !DILocation(line: 280, column: 8, scope: !334)
!426 = !DILocation(line: 281, column: 18, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !3, line: 281, column: 9)
!428 = !DILocation(line: 281, column: 42, scope: !427)
!429 = !DILocation(line: 281, column: 9, scope: !424)
!430 = !DILocation(line: 283, column: 4, scope: !334)
!431 = !DILocation(line: 284, column: 23, scope: !334)
!432 = !DILocalVariable(name: "ms", arg: 1, scope: !433, file: !3, line: 512, type: !99)
!433 = distinct !DISubprogram(name: "unwrap", scope: !3, file: !3, line: 512, type: !434, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!13, !99, !24}
!436 = !{!432, !437, !438, !493, !497, !498, !499, !500, !501, !502, !503, !504, !505}
!437 = !DILocalVariable(name: "fn", arg: 2, scope: !433, file: !3, line: 512, type: !24)
!438 = !DILocalVariable(name: "f", scope: !433, file: !3, line: 514, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !441, line: 7, baseType: !442)
!441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !443, line: 49, size: 1728, elements: !444)
!443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !460, !462, !463, !464, !467, !468, !470, !474, !477, !479, !482, !485, !486, !487, !488, !489}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !442, file: !443, line: 51, baseType: !13, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !442, file: !443, line: 54, baseType: !9, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !442, file: !443, line: 55, baseType: !9, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !442, file: !443, line: 56, baseType: !9, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !442, file: !443, line: 57, baseType: !9, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !442, file: !443, line: 58, baseType: !9, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !442, file: !443, line: 59, baseType: !9, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !442, file: !443, line: 60, baseType: !9, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !442, file: !443, line: 61, baseType: !9, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !442, file: !443, line: 64, baseType: !9, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !442, file: !443, line: 65, baseType: !9, size: 64, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !442, file: !443, line: 66, baseType: !9, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !442, file: !443, line: 68, baseType: !458, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !443, line: 36, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !442, file: !443, line: 70, baseType: !461, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !442, file: !443, line: 72, baseType: !13, size: 32, offset: 896)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !442, file: !443, line: 73, baseType: !13, size: 32, offset: 928)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !442, file: !443, line: 74, baseType: !465, size: 64, offset: 960)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 152, baseType: !466)
!466 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !442, file: !443, line: 77, baseType: !117, size: 16, offset: 1024)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !442, file: !443, line: 78, baseType: !469, size: 8, offset: 1040)
!469 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !442, file: !443, line: 79, baseType: !471, size: 8, offset: 1048)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 1)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !442, file: !443, line: 81, baseType: !475, size: 64, offset: 1088)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !443, line: 43, baseType: null)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !442, file: !443, line: 89, baseType: !478, size: 64, offset: 1152)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !116, line: 153, baseType: !466)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !442, file: !443, line: 91, baseType: !480, size: 64, offset: 1216)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !443, line: 37, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !442, file: !443, line: 92, baseType: !483, size: 64, offset: 1280)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !443, line: 38, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !442, file: !443, line: 93, baseType: !461, size: 64, offset: 1344)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !442, file: !443, line: 94, baseType: !5, size: 64, offset: 1408)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !442, file: !443, line: 95, baseType: !6, size: 64, offset: 1472)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !442, file: !443, line: 96, baseType: !13, size: 32, offset: 1536)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !442, file: !443, line: 98, baseType: !490, size: 160, offset: 1568)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 20)
!493 = !DILocalVariable(name: "len", scope: !433, file: !3, line: 515, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !495, line: 77, baseType: !496)
!495 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !116, line: 194, baseType: !466)
!497 = !DILocalVariable(name: "line", scope: !433, file: !3, line: 516, type: !9)
!498 = !DILocalVariable(name: "llen", scope: !433, file: !3, line: 517, type: !6)
!499 = !DILocalVariable(name: "wid", scope: !433, file: !3, line: 518, type: !13)
!500 = !DILocalVariable(name: "cwid", scope: !433, file: !3, line: 518, type: !13)
!501 = !DILocalVariable(name: "e", scope: !433, file: !3, line: 519, type: !13)
!502 = !DILocalVariable(name: "fi", scope: !433, file: !3, line: 520, type: !6)
!503 = !DILocalVariable(name: "fimax", scope: !433, file: !3, line: 520, type: !6)
!504 = !DILocalVariable(name: "flist", scope: !433, file: !3, line: 521, type: !14)
!505 = !DILocalVariable(name: "nf", scope: !506, file: !3, line: 547, type: !14)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 545, column: 20)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 545, column: 7)
!508 = distinct !DILexicalBlock(scope: !433, file: !3, line: 532, column: 47)
!509 = !DILocation(line: 0, scope: !433, inlinedAt: !510)
!510 = distinct !DILocation(line: 284, column: 9, scope: !334)
!511 = !DILocation(line: 516, column: 2, scope: !433, inlinedAt: !510)
!512 = !DILocation(line: 516, column: 8, scope: !433, inlinedAt: !510)
!513 = !DILocation(line: 517, column: 2, scope: !433, inlinedAt: !510)
!514 = !DILocation(line: 517, column: 9, scope: !433, inlinedAt: !510)
!515 = !{!516, !516, i64 0}
!516 = !{!"long", !302, i64 0}
!517 = !DILocation(line: 523, column: 6, scope: !518, inlinedAt: !510)
!518 = distinct !DILexicalBlock(scope: !433, file: !3, line: 523, column: 6)
!519 = !DILocation(line: 523, column: 22, scope: !518, inlinedAt: !510)
!520 = !DILocation(line: 523, column: 6, scope: !433, inlinedAt: !510)
!521 = !DILocation(line: 524, column: 7, scope: !518, inlinedAt: !510)
!522 = !DILocation(line: 524, column: 3, scope: !518, inlinedAt: !510)
!523 = !DILocation(line: 526, column: 12, scope: !524, inlinedAt: !510)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 526, column: 7)
!525 = distinct !DILexicalBlock(scope: !518, file: !3, line: 525, column: 7)
!526 = !DILocation(line: 526, column: 28, scope: !524, inlinedAt: !510)
!527 = !DILocation(line: 526, column: 7, scope: !525, inlinedAt: !510)
!528 = !DILocation(line: 527, column: 4, scope: !529, inlinedAt: !510)
!529 = distinct !DILexicalBlock(scope: !524, file: !3, line: 526, column: 37)
!530 = !DILocation(line: 528, column: 4, scope: !529, inlinedAt: !510)
!531 = !DILocation(line: 0, scope: !518, inlinedAt: !510)
!532 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !533, file: !534, line: 118, type: !14)
!533 = distinct !DISubprogram(name: "getline", scope: !534, file: !534, line: 118, type: !535, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!534 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!535 = !DISubroutineType(types: !536)
!536 = !{!496, !14, !537, !439}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!538 = !{!532, !539, !540}
!539 = !DILocalVariable(name: "__n", arg: 2, scope: !533, file: !534, line: 118, type: !537)
!540 = !DILocalVariable(name: "__stream", arg: 3, scope: !533, file: !534, line: 118, type: !439)
!541 = !DILocation(line: 0, scope: !533, inlinedAt: !542)
!542 = distinct !DILocation(line: 532, column: 16, scope: !433, inlinedAt: !510)
!543 = !DILocation(line: 120, column: 10, scope: !533, inlinedAt: !542)
!544 = !DILocation(line: 532, column: 42, scope: !433, inlinedAt: !510)
!545 = !DILocation(line: 532, column: 2, scope: !433, inlinedAt: !510)
!546 = !DILocation(line: 533, column: 7, scope: !547, inlinedAt: !510)
!547 = distinct !DILexicalBlock(scope: !508, file: !3, line: 533, column: 7)
!548 = !DILocation(line: 533, column: 16, scope: !547, inlinedAt: !510)
!549 = !{!302, !302, i64 0}
!550 = !DILocation(line: 533, column: 21, scope: !547, inlinedAt: !510)
!551 = !DILocation(line: 533, column: 7, scope: !508, inlinedAt: !510)
!552 = !DILocation(line: 534, column: 18, scope: !547, inlinedAt: !510)
!553 = !DILocation(line: 535, column: 28, scope: !508, inlinedAt: !510)
!554 = !DILocation(line: 534, column: 4, scope: !547, inlinedAt: !510)
!555 = !DILocation(line: 535, column: 10, scope: !508, inlinedAt: !510)
!556 = !DILocation(line: 536, column: 7, scope: !557, inlinedAt: !510)
!557 = distinct !DILexicalBlock(scope: !508, file: !3, line: 536, column: 7)
!558 = !DILocation(line: 536, column: 7, scope: !508, inlinedAt: !510)
!559 = !DILocation(line: 537, column: 21, scope: !560, inlinedAt: !510)
!560 = distinct !DILexicalBlock(scope: !557, file: !3, line: 536, column: 17)
!561 = !DILocation(line: 537, column: 9, scope: !560, inlinedAt: !510)
!562 = !DILocation(line: 537, column: 6, scope: !560, inlinedAt: !510)
!563 = !DILocation(line: 538, column: 9, scope: !560, inlinedAt: !510)
!564 = !DILocation(line: 538, column: 4, scope: !560, inlinedAt: !510)
!565 = !DILocation(line: 539, column: 9, scope: !560, inlinedAt: !510)
!566 = !DILocation(line: 540, column: 9, scope: !560, inlinedAt: !510)
!567 = distinct !{!567, !545, !568, !402}
!568 = !DILocation(line: 558, column: 2, scope: !433, inlinedAt: !510)
!569 = !DILocation(line: 543, column: 12, scope: !570, inlinedAt: !510)
!570 = distinct !DILexicalBlock(scope: !508, file: !3, line: 543, column: 7)
!571 = !DILocation(line: 543, column: 7, scope: !508, inlinedAt: !510)
!572 = !DILocation(line: 545, column: 10, scope: !507, inlinedAt: !510)
!573 = !DILocation(line: 545, column: 7, scope: !508, inlinedAt: !510)
!574 = !DILocation(line: 546, column: 10, scope: !506, inlinedAt: !510)
!575 = !DILocation(line: 547, column: 16, scope: !506, inlinedAt: !510)
!576 = !DILocation(line: 0, scope: !506, inlinedAt: !510)
!577 = !DILocation(line: 549, column: 11, scope: !578, inlinedAt: !510)
!578 = distinct !DILexicalBlock(scope: !506, file: !3, line: 549, column: 8)
!579 = !DILocation(line: 549, column: 8, scope: !506, inlinedAt: !510)
!580 = !DILocation(line: 550, column: 5, scope: !581, inlinedAt: !510)
!581 = distinct !DILexicalBlock(scope: !578, file: !3, line: 549, column: 20)
!582 = !DILocation(line: 554, column: 3, scope: !506, inlinedAt: !510)
!583 = !DILocation(line: 555, column: 17, scope: !508, inlinedAt: !510)
!584 = !DILocation(line: 555, column: 11, scope: !508, inlinedAt: !510)
!585 = !DILocation(line: 555, column: 3, scope: !508, inlinedAt: !510)
!586 = !DILocation(line: 555, column: 15, scope: !508, inlinedAt: !510)
!587 = !DILocation(line: 556, column: 8, scope: !508, inlinedAt: !510)
!588 = !DILocation(line: 557, column: 8, scope: !508, inlinedAt: !510)
!589 = distinct !{!589, !545, !568, !402}
!590 = !DILocation(line: 560, column: 7, scope: !591, inlinedAt: !510)
!591 = distinct !DILexicalBlock(scope: !433, file: !3, line: 560, column: 6)
!592 = !DILocation(line: 560, column: 6, scope: !433, inlinedAt: !510)
!593 = !DILocation(line: 563, column: 21, scope: !594, inlinedAt: !510)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 562, column: 34)
!595 = distinct !DILexicalBlock(scope: !596, file: !3, line: 562, column: 3)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 562, column: 3)
!597 = distinct !DILexicalBlock(scope: !591, file: !3, line: 560, column: 17)
!598 = !DILocation(line: 563, column: 9, scope: !594, inlinedAt: !510)
!599 = !DILocation(line: 563, column: 6, scope: !594, inlinedAt: !510)
!600 = !DILocation(line: 564, column: 9, scope: !594, inlinedAt: !510)
!601 = !DILocation(line: 564, column: 4, scope: !594, inlinedAt: !510)
!602 = !DILocation(line: 562, column: 30, scope: !595, inlinedAt: !510)
!603 = !DILocation(line: 562, column: 19, scope: !595, inlinedAt: !510)
!604 = !DILocation(line: 562, column: 3, scope: !596, inlinedAt: !510)
!605 = distinct !{!605, !604, !606, !402}
!606 = !DILocation(line: 565, column: 3, scope: !596, inlinedAt: !510)
!607 = !DILocation(line: 519, column: 6, scope: !433, inlinedAt: !510)
!608 = !DILocation(line: 567, column: 7, scope: !433, inlinedAt: !510)
!609 = !DILocation(line: 567, column: 2, scope: !433, inlinedAt: !510)
!610 = !DILocation(line: 569, column: 11, scope: !611, inlinedAt: !510)
!611 = distinct !DILexicalBlock(scope: !433, file: !3, line: 569, column: 6)
!612 = !DILocation(line: 569, column: 8, scope: !611, inlinedAt: !510)
!613 = !DILocation(line: 569, column: 6, scope: !433, inlinedAt: !510)
!614 = !DILocation(line: 570, column: 9, scope: !611, inlinedAt: !510)
!615 = !DILocation(line: 570, column: 3, scope: !611, inlinedAt: !510)
!616 = !DILocation(line: 572, column: 1, scope: !433, inlinedAt: !510)
!617 = !DILocation(line: 284, column: 6, scope: !334)
!618 = !DILocation(line: 285, column: 4, scope: !334)
!619 = !DILocation(line: 286, column: 4, scope: !334)
!620 = !DILocation(line: 288, column: 16, scope: !334)
!621 = !DILocation(line: 288, column: 14, scope: !334)
!622 = !DILocation(line: 289, column: 4, scope: !334)
!623 = !DILocation(line: 291, column: 10, scope: !334)
!624 = !DILocation(line: 292, column: 4, scope: !334)
!625 = !DILocation(line: 294, column: 10, scope: !334)
!626 = !DILocation(line: 295, column: 4, scope: !334)
!627 = !DILocation(line: 298, column: 4, scope: !334)
!628 = !DILocation(line: 300, column: 16, scope: !334)
!629 = !DILocation(line: 301, column: 4, scope: !334)
!630 = !DILocation(line: 303, column: 4, scope: !334)
!631 = !DILocation(line: 304, column: 4, scope: !334)
!632 = !DILocation(line: 306, column: 4, scope: !334)
!633 = !DILocation(line: 307, column: 4, scope: !334)
!634 = !DILocation(line: 310, column: 10, scope: !334)
!635 = !DILocation(line: 311, column: 4, scope: !334)
!636 = !DILocation(line: 314, column: 13, scope: !334)
!637 = !DILocalVariable(name: "p", arg: 1, scope: !638, file: !3, line: 468, type: !24)
!638 = distinct !DISubprogram(name: "setparam", scope: !3, file: !3, line: 468, type: !309, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!639 = !{!637, !640, !641, !642}
!640 = !DILocalVariable(name: "i", scope: !638, file: !3, line: 470, type: !6)
!641 = !DILocalVariable(name: "s", scope: !638, file: !3, line: 471, type: !9)
!642 = !DILabel(scope: !638, name: "badparm", file: !3, line: 483)
!643 = !DILocation(line: 0, scope: !638, inlinedAt: !644)
!644 = distinct !DILocation(line: 314, column: 4, scope: !334)
!645 = !DILocation(line: 473, column: 11, scope: !646, inlinedAt: !644)
!646 = distinct !DILexicalBlock(scope: !638, file: !3, line: 473, column: 6)
!647 = !DILocation(line: 473, column: 42, scope: !646, inlinedAt: !644)
!648 = !DILocation(line: 473, column: 6, scope: !638, inlinedAt: !644)
!649 = !DILocation(line: 477, column: 24, scope: !650, inlinedAt: !644)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 477, column: 7)
!651 = distinct !DILexicalBlock(scope: !652, file: !3, line: 476, column: 41)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 476, column: 2)
!653 = distinct !DILexicalBlock(scope: !638, file: !3, line: 476, column: 2)
!654 = !{!655, !301, i64 0}
!655 = !{!"", !301, i64 0, !516, i64 8, !516, i64 16, !301, i64 24, !319, i64 32, !319, i64 36}
!656 = !DILocation(line: 477, column: 7, scope: !650, inlinedAt: !644)
!657 = !DILocation(line: 477, column: 37, scope: !650, inlinedAt: !644)
!658 = !DILocation(line: 477, column: 7, scope: !651, inlinedAt: !644)
!659 = !DILocation(line: 483, column: 1, scope: !638, inlinedAt: !644)
!660 = !DILocation(line: 484, column: 2, scope: !638, inlinedAt: !644)
!661 = !DILocation(line: 479, column: 24, scope: !651, inlinedAt: !644)
!662 = !DILocalVariable(name: "__nptr", arg: 1, scope: !663, file: !664, line: 362, type: !24)
!663 = distinct !DISubprogram(name: "atoi", scope: !664, file: !664, line: 362, type: !665, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !667)
!664 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!665 = !DISubroutineType(types: !666)
!666 = !{!13, !24}
!667 = !{!662}
!668 = !DILocation(line: 0, scope: !663, inlinedAt: !669)
!669 = distinct !DILocation(line: 479, column: 17, scope: !651, inlinedAt: !644)
!670 = !DILocation(line: 364, column: 16, scope: !663, inlinedAt: !669)
!671 = !DILocation(line: 479, column: 17, scope: !651, inlinedAt: !644)
!672 = !DILocation(line: 479, column: 9, scope: !651, inlinedAt: !644)
!673 = !DILocation(line: 479, column: 15, scope: !651, inlinedAt: !644)
!674 = !{!655, !516, i64 8}
!675 = !DILocation(line: 480, column: 9, scope: !651, inlinedAt: !644)
!676 = !DILocation(line: 480, column: 13, scope: !651, inlinedAt: !644)
!677 = !{!655, !319, i64 36}
!678 = !DILocation(line: 315, column: 4, scope: !334)
!679 = !DILocation(line: 317, column: 10, scope: !334)
!680 = !DILocation(line: 318, column: 4, scope: !334)
!681 = !DILocation(line: 320, column: 10, scope: !334)
!682 = !DILocation(line: 321, column: 4, scope: !334)
!683 = !DILocation(line: 328, column: 18, scope: !684)
!684 = distinct !DILexicalBlock(scope: !334, file: !3, line: 328, column: 8)
!685 = !DILocation(line: 328, column: 8, scope: !334)
!686 = !DILocation(line: 329, column: 17, scope: !684)
!687 = !DILocation(line: 329, column: 5, scope: !684)
!688 = !DILocation(line: 330, column: 18, scope: !334)
!689 = !DILocation(line: 797, column: 9, scope: !411, inlinedAt: !690)
!690 = distinct !DILocation(line: 330, column: 37, scope: !334)
!691 = !DILocation(line: 330, column: 10, scope: !334)
!692 = !DILocation(line: 332, column: 18, scope: !334)
!693 = !DILocation(line: 332, column: 10, scope: !334)
!694 = !DILocation(line: 337, column: 4, scope: !334)
!695 = !DILocation(line: 339, column: 10, scope: !334)
!696 = !DILocation(line: 340, column: 4, scope: !334)
!697 = !DILocation(line: 343, column: 10, scope: !334)
!698 = !DILocation(line: 344, column: 4, scope: !334)
!699 = !DILocation(line: 347, column: 10, scope: !334)
!700 = !DILocation(line: 348, column: 4, scope: !334)
!701 = !DILocation(line: 350, column: 10, scope: !334)
!702 = !DILocation(line: 351, column: 4, scope: !334)
!703 = !DILocation(line: 355, column: 10, scope: !334)
!704 = !DILocation(line: 356, column: 4, scope: !334)
!705 = !DILocation(line: 359, column: 6, scope: !706)
!706 = distinct !DILexicalBlock(scope: !82, file: !3, line: 359, column: 6)
!707 = !DILocation(line: 359, column: 6, scope: !82)
!708 = !DILocation(line: 797, column: 9, scope: !411, inlinedAt: !709)
!709 = distinct !DILocation(line: 703, column: 19, scope: !415, inlinedAt: !710)
!710 = distinct !DILocation(line: 360, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !706, file: !3, line: 359, column: 14)
!712 = !DILocation(line: 0, scope: !415, inlinedAt: !710)
!713 = !DILocation(line: 704, column: 16, scope: !415, inlinedAt: !710)
!714 = !DILocation(line: 704, column: 8, scope: !415, inlinedAt: !710)
!715 = !DILocation(line: 705, column: 2, scope: !415, inlinedAt: !710)
!716 = !DILocation(line: 362, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !82, file: !3, line: 362, column: 6)
!718 = !DILocation(line: 362, column: 6, scope: !82)
!719 = !DILocation(line: 376, column: 23, scope: !720)
!720 = distinct !DILexicalBlock(scope: !82, file: !3, line: 376, column: 6)
!721 = !DILocation(line: 376, column: 20, scope: !720)
!722 = !DILocation(line: 376, column: 6, scope: !82)
!723 = !DILocation(line: 379, column: 22, scope: !720)
!724 = !DILocation(line: 377, column: 3, scope: !720)
!725 = !DILocation(line: 381, column: 2, scope: !82)
!726 = !DILocation(line: 389, column: 27, scope: !727)
!727 = distinct !DILexicalBlock(scope: !82, file: !3, line: 381, column: 17)
!728 = !DILocation(line: 389, column: 11, scope: !727)
!729 = !DILocation(line: 390, column: 13, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !3, line: 390, column: 7)
!731 = !DILocation(line: 390, column: 7, scope: !727)
!732 = !DILocation(line: 391, column: 4, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !3, line: 390, column: 22)
!734 = !DILocation(line: 392, column: 4, scope: !733)
!735 = !DILocation(line: 396, column: 3, scope: !727)
!736 = !DILocation(line: 398, column: 8, scope: !737)
!737 = distinct !DILexicalBlock(scope: !727, file: !3, line: 396, column: 18)
!738 = !DILocation(line: 399, column: 4, scope: !737)
!739 = !DILocation(line: 401, column: 8, scope: !737)
!740 = !DILocation(line: 402, column: 4, scope: !737)
!741 = !DILocation(line: 404, column: 8, scope: !737)
!742 = !DILocation(line: 405, column: 4, scope: !737)
!743 = !DILocation(line: 407, column: 4, scope: !737)
!744 = !DILocation(line: 0, scope: !737)
!745 = !DILocation(line: 409, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !727, file: !3, line: 409, column: 7)
!747 = !DILocation(line: 409, column: 7, scope: !727)
!748 = !DILocation(line: 410, column: 21, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !3, line: 409, column: 16)
!750 = !DILocation(line: 410, column: 4, scope: !749)
!751 = !DILocation(line: 412, column: 4, scope: !749)
!752 = !DILocation(line: 416, column: 13, scope: !753)
!753 = distinct !DILexicalBlock(scope: !727, file: !3, line: 416, column: 7)
!754 = !DILocation(line: 416, column: 7, scope: !727)
!755 = !DILocation(line: 417, column: 17, scope: !756)
!756 = distinct !DILexicalBlock(scope: !753, file: !3, line: 417, column: 8)
!757 = !DILocation(line: 417, column: 41, scope: !756)
!758 = !DILocation(line: 417, column: 8, scope: !753)
!759 = !DILocation(line: 419, column: 3, scope: !727)
!760 = !DILocation(line: 422, column: 6, scope: !761)
!761 = distinct !DILexicalBlock(scope: !82, file: !3, line: 422, column: 6)
!762 = !DILocation(line: 422, column: 13, scope: !761)
!763 = !DILocation(line: 422, column: 6, scope: !82)
!764 = !DILocation(line: 423, column: 8, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 423, column: 7)
!766 = distinct !DILexicalBlock(scope: !761, file: !3, line: 422, column: 22)
!767 = !DILocation(line: 423, column: 7, scope: !766)
!768 = !DILocation(line: 424, column: 4, scope: !765)
!769 = !DILocation(line: 428, column: 44, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 428, column: 2)
!771 = distinct !DILexicalBlock(scope: !82, file: !3, line: 428, column: 2)
!772 = !DILocation(line: 428, column: 2, scope: !771)
!773 = !DILocation(line: 428, column: 20, scope: !771)
!774 = !DILocation(line: 430, column: 29, scope: !775)
!775 = distinct !DILexicalBlock(scope: !770, file: !3, line: 429, column: 11)
!776 = !DILocation(line: 430, column: 8, scope: !775)
!777 = !DILocation(line: 431, column: 10, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !3, line: 431, column: 7)
!779 = !DILocation(line: 431, column: 7, scope: !775)
!780 = !DILocation(line: 429, column: 7, scope: !770)
!781 = distinct !{!781, !772, !782, !402}
!782 = !DILocation(line: 433, column: 2, scope: !771)
!783 = !DILocation(line: 439, column: 6, scope: !784)
!784 = distinct !DILexicalBlock(scope: !82, file: !3, line: 439, column: 6)
!785 = !DILocation(line: 439, column: 12, scope: !784)
!786 = !DILocation(line: 439, column: 6, scope: !82)
!787 = !DILocation(line: 440, column: 26, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 439, column: 18)
!789 = !DILocation(line: 440, column: 18, scope: !788)
!790 = !DILocation(line: 440, column: 9, scope: !788)
!791 = !DILocation(line: 441, column: 2, scope: !788)
!792 = !DILocation(line: 442, column: 16, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 442, column: 2)
!794 = distinct !DILexicalBlock(scope: !82, file: !3, line: 442, column: 2)
!795 = !DILocation(line: 442, column: 2, scope: !794)
!796 = !DILocation(line: 443, column: 23, scope: !793)
!797 = !DILocation(line: 443, column: 8, scope: !793)
!798 = !DILocation(line: 443, column: 5, scope: !793)
!799 = !DILocation(line: 442, column: 30, scope: !793)
!800 = distinct !{!800, !795, !801, !402}
!801 = !DILocation(line: 443, column: 40, scope: !794)
!802 = !DILocation(line: 0, scope: !727)
!803 = !DILocation(line: 445, column: 1, scope: !82)
!804 = !DILocation(line: 446, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !82, file: !3, line: 446, column: 6)
!806 = !DILocation(line: 446, column: 6, scope: !82)
!807 = !DILocation(line: 447, column: 15, scope: !805)
!808 = !DILocation(line: 447, column: 8, scope: !805)
!809 = !DILocation(line: 447, column: 23, scope: !805)
!810 = !DILocation(line: 447, column: 5, scope: !805)
!811 = !DILocation(line: 447, column: 3, scope: !805)
!812 = !DILocation(line: 449, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !82, file: !3, line: 449, column: 6)
!814 = !DILocation(line: 449, column: 6, scope: !82)
!815 = !DILocation(line: 450, column: 3, scope: !813)
!816 = !DILocation(line: 452, column: 1, scope: !82)
!817 = !DISubprogram(name: "setlocale", scope: !818, file: !818, line: 122, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!818 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!819 = !DISubroutineType(types: !820)
!820 = !{!9, !13, !24}
!821 = !DILocation(line: 790, scope: !308)
!822 = !DILocation(line: 0, scope: !308)
!823 = !DILocation(line: 791, column: 16, scope: !308)
!824 = !DILocation(line: 792, column: 1, scope: !308)
!825 = !DISubprogram(name: "getenv", scope: !664, file: !664, line: 641, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!826 = !DISubroutineType(types: !827)
!827 = !{!9, !24}
!828 = !DISubprogram(name: "getopt_long", scope: !31, file: !31, line: 66, type: !829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!829 = !DISubroutineType(types: !830)
!830 = !{!13, !13, !831, !24, !833, !36}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!834 = !DILocation(line: 797, column: 9, scope: !411, inlinedAt: !835)
!835 = distinct !DILocation(line: 703, column: 19, scope: !415)
!836 = !DILocation(line: 0, scope: !415)
!837 = !DILocation(line: 704, column: 16, scope: !415)
!838 = !DILocation(line: 704, column: 8, scope: !415)
!839 = !DILocation(line: 705, column: 2, scope: !415)
!840 = distinct !DISubprogram(name: "load", scope: !3, file: !3, line: 489, type: !841, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!99, !24, !13}
!843 = !{!844, !845, !846, !847}
!844 = !DILocalVariable(name: "magicfile", arg: 1, scope: !840, file: !3, line: 489, type: !24)
!845 = !DILocalVariable(name: "flags", arg: 2, scope: !840, file: !3, line: 489, type: !13)
!846 = !DILocalVariable(name: "magic", scope: !840, file: !3, line: 491, type: !99)
!847 = !DILocalVariable(name: "e", scope: !840, file: !3, line: 492, type: !24)
!848 = !DILocation(line: 490, scope: !840)
!849 = !DILocation(line: 0, scope: !840)
!850 = !DILocation(line: 491, column: 28, scope: !840)
!851 = !DILocation(line: 494, column: 12, scope: !852)
!852 = distinct !DILexicalBlock(scope: !840, file: !3, line: 494, column: 6)
!853 = !DILocation(line: 494, column: 6, scope: !840)
!854 = !DILocation(line: 495, column: 3, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !3, line: 494, column: 21)
!856 = !DILocation(line: 496, column: 3, scope: !855)
!857 = !DILocation(line: 498, column: 6, scope: !858)
!858 = distinct !DILexicalBlock(scope: !840, file: !3, line: 498, column: 6)
!859 = !DILocation(line: 498, column: 35, scope: !858)
!860 = !DILocation(line: 498, column: 6, scope: !840)
!861 = !DILocation(line: 499, column: 3, scope: !862)
!862 = distinct !DILexicalBlock(scope: !858, file: !3, line: 498, column: 42)
!863 = !DILocation(line: 500, column: 3, scope: !862)
!864 = !DILocation(line: 501, column: 3, scope: !862)
!865 = !DILocation(line: 503, column: 31, scope: !866)
!866 = distinct !DILexicalBlock(scope: !840, file: !3, line: 503, column: 6)
!867 = !DILocation(line: 503, column: 6, scope: !840)
!868 = !DILocation(line: 504, column: 3, scope: !866)
!869 = !DILocation(line: 506, column: 1, scope: !840)
!870 = distinct !DISubprogram(name: "applyparam", scope: !3, file: !3, line: 455, type: !871, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !875)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !873}
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "magic_t", file: !874, line: 127, baseType: !99)
!874 = !DIFile(filename: "./magic.h", directory: "/home/kansx/Fuzz/APISpecFuzz/Library/libmagic/file-5.45/src", checksumkind: CSK_MD5, checksum: "3e7d21936a6fef94001f63ddebb8a897")
!875 = !{!876, !877}
!876 = !DILocalVariable(name: "magic", arg: 1, scope: !870, file: !3, line: 455, type: !873)
!877 = !DILocalVariable(name: "i", scope: !870, file: !3, line: 457, type: !6)
!878 = !DILocation(line: 456, scope: !870)
!879 = !DILocation(line: 0, scope: !870)
!880 = !DILocation(line: 460, column: 14, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 460, column: 7)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 459, column: 41)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 459, column: 2)
!884 = distinct !DILexicalBlock(scope: !870, file: !3, line: 459, column: 2)
!885 = !DILocation(line: 460, column: 8, scope: !881)
!886 = !DILocation(line: 460, column: 7, scope: !882)
!887 = !DILocation(line: 462, column: 35, scope: !888)
!888 = distinct !DILexicalBlock(scope: !882, file: !3, line: 462, column: 7)
!889 = !{!655, !319, i64 32}
!890 = !DILocation(line: 462, column: 7, scope: !888)
!891 = !DILocation(line: 462, column: 54, scope: !888)
!892 = !DILocation(line: 462, column: 7, scope: !882)
!893 = !DILocation(line: 463, column: 49, scope: !888)
!894 = !DILocation(line: 463, column: 4, scope: !888)
!895 = !DILocation(line: 465, column: 1, scope: !870)
!896 = !DISubprogram(name: "magic_getpath", scope: !874, file: !874, line: 131, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!897 = !DISubroutineType(types: !898)
!898 = !{!24, !24, !13}
!899 = !DILocation(line: 796, scope: !411)
!900 = !DILocation(line: 797, column: 9, scope: !411)
!901 = !DILocation(line: 797, column: 2, scope: !411)
!902 = !DISubprogram(name: "magic_version", scope: !874, file: !874, line: 140, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!903 = !DISubroutineType(types: !904)
!904 = !{!13}
!905 = distinct !DISubprogram(name: "file_warnx", scope: !3, file: !3, line: 848, type: !906, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !24, null}
!908 = !{!909, !910, !923}
!909 = !DILocalVariable(name: "fmt", arg: 1, scope: !905, file: !3, line: 848, type: !24)
!910 = !DILocalVariable(name: "ap", scope: !905, file: !3, line: 850, type: !911)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !495, line: 52, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !913, line: 32, baseType: !914)
!913 = !DIFile(filename: "node_modules/llvm-14.0.0.obj/lib/clang/14.0.0/include/stdarg.h", directory: "/home/kansx", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !915, baseType: !916)
!915 = !DIFile(filename: "file.c", directory: "/home/kansx/Fuzz/APISpecFuzz/Library/libmagic/file-5.45/src")
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, size: 192, elements: !472)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !918)
!918 = !{!919, !920, !921, !922}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !917, file: !915, line: 803, baseType: !18, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !917, file: !915, line: 803, baseType: !18, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !917, file: !915, line: 803, baseType: !5, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !917, file: !915, line: 803, baseType: !5, size: 64, offset: 128)
!923 = !DILocalVariable(name: "se", scope: !905, file: !3, line: 851, type: !13)
!924 = !DILocation(line: 849, scope: !905)
!925 = !DILocation(line: 0, scope: !905)
!926 = !DILocation(line: 850, column: 2, scope: !905)
!927 = !DILocation(line: 850, column: 10, scope: !905)
!928 = !DILocation(line: 851, column: 11, scope: !905)
!929 = !DILocation(line: 853, column: 2, scope: !905)
!930 = !DILocation(line: 854, column: 16, scope: !905)
!931 = !DILocation(line: 854, column: 32, scope: !905)
!932 = !DILocation(line: 854, column: 8, scope: !905)
!933 = !DILocation(line: 855, column: 17, scope: !905)
!934 = !DILocation(line: 855, column: 8, scope: !905)
!935 = !DILocation(line: 856, column: 2, scope: !905)
!936 = !DILocation(line: 857, column: 16, scope: !905)
!937 = !DILocation(line: 857, column: 8, scope: !905)
!938 = !DILocation(line: 858, column: 8, scope: !905)
!939 = !DILocation(line: 859, column: 1, scope: !905)
!940 = !DISubprogram(name: "magic_open", scope: !874, file: !874, line: 128, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!941 = !DISubroutineType(types: !942)
!942 = !{!873, !13}
!943 = distinct !DISubprogram(name: "file_warn", scope: !3, file: !3, line: 831, type: !906, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !944)
!944 = !{!945, !946, !947}
!945 = !DILocalVariable(name: "fmt", arg: 1, scope: !943, file: !3, line: 831, type: !24)
!946 = !DILocalVariable(name: "ap", scope: !943, file: !3, line: 833, type: !911)
!947 = !DILocalVariable(name: "se", scope: !943, file: !3, line: 834, type: !13)
!948 = !DILocation(line: 832, scope: !943)
!949 = !DILocation(line: 0, scope: !943)
!950 = !DILocation(line: 833, column: 2, scope: !943)
!951 = !DILocation(line: 833, column: 10, scope: !943)
!952 = !DILocation(line: 834, column: 11, scope: !943)
!953 = !DILocation(line: 836, column: 2, scope: !943)
!954 = !DILocation(line: 837, column: 16, scope: !943)
!955 = !DILocation(line: 837, column: 32, scope: !943)
!956 = !DILocation(line: 837, column: 8, scope: !943)
!957 = !DILocation(line: 838, column: 17, scope: !943)
!958 = !DILocation(line: 838, column: 8, scope: !943)
!959 = !DILocation(line: 839, column: 2, scope: !943)
!960 = !DILocation(line: 840, column: 6, scope: !961)
!961 = distinct !DILexicalBlock(scope: !943, file: !3, line: 840, column: 6)
!962 = !DILocation(line: 0, scope: !961)
!963 = !DILocation(line: 840, column: 6, scope: !943)
!964 = !DILocation(line: 841, column: 36, scope: !961)
!965 = !DILocation(line: 841, column: 9, scope: !961)
!966 = !DILocation(line: 841, column: 3, scope: !961)
!967 = !DILocation(line: 843, column: 3, scope: !961)
!968 = !DILocation(line: 844, column: 8, scope: !943)
!969 = !DILocation(line: 845, column: 1, scope: !943)
!970 = !DISubprogram(name: "magic_check", scope: !874, file: !874, line: 145, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!971 = !DISubroutineType(types: !972)
!972 = !{!13, !873, !24}
!973 = !DISubprogram(name: "magic_compile", scope: !874, file: !874, line: 144, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!974 = !DISubprogram(name: "magic_list", scope: !874, file: !874, line: 146, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!975 = !DISubprogram(name: "magic_error", scope: !874, file: !874, line: 136, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!976 = !DISubroutineType(types: !977)
!977 = !{!24, !873}
!978 = distinct !DISubprogram(name: "file_mbswidth", scope: !3, file: !3, line: 664, type: !979, scopeLine: 665, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{!6, !99, !24}
!981 = !{!982, !983, !984, !985, !986, !987, !1001, !1003}
!982 = !DILocalVariable(name: "ms", arg: 1, scope: !978, file: !3, line: 664, type: !99)
!983 = !DILocalVariable(name: "s", arg: 2, scope: !978, file: !3, line: 664, type: !24)
!984 = !DILocalVariable(name: "width", scope: !978, file: !3, line: 666, type: !6)
!985 = !DILocalVariable(name: "bytesconsumed", scope: !978, file: !3, line: 668, type: !6)
!986 = !DILocalVariable(name: "n", scope: !978, file: !3, line: 668, type: !6)
!987 = !DILocalVariable(name: "state", scope: !978, file: !3, line: 669, type: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !989, line: 6, baseType: !990)
!989 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !991, line: 21, baseType: !992)
!991 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !991, line: 13, size: 64, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !992, file: !991, line: 15, baseType: !13, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !992, file: !991, line: 20, baseType: !996, size: 32, offset: 32)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !991, line: 16, size: 32, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !996, file: !991, line: 18, baseType: !18, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !996, file: !991, line: 19, baseType: !1000, size: 32)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, elements: !162)
!1001 = !DILocalVariable(name: "nextchar", scope: !978, file: !3, line: 670, type: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !7, line: 74, baseType: !13)
!1003 = !DILocalVariable(name: "w", scope: !1004, file: !3, line: 684, type: !13)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 683, column: 10)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 677, column: 7)
!1006 = distinct !DILexicalBlock(scope: !978, file: !3, line: 675, column: 16)
!1007 = !DILocation(line: 665, scope: !978)
!1008 = !DILocation(line: 0, scope: !978)
!1009 = !DILocation(line: 669, column: 2, scope: !978)
!1010 = !DILocation(line: 669, column: 12, scope: !978)
!1011 = !DILocation(line: 670, column: 2, scope: !978)
!1012 = !DILocation(line: 672, column: 8, scope: !978)
!1013 = !DILocation(line: 673, column: 6, scope: !978)
!1014 = !DILocation(line: 675, column: 11, scope: !978)
!1015 = !DILocation(line: 675, column: 2, scope: !978)
!1016 = !DILocation(line: 676, column: 19, scope: !1006)
!1017 = !DILocation(line: 677, column: 41, scope: !1005)
!1018 = !DILocation(line: 679, column: 15, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 678, column: 42)
!1020 = !DILocation(line: 679, column: 13, scope: !1019)
!1021 = !DILocation(line: 681, column: 10, scope: !1019)
!1022 = !DILocation(line: 683, column: 3, scope: !1019)
!1023 = !DILocation(line: 684, column: 20, scope: !1004)
!1024 = !DILocation(line: 684, column: 12, scope: !1004)
!1025 = !DILocation(line: 0, scope: !1004)
!1026 = !DILocation(line: 685, column: 19, scope: !1004)
!1027 = !{!1028, !319, i64 68}
!1028 = !{!"magic_set", !302, i64 0, !1029, i64 16, !1030, i64 32, !319, i64 56, !319, i64 60, !319, i64 64, !319, i64 68, !319, i64 72, !301, i64 80, !516, i64 88, !319, i64 96, !1031, i64 104, !302, i64 136, !1032, i64 264, !1032, i64 266, !1032, i64 268, !1032, i64 270, !1032, i64 272, !1032, i64 274, !516, i64 280, !516, i64 288, !516, i64 296, !301, i64 304}
!1029 = !{!"cont", !516, i64 0, !301, i64 8}
!1030 = !{!"out", !301, i64 0, !516, i64 8, !301, i64 16}
!1031 = !{!"", !301, i64 0, !516, i64 8, !516, i64 16, !516, i64 24}
!1032 = !{!"short", !302, i64 0}
!1033 = !DILocation(line: 685, column: 25, scope: !1004)
!1034 = !DILocation(line: 685, column: 38, scope: !1004)
!1035 = !DILocation(line: 686, column: 8, scope: !1004)
!1036 = !DILocation(line: 686, column: 20, scope: !1004)
!1037 = !DILocation(line: 686, column: 11, scope: !1004)
!1038 = !DILocation(line: 685, column: 13, scope: !1004)
!1039 = !DILocation(line: 686, column: 34, scope: !1004)
!1040 = !DILocation(line: 0, scope: !1006)
!1041 = !DILocation(line: 0, scope: !1005)
!1042 = !DILocation(line: 689, column: 5, scope: !1006)
!1043 = !DILocation(line: 689, column: 25, scope: !1006)
!1044 = distinct !{!1044, !1015, !1045, !402}
!1045 = !DILocation(line: 690, column: 2, scope: !978)
!1046 = !DILocation(line: 698, column: 1, scope: !978)
!1047 = !DILocation(line: 697, column: 2, scope: !978)
!1048 = distinct !DISubprogram(name: "process", scope: !3, file: !3, line: 630, type: !1049, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!13, !99, !24, !13}
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059}
!1052 = !DILocalVariable(name: "ms", arg: 1, scope: !1048, file: !3, line: 630, type: !99)
!1053 = !DILocalVariable(name: "inname", arg: 2, scope: !1048, file: !3, line: 630, type: !24)
!1054 = !DILocalVariable(name: "wid", arg: 3, scope: !1048, file: !3, line: 630, type: !13)
!1055 = !DILocalVariable(name: "type", scope: !1048, file: !3, line: 632, type: !24)
!1056 = !DILocalVariable(name: "c", scope: !1048, file: !3, line: 632, type: !25)
!1057 = !DILocalVariable(name: "std_in", scope: !1048, file: !3, line: 633, type: !13)
!1058 = !DILocalVariable(name: "haderror", scope: !1048, file: !3, line: 634, type: !13)
!1059 = !DILocalVariable(name: "pname", scope: !1060, file: !3, line: 637, type: !24)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 636, column: 25)
!1061 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 636, column: 6)
!1062 = !DILocation(line: 631, scope: !1048)
!1063 = !DILocation(line: 0, scope: !1048)
!1064 = !DILocation(line: 632, column: 24, scope: !1048)
!1065 = !DILocation(line: 632, column: 31, scope: !1048)
!1066 = !DILocation(line: 633, column: 15, scope: !1048)
!1067 = !DILocation(line: 633, column: 35, scope: !1048)
!1068 = !DILocation(line: 636, column: 10, scope: !1061)
!1069 = !DILocation(line: 636, column: 14, scope: !1061)
!1070 = !DILocation(line: 637, column: 23, scope: !1060)
!1071 = !DILocation(line: 0, scope: !1060)
!1072 = !DILocation(line: 638, column: 12, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 638, column: 7)
!1074 = !DILocation(line: 638, column: 18, scope: !1073)
!1075 = !DILocation(line: 638, column: 31, scope: !1073)
!1076 = !DILocation(line: 638, column: 7, scope: !1060)
!1077 = !DILocalVariable(name: "inname", arg: 1, scope: !1078, file: !3, line: 584, type: !24)
!1078 = distinct !DISubprogram(name: "fname_print", scope: !3, file: !3, line: 584, type: !309, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1079)
!1079 = !{!1077, !1080, !1081, !1082, !1083}
!1080 = !DILocalVariable(name: "n", scope: !1078, file: !3, line: 586, type: !6)
!1081 = !DILocalVariable(name: "state", scope: !1078, file: !3, line: 588, type: !988)
!1082 = !DILocalVariable(name: "nextchar", scope: !1078, file: !3, line: 589, type: !1002)
!1083 = !DILocalVariable(name: "bytesconsumed", scope: !1078, file: !3, line: 590, type: !6)
!1084 = !DILocation(line: 0, scope: !1078, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 639, column: 4, scope: !1073)
!1086 = !DILocation(line: 586, column: 13, scope: !1078, inlinedAt: !1085)
!1087 = !DILocation(line: 588, column: 2, scope: !1078, inlinedAt: !1085)
!1088 = !DILocation(line: 588, column: 12, scope: !1078, inlinedAt: !1085)
!1089 = !DILocation(line: 589, column: 2, scope: !1078, inlinedAt: !1085)
!1090 = !DILocation(line: 593, column: 8, scope: !1078, inlinedAt: !1085)
!1091 = !DILocation(line: 594, column: 11, scope: !1078, inlinedAt: !1085)
!1092 = !DILocation(line: 594, column: 2, scope: !1078, inlinedAt: !1085)
!1093 = !DILocation(line: 595, column: 19, scope: !1094, inlinedAt: !1085)
!1094 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 594, column: 16)
!1095 = !DILocation(line: 596, column: 41, scope: !1096, inlinedAt: !1085)
!1096 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 596, column: 7)
!1097 = !DILocation(line: 598, column: 22, scope: !1098, inlinedAt: !1085)
!1098 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 597, column: 43)
!1099 = !DILocation(line: 598, column: 15, scope: !1098, inlinedAt: !1085)
!1100 = !DILocation(line: 598, column: 13, scope: !1098, inlinedAt: !1085)
!1101 = !DILocation(line: 599, column: 5, scope: !1098, inlinedAt: !1085)
!1102 = !DILocation(line: 600, column: 10, scope: !1098, inlinedAt: !1085)
!1103 = !DILocalVariable(name: "c", arg: 1, scope: !1104, file: !3, line: 575, type: !15)
!1104 = distinct !DISubprogram(name: "file_octal", scope: !3, file: !3, line: 575, type: !1105, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !15}
!1107 = !{!1103}
!1108 = !DILocation(line: 0, scope: !1104, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 601, column: 4, scope: !1098, inlinedAt: !1085)
!1110 = !DILocation(line: 577, column: 19, scope: !1104, inlinedAt: !1109)
!1111 = !DILocation(line: 577, column: 8, scope: !1104, inlinedAt: !1109)
!1112 = !DILocation(line: 578, column: 15, scope: !1104, inlinedAt: !1109)
!1113 = !DILocation(line: 578, column: 17, scope: !1104, inlinedAt: !1109)
!1114 = !DILocation(line: 578, column: 28, scope: !1104, inlinedAt: !1109)
!1115 = !DILocation(line: 578, column: 35, scope: !1104, inlinedAt: !1109)
!1116 = !DILocation(line: 578, column: 8, scope: !1104, inlinedAt: !1109)
!1117 = !DILocation(line: 579, column: 17, scope: !1104, inlinedAt: !1109)
!1118 = !DILocation(line: 579, column: 23, scope: !1104, inlinedAt: !1109)
!1119 = !DILocation(line: 579, column: 28, scope: !1104, inlinedAt: !1109)
!1120 = !DILocation(line: 579, column: 35, scope: !1104, inlinedAt: !1109)
!1121 = !DILocation(line: 579, column: 8, scope: !1104, inlinedAt: !1109)
!1122 = !DILocation(line: 580, column: 23, scope: !1104, inlinedAt: !1109)
!1123 = !DILocation(line: 580, column: 28, scope: !1104, inlinedAt: !1109)
!1124 = !DILocation(line: 580, column: 35, scope: !1104, inlinedAt: !1109)
!1125 = !DILocation(line: 580, column: 8, scope: !1104, inlinedAt: !1109)
!1126 = !DILocation(line: 602, column: 4, scope: !1098, inlinedAt: !1085)
!1127 = distinct !{!1127, !1092, !1128, !402}
!1128 = !DILocation(line: 612, column: 2, scope: !1078, inlinedAt: !1085)
!1129 = !DILocation(line: 604, column: 10, scope: !1094, inlinedAt: !1085)
!1130 = !DILocation(line: 605, column: 5, scope: !1094, inlinedAt: !1085)
!1131 = !DILocation(line: 606, column: 16, scope: !1132, inlinedAt: !1085)
!1132 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 606, column: 7)
!1133 = !DILocation(line: 606, column: 7, scope: !1132, inlinedAt: !1085)
!1134 = !DILocation(line: 0, scope: !1094, inlinedAt: !1085)
!1135 = !DILocation(line: 606, column: 7, scope: !1094, inlinedAt: !1085)
!1136 = !DILocation(line: 607, column: 4, scope: !1137, inlinedAt: !1085)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 606, column: 27)
!1138 = !DILocation(line: 608, column: 4, scope: !1137, inlinedAt: !1085)
!1139 = !DILocation(line: 0, scope: !1104, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 611, column: 3, scope: !1094, inlinedAt: !1085)
!1141 = !DILocation(line: 577, column: 19, scope: !1104, inlinedAt: !1140)
!1142 = !DILocation(line: 577, column: 8, scope: !1104, inlinedAt: !1140)
!1143 = !DILocation(line: 578, column: 17, scope: !1104, inlinedAt: !1140)
!1144 = !DILocation(line: 578, column: 28, scope: !1104, inlinedAt: !1140)
!1145 = !DILocation(line: 578, column: 35, scope: !1104, inlinedAt: !1140)
!1146 = !DILocation(line: 578, column: 8, scope: !1104, inlinedAt: !1140)
!1147 = !DILocation(line: 579, column: 17, scope: !1104, inlinedAt: !1140)
!1148 = !DILocation(line: 579, column: 23, scope: !1104, inlinedAt: !1140)
!1149 = !DILocation(line: 579, column: 28, scope: !1104, inlinedAt: !1140)
!1150 = !DILocation(line: 579, column: 35, scope: !1104, inlinedAt: !1140)
!1151 = !DILocation(line: 579, column: 8, scope: !1104, inlinedAt: !1140)
!1152 = !DILocation(line: 580, column: 23, scope: !1104, inlinedAt: !1140)
!1153 = !DILocation(line: 580, column: 28, scope: !1104, inlinedAt: !1140)
!1154 = !DILocation(line: 580, column: 35, scope: !1104, inlinedAt: !1140)
!1155 = !DILocation(line: 580, column: 8, scope: !1104, inlinedAt: !1140)
!1156 = !DILocation(line: 624, column: 1, scope: !1078, inlinedAt: !1085)
!1157 = !DILocation(line: 639, column: 4, scope: !1073)
!1158 = !DILocation(line: 641, column: 10, scope: !1073)
!1159 = !DILocation(line: 642, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 642, column: 7)
!1161 = !DILocation(line: 642, column: 7, scope: !1060)
!1162 = !DILocation(line: 643, column: 21, scope: !1160)
!1163 = !DILocation(line: 643, column: 10, scope: !1160)
!1164 = !DILocation(line: 644, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 644, column: 7)
!1166 = !DILocation(line: 644, column: 14, scope: !1165)
!1167 = !DILocation(line: 644, column: 7, scope: !1060)
!1168 = !DILocation(line: 645, column: 23, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 644, column: 19)
!1170 = !DILocation(line: 645, column: 10, scope: !1169)
!1171 = !DILocation(line: 646, column: 25, scope: !1169)
!1172 = !DILocation(line: 646, column: 10, scope: !1169)
!1173 = !DILocation(line: 648, column: 3, scope: !1169)
!1174 = !DILocation(line: 651, column: 24, scope: !1048)
!1175 = !DILocation(line: 651, column: 9, scope: !1048)
!1176 = !DILocation(line: 653, column: 11, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 653, column: 6)
!1178 = !DILocation(line: 653, column: 6, scope: !1048)
!1179 = !DILocation(line: 654, column: 37, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 653, column: 20)
!1181 = !DILocation(line: 654, column: 15, scope: !1180)
!1182 = !DILocation(line: 655, column: 2, scope: !1180)
!1183 = !DILocation(line: 656, column: 15, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 655, column: 9)
!1185 = !DILocation(line: 656, column: 39, scope: !1184)
!1186 = !DILocation(line: 0, scope: !1177)
!1187 = !DILocation(line: 658, column: 6, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 658, column: 6)
!1189 = !DILocation(line: 658, column: 6, scope: !1048)
!1190 = !DILocation(line: 659, column: 22, scope: !1188)
!1191 = !DILocation(line: 659, column: 15, scope: !1188)
!1192 = !DILocation(line: 659, column: 30, scope: !1188)
!1193 = !DILocation(line: 659, column: 12, scope: !1188)
!1194 = !DILocation(line: 659, column: 3, scope: !1188)
!1195 = !DILocation(line: 660, column: 9, scope: !1048)
!1196 = !DILocation(line: 660, column: 18, scope: !1048)
!1197 = !DILocation(line: 660, column: 2, scope: !1048)
!1198 = !DISubprogram(name: "fflush", scope: !495, file: !495, line: 230, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!13, !439}
!1201 = !DISubprogram(name: "magic_close", scope: !874, file: !874, line: 129, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1202 = !DISubprogram(name: "mbrtowc", scope: !1203, file: !1203, line: 297, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1203 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!6, !1206, !1208, !6, !1209}
!1206 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!1209 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1210)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1211 = !DISubprogram(name: "wcwidth", scope: !1203, file: !1203, line: 368, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!13, !1002}
!1214 = !DISubprogram(name: "iswprint", scope: !1215, file: !1215, line: 120, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!13, !16}
!1218 = distinct !DISubprogram(name: "file_err", scope: !3, file: !3, line: 801, type: !1219, scopeLine: 802, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !13, !24, null}
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DILocalVariable(name: "e", arg: 1, scope: !1218, file: !3, line: 801, type: !13)
!1223 = !DILocalVariable(name: "fmt", arg: 2, scope: !1218, file: !3, line: 801, type: !24)
!1224 = !DILocalVariable(name: "ap", scope: !1218, file: !3, line: 803, type: !911)
!1225 = !DILocalVariable(name: "se", scope: !1218, file: !3, line: 804, type: !13)
!1226 = !DILocation(line: 802, scope: !1218)
!1227 = !DILocation(line: 0, scope: !1218)
!1228 = !DILocation(line: 803, column: 2, scope: !1218)
!1229 = !DILocation(line: 803, column: 10, scope: !1218)
!1230 = !DILocation(line: 804, column: 11, scope: !1218)
!1231 = !DILocation(line: 806, column: 2, scope: !1218)
!1232 = !DILocation(line: 807, column: 16, scope: !1218)
!1233 = !DILocation(line: 807, column: 32, scope: !1218)
!1234 = !DILocation(line: 807, column: 8, scope: !1218)
!1235 = !DILocation(line: 808, column: 17, scope: !1218)
!1236 = !DILocation(line: 808, column: 8, scope: !1218)
!1237 = !DILocation(line: 809, column: 2, scope: !1218)
!1238 = !DILocation(line: 810, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 810, column: 6)
!1240 = !DILocation(line: 0, scope: !1239)
!1241 = !DILocation(line: 810, column: 6, scope: !1218)
!1242 = !DILocation(line: 811, column: 36, scope: !1239)
!1243 = !DILocation(line: 811, column: 9, scope: !1239)
!1244 = !DILocation(line: 811, column: 3, scope: !1239)
!1245 = !DILocation(line: 813, column: 3, scope: !1239)
!1246 = !DILocation(line: 814, column: 2, scope: !1218)
!1247 = !DISubprogram(name: "fputc", scope: !495, file: !495, line: 549, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!13, !13, !439}
!1250 = distinct !DISubprogram(name: "file_errx", scope: !3, file: !3, line: 818, type: !1219, scopeLine: 819, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1251)
!1251 = !{!1252, !1253, !1254}
!1252 = !DILocalVariable(name: "e", arg: 1, scope: !1250, file: !3, line: 818, type: !13)
!1253 = !DILocalVariable(name: "fmt", arg: 2, scope: !1250, file: !3, line: 818, type: !24)
!1254 = !DILocalVariable(name: "ap", scope: !1250, file: !3, line: 820, type: !911)
!1255 = !DILocation(line: 0, scope: !1250)
!1256 = !DILocation(line: 820, column: 2, scope: !1250)
!1257 = !DILocation(line: 820, column: 10, scope: !1250)
!1258 = !DILocation(line: 822, column: 2, scope: !1250)
!1259 = !DILocation(line: 823, column: 16, scope: !1250)
!1260 = !DILocation(line: 823, column: 32, scope: !1250)
!1261 = !DILocation(line: 823, column: 8, scope: !1250)
!1262 = !DILocation(line: 824, column: 17, scope: !1250)
!1263 = !DILocation(line: 824, column: 8, scope: !1250)
!1264 = !DILocation(line: 825, column: 2, scope: !1250)
!1265 = !DILocation(line: 826, column: 16, scope: !1250)
!1266 = !DILocation(line: 826, column: 8, scope: !1250)
!1267 = !DILocation(line: 827, column: 2, scope: !1250)
!1268 = !DISubprogram(name: "magic_setparam", scope: !874, file: !874, line: 159, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!13, !873, !13, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1273 = !DISubprogram(name: "magic_load", scope: !874, file: !874, line: 141, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1274 = !DISubprogram(name: "fclose", scope: !495, file: !495, line: 178, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1275 = !DISubprogram(name: "putc", scope: !495, file: !495, line: 550, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1276 = !DISubprogram(name: "magic_file", scope: !874, file: !874, line: 132, type: !1277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!24, !873, !24}
!1279 = !DISubprogram(name: "fputs", scope: !495, file: !495, line: 655, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !294)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!13, !1208, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !439)
!1283 = distinct !DISubprogram(name: "docprint", scope: !3, file: !3, line: 719, type: !1284, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !24, !13}
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1287 = !DILocalVariable(name: "opts", arg: 1, scope: !1283, file: !3, line: 719, type: !24)
!1288 = !DILocalVariable(name: "def", arg: 2, scope: !1283, file: !3, line: 719, type: !13)
!1289 = !DILocalVariable(name: "i", scope: !1283, file: !3, line: 721, type: !6)
!1290 = !DILocalVariable(name: "comma", scope: !1283, file: !3, line: 722, type: !13)
!1291 = !DILocalVariable(name: "pad", scope: !1283, file: !3, line: 722, type: !13)
!1292 = !DILocalVariable(name: "sp", scope: !1283, file: !3, line: 723, type: !9)
!1293 = !DILocalVariable(name: "p", scope: !1283, file: !3, line: 723, type: !9)
!1294 = !DILocation(line: 720, scope: !1283)
!1295 = !DILocation(line: 0, scope: !1283)
!1296 = !DILocation(line: 725, column: 6, scope: !1283)
!1297 = !DILocation(line: 726, column: 8, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 726, column: 6)
!1299 = !DILocation(line: 726, column: 6, scope: !1283)
!1300 = !DILocation(line: 727, column: 17, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 726, column: 17)
!1302 = !DILocation(line: 727, column: 9, scope: !1301)
!1303 = !DILocalVariable(name: "def", arg: 1, scope: !1304, file: !3, line: 709, type: !13)
!1304 = distinct !DISubprogram(name: "defprint", scope: !3, file: !3, line: 709, type: !1305, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !13}
!1307 = !{!1303}
!1308 = !DILocation(line: 0, scope: !1304, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 728, column: 3, scope: !1301)
!1310 = !DILocation(line: 711, column: 7, scope: !1311, inlinedAt: !1309)
!1311 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 711, column: 6)
!1312 = !DILocation(line: 711, column: 6, scope: !1304, inlinedAt: !1309)
!1313 = !DILocation(line: 713, column: 12, scope: !1314, inlinedAt: !1309)
!1314 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 713, column: 6)
!1315 = !DILocation(line: 713, column: 17, scope: !1314, inlinedAt: !1309)
!1316 = !DILocation(line: 713, column: 38, scope: !1314, inlinedAt: !1309)
!1317 = !DILocation(line: 713, column: 43, scope: !1314, inlinedAt: !1309)
!1318 = !DILocation(line: 714, column: 17, scope: !1314, inlinedAt: !1309)
!1319 = !DILocation(line: 714, column: 9, scope: !1314, inlinedAt: !1309)
!1320 = !DILocation(line: 714, column: 3, scope: !1314, inlinedAt: !1309)
!1321 = !DILocation(line: 715, column: 19, scope: !1304, inlinedAt: !1309)
!1322 = !DILocation(line: 715, column: 8, scope: !1304, inlinedAt: !1309)
!1323 = !DILocation(line: 716, column: 1, scope: !1304, inlinedAt: !1309)
!1324 = !DILocation(line: 0, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 732, column: 2)
!1326 = !DILocation(line: 732, column: 22, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 732, column: 2)
!1328 = !DILocation(line: 732, column: 29, scope: !1327)
!1329 = !DILocation(line: 732, column: 32, scope: !1327)
!1330 = !DILocation(line: 732, column: 36, scope: !1327)
!1331 = !DILocation(line: 732, column: 2, scope: !1325)
!1332 = distinct !{!1332, !1331, !1333, !402}
!1333 = !DILocation(line: 733, column: 3, scope: !1325)
!1334 = !DILocation(line: 735, column: 23, scope: !1283)
!1335 = !DILocation(line: 735, column: 8, scope: !1283)
!1336 = !DILocation(line: 736, column: 13, scope: !1283)
!1337 = !DILocation(line: 738, column: 11, scope: !1283)
!1338 = !DILocation(line: 738, column: 10, scope: !1283)
!1339 = !DILocation(line: 738, column: 2, scope: !1283)
!1340 = !DILocation(line: 742, column: 10, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 741, column: 42)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 741, column: 3)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 741, column: 3)
!1344 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 738, column: 16)
!1345 = !DILocation(line: 741, column: 3, scope: !1343)
!1346 = !DILocation(line: 742, column: 25, scope: !1341)
!1347 = !DILocation(line: 742, column: 52, scope: !1341)
!1348 = !{!405, !301, i64 0}
!1349 = !DILocation(line: 742, column: 30, scope: !1341)
!1350 = !DILocation(line: 743, column: 15, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 743, column: 8)
!1352 = !DILocation(line: 743, column: 19, scope: !1351)
!1353 = !DILocation(line: 743, column: 24, scope: !1351)
!1354 = !DILocation(line: 744, column: 11, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 743, column: 54)
!1356 = !DILocation(line: 746, column: 4, scope: !1355)
!1357 = !DILocation(line: 0, scope: !1341)
!1358 = !DILocation(line: 741, column: 38, scope: !1342)
!1359 = !DILocation(line: 741, column: 17, scope: !1342)
!1360 = distinct !{!1360, !1345, !1361, !402, !1362}
!1361 = !DILocation(line: 747, column: 3, scope: !1343)
!1362 = !{!"llvm.loop.peeled.count", i32 1}
!1363 = !DILocation(line: 751, column: 38, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 750, column: 42)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 750, column: 3)
!1366 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 750, column: 3)
!1367 = !DILocation(line: 751, column: 50, scope: !1364)
!1368 = !{!655, !516, i64 16}
!1369 = !DILocation(line: 752, column: 14, scope: !1364)
!1370 = !{!655, !301, i64 24}
!1371 = !DILocation(line: 751, column: 10, scope: !1364)
!1372 = !DILocation(line: 754, column: 11, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 753, column: 8)
!1374 = !DILocation(line: 762, column: 31, scope: !1283)
!1375 = !DILocation(line: 758, column: 3, scope: !1344)
!1376 = !DILocation(line: 762, column: 26, scope: !1283)
!1377 = !DILocation(line: 762, column: 39, scope: !1283)
!1378 = !DILocation(line: 762, column: 8, scope: !1283)
!1379 = !DILocation(line: 764, column: 1, scope: !1283)
