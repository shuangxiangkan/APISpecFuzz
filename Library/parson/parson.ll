; ModuleID = 'parson.c'
source_filename = "parson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_value_t = type { %struct.json_value_t*, i32, %union.json_value_value }
%union.json_value_value = type { %struct.json_string }
%struct.json_string = type { i8*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.json_object_t = type { %struct.json_value_t*, i64*, i64*, i8**, %struct.json_value_t**, i64*, i64, i64, i64 }
%struct.json_array_t = type { %struct.json_value_t*, %struct.json_value_t**, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@parson_free = internal global void (i8*)* @free, align 8
@.str = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@parson_malloc = internal global i8* (i64)* @malloc, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@parson_escape_slashes = internal global i32 1, align 4
@parson_float_format = internal global i8* null, align 8
@parson_number_serialization_function = internal global i32 (double, i8*)* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%1.17g\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\\u0000\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\\u0001\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\\u0002\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\\u0003\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"\\u0004\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\\u0005\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\\u0006\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"\\u0007\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\\u000b\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\\u000e\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"\\u000f\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"\\u0010\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"\\u0011\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"\\u0012\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"\\u0013\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\\u0014\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"\\u0015\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"\\u0016\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\\u0017\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"\\u0018\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"\\u0019\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"\\u001a\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"\\u001b\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"\\u001c\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"\\u001d\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"\\u001e\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"\\u001f\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_parse_file(i8* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.json_value_t*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @read_file(i8* noundef %6)
  store i8* %7, i8** %4, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %17

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.json_value_t* @json_parse_string(i8* noundef %12)
  store %struct.json_value_t* %13, %struct.json_value_t** %5, align 8
  %14 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %15 = load i8*, i8** %4, align 8
  call void %14(i8* noundef %15)
  %16 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  store %struct.json_value_t* %16, %struct.json_value_t** %2, align 8
  br label %17

17:                                               ; preds = %11, %10
  %18 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_file(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %10, %struct._IO_FILE** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %60

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = call i32 @fseek(%struct._IO_FILE* noundef %15, i64 noundef 0, i32 noundef 2)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %18 = call i64 @ftell(%struct._IO_FILE* noundef %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %23 = call i32 @fclose(%struct._IO_FILE* noundef %22)
  store i8* null, i8** %2, align 8
  br label %60

24:                                               ; preds = %14
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @rewind(%struct._IO_FILE* noundef %26)
  %27 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  %30 = mul i64 1, %29
  %31 = call i8* %27(i64 noundef %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %36 = call i32 @fclose(%struct._IO_FILE* noundef %35)
  store i8* null, i8** %2, align 8
  br label %60

37:                                               ; preds = %24
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %41 = call i64 @fread(i8* noundef %38, i64 noundef 1, i64 noundef %39, %struct._IO_FILE* noundef %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %46 = call i32 @ferror(%struct._IO_FILE* noundef %45) #8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %37
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %50 = call i32 @fclose(%struct._IO_FILE* noundef %49)
  %51 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %52 = load i8*, i8** %8, align 8
  call void %51(i8* noundef %52)
  store i8* null, i8** %2, align 8
  br label %60

53:                                               ; preds = %44
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %55 = call i32 @fclose(%struct._IO_FILE* noundef %54)
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %8, align 8
  store i8* %59, i8** %2, align 8
  br label %60

60:                                               ; preds = %53, %48, %34, %21, %13
  %61 = load i8*, i8** %2, align 8
  ret i8* %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_parse_string(i8* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %30

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, -17
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, -69
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, -65
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %25, %19, %13, %7
  %29 = call %struct.json_value_t* @parse_value(i8** noundef %3, i64 noundef 0)
  store %struct.json_value_t* %29, %struct.json_value_t** %2, align 8
  br label %30

30:                                               ; preds = %28, %6
  %31 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_parse_file_with_comments(i8* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.json_value_t*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @read_file(i8* noundef %6)
  store i8* %7, i8** %4, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %17

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.json_value_t* @json_parse_string_with_comments(i8* noundef %12)
  store %struct.json_value_t* %13, %struct.json_value_t** %5, align 8
  %14 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %15 = load i8*, i8** %4, align 8
  call void %14(i8* noundef %15)
  %16 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  store %struct.json_value_t* %16, %struct.json_value_t** %2, align 8
  br label %17

17:                                               ; preds = %11, %10
  %18 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_parse_string_with_comments(i8* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.json_value_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @parson_strdup(i8* noundef %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %20

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  call void @remove_comments(i8* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i8*, i8** %5, align 8
  call void @remove_comments(i8* noundef %14, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %6, align 8
  %16 = call %struct.json_value_t* @parse_value(i8** noundef %6, i64 noundef 0)
  store %struct.json_value_t* %16, %struct.json_value_t** %4, align 8
  %17 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %18 = load i8*, i8** %5, align 8
  call void %17(i8* noundef %18)
  %19 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  store %struct.json_value_t* %19, %struct.json_value_t** %2, align 8
  br label %20

20:                                               ; preds = %12, %11
  %21 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_value_t* @parse_value(i8** noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ugt i64 %6, 2048
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %55

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %23, %9
  %11 = call i16** @__ctype_b_loc() #9
  %12 = load i16*, i16** %11, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16, i16* %12, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 8192
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %10
  %24 = load i8**, i8*** %4, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  br label %10, !llvm.loop !4

27:                                               ; preds = %10
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %54 [
    i32 123, label %32
    i32 91, label %37
    i32 34, label %42
    i32 102, label %45
    i32 116, label %45
    i32 45, label %48
    i32 48, label %48
    i32 49, label %48
    i32 50, label %48
    i32 51, label %48
    i32 52, label %48
    i32 53, label %48
    i32 54, label %48
    i32 55, label %48
    i32 56, label %48
    i32 57, label %48
    i32 110, label %51
  ]

32:                                               ; preds = %27
  %33 = load i8**, i8*** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  %36 = call %struct.json_value_t* @parse_object_value(i8** noundef %33, i64 noundef %35)
  store %struct.json_value_t* %36, %struct.json_value_t** %3, align 8
  br label %55

37:                                               ; preds = %27
  %38 = load i8**, i8*** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  %41 = call %struct.json_value_t* @parse_array_value(i8** noundef %38, i64 noundef %40)
  store %struct.json_value_t* %41, %struct.json_value_t** %3, align 8
  br label %55

42:                                               ; preds = %27
  %43 = load i8**, i8*** %4, align 8
  %44 = call %struct.json_value_t* @parse_string_value(i8** noundef %43)
  store %struct.json_value_t* %44, %struct.json_value_t** %3, align 8
  br label %55

45:                                               ; preds = %27, %27
  %46 = load i8**, i8*** %4, align 8
  %47 = call %struct.json_value_t* @parse_boolean_value(i8** noundef %46)
  store %struct.json_value_t* %47, %struct.json_value_t** %3, align 8
  br label %55

48:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %49 = load i8**, i8*** %4, align 8
  %50 = call %struct.json_value_t* @parse_number_value(i8** noundef %49)
  store %struct.json_value_t* %50, %struct.json_value_t** %3, align 8
  br label %55

51:                                               ; preds = %27
  %52 = load i8**, i8*** %4, align 8
  %53 = call %struct.json_value_t* @parse_null_value(i8** noundef %52)
  store %struct.json_value_t* %53, %struct.json_value_t** %3, align 8
  br label %55

54:                                               ; preds = %27
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %55

55:                                               ; preds = %54, %51, %48, %45, %42, %37, %32, %8
  %56 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  ret %struct.json_value_t* %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parson_strdup(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* noundef %4) #10
  %6 = call i8* @parson_strndup(i8* noundef %3, i64 noundef %5)
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_comments(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* noundef %14) #10
  store i64 %15, i64* %12, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* noundef %16) #10
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %13, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  br label %111

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %108, %37, %24
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %11, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %111

30:                                               ; preds = %25
  %31 = load i8, i8* %11, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  br label %25, !llvm.loop !6

40:                                               ; preds = %34, %30
  %41 = load i8, i8* %11, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 34
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %107

52:                                               ; preds = %44, %40
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %106, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @strncmp(i8* noundef %56, i8* noundef %57, i64 noundef %58) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %106

61:                                               ; preds = %55
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %70, %61
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 32, i8* %69, align 1
  br label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %62, !llvm.loop !7

73:                                               ; preds = %62
  %74 = load i8*, i8** %4, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %4, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @strstr(i8* noundef %77, i8* noundef %78) #10
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %111

83:                                               ; preds = %73
  store i64 0, i64* %9, align 8
  br label %84

84:                                               ; preds = %98, %83
  %85 = load i64, i64* %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %90, %91
  %93 = icmp ult i64 %85, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load i8*, i8** %4, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8 32, i8* %97, align 1
  br label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %9, align 8
  br label %84, !llvm.loop !8

101:                                              ; preds = %84
  %102 = load i8*, i8** %10, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = getelementptr inbounds i8, i8* %104, i64 -1
  store i8* %105, i8** %4, align 8
  br label %106

106:                                              ; preds = %101, %55, %52
  br label %107

107:                                              ; preds = %106, %47
  br label %108

108:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %4, align 8
  br label %25, !llvm.loop !6

111:                                              ; preds = %23, %82, %25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %7 = icmp eq %struct.json_object_t* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %18

12:                                               ; preds = %8
  %13 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* noundef %15) #10
  %17 = call %struct.json_value_t* @json_object_getn_value(%struct.json_object_t* noundef %13, i8* noundef %14, i64 noundef %16)
  store %struct.json_value_t* %17, %struct.json_value_t** %3, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  ret %struct.json_value_t* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_value_t* @json_object_getn_value(%struct.json_object_t* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.json_value_t*, align 8
  %5 = alloca %struct.json_object_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %13 = icmp ne %struct.json_object_t* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %3
  store %struct.json_value_t* null, %struct.json_value_t** %4, align 8
  br label %43

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @hash_string(i8* noundef %19, i64 noundef %20)
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @json_object_get_cell_ix(%struct.json_object_t* noundef %22, i8* noundef %23, i64 noundef %24, i64 noundef %25, i32* noundef %9)
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  store %struct.json_value_t* null, %struct.json_value_t** %4, align 8
  br label %43

30:                                               ; preds = %18
  %31 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %32 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %38 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %37, i32 0, i32 4
  %39 = load %struct.json_value_t**, %struct.json_value_t*** %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %39, i64 %40
  %42 = load %struct.json_value_t*, %struct.json_value_t** %41, align 8
  store %struct.json_value_t* %42, %struct.json_value_t** %4, align 8
  br label %43

43:                                               ; preds = %30, %29, %17
  %44 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  ret %struct.json_value_t* %44
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_get_string(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call i8* @json_value_get_string(%struct.json_value_t* noundef %7)
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_value_get_string(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca %struct.json_string*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %4 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %5 = call %struct.json_string* @json_value_get_string_desc(%struct.json_value_t* noundef %4)
  store %struct.json_string* %5, %struct.json_string** %3, align 8
  %6 = load %struct.json_string*, %struct.json_string** %3, align 8
  %7 = icmp ne %struct.json_string* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.json_string*, %struct.json_string** %3, align 8
  %10 = getelementptr inbounds %struct.json_string, %struct.json_string* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i8* [ %11, %8 ], [ null, %12 ]
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_object_get_string_len(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call i64 @json_value_get_string_len(%struct.json_value_t* noundef %7)
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_value_get_string_len(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca %struct.json_string*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %4 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %5 = call %struct.json_string* @json_value_get_string_desc(%struct.json_value_t* noundef %4)
  store %struct.json_string* %5, %struct.json_string** %3, align 8
  %6 = load %struct.json_string*, %struct.json_string** %3, align 8
  %7 = icmp ne %struct.json_string* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.json_string*, %struct.json_string** %3, align 8
  %10 = getelementptr inbounds %struct.json_string, %struct.json_string* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i64 [ %11, %8 ], [ 0, %12 ]
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_object_get_number(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call double @json_value_get_number(%struct.json_value_t* noundef %7)
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_value_get_number(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call i32 @json_value_get_type(%struct.json_value_t* noundef %3)
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %8 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %7, i32 0, i32 2
  %9 = bitcast %union.json_value_value* %8 to double*
  %10 = load double, double* %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi double [ %10, %6 ], [ 0.000000e+00, %11 ]
  ret double %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_object_t* @json_object_get_object(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %7)
  ret %struct.json_object_t* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call i32 @json_value_get_type(%struct.json_value_t* noundef %3)
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %8 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %7, i32 0, i32 2
  %9 = bitcast %union.json_value_value* %8 to %struct.json_object_t**
  %10 = load %struct.json_object_t*, %struct.json_object_t** %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi %struct.json_object_t* [ %10, %6 ], [ null, %11 ]
  ret %struct.json_object_t* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_array_t* @json_object_get_array(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %7)
  ret %struct.json_array_t* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call i32 @json_value_get_type(%struct.json_value_t* noundef %3)
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %8 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %7, i32 0, i32 2
  %9 = bitcast %union.json_value_value* %8 to %struct.json_array_t**
  %10 = load %struct.json_array_t*, %struct.json_array_t** %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi %struct.json_array_t* [ %10, %6 ], [ null, %11 ]
  ret %struct.json_array_t* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_get_boolean(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call i32 @json_value_get_boolean(%struct.json_value_t* noundef %7)
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_get_boolean(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call i32 @json_value_get_type(%struct.json_value_t* noundef %3)
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %8 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %7, i32 0, i32 2
  %9 = bitcast %union.json_value_value* %8 to i32*
  %10 = load i32, i32* %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i32 [ %10, %6 ], [ -1, %11 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_object_dotget_value(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i8* @strchr(i8* noundef %7, i32 noundef 46) #10
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %12, i8* noundef %13)
  store %struct.json_value_t* %14, %struct.json_value_t** %3, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = call %struct.json_value_t* @json_object_getn_value(%struct.json_object_t* noundef %16, i8* noundef %17, i64 noundef %22)
  %24 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %23)
  store %struct.json_object_t* %24, %struct.json_object_t** %4, align 8
  %25 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call %struct.json_value_t* @json_object_dotget_value(%struct.json_object_t* noundef %25, i8* noundef %27)
  store %struct.json_value_t* %28, %struct.json_value_t** %3, align 8
  br label %29

29:                                               ; preds = %15, %11
  %30 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  ret %struct.json_value_t* %30
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_dotget_string(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_dotget_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call i8* @json_value_get_string(%struct.json_value_t* noundef %7)
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_object_dotget_string_len(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_dotget_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call i64 @json_value_get_string_len(%struct.json_value_t* noundef %7)
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_object_dotget_number(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_dotget_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call double @json_value_get_number(%struct.json_value_t* noundef %7)
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_object_t* @json_object_dotget_object(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_dotget_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %7)
  ret %struct.json_object_t* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_array_t* @json_object_dotget_array(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_dotget_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %7)
  ret %struct.json_array_t* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotget_boolean(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_dotget_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = call i32 @json_value_get_boolean(%struct.json_value_t* noundef %7)
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_object_get_count(%struct.json_object_t* noundef %0) #0 {
  %2 = alloca %struct.json_object_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %2, align 8
  %3 = load %struct.json_object_t*, %struct.json_object_t** %2, align 8
  %4 = icmp ne %struct.json_object_t* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.json_object_t*, %struct.json_object_t** %2, align 8
  %7 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 0, %9 ]
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_get_name(%struct.json_object_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i64, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %7 = icmp eq %struct.json_object_t* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %11 = call i64 @json_object_get_count(%struct.json_object_t* noundef %10)
  %12 = icmp uge i64 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  store i8* null, i8** %3, align 8
  br label %21

14:                                               ; preds = %8
  %15 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %16 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %15, i32 0, i32 3
  %17 = load i8**, i8*** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_object_get_value_at(%struct.json_object_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i64, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %7 = icmp eq %struct.json_object_t* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %11 = call i64 @json_object_get_count(%struct.json_object_t* noundef %10)
  %12 = icmp uge i64 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %21

14:                                               ; preds = %8
  %15 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %16 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %15, i32 0, i32 4
  %17 = load %struct.json_value_t**, %struct.json_value_t*** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %17, i64 %18
  %20 = load %struct.json_value_t*, %struct.json_value_t** %19, align 8
  store %struct.json_value_t* %20, %struct.json_value_t** %3, align 8
  br label %21

21:                                               ; preds = %14, %13
  %22 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  ret %struct.json_value_t* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_object_get_wrapping_value(%struct.json_object_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca %struct.json_object_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  %4 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %5 = icmp ne %struct.json_object_t* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %9 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %8, i32 0, i32 0
  %10 = load %struct.json_value_t*, %struct.json_value_t** %9, align 8
  store %struct.json_value_t* %10, %struct.json_value_t** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_has_value(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = icmp ne %struct.json_value_t* %7, null
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_has_value_of_type(%struct.json_object_t* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.json_value_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %8, i8* noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %7, align 8
  %11 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %12 = icmp ne %struct.json_value_t* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %15 = call i32 @json_value_get_type(%struct.json_value_t* noundef %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ false, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_get_type(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = icmp ne %struct.json_value_t* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %7 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ %8, %5 ], [ -1, %9 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dothas_value(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_object_dotget_value(%struct.json_object_t* noundef %5, i8* noundef %6)
  %8 = icmp ne %struct.json_value_t* %7, null
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dothas_value_of_type(%struct.json_object_t* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.json_value_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.json_value_t* @json_object_dotget_value(%struct.json_object_t* noundef %8, i8* noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %7, align 8
  %11 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %12 = icmp ne %struct.json_value_t* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %15 = call i32 @json_value_get_type(%struct.json_value_t* noundef %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ false, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca %struct.json_array_t*, align 8
  %5 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %7 = icmp eq %struct.json_array_t* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %11 = call i64 @json_array_get_count(%struct.json_array_t* noundef %10)
  %12 = icmp uge i64 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %21

14:                                               ; preds = %8
  %15 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %16 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %15, i32 0, i32 1
  %17 = load %struct.json_value_t**, %struct.json_value_t*** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %17, i64 %18
  %20 = load %struct.json_value_t*, %struct.json_value_t** %19, align 8
  store %struct.json_value_t* %20, %struct.json_value_t** %3, align 8
  br label %21

21:                                               ; preds = %14, %13
  %22 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  ret %struct.json_value_t* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_array_get_count(%struct.json_array_t* noundef %0) #0 {
  %2 = alloca %struct.json_array_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %2, align 8
  %3 = load %struct.json_array_t*, %struct.json_array_t** %2, align 8
  %4 = icmp ne %struct.json_array_t* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.json_array_t*, %struct.json_array_t** %2, align 8
  %7 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 0, %9 ]
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_array_get_string(%struct.json_array_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_array_t*, align 8
  %4 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %5, i64 noundef %6)
  %8 = call i8* @json_value_get_string(%struct.json_value_t* noundef %7)
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_array_get_string_len(%struct.json_array_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_array_t*, align 8
  %4 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %5, i64 noundef %6)
  %8 = call i64 @json_value_get_string_len(%struct.json_value_t* noundef %7)
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_array_get_number(%struct.json_array_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_array_t*, align 8
  %4 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %5, i64 noundef %6)
  %8 = call double @json_value_get_number(%struct.json_value_t* noundef %7)
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_object_t* @json_array_get_object(%struct.json_array_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_array_t*, align 8
  %4 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %5, i64 noundef %6)
  %8 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %7)
  ret %struct.json_object_t* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_array_t* @json_array_get_array(%struct.json_array_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_array_t*, align 8
  %4 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %5, i64 noundef %6)
  %8 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %7)
  ret %struct.json_array_t* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_get_boolean(%struct.json_array_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_array_t*, align 8
  %4 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %5, i64 noundef %6)
  %8 = call i32 @json_value_get_boolean(%struct.json_value_t* noundef %7)
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_array_get_wrapping_value(%struct.json_array_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca %struct.json_array_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %3, align 8
  %4 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %5 = icmp ne %struct.json_array_t* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %9 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %8, i32 0, i32 0
  %10 = load %struct.json_value_t*, %struct.json_value_t** %9, align 8
  store %struct.json_value_t* %10, %struct.json_value_t** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_string* @json_value_get_string_desc(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call i32 @json_value_get_type(%struct.json_value_t* noundef %3)
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %8 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %7, i32 0, i32 2
  %9 = bitcast %union.json_value_value* %8 to %struct.json_string*
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi %struct.json_string* [ %9, %6 ], [ null, %10 ]
  ret %struct.json_string* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_value_get_parent(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = icmp ne %struct.json_value_t* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %7 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %6, i32 0, i32 0
  %8 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi %struct.json_value_t* [ %8, %5 ], [ null, %9 ]
  ret %struct.json_value_t* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_value_free(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call i32 @json_value_get_type(%struct.json_value_t* noundef %3)
  switch i32 %4, label %22 [
    i32 4, label %5
    i32 2, label %10
    i32 5, label %17
  ]

5:                                                ; preds = %1
  %6 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %7 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %6, i32 0, i32 2
  %8 = bitcast %union.json_value_value* %7 to %struct.json_object_t**
  %9 = load %struct.json_object_t*, %struct.json_object_t** %8, align 8
  call void @json_object_free(%struct.json_object_t* noundef %9)
  br label %23

10:                                               ; preds = %1
  %11 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %12 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %13 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %12, i32 0, i32 2
  %14 = bitcast %union.json_value_value* %13 to %struct.json_string*
  %15 = getelementptr inbounds %struct.json_string, %struct.json_string* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  call void %11(i8* noundef %16)
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %19 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %18, i32 0, i32 2
  %20 = bitcast %union.json_value_value* %19 to %struct.json_array_t**
  %21 = load %struct.json_array_t*, %struct.json_array_t** %20, align 8
  call void @json_array_free(%struct.json_array_t* noundef %21)
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %17, %10, %5
  %24 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %25 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %26 = bitcast %struct.json_value_t* %25 to i8*
  call void %24(i8* noundef %26)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_object_free(%struct.json_object_t* noundef %0) #0 {
  %2 = alloca %struct.json_object_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %2, align 8
  %3 = load %struct.json_object_t*, %struct.json_object_t** %2, align 8
  call void @json_object_deinit(%struct.json_object_t* noundef %3, i32 noundef 1, i32 noundef 1)
  %4 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %2, align 8
  %6 = bitcast %struct.json_object_t* %5 to i8*
  call void %4(i8* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_array_free(%struct.json_array_t* noundef %0) #0 {
  %2 = alloca %struct.json_array_t*, align 8
  %3 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.json_array_t*, %struct.json_array_t** %2, align 8
  %7 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load %struct.json_array_t*, %struct.json_array_t** %2, align 8
  %12 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %11, i32 0, i32 1
  %13 = load %struct.json_value_t**, %struct.json_value_t*** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %13, i64 %14
  %16 = load %struct.json_value_t*, %struct.json_value_t** %15, align 8
  call void @json_value_free(%struct.json_value_t* noundef %16)
  br label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  br label %4, !llvm.loop !9

20:                                               ; preds = %4
  %21 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %22 = load %struct.json_array_t*, %struct.json_array_t** %2, align 8
  %23 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %22, i32 0, i32 1
  %24 = load %struct.json_value_t**, %struct.json_value_t*** %23, align 8
  %25 = bitcast %struct.json_value_t** %24 to i8*
  call void %21(i8* noundef %25)
  %26 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %27 = load %struct.json_array_t*, %struct.json_array_t** %2, align 8
  %28 = bitcast %struct.json_array_t* %27 to i8*
  call void %26(i8* noundef %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_value_init_object() #0 {
  %1 = alloca %struct.json_value_t*, align 8
  %2 = alloca %struct.json_value_t*, align 8
  %3 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %4 = call i8* %3(i64 noundef 32)
  %5 = bitcast i8* %4 to %struct.json_value_t*
  store %struct.json_value_t* %5, %struct.json_value_t** %2, align 8
  %6 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %7 = icmp ne %struct.json_value_t* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.json_value_t* null, %struct.json_value_t** %1, align 8
  br label %30

9:                                                ; preds = %0
  %10 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %11 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %10, i32 0, i32 0
  store %struct.json_value_t* null, %struct.json_value_t** %11, align 8
  %12 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %13 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %12, i32 0, i32 1
  store i32 4, i32* %13, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %15 = call %struct.json_object_t* @json_object_make(%struct.json_value_t* noundef %14)
  %16 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %17 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %16, i32 0, i32 2
  %18 = bitcast %union.json_value_value* %17 to %struct.json_object_t**
  store %struct.json_object_t* %15, %struct.json_object_t** %18, align 8
  %19 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %20 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %19, i32 0, i32 2
  %21 = bitcast %union.json_value_value* %20 to %struct.json_object_t**
  %22 = load %struct.json_object_t*, %struct.json_object_t** %21, align 8
  %23 = icmp ne %struct.json_object_t* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %9
  %25 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %26 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %27 = bitcast %struct.json_value_t* %26 to i8*
  call void %25(i8* noundef %27)
  store %struct.json_value_t* null, %struct.json_value_t** %1, align 8
  br label %30

28:                                               ; preds = %9
  %29 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  store %struct.json_value_t* %29, %struct.json_value_t** %1, align 8
  br label %30

30:                                               ; preds = %28, %24, %8
  %31 = load %struct.json_value_t*, %struct.json_value_t** %1, align 8
  ret %struct.json_value_t* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_object_t* @json_object_make(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_object_t*, align 8
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_object_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %3, align 8
  store i32 -1, i32* %4, align 4
  %6 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %7 = call i8* %6(i64 noundef 72)
  %8 = bitcast i8* %7 to %struct.json_object_t*
  store %struct.json_object_t* %8, %struct.json_object_t** %5, align 8
  %9 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %10 = icmp eq %struct.json_object_t* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.json_object_t* null, %struct.json_object_t** %2, align 8
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %14 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %15 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %14, i32 0, i32 0
  store %struct.json_value_t* %13, %struct.json_value_t** %15, align 8
  %16 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %17 = call i32 @json_object_init(%struct.json_object_t* noundef %16, i64 noundef 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %22 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %23 = bitcast %struct.json_object_t* %22 to i8*
  call void %21(i8* noundef %23)
  store %struct.json_object_t* null, %struct.json_object_t** %2, align 8
  br label %26

24:                                               ; preds = %12
  %25 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  store %struct.json_object_t* %25, %struct.json_object_t** %2, align 8
  br label %26

26:                                               ; preds = %24, %20, %11
  %27 = load %struct.json_object_t*, %struct.json_object_t** %2, align 8
  ret %struct.json_object_t* %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_value_init_array() #0 {
  %1 = alloca %struct.json_value_t*, align 8
  %2 = alloca %struct.json_value_t*, align 8
  %3 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %4 = call i8* %3(i64 noundef 32)
  %5 = bitcast i8* %4 to %struct.json_value_t*
  store %struct.json_value_t* %5, %struct.json_value_t** %2, align 8
  %6 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %7 = icmp ne %struct.json_value_t* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.json_value_t* null, %struct.json_value_t** %1, align 8
  br label %30

9:                                                ; preds = %0
  %10 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %11 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %10, i32 0, i32 0
  store %struct.json_value_t* null, %struct.json_value_t** %11, align 8
  %12 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %13 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %12, i32 0, i32 1
  store i32 5, i32* %13, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %15 = call %struct.json_array_t* @json_array_make(%struct.json_value_t* noundef %14)
  %16 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %17 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %16, i32 0, i32 2
  %18 = bitcast %union.json_value_value* %17 to %struct.json_array_t**
  store %struct.json_array_t* %15, %struct.json_array_t** %18, align 8
  %19 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %20 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %19, i32 0, i32 2
  %21 = bitcast %union.json_value_value* %20 to %struct.json_array_t**
  %22 = load %struct.json_array_t*, %struct.json_array_t** %21, align 8
  %23 = icmp ne %struct.json_array_t* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %9
  %25 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %26 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %27 = bitcast %struct.json_value_t* %26 to i8*
  call void %25(i8* noundef %27)
  store %struct.json_value_t* null, %struct.json_value_t** %1, align 8
  br label %30

28:                                               ; preds = %9
  %29 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  store %struct.json_value_t* %29, %struct.json_value_t** %1, align 8
  br label %30

30:                                               ; preds = %28, %24, %8
  %31 = load %struct.json_value_t*, %struct.json_value_t** %1, align 8
  ret %struct.json_value_t* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_array_t* @json_array_make(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_array_t*, align 8
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca %struct.json_array_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %3, align 8
  %5 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %6 = call i8* %5(i64 noundef 32)
  %7 = bitcast i8* %6 to %struct.json_array_t*
  store %struct.json_array_t* %7, %struct.json_array_t** %4, align 8
  %8 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %9 = icmp eq %struct.json_array_t* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.json_array_t* null, %struct.json_array_t** %2, align 8
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %13 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %14 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %13, i32 0, i32 0
  store %struct.json_value_t* %12, %struct.json_value_t** %14, align 8
  %15 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %16 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %15, i32 0, i32 1
  store %struct.json_value_t** null, %struct.json_value_t*** %16, align 8
  %17 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %18 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %20 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  store %struct.json_array_t* %21, %struct.json_array_t** %2, align 8
  br label %22

22:                                               ; preds = %11, %10
  %23 = load %struct.json_array_t*, %struct.json_array_t** %2, align 8
  ret %struct.json_array_t* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_value_init_string(i8* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %12

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* noundef %9) #10
  %11 = call %struct.json_value_t* @json_value_init_string_with_len(i8* noundef %8, i64 noundef %10)
  store %struct.json_value_t* %11, %struct.json_value_t** %2, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_value_init_string_with_len(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.json_value_t*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %35

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @is_valid_utf8(i8* noundef %12, i64 noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %35

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i8* @parson_strndup(i8* noundef %18, i64 noundef %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %35

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call %struct.json_value_t* @json_value_init_string_no_copy(i8* noundef %25, i64 noundef %26)
  store %struct.json_value_t* %27, %struct.json_value_t** %7, align 8
  %28 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %29 = icmp eq %struct.json_value_t* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %32 = load i8*, i8** %6, align 8
  call void %31(i8* noundef %32)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  store %struct.json_value_t* %34, %struct.json_value_t** %3, align 8
  br label %35

35:                                               ; preds = %33, %23, %16, %10
  %36 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  ret %struct.json_value_t* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_utf8(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8* %10, i8** %7, align 8
  br label %11

11:                                               ; preds = %20, %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @verify_utf8_sequence(i8* noundef %16, i32* noundef %6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %4, align 8
  br label %11, !llvm.loop !10

25:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parson_strndup(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add i64 %8, 1
  %10 = call i8* %7(i64 noundef %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %22

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %5, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %19, i64 %20, i1 false)
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_value_t* @json_value_init_string_no_copy(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.json_value_t*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %8 = call i8* %7(i64 noundef 32)
  %9 = bitcast i8* %8 to %struct.json_value_t*
  store %struct.json_value_t* %9, %struct.json_value_t** %6, align 8
  %10 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %11 = icmp ne %struct.json_value_t* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %15 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %14, i32 0, i32 0
  store %struct.json_value_t* null, %struct.json_value_t** %15, align 8
  %16 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %17 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %16, i32 0, i32 1
  store i32 2, i32* %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %20 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %19, i32 0, i32 2
  %21 = bitcast %union.json_value_value* %20 to %struct.json_string*
  %22 = getelementptr inbounds %struct.json_string, %struct.json_string* %21, i32 0, i32 0
  store i8* %18, i8** %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %25 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %24, i32 0, i32 2
  %26 = bitcast %union.json_value_value* %25 to %struct.json_string*
  %27 = getelementptr inbounds %struct.json_string, %struct.json_string* %26, i32 0, i32 1
  store i64 %23, i64* %27, align 8
  %28 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  store %struct.json_value_t* %28, %struct.json_value_t** %3, align 8
  br label %29

29:                                               ; preds = %13, %12
  %30 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  ret %struct.json_value_t* %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_value_init_number(double noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.json_value_t*, align 8
  store double %0, double* %3, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %4, align 8
  %5 = load double, double* %3, align 8
  %6 = fcmp uno double %5, %5
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = call double @llvm.fabs.f64(double %8) #11
  %10 = fcmp oeq double %9, 0x7FF0000000000000
  %11 = bitcast double %8 to i64
  %12 = icmp slt i64 %11, 0
  %13 = select i1 %12, i32 -1, i32 1
  %14 = select i1 %10, i32 %13, i32 0
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7, %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %34

17:                                               ; preds = %7
  %18 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %19 = call i8* %18(i64 noundef 32)
  %20 = bitcast i8* %19 to %struct.json_value_t*
  store %struct.json_value_t* %20, %struct.json_value_t** %4, align 8
  %21 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %22 = icmp eq %struct.json_value_t* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %34

24:                                               ; preds = %17
  %25 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %26 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %25, i32 0, i32 0
  store %struct.json_value_t* null, %struct.json_value_t** %26, align 8
  %27 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %28 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %27, i32 0, i32 1
  store i32 3, i32* %28, align 8
  %29 = load double, double* %3, align 8
  %30 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %31 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %30, i32 0, i32 2
  %32 = bitcast %union.json_value_value* %31 to double*
  store double %29, double* %32, align 8
  %33 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  store %struct.json_value_t* %33, %struct.json_value_t** %2, align 8
  br label %34

34:                                               ; preds = %24, %23, %16
  %35 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_value_init_boolean(i32 noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_value_t*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %6 = call i8* %5(i64 noundef 32)
  %7 = bitcast i8* %6 to %struct.json_value_t*
  store %struct.json_value_t* %7, %struct.json_value_t** %4, align 8
  %8 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %9 = icmp ne %struct.json_value_t* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %13 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %12, i32 0, i32 0
  store %struct.json_value_t* null, %struct.json_value_t** %13, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %15 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %14, i32 0, i32 1
  store i32 6, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %21 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %20, i32 0, i32 2
  %22 = bitcast %union.json_value_value* %21 to i32*
  store i32 %19, i32* %22, align 8
  %23 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  store %struct.json_value_t* %23, %struct.json_value_t** %2, align 8
  br label %24

24:                                               ; preds = %11, %10
  %25 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_value_init_null() #0 {
  %1 = alloca %struct.json_value_t*, align 8
  %2 = alloca %struct.json_value_t*, align 8
  %3 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %4 = call i8* %3(i64 noundef 32)
  %5 = bitcast i8* %4 to %struct.json_value_t*
  store %struct.json_value_t* %5, %struct.json_value_t** %2, align 8
  %6 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %7 = icmp ne %struct.json_value_t* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.json_value_t* null, %struct.json_value_t** %1, align 8
  br label %15

9:                                                ; preds = %0
  %10 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %11 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %10, i32 0, i32 0
  store %struct.json_value_t* null, %struct.json_value_t** %11, align 8
  %12 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %13 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %12, i32 0, i32 1
  store i32 1, i32* %13, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  store %struct.json_value_t* %14, %struct.json_value_t** %1, align 8
  br label %15

15:                                               ; preds = %9, %8
  %16 = load %struct.json_value_t*, %struct.json_value_t** %1, align 8
  ret %struct.json_value_t* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_value_t* @json_value_deep_copy(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.json_value_t*, align 8
  %6 = alloca %struct.json_value_t*, align 8
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca %struct.json_string*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.json_array_t*, align 8
  %12 = alloca %struct.json_array_t*, align 8
  %13 = alloca %struct.json_object_t*, align 8
  %14 = alloca %struct.json_object_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %3, align 8
  store i64 0, i64* %4, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %5, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %6, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %7, align 8
  store %struct.json_string* null, %struct.json_string** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store %struct.json_array_t* null, %struct.json_array_t** %11, align 8
  store %struct.json_array_t* null, %struct.json_array_t** %12, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %13, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %14, align 8
  store i32 -1, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %17 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %18 = call i32 @json_value_get_type(%struct.json_value_t* noundef %17)
  switch i32 %18, label %153 [
    i32 5, label %19
    i32 4, label %58
    i32 6, label %112
    i32 3, label %116
    i32 2, label %120
    i32 1, label %150
    i32 -1, label %152
  ]

19:                                               ; preds = %1
  %20 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %21 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %20)
  store %struct.json_array_t* %21, %struct.json_array_t** %11, align 8
  %22 = call %struct.json_value_t* @json_value_init_array()
  store %struct.json_value_t* %22, %struct.json_value_t** %5, align 8
  %23 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %24 = icmp eq %struct.json_value_t* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

26:                                               ; preds = %19
  %27 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %28 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %27)
  store %struct.json_array_t* %28, %struct.json_array_t** %12, align 8
  store i64 0, i64* %4, align 8
  br label %29

29:                                               ; preds = %53, %26
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.json_array_t*, %struct.json_array_t** %11, align 8
  %32 = call i64 @json_array_get_count(%struct.json_array_t* noundef %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load %struct.json_array_t*, %struct.json_array_t** %11, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %35, i64 noundef %36)
  store %struct.json_value_t* %37, %struct.json_value_t** %7, align 8
  %38 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %39 = call %struct.json_value_t* @json_value_deep_copy(%struct.json_value_t* noundef %38)
  store %struct.json_value_t* %39, %struct.json_value_t** %6, align 8
  %40 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %41 = icmp eq %struct.json_value_t* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  call void @json_value_free(%struct.json_value_t* noundef %43)
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

44:                                               ; preds = %34
  %45 = load %struct.json_array_t*, %struct.json_array_t** %12, align 8
  %46 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %47 = call i32 @json_array_add(%struct.json_array_t* noundef %45, %struct.json_value_t* noundef %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  call void @json_value_free(%struct.json_value_t* noundef %50)
  %51 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %51)
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %29, !llvm.loop !11

56:                                               ; preds = %29
  %57 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  store %struct.json_value_t* %57, %struct.json_value_t** %2, align 8
  br label %154

58:                                               ; preds = %1
  %59 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %60 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %59)
  store %struct.json_object_t* %60, %struct.json_object_t** %13, align 8
  %61 = call %struct.json_value_t* @json_value_init_object()
  store %struct.json_value_t* %61, %struct.json_value_t** %5, align 8
  %62 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %63 = icmp ne %struct.json_value_t* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

65:                                               ; preds = %58
  %66 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %67 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %66)
  store %struct.json_object_t* %67, %struct.json_object_t** %14, align 8
  store i64 0, i64* %4, align 8
  br label %68

68:                                               ; preds = %107, %65
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.json_object_t*, %struct.json_object_t** %13, align 8
  %71 = call i64 @json_object_get_count(%struct.json_object_t* noundef %70)
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %68
  %74 = load %struct.json_object_t*, %struct.json_object_t** %13, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i8* @json_object_get_name(%struct.json_object_t* noundef %74, i64 noundef %75)
  store i8* %76, i8** %9, align 8
  %77 = load %struct.json_object_t*, %struct.json_object_t** %13, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %77, i8* noundef %78)
  store %struct.json_value_t* %79, %struct.json_value_t** %7, align 8
  %80 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %81 = call %struct.json_value_t* @json_value_deep_copy(%struct.json_value_t* noundef %80)
  store %struct.json_value_t* %81, %struct.json_value_t** %6, align 8
  %82 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %83 = icmp ne %struct.json_value_t* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  %85 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  call void @json_value_free(%struct.json_value_t* noundef %85)
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

86:                                               ; preds = %73
  %87 = load i8*, i8** %9, align 8
  %88 = call i8* @parson_strdup(i8* noundef %87)
  store i8* %88, i8** %16, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %92)
  %93 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  call void @json_value_free(%struct.json_value_t* noundef %93)
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

94:                                               ; preds = %86
  %95 = load %struct.json_object_t*, %struct.json_object_t** %14, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %98 = call i32 @json_object_add(%struct.json_object_t* noundef %95, i8* noundef %96, %struct.json_value_t* noundef %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %103 = load i8*, i8** %16, align 8
  call void %102(i8* noundef %103)
  %104 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %104)
  %105 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  call void @json_value_free(%struct.json_value_t* noundef %105)
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %4, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %4, align 8
  br label %68, !llvm.loop !12

110:                                              ; preds = %68
  %111 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  store %struct.json_value_t* %111, %struct.json_value_t** %2, align 8
  br label %154

112:                                              ; preds = %1
  %113 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %114 = call i32 @json_value_get_boolean(%struct.json_value_t* noundef %113)
  %115 = call %struct.json_value_t* @json_value_init_boolean(i32 noundef %114)
  store %struct.json_value_t* %115, %struct.json_value_t** %2, align 8
  br label %154

116:                                              ; preds = %1
  %117 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %118 = call double @json_value_get_number(%struct.json_value_t* noundef %117)
  %119 = call %struct.json_value_t* @json_value_init_number(double noundef %118)
  store %struct.json_value_t* %119, %struct.json_value_t** %2, align 8
  br label %154

120:                                              ; preds = %1
  %121 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %122 = call %struct.json_string* @json_value_get_string_desc(%struct.json_value_t* noundef %121)
  store %struct.json_string* %122, %struct.json_string** %8, align 8
  %123 = load %struct.json_string*, %struct.json_string** %8, align 8
  %124 = icmp eq %struct.json_string* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

126:                                              ; preds = %120
  %127 = load %struct.json_string*, %struct.json_string** %8, align 8
  %128 = getelementptr inbounds %struct.json_string, %struct.json_string* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.json_string*, %struct.json_string** %8, align 8
  %131 = getelementptr inbounds %struct.json_string, %struct.json_string* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i8* @parson_strndup(i8* noundef %129, i64 noundef %132)
  store i8* %133, i8** %10, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

137:                                              ; preds = %126
  %138 = load i8*, i8** %10, align 8
  %139 = load %struct.json_string*, %struct.json_string** %8, align 8
  %140 = getelementptr inbounds %struct.json_string, %struct.json_string* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call %struct.json_value_t* @json_value_init_string_no_copy(i8* noundef %138, i64 noundef %141)
  store %struct.json_value_t* %142, %struct.json_value_t** %5, align 8
  %143 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %144 = icmp eq %struct.json_value_t* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %147 = load i8*, i8** %10, align 8
  call void %146(i8* noundef %147)
  br label %148

148:                                              ; preds = %145, %137
  %149 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  store %struct.json_value_t* %149, %struct.json_value_t** %2, align 8
  br label %154

150:                                              ; preds = %1
  %151 = call %struct.json_value_t* @json_value_init_null()
  store %struct.json_value_t* %151, %struct.json_value_t** %2, align 8
  br label %154

152:                                              ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

153:                                              ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %154

154:                                              ; preds = %153, %152, %150, %148, %136, %125, %116, %112, %110, %101, %91, %84, %64, %56, %49, %42, %25
  %155 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %155
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_array_add(%struct.json_array_t* noundef %0, %struct.json_value_t* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_array_t*, align 8
  %5 = alloca %struct.json_value_t*, align 8
  %6 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %4, align 8
  store %struct.json_value_t* %1, %struct.json_value_t** %5, align 8
  %7 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %8 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %11 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %16 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 %17, 2
  %19 = icmp ugt i64 %18, 16
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %22 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = mul i64 %23, 2
  br label %26

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i64 [ %24, %20 ], [ 16, %25 ]
  store i64 %27, i64* %6, align 8
  %28 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @json_array_resize(%struct.json_array_t* noundef %28, i64 noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %51

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %36 = call %struct.json_value_t* @json_array_get_wrapping_value(%struct.json_array_t* noundef %35)
  %37 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %38 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %37, i32 0, i32 0
  store %struct.json_value_t* %36, %struct.json_value_t** %38, align 8
  %39 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %40 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %41 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %40, i32 0, i32 1
  %42 = load %struct.json_value_t**, %struct.json_value_t*** %41, align 8
  %43 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %44 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %42, i64 %45
  store %struct.json_value_t* %39, %struct.json_value_t** %46, align 8
  %47 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %48 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %34, %32
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_object_add(%struct.json_object_t* noundef %0, i8* noundef %1, %struct.json_value_t* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_object_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.json_object_t* %0, %struct.json_object_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.json_value_t* %2, %struct.json_value_t** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 -1, i32* %11, align 4
  %12 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %13 = icmp ne %struct.json_object_t* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %19 = icmp ne %struct.json_value_t* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %14, %3
  store i32 -1, i32* %4, align 4
  br label %105

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strlen(i8* noundef %23) #10
  %25 = call i64 @hash_string(i8* noundef %22, i64 noundef %24)
  store i64 %25, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %26 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strlen(i8* noundef %28) #10
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @json_object_get_cell_ix(%struct.json_object_t* noundef %26, i8* noundef %27, i64 noundef %29, i64 noundef %30, i32* noundef %9)
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %105

35:                                               ; preds = %21
  %36 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %37 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %40 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
  %44 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %45 = call i32 @json_object_grow_and_rehash(%struct.json_object_t* noundef %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %105

49:                                               ; preds = %43
  %50 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @strlen(i8* noundef %52) #10
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @json_object_get_cell_ix(%struct.json_object_t* noundef %50, i8* noundef %51, i64 noundef %53, i64 noundef %54, i32* noundef %9)
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %49, %35
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %59 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %58, i32 0, i32 3
  %60 = load i8**, i8*** %59, align 8
  %61 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %62 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  store i8* %57, i8** %64, align 8
  %65 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %66 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %69 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %67, i64* %72, align 8
  %73 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %74 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %75 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %74, i32 0, i32 4
  %76 = load %struct.json_value_t**, %struct.json_value_t*** %75, align 8
  %77 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %78 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %76, i64 %79
  store %struct.json_value_t* %73, %struct.json_value_t** %80, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %83 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %82, i32 0, i32 5
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %86 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  store i64 %81, i64* %88, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %91 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %94 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  store i64 %89, i64* %96, align 8
  %97 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %98 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %102 = call %struct.json_value_t* @json_object_get_wrapping_value(%struct.json_object_t* noundef %101)
  %103 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %104 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %103, i32 0, i32 0
  store %struct.json_value_t* %102, %struct.json_value_t** %104, align 8
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %56, %48, %34, %20
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_serialization_size(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %5 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %7 = call i32 @json_serialize_to_buffer_r(%struct.json_value_t* noundef %5, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 1
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i64 [ 0, %10 ], [ %14, %11 ]
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_serialize_to_buffer_r(%struct.json_value_t* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.json_value_t*, align 8
  %15 = alloca %struct.json_array_t*, align 8
  %16 = alloca %struct.json_object_t*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %14, align 8
  store %struct.json_array_t* null, %struct.json_array_t** %15, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store double 0.000000e+00, double* %19, align 8
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  %28 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %29 = call i32 @json_value_get_type(%struct.json_value_t* noundef %28)
  switch i32 %29, label %707 [
    i32 5, label %30
    i32 4, label %261
    i32 2, label %563
    i32 6, label %592
    i32 3, label %640
    i32 1, label %684
    i32 -1, label %706
  ]

30:                                               ; preds = %5
  %31 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %32 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %31)
  store %struct.json_array_t* %32, %struct.json_array_t** %15, align 8
  %33 = load %struct.json_array_t*, %struct.json_array_t** %15, align 8
  %34 = call i64 @json_array_get_count(%struct.json_array_t* noundef %33)
  store i64 %34, i64* %18, align 8
  br label %35

35:                                               ; preds = %30
  store i32 1, i32* %20, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %20, align 4
  %41 = sext i32 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 %41, i1 false)
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %20, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i32, i32* %20, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %38, %35
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %21, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %21, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %18, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60
  store i32 1, i32* %20, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %20, align 4
  %67 = sext i32 %66 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %65, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %67, i1 false)
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i32, i32* %20, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %8, align 8
  br label %76

76:                                               ; preds = %64, %61
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %21, align 4
  br label %80

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %57, %54
  store i64 0, i64* %17, align 8
  br label %82

82:                                               ; preds = %198, %81
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %18, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %201

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89
  store i32 0, i32* %23, align 4
  store i32 0, i32* %23, align 4
  br label %91

91:                                               ; preds = %117, %90
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96
  store i32 4, i32* %20, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %101, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %103, i1 false)
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load i32, i32* %20, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %8, align 8
  br label %112

112:                                              ; preds = %100, %97
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %21, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %21, align 4
  br label %116

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %23, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %23, align 4
  br label %91, !llvm.loop !13

120:                                              ; preds = %91
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %86
  %123 = load %struct.json_array_t*, %struct.json_array_t** %15, align 8
  %124 = load i64, i64* %17, align 8
  %125 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %123, i64 noundef %124)
  store %struct.json_value_t* %125, %struct.json_value_t** %14, align 8
  %126 = load %struct.json_value_t*, %struct.json_value_t** %14, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* %10, align 4
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @json_serialize_to_buffer_r(%struct.json_value_t* noundef %126, i8* noundef %127, i32 noundef %129, i32 noundef %130, i8* noundef %131)
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  store i32 -1, i32* %6, align 4
  br label %708

136:                                              ; preds = %122
  %137 = load i8*, i8** %8, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* %20, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %8, align 8
  br label %144

144:                                              ; preds = %139, %136
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %21, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %21, align 4
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* %18, align 8
  %150 = sub i64 %149, 1
  %151 = icmp ult i64 %148, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152
  store i32 1, i32* %20, align 4
  %154 = load i8*, i8** %8, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = load i8*, i8** %8, align 8
  %158 = load i32, i32* %20, align 4
  %159 = sext i32 %158 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %157, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 %159, i1 false)
  %160 = load i8*, i8** %8, align 8
  %161 = load i32, i32* %20, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  store i8 0, i8* %163, align 1
  %164 = load i32, i32* %20, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %8, align 8
  br label %168

168:                                              ; preds = %156, %153
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* %21, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %21, align 4
  br label %172

172:                                              ; preds = %168
  br label %173

173:                                              ; preds = %172, %144
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %173
  br label %177

177:                                              ; preds = %176
  store i32 1, i32* %20, align 4
  %178 = load i8*, i8** %8, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %192

180:                                              ; preds = %177
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %181, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %183, i1 false)
  %184 = load i8*, i8** %8, align 8
  %185 = load i32, i32* %20, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 0, i8* %187, align 1
  %188 = load i32, i32* %20, align 4
  %189 = load i8*, i8** %8, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8* %191, i8** %8, align 8
  br label %192

192:                                              ; preds = %180, %177
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %21, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %21, align 4
  br label %196

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196, %173
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %17, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %17, align 8
  br label %82, !llvm.loop !14

201:                                              ; preds = %82
  %202 = load i64, i64* %18, align 8
  %203 = icmp ugt i64 %202, 0
  br i1 %203, label %204, label %239

204:                                              ; preds = %201
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %239

207:                                              ; preds = %204
  br label %208

208:                                              ; preds = %207
  store i32 0, i32* %24, align 4
  store i32 0, i32* %24, align 4
  br label %209

209:                                              ; preds = %234, %208
  %210 = load i32, i32* %24, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %237

213:                                              ; preds = %209
  br label %214

214:                                              ; preds = %213
  store i32 4, i32* %20, align 4
  %215 = load i8*, i8** %8, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load i8*, i8** %8, align 8
  %219 = load i32, i32* %20, align 4
  %220 = sext i32 %219 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %218, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %220, i1 false)
  %221 = load i8*, i8** %8, align 8
  %222 = load i32, i32* %20, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  store i8 0, i8* %224, align 1
  %225 = load i32, i32* %20, align 4
  %226 = load i8*, i8** %8, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  store i8* %228, i8** %8, align 8
  br label %229

229:                                              ; preds = %217, %214
  %230 = load i32, i32* %20, align 4
  %231 = load i32, i32* %21, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %21, align 4
  br label %233

233:                                              ; preds = %229
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %24, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %24, align 4
  br label %209, !llvm.loop !15

237:                                              ; preds = %209
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238, %204, %201
  br label %240

240:                                              ; preds = %239
  store i32 1, i32* %20, align 4
  %241 = load i8*, i8** %8, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %255

243:                                              ; preds = %240
  %244 = load i8*, i8** %8, align 8
  %245 = load i32, i32* %20, align 4
  %246 = sext i32 %245 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %244, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 %246, i1 false)
  %247 = load i8*, i8** %8, align 8
  %248 = load i32, i32* %20, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  store i8 0, i8* %250, align 1
  %251 = load i32, i32* %20, align 4
  %252 = load i8*, i8** %8, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  store i8* %254, i8** %8, align 8
  br label %255

255:                                              ; preds = %243, %240
  %256 = load i32, i32* %20, align 4
  %257 = load i32, i32* %21, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %21, align 4
  br label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %21, align 4
  store i32 %260, i32* %6, align 4
  br label %708

261:                                              ; preds = %5
  %262 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %263 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %262)
  store %struct.json_object_t* %263, %struct.json_object_t** %16, align 8
  %264 = load %struct.json_object_t*, %struct.json_object_t** %16, align 8
  %265 = call i64 @json_object_get_count(%struct.json_object_t* noundef %264)
  store i64 %265, i64* %18, align 8
  br label %266

266:                                              ; preds = %261
  store i32 1, i32* %20, align 4
  %267 = load i8*, i8** %8, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %281

269:                                              ; preds = %266
  %270 = load i8*, i8** %8, align 8
  %271 = load i32, i32* %20, align 4
  %272 = sext i32 %271 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %270, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i64 %272, i1 false)
  %273 = load i8*, i8** %8, align 8
  %274 = load i32, i32* %20, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  store i8 0, i8* %276, align 1
  %277 = load i32, i32* %20, align 4
  %278 = load i8*, i8** %8, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i8, i8* %278, i64 %279
  store i8* %280, i8** %8, align 8
  br label %281

281:                                              ; preds = %269, %266
  %282 = load i32, i32* %20, align 4
  %283 = load i32, i32* %21, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %21, align 4
  br label %285

285:                                              ; preds = %281
  %286 = load i64, i64* %18, align 8
  %287 = icmp ugt i64 %286, 0
  br i1 %287, label %288, label %312

288:                                              ; preds = %285
  %289 = load i32, i32* %10, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %312

291:                                              ; preds = %288
  br label %292

292:                                              ; preds = %291
  store i32 1, i32* %20, align 4
  %293 = load i8*, i8** %8, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %307

295:                                              ; preds = %292
  %296 = load i8*, i8** %8, align 8
  %297 = load i32, i32* %20, align 4
  %298 = sext i32 %297 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %296, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %298, i1 false)
  %299 = load i8*, i8** %8, align 8
  %300 = load i32, i32* %20, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  store i8 0, i8* %302, align 1
  %303 = load i32, i32* %20, align 4
  %304 = load i8*, i8** %8, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  store i8* %306, i8** %8, align 8
  br label %307

307:                                              ; preds = %295, %292
  %308 = load i32, i32* %20, align 4
  %309 = load i32, i32* %21, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %21, align 4
  br label %311

311:                                              ; preds = %307
  br label %312

312:                                              ; preds = %311, %288, %285
  store i64 0, i64* %17, align 8
  br label %313

313:                                              ; preds = %500, %312
  %314 = load i64, i64* %17, align 8
  %315 = load i64, i64* %18, align 8
  %316 = icmp ult i64 %314, %315
  br i1 %316, label %317, label %503

317:                                              ; preds = %313
  %318 = load %struct.json_object_t*, %struct.json_object_t** %16, align 8
  %319 = load i64, i64* %17, align 8
  %320 = call i8* @json_object_get_name(%struct.json_object_t* noundef %318, i64 noundef %319)
  store i8* %320, i8** %12, align 8
  %321 = load i8*, i8** %12, align 8
  %322 = icmp eq i8* %321, null
  br i1 %322, label %323, label %324

323:                                              ; preds = %317
  store i32 -1, i32* %6, align 4
  br label %708

324:                                              ; preds = %317
  %325 = load i32, i32* %10, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %360

327:                                              ; preds = %324
  br label %328

328:                                              ; preds = %327
  store i32 0, i32* %25, align 4
  store i32 0, i32* %25, align 4
  br label %329

329:                                              ; preds = %355, %328
  %330 = load i32, i32* %25, align 4
  %331 = load i32, i32* %9, align 4
  %332 = add nsw i32 %331, 1
  %333 = icmp slt i32 %330, %332
  br i1 %333, label %334, label %358

334:                                              ; preds = %329
  br label %335

335:                                              ; preds = %334
  store i32 4, i32* %20, align 4
  %336 = load i8*, i8** %8, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %338, label %350

338:                                              ; preds = %335
  %339 = load i8*, i8** %8, align 8
  %340 = load i32, i32* %20, align 4
  %341 = sext i32 %340 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %339, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %341, i1 false)
  %342 = load i8*, i8** %8, align 8
  %343 = load i32, i32* %20, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  store i8 0, i8* %345, align 1
  %346 = load i32, i32* %20, align 4
  %347 = load i8*, i8** %8, align 8
  %348 = sext i32 %346 to i64
  %349 = getelementptr inbounds i8, i8* %347, i64 %348
  store i8* %349, i8** %8, align 8
  br label %350

350:                                              ; preds = %338, %335
  %351 = load i32, i32* %20, align 4
  %352 = load i32, i32* %21, align 4
  %353 = add nsw i32 %352, %351
  store i32 %353, i32* %21, align 4
  br label %354

354:                                              ; preds = %350
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %25, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %25, align 4
  br label %329, !llvm.loop !16

358:                                              ; preds = %329
  br label %359

359:                                              ; preds = %358
  br label %360

360:                                              ; preds = %359, %324
  %361 = load i8*, i8** %12, align 8
  %362 = load i8*, i8** %12, align 8
  %363 = call i64 @strlen(i8* noundef %362) #10
  %364 = load i8*, i8** %8, align 8
  %365 = call i32 @json_serialize_string(i8* noundef %361, i64 noundef %363, i8* noundef %364)
  store i32 %365, i32* %20, align 4
  %366 = load i32, i32* %20, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %360
  store i32 -1, i32* %6, align 4
  br label %708

369:                                              ; preds = %360
  %370 = load i8*, i8** %8, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %372, label %377

372:                                              ; preds = %369
  %373 = load i32, i32* %20, align 4
  %374 = load i8*, i8** %8, align 8
  %375 = sext i32 %373 to i64
  %376 = getelementptr inbounds i8, i8* %374, i64 %375
  store i8* %376, i8** %8, align 8
  br label %377

377:                                              ; preds = %372, %369
  %378 = load i32, i32* %20, align 4
  %379 = load i32, i32* %21, align 4
  %380 = add nsw i32 %379, %378
  store i32 %380, i32* %21, align 4
  br label %381

381:                                              ; preds = %377
  store i32 1, i32* %20, align 4
  %382 = load i8*, i8** %8, align 8
  %383 = icmp ne i8* %382, null
  br i1 %383, label %384, label %396

384:                                              ; preds = %381
  %385 = load i8*, i8** %8, align 8
  %386 = load i32, i32* %20, align 4
  %387 = sext i32 %386 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %385, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 %387, i1 false)
  %388 = load i8*, i8** %8, align 8
  %389 = load i32, i32* %20, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, i8* %388, i64 %390
  store i8 0, i8* %391, align 1
  %392 = load i32, i32* %20, align 4
  %393 = load i8*, i8** %8, align 8
  %394 = sext i32 %392 to i64
  %395 = getelementptr inbounds i8, i8* %393, i64 %394
  store i8* %395, i8** %8, align 8
  br label %396

396:                                              ; preds = %384, %381
  %397 = load i32, i32* %20, align 4
  %398 = load i32, i32* %21, align 4
  %399 = add nsw i32 %398, %397
  store i32 %399, i32* %21, align 4
  br label %400

400:                                              ; preds = %396
  %401 = load i32, i32* %10, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %424

403:                                              ; preds = %400
  br label %404

404:                                              ; preds = %403
  store i32 1, i32* %20, align 4
  %405 = load i8*, i8** %8, align 8
  %406 = icmp ne i8* %405, null
  br i1 %406, label %407, label %419

407:                                              ; preds = %404
  %408 = load i8*, i8** %8, align 8
  %409 = load i32, i32* %20, align 4
  %410 = sext i32 %409 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %408, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 %410, i1 false)
  %411 = load i8*, i8** %8, align 8
  %412 = load i32, i32* %20, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %411, i64 %413
  store i8 0, i8* %414, align 1
  %415 = load i32, i32* %20, align 4
  %416 = load i8*, i8** %8, align 8
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i8, i8* %416, i64 %417
  store i8* %418, i8** %8, align 8
  br label %419

419:                                              ; preds = %407, %404
  %420 = load i32, i32* %20, align 4
  %421 = load i32, i32* %21, align 4
  %422 = add nsw i32 %421, %420
  store i32 %422, i32* %21, align 4
  br label %423

423:                                              ; preds = %419
  br label %424

424:                                              ; preds = %423, %400
  %425 = load %struct.json_object_t*, %struct.json_object_t** %16, align 8
  %426 = load i64, i64* %17, align 8
  %427 = call %struct.json_value_t* @json_object_get_value_at(%struct.json_object_t* noundef %425, i64 noundef %426)
  store %struct.json_value_t* %427, %struct.json_value_t** %14, align 8
  %428 = load %struct.json_value_t*, %struct.json_value_t** %14, align 8
  %429 = load i8*, i8** %8, align 8
  %430 = load i32, i32* %9, align 4
  %431 = add nsw i32 %430, 1
  %432 = load i32, i32* %10, align 4
  %433 = load i8*, i8** %11, align 8
  %434 = call i32 @json_serialize_to_buffer_r(%struct.json_value_t* noundef %428, i8* noundef %429, i32 noundef %431, i32 noundef %432, i8* noundef %433)
  store i32 %434, i32* %20, align 4
  %435 = load i32, i32* %20, align 4
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %424
  store i32 -1, i32* %6, align 4
  br label %708

438:                                              ; preds = %424
  %439 = load i8*, i8** %8, align 8
  %440 = icmp ne i8* %439, null
  br i1 %440, label %441, label %446

441:                                              ; preds = %438
  %442 = load i32, i32* %20, align 4
  %443 = load i8*, i8** %8, align 8
  %444 = sext i32 %442 to i64
  %445 = getelementptr inbounds i8, i8* %443, i64 %444
  store i8* %445, i8** %8, align 8
  br label %446

446:                                              ; preds = %441, %438
  %447 = load i32, i32* %20, align 4
  %448 = load i32, i32* %21, align 4
  %449 = add nsw i32 %448, %447
  store i32 %449, i32* %21, align 4
  %450 = load i64, i64* %17, align 8
  %451 = load i64, i64* %18, align 8
  %452 = sub i64 %451, 1
  %453 = icmp ult i64 %450, %452
  br i1 %453, label %454, label %475

454:                                              ; preds = %446
  br label %455

455:                                              ; preds = %454
  store i32 1, i32* %20, align 4
  %456 = load i8*, i8** %8, align 8
  %457 = icmp ne i8* %456, null
  br i1 %457, label %458, label %470

458:                                              ; preds = %455
  %459 = load i8*, i8** %8, align 8
  %460 = load i32, i32* %20, align 4
  %461 = sext i32 %460 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %459, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 %461, i1 false)
  %462 = load i8*, i8** %8, align 8
  %463 = load i32, i32* %20, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i8, i8* %462, i64 %464
  store i8 0, i8* %465, align 1
  %466 = load i32, i32* %20, align 4
  %467 = load i8*, i8** %8, align 8
  %468 = sext i32 %466 to i64
  %469 = getelementptr inbounds i8, i8* %467, i64 %468
  store i8* %469, i8** %8, align 8
  br label %470

470:                                              ; preds = %458, %455
  %471 = load i32, i32* %20, align 4
  %472 = load i32, i32* %21, align 4
  %473 = add nsw i32 %472, %471
  store i32 %473, i32* %21, align 4
  br label %474

474:                                              ; preds = %470
  br label %475

475:                                              ; preds = %474, %446
  %476 = load i32, i32* %10, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %499

478:                                              ; preds = %475
  br label %479

479:                                              ; preds = %478
  store i32 1, i32* %20, align 4
  %480 = load i8*, i8** %8, align 8
  %481 = icmp ne i8* %480, null
  br i1 %481, label %482, label %494

482:                                              ; preds = %479
  %483 = load i8*, i8** %8, align 8
  %484 = load i32, i32* %20, align 4
  %485 = sext i32 %484 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %483, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %485, i1 false)
  %486 = load i8*, i8** %8, align 8
  %487 = load i32, i32* %20, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8, i8* %486, i64 %488
  store i8 0, i8* %489, align 1
  %490 = load i32, i32* %20, align 4
  %491 = load i8*, i8** %8, align 8
  %492 = sext i32 %490 to i64
  %493 = getelementptr inbounds i8, i8* %491, i64 %492
  store i8* %493, i8** %8, align 8
  br label %494

494:                                              ; preds = %482, %479
  %495 = load i32, i32* %20, align 4
  %496 = load i32, i32* %21, align 4
  %497 = add nsw i32 %496, %495
  store i32 %497, i32* %21, align 4
  br label %498

498:                                              ; preds = %494
  br label %499

499:                                              ; preds = %498, %475
  br label %500

500:                                              ; preds = %499
  %501 = load i64, i64* %17, align 8
  %502 = add i64 %501, 1
  store i64 %502, i64* %17, align 8
  br label %313, !llvm.loop !17

503:                                              ; preds = %313
  %504 = load i64, i64* %18, align 8
  %505 = icmp ugt i64 %504, 0
  br i1 %505, label %506, label %541

506:                                              ; preds = %503
  %507 = load i32, i32* %10, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %541

509:                                              ; preds = %506
  br label %510

510:                                              ; preds = %509
  store i32 0, i32* %26, align 4
  store i32 0, i32* %26, align 4
  br label %511

511:                                              ; preds = %536, %510
  %512 = load i32, i32* %26, align 4
  %513 = load i32, i32* %9, align 4
  %514 = icmp slt i32 %512, %513
  br i1 %514, label %515, label %539

515:                                              ; preds = %511
  br label %516

516:                                              ; preds = %515
  store i32 4, i32* %20, align 4
  %517 = load i8*, i8** %8, align 8
  %518 = icmp ne i8* %517, null
  br i1 %518, label %519, label %531

519:                                              ; preds = %516
  %520 = load i8*, i8** %8, align 8
  %521 = load i32, i32* %20, align 4
  %522 = sext i32 %521 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %520, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %522, i1 false)
  %523 = load i8*, i8** %8, align 8
  %524 = load i32, i32* %20, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i8, i8* %523, i64 %525
  store i8 0, i8* %526, align 1
  %527 = load i32, i32* %20, align 4
  %528 = load i8*, i8** %8, align 8
  %529 = sext i32 %527 to i64
  %530 = getelementptr inbounds i8, i8* %528, i64 %529
  store i8* %530, i8** %8, align 8
  br label %531

531:                                              ; preds = %519, %516
  %532 = load i32, i32* %20, align 4
  %533 = load i32, i32* %21, align 4
  %534 = add nsw i32 %533, %532
  store i32 %534, i32* %21, align 4
  br label %535

535:                                              ; preds = %531
  br label %536

536:                                              ; preds = %535
  %537 = load i32, i32* %26, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %26, align 4
  br label %511, !llvm.loop !18

539:                                              ; preds = %511
  br label %540

540:                                              ; preds = %539
  br label %541

541:                                              ; preds = %540, %506, %503
  br label %542

542:                                              ; preds = %541
  store i32 1, i32* %20, align 4
  %543 = load i8*, i8** %8, align 8
  %544 = icmp ne i8* %543, null
  br i1 %544, label %545, label %557

545:                                              ; preds = %542
  %546 = load i8*, i8** %8, align 8
  %547 = load i32, i32* %20, align 4
  %548 = sext i32 %547 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %546, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 %548, i1 false)
  %549 = load i8*, i8** %8, align 8
  %550 = load i32, i32* %20, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, i8* %549, i64 %551
  store i8 0, i8* %552, align 1
  %553 = load i32, i32* %20, align 4
  %554 = load i8*, i8** %8, align 8
  %555 = sext i32 %553 to i64
  %556 = getelementptr inbounds i8, i8* %554, i64 %555
  store i8* %556, i8** %8, align 8
  br label %557

557:                                              ; preds = %545, %542
  %558 = load i32, i32* %20, align 4
  %559 = load i32, i32* %21, align 4
  %560 = add nsw i32 %559, %558
  store i32 %560, i32* %21, align 4
  br label %561

561:                                              ; preds = %557
  %562 = load i32, i32* %21, align 4
  store i32 %562, i32* %6, align 4
  br label %708

563:                                              ; preds = %5
  %564 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %565 = call i8* @json_value_get_string(%struct.json_value_t* noundef %564)
  store i8* %565, i8** %13, align 8
  %566 = load i8*, i8** %13, align 8
  %567 = icmp eq i8* %566, null
  br i1 %567, label %568, label %569

568:                                              ; preds = %563
  store i32 -1, i32* %6, align 4
  br label %708

569:                                              ; preds = %563
  %570 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %571 = call i64 @json_value_get_string_len(%struct.json_value_t* noundef %570)
  store i64 %571, i64* %22, align 8
  %572 = load i8*, i8** %13, align 8
  %573 = load i64, i64* %22, align 8
  %574 = load i8*, i8** %8, align 8
  %575 = call i32 @json_serialize_string(i8* noundef %572, i64 noundef %573, i8* noundef %574)
  store i32 %575, i32* %20, align 4
  %576 = load i32, i32* %20, align 4
  %577 = icmp slt i32 %576, 0
  br i1 %577, label %578, label %579

578:                                              ; preds = %569
  store i32 -1, i32* %6, align 4
  br label %708

579:                                              ; preds = %569
  %580 = load i8*, i8** %8, align 8
  %581 = icmp ne i8* %580, null
  br i1 %581, label %582, label %587

582:                                              ; preds = %579
  %583 = load i32, i32* %20, align 4
  %584 = load i8*, i8** %8, align 8
  %585 = sext i32 %583 to i64
  %586 = getelementptr inbounds i8, i8* %584, i64 %585
  store i8* %586, i8** %8, align 8
  br label %587

587:                                              ; preds = %582, %579
  %588 = load i32, i32* %20, align 4
  %589 = load i32, i32* %21, align 4
  %590 = add nsw i32 %589, %588
  store i32 %590, i32* %21, align 4
  %591 = load i32, i32* %21, align 4
  store i32 %591, i32* %6, align 4
  br label %708

592:                                              ; preds = %5
  %593 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %594 = call i32 @json_value_get_boolean(%struct.json_value_t* noundef %593)
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %617

596:                                              ; preds = %592
  br label %597

597:                                              ; preds = %596
  store i32 4, i32* %20, align 4
  %598 = load i8*, i8** %8, align 8
  %599 = icmp ne i8* %598, null
  br i1 %599, label %600, label %612

600:                                              ; preds = %597
  %601 = load i8*, i8** %8, align 8
  %602 = load i32, i32* %20, align 4
  %603 = sext i32 %602 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %601, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %603, i1 false)
  %604 = load i8*, i8** %8, align 8
  %605 = load i32, i32* %20, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8, i8* %604, i64 %606
  store i8 0, i8* %607, align 1
  %608 = load i32, i32* %20, align 4
  %609 = load i8*, i8** %8, align 8
  %610 = sext i32 %608 to i64
  %611 = getelementptr inbounds i8, i8* %609, i64 %610
  store i8* %611, i8** %8, align 8
  br label %612

612:                                              ; preds = %600, %597
  %613 = load i32, i32* %20, align 4
  %614 = load i32, i32* %21, align 4
  %615 = add nsw i32 %614, %613
  store i32 %615, i32* %21, align 4
  br label %616

616:                                              ; preds = %612
  br label %638

617:                                              ; preds = %592
  br label %618

618:                                              ; preds = %617
  store i32 5, i32* %20, align 4
  %619 = load i8*, i8** %8, align 8
  %620 = icmp ne i8* %619, null
  br i1 %620, label %621, label %633

621:                                              ; preds = %618
  %622 = load i8*, i8** %8, align 8
  %623 = load i32, i32* %20, align 4
  %624 = sext i32 %623 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %622, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %624, i1 false)
  %625 = load i8*, i8** %8, align 8
  %626 = load i32, i32* %20, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i8, i8* %625, i64 %627
  store i8 0, i8* %628, align 1
  %629 = load i32, i32* %20, align 4
  %630 = load i8*, i8** %8, align 8
  %631 = sext i32 %629 to i64
  %632 = getelementptr inbounds i8, i8* %630, i64 %631
  store i8* %632, i8** %8, align 8
  br label %633

633:                                              ; preds = %621, %618
  %634 = load i32, i32* %20, align 4
  %635 = load i32, i32* %21, align 4
  %636 = add nsw i32 %635, %634
  store i32 %636, i32* %21, align 4
  br label %637

637:                                              ; preds = %633
  br label %638

638:                                              ; preds = %637, %616
  %639 = load i32, i32* %21, align 4
  store i32 %639, i32* %6, align 4
  br label %708

640:                                              ; preds = %5
  %641 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %642 = call double @json_value_get_number(%struct.json_value_t* noundef %641)
  store double %642, double* %19, align 8
  %643 = load i8*, i8** %8, align 8
  %644 = icmp ne i8* %643, null
  br i1 %644, label %645, label %647

645:                                              ; preds = %640
  %646 = load i8*, i8** %8, align 8
  store i8* %646, i8** %11, align 8
  br label %647

647:                                              ; preds = %645, %640
  %648 = load i32 (double, i8*)*, i32 (double, i8*)** @parson_number_serialization_function, align 8
  %649 = icmp ne i32 (double, i8*)* %648, null
  br i1 %649, label %650, label %655

650:                                              ; preds = %647
  %651 = load i32 (double, i8*)*, i32 (double, i8*)** @parson_number_serialization_function, align 8
  %652 = load double, double* %19, align 8
  %653 = load i8*, i8** %11, align 8
  %654 = call i32 %651(double noundef %652, i8* noundef %653)
  store i32 %654, i32* %20, align 4
  br label %667

655:                                              ; preds = %647
  %656 = load i8*, i8** @parson_float_format, align 8
  %657 = icmp ne i8* %656, null
  br i1 %657, label %658, label %660

658:                                              ; preds = %655
  %659 = load i8*, i8** @parson_float_format, align 8
  br label %661

660:                                              ; preds = %655
  br label %661

661:                                              ; preds = %660, %658
  %662 = phi i8* [ %659, %658 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), %660 ]
  store i8* %662, i8** %27, align 8
  %663 = load i8*, i8** %11, align 8
  %664 = load i8*, i8** %27, align 8
  %665 = load double, double* %19, align 8
  %666 = call i32 (i8*, i8*, ...) @parson_sprintf(i8* noundef %663, i8* noundef %664, double noundef %665)
  store i32 %666, i32* %20, align 4
  br label %667

667:                                              ; preds = %661, %650
  %668 = load i32, i32* %20, align 4
  %669 = icmp slt i32 %668, 0
  br i1 %669, label %670, label %671

670:                                              ; preds = %667
  store i32 -1, i32* %6, align 4
  br label %708

671:                                              ; preds = %667
  %672 = load i8*, i8** %8, align 8
  %673 = icmp ne i8* %672, null
  br i1 %673, label %674, label %679

674:                                              ; preds = %671
  %675 = load i32, i32* %20, align 4
  %676 = load i8*, i8** %8, align 8
  %677 = sext i32 %675 to i64
  %678 = getelementptr inbounds i8, i8* %676, i64 %677
  store i8* %678, i8** %8, align 8
  br label %679

679:                                              ; preds = %674, %671
  %680 = load i32, i32* %20, align 4
  %681 = load i32, i32* %21, align 4
  %682 = add nsw i32 %681, %680
  store i32 %682, i32* %21, align 4
  %683 = load i32, i32* %21, align 4
  store i32 %683, i32* %6, align 4
  br label %708

684:                                              ; preds = %5
  br label %685

685:                                              ; preds = %684
  store i32 4, i32* %20, align 4
  %686 = load i8*, i8** %8, align 8
  %687 = icmp ne i8* %686, null
  br i1 %687, label %688, label %700

688:                                              ; preds = %685
  %689 = load i8*, i8** %8, align 8
  %690 = load i32, i32* %20, align 4
  %691 = sext i32 %690 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %689, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %691, i1 false)
  %692 = load i8*, i8** %8, align 8
  %693 = load i32, i32* %20, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i8, i8* %692, i64 %694
  store i8 0, i8* %695, align 1
  %696 = load i32, i32* %20, align 4
  %697 = load i8*, i8** %8, align 8
  %698 = sext i32 %696 to i64
  %699 = getelementptr inbounds i8, i8* %697, i64 %698
  store i8* %699, i8** %8, align 8
  br label %700

700:                                              ; preds = %688, %685
  %701 = load i32, i32* %20, align 4
  %702 = load i32, i32* %21, align 4
  %703 = add nsw i32 %702, %701
  store i32 %703, i32* %21, align 4
  br label %704

704:                                              ; preds = %700
  %705 = load i32, i32* %21, align 4
  store i32 %705, i32* %6, align 4
  br label %708

706:                                              ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %708

707:                                              ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %708

708:                                              ; preds = %707, %706, %704, %679, %670, %638, %587, %578, %568, %561, %437, %368, %323, %259, %135
  %709 = load i32, i32* %6, align 4
  ret i32 %709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_buffer(%struct.json_value_t* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_value_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 -1, i32* %8, align 4
  %10 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %11 = call i64 @json_serialization_size(%struct.json_value_t* noundef %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %27

19:                                               ; preds = %14
  %20 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @json_serialize_to_buffer_r(%struct.json_value_t* noundef %20, i8* noundef %21, i32 noundef 0, i32 noundef 0, i8* noundef null)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_file(%struct.json_value_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_value_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  %9 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %10 = call i8* @json_serialize_to_string(%struct.json_value_t* noundef %9)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call noalias %struct._IO_FILE* @fopen(i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %7, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  call void @json_free_serialized_string(i8* noundef %20)
  store i32 -1, i32* %3, align 4
  br label %35

21:                                               ; preds = %14
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %24 = call i32 @fputs(i8* noundef %22, %struct._IO_FILE* noundef %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %29 = call i32 @fclose(%struct._IO_FILE* noundef %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i8*, i8** %8, align 8
  call void @json_free_serialized_string(i8* noundef %33)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %19, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_serialize_to_string(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %3, align 8
  store i32 -1, i32* %4, align 4
  %7 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %8 = call i64 @json_serialization_size(%struct.json_value_t* noundef %7)
  store i64 %8, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %30

12:                                               ; preds = %1
  %13 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i8* %13(i64 noundef %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i8* null, i8** %2, align 8
  br label %30

19:                                               ; preds = %12
  %20 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @json_serialize_to_buffer(%struct.json_value_t* noundef %20, i8* noundef %21, i64 noundef %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  call void @json_free_serialized_string(i8* noundef %27)
  store i8* null, i8** %2, align 8
  br label %30

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %28, %26, %18, %11
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_free_serialized_string(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %4 = load i8*, i8** %2, align 8
  call void %3(i8* noundef %4)
  ret void
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_serialization_size_pretty(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %5 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %7 = call i32 @json_serialize_to_buffer_r(%struct.json_value_t* noundef %5, i8* noundef null, i32 noundef 0, i32 noundef 1, i8* noundef %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 1
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i64 [ 0, %10 ], [ %14, %11 ]
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_buffer_pretty(%struct.json_value_t* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_value_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 -1, i32* %8, align 4
  %10 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %11 = call i64 @json_serialization_size_pretty(%struct.json_value_t* noundef %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %27

19:                                               ; preds = %14
  %20 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @json_serialize_to_buffer_r(%struct.json_value_t* noundef %20, i8* noundef %21, i32 noundef 0, i32 noundef 1, i8* noundef null)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_file_pretty(%struct.json_value_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_value_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  %9 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %10 = call i8* @json_serialize_to_string_pretty(%struct.json_value_t* noundef %9)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call noalias %struct._IO_FILE* @fopen(i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %7, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  call void @json_free_serialized_string(i8* noundef %20)
  store i32 -1, i32* %3, align 4
  br label %35

21:                                               ; preds = %14
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %24 = call i32 @fputs(i8* noundef %22, %struct._IO_FILE* noundef %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %29 = call i32 @fclose(%struct._IO_FILE* noundef %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i8*, i8** %8, align 8
  call void @json_free_serialized_string(i8* noundef %33)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %19, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_serialize_to_string_pretty(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %3, align 8
  store i32 -1, i32* %4, align 4
  %7 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %8 = call i64 @json_serialization_size_pretty(%struct.json_value_t* noundef %7)
  store i64 %8, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %30

12:                                               ; preds = %1
  %13 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i8* %13(i64 noundef %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i8* null, i8** %2, align 8
  br label %30

19:                                               ; preds = %12
  %20 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @json_serialize_to_buffer_pretty(%struct.json_value_t* noundef %20, i8* noundef %21, i64 noundef %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  call void @json_free_serialized_string(i8* noundef %27)
  store i8* null, i8** %2, align 8
  br label %30

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %28, %26, %18, %11
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_remove(%struct.json_array_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_array_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %8 = icmp eq %struct.json_array_t* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %12 = call i64 @json_array_get_count(%struct.json_array_t* noundef %11)
  %13 = icmp uge i64 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %43

15:                                               ; preds = %9
  %16 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %16, i64 noundef %17)
  call void @json_value_free(%struct.json_value_t* noundef %18)
  %19 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %20 = call i64 @json_array_get_count(%struct.json_array_t* noundef %19)
  %21 = sub i64 %20, 1
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %21, %22
  %24 = mul i64 %23, 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %26 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %25, i32 0, i32 1
  %27 = load %struct.json_value_t**, %struct.json_value_t*** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %27, i64 %28
  %30 = bitcast %struct.json_value_t** %29 to i8*
  %31 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %32 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %31, i32 0, i32 1
  %33 = load %struct.json_value_t**, %struct.json_value_t*** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %33, i64 %34
  %36 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %35, i64 1
  %37 = bitcast %struct.json_value_t** %36 to i8*
  %38 = load i64, i64* %6, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %37, i64 %38, i1 false)
  %39 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %40 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, 1
  store i64 %42, i64* %40, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %15, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_value(%struct.json_array_t* noundef %0, i64 noundef %1, %struct.json_value_t* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_array_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.json_value_t* %2, %struct.json_value_t** %7, align 8
  %8 = load %struct.json_array_t*, %struct.json_array_t** %5, align 8
  %9 = icmp eq %struct.json_array_t* %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %12 = icmp eq %struct.json_value_t* %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %15 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %14, i32 0, i32 0
  %16 = load %struct.json_value_t*, %struct.json_value_t** %15, align 8
  %17 = icmp ne %struct.json_value_t* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.json_array_t*, %struct.json_array_t** %5, align 8
  %21 = call i64 @json_array_get_count(%struct.json_array_t* noundef %20)
  %22 = icmp uge i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13, %10, %3
  store i32 -1, i32* %4, align 4
  br label %38

24:                                               ; preds = %18
  %25 = load %struct.json_array_t*, %struct.json_array_t** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %25, i64 noundef %26)
  call void @json_value_free(%struct.json_value_t* noundef %27)
  %28 = load %struct.json_array_t*, %struct.json_array_t** %5, align 8
  %29 = call %struct.json_value_t* @json_array_get_wrapping_value(%struct.json_array_t* noundef %28)
  %30 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %31 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %30, i32 0, i32 0
  store %struct.json_value_t* %29, %struct.json_value_t** %31, align 8
  %32 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %33 = load %struct.json_array_t*, %struct.json_array_t** %5, align 8
  %34 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %33, i32 0, i32 1
  %35 = load %struct.json_value_t**, %struct.json_value_t*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %35, i64 %36
  store %struct.json_value_t* %32, %struct.json_value_t** %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %24, %23
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_string(%struct.json_array_t* noundef %0, i64 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_array_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.json_value_t* @json_value_init_string(i8* noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %8, align 8
  %11 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %12 = icmp eq %struct.json_value_t* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.json_array_t*, %struct.json_array_t** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %18 = call i32 @json_array_replace_value(%struct.json_array_t* noundef %15, i64 noundef %16, %struct.json_value_t* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  call void @json_value_free(%struct.json_value_t* noundef %21)
  store i32 -1, i32* %4, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %20, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_string_with_len(%struct.json_array_t* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.json_array_t*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call %struct.json_value_t* @json_value_init_string_with_len(i8* noundef %11, i64 noundef %12)
  store %struct.json_value_t* %13, %struct.json_value_t** %10, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  %15 = icmp eq %struct.json_value_t* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %26

17:                                               ; preds = %4
  %18 = load %struct.json_array_t*, %struct.json_array_t** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  %21 = call i32 @json_array_replace_value(%struct.json_array_t* noundef %18, i64 noundef %19, %struct.json_value_t* noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  call void @json_value_free(%struct.json_value_t* noundef %24)
  store i32 -1, i32* %5, align 4
  br label %26

25:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %23, %16
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_number(%struct.json_array_t* noundef %0, i64 noundef %1, double noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_array_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %5, align 8
  store i64 %1, i64* %6, align 8
  store double %2, double* %7, align 8
  %9 = load double, double* %7, align 8
  %10 = call %struct.json_value_t* @json_value_init_number(double noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %8, align 8
  %11 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %12 = icmp eq %struct.json_value_t* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.json_array_t*, %struct.json_array_t** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %18 = call i32 @json_array_replace_value(%struct.json_array_t* noundef %15, i64 noundef %16, %struct.json_value_t* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  call void @json_value_free(%struct.json_value_t* noundef %21)
  store i32 -1, i32* %4, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %20, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_boolean(%struct.json_array_t* noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_array_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.json_value_t* @json_value_init_boolean(i32 noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %8, align 8
  %11 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %12 = icmp eq %struct.json_value_t* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.json_array_t*, %struct.json_array_t** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %18 = call i32 @json_array_replace_value(%struct.json_array_t* noundef %15, i64 noundef %16, %struct.json_value_t* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  call void @json_value_free(%struct.json_value_t* noundef %21)
  store i32 -1, i32* %4, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %20, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_null(%struct.json_array_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_array_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call %struct.json_value_t* @json_value_init_null()
  store %struct.json_value_t* %7, %struct.json_value_t** %6, align 8
  %8 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %9 = icmp eq %struct.json_value_t* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %15 = call i32 @json_array_replace_value(%struct.json_array_t* noundef %12, i64 noundef %13, %struct.json_value_t* noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %18)
  store i32 -1, i32* %3, align 4
  br label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %17, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_clear(%struct.json_array_t* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.json_array_t*, align 8
  %4 = alloca i64, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %6 = icmp eq %struct.json_array_t* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %24

8:                                                ; preds = %1
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %18, %8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %12 = call i64 @json_array_get_count(%struct.json_array_t* noundef %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %15, i64 noundef %16)
  call void @json_value_free(%struct.json_value_t* noundef %17)
  br label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %4, align 8
  br label %9, !llvm.loop !19

21:                                               ; preds = %9
  %22 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %23 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_value(%struct.json_array_t* noundef %0, %struct.json_value_t* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_array_t*, align 8
  %5 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %4, align 8
  store %struct.json_value_t* %1, %struct.json_value_t** %5, align 8
  %6 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %7 = icmp eq %struct.json_array_t* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %10 = icmp eq %struct.json_value_t* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %13 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %12, i32 0, i32 0
  %14 = load %struct.json_value_t*, %struct.json_value_t** %13, align 8
  %15 = icmp ne %struct.json_value_t* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %8, %2
  store i32 -1, i32* %3, align 4
  br label %21

17:                                               ; preds = %11
  %18 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %19 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %20 = call i32 @json_array_add(%struct.json_array_t* noundef %18, %struct.json_value_t* noundef %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_string(%struct.json_array_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_array_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call %struct.json_value_t* @json_value_init_string(i8* noundef %7)
  store %struct.json_value_t* %8, %struct.json_value_t** %6, align 8
  %9 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %10 = icmp eq %struct.json_value_t* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %15 = call i32 @json_array_append_value(%struct.json_array_t* noundef %13, %struct.json_value_t* noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %18)
  store i32 -1, i32* %3, align 4
  br label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %17, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_string_with_len(%struct.json_array_t* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_array_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call %struct.json_value_t* @json_value_init_string_with_len(i8* noundef %9, i64 noundef %10)
  store %struct.json_value_t* %11, %struct.json_value_t** %8, align 8
  %12 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %13 = icmp eq %struct.json_value_t* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

15:                                               ; preds = %3
  %16 = load %struct.json_array_t*, %struct.json_array_t** %5, align 8
  %17 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %18 = call i32 @json_array_append_value(%struct.json_array_t* noundef %16, %struct.json_value_t* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  call void @json_value_free(%struct.json_value_t* noundef %21)
  store i32 -1, i32* %4, align 4
  br label %23

22:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %20, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_number(%struct.json_array_t* noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_array_t*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %4, align 8
  store double %1, double* %5, align 8
  %7 = load double, double* %5, align 8
  %8 = call %struct.json_value_t* @json_value_init_number(double noundef %7)
  store %struct.json_value_t* %8, %struct.json_value_t** %6, align 8
  %9 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %10 = icmp eq %struct.json_value_t* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %15 = call i32 @json_array_append_value(%struct.json_array_t* noundef %13, %struct.json_value_t* noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %18)
  store i32 -1, i32* %3, align 4
  br label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %17, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_boolean(%struct.json_array_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_array_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.json_value_t* @json_value_init_boolean(i32 noundef %7)
  store %struct.json_value_t* %8, %struct.json_value_t** %6, align 8
  %9 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %10 = icmp eq %struct.json_value_t* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %15 = call i32 @json_array_append_value(%struct.json_array_t* noundef %13, %struct.json_value_t* noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %18)
  store i32 -1, i32* %3, align 4
  br label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %17, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_null(%struct.json_array_t* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.json_array_t*, align 8
  %4 = alloca %struct.json_value_t*, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %3, align 8
  %5 = call %struct.json_value_t* @json_value_init_null()
  store %struct.json_value_t* %5, %struct.json_value_t** %4, align 8
  %6 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %7 = icmp eq %struct.json_value_t* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.json_array_t*, %struct.json_array_t** %3, align 8
  %11 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %12 = call i32 @json_array_append_value(%struct.json_array_t* noundef %10, %struct.json_value_t* noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  call void @json_value_free(%struct.json_value_t* noundef %15)
  store i32 -1, i32* %2, align 4
  br label %17

16:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %14, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_value(%struct.json_object_t* noundef %0, i8* noundef %1, %struct.json_value_t* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_object_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.json_value_t*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.json_object_t* %0, %struct.json_object_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.json_value_t* %2, %struct.json_value_t** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %12, align 8
  store i8* null, i8** %13, align 8
  %15 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %16 = icmp ne %struct.json_object_t* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %22 = icmp ne %struct.json_value_t* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %25 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %24, i32 0, i32 0
  %26 = load %struct.json_value_t*, %struct.json_value_t** %25, align 8
  %27 = icmp ne %struct.json_value_t* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %20, %17, %3
  store i32 -1, i32* %4, align 4
  br label %142

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strlen(i8* noundef %31) #10
  %33 = call i64 @hash_string(i8* noundef %30, i64 noundef %32)
  store i64 %33, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %34 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strlen(i8* noundef %36) #10
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @json_object_get_cell_ix(%struct.json_object_t* noundef %34, i8* noundef %35, i64 noundef %37, i64 noundef %38, i32* noundef %9)
  store i64 %39, i64* %10, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %29
  %43 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %44 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  %49 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %50 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %49, i32 0, i32 4
  %51 = load %struct.json_value_t**, %struct.json_value_t*** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %51, i64 %52
  %54 = load %struct.json_value_t*, %struct.json_value_t** %53, align 8
  store %struct.json_value_t* %54, %struct.json_value_t** %12, align 8
  %55 = load %struct.json_value_t*, %struct.json_value_t** %12, align 8
  call void @json_value_free(%struct.json_value_t* noundef %55)
  %56 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %57 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %58 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %57, i32 0, i32 4
  %59 = load %struct.json_value_t**, %struct.json_value_t*** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %59, i64 %60
  store %struct.json_value_t* %56, %struct.json_value_t** %61, align 8
  %62 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %63 = call %struct.json_value_t* @json_object_get_wrapping_value(%struct.json_object_t* noundef %62)
  %64 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %65 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %64, i32 0, i32 0
  store %struct.json_value_t* %63, %struct.json_value_t** %65, align 8
  store i32 0, i32* %4, align 4
  br label %142

66:                                               ; preds = %29
  %67 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %68 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %71 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = icmp uge i64 %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %76 = call i32 @json_object_grow_and_rehash(%struct.json_object_t* noundef %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 -1, i32* %4, align 4
  br label %142

80:                                               ; preds = %74
  %81 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @strlen(i8* noundef %83) #10
  %85 = load i64, i64* %8, align 8
  %86 = call i64 @json_object_get_cell_ix(%struct.json_object_t* noundef %81, i8* noundef %82, i64 noundef %84, i64 noundef %85, i32* noundef %9)
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %80, %66
  %88 = load i8*, i8** %6, align 8
  %89 = call i8* @parson_strdup(i8* noundef %88)
  store i8* %89, i8** %13, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %142

93:                                               ; preds = %87
  %94 = load i8*, i8** %13, align 8
  %95 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %96 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %95, i32 0, i32 3
  %97 = load i8**, i8*** %96, align 8
  %98 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %99 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  store i8* %94, i8** %101, align 8
  %102 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %103 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %106 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %104, i64* %109, align 8
  %110 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %111 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %112 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %111, i32 0, i32 4
  %113 = load %struct.json_value_t**, %struct.json_value_t*** %112, align 8
  %114 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %115 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %113, i64 %116
  store %struct.json_value_t* %110, %struct.json_value_t** %117, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %120 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %119, i32 0, i32 5
  %121 = load i64*, i64** %120, align 8
  %122 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %123 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i64, i64* %121, i64 %124
  store i64 %118, i64* %125, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %128 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %131 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  store i64 %126, i64* %133, align 8
  %134 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %135 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %139 = call %struct.json_value_t* @json_object_get_wrapping_value(%struct.json_object_t* noundef %138)
  %140 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %141 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %140, i32 0, i32 0
  store %struct.json_value_t* %139, %struct.json_value_t** %141, align 8
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %93, %92, %79, %42, %28
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hash_string(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 5381, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %6, align 1
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %32

21:                                               ; preds = %12
  %22 = load i64, i64* %5, align 8
  %23 = shl i64 %22, 5
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %23, %24
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i64
  %28 = add i64 %25, %27
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %8, !llvm.loop !20

32:                                               ; preds = %20, %8
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @json_object_get_cell_ix(%struct.json_object_t* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3, i32* noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.json_object_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.json_object_t*, %struct.json_object_t** %7, align 8
  %21 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, 1
  %24 = and i64 %19, %23
  store i64 %24, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i8* null, i8** %17, align 8
  store i64 0, i64* %18, align 8
  %25 = load i32*, i32** %11, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %86, %5
  %27 = load i32, i32* %15, align 4
  %28 = zext i32 %27 to i64
  %29 = load %struct.json_object_t*, %struct.json_object_t** %7, align 8
  %30 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %26
  %34 = load i64, i64* %12, align 8
  %35 = load i32, i32* %15, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = load %struct.json_object_t*, %struct.json_object_t** %7, align 8
  %39 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, 1
  %42 = and i64 %37, %41
  store i64 %42, i64* %14, align 8
  %43 = load %struct.json_object_t*, %struct.json_object_t** %7, align 8
  %44 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load i64, i64* %14, align 8
  store i64 %52, i64* %6, align 8
  br label %90

53:                                               ; preds = %33
  %54 = load %struct.json_object_t*, %struct.json_object_t** %7, align 8
  %55 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %16, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %86

64:                                               ; preds = %53
  %65 = load %struct.json_object_t*, %struct.json_object_t** %7, align 8
  %66 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %65, i32 0, i32 3
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %17, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = call i64 @strlen(i8* noundef %71) #10
  store i64 %72, i64* %18, align 8
  %73 = load i64, i64* %18, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %64
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @strncmp(i8* noundef %77, i8* noundef %78, i64 noundef %79) #10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32*, i32** %11, align 8
  store i32 1, i32* %83, align 4
  %84 = load i64, i64* %14, align 8
  store i64 %84, i64* %6, align 8
  br label %90

85:                                               ; preds = %76, %64
  br label %86

86:                                               ; preds = %85, %63
  %87 = load i32, i32* %15, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %26, !llvm.loop !21

89:                                               ; preds = %26
  store i64 -1, i64* %6, align 8
  br label %90

90:                                               ; preds = %89, %82, %51
  %91 = load i64, i64* %6, align 8
  ret i64 %91
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_object_grow_and_rehash(%struct.json_object_t* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca %struct.json_value_t*, align 8
  %5 = alloca %struct.json_object_t, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %4, align 8
  store i8* null, i8** %6, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %12 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = mul i64 %13, 2
  %15 = icmp ugt i64 %14, 16
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %18 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = mul i64 %19, 2
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i64 [ %20, %16 ], [ 16, %21 ]
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @json_object_init(%struct.json_object_t* noundef %5, i64 noundef %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %74

29:                                               ; preds = %22
  %30 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %31 = call %struct.json_value_t* @json_object_get_wrapping_value(%struct.json_object_t* noundef %30)
  store %struct.json_value_t* %31, %struct.json_value_t** %4, align 8
  %32 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %33 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %5, i32 0, i32 0
  store %struct.json_value_t* %32, %struct.json_value_t** %33, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %66, %29
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %38 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %43 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %6, align 8
  %49 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %50 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %49, i32 0, i32 4
  %51 = load %struct.json_value_t**, %struct.json_value_t*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %51, i64 %53
  %55 = load %struct.json_value_t*, %struct.json_value_t** %54, align 8
  store %struct.json_value_t* %55, %struct.json_value_t** %7, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %58 = call i32 @json_object_add(%struct.json_object_t* noundef %5, i8* noundef %56, %struct.json_value_t* noundef %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  call void @json_object_deinit(%struct.json_object_t* noundef %5, i32 noundef 0, i32 noundef 0)
  store i32 -1, i32* %2, align 4
  br label %74

62:                                               ; preds = %41
  %63 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %64 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %65 = getelementptr inbounds %struct.json_value_t, %struct.json_value_t* %64, i32 0, i32 0
  store %struct.json_value_t* %63, %struct.json_value_t** %65, align 8
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %34, !llvm.loop !22

69:                                               ; preds = %34
  %70 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  call void @json_object_deinit(%struct.json_object_t* noundef %70, i32 noundef 0, i32 noundef 0)
  %71 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %72 = bitcast %struct.json_object_t* %71 to i8*
  %73 = bitcast %struct.json_object_t* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 72, i1 false)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %61, %28
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_string(%struct.json_object_t* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca i32, align 4
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.json_value_t* @json_value_init_string(i8* noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %7, align 8
  %11 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %14 = call i32 @json_object_set_value(%struct.json_object_t* noundef %11, i8* noundef %12, %struct.json_value_t* noundef %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %18)
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32, i32* %8, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_string_with_len(%struct.json_object_t* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.json_object_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.json_value_t*, align 8
  %10 = alloca i32, align 4
  store %struct.json_object_t* %0, %struct.json_object_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call %struct.json_value_t* @json_value_init_string_with_len(i8* noundef %11, i64 noundef %12)
  store %struct.json_value_t* %13, %struct.json_value_t** %9, align 8
  %14 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.json_value_t*, %struct.json_value_t** %9, align 8
  %17 = call i32 @json_object_set_value(%struct.json_object_t* noundef %14, i8* noundef %15, %struct.json_value_t* noundef %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load %struct.json_value_t*, %struct.json_value_t** %9, align 8
  call void @json_value_free(%struct.json_value_t* noundef %21)
  br label %22

22:                                               ; preds = %20, %4
  %23 = load i32, i32* %10, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_number(%struct.json_object_t* noundef %0, i8* noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca i32, align 4
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store double %2, double* %6, align 8
  %9 = load double, double* %6, align 8
  %10 = call %struct.json_value_t* @json_value_init_number(double noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %7, align 8
  %11 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %14 = call i32 @json_object_set_value(%struct.json_object_t* noundef %11, i8* noundef %12, %struct.json_value_t* noundef %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %18)
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32, i32* %8, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_boolean(%struct.json_object_t* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca i32, align 4
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.json_value_t* @json_value_init_boolean(i32 noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %7, align 8
  %11 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %14 = call i32 @json_object_set_value(%struct.json_object_t* noundef %11, i8* noundef %12, %struct.json_value_t* noundef %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %18)
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32, i32* %8, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_null(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.json_value_t*, align 8
  %6 = alloca i32, align 4
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call %struct.json_value_t* @json_value_init_null()
  store %struct.json_value_t* %7, %struct.json_value_t** %5, align 8
  %8 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %11 = call i32 @json_object_set_value(%struct.json_object_t* noundef %8, i8* noundef %9, %struct.json_value_t* noundef %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  call void @json_value_free(%struct.json_value_t* noundef %15)
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* %6, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_value(%struct.json_object_t* noundef %0, i8* noundef %1, %struct.json_value_t* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_object_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.json_value_t*, align 8
  %10 = alloca %struct.json_value_t*, align 8
  %11 = alloca %struct.json_object_t*, align 8
  %12 = alloca %struct.json_object_t*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.json_value_t* %2, %struct.json_value_t** %7, align 8
  store i8* null, i8** %8, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %9, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %10, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %11, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %12, align 8
  store i32 -1, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i8* null, i8** %15, align 8
  %16 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %17 = icmp eq %struct.json_object_t* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %23 = icmp eq %struct.json_value_t* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %3
  store i32 -1, i32* %4, align 4
  br label %105

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @strchr(i8* noundef %26, i32 noundef 46) #10
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %34 = call i32 @json_object_set_value(%struct.json_object_t* noundef %31, i8* noundef %32, %struct.json_value_t* noundef %33)
  store i32 %34, i32* %4, align 4
  br label %105

35:                                               ; preds = %25
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  store i64 %40, i64* %14, align 8
  %41 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call %struct.json_value_t* @json_object_getn_value(%struct.json_object_t* noundef %41, i8* noundef %42, i64 noundef %43)
  store %struct.json_value_t* %44, %struct.json_value_t** %9, align 8
  %45 = load %struct.json_value_t*, %struct.json_value_t** %9, align 8
  %46 = icmp ne %struct.json_value_t* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %35
  %48 = load %struct.json_value_t*, %struct.json_value_t** %9, align 8
  %49 = call i32 @json_value_get_type(%struct.json_value_t* noundef %48)
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %105

52:                                               ; preds = %47
  %53 = load %struct.json_value_t*, %struct.json_value_t** %9, align 8
  %54 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %53)
  store %struct.json_object_t* %54, %struct.json_object_t** %11, align 8
  %55 = load %struct.json_object_t*, %struct.json_object_t** %11, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %59 = call i32 @json_object_dotset_value(%struct.json_object_t* noundef %55, i8* noundef %57, %struct.json_value_t* noundef %58)
  store i32 %59, i32* %4, align 4
  br label %105

60:                                               ; preds = %35
  %61 = call %struct.json_value_t* @json_value_init_object()
  store %struct.json_value_t* %61, %struct.json_value_t** %10, align 8
  %62 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  %63 = icmp eq %struct.json_value_t* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %105

65:                                               ; preds = %60
  %66 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  %67 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %66)
  store %struct.json_object_t* %67, %struct.json_object_t** %12, align 8
  %68 = load %struct.json_object_t*, %struct.json_object_t** %12, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %72 = call i32 @json_object_dotset_value(%struct.json_object_t* noundef %68, i8* noundef %70, %struct.json_value_t* noundef %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  call void @json_value_free(%struct.json_value_t* noundef %76)
  store i32 -1, i32* %4, align 4
  br label %105

77:                                               ; preds = %65
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i8* @parson_strndup(i8* noundef %78, i64 noundef %79)
  store i8* %80, i8** %15, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.json_object_t*, %struct.json_object_t** %12, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = call i32 @json_object_dotremove_internal(%struct.json_object_t* noundef %84, i8* noundef %86, i32 noundef 0)
  %88 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  call void @json_value_free(%struct.json_value_t* noundef %88)
  store i32 -1, i32* %4, align 4
  br label %105

89:                                               ; preds = %77
  %90 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  %93 = call i32 @json_object_add(%struct.json_object_t* noundef %90, i8* noundef %91, %struct.json_value_t* noundef %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %98 = load i8*, i8** %15, align 8
  call void %97(i8* noundef %98)
  %99 = load %struct.json_object_t*, %struct.json_object_t** %12, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = call i32 @json_object_dotremove_internal(%struct.json_object_t* noundef %99, i8* noundef %101, i32 noundef 0)
  %103 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  call void @json_value_free(%struct.json_value_t* noundef %103)
  store i32 -1, i32* %4, align 4
  br label %105

104:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %96, %83, %75, %64, %52, %51, %30, %24
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_object_dotremove_internal(%struct.json_object_t* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_object_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.json_value_t*, align 8
  %9 = alloca %struct.json_object_t*, align 8
  %10 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.json_value_t* null, %struct.json_value_t** %8, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @strchr(i8* noundef %11, i32 noundef 46) #10
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @json_object_remove_internal(%struct.json_object_t* noundef %16, i8* noundef %17, i32 noundef %18)
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = call %struct.json_value_t* @json_object_getn_value(%struct.json_object_t* noundef %21, i8* noundef %22, i64 noundef %27)
  store %struct.json_value_t* %28, %struct.json_value_t** %8, align 8
  %29 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %30 = call i32 @json_value_get_type(%struct.json_value_t* noundef %29)
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %41

33:                                               ; preds = %20
  %34 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %35 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %34)
  store %struct.json_object_t* %35, %struct.json_object_t** %9, align 8
  %36 = load %struct.json_object_t*, %struct.json_object_t** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @json_object_dotremove_internal(%struct.json_object_t* noundef %36, i8* noundef %38, i32 noundef %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %32, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_string(%struct.json_object_t* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_object_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.json_value_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.json_value_t* @json_value_init_string(i8* noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %8, align 8
  %11 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %12 = icmp eq %struct.json_value_t* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %18 = call i32 @json_object_dotset_value(%struct.json_object_t* noundef %15, i8* noundef %16, %struct.json_value_t* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  call void @json_value_free(%struct.json_value_t* noundef %21)
  store i32 -1, i32* %4, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %20, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_string_with_len(%struct.json_object_t* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.json_object_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.json_value_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call %struct.json_value_t* @json_value_init_string_with_len(i8* noundef %11, i64 noundef %12)
  store %struct.json_value_t* %13, %struct.json_value_t** %10, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  %15 = icmp eq %struct.json_value_t* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %26

17:                                               ; preds = %4
  %18 = load %struct.json_object_t*, %struct.json_object_t** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  %21 = call i32 @json_object_dotset_value(%struct.json_object_t* noundef %18, i8* noundef %19, %struct.json_value_t* noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.json_value_t*, %struct.json_value_t** %10, align 8
  call void @json_value_free(%struct.json_value_t* noundef %24)
  store i32 -1, i32* %5, align 4
  br label %26

25:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %23, %16
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_number(%struct.json_object_t* noundef %0, i8* noundef %1, double noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_object_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.json_value_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store double %2, double* %7, align 8
  %9 = load double, double* %7, align 8
  %10 = call %struct.json_value_t* @json_value_init_number(double noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %8, align 8
  %11 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %12 = icmp eq %struct.json_value_t* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %18 = call i32 @json_object_dotset_value(%struct.json_object_t* noundef %15, i8* noundef %16, %struct.json_value_t* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  call void @json_value_free(%struct.json_value_t* noundef %21)
  store i32 -1, i32* %4, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %20, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_boolean(%struct.json_object_t* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_object_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.json_value_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.json_value_t* @json_value_init_boolean(i32 noundef %9)
  store %struct.json_value_t* %10, %struct.json_value_t** %8, align 8
  %11 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %12 = icmp eq %struct.json_value_t* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %18 = call i32 @json_object_dotset_value(%struct.json_object_t* noundef %15, i8* noundef %16, %struct.json_value_t* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  call void @json_value_free(%struct.json_value_t* noundef %21)
  store i32 -1, i32* %4, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %20, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_null(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.json_value_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.json_value_t* @json_value_init_null()
  store %struct.json_value_t* %7, %struct.json_value_t** %6, align 8
  %8 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %9 = icmp eq %struct.json_value_t* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %15 = call i32 @json_object_dotset_value(%struct.json_object_t* noundef %12, i8* noundef %13, %struct.json_value_t* noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %18)
  store i32 -1, i32* %3, align 4
  br label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %17, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_remove(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @json_object_remove_internal(%struct.json_object_t* noundef %5, i8* noundef %6, i32 noundef 1)
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_object_remove_internal(%struct.json_object_t* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_object_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.json_value_t*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %17, align 8
  %18 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %19 = icmp eq %struct.json_object_t* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %227

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strlen(i8* noundef %23) #10
  %25 = call i64 @hash_string(i8* noundef %22, i64 noundef %24)
  store i64 %25, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %26 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strlen(i8* noundef %28) #10
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @json_object_get_cell_ix(%struct.json_object_t* noundef %26, i8* noundef %27, i64 noundef %29, i64 noundef %30, i32* noundef %9)
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %227

35:                                               ; preds = %21
  %36 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %37 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %46 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %45, i32 0, i32 4
  %47 = load %struct.json_value_t**, %struct.json_value_t*** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %47, i64 %48
  %50 = load %struct.json_value_t*, %struct.json_value_t** %49, align 8
  store %struct.json_value_t* %50, %struct.json_value_t** %17, align 8
  %51 = load %struct.json_value_t*, %struct.json_value_t** %17, align 8
  call void @json_value_free(%struct.json_value_t* noundef %51)
  store %struct.json_value_t* null, %struct.json_value_t** %17, align 8
  br label %52

52:                                               ; preds = %44, %35
  %53 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %54 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %55 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %54, i32 0, i32 3
  %56 = load i8**, i8*** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  call void %53(i8* noundef %59)
  %60 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %61 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, 1
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %123

67:                                               ; preds = %52
  %68 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %69 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %68, i32 0, i32 3
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %75 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %74, i32 0, i32 3
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  store i8* %73, i8** %78, align 8
  %79 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %80 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %79, i32 0, i32 4
  %81 = load %struct.json_value_t**, %struct.json_value_t*** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %81, i64 %82
  %84 = load %struct.json_value_t*, %struct.json_value_t** %83, align 8
  %85 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %86 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %85, i32 0, i32 4
  %87 = load %struct.json_value_t**, %struct.json_value_t*** %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %87, i64 %88
  store %struct.json_value_t* %84, %struct.json_value_t** %89, align 8
  %90 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %91 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %90, i32 0, i32 5
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %97 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %96, i32 0, i32 5
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %95, i64* %100, align 8
  %101 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %102 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %108 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %106, i64* %111, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %114 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %117 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %116, i32 0, i32 5
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i64, i64* %115, i64 %121
  store i64 %112, i64* %122, align 8
  br label %123

123:                                              ; preds = %67, %52
  %124 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %125 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, -1
  store i64 %127, i64* %125, align 8
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %13, align 8
  %129 = load i64, i64* %13, align 8
  store i64 %129, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %130

130:                                              ; preds = %218, %123
  %131 = load i64, i64* %15, align 8
  %132 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %133 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %132, i32 0, i32 8
  %134 = load i64, i64* %133, align 8
  %135 = sub i64 %134, 1
  %136 = icmp ult i64 %131, %135
  br i1 %136, label %137, label %221

137:                                              ; preds = %130
  %138 = load i64, i64* %14, align 8
  %139 = add i64 %138, 1
  %140 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %141 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %140, i32 0, i32 8
  %142 = load i64, i64* %141, align 8
  %143 = sub i64 %142, 1
  %144 = and i64 %139, %143
  store i64 %144, i64* %14, align 8
  %145 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %146 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %14, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, -1
  br i1 %151, label %152, label %153

152:                                              ; preds = %137
  br label %221

153:                                              ; preds = %137
  %154 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %155 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %154, i32 0, i32 2
  %156 = load i64*, i64** %155, align 8
  %157 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %158 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* %14, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i64, i64* %156, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %166 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %165, i32 0, i32 8
  %167 = load i64, i64* %166, align 8
  %168 = sub i64 %167, 1
  %169 = and i64 %164, %168
  store i64 %169, i64* %16, align 8
  %170 = load i64, i64* %14, align 8
  %171 = load i64, i64* %13, align 8
  %172 = icmp ugt i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %153
  %174 = load i64, i64* %16, align 8
  %175 = load i64, i64* %13, align 8
  %176 = icmp ule i64 %174, %175
  br i1 %176, label %193, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* %16, align 8
  %179 = load i64, i64* %14, align 8
  %180 = icmp ugt i64 %178, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %177, %153
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* %13, align 8
  %184 = icmp ult i64 %182, %183
  br i1 %184, label %185, label %217

185:                                              ; preds = %181
  %186 = load i64, i64* %16, align 8
  %187 = load i64, i64* %13, align 8
  %188 = icmp ule i64 %186, %187
  br i1 %188, label %189, label %217

189:                                              ; preds = %185
  %190 = load i64, i64* %16, align 8
  %191 = load i64, i64* %14, align 8
  %192 = icmp ugt i64 %190, %191
  br i1 %192, label %193, label %217

193:                                              ; preds = %189, %177, %173
  %194 = load i64, i64* %13, align 8
  %195 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %196 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %195, i32 0, i32 5
  %197 = load i64*, i64** %196, align 8
  %198 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %199 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %198, i32 0, i32 1
  %200 = load i64*, i64** %199, align 8
  %201 = load i64, i64* %14, align 8
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i64, i64* %197, i64 %203
  store i64 %194, i64* %204, align 8
  %205 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %206 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %205, i32 0, i32 1
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* %14, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %212 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = load i64, i64* %13, align 8
  %215 = getelementptr inbounds i64, i64* %213, i64 %214
  store i64 %210, i64* %215, align 8
  %216 = load i64, i64* %14, align 8
  store i64 %216, i64* %13, align 8
  br label %217

217:                                              ; preds = %193, %189, %185, %181
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %15, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %15, align 8
  br label %130, !llvm.loop !23

221:                                              ; preds = %152, %130
  %222 = load %struct.json_object_t*, %struct.json_object_t** %5, align 8
  %223 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %222, i32 0, i32 1
  %224 = load i64*, i64** %223, align 8
  %225 = load i64, i64* %13, align 8
  %226 = getelementptr inbounds i64, i64* %224, i64 %225
  store i64 -1, i64* %226, align 8
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %221, %34, %20
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotremove(%struct.json_object_t* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @json_object_dotremove_internal(%struct.json_object_t* noundef %5, i8* noundef %6, i32 noundef 1)
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_clear(%struct.json_object_t* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.json_object_t*, align 8
  %4 = alloca i64, align 8
  store %struct.json_object_t* %0, %struct.json_object_t** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %6 = icmp eq %struct.json_object_t* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %60

8:                                                ; preds = %1
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %38, %8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %12 = call i64 @json_object_get_count(%struct.json_object_t* noundef %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %16 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %17 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %16, i32 0, i32 3
  %18 = load i8**, i8*** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  call void %15(i8* noundef %21)
  %22 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %23 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %22, i32 0, i32 3
  %24 = load i8**, i8*** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  store i8* null, i8** %26, align 8
  %27 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %28 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %27, i32 0, i32 4
  %29 = load %struct.json_value_t**, %struct.json_value_t*** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %29, i64 %30
  %32 = load %struct.json_value_t*, %struct.json_value_t** %31, align 8
  call void @json_value_free(%struct.json_value_t* noundef %32)
  %33 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %34 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %33, i32 0, i32 4
  %35 = load %struct.json_value_t**, %struct.json_value_t*** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %35, i64 %36
  store %struct.json_value_t* null, %struct.json_value_t** %37, align 8
  br label %38

38:                                               ; preds = %14
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %4, align 8
  br label %9, !llvm.loop !24

41:                                               ; preds = %9
  %42 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %43 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  store i64 0, i64* %4, align 8
  br label %44

44:                                               ; preds = %56, %41
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %47 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.json_object_t*, %struct.json_object_t** %3, align 8
  %52 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 -1, i64* %55, align 8
  br label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %4, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %4, align 8
  br label %44, !llvm.loop !25

59:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %7
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_validate(%struct.json_value_t* noundef %0, %struct.json_value_t* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_value_t*, align 8
  %5 = alloca %struct.json_value_t*, align 8
  %6 = alloca %struct.json_value_t*, align 8
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca %struct.json_array_t*, align 8
  %9 = alloca %struct.json_array_t*, align 8
  %10 = alloca %struct.json_object_t*, align 8
  %11 = alloca %struct.json_object_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %4, align 8
  store %struct.json_value_t* %1, %struct.json_value_t** %5, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %6, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %7, align 8
  store %struct.json_array_t* null, %struct.json_array_t** %8, align 8
  store %struct.json_array_t* null, %struct.json_array_t** %9, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %10, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %11, align 8
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %18 = icmp eq %struct.json_value_t* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %21 = icmp eq %struct.json_value_t* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  store i32 -1, i32* %3, align 4
  br label %118

23:                                               ; preds = %19
  %24 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %25 = call i32 @json_value_get_type(%struct.json_value_t* noundef %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %27 = call i32 @json_value_get_type(%struct.json_value_t* noundef %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %118

35:                                               ; preds = %31, %23
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %117 [
    i32 5, label %37
    i32 4, label %69
    i32 2, label %115
    i32 3, label %115
    i32 6, label %115
    i32 1, label %115
    i32 -1, label %116
  ]

37:                                               ; preds = %35
  %38 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %39 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %38)
  store %struct.json_array_t* %39, %struct.json_array_t** %8, align 8
  %40 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %41 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %40)
  store %struct.json_array_t* %41, %struct.json_array_t** %9, align 8
  %42 = load %struct.json_array_t*, %struct.json_array_t** %8, align 8
  %43 = call i64 @json_array_get_count(%struct.json_array_t* noundef %42)
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %16, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %118

47:                                               ; preds = %37
  %48 = load %struct.json_array_t*, %struct.json_array_t** %8, align 8
  %49 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %48, i64 noundef 0)
  store %struct.json_value_t* %49, %struct.json_value_t** %6, align 8
  store i64 0, i64* %15, align 8
  br label %50

50:                                               ; preds = %65, %47
  %51 = load i64, i64* %15, align 8
  %52 = load %struct.json_array_t*, %struct.json_array_t** %9, align 8
  %53 = call i64 @json_array_get_count(%struct.json_array_t* noundef %52)
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.json_array_t*, %struct.json_array_t** %9, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %56, i64 noundef %57)
  store %struct.json_value_t* %58, %struct.json_value_t** %7, align 8
  %59 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %60 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %61 = call i32 @json_validate(%struct.json_value_t* noundef %59, %struct.json_value_t* noundef %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %118

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %15, align 8
  br label %50, !llvm.loop !26

68:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %118

69:                                               ; preds = %35
  %70 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %71 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %70)
  store %struct.json_object_t* %71, %struct.json_object_t** %10, align 8
  %72 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %73 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %72)
  store %struct.json_object_t* %73, %struct.json_object_t** %11, align 8
  %74 = load %struct.json_object_t*, %struct.json_object_t** %10, align 8
  %75 = call i64 @json_object_get_count(%struct.json_object_t* noundef %74)
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %16, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %118

79:                                               ; preds = %69
  %80 = load %struct.json_object_t*, %struct.json_object_t** %11, align 8
  %81 = call i64 @json_object_get_count(%struct.json_object_t* noundef %80)
  %82 = load i64, i64* %16, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 -1, i32* %3, align 4
  br label %118

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85
  store i64 0, i64* %15, align 8
  br label %87

87:                                               ; preds = %111, %86
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load %struct.json_object_t*, %struct.json_object_t** %10, align 8
  %93 = load i64, i64* %15, align 8
  %94 = call i8* @json_object_get_name(%struct.json_object_t* noundef %92, i64 noundef %93)
  store i8* %94, i8** %14, align 8
  %95 = load %struct.json_object_t*, %struct.json_object_t** %10, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %95, i8* noundef %96)
  store %struct.json_value_t* %97, %struct.json_value_t** %6, align 8
  %98 = load %struct.json_object_t*, %struct.json_object_t** %11, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %98, i8* noundef %99)
  store %struct.json_value_t* %100, %struct.json_value_t** %7, align 8
  %101 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %102 = icmp eq %struct.json_value_t* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %118

104:                                              ; preds = %91
  %105 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %106 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %107 = call i32 @json_validate(%struct.json_value_t* noundef %105, %struct.json_value_t* noundef %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 -1, i32* %3, align 4
  br label %118

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %15, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %15, align 8
  br label %87, !llvm.loop !27

114:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %118

115:                                              ; preds = %35, %35, %35, %35
  store i32 0, i32* %3, align 4
  br label %118

116:                                              ; preds = %35
  br label %117

117:                                              ; preds = %35, %116
  store i32 -1, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %115, %114, %109, %103, %84, %78, %68, %63, %46, %34, %22
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_equals(%struct.json_value_t* noundef %0, %struct.json_value_t* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_value_t*, align 8
  %5 = alloca %struct.json_value_t*, align 8
  %6 = alloca %struct.json_object_t*, align 8
  %7 = alloca %struct.json_object_t*, align 8
  %8 = alloca %struct.json_array_t*, align 8
  %9 = alloca %struct.json_array_t*, align 8
  %10 = alloca %struct.json_string*, align 8
  %11 = alloca %struct.json_string*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.json_value_t* %0, %struct.json_value_t** %4, align 8
  store %struct.json_value_t* %1, %struct.json_value_t** %5, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %6, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %7, align 8
  store %struct.json_array_t* null, %struct.json_array_t** %8, align 8
  store %struct.json_array_t* null, %struct.json_array_t** %9, align 8
  store %struct.json_string* null, %struct.json_string** %10, align 8
  store %struct.json_string* null, %struct.json_string** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %18 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %19 = call i32 @json_value_get_type(%struct.json_value_t* noundef %18)
  store i32 %19, i32* %16, align 4
  %20 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %21 = call i32 @json_value_get_type(%struct.json_value_t* noundef %20)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %150

26:                                               ; preds = %2
  %27 = load i32, i32* %16, align 4
  switch i32 %27, label %149 [
    i32 5, label %28
    i32 4, label %61
    i32 2, label %97
    i32 6, label %131
    i32 3, label %138
    i32 -1, label %147
    i32 1, label %148
  ]

28:                                               ; preds = %26
  %29 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %30 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %29)
  store %struct.json_array_t* %30, %struct.json_array_t** %8, align 8
  %31 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %32 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %31)
  store %struct.json_array_t* %32, %struct.json_array_t** %9, align 8
  %33 = load %struct.json_array_t*, %struct.json_array_t** %8, align 8
  %34 = call i64 @json_array_get_count(%struct.json_array_t* noundef %33)
  store i64 %34, i64* %13, align 8
  %35 = load %struct.json_array_t*, %struct.json_array_t** %9, align 8
  %36 = call i64 @json_array_get_count(%struct.json_array_t* noundef %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %150

41:                                               ; preds = %28
  store i64 0, i64* %15, align 8
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.json_array_t*, %struct.json_array_t** %8, align 8
  %48 = load i64, i64* %15, align 8
  %49 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %47, i64 noundef %48)
  %50 = load %struct.json_array_t*, %struct.json_array_t** %9, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call %struct.json_value_t* @json_array_get_value(%struct.json_array_t* noundef %50, i64 noundef %51)
  %53 = call i32 @json_value_equals(%struct.json_value_t* noundef %49, %struct.json_value_t* noundef %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %150

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %15, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %15, align 8
  br label %42, !llvm.loop !28

60:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %150

61:                                               ; preds = %26
  %62 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %63 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %62)
  store %struct.json_object_t* %63, %struct.json_object_t** %6, align 8
  %64 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %65 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %64)
  store %struct.json_object_t* %65, %struct.json_object_t** %7, align 8
  %66 = load %struct.json_object_t*, %struct.json_object_t** %6, align 8
  %67 = call i64 @json_object_get_count(%struct.json_object_t* noundef %66)
  store i64 %67, i64* %13, align 8
  %68 = load %struct.json_object_t*, %struct.json_object_t** %7, align 8
  %69 = call i64 @json_object_get_count(%struct.json_object_t* noundef %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %150

74:                                               ; preds = %61
  store i64 0, i64* %15, align 8
  br label %75

75:                                               ; preds = %93, %74
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load %struct.json_object_t*, %struct.json_object_t** %6, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i8* @json_object_get_name(%struct.json_object_t* noundef %80, i64 noundef %81)
  store i8* %82, i8** %12, align 8
  %83 = load %struct.json_object_t*, %struct.json_object_t** %6, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %83, i8* noundef %84)
  %86 = load %struct.json_object_t*, %struct.json_object_t** %7, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call %struct.json_value_t* @json_object_get_value(%struct.json_object_t* noundef %86, i8* noundef %87)
  %89 = call i32 @json_value_equals(%struct.json_value_t* noundef %85, %struct.json_value_t* noundef %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %150

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %15, align 8
  br label %75, !llvm.loop !29

96:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %150

97:                                               ; preds = %26
  %98 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %99 = call %struct.json_string* @json_value_get_string_desc(%struct.json_value_t* noundef %98)
  store %struct.json_string* %99, %struct.json_string** %10, align 8
  %100 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %101 = call %struct.json_string* @json_value_get_string_desc(%struct.json_value_t* noundef %100)
  store %struct.json_string* %101, %struct.json_string** %11, align 8
  %102 = load %struct.json_string*, %struct.json_string** %10, align 8
  %103 = icmp eq %struct.json_string* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load %struct.json_string*, %struct.json_string** %11, align 8
  %106 = icmp eq %struct.json_string* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %97
  store i32 0, i32* %3, align 4
  br label %150

108:                                              ; preds = %104
  %109 = load %struct.json_string*, %struct.json_string** %10, align 8
  %110 = getelementptr inbounds %struct.json_string, %struct.json_string* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.json_string*, %struct.json_string** %11, align 8
  %113 = getelementptr inbounds %struct.json_string, %struct.json_string* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %108
  %117 = load %struct.json_string*, %struct.json_string** %10, align 8
  %118 = getelementptr inbounds %struct.json_string, %struct.json_string* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.json_string*, %struct.json_string** %11, align 8
  %121 = getelementptr inbounds %struct.json_string, %struct.json_string* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.json_string*, %struct.json_string** %10, align 8
  %124 = getelementptr inbounds %struct.json_string, %struct.json_string* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @memcmp(i8* noundef %119, i8* noundef %122, i64 noundef %125) #10
  %127 = icmp eq i32 %126, 0
  br label %128

128:                                              ; preds = %116, %108
  %129 = phi i1 [ false, %108 ], [ %127, %116 ]
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %150

131:                                              ; preds = %26
  %132 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %133 = call i32 @json_value_get_boolean(%struct.json_value_t* noundef %132)
  %134 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %135 = call i32 @json_value_get_boolean(%struct.json_value_t* noundef %134)
  %136 = icmp eq i32 %133, %135
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %3, align 4
  br label %150

138:                                              ; preds = %26
  %139 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %140 = call double @json_value_get_number(%struct.json_value_t* noundef %139)
  %141 = load %struct.json_value_t*, %struct.json_value_t** %5, align 8
  %142 = call double @json_value_get_number(%struct.json_value_t* noundef %141)
  %143 = fsub double %140, %142
  %144 = call double @llvm.fabs.f64(double %143)
  %145 = fcmp olt double %144, 0x3EB0C6F7A0B5ED8D
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %3, align 4
  br label %150

147:                                              ; preds = %26
  store i32 1, i32* %3, align 4
  br label %150

148:                                              ; preds = %26
  store i32 1, i32* %3, align 4
  br label %150

149:                                              ; preds = %26
  store i32 1, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %148, %147, %138, %131, %128, %107, %96, %91, %73, %60, %55, %40, %25
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_type(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call i32 @json_value_get_type(%struct.json_value_t* noundef %3)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_object_t* @json_object(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %3)
  ret %struct.json_object_t* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_array_t* @json_array(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %3)
  ret %struct.json_array_t* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_string(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call i8* @json_value_get_string(%struct.json_value_t* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_string_len(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call i64 @json_value_get_string_len(%struct.json_value_t* noundef %3)
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_number(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call double @json_value_get_number(%struct.json_value_t* noundef %3)
  ret double %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_boolean(%struct.json_value_t* noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  store %struct.json_value_t* %0, %struct.json_value_t** %2, align 8
  %3 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  %4 = call i32 @json_value_get_boolean(%struct.json_value_t* noundef %3)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_set_allocation_functions(i8* (i64)* noundef %0, void (i8*)* noundef %1) #0 {
  %3 = alloca i8* (i64)*, align 8
  %4 = alloca void (i8*)*, align 8
  store i8* (i64)* %0, i8* (i64)** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  %5 = load i8* (i64)*, i8* (i64)** %3, align 8
  store i8* (i64)* %5, i8* (i64)** @parson_malloc, align 8
  %6 = load void (i8*)*, void (i8*)** %4, align 8
  store void (i8*)* %6, void (i8*)** @parson_free, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_set_escape_slashes(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @parson_escape_slashes, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_set_float_serialization_format(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** @parson_float_format, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %7 = load i8*, i8** @parson_float_format, align 8
  call void %6(i8* noundef %7)
  store i8* null, i8** @parson_float_format, align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i8* null, i8** @parson_float_format, align 8
  br label %15

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @parson_strdup(i8* noundef %13)
  store i8* %14, i8** @parson_float_format, align 8
  br label %15

15:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_set_number_serialization_function(i32 (double, i8*)* noundef %0) #0 {
  %2 = alloca i32 (double, i8*)*, align 8
  store i32 (double, i8*)* %0, i32 (double, i8*)** %2, align 8
  %3 = load i32 (double, i8*)*, i32 (double, i8*)** %2, align 8
  store i32 (double, i8*)* %3, i32 (double, i8*)** @parson_number_serialization_function, align 8
  ret void
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #3

declare dso_local void @rewind(%struct._IO_FILE* noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #5

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_value_t* @parse_object_value(i8** noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca %struct.json_value_t*, align 8
  %9 = alloca %struct.json_object_t*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  store %struct.json_value_t* null, %struct.json_value_t** %7, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %8, align 8
  store %struct.json_object_t* null, %struct.json_object_t** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = call %struct.json_value_t* @json_value_init_object()
  store %struct.json_value_t* %12, %struct.json_value_t** %7, align 8
  %13 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %14 = icmp eq %struct.json_value_t* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %219

16:                                               ; preds = %2
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 123
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %23)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %219

24:                                               ; preds = %16
  %25 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %26 = call %struct.json_object_t* @json_value_get_object(%struct.json_value_t* noundef %25)
  store %struct.json_object_t* %26, %struct.json_object_t** %9, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  br label %30

30:                                               ; preds = %43, %24
  %31 = call i16** @__ctype_b_loc() #9
  %32 = load i16*, i16** %31, align 8
  %33 = load i8**, i8*** %4, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %32, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 8192
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load i8**, i8*** %4, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  br label %30, !llvm.loop !30

47:                                               ; preds = %30
  %48 = load i8**, i8*** %4, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 125
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i8**, i8*** %4, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %54, align 8
  %57 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  store %struct.json_value_t* %57, %struct.json_value_t** %3, align 8
  br label %219

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %187, %58
  %60 = load i8**, i8*** %4, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %188

65:                                               ; preds = %59
  store i64 0, i64* %11, align 8
  %66 = load i8**, i8*** %4, align 8
  %67 = call i8* @get_quoted_string(i8** noundef %66, i64* noundef %11)
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %71)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %219

72:                                               ; preds = %65
  %73 = load i64, i64* %11, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i64 @strlen(i8* noundef %74) #10
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %79 = load i8*, i8** %10, align 8
  call void %78(i8* noundef %79)
  %80 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %80)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %219

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %95, %81
  %83 = call i16** @__ctype_b_loc() #9
  %84 = load i16*, i16** %83, align 8
  %85 = load i8**, i8*** %4, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, i16* %84, i64 %89
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = and i32 %92, 8192
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %82
  %96 = load i8**, i8*** %4, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %96, align 8
  br label %82, !llvm.loop !31

99:                                               ; preds = %82
  %100 = load i8**, i8*** %4, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 58
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %107 = load i8*, i8** %10, align 8
  call void %106(i8* noundef %107)
  %108 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %108)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %219

109:                                              ; preds = %99
  %110 = load i8**, i8*** %4, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %110, align 8
  %113 = load i8**, i8*** %4, align 8
  %114 = load i64, i64* %5, align 8
  %115 = call %struct.json_value_t* @parse_value(i8** noundef %113, i64 noundef %114)
  store %struct.json_value_t* %115, %struct.json_value_t** %8, align 8
  %116 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %117 = icmp eq %struct.json_value_t* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %120 = load i8*, i8** %10, align 8
  call void %119(i8* noundef %120)
  %121 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %121)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %219

122:                                              ; preds = %109
  %123 = load %struct.json_object_t*, %struct.json_object_t** %9, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  %126 = call i32 @json_object_add(%struct.json_object_t* noundef %123, i8* noundef %124, %struct.json_value_t* noundef %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %131 = load i8*, i8** %10, align 8
  call void %130(i8* noundef %131)
  %132 = load %struct.json_value_t*, %struct.json_value_t** %8, align 8
  call void @json_value_free(%struct.json_value_t* noundef %132)
  %133 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %133)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %219

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %148, %134
  %136 = call i16** @__ctype_b_loc() #9
  %137 = load i16*, i16** %136, align 8
  %138 = load i8**, i8*** %4, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i16, i16* %137, i64 %142
  %144 = load i16, i16* %143, align 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %145, 8192
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %135
  %149 = load i8**, i8*** %4, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %149, align 8
  br label %135, !llvm.loop !32

152:                                              ; preds = %135
  %153 = load i8**, i8*** %4, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 44
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %188

159:                                              ; preds = %152
  %160 = load i8**, i8*** %4, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %160, align 8
  br label %163

163:                                              ; preds = %176, %159
  %164 = call i16** @__ctype_b_loc() #9
  %165 = load i16*, i16** %164, align 8
  %166 = load i8**, i8*** %4, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i16, i16* %165, i64 %170
  %172 = load i16, i16* %171, align 2
  %173 = zext i16 %172 to i32
  %174 = and i32 %173, 8192
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %163
  %177 = load i8**, i8*** %4, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %177, align 8
  br label %163, !llvm.loop !33

180:                                              ; preds = %163
  %181 = load i8**, i8*** %4, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 125
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %188

187:                                              ; preds = %180
  br label %59, !llvm.loop !34

188:                                              ; preds = %186, %158, %59
  br label %189

189:                                              ; preds = %202, %188
  %190 = call i16** @__ctype_b_loc() #9
  %191 = load i16*, i16** %190, align 8
  %192 = load i8**, i8*** %4, align 8
  %193 = load i8*, i8** %192, align 8
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i16, i16* %191, i64 %196
  %198 = load i16, i16* %197, align 2
  %199 = zext i16 %198 to i32
  %200 = and i32 %199, 8192
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %189
  %203 = load i8**, i8*** %4, align 8
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %203, align 8
  br label %189, !llvm.loop !35

206:                                              ; preds = %189
  %207 = load i8**, i8*** %4, align 8
  %208 = load i8*, i8** %207, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 125
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %213)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %219

214:                                              ; preds = %206
  %215 = load i8**, i8*** %4, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %215, align 8
  %218 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  store %struct.json_value_t* %218, %struct.json_value_t** %3, align 8
  br label %219

219:                                              ; preds = %214, %212, %129, %118, %105, %77, %70, %53, %22, %15
  %220 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  ret %struct.json_value_t* %220
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_value_t* @parse_array_value(i8** noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.json_value_t*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.json_value_t*, align 8
  %7 = alloca %struct.json_value_t*, align 8
  %8 = alloca %struct.json_array_t*, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %6, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %7, align 8
  store %struct.json_array_t* null, %struct.json_array_t** %8, align 8
  %9 = call %struct.json_value_t* @json_value_init_array()
  store %struct.json_value_t* %9, %struct.json_value_t** %6, align 8
  %10 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %11 = icmp eq %struct.json_value_t* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %169

13:                                               ; preds = %2
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 91
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %20)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %169

21:                                               ; preds = %13
  %22 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  %23 = call %struct.json_array_t* @json_value_get_array(%struct.json_value_t* noundef %22)
  store %struct.json_array_t* %23, %struct.json_array_t** %8, align 8
  %24 = load i8**, i8*** %4, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  br label %27

27:                                               ; preds = %40, %21
  %28 = call i16** @__ctype_b_loc() #9
  %29 = load i16*, i16** %28, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %29, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 8192
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i8**, i8*** %4, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %41, align 8
  br label %27, !llvm.loop !36

44:                                               ; preds = %27
  %45 = load i8**, i8*** %4, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 93
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i8**, i8*** %4, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %51, align 8
  %54 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  store %struct.json_value_t* %54, %struct.json_value_t** %3, align 8
  br label %169

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %131, %55
  %57 = load i8**, i8*** %4, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %132

62:                                               ; preds = %56
  %63 = load i8**, i8*** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call %struct.json_value_t* @parse_value(i8** noundef %63, i64 noundef %64)
  store %struct.json_value_t* %65, %struct.json_value_t** %7, align 8
  %66 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %67 = icmp eq %struct.json_value_t* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %69)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %169

70:                                               ; preds = %62
  %71 = load %struct.json_array_t*, %struct.json_array_t** %8, align 8
  %72 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  %73 = call i32 @json_array_add(%struct.json_array_t* noundef %71, %struct.json_value_t* noundef %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.json_value_t*, %struct.json_value_t** %7, align 8
  call void @json_value_free(%struct.json_value_t* noundef %76)
  %77 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %77)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %169

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %92, %78
  %80 = call i16** @__ctype_b_loc() #9
  %81 = load i16*, i16** %80, align 8
  %82 = load i8**, i8*** %4, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i16, i16* %81, i64 %86
  %88 = load i16, i16* %87, align 2
  %89 = zext i16 %88 to i32
  %90 = and i32 %89, 8192
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %79
  %93 = load i8**, i8*** %4, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %93, align 8
  br label %79, !llvm.loop !37

96:                                               ; preds = %79
  %97 = load i8**, i8*** %4, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 44
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %132

103:                                              ; preds = %96
  %104 = load i8**, i8*** %4, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %104, align 8
  br label %107

107:                                              ; preds = %120, %103
  %108 = call i16** @__ctype_b_loc() #9
  %109 = load i16*, i16** %108, align 8
  %110 = load i8**, i8*** %4, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %109, i64 %114
  %116 = load i16, i16* %115, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %117, 8192
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %107
  %121 = load i8**, i8*** %4, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %121, align 8
  br label %107, !llvm.loop !38

124:                                              ; preds = %107
  %125 = load i8**, i8*** %4, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 93
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %132

131:                                              ; preds = %124
  br label %56, !llvm.loop !39

132:                                              ; preds = %130, %102, %56
  br label %133

133:                                              ; preds = %146, %132
  %134 = call i16** @__ctype_b_loc() #9
  %135 = load i16*, i16** %134, align 8
  %136 = load i8**, i8*** %4, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i16, i16* %135, i64 %140
  %142 = load i16, i16* %141, align 2
  %143 = zext i16 %142 to i32
  %144 = and i32 %143, 8192
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %133
  %147 = load i8**, i8*** %4, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %147, align 8
  br label %133, !llvm.loop !40

150:                                              ; preds = %133
  %151 = load i8**, i8*** %4, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 93
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = load %struct.json_array_t*, %struct.json_array_t** %8, align 8
  %158 = load %struct.json_array_t*, %struct.json_array_t** %8, align 8
  %159 = call i64 @json_array_get_count(%struct.json_array_t* noundef %158)
  %160 = call i32 @json_array_resize(%struct.json_array_t* noundef %157, i64 noundef %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156, %150
  %163 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  call void @json_value_free(%struct.json_value_t* noundef %163)
  store %struct.json_value_t* null, %struct.json_value_t** %3, align 8
  br label %169

164:                                              ; preds = %156
  %165 = load i8**, i8*** %4, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %165, align 8
  %168 = load %struct.json_value_t*, %struct.json_value_t** %6, align 8
  store %struct.json_value_t* %168, %struct.json_value_t** %3, align 8
  br label %169

169:                                              ; preds = %164, %162, %75, %68, %50, %19, %12
  %170 = load %struct.json_value_t*, %struct.json_value_t** %3, align 8
  ret %struct.json_value_t* %170
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_value_t* @parse_string_value(i8** noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.json_value_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.json_value_t* null, %struct.json_value_t** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = call i8* @get_quoted_string(i8** noundef %7, i64* noundef %5)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %23

12:                                               ; preds = %1
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.json_value_t* @json_value_init_string_no_copy(i8* noundef %13, i64 noundef %14)
  store %struct.json_value_t* %15, %struct.json_value_t** %4, align 8
  %16 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  %17 = icmp eq %struct.json_value_t* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %20 = load i8*, i8** %6, align 8
  call void %19(i8* noundef %20)
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %23

21:                                               ; preds = %12
  %22 = load %struct.json_value_t*, %struct.json_value_t** %4, align 8
  store %struct.json_value_t* %22, %struct.json_value_t** %2, align 8
  br label %23

23:                                               ; preds = %21, %18, %11
  %24 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_value_t* @parse_boolean_value(i8** noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i64 4, i64* %4, align 8
  store i64 5, i64* %5, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef %7, i64 noundef %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = load i8**, i8*** %3, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 %12
  store i8* %15, i8** %13, align 8
  %16 = call %struct.json_value_t* @json_value_init_boolean(i32 noundef 1)
  store %struct.json_value_t* %16, %struct.json_value_t** %2, align 8
  br label %31

17:                                               ; preds = %1
  %18 = load i8**, i8*** %3, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef %19, i64 noundef %20) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load i8**, i8*** %3, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %24
  store i8* %27, i8** %25, align 8
  %28 = call %struct.json_value_t* @json_value_init_boolean(i32 noundef 0)
  store %struct.json_value_t* %28, %struct.json_value_t** %2, align 8
  br label %31

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %31

31:                                               ; preds = %30, %23, %11
  %32 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_value_t* @parse_number_value(i8** noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca double, align 8
  store i8** %0, i8*** %3, align 8
  store double 0.000000e+00, double* %5, align 8
  %6 = call i32* @__errno_location() #9
  store i32 0, i32* %6, align 4
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = call double @strtod(i8* noundef %8, i8** noundef %4) #8
  store double %9, double* %5, align 8
  %10 = call i32* @__errno_location() #9
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 34
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load double, double* %5, align 8
  %15 = fcmp ole double %14, 0xFFF0000000000000
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load double, double* %5, align 8
  %18 = fcmp oge double %17, 0x7FF0000000000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %45

20:                                               ; preds = %16, %1
  %21 = call i32* @__errno_location() #9
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = call i32* @__errno_location() #9
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 34
  br i1 %27, label %39, label %28

28:                                               ; preds = %24, %20
  %29 = load i8**, i8*** %3, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %31 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = call i32 @is_decimal(i8* noundef %30, i64 noundef %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28, %24
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %45

40:                                               ; preds = %28
  %41 = load i8*, i8** %4, align 8
  %42 = load i8**, i8*** %3, align 8
  store i8* %41, i8** %42, align 8
  %43 = load double, double* %5, align 8
  %44 = call %struct.json_value_t* @json_value_init_number(double noundef %43)
  store %struct.json_value_t* %44, %struct.json_value_t** %2, align 8
  br label %45

45:                                               ; preds = %40, %39, %19
  %46 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_value_t* @parse_null_value(i8** noundef %0) #0 {
  %2 = alloca %struct.json_value_t*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i64 4, i64* %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @strncmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef %6, i64 noundef %7) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 %11
  store i8* %14, i8** %12, align 8
  %15 = call %struct.json_value_t* @json_value_init_null()
  store %struct.json_value_t* %15, %struct.json_value_t** %2, align 8
  br label %17

16:                                               ; preds = %1
  store %struct.json_value_t* null, %struct.json_value_t** %2, align 8
  br label %17

17:                                               ; preds = %16, %10
  %18 = load %struct.json_value_t*, %struct.json_value_t** %2, align 8
  ret %struct.json_value_t* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_quoted_string(i8** noundef %0, i64* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = call i32 @skip_quotes(i8** noundef %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sub nsw i64 %22, 2
  store i64 %23, i64* %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i64, i64* %7, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = call i8* @process_string(i8* noundef %25, i64 noundef %26, i64* noundef %27)
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %16, %15
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_quotes(i8** noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  %4 = load i8**, i8*** %3, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 34
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %53

10:                                               ; preds = %1
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %11, align 8
  br label %14

14:                                               ; preds = %45, %10
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 34
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %53

27:                                               ; preds = %20
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i8**, i8*** %3, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %34, align 8
  %37 = load i8**, i8*** %3, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %53

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44
  %46 = load i8**, i8*** %3, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  br label %14, !llvm.loop !41

49:                                               ; preds = %14
  %50 = load i8**, i8*** %3, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %50, align 8
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %42, %26, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @process_string(i8* noundef %0, i64 noundef %1, i64* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  %17 = mul i64 %16, 1
  store i64 %17, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %18 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i8* %18(i64 noundef %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %115

24:                                               ; preds = %3
  %25 = load i8*, i8** %11, align 8
  store i8* %25, i8** %12, align 8
  br label %26

26:                                               ; preds = %86, %24
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = load i64, i64* %6, align 8
  %38 = icmp ult i64 %36, %37
  br label %39

39:                                               ; preds = %31, %26
  %40 = phi i1 [ false, %26 ], [ %38, %31 ]
  br i1 %40, label %41, label %91

41:                                               ; preds = %39
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %73 [
    i32 34, label %52
    i32 92, label %54
    i32 47, label %56
    i32 98, label %58
    i32 102, label %60
    i32 110, label %62
    i32 114, label %64
    i32 116, label %66
    i32 117, label %68
  ]

52:                                               ; preds = %46
  %53 = load i8*, i8** %12, align 8
  store i8 34, i8* %53, align 1
  br label %74

54:                                               ; preds = %46
  %55 = load i8*, i8** %12, align 8
  store i8 92, i8* %55, align 1
  br label %74

56:                                               ; preds = %46
  %57 = load i8*, i8** %12, align 8
  store i8 47, i8* %57, align 1
  br label %74

58:                                               ; preds = %46
  %59 = load i8*, i8** %12, align 8
  store i8 8, i8* %59, align 1
  br label %74

60:                                               ; preds = %46
  %61 = load i8*, i8** %12, align 8
  store i8 12, i8* %61, align 1
  br label %74

62:                                               ; preds = %46
  %63 = load i8*, i8** %12, align 8
  store i8 10, i8* %63, align 1
  br label %74

64:                                               ; preds = %46
  %65 = load i8*, i8** %12, align 8
  store i8 13, i8* %65, align 1
  br label %74

66:                                               ; preds = %46
  %67 = load i8*, i8** %12, align 8
  store i8 9, i8* %67, align 1
  br label %74

68:                                               ; preds = %46
  %69 = call i32 @parse_utf16(i8** noundef %8, i8** noundef %12)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %115

72:                                               ; preds = %68
  br label %74

73:                                               ; preds = %46
  br label %115

74:                                               ; preds = %72, %66, %64, %62, %60, %58, %56, %54, %52
  br label %86

75:                                               ; preds = %41
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp slt i32 %78, 32
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %115

81:                                               ; preds = %75
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %12, align 8
  store i8 %83, i8* %84, align 1
  br label %85

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %12, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  br label %26, !llvm.loop !42

91:                                               ; preds = %39
  %92 = load i8*, i8** %12, align 8
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  %99 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i8* %99(i64 noundef %100)
  store i8* %101, i8** %13, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %115

105:                                              ; preds = %91
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load i64, i64* %10, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %106, i8* align 1 %107, i64 %108, i1 false)
  %109 = load i64, i64* %10, align 8
  %110 = sub i64 %109, 1
  %111 = load i64*, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  %112 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %113 = load i8*, i8** %11, align 8
  call void %112(i8* noundef %113)
  %114 = load i8*, i8** %13, align 8
  store i8* %114, i8** %4, align 8
  br label %118

115:                                              ; preds = %104, %80, %73, %71, %23
  %116 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %117 = load i8*, i8** %11, align 8
  call void %116(i8* noundef %117)
  store i8* null, i8** %4, align 8
  br label %118

118:                                              ; preds = %115, %105
  %119 = load i8*, i8** %4, align 8
  ret i8* %119
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_utf16(i8** noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  store i32 -1, i32* %11, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @parse_utf16_hex(i8* noundef %18, i32* noundef %6)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %163

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ult i32 %24, 128
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %30, align 1
  br label %156

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %32, 2048
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = lshr i32 %35, 6
  %37 = and i32 %36, 31
  %38 = or i32 %37, 192
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %39, i8* %41, align 1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 63
  %44 = or i32 %43, 128
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 %45, i8* %47, align 1
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %9, align 8
  br label %155

50:                                               ; preds = %31
  %51 = load i32, i32* %6, align 4
  %52 = icmp ult i32 %51, 55296
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp ugt i32 %54, 57343
  br i1 %55, label %56, label %79

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %6, align 4
  %58 = lshr i32 %57, 12
  %59 = and i32 %58, 15
  %60 = or i32 %59, 224
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 %61, i8* %63, align 1
  %64 = load i32, i32* %6, align 4
  %65 = lshr i32 %64, 6
  %66 = and i32 %65, 63
  %67 = or i32 %66, 128
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 63
  %73 = or i32 %72, 128
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8 %74, i8* %76, align 1
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %9, align 8
  br label %154

79:                                               ; preds = %53
  %80 = load i32, i32* %6, align 4
  %81 = icmp uge i32 %80, 55296
  br i1 %81, label %82, label %152

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = icmp ule i32 %83, 56319
  br i1 %84, label %85, label %152

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %7, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %10, align 8
  %91 = load i8, i8* %89, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 92
  br i1 %93, label %100, label %94

94:                                               ; preds = %85
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %10, align 8
  %97 = load i8, i8* %95, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 117
  br i1 %99, label %100, label %101

100:                                              ; preds = %94, %85
  store i32 -1, i32* %3, align 4
  br label %163

101:                                              ; preds = %94
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @parse_utf16_hex(i8* noundef %102, i32* noundef %8)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = icmp ult i32 %107, 56320
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = icmp ugt i32 %110, 57343
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %106, %101
  store i32 -1, i32* %3, align 4
  br label %163

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = sub i32 %114, 55296
  %116 = and i32 %115, 1023
  %117 = shl i32 %116, 10
  %118 = load i32, i32* %8, align 4
  %119 = sub i32 %118, 56320
  %120 = and i32 %119, 1023
  %121 = or i32 %117, %120
  %122 = add i32 %121, 65536
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = lshr i32 %123, 18
  %125 = and i32 %124, 7
  %126 = or i32 %125, 240
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  store i8 %127, i8* %129, align 1
  %130 = load i32, i32* %6, align 4
  %131 = lshr i32 %130, 12
  %132 = and i32 %131, 63
  %133 = or i32 %132, 128
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8 %134, i8* %136, align 1
  %137 = load i32, i32* %6, align 4
  %138 = lshr i32 %137, 6
  %139 = and i32 %138, 63
  %140 = or i32 %139, 128
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  store i8 %141, i8* %143, align 1
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, 63
  %146 = or i32 %145, 128
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 3
  store i8 %147, i8* %149, align 1
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 3
  store i8* %151, i8** %9, align 8
  br label %153

152:                                              ; preds = %82, %79
  store i32 -1, i32* %3, align 4
  br label %163

153:                                              ; preds = %113
  br label %154

154:                                              ; preds = %153, %56
  br label %155

155:                                              ; preds = %154, %34
  br label %156

156:                                              ; preds = %155, %26
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 3
  store i8* %158, i8** %10, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = load i8**, i8*** %5, align 8
  store i8* %159, i8** %160, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = load i8**, i8*** %4, align 8
  store i8* %161, i8** %162, align 8
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %156, %152, %112, %100, %22
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_utf16_hex(i8* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21, %15, %2
  store i32 -1, i32* %3, align 4
  br label %75

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @hex_char_to_int(i8 noundef signext %37)
  store i32 %38, i32* %6, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @hex_char_to_int(i8 noundef signext %41)
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @hex_char_to_int(i8 noundef signext %45)
  store i32 %46, i32* %8, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @hex_char_to_int(i8 noundef signext %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %62, label %53

53:                                               ; preds = %34
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56, %53, %34
  store i32 -1, i32* %3, align 4
  br label %75

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, 12
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %65, %67
  %69 = load i32, i32* %8, align 4
  %70 = shl i32 %69, 4
  %71 = or i32 %68, %70
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %71, %72
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %63, %62, %33
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex_char_to_int(i8 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp sge i32 %5, 48
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp sle i32 %9, 57
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i8, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = sub nsw i32 %13, 48
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %7, %1
  %16 = load i8, i8* %3, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 97
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i8, i8* %3, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 102
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  %26 = sub nsw i32 %25, 97
  %27 = add nsw i32 %26, 10
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %19, %15
  %29 = load i8, i8* %3, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 65
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i8, i8* %3, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 70
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8, i8* %3, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, 65
  %40 = add nsw i32 %39, 10
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %32, %28
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  store i32 -1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %36, %23, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_array_resize(%struct.json_array_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_array_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.json_value_t**, align 8
  store %struct.json_array_t* %0, %struct.json_array_t** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.json_value_t** null, %struct.json_value_t*** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %52

10:                                               ; preds = %2
  %11 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %12 = load i64, i64* %5, align 8
  %13 = mul i64 %12, 8
  %14 = call i8* %11(i64 noundef %13)
  %15 = bitcast i8* %14 to %struct.json_value_t**
  store %struct.json_value_t** %15, %struct.json_value_t*** %6, align 8
  %16 = load %struct.json_value_t**, %struct.json_value_t*** %6, align 8
  %17 = icmp eq %struct.json_value_t** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %52

19:                                               ; preds = %10
  %20 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %21 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %20, i32 0, i32 1
  %22 = load %struct.json_value_t**, %struct.json_value_t*** %21, align 8
  %23 = icmp ne %struct.json_value_t** %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %26 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.json_value_t**, %struct.json_value_t*** %6, align 8
  %31 = bitcast %struct.json_value_t** %30 to i8*
  %32 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %33 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %32, i32 0, i32 1
  %34 = load %struct.json_value_t**, %struct.json_value_t*** %33, align 8
  %35 = bitcast %struct.json_value_t** %34 to i8*
  %36 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %37 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = mul i64 %38, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %35, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %29, %24, %19
  %41 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %42 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %43 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %42, i32 0, i32 1
  %44 = load %struct.json_value_t**, %struct.json_value_t*** %43, align 8
  %45 = bitcast %struct.json_value_t** %44 to i8*
  call void %41(i8* noundef %45)
  %46 = load %struct.json_value_t**, %struct.json_value_t*** %6, align 8
  %47 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %48 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %47, i32 0, i32 1
  store %struct.json_value_t** %46, %struct.json_value_t*** %48, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.json_array_t*, %struct.json_array_t** %4, align 8
  %51 = getelementptr inbounds %struct.json_array_t, %struct.json_array_t* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %18, %9
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #6

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_decimal(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ugt i64 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 46
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %51

21:                                               ; preds = %14, %8, %2
  %22 = load i64, i64* %5, align 8
  %23 = icmp ugt i64 %22, 2
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strncmp(i8* noundef %25, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 noundef 2) #10
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 46
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %51

35:                                               ; preds = %28, %24, %21
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %5, align 8
  %39 = icmp ne i64 %37, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = call i8* @strchr(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 noundef %45) #10
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %51

49:                                               ; preds = %40
  br label %36, !llvm.loop !43

50:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %48, %34, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_object_deinit(%struct.json_object_t* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %39, %3
  %9 = load i32, i32* %7, align 4
  %10 = zext i32 %9 to i64
  %11 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %12 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %20 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %21 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %20, i32 0, i32 3
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  call void %19(i8* noundef %26)
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %32 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %31, i32 0, i32 4
  %33 = load %struct.json_value_t**, %struct.json_value_t*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.json_value_t*, %struct.json_value_t** %33, i64 %35
  %37 = load %struct.json_value_t*, %struct.json_value_t** %36, align 8
  call void @json_value_free(%struct.json_value_t* noundef %37)
  br label %38

38:                                               ; preds = %30, %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %8, !llvm.loop !44

42:                                               ; preds = %8
  %43 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %44 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %46 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %48 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %47, i32 0, i32 8
  store i64 0, i64* %48, align 8
  %49 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %50 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %51 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = bitcast i64* %52 to i8*
  call void %49(i8* noundef %53)
  %54 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %55 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %56 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %55, i32 0, i32 3
  %57 = load i8**, i8*** %56, align 8
  %58 = bitcast i8** %57 to i8*
  call void %54(i8* noundef %58)
  %59 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %60 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %61 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %60, i32 0, i32 4
  %62 = load %struct.json_value_t**, %struct.json_value_t*** %61, align 8
  %63 = bitcast %struct.json_value_t** %62 to i8*
  call void %59(i8* noundef %63)
  %64 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %65 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %66 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %65, i32 0, i32 5
  %67 = load i64*, i64** %66, align 8
  %68 = bitcast i64* %67 to i8*
  call void %64(i8* noundef %68)
  %69 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %70 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %71 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = bitcast i64* %72 to i8*
  call void %69(i8* noundef %73)
  %74 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %75 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %74, i32 0, i32 1
  store i64* null, i64** %75, align 8
  %76 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %77 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %76, i32 0, i32 3
  store i8** null, i8*** %77, align 8
  %78 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %79 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %78, i32 0, i32 4
  store %struct.json_value_t** null, %struct.json_value_t*** %79, align 8
  %80 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %81 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %80, i32 0, i32 5
  store i64* null, i64** %81, align 8
  %82 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %83 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %82, i32 0, i32 2
  store i64* null, i64** %83, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_object_init(%struct.json_object_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_object_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.json_object_t* %0, %struct.json_object_t** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %8 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %7, i32 0, i32 1
  store i64* null, i64** %8, align 8
  %9 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %10 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %9, i32 0, i32 3
  store i8** null, i8*** %10, align 8
  %11 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %12 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %11, i32 0, i32 4
  store %struct.json_value_t** null, %struct.json_value_t*** %12, align 8
  %13 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %14 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %13, i32 0, i32 5
  store i64* null, i64** %14, align 8
  %15 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %16 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %15, i32 0, i32 2
  store i64* null, i64** %16, align 8
  %17 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %18 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %21 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %20, i32 0, i32 8
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = mul i64 %22, 7
  %24 = udiv i64 %23, 10
  %25 = trunc i64 %24 to i32
  %26 = zext i32 %25 to i64
  %27 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %28 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %27, i32 0, i32 7
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

32:                                               ; preds = %2
  %33 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %34 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %35 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = mul i64 %36, 8
  %38 = call i8* %33(i64 noundef %37)
  %39 = bitcast i8* %38 to i64*
  %40 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %41 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %40, i32 0, i32 1
  store i64* %39, i64** %41, align 8
  %42 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %43 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %44 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %45, 8
  %47 = call i8* %42(i64 noundef %46)
  %48 = bitcast i8* %47 to i8**
  %49 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %50 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %49, i32 0, i32 3
  store i8** %48, i8*** %50, align 8
  %51 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %52 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %53 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = mul i64 %54, 8
  %56 = call i8* %51(i64 noundef %55)
  %57 = bitcast i8* %56 to %struct.json_value_t**
  %58 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %59 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %58, i32 0, i32 4
  store %struct.json_value_t** %57, %struct.json_value_t*** %59, align 8
  %60 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %61 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %62 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = mul i64 %63, 8
  %65 = call i8* %60(i64 noundef %64)
  %66 = bitcast i8* %65 to i64*
  %67 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %68 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %67, i32 0, i32 5
  store i64* %66, i64** %68, align 8
  %69 = load i8* (i64)*, i8* (i64)** @parson_malloc, align 8
  %70 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %71 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = mul i64 %72, 8
  %74 = call i8* %69(i64 noundef %73)
  %75 = bitcast i8* %74 to i64*
  %76 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %77 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %76, i32 0, i32 2
  store i64* %75, i64** %77, align 8
  %78 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %79 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = icmp eq i64* %80, null
  br i1 %81, label %102, label %82

82:                                               ; preds = %32
  %83 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %84 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %83, i32 0, i32 3
  %85 = load i8**, i8*** %84, align 8
  %86 = icmp eq i8** %85, null
  br i1 %86, label %102, label %87

87:                                               ; preds = %82
  %88 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %89 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %88, i32 0, i32 4
  %90 = load %struct.json_value_t**, %struct.json_value_t*** %89, align 8
  %91 = icmp eq %struct.json_value_t** %90, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %94 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %93, i32 0, i32 5
  %95 = load i64*, i64** %94, align 8
  %96 = icmp eq i64* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %99 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = icmp eq i64* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %92, %87, %82, %32
  br label %122

103:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %118, %103
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %108 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %107, i32 0, i32 8
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %106, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %113 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 -1, i64* %117, align 8
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %6, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %104, !llvm.loop !45

121:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %148

122:                                              ; preds = %102
  %123 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %124 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %125 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = bitcast i64* %126 to i8*
  call void %123(i8* noundef %127)
  %128 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %129 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %130 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %129, i32 0, i32 3
  %131 = load i8**, i8*** %130, align 8
  %132 = bitcast i8** %131 to i8*
  call void %128(i8* noundef %132)
  %133 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %134 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %135 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %134, i32 0, i32 4
  %136 = load %struct.json_value_t**, %struct.json_value_t*** %135, align 8
  %137 = bitcast %struct.json_value_t** %136 to i8*
  call void %133(i8* noundef %137)
  %138 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %139 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %140 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %139, i32 0, i32 5
  %141 = load i64*, i64** %140, align 8
  %142 = bitcast i64* %141 to i8*
  call void %138(i8* noundef %142)
  %143 = load void (i8*)*, void (i8*)** @parson_free, align 8
  %144 = load %struct.json_object_t*, %struct.json_object_t** %4, align 8
  %145 = getelementptr inbounds %struct.json_object_t, %struct.json_object_t* %144, i32 0, i32 2
  %146 = load i64*, i64** %145, align 8
  %147 = bitcast i64* %146 to i8*
  call void %143(i8* noundef %147)
  store i32 -1, i32* %3, align 4
  br label %148

148:                                              ; preds = %122, %121, %31
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_utf8_sequence(i8* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = call i32 @num_bytes_in_utf8_sequence(i8 noundef zeroext %9)
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %144

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 192
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 31
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 6
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 63
  %44 = or i32 %38, %43
  store i32 %44, i32* %6, align 4
  br label %143

45:                                               ; preds = %24, %20
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 192
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %56, label %85

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 192
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %63, label %85

63:                                               ; preds = %56
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 15
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %69, 6
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 63
  %76 = or i32 %70, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 %77, 6
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 63
  %84 = or i32 %78, %83
  store i32 %84, i32* %6, align 4
  br label %142

85:                                               ; preds = %56, %49, %45
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %140

89:                                               ; preds = %85
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 192
  %95 = icmp eq i32 %94, 128
  br i1 %95, label %96, label %140

96:                                               ; preds = %89
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 192
  %102 = icmp eq i32 %101, 128
  br i1 %102, label %103, label %140

103:                                              ; preds = %96
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 3
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, 192
  %109 = icmp eq i32 %108, 128
  br i1 %109, label %110, label %140

110:                                              ; preds = %103
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 7
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = shl i32 %116, 6
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 63
  %123 = or i32 %117, %122
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = shl i32 %124, 6
  %126 = load i8*, i8** %4, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 63
  %131 = or i32 %125, %130
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = shl i32 %132, 6
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 63
  %139 = or i32 %133, %138
  store i32 %139, i32* %6, align 4
  br label %141

140:                                              ; preds = %103, %96, %89, %85
  store i32 -1, i32* %3, align 4
  br label %178

141:                                              ; preds = %110
  br label %142

142:                                              ; preds = %141, %63
  br label %143

143:                                              ; preds = %142, %31
  br label %144

144:                                              ; preds = %143, %15
  %145 = load i32, i32* %6, align 4
  %146 = icmp ult i32 %145, 128
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %165, label %151

151:                                              ; preds = %147, %144
  %152 = load i32, i32* %6, align 4
  %153 = icmp ult i32 %152, 2048
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 2
  br i1 %157, label %165, label %158

158:                                              ; preds = %154, %151
  %159 = load i32, i32* %6, align 4
  %160 = icmp ult i32 %159, 65536
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 3
  br i1 %164, label %165, label %166

165:                                              ; preds = %161, %154, %147
  store i32 -1, i32* %3, align 4
  br label %178

166:                                              ; preds = %161, %158
  %167 = load i32, i32* %6, align 4
  %168 = icmp ugt i32 %167, 1114111
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 -1, i32* %3, align 4
  br label %178

170:                                              ; preds = %166
  %171 = load i32, i32* %6, align 4
  %172 = icmp uge i32 %171, 55296
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load i32, i32* %6, align 4
  %175 = icmp ule i32 %174, 57343
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 -1, i32* %3, align 4
  br label %178

177:                                              ; preds = %173, %170
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %176, %169, %165, %140
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_bytes_in_utf8_sequence(i8 noundef zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, 192
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 193
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %13, 244
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 192
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %11, %7, %1
  store i32 0, i32* %2, align 4
  br label %50

21:                                               ; preds = %15
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %50

27:                                               ; preds = %21
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 224
  %31 = icmp eq i32 %30, 192
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 2, i32* %2, align 4
  br label %50

33:                                               ; preds = %27
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 240
  %37 = icmp eq i32 %36, 224
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 3, i32* %2, align 4
  br label %50

39:                                               ; preds = %33
  %40 = load i8, i8* %3, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 248
  %43 = icmp eq i32 %42, 240
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 4, i32* %2, align 4
  br label %50

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %44, %38, %32, %26, %20
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_serialize_string(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  store i8 0, i8* %8, align 1
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 %17, i1 false)
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 0, i8* %21, align 1
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %26
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %815, %30
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %818

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %8, align 1
  %40 = load i8, i8* %8, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %802 [
    i32 34, label %42
    i32 92, label %63
    i32 8, label %84
    i32 12, label %105
    i32 10, label %126
    i32 13, label %147
    i32 9, label %168
    i32 0, label %189
    i32 1, label %210
    i32 2, label %231
    i32 3, label %252
    i32 4, label %273
    i32 5, label %294
    i32 6, label %315
    i32 7, label %336
    i32 11, label %357
    i32 14, label %378
    i32 15, label %399
    i32 16, label %420
    i32 17, label %441
    i32 18, label %462
    i32 19, label %483
    i32 20, label %504
    i32 21, label %525
    i32 22, label %546
    i32 23, label %567
    i32 24, label %588
    i32 25, label %609
    i32 26, label %630
    i32 27, label %651
    i32 28, label %672
    i32 29, label %693
    i32 30, label %714
    i32 31, label %735
    i32 47, label %756
  ]

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  store i32 2, i32* %9, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i64 %49, i1 false)
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %6, align 8
  br label %58

58:                                               ; preds = %46, %43
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58
  br label %814

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63
  store i32 2, i32* %9, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %68, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i64 %70, i1 false)
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %9, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %6, align 8
  br label %79

79:                                               ; preds = %67, %64
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79
  br label %814

84:                                               ; preds = %35
  br label %85

85:                                               ; preds = %84
  store i32 2, i32* %9, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %89, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i64 %91, i1 false)
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i32, i32* %9, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %6, align 8
  br label %100

100:                                              ; preds = %88, %85
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100
  br label %814

105:                                              ; preds = %35
  br label %106

106:                                              ; preds = %105
  store i32 2, i32* %9, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %110, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i64 %112, i1 false)
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 0, i8* %116, align 1
  %117 = load i32, i32* %9, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %6, align 8
  br label %121

121:                                              ; preds = %109, %106
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %121
  br label %814

126:                                              ; preds = %35
  br label %127

127:                                              ; preds = %126
  store i32 2, i32* %9, align 4
  %128 = load i8*, i8** %6, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %131, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i64 %133, i1 false)
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i32, i32* %9, align 4
  %139 = load i8*, i8** %6, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %6, align 8
  br label %142

142:                                              ; preds = %130, %127
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %142
  br label %814

147:                                              ; preds = %35
  br label %148

148:                                              ; preds = %147
  store i32 2, i32* %9, align 4
  %149 = load i8*, i8** %6, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = load i8*, i8** %6, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %152, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i64 %154, i1 false)
  %155 = load i8*, i8** %6, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  store i8 0, i8* %158, align 1
  %159 = load i32, i32* %9, align 4
  %160 = load i8*, i8** %6, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %6, align 8
  br label %163

163:                                              ; preds = %151, %148
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %163
  br label %814

168:                                              ; preds = %35
  br label %169

169:                                              ; preds = %168
  store i32 2, i32* %9, align 4
  %170 = load i8*, i8** %6, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = load i8*, i8** %6, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %173, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 %175, i1 false)
  %176 = load i8*, i8** %6, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  store i8 0, i8* %179, align 1
  %180 = load i32, i32* %9, align 4
  %181 = load i8*, i8** %6, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8* %183, i8** %6, align 8
  br label %184

184:                                              ; preds = %172, %169
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %184
  br label %814

189:                                              ; preds = %35
  br label %190

190:                                              ; preds = %189
  store i32 6, i32* %9, align 4
  %191 = load i8*, i8** %6, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %205

193:                                              ; preds = %190
  %194 = load i8*, i8** %6, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %194, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i64 %196, i1 false)
  %197 = load i8*, i8** %6, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  store i8 0, i8* %200, align 1
  %201 = load i32, i32* %9, align 4
  %202 = load i8*, i8** %6, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %6, align 8
  br label %205

205:                                              ; preds = %193, %190
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %205
  br label %814

210:                                              ; preds = %35
  br label %211

211:                                              ; preds = %210
  store i32 6, i32* %9, align 4
  %212 = load i8*, i8** %6, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %226

214:                                              ; preds = %211
  %215 = load i8*, i8** %6, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %215, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i64 %217, i1 false)
  %218 = load i8*, i8** %6, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  store i8 0, i8* %221, align 1
  %222 = load i32, i32* %9, align 4
  %223 = load i8*, i8** %6, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  store i8* %225, i8** %6, align 8
  br label %226

226:                                              ; preds = %214, %211
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %10, align 4
  br label %230

230:                                              ; preds = %226
  br label %814

231:                                              ; preds = %35
  br label %232

232:                                              ; preds = %231
  store i32 6, i32* %9, align 4
  %233 = load i8*, i8** %6, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %247

235:                                              ; preds = %232
  %236 = load i8*, i8** %6, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %236, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 %238, i1 false)
  %239 = load i8*, i8** %6, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  store i8 0, i8* %242, align 1
  %243 = load i32, i32* %9, align 4
  %244 = load i8*, i8** %6, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8* %246, i8** %6, align 8
  br label %247

247:                                              ; preds = %235, %232
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %10, align 4
  br label %251

251:                                              ; preds = %247
  br label %814

252:                                              ; preds = %35
  br label %253

253:                                              ; preds = %252
  store i32 6, i32* %9, align 4
  %254 = load i8*, i8** %6, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %268

256:                                              ; preds = %253
  %257 = load i8*, i8** %6, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %257, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i64 %259, i1 false)
  %260 = load i8*, i8** %6, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  store i8 0, i8* %263, align 1
  %264 = load i32, i32* %9, align 4
  %265 = load i8*, i8** %6, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i8, i8* %265, i64 %266
  store i8* %267, i8** %6, align 8
  br label %268

268:                                              ; preds = %256, %253
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %10, align 4
  br label %272

272:                                              ; preds = %268
  br label %814

273:                                              ; preds = %35
  br label %274

274:                                              ; preds = %273
  store i32 6, i32* %9, align 4
  %275 = load i8*, i8** %6, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %289

277:                                              ; preds = %274
  %278 = load i8*, i8** %6, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %278, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 %280, i1 false)
  %281 = load i8*, i8** %6, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %281, i64 %283
  store i8 0, i8* %284, align 1
  %285 = load i32, i32* %9, align 4
  %286 = load i8*, i8** %6, align 8
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i8, i8* %286, i64 %287
  store i8* %288, i8** %6, align 8
  br label %289

289:                                              ; preds = %277, %274
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %291, %290
  store i32 %292, i32* %10, align 4
  br label %293

293:                                              ; preds = %289
  br label %814

294:                                              ; preds = %35
  br label %295

295:                                              ; preds = %294
  store i32 6, i32* %9, align 4
  %296 = load i8*, i8** %6, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %310

298:                                              ; preds = %295
  %299 = load i8*, i8** %6, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %299, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i64 %301, i1 false)
  %302 = load i8*, i8** %6, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %302, i64 %304
  store i8 0, i8* %305, align 1
  %306 = load i32, i32* %9, align 4
  %307 = load i8*, i8** %6, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i8, i8* %307, i64 %308
  store i8* %309, i8** %6, align 8
  br label %310

310:                                              ; preds = %298, %295
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %10, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %10, align 4
  br label %314

314:                                              ; preds = %310
  br label %814

315:                                              ; preds = %35
  br label %316

316:                                              ; preds = %315
  store i32 6, i32* %9, align 4
  %317 = load i8*, i8** %6, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %319, label %331

319:                                              ; preds = %316
  %320 = load i8*, i8** %6, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %320, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i64 %322, i1 false)
  %323 = load i8*, i8** %6, align 8
  %324 = load i32, i32* %9, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %323, i64 %325
  store i8 0, i8* %326, align 1
  %327 = load i32, i32* %9, align 4
  %328 = load i8*, i8** %6, align 8
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i8, i8* %328, i64 %329
  store i8* %330, i8** %6, align 8
  br label %331

331:                                              ; preds = %319, %316
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* %10, align 4
  %334 = add nsw i32 %333, %332
  store i32 %334, i32* %10, align 4
  br label %335

335:                                              ; preds = %331
  br label %814

336:                                              ; preds = %35
  br label %337

337:                                              ; preds = %336
  store i32 6, i32* %9, align 4
  %338 = load i8*, i8** %6, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %352

340:                                              ; preds = %337
  %341 = load i8*, i8** %6, align 8
  %342 = load i32, i32* %9, align 4
  %343 = sext i32 %342 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %341, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i64 %343, i1 false)
  %344 = load i8*, i8** %6, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %344, i64 %346
  store i8 0, i8* %347, align 1
  %348 = load i32, i32* %9, align 4
  %349 = load i8*, i8** %6, align 8
  %350 = sext i32 %348 to i64
  %351 = getelementptr inbounds i8, i8* %349, i64 %350
  store i8* %351, i8** %6, align 8
  br label %352

352:                                              ; preds = %340, %337
  %353 = load i32, i32* %9, align 4
  %354 = load i32, i32* %10, align 4
  %355 = add nsw i32 %354, %353
  store i32 %355, i32* %10, align 4
  br label %356

356:                                              ; preds = %352
  br label %814

357:                                              ; preds = %35
  br label %358

358:                                              ; preds = %357
  store i32 6, i32* %9, align 4
  %359 = load i8*, i8** %6, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %373

361:                                              ; preds = %358
  %362 = load i8*, i8** %6, align 8
  %363 = load i32, i32* %9, align 4
  %364 = sext i32 %363 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %362, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 %364, i1 false)
  %365 = load i8*, i8** %6, align 8
  %366 = load i32, i32* %9, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  store i8 0, i8* %368, align 1
  %369 = load i32, i32* %9, align 4
  %370 = load i8*, i8** %6, align 8
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds i8, i8* %370, i64 %371
  store i8* %372, i8** %6, align 8
  br label %373

373:                                              ; preds = %361, %358
  %374 = load i32, i32* %9, align 4
  %375 = load i32, i32* %10, align 4
  %376 = add nsw i32 %375, %374
  store i32 %376, i32* %10, align 4
  br label %377

377:                                              ; preds = %373
  br label %814

378:                                              ; preds = %35
  br label %379

379:                                              ; preds = %378
  store i32 6, i32* %9, align 4
  %380 = load i8*, i8** %6, align 8
  %381 = icmp ne i8* %380, null
  br i1 %381, label %382, label %394

382:                                              ; preds = %379
  %383 = load i8*, i8** %6, align 8
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %383, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i64 %385, i1 false)
  %386 = load i8*, i8** %6, align 8
  %387 = load i32, i32* %9, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %386, i64 %388
  store i8 0, i8* %389, align 1
  %390 = load i32, i32* %9, align 4
  %391 = load i8*, i8** %6, align 8
  %392 = sext i32 %390 to i64
  %393 = getelementptr inbounds i8, i8* %391, i64 %392
  store i8* %393, i8** %6, align 8
  br label %394

394:                                              ; preds = %382, %379
  %395 = load i32, i32* %9, align 4
  %396 = load i32, i32* %10, align 4
  %397 = add nsw i32 %396, %395
  store i32 %397, i32* %10, align 4
  br label %398

398:                                              ; preds = %394
  br label %814

399:                                              ; preds = %35
  br label %400

400:                                              ; preds = %399
  store i32 6, i32* %9, align 4
  %401 = load i8*, i8** %6, align 8
  %402 = icmp ne i8* %401, null
  br i1 %402, label %403, label %415

403:                                              ; preds = %400
  %404 = load i8*, i8** %6, align 8
  %405 = load i32, i32* %9, align 4
  %406 = sext i32 %405 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %404, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i64 %406, i1 false)
  %407 = load i8*, i8** %6, align 8
  %408 = load i32, i32* %9, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %407, i64 %409
  store i8 0, i8* %410, align 1
  %411 = load i32, i32* %9, align 4
  %412 = load i8*, i8** %6, align 8
  %413 = sext i32 %411 to i64
  %414 = getelementptr inbounds i8, i8* %412, i64 %413
  store i8* %414, i8** %6, align 8
  br label %415

415:                                              ; preds = %403, %400
  %416 = load i32, i32* %9, align 4
  %417 = load i32, i32* %10, align 4
  %418 = add nsw i32 %417, %416
  store i32 %418, i32* %10, align 4
  br label %419

419:                                              ; preds = %415
  br label %814

420:                                              ; preds = %35
  br label %421

421:                                              ; preds = %420
  store i32 6, i32* %9, align 4
  %422 = load i8*, i8** %6, align 8
  %423 = icmp ne i8* %422, null
  br i1 %423, label %424, label %436

424:                                              ; preds = %421
  %425 = load i8*, i8** %6, align 8
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %425, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i64 %427, i1 false)
  %428 = load i8*, i8** %6, align 8
  %429 = load i32, i32* %9, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, i8* %428, i64 %430
  store i8 0, i8* %431, align 1
  %432 = load i32, i32* %9, align 4
  %433 = load i8*, i8** %6, align 8
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds i8, i8* %433, i64 %434
  store i8* %435, i8** %6, align 8
  br label %436

436:                                              ; preds = %424, %421
  %437 = load i32, i32* %9, align 4
  %438 = load i32, i32* %10, align 4
  %439 = add nsw i32 %438, %437
  store i32 %439, i32* %10, align 4
  br label %440

440:                                              ; preds = %436
  br label %814

441:                                              ; preds = %35
  br label %442

442:                                              ; preds = %441
  store i32 6, i32* %9, align 4
  %443 = load i8*, i8** %6, align 8
  %444 = icmp ne i8* %443, null
  br i1 %444, label %445, label %457

445:                                              ; preds = %442
  %446 = load i8*, i8** %6, align 8
  %447 = load i32, i32* %9, align 4
  %448 = sext i32 %447 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %446, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i64 %448, i1 false)
  %449 = load i8*, i8** %6, align 8
  %450 = load i32, i32* %9, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, i8* %449, i64 %451
  store i8 0, i8* %452, align 1
  %453 = load i32, i32* %9, align 4
  %454 = load i8*, i8** %6, align 8
  %455 = sext i32 %453 to i64
  %456 = getelementptr inbounds i8, i8* %454, i64 %455
  store i8* %456, i8** %6, align 8
  br label %457

457:                                              ; preds = %445, %442
  %458 = load i32, i32* %9, align 4
  %459 = load i32, i32* %10, align 4
  %460 = add nsw i32 %459, %458
  store i32 %460, i32* %10, align 4
  br label %461

461:                                              ; preds = %457
  br label %814

462:                                              ; preds = %35
  br label %463

463:                                              ; preds = %462
  store i32 6, i32* %9, align 4
  %464 = load i8*, i8** %6, align 8
  %465 = icmp ne i8* %464, null
  br i1 %465, label %466, label %478

466:                                              ; preds = %463
  %467 = load i8*, i8** %6, align 8
  %468 = load i32, i32* %9, align 4
  %469 = sext i32 %468 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %467, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i64 %469, i1 false)
  %470 = load i8*, i8** %6, align 8
  %471 = load i32, i32* %9, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i8, i8* %470, i64 %472
  store i8 0, i8* %473, align 1
  %474 = load i32, i32* %9, align 4
  %475 = load i8*, i8** %6, align 8
  %476 = sext i32 %474 to i64
  %477 = getelementptr inbounds i8, i8* %475, i64 %476
  store i8* %477, i8** %6, align 8
  br label %478

478:                                              ; preds = %466, %463
  %479 = load i32, i32* %9, align 4
  %480 = load i32, i32* %10, align 4
  %481 = add nsw i32 %480, %479
  store i32 %481, i32* %10, align 4
  br label %482

482:                                              ; preds = %478
  br label %814

483:                                              ; preds = %35
  br label %484

484:                                              ; preds = %483
  store i32 6, i32* %9, align 4
  %485 = load i8*, i8** %6, align 8
  %486 = icmp ne i8* %485, null
  br i1 %486, label %487, label %499

487:                                              ; preds = %484
  %488 = load i8*, i8** %6, align 8
  %489 = load i32, i32* %9, align 4
  %490 = sext i32 %489 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %488, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i64 %490, i1 false)
  %491 = load i8*, i8** %6, align 8
  %492 = load i32, i32* %9, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i8, i8* %491, i64 %493
  store i8 0, i8* %494, align 1
  %495 = load i32, i32* %9, align 4
  %496 = load i8*, i8** %6, align 8
  %497 = sext i32 %495 to i64
  %498 = getelementptr inbounds i8, i8* %496, i64 %497
  store i8* %498, i8** %6, align 8
  br label %499

499:                                              ; preds = %487, %484
  %500 = load i32, i32* %9, align 4
  %501 = load i32, i32* %10, align 4
  %502 = add nsw i32 %501, %500
  store i32 %502, i32* %10, align 4
  br label %503

503:                                              ; preds = %499
  br label %814

504:                                              ; preds = %35
  br label %505

505:                                              ; preds = %504
  store i32 6, i32* %9, align 4
  %506 = load i8*, i8** %6, align 8
  %507 = icmp ne i8* %506, null
  br i1 %507, label %508, label %520

508:                                              ; preds = %505
  %509 = load i8*, i8** %6, align 8
  %510 = load i32, i32* %9, align 4
  %511 = sext i32 %510 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %509, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i64 %511, i1 false)
  %512 = load i8*, i8** %6, align 8
  %513 = load i32, i32* %9, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8, i8* %512, i64 %514
  store i8 0, i8* %515, align 1
  %516 = load i32, i32* %9, align 4
  %517 = load i8*, i8** %6, align 8
  %518 = sext i32 %516 to i64
  %519 = getelementptr inbounds i8, i8* %517, i64 %518
  store i8* %519, i8** %6, align 8
  br label %520

520:                                              ; preds = %508, %505
  %521 = load i32, i32* %9, align 4
  %522 = load i32, i32* %10, align 4
  %523 = add nsw i32 %522, %521
  store i32 %523, i32* %10, align 4
  br label %524

524:                                              ; preds = %520
  br label %814

525:                                              ; preds = %35
  br label %526

526:                                              ; preds = %525
  store i32 6, i32* %9, align 4
  %527 = load i8*, i8** %6, align 8
  %528 = icmp ne i8* %527, null
  br i1 %528, label %529, label %541

529:                                              ; preds = %526
  %530 = load i8*, i8** %6, align 8
  %531 = load i32, i32* %9, align 4
  %532 = sext i32 %531 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %530, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 %532, i1 false)
  %533 = load i8*, i8** %6, align 8
  %534 = load i32, i32* %9, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i8, i8* %533, i64 %535
  store i8 0, i8* %536, align 1
  %537 = load i32, i32* %9, align 4
  %538 = load i8*, i8** %6, align 8
  %539 = sext i32 %537 to i64
  %540 = getelementptr inbounds i8, i8* %538, i64 %539
  store i8* %540, i8** %6, align 8
  br label %541

541:                                              ; preds = %529, %526
  %542 = load i32, i32* %9, align 4
  %543 = load i32, i32* %10, align 4
  %544 = add nsw i32 %543, %542
  store i32 %544, i32* %10, align 4
  br label %545

545:                                              ; preds = %541
  br label %814

546:                                              ; preds = %35
  br label %547

547:                                              ; preds = %546
  store i32 6, i32* %9, align 4
  %548 = load i8*, i8** %6, align 8
  %549 = icmp ne i8* %548, null
  br i1 %549, label %550, label %562

550:                                              ; preds = %547
  %551 = load i8*, i8** %6, align 8
  %552 = load i32, i32* %9, align 4
  %553 = sext i32 %552 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %551, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i64 %553, i1 false)
  %554 = load i8*, i8** %6, align 8
  %555 = load i32, i32* %9, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i8, i8* %554, i64 %556
  store i8 0, i8* %557, align 1
  %558 = load i32, i32* %9, align 4
  %559 = load i8*, i8** %6, align 8
  %560 = sext i32 %558 to i64
  %561 = getelementptr inbounds i8, i8* %559, i64 %560
  store i8* %561, i8** %6, align 8
  br label %562

562:                                              ; preds = %550, %547
  %563 = load i32, i32* %9, align 4
  %564 = load i32, i32* %10, align 4
  %565 = add nsw i32 %564, %563
  store i32 %565, i32* %10, align 4
  br label %566

566:                                              ; preds = %562
  br label %814

567:                                              ; preds = %35
  br label %568

568:                                              ; preds = %567
  store i32 6, i32* %9, align 4
  %569 = load i8*, i8** %6, align 8
  %570 = icmp ne i8* %569, null
  br i1 %570, label %571, label %583

571:                                              ; preds = %568
  %572 = load i8*, i8** %6, align 8
  %573 = load i32, i32* %9, align 4
  %574 = sext i32 %573 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %572, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i64 %574, i1 false)
  %575 = load i8*, i8** %6, align 8
  %576 = load i32, i32* %9, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i8, i8* %575, i64 %577
  store i8 0, i8* %578, align 1
  %579 = load i32, i32* %9, align 4
  %580 = load i8*, i8** %6, align 8
  %581 = sext i32 %579 to i64
  %582 = getelementptr inbounds i8, i8* %580, i64 %581
  store i8* %582, i8** %6, align 8
  br label %583

583:                                              ; preds = %571, %568
  %584 = load i32, i32* %9, align 4
  %585 = load i32, i32* %10, align 4
  %586 = add nsw i32 %585, %584
  store i32 %586, i32* %10, align 4
  br label %587

587:                                              ; preds = %583
  br label %814

588:                                              ; preds = %35
  br label %589

589:                                              ; preds = %588
  store i32 6, i32* %9, align 4
  %590 = load i8*, i8** %6, align 8
  %591 = icmp ne i8* %590, null
  br i1 %591, label %592, label %604

592:                                              ; preds = %589
  %593 = load i8*, i8** %6, align 8
  %594 = load i32, i32* %9, align 4
  %595 = sext i32 %594 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %593, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i64 %595, i1 false)
  %596 = load i8*, i8** %6, align 8
  %597 = load i32, i32* %9, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i8, i8* %596, i64 %598
  store i8 0, i8* %599, align 1
  %600 = load i32, i32* %9, align 4
  %601 = load i8*, i8** %6, align 8
  %602 = sext i32 %600 to i64
  %603 = getelementptr inbounds i8, i8* %601, i64 %602
  store i8* %603, i8** %6, align 8
  br label %604

604:                                              ; preds = %592, %589
  %605 = load i32, i32* %9, align 4
  %606 = load i32, i32* %10, align 4
  %607 = add nsw i32 %606, %605
  store i32 %607, i32* %10, align 4
  br label %608

608:                                              ; preds = %604
  br label %814

609:                                              ; preds = %35
  br label %610

610:                                              ; preds = %609
  store i32 6, i32* %9, align 4
  %611 = load i8*, i8** %6, align 8
  %612 = icmp ne i8* %611, null
  br i1 %612, label %613, label %625

613:                                              ; preds = %610
  %614 = load i8*, i8** %6, align 8
  %615 = load i32, i32* %9, align 4
  %616 = sext i32 %615 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %614, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i64 %616, i1 false)
  %617 = load i8*, i8** %6, align 8
  %618 = load i32, i32* %9, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i8, i8* %617, i64 %619
  store i8 0, i8* %620, align 1
  %621 = load i32, i32* %9, align 4
  %622 = load i8*, i8** %6, align 8
  %623 = sext i32 %621 to i64
  %624 = getelementptr inbounds i8, i8* %622, i64 %623
  store i8* %624, i8** %6, align 8
  br label %625

625:                                              ; preds = %613, %610
  %626 = load i32, i32* %9, align 4
  %627 = load i32, i32* %10, align 4
  %628 = add nsw i32 %627, %626
  store i32 %628, i32* %10, align 4
  br label %629

629:                                              ; preds = %625
  br label %814

630:                                              ; preds = %35
  br label %631

631:                                              ; preds = %630
  store i32 6, i32* %9, align 4
  %632 = load i8*, i8** %6, align 8
  %633 = icmp ne i8* %632, null
  br i1 %633, label %634, label %646

634:                                              ; preds = %631
  %635 = load i8*, i8** %6, align 8
  %636 = load i32, i32* %9, align 4
  %637 = sext i32 %636 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %635, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i64 %637, i1 false)
  %638 = load i8*, i8** %6, align 8
  %639 = load i32, i32* %9, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i8, i8* %638, i64 %640
  store i8 0, i8* %641, align 1
  %642 = load i32, i32* %9, align 4
  %643 = load i8*, i8** %6, align 8
  %644 = sext i32 %642 to i64
  %645 = getelementptr inbounds i8, i8* %643, i64 %644
  store i8* %645, i8** %6, align 8
  br label %646

646:                                              ; preds = %634, %631
  %647 = load i32, i32* %9, align 4
  %648 = load i32, i32* %10, align 4
  %649 = add nsw i32 %648, %647
  store i32 %649, i32* %10, align 4
  br label %650

650:                                              ; preds = %646
  br label %814

651:                                              ; preds = %35
  br label %652

652:                                              ; preds = %651
  store i32 6, i32* %9, align 4
  %653 = load i8*, i8** %6, align 8
  %654 = icmp ne i8* %653, null
  br i1 %654, label %655, label %667

655:                                              ; preds = %652
  %656 = load i8*, i8** %6, align 8
  %657 = load i32, i32* %9, align 4
  %658 = sext i32 %657 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %656, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i64 %658, i1 false)
  %659 = load i8*, i8** %6, align 8
  %660 = load i32, i32* %9, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8, i8* %659, i64 %661
  store i8 0, i8* %662, align 1
  %663 = load i32, i32* %9, align 4
  %664 = load i8*, i8** %6, align 8
  %665 = sext i32 %663 to i64
  %666 = getelementptr inbounds i8, i8* %664, i64 %665
  store i8* %666, i8** %6, align 8
  br label %667

667:                                              ; preds = %655, %652
  %668 = load i32, i32* %9, align 4
  %669 = load i32, i32* %10, align 4
  %670 = add nsw i32 %669, %668
  store i32 %670, i32* %10, align 4
  br label %671

671:                                              ; preds = %667
  br label %814

672:                                              ; preds = %35
  br label %673

673:                                              ; preds = %672
  store i32 6, i32* %9, align 4
  %674 = load i8*, i8** %6, align 8
  %675 = icmp ne i8* %674, null
  br i1 %675, label %676, label %688

676:                                              ; preds = %673
  %677 = load i8*, i8** %6, align 8
  %678 = load i32, i32* %9, align 4
  %679 = sext i32 %678 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %677, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i64 %679, i1 false)
  %680 = load i8*, i8** %6, align 8
  %681 = load i32, i32* %9, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i8, i8* %680, i64 %682
  store i8 0, i8* %683, align 1
  %684 = load i32, i32* %9, align 4
  %685 = load i8*, i8** %6, align 8
  %686 = sext i32 %684 to i64
  %687 = getelementptr inbounds i8, i8* %685, i64 %686
  store i8* %687, i8** %6, align 8
  br label %688

688:                                              ; preds = %676, %673
  %689 = load i32, i32* %9, align 4
  %690 = load i32, i32* %10, align 4
  %691 = add nsw i32 %690, %689
  store i32 %691, i32* %10, align 4
  br label %692

692:                                              ; preds = %688
  br label %814

693:                                              ; preds = %35
  br label %694

694:                                              ; preds = %693
  store i32 6, i32* %9, align 4
  %695 = load i8*, i8** %6, align 8
  %696 = icmp ne i8* %695, null
  br i1 %696, label %697, label %709

697:                                              ; preds = %694
  %698 = load i8*, i8** %6, align 8
  %699 = load i32, i32* %9, align 4
  %700 = sext i32 %699 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %698, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i64 %700, i1 false)
  %701 = load i8*, i8** %6, align 8
  %702 = load i32, i32* %9, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds i8, i8* %701, i64 %703
  store i8 0, i8* %704, align 1
  %705 = load i32, i32* %9, align 4
  %706 = load i8*, i8** %6, align 8
  %707 = sext i32 %705 to i64
  %708 = getelementptr inbounds i8, i8* %706, i64 %707
  store i8* %708, i8** %6, align 8
  br label %709

709:                                              ; preds = %697, %694
  %710 = load i32, i32* %9, align 4
  %711 = load i32, i32* %10, align 4
  %712 = add nsw i32 %711, %710
  store i32 %712, i32* %10, align 4
  br label %713

713:                                              ; preds = %709
  br label %814

714:                                              ; preds = %35
  br label %715

715:                                              ; preds = %714
  store i32 6, i32* %9, align 4
  %716 = load i8*, i8** %6, align 8
  %717 = icmp ne i8* %716, null
  br i1 %717, label %718, label %730

718:                                              ; preds = %715
  %719 = load i8*, i8** %6, align 8
  %720 = load i32, i32* %9, align 4
  %721 = sext i32 %720 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %719, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i64 %721, i1 false)
  %722 = load i8*, i8** %6, align 8
  %723 = load i32, i32* %9, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i8, i8* %722, i64 %724
  store i8 0, i8* %725, align 1
  %726 = load i32, i32* %9, align 4
  %727 = load i8*, i8** %6, align 8
  %728 = sext i32 %726 to i64
  %729 = getelementptr inbounds i8, i8* %727, i64 %728
  store i8* %729, i8** %6, align 8
  br label %730

730:                                              ; preds = %718, %715
  %731 = load i32, i32* %9, align 4
  %732 = load i32, i32* %10, align 4
  %733 = add nsw i32 %732, %731
  store i32 %733, i32* %10, align 4
  br label %734

734:                                              ; preds = %730
  br label %814

735:                                              ; preds = %35
  br label %736

736:                                              ; preds = %735
  store i32 6, i32* %9, align 4
  %737 = load i8*, i8** %6, align 8
  %738 = icmp ne i8* %737, null
  br i1 %738, label %739, label %751

739:                                              ; preds = %736
  %740 = load i8*, i8** %6, align 8
  %741 = load i32, i32* %9, align 4
  %742 = sext i32 %741 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %740, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i64 %742, i1 false)
  %743 = load i8*, i8** %6, align 8
  %744 = load i32, i32* %9, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds i8, i8* %743, i64 %745
  store i8 0, i8* %746, align 1
  %747 = load i32, i32* %9, align 4
  %748 = load i8*, i8** %6, align 8
  %749 = sext i32 %747 to i64
  %750 = getelementptr inbounds i8, i8* %748, i64 %749
  store i8* %750, i8** %6, align 8
  br label %751

751:                                              ; preds = %739, %736
  %752 = load i32, i32* %9, align 4
  %753 = load i32, i32* %10, align 4
  %754 = add nsw i32 %753, %752
  store i32 %754, i32* %10, align 4
  br label %755

755:                                              ; preds = %751
  br label %814

756:                                              ; preds = %35
  %757 = load i32, i32* @parson_escape_slashes, align 4
  %758 = icmp ne i32 %757, 0
  br i1 %758, label %759, label %780

759:                                              ; preds = %756
  br label %760

760:                                              ; preds = %759
  store i32 2, i32* %9, align 4
  %761 = load i8*, i8** %6, align 8
  %762 = icmp ne i8* %761, null
  br i1 %762, label %763, label %775

763:                                              ; preds = %760
  %764 = load i8*, i8** %6, align 8
  %765 = load i32, i32* %9, align 4
  %766 = sext i32 %765 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %764, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 %766, i1 false)
  %767 = load i8*, i8** %6, align 8
  %768 = load i32, i32* %9, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds i8, i8* %767, i64 %769
  store i8 0, i8* %770, align 1
  %771 = load i32, i32* %9, align 4
  %772 = load i8*, i8** %6, align 8
  %773 = sext i32 %771 to i64
  %774 = getelementptr inbounds i8, i8* %772, i64 %773
  store i8* %774, i8** %6, align 8
  br label %775

775:                                              ; preds = %763, %760
  %776 = load i32, i32* %9, align 4
  %777 = load i32, i32* %10, align 4
  %778 = add nsw i32 %777, %776
  store i32 %778, i32* %10, align 4
  br label %779

779:                                              ; preds = %775
  br label %801

780:                                              ; preds = %756
  br label %781

781:                                              ; preds = %780
  store i32 1, i32* %9, align 4
  %782 = load i8*, i8** %6, align 8
  %783 = icmp ne i8* %782, null
  br i1 %783, label %784, label %796

784:                                              ; preds = %781
  %785 = load i8*, i8** %6, align 8
  %786 = load i32, i32* %9, align 4
  %787 = sext i32 %786 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %785, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 %787, i1 false)
  %788 = load i8*, i8** %6, align 8
  %789 = load i32, i32* %9, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds i8, i8* %788, i64 %790
  store i8 0, i8* %791, align 1
  %792 = load i32, i32* %9, align 4
  %793 = load i8*, i8** %6, align 8
  %794 = sext i32 %792 to i64
  %795 = getelementptr inbounds i8, i8* %793, i64 %794
  store i8* %795, i8** %6, align 8
  br label %796

796:                                              ; preds = %784, %781
  %797 = load i32, i32* %9, align 4
  %798 = load i32, i32* %10, align 4
  %799 = add nsw i32 %798, %797
  store i32 %799, i32* %10, align 4
  br label %800

800:                                              ; preds = %796
  br label %801

801:                                              ; preds = %800, %779
  br label %814

802:                                              ; preds = %35
  %803 = load i8*, i8** %6, align 8
  %804 = icmp ne i8* %803, null
  br i1 %804, label %805, label %811

805:                                              ; preds = %802
  %806 = load i8, i8* %8, align 1
  %807 = load i8*, i8** %6, align 8
  %808 = getelementptr inbounds i8, i8* %807, i64 0
  store i8 %806, i8* %808, align 1
  %809 = load i8*, i8** %6, align 8
  %810 = getelementptr inbounds i8, i8* %809, i64 1
  store i8* %810, i8** %6, align 8
  br label %811

811:                                              ; preds = %805, %802
  %812 = load i32, i32* %10, align 4
  %813 = add nsw i32 %812, 1
  store i32 %813, i32* %10, align 4
  br label %814

814:                                              ; preds = %811, %801, %755, %734, %713, %692, %671, %650, %629, %608, %587, %566, %545, %524, %503, %482, %461, %440, %419, %398, %377, %356, %335, %314, %293, %272, %251, %230, %209, %188, %167, %146, %125, %104, %83, %62
  br label %815

815:                                              ; preds = %814
  %816 = load i64, i64* %7, align 8
  %817 = add i64 %816, 1
  store i64 %817, i64* %7, align 8
  br label %31, !llvm.loop !46

818:                                              ; preds = %31
  br label %819

819:                                              ; preds = %818
  store i32 1, i32* %9, align 4
  %820 = load i8*, i8** %6, align 8
  %821 = icmp ne i8* %820, null
  br i1 %821, label %822, label %834

822:                                              ; preds = %819
  %823 = load i8*, i8** %6, align 8
  %824 = load i32, i32* %9, align 4
  %825 = sext i32 %824 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %823, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 %825, i1 false)
  %826 = load i8*, i8** %6, align 8
  %827 = load i32, i32* %9, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds i8, i8* %826, i64 %828
  store i8 0, i8* %829, align 1
  %830 = load i32, i32* %9, align 4
  %831 = load i8*, i8** %6, align 8
  %832 = sext i32 %830 to i64
  %833 = getelementptr inbounds i8, i8* %831, i64 %832
  store i8* %833, i8** %6, align 8
  br label %834

834:                                              ; preds = %822, %819
  %835 = load i32, i32* %9, align 4
  %836 = load i32, i32* %10, align 4
  %837 = add nsw i32 %836, %835
  store i32 %837, i32* %10, align 4
  br label %838

838:                                              ; preds = %834
  %839 = load i32, i32* %10, align 4
  ret i32 %839
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parson_sprintf(i8* noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %12 = call i32 @vsprintf(i8* noundef %9, i8* noundef %10, %struct.__va_list_tag* noundef %11) #8
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_end(i8* %14)
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind
declare dso_local i32 @vsprintf(i8* noundef, i8* noundef, %struct.__va_list_tag* noundef) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
