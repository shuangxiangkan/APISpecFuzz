; ModuleID = '/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF/cJSON_InsertItemInArray/cJSON_InsertItemInArray_svf_complete.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error = type { i8*, i64 }
%struct.internal_hooks = type { i8* (i64)*, void (i8*)*, i8* (i8*, i64)* }
%struct.cJSON = type { %struct.cJSON*, %struct.cJSON*, %struct.cJSON*, i32, i8*, i32, double, i8* }
%struct.cJSON_Hooks = type { i8* (i64)*, void (i8*)* }
%struct.parse_buffer = type { i8*, i64, i64, i64, %struct.internal_hooks }
%struct.printbuffer = type { i8*, i64, i64, i64, i32, i32, %struct.internal_hooks }

@global_error = internal global %struct.error zeroinitializer, align 8
@cJSON_Version.version = internal global [15 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [9 x i8] c"%i.%i.%i\00", align 1
@global_hooks = internal global %struct.internal_hooks { i8* (i64)* @malloc, void (i8*)* @free, i8* (i8*, i64)* @realloc }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%1.15g\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%1.17g\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"u%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cJSON*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call %struct.cJSON* @cJSON_CreateObject()
  store %struct.cJSON* %6, %struct.cJSON** %2, align 8
  store i32 123, i32* %3, align 4
  %7 = call %struct.cJSON* @cJSON_CreateObject()
  store %struct.cJSON* %7, %struct.cJSON** %4, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %11 = call i32 @cJSON_InsertItemInArray(%struct.cJSON* noundef %8, i32 noundef %9, %struct.cJSON* noundef %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %13 = bitcast %struct.cJSON* %12 to i8*
  %14 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %15 = bitcast %struct.cJSON* %14 to i8*
  call void @MAYALIAS(i8* noundef %13, i8* noundef %15)
  %16 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %16)
  %17 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %17)
  ret i32 0
}

declare dso_local void @MAYALIAS(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cJSON_GetErrorPtr() #0 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.error, %struct.error* @global_error, i32 0, i32 0), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.error, %struct.error* @global_error, i32 0, i32 1), align 8
  %3 = getelementptr inbounds i8, i8* %1, i64 %2
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cJSON_GetStringValue(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = call i32 @cJSON_IsString(%struct.cJSON* noundef %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %12

8:                                                ; preds = %1
  %9 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %10 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %9, i32 0, i32 4
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %8, %7
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_IsString(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = icmp eq %struct.cJSON* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cJSON_GetNumberValue(%struct.cJSON* noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = call i32 @cJSON_IsNumber(%struct.cJSON* noundef %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store double 0x7FF8000000000000, double* %2, align 8
  br label %12

8:                                                ; preds = %1
  %9 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %10 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %9, i32 0, i32 6
  %11 = load double, double* %10, align 8
  store double %11, double* %2, align 8
  br label %12

12:                                               ; preds = %8, %7
  %13 = load double, double* %2, align 8
  ret double %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_IsNumber(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = icmp eq %struct.cJSON* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 8
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cJSON_Version() #0 {
  %1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @cJSON_Version.version, i64 0, i64 0), i64 noundef 15, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 1, i32 noundef 7, i32 noundef 15) #7
  ret i8* getelementptr inbounds ([15 x i8], [15 x i8]* @cJSON_Version.version, i64 0, i64 0)
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cJSON_InitHooks(%struct.cJSON_Hooks* noundef %0) #0 {
  %2 = alloca %struct.cJSON_Hooks*, align 8
  store %struct.cJSON_Hooks* %0, %struct.cJSON_Hooks** %2, align 8
  %3 = load %struct.cJSON_Hooks*, %struct.cJSON_Hooks** %2, align 8
  %4 = icmp eq %struct.cJSON_Hooks* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i8* (i64)* @malloc, i8* (i64)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 0), align 8
  store void (i8*)* @free, void (i8*)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 1), align 8
  store i8* (i8*, i64)* @realloc, i8* (i8*, i64)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 2), align 8
  br label %31

6:                                                ; preds = %1
  store i8* (i64)* @malloc, i8* (i64)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 0), align 8
  %7 = load %struct.cJSON_Hooks*, %struct.cJSON_Hooks** %2, align 8
  %8 = getelementptr inbounds %struct.cJSON_Hooks, %struct.cJSON_Hooks* %7, i32 0, i32 0
  %9 = load i8* (i64)*, i8* (i64)** %8, align 8
  %10 = icmp ne i8* (i64)* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.cJSON_Hooks*, %struct.cJSON_Hooks** %2, align 8
  %13 = getelementptr inbounds %struct.cJSON_Hooks, %struct.cJSON_Hooks* %12, i32 0, i32 0
  %14 = load i8* (i64)*, i8* (i64)** %13, align 8
  store i8* (i64)* %14, i8* (i64)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 0), align 8
  br label %15

15:                                               ; preds = %11, %6
  store void (i8*)* @free, void (i8*)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 1), align 8
  %16 = load %struct.cJSON_Hooks*, %struct.cJSON_Hooks** %2, align 8
  %17 = getelementptr inbounds %struct.cJSON_Hooks, %struct.cJSON_Hooks* %16, i32 0, i32 1
  %18 = load void (i8*)*, void (i8*)** %17, align 8
  %19 = icmp ne void (i8*)* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.cJSON_Hooks*, %struct.cJSON_Hooks** %2, align 8
  %22 = getelementptr inbounds %struct.cJSON_Hooks, %struct.cJSON_Hooks* %21, i32 0, i32 1
  %23 = load void (i8*)*, void (i8*)** %22, align 8
  store void (i8*)* %23, void (i8*)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 1), align 8
  br label %24

24:                                               ; preds = %20, %15
  store i8* (i8*, i64)* null, i8* (i8*, i64)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 2), align 8
  %25 = load i8* (i64)*, i8* (i64)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 0), align 8
  %26 = icmp eq i8* (i64)* %25, @malloc
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load void (i8*)*, void (i8*)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 1), align 8
  %29 = icmp eq void (i8*)* %28, @free
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8* (i8*, i64)* @realloc, i8* (i8*, i64)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 2), align 8
  br label %31

31:                                               ; preds = %30, %27, %24, %5
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cJSON_Delete(%struct.cJSON* noundef %0) #0 {
  %2 = alloca %struct.cJSON*, align 8
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %2, align 8
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %4

4:                                                ; preds = %57, %1
  %5 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %6 = icmp ne %struct.cJSON* %5, null
  br i1 %6, label %7, label %62

7:                                                ; preds = %4
  %8 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 0
  %10 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  store %struct.cJSON* %10, %struct.cJSON** %3, align 8
  %11 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %12 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 256
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %7
  %17 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %18 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %17, i32 0, i32 2
  %19 = load %struct.cJSON*, %struct.cJSON** %18, align 8
  %20 = icmp ne %struct.cJSON* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %23 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %22, i32 0, i32 2
  %24 = load %struct.cJSON*, %struct.cJSON** %23, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %24)
  br label %25

25:                                               ; preds = %21, %16, %7
  %26 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %27 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 256
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %33 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load void (i8*)*, void (i8*)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 1), align 8
  %38 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %39 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  call void %37(i8* noundef %40)
  br label %41

41:                                               ; preds = %36, %31, %25
  %42 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %43 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 512
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %41
  %48 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %49 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %48, i32 0, i32 7
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load void (i8*)*, void (i8*)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 1), align 8
  %54 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %55 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %54, i32 0, i32 7
  %56 = load i8*, i8** %55, align 8
  call void %53(i8* noundef %56)
  br label %57

57:                                               ; preds = %52, %47, %41
  %58 = load void (i8*)*, void (i8*)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 1), align 8
  %59 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %60 = bitcast %struct.cJSON* %59 to i8*
  call void %58(i8* noundef %60)
  %61 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  store %struct.cJSON* %61, %struct.cJSON** %2, align 8
  br label %4, !llvm.loop !4

62:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cJSON_SetNumberHelper(%struct.cJSON* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca double, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = fcmp oge double %5, 0x41DFFFFFFFC00000
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 5
  store i32 2147483647, i32* %9, align 8
  br label %22

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  %12 = fcmp ole double %11, 0xC1E0000000000000
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %15 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %14, i32 0, i32 5
  store i32 -2147483648, i32* %15, align 8
  br label %21

16:                                               ; preds = %10
  %17 = load double, double* %4, align 8
  %18 = fptosi double %17 to i32
  %19 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %20 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %16, %13
  br label %22

22:                                               ; preds = %21, %7
  %23 = load double, double* %4, align 8
  %24 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %25 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %24, i32 0, i32 6
  store double %23, double* %25, align 8
  ret double %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cJSON_SetValuestring(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %8 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 16
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %14 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 256
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  store i8* null, i8** %3, align 8
  br label %56

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strlen(i8* noundef %20) #8
  %22 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %23 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strlen(i8* noundef %24) #8
  %26 = icmp ule i64 %21, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %29 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @strcpy(i8* noundef %30, i8* noundef %31) #7
  %33 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %34 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %3, align 8
  br label %56

36:                                               ; preds = %19
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @cJSON_strdup(i8* noundef %37, %struct.internal_hooks* noundef @global_hooks)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i8* null, i8** %3, align 8
  br label %56

42:                                               ; preds = %36
  %43 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %44 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %49 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  call void @cJSON_free(i8* noundef %50)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %54 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %3, align 8
  br label %56

56:                                               ; preds = %51, %41, %27, %18
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cJSON_strdup(i8* noundef %0, %struct.internal_hooks* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.internal_hooks*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.internal_hooks* %1, %struct.internal_hooks** %5, align 8
  store i64 0, i64* %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %28

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* noundef %12) #8
  %14 = add i64 %13, 1
  store i64 %14, i64* %6, align 8
  %15 = load %struct.internal_hooks*, %struct.internal_hooks** %5, align 8
  %16 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %15, i32 0, i32 0
  %17 = load i8* (i64)*, i8* (i64)** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i8* %17(i64 noundef %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  br label %28

23:                                               ; preds = %11
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %25, i64 %26, i1 false)
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %23, %22, %10
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cJSON_free(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load void (i8*)*, void (i8*)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 1), align 8
  %4 = load i8*, i8** %2, align 8
  call void %3(i8* noundef %4)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_ParseWithOpts(i8* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* null, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.cJSON* null, %struct.cJSON** %4, align 8
  br label %21

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* noundef %13) #8
  %15 = add i64 %14, 1
  store i64 %15, i64* %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.cJSON* @cJSON_ParseWithLengthOpts(i8* noundef %16, i64 noundef %17, i8** noundef %18, i32 noundef %19)
  store %struct.cJSON* %20, %struct.cJSON** %4, align 8
  br label %21

21:                                               ; preds = %12, %11
  %22 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  ret %struct.cJSON* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_ParseWithLengthOpts(i8* noundef %0, i64 noundef %1, i8** noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.parse_buffer, align 8
  %11 = alloca %struct.cJSON*, align 8
  %12 = alloca %struct.error, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = bitcast %struct.parse_buffer* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 56, i1 false)
  store %struct.cJSON* null, %struct.cJSON** %11, align 8
  store i8* null, i8** getelementptr inbounds (%struct.error, %struct.error* @global_error, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.error, %struct.error* @global_error, i32 0, i32 1), align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 0, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %4
  br label %73

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 4
  %27 = bitcast %struct.internal_hooks* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.internal_hooks* @global_hooks to i8*), i64 24, i1 false)
  %28 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %28, %struct.cJSON** %11, align 8
  %29 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  %30 = icmp eq %struct.cJSON* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %73

32:                                               ; preds = %20
  %33 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  %34 = call %struct.parse_buffer* @skip_utf8_bom(%struct.parse_buffer* noundef %10)
  %35 = call %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %34)
  %36 = call i32 @parse_value(%struct.cJSON* noundef %33, %struct.parse_buffer* noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %73

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = call %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %10)
  %44 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %45, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49, %42
  br label %73

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i8**, i8*** %8, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8**, i8*** %8, align 8
  store i8* %69, i8** %70, align 8
  br label %71

71:                                               ; preds = %64, %61
  %72 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  store %struct.cJSON* %72, %struct.cJSON** %5, align 8
  br label %117

73:                                               ; preds = %59, %38, %31, %19
  %74 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  %75 = icmp ne %struct.cJSON* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %77)
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i8*, i8** %6, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %116

81:                                               ; preds = %78
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds %struct.error, %struct.error* %12, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.error, %struct.error* %12, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.error, %struct.error* %12, i32 0, i32 1
  store i64 %92, i64* %93, align 8
  br label %104

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %10, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %100, 1
  %102 = getelementptr inbounds %struct.error, %struct.error* %12, i32 0, i32 1
  store i64 %101, i64* %102, align 8
  br label %103

103:                                              ; preds = %98, %94
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i8**, i8*** %8, align 8
  %106 = icmp ne i8** %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.error, %struct.error* %12, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds %struct.error, %struct.error* %12, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8**, i8*** %8, align 8
  store i8* %112, i8** %113, align 8
  br label %114

114:                                              ; preds = %107, %104
  %115 = bitcast %struct.error* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.error* @global_error to i8*), i8* align 8 %115, i64 16, i1 false)
  br label %116

116:                                              ; preds = %114, %78
  store %struct.cJSON* null, %struct.cJSON** %5, align 8
  br label %117

117:                                              ; preds = %116, %71
  %118 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  ret %struct.cJSON* %118
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef %0) #0 {
  %2 = alloca %struct.internal_hooks*, align 8
  %3 = alloca %struct.cJSON*, align 8
  store %struct.internal_hooks* %0, %struct.internal_hooks** %2, align 8
  %4 = load %struct.internal_hooks*, %struct.internal_hooks** %2, align 8
  %5 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %4, i32 0, i32 0
  %6 = load i8* (i64)*, i8* (i64)** %5, align 8
  %7 = call i8* %6(i64 noundef 64)
  %8 = bitcast i8* %7 to %struct.cJSON*
  store %struct.cJSON* %8, %struct.cJSON** %3, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %10 = icmp ne %struct.cJSON* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %13 = bitcast %struct.cJSON* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 64, i1 false)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.parse_buffer* @skip_utf8_bom(%struct.parse_buffer* noundef %0) #0 {
  %2 = alloca %struct.parse_buffer*, align 8
  %3 = alloca %struct.parse_buffer*, align 8
  store %struct.parse_buffer* %0, %struct.parse_buffer** %3, align 8
  %4 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %5 = icmp eq %struct.parse_buffer* %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %6, %1
  store %struct.parse_buffer* null, %struct.parse_buffer** %2, align 8
  br label %46

17:                                               ; preds = %11
  %18 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %19 = icmp ne %struct.parse_buffer* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 4
  %25 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %20
  %30 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = call i32 @strncmp(i8* noundef %36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef 3) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %41 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 3
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %39, %29, %20, %17
  %45 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  store %struct.parse_buffer* %45, %struct.parse_buffer** %2, align 8
  br label %46

46:                                               ; preds = %44, %16
  %47 = load %struct.parse_buffer*, %struct.parse_buffer** %2, align 8
  ret %struct.parse_buffer* %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %0) #0 {
  %2 = alloca %struct.parse_buffer*, align 8
  %3 = alloca %struct.parse_buffer*, align 8
  store %struct.parse_buffer* %0, %struct.parse_buffer** %3, align 8
  %4 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %5 = icmp eq %struct.parse_buffer* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store %struct.parse_buffer* null, %struct.parse_buffer** %2, align 8
  br label %73

12:                                               ; preds = %6
  %13 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %14 = icmp ne %struct.parse_buffer* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 0
  %20 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %15, %12
  %25 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  store %struct.parse_buffer* %25, %struct.parse_buffer** %2, align 8
  br label %73

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %53, %26
  %28 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %29 = icmp ne %struct.parse_buffer* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 0
  %35 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %30
  %40 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %41 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %44 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp sle i32 %49, 32
  br label %51

51:                                               ; preds = %39, %30, %27
  %52 = phi i1 [ false, %30 ], [ false, %27 ], [ %50, %39 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %55 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %27, !llvm.loop !6

58:                                               ; preds = %51
  %59 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %60 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %63 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  %68 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %66, %58
  %72 = load %struct.parse_buffer*, %struct.parse_buffer** %3, align 8
  store %struct.parse_buffer* %72, %struct.parse_buffer** %2, align 8
  br label %73

73:                                               ; preds = %71, %24, %11
  %74 = load %struct.parse_buffer*, %struct.parse_buffer** %2, align 8
  ret %struct.parse_buffer* %74
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_value(%struct.cJSON* noundef %0, %struct.parse_buffer* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.parse_buffer*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.parse_buffer* %1, %struct.parse_buffer** %5, align 8
  %6 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %7 = icmp eq %struct.parse_buffer* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %240

14:                                               ; preds = %8
  %15 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %16 = icmp ne %struct.parse_buffer* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %14
  %18 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, 4
  %22 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ule i64 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %17
  %27 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = call i32 @strncmp(i8* noundef %33, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %38 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %37, i32 0, i32 3
  store i32 4, i32* %38, align 8
  %39 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %40, align 8
  store i32 1, i32* %3, align 4
  br label %240

43:                                               ; preds = %26, %17, %14
  %44 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %45 = icmp ne %struct.parse_buffer* %44, null
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 5
  %51 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %52 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ule i64 %50, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %46
  %56 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = call i32 @strncmp(i8* noundef %62, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef 5) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %67 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %66, i32 0, i32 3
  store i32 1, i32* %67, align 8
  %68 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 5
  store i64 %71, i64* %69, align 8
  store i32 1, i32* %3, align 4
  br label %240

72:                                               ; preds = %55, %46, %43
  %73 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %74 = icmp ne %struct.parse_buffer* %73, null
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %77 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 4
  %80 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %81 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ule i64 %79, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %75
  %85 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %86 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %89 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = call i32 @strncmp(i8* noundef %91, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 4) #8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %84
  %95 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %96 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %95, i32 0, i32 3
  store i32 2, i32* %96, align 8
  %97 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %98 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %97, i32 0, i32 5
  store i32 1, i32* %98, align 8
  %99 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %100 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %100, align 8
  store i32 1, i32* %3, align 4
  br label %240

103:                                              ; preds = %84, %75, %72
  %104 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %105 = icmp ne %struct.parse_buffer* %104, null
  br i1 %105, label %106, label %131

106:                                              ; preds = %103
  %107 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %108 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 0
  %111 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %112 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %106
  %116 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %117 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %120 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 34
  br i1 %126, label %127, label %131

127:                                              ; preds = %115
  %128 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %129 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %130 = call i32 @parse_string(%struct.cJSON* noundef %128, %struct.parse_buffer* noundef %129)
  store i32 %130, i32* %3, align 4
  br label %240

131:                                              ; preds = %115, %106, %103
  %132 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %133 = icmp ne %struct.parse_buffer* %132, null
  br i1 %133, label %134, label %183

134:                                              ; preds = %131
  %135 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %136 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 0
  %139 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %140 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ult i64 %138, %141
  br i1 %142, label %143, label %183

143:                                              ; preds = %134
  %144 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %145 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %148 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 45
  br i1 %154, label %179, label %155

155:                                              ; preds = %143
  %156 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %157 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %160 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp sge i32 %165, 48
  br i1 %166, label %167, label %183

167:                                              ; preds = %155
  %168 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %169 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %172 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp sle i32 %177, 57
  br i1 %178, label %179, label %183

179:                                              ; preds = %167, %143
  %180 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %181 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %182 = call i32 @parse_number(%struct.cJSON* noundef %180, %struct.parse_buffer* noundef %181)
  store i32 %182, i32* %3, align 4
  br label %240

183:                                              ; preds = %167, %155, %134, %131
  %184 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %185 = icmp ne %struct.parse_buffer* %184, null
  br i1 %185, label %186, label %211

186:                                              ; preds = %183
  %187 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %188 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %189, 0
  %191 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %192 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ult i64 %190, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %186
  %196 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %197 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %200 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 91
  br i1 %206, label %207, label %211

207:                                              ; preds = %195
  %208 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %209 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %210 = call i32 @parse_array(%struct.cJSON* noundef %208, %struct.parse_buffer* noundef %209)
  store i32 %210, i32* %3, align 4
  br label %240

211:                                              ; preds = %195, %186, %183
  %212 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %213 = icmp ne %struct.parse_buffer* %212, null
  br i1 %213, label %214, label %239

214:                                              ; preds = %211
  %215 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %216 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %217, 0
  %219 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %220 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ult i64 %218, %221
  br i1 %222, label %223, label %239

223:                                              ; preds = %214
  %224 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %225 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %228 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp eq i32 %233, 123
  br i1 %234, label %235, label %239

235:                                              ; preds = %223
  %236 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %237 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %238 = call i32 @parse_object(%struct.cJSON* noundef %236, %struct.parse_buffer* noundef %237)
  store i32 %238, i32* %3, align 4
  br label %240

239:                                              ; preds = %223, %214, %211
  store i32 0, i32* %3, align 4
  br label %240

240:                                              ; preds = %239, %235, %207, %179, %127, %94, %65, %36, %13
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_string(%struct.cJSON* noundef %0, %struct.parse_buffer* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.parse_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.parse_buffer* %1, %struct.parse_buffer** %5, align 8
  %13 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %6, align 8
  %21 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %29 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 34
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %219

41:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %42

42:                                               ; preds = %86, %41
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %43 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 34
  br label %59

59:                                               ; preds = %54, %42
  %60 = phi i1 [ false, %42 ], [ %58, %54 ]
  br i1 %60, label %61, label %89

61:                                               ; preds = %59
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 92
  br i1 %66, label %67, label %86

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %71 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %69 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %77 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %219

81:                                               ; preds = %67
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %11, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %7, align 8
  br label %86

86:                                               ; preds = %81, %61
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %7, align 8
  br label %42, !llvm.loop !7

89:                                               ; preds = %59
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %92 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = ptrtoint i8* %90 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %98 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %96, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %89
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 34
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %89
  br label %219

107:                                              ; preds = %101
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %110 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %113 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = ptrtoint i8* %108 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = load i64, i64* %11, align 8
  %120 = sub i64 %118, %119
  store i64 %120, i64* %10, align 8
  %121 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %122 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %122, i32 0, i32 0
  %124 = load i8* (i64)*, i8* (i64)** %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, 1
  %127 = call i8* %124(i64 noundef %126)
  store i8* %127, i8** %9, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %107
  br label %219

131:                                              ; preds = %107
  %132 = load i8*, i8** %9, align 8
  store i8* %132, i8** %8, align 8
  br label %133

133:                                              ; preds = %198, %131
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = icmp ult i8* %134, %135
  br i1 %136, label %137, label %199

137:                                              ; preds = %133
  %138 = load i8*, i8** %6, align 8
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp ne i32 %140, 92
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %6, align 8
  %145 = load i8, i8* %143, align 1
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %8, align 8
  store i8 %145, i8* %146, align 1
  br label %198

148:                                              ; preds = %137
  store i8 2, i8* %12, align 1
  %149 = load i8*, i8** %7, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = icmp slt i64 %153, 1
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %219

156:                                              ; preds = %148
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  switch i32 %160, label %191 [
    i32 98, label %161
    i32 102, label %164
    i32 110, label %167
    i32 114, label %170
    i32 116, label %173
    i32 34, label %176
    i32 92, label %176
    i32 47, label %176
    i32 117, label %182
  ]

161:                                              ; preds = %156
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %8, align 8
  store i8 8, i8* %162, align 1
  br label %192

164:                                              ; preds = %156
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %8, align 8
  store i8 12, i8* %165, align 1
  br label %192

167:                                              ; preds = %156
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %8, align 8
  store i8 10, i8* %168, align 1
  br label %192

170:                                              ; preds = %156
  %171 = load i8*, i8** %8, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %8, align 8
  store i8 13, i8* %171, align 1
  br label %192

173:                                              ; preds = %156
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %8, align 8
  store i8 9, i8* %174, align 1
  br label %192

176:                                              ; preds = %156, %156, %156
  %177 = load i8*, i8** %6, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %8, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %8, align 8
  store i8 %179, i8* %180, align 1
  br label %192

182:                                              ; preds = %156
  %183 = load i8*, i8** %6, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = call zeroext i8 @utf16_literal_to_utf8(i8* noundef %183, i8* noundef %184, i8** noundef %8)
  store i8 %185, i8* %12, align 1
  %186 = load i8, i8* %12, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %219

190:                                              ; preds = %182
  br label %192

191:                                              ; preds = %156
  br label %219

192:                                              ; preds = %190, %176, %173, %170, %167, %164, %161
  %193 = load i8, i8* %12, align 1
  %194 = zext i8 %193 to i32
  %195 = load i8*, i8** %6, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %6, align 8
  br label %198

198:                                              ; preds = %192, %142
  br label %133, !llvm.loop !8

199:                                              ; preds = %133
  %200 = load i8*, i8** %8, align 8
  store i8 0, i8* %200, align 1
  %201 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %202 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %201, i32 0, i32 3
  store i32 16, i32* %202, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %205 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %208 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = ptrtoint i8* %206 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %214 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %213, i32 0, i32 2
  store i64 %212, i64* %214, align 8
  %215 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %216 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %216, align 8
  store i32 1, i32* %3, align 4
  br label %242

219:                                              ; preds = %191, %189, %155, %130, %106, %80, %40
  %220 = load i8*, i8** %9, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %224 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %224, i32 0, i32 1
  %226 = load void (i8*)*, void (i8*)** %225, align 8
  %227 = load i8*, i8** %9, align 8
  call void %226(i8* noundef %227)
  br label %228

228:                                              ; preds = %222, %219
  %229 = load i8*, i8** %6, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %241

231:                                              ; preds = %228
  %232 = load i8*, i8** %6, align 8
  %233 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %234 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = ptrtoint i8* %232 to i64
  %237 = ptrtoint i8* %235 to i64
  %238 = sub i64 %236, %237
  %239 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %240 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %239, i32 0, i32 2
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %231, %228
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %241, %199
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_number(%struct.cJSON* noundef %0, %struct.parse_buffer* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.parse_buffer*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.parse_buffer* %1, %struct.parse_buffer** %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store i8* null, i8** %7, align 8
  %11 = call zeroext i8 @get_decimal_point()
  store i8 %11, i8* %9, align 1
  store i64 0, i64* %10, align 8
  %12 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %13 = icmp eq %struct.parse_buffer* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %118

20:                                               ; preds = %14
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %72, %20
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %22, 63
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %26 = icmp ne %struct.parse_buffer* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br label %37

37:                                               ; preds = %27, %24
  %38 = phi i1 [ false, %24 ], [ %36, %27 ]
  br label %39

39:                                               ; preds = %37, %21
  %40 = phi i1 [ false, %21 ], [ %38, %37 ]
  br i1 %40, label %41, label %75

41:                                               ; preds = %39
  %42 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  switch i32 %52, label %70 [
    i32 48, label %53
    i32 49, label %53
    i32 50, label %53
    i32 51, label %53
    i32 52, label %53
    i32 53, label %53
    i32 54, label %53
    i32 55, label %53
    i32 56, label %53
    i32 57, label %53
    i32 43, label %53
    i32 45, label %53
    i32 101, label %53
    i32 69, label %53
    i32 46, label %66
  ]

53:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %54 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %58 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %64
  store i8 %63, i8* %65, align 1
  br label %71

66:                                               ; preds = %41
  %67 = load i8, i8* %9, align 1
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %68
  store i8 %67, i8* %69, align 1
  br label %71

70:                                               ; preds = %41
  br label %76

71:                                               ; preds = %66, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %21, !llvm.loop !9

75:                                               ; preds = %39
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %77
  store i8 0, i8* %78, align 1
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %80 = call double @strtod(i8* noundef %79, i8** noundef %7) #7
  store double %80, double* %6, align 8
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %82 = load i8*, i8** %7, align 8
  %83 = icmp eq i8* %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %118

85:                                               ; preds = %76
  %86 = load double, double* %6, align 8
  %87 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %88 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %87, i32 0, i32 6
  store double %86, double* %88, align 8
  %89 = load double, double* %6, align 8
  %90 = fcmp oge double %89, 0x41DFFFFFFFC00000
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %93 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %92, i32 0, i32 5
  store i32 2147483647, i32* %93, align 8
  br label %106

94:                                               ; preds = %85
  %95 = load double, double* %6, align 8
  %96 = fcmp ole double %95, 0xC1E0000000000000
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %99 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %98, i32 0, i32 5
  store i32 -2147483648, i32* %99, align 8
  br label %105

100:                                              ; preds = %94
  %101 = load double, double* %6, align 8
  %102 = fptosi double %101 to i32
  %103 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %104 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %100, %97
  br label %106

106:                                              ; preds = %105, %91
  %107 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %108 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %107, i32 0, i32 3
  store i32 8, i32* %108, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %115 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, %113
  store i64 %117, i64* %115, align 8
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %106, %84, %19
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_array(%struct.cJSON* noundef %0, %struct.parse_buffer* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.parse_buffer*, align 8
  %6 = alloca %struct.cJSON*, align 8
  %7 = alloca %struct.cJSON*, align 8
  %8 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.parse_buffer* %1, %struct.parse_buffer** %5, align 8
  store %struct.cJSON* null, %struct.cJSON** %6, align 8
  store %struct.cJSON* null, %struct.cJSON** %7, align 8
  %9 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %11, 1000
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %198

14:                                               ; preds = %2
  %15 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 91
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %192

31:                                               ; preds = %14
  %32 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %37 = call %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %36)
  %38 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %39 = icmp ne %struct.parse_buffer* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %31
  %41 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 0
  %45 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 93
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %171

62:                                               ; preds = %49, %40, %31
  %63 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %64 = icmp ne %struct.parse_buffer* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 0
  %70 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %71 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %65, %62
  %75 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %76 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %76, align 8
  br label %192

79:                                               ; preds = %65
  %80 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %81 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %143, %79
  %85 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %86 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %85, i32 0, i32 4
  %87 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef %86)
  store %struct.cJSON* %87, %struct.cJSON** %8, align 8
  %88 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %89 = icmp eq %struct.cJSON* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %192

91:                                               ; preds = %84
  %92 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %93 = icmp eq %struct.cJSON* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  store %struct.cJSON* %95, %struct.cJSON** %6, align 8
  store %struct.cJSON* %95, %struct.cJSON** %7, align 8
  br label %104

96:                                               ; preds = %91
  %97 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %98 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %99 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %98, i32 0, i32 0
  store %struct.cJSON* %97, %struct.cJSON** %99, align 8
  %100 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %101 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %102 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %101, i32 0, i32 1
  store %struct.cJSON* %100, %struct.cJSON** %102, align 8
  %103 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  store %struct.cJSON* %103, %struct.cJSON** %7, align 8
  br label %104

104:                                              ; preds = %96, %94
  %105 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %106 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %110 = call %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %109)
  %111 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %112 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %113 = call i32 @parse_value(%struct.cJSON* noundef %111, %struct.parse_buffer* noundef %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %104
  br label %192

116:                                              ; preds = %104
  %117 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %118 = call %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %117)
  br label %119

119:                                              ; preds = %116
  %120 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %121 = icmp ne %struct.parse_buffer* %120, null
  br i1 %121, label %122, label %143

122:                                              ; preds = %119
  %123 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %124 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 0
  %127 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %128 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ult i64 %126, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %122
  %132 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %133 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %136 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 44
  br label %143

143:                                              ; preds = %131, %122, %119
  %144 = phi i1 [ false, %122 ], [ false, %119 ], [ %142, %131 ]
  br i1 %144, label %84, label %145, !llvm.loop !10

145:                                              ; preds = %143
  %146 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %147 = icmp ne %struct.parse_buffer* %146, null
  br i1 %147, label %148, label %169

148:                                              ; preds = %145
  %149 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %150 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, 0
  %153 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %154 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ult i64 %152, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %148
  %158 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %159 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %162 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp ne i32 %167, 93
  br i1 %168, label %169, label %170

169:                                              ; preds = %157, %148, %145
  br label %192

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170, %61
  %172 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %173 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, -1
  store i64 %175, i64* %173, align 8
  %176 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %177 = icmp ne %struct.cJSON* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %180 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %181 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %180, i32 0, i32 1
  store %struct.cJSON* %179, %struct.cJSON** %181, align 8
  br label %182

182:                                              ; preds = %178, %171
  %183 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %184 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %183, i32 0, i32 3
  store i32 32, i32* %184, align 8
  %185 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %186 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %187 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %186, i32 0, i32 2
  store %struct.cJSON* %185, %struct.cJSON** %187, align 8
  %188 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %189 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %189, align 8
  store i32 1, i32* %3, align 4
  br label %198

192:                                              ; preds = %169, %115, %90, %74, %30
  %193 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %194 = icmp ne %struct.cJSON* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %196)
  br label %197

197:                                              ; preds = %195, %192
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %182, %13
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_object(%struct.cJSON* noundef %0, %struct.parse_buffer* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.parse_buffer*, align 8
  %6 = alloca %struct.cJSON*, align 8
  %7 = alloca %struct.cJSON*, align 8
  %8 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.parse_buffer* %1, %struct.parse_buffer** %5, align 8
  store %struct.cJSON* null, %struct.cJSON** %6, align 8
  store %struct.cJSON* null, %struct.cJSON** %7, align 8
  %9 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %11, 1000
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %256

14:                                               ; preds = %2
  %15 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %20 = icmp ne %struct.parse_buffer* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 0
  %26 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 123
  br i1 %41, label %42, label %43

42:                                               ; preds = %30, %21, %14
  br label %250

43:                                               ; preds = %30
  %44 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %49 = call %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %48)
  %50 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %51 = icmp ne %struct.parse_buffer* %50, null
  br i1 %51, label %52, label %74

52:                                               ; preds = %43
  %53 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 0
  %57 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %58 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %52
  %62 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %66 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 125
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %229

74:                                               ; preds = %61, %52, %43
  %75 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %76 = icmp ne %struct.parse_buffer* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %79 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 0
  %82 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %83 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %77, %74
  %87 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %88 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %88, align 8
  br label %250

91:                                               ; preds = %77
  %92 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %93 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %201, %91
  %97 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %98 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %97, i32 0, i32 4
  %99 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef %98)
  store %struct.cJSON* %99, %struct.cJSON** %8, align 8
  %100 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %101 = icmp eq %struct.cJSON* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %250

103:                                              ; preds = %96
  %104 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %105 = icmp eq %struct.cJSON* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  store %struct.cJSON* %107, %struct.cJSON** %6, align 8
  store %struct.cJSON* %107, %struct.cJSON** %7, align 8
  br label %116

108:                                              ; preds = %103
  %109 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %110 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %111 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %110, i32 0, i32 0
  store %struct.cJSON* %109, %struct.cJSON** %111, align 8
  %112 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %113 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %114 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %113, i32 0, i32 1
  store %struct.cJSON* %112, %struct.cJSON** %114, align 8
  %115 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  store %struct.cJSON* %115, %struct.cJSON** %7, align 8
  br label %116

116:                                              ; preds = %108, %106
  %117 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %118 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %122 = call %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %121)
  %123 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %124 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %125 = call i32 @parse_string(%struct.cJSON* noundef %123, %struct.parse_buffer* noundef %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %116
  br label %250

128:                                              ; preds = %116
  %129 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %130 = call %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %129)
  %131 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %132 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %131, i32 0, i32 4
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %135 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  %136 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %137 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %136, i32 0, i32 4
  store i8* null, i8** %137, align 8
  %138 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %139 = icmp ne %struct.parse_buffer* %138, null
  br i1 %139, label %140, label %161

140:                                              ; preds = %128
  %141 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %142 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, 0
  %145 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %146 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ult i64 %144, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %140
  %150 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %151 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %154 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp ne i32 %159, 58
  br i1 %160, label %161, label %162

161:                                              ; preds = %149, %140, %128
  br label %250

162:                                              ; preds = %149
  %163 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %164 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %164, align 8
  %167 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %168 = call %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %167)
  %169 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %170 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %171 = call i32 @parse_value(%struct.cJSON* noundef %169, %struct.parse_buffer* noundef %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %162
  br label %250

174:                                              ; preds = %162
  %175 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %176 = call %struct.parse_buffer* @buffer_skip_whitespace(%struct.parse_buffer* noundef %175)
  br label %177

177:                                              ; preds = %174
  %178 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %179 = icmp ne %struct.parse_buffer* %178, null
  br i1 %179, label %180, label %201

180:                                              ; preds = %177
  %181 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %182 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = add i64 %183, 0
  %185 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %186 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ult i64 %184, %187
  br i1 %188, label %189, label %201

189:                                              ; preds = %180
  %190 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %191 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %194 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp eq i32 %199, 44
  br label %201

201:                                              ; preds = %189, %180, %177
  %202 = phi i1 [ false, %180 ], [ false, %177 ], [ %200, %189 ]
  br i1 %202, label %96, label %203, !llvm.loop !11

203:                                              ; preds = %201
  %204 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %205 = icmp ne %struct.parse_buffer* %204, null
  br i1 %205, label %206, label %227

206:                                              ; preds = %203
  %207 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %208 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, 0
  %211 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %212 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ult i64 %210, %213
  br i1 %214, label %215, label %227

215:                                              ; preds = %206
  %216 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %217 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %220 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds i8, i8* %218, i64 %221
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp ne i32 %225, 125
  br i1 %226, label %227, label %228

227:                                              ; preds = %215, %206, %203
  br label %250

228:                                              ; preds = %215
  br label %229

229:                                              ; preds = %228, %73
  %230 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %231 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = add i64 %232, -1
  store i64 %233, i64* %231, align 8
  %234 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %235 = icmp ne %struct.cJSON* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %238 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %239 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %238, i32 0, i32 1
  store %struct.cJSON* %237, %struct.cJSON** %239, align 8
  br label %240

240:                                              ; preds = %236, %229
  %241 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %242 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %241, i32 0, i32 3
  store i32 64, i32* %242, align 8
  %243 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %244 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %245 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %244, i32 0, i32 2
  store %struct.cJSON* %243, %struct.cJSON** %245, align 8
  %246 = load %struct.parse_buffer*, %struct.parse_buffer** %5, align 8
  %247 = getelementptr inbounds %struct.parse_buffer, %struct.parse_buffer* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %247, align 8
  store i32 1, i32* %3, align 4
  br label %256

250:                                              ; preds = %227, %173, %161, %127, %102, %86, %42
  %251 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %252 = icmp ne %struct.cJSON* %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %254)
  br label %255

255:                                              ; preds = %253, %250
  store i32 0, i32* %3, align 4
  br label %256

256:                                              ; preds = %255, %240, %13
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_decimal_point() #0 {
  ret i8 46
}

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @utf16_literal_to_utf8(i8* noundef %0, i8* noundef %1, i8** noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %10, align 8
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = icmp slt i64 %22, 6
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %159

25:                                               ; preds = %3
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = call i32 @parse_hex4(i8* noundef %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp uge i32 %29, 56320
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = icmp ule i32 %32, 57343
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %159

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %9, align 4
  %37 = icmp uge i32 %36, 55296
  br i1 %37, label %38, label %83

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp ule i32 %39, 56319
  br i1 %40, label %41, label %83

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 6
  store i8* %43, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i8 12, i8* %13, align 1
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = icmp slt i64 %48, 6
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %159

51:                                               ; preds = %41
  %52 = load i8*, i8** %15, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 92
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %15, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 117
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %51
  br label %159

64:                                               ; preds = %57
  %65 = load i8*, i8** %15, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = call i32 @parse_hex4(i8* noundef %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ult i32 %68, 56320
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %16, align 4
  %72 = icmp ugt i32 %71, 57343
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %64
  br label %159

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 1023
  %77 = shl i32 %76, 10
  %78 = load i32, i32* %16, align 4
  %79 = and i32 %78, 1023
  %80 = or i32 %77, %79
  %81 = add i32 65536, %80
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %8, align 8
  br label %86

83:                                               ; preds = %38, %35
  store i8 6, i8* %13, align 1
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %83, %74
  %87 = load i64, i64* %8, align 8
  %88 = icmp ult i64 %87, 128
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i8 1, i8* %11, align 1
  br label %106

90:                                               ; preds = %86
  %91 = load i64, i64* %8, align 8
  %92 = icmp ult i64 %91, 2048
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i8 2, i8* %11, align 1
  store i8 -64, i8* %14, align 1
  br label %105

94:                                               ; preds = %90
  %95 = load i64, i64* %8, align 8
  %96 = icmp ult i64 %95, 65536
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i8 3, i8* %11, align 1
  store i8 -32, i8* %14, align 1
  br label %104

98:                                               ; preds = %94
  %99 = load i64, i64* %8, align 8
  %100 = icmp ule i64 %99, 1114111
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i8 4, i8* %11, align 1
  store i8 -16, i8* %14, align 1
  br label %103

102:                                              ; preds = %98
  br label %159

103:                                              ; preds = %101
  br label %104

104:                                              ; preds = %103, %97
  br label %105

105:                                              ; preds = %104, %93
  br label %106

106:                                              ; preds = %105, %89
  %107 = load i8, i8* %11, align 1
  %108 = zext i8 %107 to i32
  %109 = sub nsw i32 %108, 1
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %12, align 1
  br label %111

111:                                              ; preds = %127, %106
  %112 = load i8, i8* %12, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load i64, i64* %8, align 8
  %117 = or i64 %116, 128
  %118 = and i64 %117, 191
  %119 = trunc i64 %118 to i8
  %120 = load i8**, i8*** %7, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = load i8, i8* %12, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8 %119, i8* %124, align 1
  %125 = load i64, i64* %8, align 8
  %126 = lshr i64 %125, 6
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %115
  %128 = load i8, i8* %12, align 1
  %129 = add i8 %128, -1
  store i8 %129, i8* %12, align 1
  br label %111, !llvm.loop !12

130:                                              ; preds = %111
  %131 = load i8, i8* %11, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i64, i64* %8, align 8
  %136 = load i8, i8* %14, align 1
  %137 = zext i8 %136 to i64
  %138 = or i64 %135, %137
  %139 = and i64 %138, 255
  %140 = trunc i64 %139 to i8
  %141 = load i8**, i8*** %7, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 %140, i8* %143, align 1
  br label %151

144:                                              ; preds = %130
  %145 = load i64, i64* %8, align 8
  %146 = and i64 %145, 127
  %147 = trunc i64 %146 to i8
  %148 = load i8**, i8*** %7, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  store i8 %147, i8* %150, align 1
  br label %151

151:                                              ; preds = %144, %134
  %152 = load i8, i8* %11, align 1
  %153 = zext i8 %152 to i32
  %154 = load i8**, i8*** %7, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = sext i32 %153 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %154, align 8
  %158 = load i8, i8* %13, align 1
  store i8 %158, i8* %4, align 1
  br label %160

159:                                              ; preds = %102, %73, %63, %50, %34, %24
  store i8 0, i8* %4, align 1
  br label %160

160:                                              ; preds = %159, %151
  %161 = load i8, i8* %4, align 1
  ret i8 %161
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_hex4(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %90, %1
  %7 = load i64, i64* %5, align 8
  %8 = icmp ult i64 %7, 4
  br i1 %8, label %9, label %93

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sge i32 %14, 48
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp sle i32 %21, 57
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = sub i32 %28, 48
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %83

32:                                               ; preds = %16, %9
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 65
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sle i32 %44, 70
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add i32 10, %51
  %53 = sub i32 %52, 65
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %82

56:                                               ; preds = %39, %32
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sge i32 %61, 97
  br i1 %62, label %63, label %80

63:                                               ; preds = %56
  %64 = load i8*, i8** %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sle i32 %68, 102
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load i8*, i8** %3, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add i32 10, %75
  %77 = sub i32 %76, 97
  %78 = load i32, i32* %4, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %63, %56
  store i32 0, i32* %2, align 4
  br label %95

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %46
  br label %83

83:                                               ; preds = %82, %23
  %84 = load i64, i64* %5, align 8
  %85 = icmp ult i64 %84, 3
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = shl i32 %87, 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %5, align 8
  br label %6, !llvm.loop !13

93:                                               ; preds = %6
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %80
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_Parse(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call %struct.cJSON* @cJSON_ParseWithOpts(i8* noundef %3, i8** noundef null, i32 noundef 0)
  ret %struct.cJSON* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_ParseWithLength(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %struct.cJSON* @cJSON_ParseWithLengthOpts(i8* noundef %5, i64 noundef %6, i8** noundef null, i32 noundef 0)
  ret %struct.cJSON* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cJSON_Print(%struct.cJSON* noundef %0) #0 {
  %2 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %2, align 8
  %3 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %4 = call i8* @print(%struct.cJSON* noundef %3, i32 noundef 1, %struct.internal_hooks* noundef @global_hooks)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print(%struct.cJSON* noundef %0, i32 noundef %1, %struct.internal_hooks* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.internal_hooks*, align 8
  %8 = alloca [1 x %struct.printbuffer], align 16
  %9 = alloca i8*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.internal_hooks* %2, %struct.internal_hooks** %7, align 8
  store i8* null, i8** %9, align 8
  %10 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %11 = bitcast %struct.printbuffer* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  %12 = load %struct.internal_hooks*, %struct.internal_hooks** %7, align 8
  %13 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %12, i32 0, i32 0
  %14 = load i8* (i64)*, i8* (i64)** %13, align 8
  %15 = call i8* %14(i64 noundef 256)
  %16 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %17 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 16
  %18 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %19 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %18, i32 0, i32 1
  store i64 256, i64* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %22 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %24 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %23, i32 0, i32 6
  %25 = load %struct.internal_hooks*, %struct.internal_hooks** %7, align 8
  %26 = bitcast %struct.internal_hooks* %24 to i8*
  %27 = bitcast %struct.internal_hooks* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 24, i1 false)
  %28 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %29 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 16
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %112

33:                                               ; preds = %3
  %34 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %35 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %36 = call i32 @print_value(%struct.cJSON* noundef %34, %struct.printbuffer* noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %112

39:                                               ; preds = %33
  %40 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  call void @update_offset(%struct.printbuffer* noundef %40)
  %41 = load %struct.internal_hooks*, %struct.internal_hooks** %7, align 8
  %42 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %41, i32 0, i32 2
  %43 = load i8* (i8*, i64)*, i8* (i8*, i64)** %42, align 8
  %44 = icmp ne i8* (i8*, i64)* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.internal_hooks*, %struct.internal_hooks** %7, align 8
  %47 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %46, i32 0, i32 2
  %48 = load i8* (i8*, i64)*, i8* (i8*, i64)** %47, align 8
  %49 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %50 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 16
  %52 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %53 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 16
  %55 = add i64 %54, 1
  %56 = call i8* %48(i8* noundef %51, i64 noundef %55)
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %112

60:                                               ; preds = %45
  %61 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %62 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %61, i32 0, i32 0
  store i8* null, i8** %62, align 16
  br label %110

63:                                               ; preds = %39
  %64 = load %struct.internal_hooks*, %struct.internal_hooks** %7, align 8
  %65 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %64, i32 0, i32 0
  %66 = load i8* (i64)*, i8* (i64)** %65, align 8
  %67 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %68 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 16
  %70 = add i64 %69, 1
  %71 = call i8* %66(i64 noundef %70)
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %112

75:                                               ; preds = %63
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %78 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 16
  %80 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %81 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %84 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 16
  %86 = add i64 %85, 1
  %87 = icmp ult i64 %82, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %90 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  br label %97

92:                                               ; preds = %75
  %93 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %94 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 16
  %96 = add i64 %95, 1
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i64 [ %91, %88 ], [ %96, %92 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %76, i8* align 1 %79, i64 %98, i1 false)
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %101 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 16
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load %struct.internal_hooks*, %struct.internal_hooks** %7, align 8
  %105 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %104, i32 0, i32 1
  %106 = load void (i8*)*, void (i8*)** %105, align 8
  %107 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %108 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 16
  call void %106(i8* noundef %109)
  br label %110

110:                                              ; preds = %97, %60
  %111 = load i8*, i8** %9, align 8
  store i8* %111, i8** %4, align 8
  br label %133

112:                                              ; preds = %74, %59, %38, %32
  %113 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %114 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 16
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.internal_hooks*, %struct.internal_hooks** %7, align 8
  %119 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %118, i32 0, i32 1
  %120 = load void (i8*)*, void (i8*)** %119, align 8
  %121 = getelementptr inbounds [1 x %struct.printbuffer], [1 x %struct.printbuffer]* %8, i64 0, i64 0
  %122 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 16
  call void %120(i8* noundef %123)
  br label %124

124:                                              ; preds = %117, %112
  %125 = load i8*, i8** %9, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.internal_hooks*, %struct.internal_hooks** %7, align 8
  %129 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %128, i32 0, i32 1
  %130 = load void (i8*)*, void (i8*)** %129, align 8
  %131 = load i8*, i8** %9, align 8
  call void %130(i8* noundef %131)
  br label %132

132:                                              ; preds = %127, %124
  store i8* null, i8** %4, align 8
  br label %133

133:                                              ; preds = %132, %110
  %134 = load i8*, i8** %4, align 8
  ret i8* %134
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_value(%struct.cJSON* noundef %0, %struct.printbuffer* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.printbuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.printbuffer* %1, %struct.printbuffer** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %9 = icmp eq %struct.cJSON* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %12 = icmp eq %struct.printbuffer* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %87

14:                                               ; preds = %10
  %15 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %16 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 255
  switch i32 %18, label %86 [
    i32 4, label %19
    i32 1, label %28
    i32 2, label %37
    i32 8, label %46
    i32 128, label %50
    i32 16, label %74
    i32 32, label %78
    i32 64, label %82
  ]

19:                                               ; preds = %14
  %20 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %21 = call i8* @ensure(%struct.printbuffer* noundef %20, i64 noundef 5)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %87

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @strcpy(i8* noundef %26, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7
  store i32 1, i32* %3, align 4
  br label %87

28:                                               ; preds = %14
  %29 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %30 = call i8* @ensure(%struct.printbuffer* noundef %29, i64 noundef 6)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %87

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @strcpy(i8* noundef %35, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #7
  store i32 1, i32* %3, align 4
  br label %87

37:                                               ; preds = %14
  %38 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %39 = call i8* @ensure(%struct.printbuffer* noundef %38, i64 noundef 5)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %87

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @strcpy(i8* noundef %44, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #7
  store i32 1, i32* %3, align 4
  br label %87

46:                                               ; preds = %14
  %47 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %48 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %49 = call i32 @print_number(%struct.cJSON* noundef %47, %struct.printbuffer* noundef %48)
  store i32 %49, i32* %3, align 4
  br label %87

50:                                               ; preds = %14
  store i64 0, i64* %7, align 8
  %51 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %52 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %87

56:                                               ; preds = %50
  %57 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %58 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strlen(i8* noundef %59) #8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  %62 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i8* @ensure(%struct.printbuffer* noundef %62, i64 noundef %63)
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %87

68:                                               ; preds = %56
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %71 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %72, i64 %73, i1 false)
  store i32 1, i32* %3, align 4
  br label %87

74:                                               ; preds = %14
  %75 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %76 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %77 = call i32 @print_string(%struct.cJSON* noundef %75, %struct.printbuffer* noundef %76)
  store i32 %77, i32* %3, align 4
  br label %87

78:                                               ; preds = %14
  %79 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %80 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %81 = call i32 @print_array(%struct.cJSON* noundef %79, %struct.printbuffer* noundef %80)
  store i32 %81, i32* %3, align 4
  br label %87

82:                                               ; preds = %14
  %83 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %84 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %85 = call i32 @print_object(%struct.cJSON* noundef %83, %struct.printbuffer* noundef %84)
  store i32 %85, i32* %3, align 4
  br label %87

86:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %82, %78, %74, %68, %67, %55, %46, %43, %42, %34, %33, %25, %24, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_offset(%struct.printbuffer* noundef %0) #0 {
  %2 = alloca %struct.printbuffer*, align 8
  %3 = alloca i8*, align 8
  store %struct.printbuffer* %0, %struct.printbuffer** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load %struct.printbuffer*, %struct.printbuffer** %2, align 8
  %5 = icmp eq %struct.printbuffer* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.printbuffer*, %struct.printbuffer** %2, align 8
  %8 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %26

12:                                               ; preds = %6
  %13 = load %struct.printbuffer*, %struct.printbuffer** %2, align 8
  %14 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.printbuffer*, %struct.printbuffer** %2, align 8
  %17 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strlen(i8* noundef %20) #8
  %22 = load %struct.printbuffer*, %struct.printbuffer** %2, align 8
  %23 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, %21
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ensure(%struct.printbuffer* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.printbuffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.printbuffer* %0, %struct.printbuffer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %9 = icmp eq %struct.printbuffer* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %12 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %152

16:                                               ; preds = %10
  %17 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %18 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %23 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %26 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  br label %152

30:                                               ; preds = %21, %16
  %31 = load i64, i64* %5, align 8
  %32 = icmp ugt i64 %31, 2147483647
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8* null, i8** %3, align 8
  br label %152

34:                                               ; preds = %30
  %35 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %36 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %43 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ule i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %48 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %51 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8* %53, i8** %3, align 8
  br label %152

54:                                               ; preds = %34
  %55 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %56 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8* null, i8** %3, align 8
  br label %152

60:                                               ; preds = %54
  %61 = load i64, i64* %5, align 8
  %62 = icmp ugt i64 %61, 1073741823
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i64, i64* %5, align 8
  %65 = icmp ule i64 %64, 2147483647
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i64 2147483647, i64* %7, align 8
  br label %68

67:                                               ; preds = %63
  store i8* null, i8** %3, align 8
  br label %152

68:                                               ; preds = %66
  br label %72

69:                                               ; preds = %60
  %70 = load i64, i64* %5, align 8
  %71 = mul i64 %70, 2
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %69, %68
  %73 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %74 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %74, i32 0, i32 2
  %76 = load i8* (i8*, i64)*, i8* (i8*, i64)** %75, align 8
  %77 = icmp ne i8* (i8*, i64)* %76, null
  br i1 %77, label %78, label %103

78:                                               ; preds = %72
  %79 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %80 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %80, i32 0, i32 2
  %82 = load i8* (i8*, i64)*, i8* (i8*, i64)** %81, align 8
  %83 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %84 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i8* %82(i8* noundef %85, i64 noundef %86)
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %78
  %91 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %92 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %92, i32 0, i32 1
  %94 = load void (i8*)*, void (i8*)** %93, align 8
  %95 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %96 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  call void %94(i8* noundef %97)
  %98 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %99 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %101 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %100, i32 0, i32 0
  store i8* null, i8** %101, align 8
  store i8* null, i8** %3, align 8
  br label %152

102:                                              ; preds = %78
  br label %140

103:                                              ; preds = %72
  %104 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %105 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %105, i32 0, i32 0
  %107 = load i8* (i64)*, i8* (i64)** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i8* %107(i64 noundef %108)
  store i8* %109, i8** %6, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %103
  %113 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %114 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %114, i32 0, i32 1
  %116 = load void (i8*)*, void (i8*)** %115, align 8
  %117 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %118 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  call void %116(i8* noundef %119)
  %120 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %121 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %123 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %122, i32 0, i32 0
  store i8* null, i8** %123, align 8
  store i8* null, i8** %3, align 8
  br label %152

124:                                              ; preds = %103
  %125 = load i8*, i8** %6, align 8
  %126 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %127 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %130 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %125, i8* align 1 %128, i64 %132, i1 false)
  %133 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %134 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %134, i32 0, i32 1
  %136 = load void (i8*)*, void (i8*)** %135, align 8
  %137 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %138 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  call void %136(i8* noundef %139)
  br label %140

140:                                              ; preds = %124, %102
  %141 = load i64, i64* %7, align 8
  %142 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %143 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %146 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %149 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  store i8* %151, i8** %3, align 8
  br label %152

152:                                              ; preds = %140, %112, %90, %67, %59, %46, %33, %29, %15
  %153 = load i8*, i8** %3, align 8
  ret i8* %153
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_number(%struct.cJSON* noundef %0, %struct.printbuffer* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.printbuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [26 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca double, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.printbuffer* %1, %struct.printbuffer** %5, align 8
  store i8* null, i8** %6, align 8
  %13 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %14 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %13, i32 0, i32 6
  %15 = load double, double* %14, align 8
  store double %15, double* %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %16 = bitcast [26 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 26, i1 false)
  %17 = call zeroext i8 @get_decimal_point()
  store i8 %17, i8* %11, align 1
  store double 0.000000e+00, double* %12, align 8
  %18 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %19 = icmp eq %struct.printbuffer* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

21:                                               ; preds = %2
  %22 = load double, double* %7, align 8
  %23 = fcmp uno double %22, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load double, double* %7, align 8
  %26 = call double @llvm.fabs.f64(double %25) #9
  %27 = fcmp oeq double %26, 0x7FF0000000000000
  %28 = bitcast double %25 to i64
  %29 = icmp slt i64 %28, 0
  %30 = select i1 %29, i32 -1, i32 1
  %31 = select i1 %27, i32 %30, i32 0
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24, %21
  %34 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %34, i64 noundef 26, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7
  store i32 %35, i32* %8, align 4
  br label %67

36:                                               ; preds = %24
  %37 = load double, double* %7, align 8
  %38 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %39 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = sitofp i32 %40 to double
  %42 = fcmp oeq double %37, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %45 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %46 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %44, i64 noundef 26, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 noundef %47) #7
  store i32 %48, i32* %8, align 4
  br label %66

49:                                               ; preds = %36
  %50 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %51 = load double, double* %7, align 8
  %52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %50, i64 noundef 26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), double noundef %51) #7
  store i32 %52, i32* %8, align 4
  %53 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %54 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %53, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), double* noundef %12) #7
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load double, double* %12, align 8
  %58 = load double, double* %7, align 8
  %59 = call i32 @compare_double(double noundef %57, double noundef %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56, %49
  %62 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 0
  %63 = load double, double* %7, align 8
  %64 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %62, i64 noundef 26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), double noundef %63) #7
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %71, 25
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %67
  store i32 0, i32* %3, align 4
  br label %121

74:                                               ; preds = %70
  %75 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 1
  %79 = call i8* @ensure(%struct.printbuffer* noundef %75, i64 noundef %78)
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %121

83:                                               ; preds = %74
  store i64 0, i64* %9, align 8
  br label %84

84:                                               ; preds = %108, %83
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %84
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* %11, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 46, i8* %100, align 1
  br label %108

101:                                              ; preds = %89
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds [26 x i8], [26 x i8]* %10, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* %9, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8 %104, i8* %107, align 1
  br label %108

108:                                              ; preds = %101, %97
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %9, align 8
  br label %84, !llvm.loop !14

111:                                              ; preds = %84
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8 0, i8* %114, align 1
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %118 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %116
  store i64 %120, i64* %118, align 8
  store i32 1, i32* %3, align 4
  br label %121

121:                                              ; preds = %111, %82, %73, %20
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_string(%struct.cJSON* noundef %0, %struct.printbuffer* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.printbuffer*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store %struct.printbuffer* %1, %struct.printbuffer** %4, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %5, i32 0, i32 4
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.printbuffer*, %struct.printbuffer** %4, align 8
  %9 = call i32 @print_string_ptr(i8* noundef %7, %struct.printbuffer* noundef %8)
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_array(%struct.cJSON* noundef %0, %struct.printbuffer* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.printbuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.printbuffer* %1, %struct.printbuffer** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %10 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %9, i32 0, i32 2
  %11 = load %struct.cJSON*, %struct.cJSON** %10, align 8
  store %struct.cJSON* %11, %struct.cJSON** %8, align 8
  %12 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %13 = icmp eq %struct.printbuffer* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

15:                                               ; preds = %2
  %16 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %17 = call i8* @ensure(%struct.printbuffer* noundef %16, i64 noundef 1)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %96

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  store i8 91, i8* %22, align 1
  %23 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %24 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %28 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %78, %21
  %32 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %33 = icmp ne %struct.cJSON* %32, null
  br i1 %33, label %34, label %82

34:                                               ; preds = %31
  %35 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %36 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %37 = call i32 @print_value(%struct.cJSON* noundef %35, %struct.printbuffer* noundef %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %96

40:                                               ; preds = %34
  %41 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  call void @update_offset(%struct.printbuffer* noundef %41)
  %42 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %43 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %42, i32 0, i32 0
  %44 = load %struct.cJSON*, %struct.cJSON** %43, align 8
  %45 = icmp ne %struct.cJSON* %44, null
  br i1 %45, label %46, label %78

46:                                               ; preds = %40
  %47 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %48 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 2, i32 1
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %7, align 8
  %54 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  %57 = call i8* @ensure(%struct.printbuffer* noundef %54, i64 noundef %56)
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %96

61:                                               ; preds = %46
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  store i8 44, i8* %62, align 1
  %64 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %65 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  store i8 32, i8* %69, align 1
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i8*, i8** %6, align 8
  store i8 0, i8* %72, align 1
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %75 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %71, %40
  %79 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %80 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %79, i32 0, i32 0
  %81 = load %struct.cJSON*, %struct.cJSON** %80, align 8
  store %struct.cJSON* %81, %struct.cJSON** %8, align 8
  br label %31, !llvm.loop !15

82:                                               ; preds = %31
  %83 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %84 = call i8* @ensure(%struct.printbuffer* noundef %83, i64 noundef 2)
  store i8* %84, i8** %6, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %96

88:                                               ; preds = %82
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  store i8 93, i8* %89, align 1
  %91 = load i8*, i8** %6, align 8
  store i8 0, i8* %91, align 1
  %92 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %93 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %93, align 8
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %88, %87, %60, %39, %20, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_object(%struct.cJSON* noundef %0, %struct.printbuffer* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.printbuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cJSON*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.printbuffer* %1, %struct.printbuffer** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %12 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %11, i32 0, i32 2
  %13 = load %struct.cJSON*, %struct.cJSON** %12, align 8
  store %struct.cJSON* %13, %struct.cJSON** %8, align 8
  %14 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %15 = icmp eq %struct.printbuffer* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %230

17:                                               ; preds = %2
  %18 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %19 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 2, i32 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  %28 = call i8* @ensure(%struct.printbuffer* noundef %25, i64 noundef %27)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %230

32:                                               ; preds = %17
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  store i8 123, i8* %33, align 1
  %35 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %36 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %40 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  store i8 10, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %32
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %49 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %174, %46
  %53 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %54 = icmp ne %struct.cJSON* %53, null
  br i1 %54, label %55, label %184

55:                                               ; preds = %52
  %56 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %57 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %55
  %61 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %62 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %63 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @ensure(%struct.printbuffer* noundef %61, i64 noundef %64)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %230

69:                                               ; preds = %60
  store i64 0, i64* %9, align 8
  br label %70

70:                                               ; preds = %79, %69
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %73 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  store i8 9, i8* %77, align 1
  br label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %70, !llvm.loop !16

82:                                               ; preds = %70
  %83 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %84 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %87 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %85
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %82, %55
  %91 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %92 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %91, i32 0, i32 7
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %95 = call i32 @print_string_ptr(i8* noundef %93, %struct.printbuffer* noundef %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %230

98:                                               ; preds = %90
  %99 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  call void @update_offset(%struct.printbuffer* noundef %99)
  %100 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %101 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 2, i32 1
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %7, align 8
  %107 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i8* @ensure(%struct.printbuffer* noundef %107, i64 noundef %108)
  store i8* %109, i8** %6, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %230

113:                                              ; preds = %98
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %6, align 8
  store i8 58, i8* %114, align 1
  %116 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %117 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %6, align 8
  store i8 9, i8* %121, align 1
  br label %123

123:                                              ; preds = %120, %113
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %126 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %130 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %131 = call i32 @print_value(%struct.cJSON* noundef %129, %struct.printbuffer* noundef %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %230

134:                                              ; preds = %123
  %135 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  call void @update_offset(%struct.printbuffer* noundef %135)
  %136 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %137 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 1, i32 0
  %142 = sext i32 %141 to i64
  %143 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %144 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %143, i32 0, i32 0
  %145 = load %struct.cJSON*, %struct.cJSON** %144, align 8
  %146 = icmp ne %struct.cJSON* %145, null
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 1, i32 0
  %149 = sext i32 %148 to i64
  %150 = add i64 %142, %149
  store i64 %150, i64* %7, align 8
  %151 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %152 = load i64, i64* %7, align 8
  %153 = add i64 %152, 1
  %154 = call i8* @ensure(%struct.printbuffer* noundef %151, i64 noundef %153)
  store i8* %154, i8** %6, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %230

158:                                              ; preds = %134
  %159 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %160 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %159, i32 0, i32 0
  %161 = load %struct.cJSON*, %struct.cJSON** %160, align 8
  %162 = icmp ne %struct.cJSON* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %6, align 8
  store i8 44, i8* %164, align 1
  br label %166

166:                                              ; preds = %163, %158
  %167 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %168 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %6, align 8
  store i8 10, i8* %172, align 1
  br label %174

174:                                              ; preds = %171, %166
  %175 = load i8*, i8** %6, align 8
  store i8 0, i8* %175, align 1
  %176 = load i64, i64* %7, align 8
  %177 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %178 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %176
  store i64 %180, i64* %178, align 8
  %181 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %182 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %181, i32 0, i32 0
  %183 = load %struct.cJSON*, %struct.cJSON** %182, align 8
  store %struct.cJSON* %183, %struct.cJSON** %8, align 8
  br label %52, !llvm.loop !17

184:                                              ; preds = %52
  %185 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %186 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %187 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %192 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, 1
  br label %196

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %195, %190
  %197 = phi i64 [ %194, %190 ], [ 2, %195 ]
  %198 = call i8* @ensure(%struct.printbuffer* noundef %185, i64 noundef %197)
  store i8* %198, i8** %6, align 8
  %199 = load i8*, i8** %6, align 8
  %200 = icmp eq i8* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %230

202:                                              ; preds = %196
  %203 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %204 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %222

207:                                              ; preds = %202
  store i64 0, i64* %10, align 8
  br label %208

208:                                              ; preds = %218, %207
  %209 = load i64, i64* %10, align 8
  %210 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %211 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = sub i64 %212, 1
  %214 = icmp ult i64 %209, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %208
  %216 = load i8*, i8** %6, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %6, align 8
  store i8 9, i8* %216, align 1
  br label %218

218:                                              ; preds = %215
  %219 = load i64, i64* %10, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %10, align 8
  br label %208, !llvm.loop !18

221:                                              ; preds = %208
  br label %222

222:                                              ; preds = %221, %202
  %223 = load i8*, i8** %6, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %6, align 8
  store i8 125, i8* %223, align 1
  %225 = load i8*, i8** %6, align 8
  store i8 0, i8* %225, align 1
  %226 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %227 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, -1
  store i64 %229, i64* %227, align 8
  store i32 1, i32* %3, align 4
  br label %230

230:                                              ; preds = %222, %201, %157, %133, %112, %97, %68, %31, %16
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_string_ptr(i8* noundef %0, %struct.printbuffer* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.printbuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.printbuffer* %1, %struct.printbuffer** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %12 = icmp eq %struct.printbuffer* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %159

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %19 = call i8* @ensure(%struct.printbuffer* noundef %18, i64 noundef 3)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %159

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strcpy(i8* noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #7
  store i32 1, i32* %3, align 4
  br label %159

26:                                               ; preds = %14
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %49, %26
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  switch i32 %35, label %39 [
    i32 34, label %36
    i32 92, label %36
    i32 8, label %36
    i32 12, label %36
    i32 10, label %36
    i32 13, label %36
    i32 9, label %36
  ]

36:                                               ; preds = %32, %32, %32, %32, %32, %32, %32
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %48

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 5
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %28, !llvm.loop !19

52:                                               ; preds = %28
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %57, %58
  store i64 %59, i64* %9, align 8
  %60 = load %struct.printbuffer*, %struct.printbuffer** %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 3
  %63 = call i8* @ensure(%struct.printbuffer* noundef %60, i64 noundef %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %159

67:                                               ; preds = %52
  %68 = load i64, i64* %10, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 34, i8* %72, align 1
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %9, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %75, i64 %76, i1 false)
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 34, i8* %80, align 1
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 2
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 0, i8* %84, align 1
  store i32 1, i32* %3, align 4
  br label %159

85:                                               ; preds = %67
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 34, i8* %87, align 1
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %8, align 8
  %90 = load i8*, i8** %4, align 8
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %145, %85
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %150

96:                                               ; preds = %91
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp sgt i32 %99, 31
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 34
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp ne i32 %109, 92
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %8, align 8
  store i8 %113, i8* %114, align 1
  br label %144

115:                                              ; preds = %106, %101, %96
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %8, align 8
  store i8 92, i8* %116, align 1
  %118 = load i8*, i8** %6, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  switch i32 %120, label %135 [
    i32 92, label %121
    i32 34, label %123
    i32 8, label %125
    i32 12, label %127
    i32 10, label %129
    i32 13, label %131
    i32 9, label %133
  ]

121:                                              ; preds = %115
  %122 = load i8*, i8** %8, align 8
  store i8 92, i8* %122, align 1
  br label %143

123:                                              ; preds = %115
  %124 = load i8*, i8** %8, align 8
  store i8 34, i8* %124, align 1
  br label %143

125:                                              ; preds = %115
  %126 = load i8*, i8** %8, align 8
  store i8 98, i8* %126, align 1
  br label %143

127:                                              ; preds = %115
  %128 = load i8*, i8** %8, align 8
  store i8 102, i8* %128, align 1
  br label %143

129:                                              ; preds = %115
  %130 = load i8*, i8** %8, align 8
  store i8 110, i8* %130, align 1
  br label %143

131:                                              ; preds = %115
  %132 = load i8*, i8** %8, align 8
  store i8 114, i8* %132, align 1
  br label %143

133:                                              ; preds = %115
  %134 = load i8*, i8** %8, align 8
  store i8 116, i8* %134, align 1
  br label %143

135:                                              ; preds = %115
  %136 = load i8*, i8** %8, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %136, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 noundef %139) #7
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  store i8* %142, i8** %8, align 8
  br label %143

143:                                              ; preds = %135, %133, %131, %129, %127, %125, %123, %121
  br label %144

144:                                              ; preds = %143, %111
  br label %145

145:                                              ; preds = %144
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %6, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %8, align 8
  br label %91, !llvm.loop !20

150:                                              ; preds = %91
  %151 = load i8*, i8** %7, align 8
  %152 = load i64, i64* %9, align 8
  %153 = add i64 %152, 1
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 34, i8* %154, align 1
  %155 = load i8*, i8** %7, align 8
  %156 = load i64, i64* %9, align 8
  %157 = add i64 %156, 2
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  store i8 0, i8* %158, align 1
  store i32 1, i32* %3, align 4
  br label %159

159:                                              ; preds = %150, %70, %66, %23, %22, %13
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_double(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %3, align 8
  %7 = call double @llvm.fabs.f64(double %6)
  %8 = load double, double* %4, align 8
  %9 = call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load double, double* %3, align 8
  %13 = call double @llvm.fabs.f64(double %12)
  br label %17

14:                                               ; preds = %2
  %15 = load double, double* %4, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi double [ %13, %11 ], [ %16, %14 ]
  store double %18, double* %5, align 8
  %19 = load double, double* %3, align 8
  %20 = load double, double* %4, align 8
  %21 = fsub double %19, %20
  %22 = call double @llvm.fabs.f64(double %21)
  %23 = load double, double* %5, align 8
  %24 = fmul double %23, 0x3CB0000000000000
  %25 = fcmp ole double %22, %24
  %26 = zext i1 %25 to i32
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cJSON_PrintUnformatted(%struct.cJSON* noundef %0) #0 {
  %2 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %2, align 8
  %3 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %4 = call i8* @print(%struct.cJSON* noundef %3, i32 noundef 0, %struct.internal_hooks* noundef @global_hooks)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cJSON_PrintBuffered(%struct.cJSON* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.printbuffer, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = bitcast %struct.printbuffer* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 64, i1 false)
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %43

13:                                               ; preds = %3
  %14 = load i8* (i64)*, i8* (i64)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 0), align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = call i8* %14(i64 noundef %16)
  %18 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %8, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %8, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  store i8* null, i8** %4, align 8
  br label %43

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %8, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %8, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %8, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %8, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %8, i32 0, i32 6
  %32 = bitcast %struct.internal_hooks* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.internal_hooks* @global_hooks to i8*), i64 24, i1 false)
  %33 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %34 = call i32 @print_value(%struct.cJSON* noundef %33, %struct.printbuffer* noundef %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %23
  %37 = load void (i8*)*, void (i8*)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %8, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  call void %37(i8* noundef %39)
  store i8* null, i8** %4, align 8
  br label %43

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %8, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %40, %36, %22, %12
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_PrintPreallocated(%struct.cJSON* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cJSON*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.printbuffer, align 8
  store %struct.cJSON* %0, %struct.cJSON** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = bitcast %struct.printbuffer* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 64, i1 false)
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %32

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %10, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %10, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %10, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %10, i32 0, i32 4
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %10, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.printbuffer, %struct.printbuffer* %10, i32 0, i32 6
  %29 = bitcast %struct.internal_hooks* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.internal_hooks* @global_hooks to i8*), i64 24, i1 false)
  %30 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %31 = call i32 @print_value(%struct.cJSON* noundef %30, %struct.printbuffer* noundef %10)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %18, %17
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_GetArraySize(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i64, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store %struct.cJSON* null, %struct.cJSON** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %7 = icmp eq %struct.cJSON* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %11 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %10, i32 0, i32 2
  %12 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  store %struct.cJSON* %12, %struct.cJSON** %4, align 8
  br label %13

13:                                               ; preds = %16, %9
  %14 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %15 = icmp ne %struct.cJSON* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %5, align 8
  %19 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %20 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %19, i32 0, i32 0
  %21 = load %struct.cJSON*, %struct.cJSON** %20, align 8
  store %struct.cJSON* %21, %struct.cJSON** %4, align 8
  br label %13, !llvm.loop !21

22:                                               ; preds = %13
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_GetArrayItem(%struct.cJSON* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i32, align 4
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %14

9:                                                ; preds = %2
  %10 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = call %struct.cJSON* @get_array_item(%struct.cJSON* noundef %10, i64 noundef %12)
  store %struct.cJSON* %13, %struct.cJSON** %3, align 8
  br label %14

14:                                               ; preds = %9, %8
  %15 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cJSON* @get_array_item(%struct.cJSON* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cJSON* null, %struct.cJSON** %6, align 8
  %7 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %8 = icmp eq %struct.cJSON* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %30

10:                                               ; preds = %2
  %11 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %12 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %11, i32 0, i32 2
  %13 = load %struct.cJSON*, %struct.cJSON** %12, align 8
  store %struct.cJSON* %13, %struct.cJSON** %6, align 8
  br label %14

14:                                               ; preds = %22, %10
  %15 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %16 = icmp ne %struct.cJSON* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = icmp ugt i64 %18, 0
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %5, align 8
  %25 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %26 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %25, i32 0, i32 0
  %27 = load %struct.cJSON*, %struct.cJSON** %26, align 8
  store %struct.cJSON* %27, %struct.cJSON** %6, align 8
  br label %14, !llvm.loop !22

28:                                               ; preds = %20
  %29 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  store %struct.cJSON* %29, %struct.cJSON** %3, align 8
  br label %30

30:                                               ; preds = %28, %9
  %31 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_GetObjectItem(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca i8*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.cJSON* @get_object_item(%struct.cJSON* noundef %5, i8* noundef %6, i32 noundef 0)
  ret %struct.cJSON* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cJSON* @get_object_item(%struct.cJSON* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.cJSON* null, %struct.cJSON** %8, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %10 = icmp eq %struct.cJSON* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store %struct.cJSON* null, %struct.cJSON** %4, align 8
  br label %73

15:                                               ; preds = %11
  %16 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %17 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %16, i32 0, i32 2
  %18 = load %struct.cJSON*, %struct.cJSON** %17, align 8
  store %struct.cJSON* %18, %struct.cJSON** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %39, %21
  %23 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %24 = icmp ne %struct.cJSON* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %27 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %26, i32 0, i32 7
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %33 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %32, i32 0, i32 7
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* noundef %31, i8* noundef %34) #8
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %30, %25, %22
  %38 = phi i1 [ false, %25 ], [ false, %22 ], [ %36, %30 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %41 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %40, i32 0, i32 0
  %42 = load %struct.cJSON*, %struct.cJSON** %41, align 8
  store %struct.cJSON* %42, %struct.cJSON** %8, align 8
  br label %22, !llvm.loop !23

43:                                               ; preds = %37
  br label %62

44:                                               ; preds = %15
  br label %45

45:                                               ; preds = %57, %44
  %46 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %47 = icmp ne %struct.cJSON* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %51 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %50, i32 0, i32 7
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @case_insensitive_strcmp(i8* noundef %49, i8* noundef %52)
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %48, %45
  %56 = phi i1 [ false, %45 ], [ %54, %48 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %59 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %58, i32 0, i32 0
  %60 = load %struct.cJSON*, %struct.cJSON** %59, align 8
  store %struct.cJSON* %60, %struct.cJSON** %8, align 8
  br label %45, !llvm.loop !24

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %43
  %63 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %64 = icmp eq %struct.cJSON* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %67 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %66, i32 0, i32 7
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %62
  store %struct.cJSON* null, %struct.cJSON** %4, align 8
  br label %73

71:                                               ; preds = %65
  %72 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  store %struct.cJSON* %72, %struct.cJSON** %4, align 8
  br label %73

73:                                               ; preds = %71, %70, %14
  %74 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  ret %struct.cJSON* %74
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @case_insensitive_strcmp(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 1, i32* %3, align 4
  br label %50

12:                                               ; preds = %8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %50

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = call i32 @tolower(i32 noundef %21) #8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = call i32 @tolower(i32 noundef %25) #8
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %18
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %50

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  br label %18, !llvm.loop !25

40:                                               ; preds = %18
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = call i32 @tolower(i32 noundef %43) #8
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = call i32 @tolower(i32 noundef %47) #8
  %49 = sub nsw i32 %44, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %40, %33, %16, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_GetObjectItemCaseSensitive(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca i8*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.cJSON* @get_object_item(%struct.cJSON* noundef %5, i8* noundef %6, i32 noundef 1)
  ret %struct.cJSON* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_HasObjectItem(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca i8*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.cJSON* @cJSON_GetObjectItem(%struct.cJSON* noundef %5, i8* noundef %6)
  %8 = icmp ne %struct.cJSON* %7, null
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 1, i32 0
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_AddItemToArray(%struct.cJSON* noundef %0, %struct.cJSON* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store %struct.cJSON* %1, %struct.cJSON** %4, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %7 = call i32 @add_item_to_array(%struct.cJSON* noundef %5, %struct.cJSON* noundef %6)
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_item_to_array(%struct.cJSON* noundef %0, %struct.cJSON* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.cJSON* %1, %struct.cJSON** %5, align 8
  store %struct.cJSON* null, %struct.cJSON** %6, align 8
  %7 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %8 = icmp eq %struct.cJSON* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %11 = icmp eq %struct.cJSON* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %14 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %15 = icmp eq %struct.cJSON* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %9, %2
  store i32 0, i32* %3, align 4
  br label %49

17:                                               ; preds = %12
  %18 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %19 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %18, i32 0, i32 2
  %20 = load %struct.cJSON*, %struct.cJSON** %19, align 8
  store %struct.cJSON* %20, %struct.cJSON** %6, align 8
  %21 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %22 = icmp eq %struct.cJSON* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %25 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %26 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %25, i32 0, i32 2
  store %struct.cJSON* %24, %struct.cJSON** %26, align 8
  %27 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %28 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %29 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %28, i32 0, i32 1
  store %struct.cJSON* %27, %struct.cJSON** %29, align 8
  %30 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %31 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %30, i32 0, i32 0
  store %struct.cJSON* null, %struct.cJSON** %31, align 8
  br label %48

32:                                               ; preds = %17
  %33 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %34 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %33, i32 0, i32 1
  %35 = load %struct.cJSON*, %struct.cJSON** %34, align 8
  %36 = icmp ne %struct.cJSON* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %39 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %38, i32 0, i32 1
  %40 = load %struct.cJSON*, %struct.cJSON** %39, align 8
  %41 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  call void @suffix_object(%struct.cJSON* noundef %40, %struct.cJSON* noundef %41)
  %42 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %43 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %44 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %43, i32 0, i32 2
  %45 = load %struct.cJSON*, %struct.cJSON** %44, align 8
  %46 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %45, i32 0, i32 1
  store %struct.cJSON* %42, %struct.cJSON** %46, align 8
  br label %47

47:                                               ; preds = %37, %32
  br label %48

48:                                               ; preds = %47, %23
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suffix_object(%struct.cJSON* noundef %0, %struct.cJSON* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store %struct.cJSON* %1, %struct.cJSON** %4, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %6 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %7 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %6, i32 0, i32 0
  store %struct.cJSON* %5, %struct.cJSON** %7, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %10 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %9, i32 0, i32 1
  store %struct.cJSON* %8, %struct.cJSON** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_AddItemToObject(%struct.cJSON* noundef %0, i8* noundef %1, %struct.cJSON* noundef %2) #0 {
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.cJSON* %2, %struct.cJSON** %6, align 8
  %7 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %10 = call i32 @add_item_to_object(%struct.cJSON* noundef %7, i8* noundef %8, %struct.cJSON* noundef %9, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_item_to_object(%struct.cJSON* noundef %0, i8* noundef %1, %struct.cJSON* noundef %2, %struct.internal_hooks* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cJSON*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cJSON*, align 8
  %10 = alloca %struct.internal_hooks*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.cJSON* %0, %struct.cJSON** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.cJSON* %2, %struct.cJSON** %9, align 8
  store %struct.internal_hooks* %3, %struct.internal_hooks** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %15 = icmp eq %struct.cJSON* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %21 = icmp eq %struct.cJSON* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %24 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %25 = icmp eq %struct.cJSON* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19, %16, %5
  store i32 0, i32* %6, align 4
  br label %77

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @cast_away_const(i8* noundef %31)
  store i8* %32, i8** %12, align 8
  %33 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %34 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, 512
  store i32 %36, i32* %13, align 4
  br label %49

37:                                               ; preds = %27
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.internal_hooks*, %struct.internal_hooks** %10, align 8
  %40 = call i8* @cJSON_strdup(i8* noundef %38, %struct.internal_hooks* noundef %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %77

44:                                               ; preds = %37
  %45 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %46 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, -513
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %44, %30
  %50 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %51 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 512
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %57 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %56, i32 0, i32 7
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.internal_hooks*, %struct.internal_hooks** %10, align 8
  %62 = getelementptr inbounds %struct.internal_hooks, %struct.internal_hooks* %61, i32 0, i32 1
  %63 = load void (i8*)*, void (i8*)** %62, align 8
  %64 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %65 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %64, i32 0, i32 7
  %66 = load i8*, i8** %65, align 8
  call void %63(i8* noundef %66)
  br label %67

67:                                               ; preds = %60, %55, %49
  %68 = load i8*, i8** %12, align 8
  %69 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %70 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %73 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %75 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %76 = call i32 @add_item_to_array(%struct.cJSON* noundef %74, %struct.cJSON* noundef %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %67, %43, %26
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cast_away_const(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_AddItemToObjectCS(%struct.cJSON* noundef %0, i8* noundef %1, %struct.cJSON* noundef %2) #0 {
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.cJSON* %2, %struct.cJSON** %6, align 8
  %7 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %10 = call i32 @add_item_to_object(%struct.cJSON* noundef %7, i8* noundef %8, %struct.cJSON* noundef %9, %struct.internal_hooks* noundef @global_hooks, i32 noundef 1)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_AddItemReferenceToArray(%struct.cJSON* noundef %0, %struct.cJSON* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.cJSON* %1, %struct.cJSON** %5, align 8
  %6 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %7 = icmp eq %struct.cJSON* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

9:                                                ; preds = %2
  %10 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %11 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %12 = call %struct.cJSON* @create_reference(%struct.cJSON* noundef %11, %struct.internal_hooks* noundef @global_hooks)
  %13 = call i32 @add_item_to_array(%struct.cJSON* noundef %10, %struct.cJSON* noundef %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %9, %8
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cJSON* @create_reference(%struct.cJSON* noundef %0, %struct.internal_hooks* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.internal_hooks*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.internal_hooks* %1, %struct.internal_hooks** %5, align 8
  store %struct.cJSON* null, %struct.cJSON** %6, align 8
  %7 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %8 = icmp eq %struct.cJSON* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.internal_hooks*, %struct.internal_hooks** %5, align 8
  %12 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef %11)
  store %struct.cJSON* %12, %struct.cJSON** %6, align 8
  %13 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %14 = icmp eq %struct.cJSON* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %32

16:                                               ; preds = %10
  %17 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %18 = bitcast %struct.cJSON* %17 to i8*
  %19 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %20 = bitcast %struct.cJSON* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %20, i64 64, i1 false)
  %21 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %22 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %21, i32 0, i32 7
  store i8* null, i8** %22, align 8
  %23 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %24 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, 256
  store i32 %26, i32* %24, align 8
  %27 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %28 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %27, i32 0, i32 1
  store %struct.cJSON* null, %struct.cJSON** %28, align 8
  %29 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %30 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %29, i32 0, i32 0
  store %struct.cJSON* null, %struct.cJSON** %30, align 8
  %31 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  store %struct.cJSON* %31, %struct.cJSON** %3, align 8
  br label %32

32:                                               ; preds = %16, %15, %9
  %33 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_AddItemReferenceToObject(%struct.cJSON* noundef %0, i8* noundef %1, %struct.cJSON* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.cJSON* %2, %struct.cJSON** %7, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %9 = icmp eq %struct.cJSON* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %20

14:                                               ; preds = %10
  %15 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %18 = call %struct.cJSON* @create_reference(%struct.cJSON* noundef %17, %struct.internal_hooks* noundef @global_hooks)
  %19 = call i32 @add_item_to_object(%struct.cJSON* noundef %15, i8* noundef %16, %struct.cJSON* noundef %18, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_AddNullToObject(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.cJSON* @cJSON_CreateNull()
  store %struct.cJSON* %7, %struct.cJSON** %6, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %11 = call i32 @add_item_to_object(%struct.cJSON* noundef %8, i8* noundef %9, %struct.cJSON* noundef %10, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  store %struct.cJSON* %14, %struct.cJSON** %3, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %16)
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateNull() #0 {
  %1 = alloca %struct.cJSON*, align 8
  %2 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %2, %struct.cJSON** %1, align 8
  %3 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  %4 = icmp ne %struct.cJSON* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  %7 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %6, i32 0, i32 3
  store i32 4, i32* %7, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  ret %struct.cJSON* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_AddTrueToObject(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.cJSON* @cJSON_CreateTrue()
  store %struct.cJSON* %7, %struct.cJSON** %6, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %11 = call i32 @add_item_to_object(%struct.cJSON* noundef %8, i8* noundef %9, %struct.cJSON* noundef %10, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  store %struct.cJSON* %14, %struct.cJSON** %3, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %16)
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateTrue() #0 {
  %1 = alloca %struct.cJSON*, align 8
  %2 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %2, %struct.cJSON** %1, align 8
  %3 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  %4 = icmp ne %struct.cJSON* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  %7 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %6, i32 0, i32 3
  store i32 2, i32* %7, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  ret %struct.cJSON* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_AddFalseToObject(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.cJSON* @cJSON_CreateFalse()
  store %struct.cJSON* %7, %struct.cJSON** %6, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %11 = call i32 @add_item_to_object(%struct.cJSON* noundef %8, i8* noundef %9, %struct.cJSON* noundef %10, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  store %struct.cJSON* %14, %struct.cJSON** %3, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %16)
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateFalse() #0 {
  %1 = alloca %struct.cJSON*, align 8
  %2 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %2, %struct.cJSON** %1, align 8
  %3 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  %4 = icmp ne %struct.cJSON* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  %7 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %6, i32 0, i32 3
  store i32 1, i32* %7, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  ret %struct.cJSON* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_AddBoolToObject(%struct.cJSON* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.cJSON* @cJSON_CreateBool(i32 noundef %9)
  store %struct.cJSON* %10, %struct.cJSON** %8, align 8
  %11 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %14 = call i32 @add_item_to_object(%struct.cJSON* noundef %11, i8* noundef %12, %struct.cJSON* noundef %13, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  store %struct.cJSON* %17, %struct.cJSON** %4, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %19)
  store %struct.cJSON* null, %struct.cJSON** %4, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  ret %struct.cJSON* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateBool(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %4, %struct.cJSON** %3, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = icmp ne %struct.cJSON* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 2, i32 1
  %12 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %13 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_AddNumberToObject(%struct.cJSON* noundef %0, i8* noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store i8* %1, i8** %6, align 8
  store double %2, double* %7, align 8
  %9 = load double, double* %7, align 8
  %10 = call %struct.cJSON* @cJSON_CreateNumber(double noundef %9)
  store %struct.cJSON* %10, %struct.cJSON** %8, align 8
  %11 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %14 = call i32 @add_item_to_object(%struct.cJSON* noundef %11, i8* noundef %12, %struct.cJSON* noundef %13, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  store %struct.cJSON* %17, %struct.cJSON** %4, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %19)
  store %struct.cJSON* null, %struct.cJSON** %4, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  ret %struct.cJSON* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateNumber(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.cJSON*, align 8
  store double %0, double* %2, align 8
  %4 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %4, %struct.cJSON** %3, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = icmp ne %struct.cJSON* %5, null
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  store i32 8, i32* %9, align 8
  %10 = load double, double* %2, align 8
  %11 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %12 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %11, i32 0, i32 6
  store double %10, double* %12, align 8
  %13 = load double, double* %2, align 8
  %14 = fcmp oge double %13, 0x41DFFFFFFFC00000
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %17 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %16, i32 0, i32 5
  store i32 2147483647, i32* %17, align 8
  br label %30

18:                                               ; preds = %7
  %19 = load double, double* %2, align 8
  %20 = fcmp ole double %19, 0xC1E0000000000000
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %23 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %22, i32 0, i32 5
  store i32 -2147483648, i32* %23, align 8
  br label %29

24:                                               ; preds = %18
  %25 = load double, double* %2, align 8
  %26 = fptosi double %25 to i32
  %27 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %28 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %24, %21
  br label %30

30:                                               ; preds = %29, %15
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_AddStringToObject(%struct.cJSON* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.cJSON* @cJSON_CreateString(i8* noundef %9)
  store %struct.cJSON* %10, %struct.cJSON** %8, align 8
  %11 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %14 = call i32 @add_item_to_object(%struct.cJSON* noundef %11, i8* noundef %12, %struct.cJSON* noundef %13, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  store %struct.cJSON* %17, %struct.cJSON** %4, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %19)
  store %struct.cJSON* null, %struct.cJSON** %4, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  ret %struct.cJSON* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateString(i8* noundef %0) #0 {
  %2 = alloca %struct.cJSON*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cJSON*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %5, %struct.cJSON** %4, align 8
  %6 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %7 = icmp ne %struct.cJSON* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %10 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %9, i32 0, i32 3
  store i32 16, i32* %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @cJSON_strdup(i8* noundef %11, %struct.internal_hooks* noundef @global_hooks)
  %13 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %14 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %16 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %20)
  store %struct.cJSON* null, %struct.cJSON** %2, align 8
  br label %24

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  store %struct.cJSON* %23, %struct.cJSON** %2, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  ret %struct.cJSON* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_AddRawToObject(%struct.cJSON* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.cJSON* @cJSON_CreateRaw(i8* noundef %9)
  store %struct.cJSON* %10, %struct.cJSON** %8, align 8
  %11 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %14 = call i32 @add_item_to_object(%struct.cJSON* noundef %11, i8* noundef %12, %struct.cJSON* noundef %13, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  store %struct.cJSON* %17, %struct.cJSON** %4, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %19)
  store %struct.cJSON* null, %struct.cJSON** %4, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  ret %struct.cJSON* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateRaw(i8* noundef %0) #0 {
  %2 = alloca %struct.cJSON*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cJSON*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %5, %struct.cJSON** %4, align 8
  %6 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %7 = icmp ne %struct.cJSON* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %10 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %9, i32 0, i32 3
  store i32 128, i32* %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @cJSON_strdup(i8* noundef %11, %struct.internal_hooks* noundef @global_hooks)
  %13 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %14 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %16 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %20)
  store %struct.cJSON* null, %struct.cJSON** %2, align 8
  br label %24

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  store %struct.cJSON* %23, %struct.cJSON** %2, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  ret %struct.cJSON* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_AddObjectToObject(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.cJSON* @cJSON_CreateObject()
  store %struct.cJSON* %7, %struct.cJSON** %6, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %11 = call i32 @add_item_to_object(%struct.cJSON* noundef %8, i8* noundef %9, %struct.cJSON* noundef %10, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  store %struct.cJSON* %14, %struct.cJSON** %3, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %16)
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateObject() #0 {
  %1 = alloca %struct.cJSON*, align 8
  %2 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %2, %struct.cJSON** %1, align 8
  %3 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  %4 = icmp ne %struct.cJSON* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  %7 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %6, i32 0, i32 3
  store i32 64, i32* %7, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  ret %struct.cJSON* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_AddArrayToObject(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.cJSON* @cJSON_CreateArray()
  store %struct.cJSON* %7, %struct.cJSON** %6, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %11 = call i32 @add_item_to_object(%struct.cJSON* noundef %8, i8* noundef %9, %struct.cJSON* noundef %10, %struct.internal_hooks* noundef @global_hooks, i32 noundef 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  store %struct.cJSON* %14, %struct.cJSON** %3, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %16)
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateArray() #0 {
  %1 = alloca %struct.cJSON*, align 8
  %2 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %2, %struct.cJSON** %1, align 8
  %3 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  %4 = icmp ne %struct.cJSON* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  %7 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %6, i32 0, i32 3
  store i32 32, i32* %7, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.cJSON*, %struct.cJSON** %1, align 8
  ret %struct.cJSON* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_DetachItemViaPointer(%struct.cJSON* noundef %0, %struct.cJSON* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store %struct.cJSON* %1, %struct.cJSON** %5, align 8
  %6 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %7 = icmp eq %struct.cJSON* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %10 = icmp eq %struct.cJSON* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %71

12:                                               ; preds = %8
  %13 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %14 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %15 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %14, i32 0, i32 2
  %16 = load %struct.cJSON*, %struct.cJSON** %15, align 8
  %17 = icmp ne %struct.cJSON* %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %20 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %19, i32 0, i32 0
  %21 = load %struct.cJSON*, %struct.cJSON** %20, align 8
  %22 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %23 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %22, i32 0, i32 1
  %24 = load %struct.cJSON*, %struct.cJSON** %23, align 8
  %25 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %24, i32 0, i32 0
  store %struct.cJSON* %21, %struct.cJSON** %25, align 8
  br label %26

26:                                               ; preds = %18, %12
  %27 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %28 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %27, i32 0, i32 0
  %29 = load %struct.cJSON*, %struct.cJSON** %28, align 8
  %30 = icmp ne %struct.cJSON* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %33 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %32, i32 0, i32 1
  %34 = load %struct.cJSON*, %struct.cJSON** %33, align 8
  %35 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %36 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %35, i32 0, i32 0
  %37 = load %struct.cJSON*, %struct.cJSON** %36, align 8
  %38 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %37, i32 0, i32 1
  store %struct.cJSON* %34, %struct.cJSON** %38, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %41 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %42 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %41, i32 0, i32 2
  %43 = load %struct.cJSON*, %struct.cJSON** %42, align 8
  %44 = icmp eq %struct.cJSON* %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %47 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %46, i32 0, i32 0
  %48 = load %struct.cJSON*, %struct.cJSON** %47, align 8
  %49 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %50 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %49, i32 0, i32 2
  store %struct.cJSON* %48, %struct.cJSON** %50, align 8
  br label %65

51:                                               ; preds = %39
  %52 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %53 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %52, i32 0, i32 0
  %54 = load %struct.cJSON*, %struct.cJSON** %53, align 8
  %55 = icmp eq %struct.cJSON* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %58 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %57, i32 0, i32 1
  %59 = load %struct.cJSON*, %struct.cJSON** %58, align 8
  %60 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %61 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %60, i32 0, i32 2
  %62 = load %struct.cJSON*, %struct.cJSON** %61, align 8
  %63 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %62, i32 0, i32 1
  store %struct.cJSON* %59, %struct.cJSON** %63, align 8
  br label %64

64:                                               ; preds = %56, %51
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %67 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %66, i32 0, i32 1
  store %struct.cJSON* null, %struct.cJSON** %67, align 8
  %68 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %69 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %68, i32 0, i32 0
  store %struct.cJSON* null, %struct.cJSON** %69, align 8
  %70 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  store %struct.cJSON* %70, %struct.cJSON** %3, align 8
  br label %71

71:                                               ; preds = %65, %11
  %72 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_DetachItemFromArray(%struct.cJSON* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i32, align 4
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %16

9:                                                ; preds = %2
  %10 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %11 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = call %struct.cJSON* @get_array_item(%struct.cJSON* noundef %11, i64 noundef %13)
  %15 = call %struct.cJSON* @cJSON_DetachItemViaPointer(%struct.cJSON* noundef %10, %struct.cJSON* noundef %14)
  store %struct.cJSON* %15, %struct.cJSON** %3, align 8
  br label %16

16:                                               ; preds = %9, %8
  %17 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cJSON_DeleteItemFromArray(%struct.cJSON* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca i32, align 4
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.cJSON* @cJSON_DetachItemFromArray(%struct.cJSON* noundef %5, i32 noundef %6)
  call void @cJSON_Delete(%struct.cJSON* noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_DetachItemFromObject(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.cJSON* @cJSON_GetObjectItem(%struct.cJSON* noundef %6, i8* noundef %7)
  store %struct.cJSON* %8, %struct.cJSON** %5, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %11 = call %struct.cJSON* @cJSON_DetachItemViaPointer(%struct.cJSON* noundef %9, %struct.cJSON* noundef %10)
  ret %struct.cJSON* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_DetachItemFromObjectCaseSensitive(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.cJSON* @cJSON_GetObjectItemCaseSensitive(%struct.cJSON* noundef %6, i8* noundef %7)
  store %struct.cJSON* %8, %struct.cJSON** %5, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %11 = call %struct.cJSON* @cJSON_DetachItemViaPointer(%struct.cJSON* noundef %9, %struct.cJSON* noundef %10)
  ret %struct.cJSON* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cJSON_DeleteItemFromObject(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca i8*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.cJSON* @cJSON_DetachItemFromObject(%struct.cJSON* noundef %5, i8* noundef %6)
  call void @cJSON_Delete(%struct.cJSON* noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cJSON_DeleteItemFromObjectCaseSensitive(%struct.cJSON* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca i8*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.cJSON* @cJSON_DetachItemFromObjectCaseSensitive(%struct.cJSON* noundef %5, i8* noundef %6)
  call void @cJSON_Delete(%struct.cJSON* noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_InsertItemInArray(%struct.cJSON* noundef %0, i32 noundef %1, %struct.cJSON* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cJSON*, align 8
  %8 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cJSON* %2, %struct.cJSON** %7, align 8
  store %struct.cJSON* null, %struct.cJSON** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

12:                                               ; preds = %3
  %13 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = call %struct.cJSON* @get_array_item(%struct.cJSON* noundef %13, i64 noundef %15)
  store %struct.cJSON* %16, %struct.cJSON** %8, align 8
  %17 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %18 = icmp eq %struct.cJSON* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %21 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %22 = call i32 @add_item_to_array(%struct.cJSON* noundef %20, %struct.cJSON* noundef %21)
  store i32 %22, i32* %4, align 4
  br label %51

23:                                               ; preds = %12
  %24 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %25 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %26 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %25, i32 0, i32 0
  store %struct.cJSON* %24, %struct.cJSON** %26, align 8
  %27 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %28 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %27, i32 0, i32 1
  %29 = load %struct.cJSON*, %struct.cJSON** %28, align 8
  %30 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %31 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %30, i32 0, i32 1
  store %struct.cJSON* %29, %struct.cJSON** %31, align 8
  %32 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %33 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %34 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %33, i32 0, i32 1
  store %struct.cJSON* %32, %struct.cJSON** %34, align 8
  %35 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %36 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %37 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %36, i32 0, i32 2
  %38 = load %struct.cJSON*, %struct.cJSON** %37, align 8
  %39 = icmp eq %struct.cJSON* %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %42 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %43 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %42, i32 0, i32 2
  store %struct.cJSON* %41, %struct.cJSON** %43, align 8
  br label %50

44:                                               ; preds = %23
  %45 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %46 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %47 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %46, i32 0, i32 1
  %48 = load %struct.cJSON*, %struct.cJSON** %47, align 8
  %49 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %48, i32 0, i32 0
  store %struct.cJSON* %45, %struct.cJSON** %49, align 8
  br label %50

50:                                               ; preds = %44, %40
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %19, %11
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_ReplaceItemViaPointer(%struct.cJSON* noundef %0, %struct.cJSON* noundef %1, %struct.cJSON* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca %struct.cJSON*, align 8
  %7 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store %struct.cJSON* %1, %struct.cJSON** %6, align 8
  store %struct.cJSON* %2, %struct.cJSON** %7, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %9 = icmp eq %struct.cJSON* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %12 = icmp eq %struct.cJSON* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %15 = icmp eq %struct.cJSON* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %96

17:                                               ; preds = %13
  %18 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %19 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %20 = icmp eq %struct.cJSON* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %96

22:                                               ; preds = %17
  %23 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %24 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %23, i32 0, i32 0
  %25 = load %struct.cJSON*, %struct.cJSON** %24, align 8
  %26 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %27 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %26, i32 0, i32 0
  store %struct.cJSON* %25, %struct.cJSON** %27, align 8
  %28 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %29 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %28, i32 0, i32 1
  %30 = load %struct.cJSON*, %struct.cJSON** %29, align 8
  %31 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %32 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %31, i32 0, i32 1
  store %struct.cJSON* %30, %struct.cJSON** %32, align 8
  %33 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %34 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %33, i32 0, i32 0
  %35 = load %struct.cJSON*, %struct.cJSON** %34, align 8
  %36 = icmp ne %struct.cJSON* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %39 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %40 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %39, i32 0, i32 0
  %41 = load %struct.cJSON*, %struct.cJSON** %40, align 8
  %42 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %41, i32 0, i32 1
  store %struct.cJSON* %38, %struct.cJSON** %42, align 8
  br label %43

43:                                               ; preds = %37, %22
  %44 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %45 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %44, i32 0, i32 2
  %46 = load %struct.cJSON*, %struct.cJSON** %45, align 8
  %47 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %48 = icmp eq %struct.cJSON* %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %51 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %50, i32 0, i32 2
  %52 = load %struct.cJSON*, %struct.cJSON** %51, align 8
  %53 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %52, i32 0, i32 1
  %54 = load %struct.cJSON*, %struct.cJSON** %53, align 8
  %55 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %56 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %55, i32 0, i32 2
  %57 = load %struct.cJSON*, %struct.cJSON** %56, align 8
  %58 = icmp eq %struct.cJSON* %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %61 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %62 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %61, i32 0, i32 1
  store %struct.cJSON* %60, %struct.cJSON** %62, align 8
  br label %63

63:                                               ; preds = %59, %49
  %64 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %65 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %66 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %65, i32 0, i32 2
  store %struct.cJSON* %64, %struct.cJSON** %66, align 8
  br label %90

67:                                               ; preds = %43
  %68 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %69 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %68, i32 0, i32 1
  %70 = load %struct.cJSON*, %struct.cJSON** %69, align 8
  %71 = icmp ne %struct.cJSON* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %74 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %75 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %74, i32 0, i32 1
  %76 = load %struct.cJSON*, %struct.cJSON** %75, align 8
  %77 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %76, i32 0, i32 0
  store %struct.cJSON* %73, %struct.cJSON** %77, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %80 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %79, i32 0, i32 0
  %81 = load %struct.cJSON*, %struct.cJSON** %80, align 8
  %82 = icmp eq %struct.cJSON* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %85 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %86 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %85, i32 0, i32 2
  %87 = load %struct.cJSON*, %struct.cJSON** %86, align 8
  %88 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %87, i32 0, i32 1
  store %struct.cJSON* %84, %struct.cJSON** %88, align 8
  br label %89

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89, %63
  %91 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %92 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %91, i32 0, i32 0
  store %struct.cJSON* null, %struct.cJSON** %92, align 8
  %93 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %94 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %93, i32 0, i32 1
  store %struct.cJSON* null, %struct.cJSON** %94, align 8
  %95 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %95)
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %90, %21, %16
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_ReplaceItemInArray(%struct.cJSON* noundef %0, i32 noundef %1, %struct.cJSON* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cJSON* %2, %struct.cJSON** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %19

11:                                               ; preds = %3
  %12 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %13 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = call %struct.cJSON* @get_array_item(%struct.cJSON* noundef %13, i64 noundef %15)
  %17 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %18 = call i32 @cJSON_ReplaceItemViaPointer(%struct.cJSON* noundef %12, %struct.cJSON* noundef %16, %struct.cJSON* noundef %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_ReplaceItemInObject(%struct.cJSON* noundef %0, i8* noundef %1, %struct.cJSON* noundef %2) #0 {
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.cJSON* %2, %struct.cJSON** %6, align 8
  %7 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %10 = call i32 @replace_item_in_object(%struct.cJSON* noundef %7, i8* noundef %8, %struct.cJSON* noundef %9, i32 noundef 0)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_item_in_object(%struct.cJSON* noundef %0, i8* noundef %1, %struct.cJSON* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cJSON*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cJSON*, align 8
  %9 = alloca i32, align 4
  store %struct.cJSON* %0, %struct.cJSON** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.cJSON* %2, %struct.cJSON** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %11 = icmp eq %struct.cJSON* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  store i32 0, i32* %5, align 4
  br label %53

16:                                               ; preds = %12
  %17 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %18 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 512
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %24 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %23, i32 0, i32 7
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %29 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %28, i32 0, i32 7
  %30 = load i8*, i8** %29, align 8
  call void @cJSON_free(i8* noundef %30)
  br label %31

31:                                               ; preds = %27, %22, %16
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @cJSON_strdup(i8* noundef %32, %struct.internal_hooks* noundef @global_hooks)
  %34 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %35 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %37 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %36, i32 0, i32 7
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %53

41:                                               ; preds = %31
  %42 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %43 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, -513
  store i32 %45, i32* %43, align 8
  %46 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %47 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.cJSON* @get_object_item(%struct.cJSON* noundef %47, i8* noundef %48, i32 noundef %49)
  %51 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %52 = call i32 @cJSON_ReplaceItemViaPointer(%struct.cJSON* noundef %46, %struct.cJSON* noundef %50, %struct.cJSON* noundef %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %41, %40, %15
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_ReplaceItemInObjectCaseSensitive(%struct.cJSON* noundef %0, i8* noundef %1, %struct.cJSON* noundef %2) #0 {
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.cJSON* %2, %struct.cJSON** %6, align 8
  %7 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %10 = call i32 @replace_item_in_object(%struct.cJSON* noundef %7, i8* noundef %8, %struct.cJSON* noundef %9, i32 noundef 1)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateStringReference(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cJSON*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %4, %struct.cJSON** %3, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = icmp ne %struct.cJSON* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  store i32 272, i32* %9, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @cast_away_const(i8* noundef %10)
  %12 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %13 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateObjectReference(%struct.cJSON* noundef %0) #0 {
  %2 = alloca %struct.cJSON*, align 8
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %2, align 8
  %4 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %4, %struct.cJSON** %3, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = icmp ne %struct.cJSON* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  store i32 320, i32* %9, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %11 = bitcast %struct.cJSON* %10 to i8*
  %12 = call i8* @cast_away_const(i8* noundef %11)
  %13 = bitcast i8* %12 to %struct.cJSON*
  %14 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %15 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %14, i32 0, i32 2
  store %struct.cJSON* %13, %struct.cJSON** %15, align 8
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateArrayReference(%struct.cJSON* noundef %0) #0 {
  %2 = alloca %struct.cJSON*, align 8
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %2, align 8
  %4 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %4, %struct.cJSON** %3, align 8
  %5 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %6 = icmp ne %struct.cJSON* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  store i32 288, i32* %9, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %11 = bitcast %struct.cJSON* %10 to i8*
  %12 = call i8* @cast_away_const(i8* noundef %11)
  %13 = bitcast i8* %12 to %struct.cJSON*
  %14 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %15 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %14, i32 0, i32 2
  store %struct.cJSON* %13, %struct.cJSON** %15, align 8
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateIntArray(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cJSON*, align 8
  %8 = alloca %struct.cJSON*, align 8
  %9 = alloca %struct.cJSON*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store %struct.cJSON* null, %struct.cJSON** %7, align 8
  store %struct.cJSON* null, %struct.cJSON** %8, align 8
  store %struct.cJSON* null, %struct.cJSON** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %70

16:                                               ; preds = %12
  %17 = call %struct.cJSON* @cJSON_CreateArray()
  store %struct.cJSON* %17, %struct.cJSON** %9, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %51, %16
  %19 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %20 = icmp ne %struct.cJSON* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sitofp i32 %32 to double
  %34 = call %struct.cJSON* @cJSON_CreateNumber(double noundef %33)
  store %struct.cJSON* %34, %struct.cJSON** %7, align 8
  %35 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %36 = icmp ne %struct.cJSON* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %38)
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %70

39:                                               ; preds = %28
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %44 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %45 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %44, i32 0, i32 2
  store %struct.cJSON* %43, %struct.cJSON** %45, align 8
  br label %49

46:                                               ; preds = %39
  %47 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %48 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  call void @suffix_object(%struct.cJSON* noundef %47, %struct.cJSON* noundef %48)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  store %struct.cJSON* %50, %struct.cJSON** %8, align 8
  br label %51

51:                                               ; preds = %49
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %18, !llvm.loop !26

54:                                               ; preds = %26
  %55 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %56 = icmp ne %struct.cJSON* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %59 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %58, i32 0, i32 2
  %60 = load %struct.cJSON*, %struct.cJSON** %59, align 8
  %61 = icmp ne %struct.cJSON* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %64 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %65 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %64, i32 0, i32 2
  %66 = load %struct.cJSON*, %struct.cJSON** %65, align 8
  %67 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %66, i32 0, i32 1
  store %struct.cJSON* %63, %struct.cJSON** %67, align 8
  br label %68

68:                                               ; preds = %62, %57, %54
  %69 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  store %struct.cJSON* %69, %struct.cJSON** %3, align 8
  br label %70

70:                                               ; preds = %68, %37, %15
  %71 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateFloatArray(float* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cJSON*, align 8
  %8 = alloca %struct.cJSON*, align 8
  %9 = alloca %struct.cJSON*, align 8
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store %struct.cJSON* null, %struct.cJSON** %7, align 8
  store %struct.cJSON* null, %struct.cJSON** %8, align 8
  store %struct.cJSON* null, %struct.cJSON** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load float*, float** %4, align 8
  %14 = icmp eq float* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %70

16:                                               ; preds = %12
  %17 = call %struct.cJSON* @cJSON_CreateArray()
  store %struct.cJSON* %17, %struct.cJSON** %9, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %51, %16
  %19 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %20 = icmp ne %struct.cJSON* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = load float*, float** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds float, float* %29, i64 %30
  %32 = load float, float* %31, align 4
  %33 = fpext float %32 to double
  %34 = call %struct.cJSON* @cJSON_CreateNumber(double noundef %33)
  store %struct.cJSON* %34, %struct.cJSON** %7, align 8
  %35 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %36 = icmp ne %struct.cJSON* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %38)
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %70

39:                                               ; preds = %28
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %44 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %45 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %44, i32 0, i32 2
  store %struct.cJSON* %43, %struct.cJSON** %45, align 8
  br label %49

46:                                               ; preds = %39
  %47 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %48 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  call void @suffix_object(%struct.cJSON* noundef %47, %struct.cJSON* noundef %48)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  store %struct.cJSON* %50, %struct.cJSON** %8, align 8
  br label %51

51:                                               ; preds = %49
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %18, !llvm.loop !27

54:                                               ; preds = %26
  %55 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %56 = icmp ne %struct.cJSON* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %59 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %58, i32 0, i32 2
  %60 = load %struct.cJSON*, %struct.cJSON** %59, align 8
  %61 = icmp ne %struct.cJSON* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %64 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %65 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %64, i32 0, i32 2
  %66 = load %struct.cJSON*, %struct.cJSON** %65, align 8
  %67 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %66, i32 0, i32 1
  store %struct.cJSON* %63, %struct.cJSON** %67, align 8
  br label %68

68:                                               ; preds = %62, %57, %54
  %69 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  store %struct.cJSON* %69, %struct.cJSON** %3, align 8
  br label %70

70:                                               ; preds = %68, %37, %15
  %71 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateDoubleArray(double* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cJSON*, align 8
  %8 = alloca %struct.cJSON*, align 8
  %9 = alloca %struct.cJSON*, align 8
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store %struct.cJSON* null, %struct.cJSON** %7, align 8
  store %struct.cJSON* null, %struct.cJSON** %8, align 8
  store %struct.cJSON* null, %struct.cJSON** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load double*, double** %4, align 8
  %14 = icmp eq double* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %69

16:                                               ; preds = %12
  %17 = call %struct.cJSON* @cJSON_CreateArray()
  store %struct.cJSON* %17, %struct.cJSON** %9, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %50, %16
  %19 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %20 = icmp ne %struct.cJSON* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %53

28:                                               ; preds = %26
  %29 = load double*, double** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds double, double* %29, i64 %30
  %32 = load double, double* %31, align 8
  %33 = call %struct.cJSON* @cJSON_CreateNumber(double noundef %32)
  store %struct.cJSON* %33, %struct.cJSON** %7, align 8
  %34 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %35 = icmp ne %struct.cJSON* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %37)
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %69

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %43 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %44 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %43, i32 0, i32 2
  store %struct.cJSON* %42, %struct.cJSON** %44, align 8
  br label %48

45:                                               ; preds = %38
  %46 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %47 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  call void @suffix_object(%struct.cJSON* noundef %46, %struct.cJSON* noundef %47)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  store %struct.cJSON* %49, %struct.cJSON** %8, align 8
  br label %50

50:                                               ; preds = %48
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %18, !llvm.loop !28

53:                                               ; preds = %26
  %54 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %55 = icmp ne %struct.cJSON* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %58 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %57, i32 0, i32 2
  %59 = load %struct.cJSON*, %struct.cJSON** %58, align 8
  %60 = icmp ne %struct.cJSON* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %63 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %64 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %63, i32 0, i32 2
  %65 = load %struct.cJSON*, %struct.cJSON** %64, align 8
  %66 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %65, i32 0, i32 1
  store %struct.cJSON* %62, %struct.cJSON** %66, align 8
  br label %67

67:                                               ; preds = %61, %56, %53
  %68 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  store %struct.cJSON* %68, %struct.cJSON** %3, align 8
  br label %69

69:                                               ; preds = %67, %36, %15
  %70 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_CreateStringArray(i8** noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cJSON*, align 8
  %8 = alloca %struct.cJSON*, align 8
  %9 = alloca %struct.cJSON*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store %struct.cJSON* null, %struct.cJSON** %7, align 8
  store %struct.cJSON* null, %struct.cJSON** %8, align 8
  store %struct.cJSON* null, %struct.cJSON** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  %14 = icmp eq i8** %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %69

16:                                               ; preds = %12
  %17 = call %struct.cJSON* @cJSON_CreateArray()
  store %struct.cJSON* %17, %struct.cJSON** %9, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %50, %16
  %19 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %20 = icmp ne %struct.cJSON* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %53

28:                                               ; preds = %26
  %29 = load i8**, i8*** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call %struct.cJSON* @cJSON_CreateString(i8* noundef %32)
  store %struct.cJSON* %33, %struct.cJSON** %7, align 8
  %34 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %35 = icmp ne %struct.cJSON* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %37)
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %69

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %43 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %44 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %43, i32 0, i32 2
  store %struct.cJSON* %42, %struct.cJSON** %44, align 8
  br label %48

45:                                               ; preds = %38
  %46 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %47 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  call void @suffix_object(%struct.cJSON* noundef %46, %struct.cJSON* noundef %47)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  store %struct.cJSON* %49, %struct.cJSON** %8, align 8
  br label %50

50:                                               ; preds = %48
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %18, !llvm.loop !29

53:                                               ; preds = %26
  %54 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %55 = icmp ne %struct.cJSON* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %58 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %57, i32 0, i32 2
  %59 = load %struct.cJSON*, %struct.cJSON** %58, align 8
  %60 = icmp ne %struct.cJSON* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %63 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %64 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %63, i32 0, i32 2
  %65 = load %struct.cJSON*, %struct.cJSON** %64, align 8
  %66 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %65, i32 0, i32 1
  store %struct.cJSON* %62, %struct.cJSON** %66, align 8
  br label %67

67:                                               ; preds = %61, %56, %53
  %68 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  store %struct.cJSON* %68, %struct.cJSON** %3, align 8
  br label %69

69:                                               ; preds = %67, %36, %15
  %70 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cJSON* @cJSON_Duplicate(%struct.cJSON* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cJSON*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cJSON*, align 8
  %7 = alloca %struct.cJSON*, align 8
  %8 = alloca %struct.cJSON*, align 8
  %9 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cJSON* null, %struct.cJSON** %6, align 8
  store %struct.cJSON* null, %struct.cJSON** %7, align 8
  store %struct.cJSON* null, %struct.cJSON** %8, align 8
  store %struct.cJSON* null, %struct.cJSON** %9, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %11 = icmp ne %struct.cJSON* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %136

13:                                               ; preds = %2
  %14 = call %struct.cJSON* @cJSON_New_Item(%struct.internal_hooks* noundef @global_hooks)
  store %struct.cJSON* %14, %struct.cJSON** %6, align 8
  %15 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %16 = icmp ne %struct.cJSON* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %136

18:                                               ; preds = %13
  %19 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %20 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, -257
  %23 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %24 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %26 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %29 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %31 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %30, i32 0, i32 6
  %32 = load double, double* %31, align 8
  %33 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %34 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %33, i32 0, i32 6
  store double %32, double* %34, align 8
  %35 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %36 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %18
  %40 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %41 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @cJSON_strdup(i8* noundef %42, %struct.internal_hooks* noundef @global_hooks)
  %44 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %45 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %47 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %136

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %18
  %53 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %54 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %53, i32 0, i32 7
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %59 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 512
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %65 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %64, i32 0, i32 7
  %66 = load i8*, i8** %65, align 8
  br label %72

67:                                               ; preds = %57
  %68 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %69 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %68, i32 0, i32 7
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @cJSON_strdup(i8* noundef %70, %struct.internal_hooks* noundef @global_hooks)
  br label %72

72:                                               ; preds = %67, %63
  %73 = phi i8* [ %66, %63 ], [ %71, %67 ]
  %74 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %75 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %77 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %76, i32 0, i32 7
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %136

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %52
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  store %struct.cJSON* %86, %struct.cJSON** %3, align 8
  br label %142

87:                                               ; preds = %82
  %88 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %89 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %88, i32 0, i32 2
  %90 = load %struct.cJSON*, %struct.cJSON** %89, align 8
  store %struct.cJSON* %90, %struct.cJSON** %7, align 8
  br label %91

91:                                               ; preds = %116, %87
  %92 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %93 = icmp ne %struct.cJSON* %92, null
  br i1 %93, label %94, label %120

94:                                               ; preds = %91
  %95 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %96 = call %struct.cJSON* @cJSON_Duplicate(%struct.cJSON* noundef %95, i32 noundef 1)
  store %struct.cJSON* %96, %struct.cJSON** %9, align 8
  %97 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %98 = icmp ne %struct.cJSON* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %136

100:                                              ; preds = %94
  %101 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %102 = icmp ne %struct.cJSON* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %105 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %106 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %105, i32 0, i32 0
  store %struct.cJSON* %104, %struct.cJSON** %106, align 8
  %107 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %108 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %109 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %108, i32 0, i32 1
  store %struct.cJSON* %107, %struct.cJSON** %109, align 8
  %110 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  store %struct.cJSON* %110, %struct.cJSON** %8, align 8
  br label %116

111:                                              ; preds = %100
  %112 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %113 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %114 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %113, i32 0, i32 2
  store %struct.cJSON* %112, %struct.cJSON** %114, align 8
  %115 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  store %struct.cJSON* %115, %struct.cJSON** %8, align 8
  br label %116

116:                                              ; preds = %111, %103
  %117 = load %struct.cJSON*, %struct.cJSON** %7, align 8
  %118 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %117, i32 0, i32 0
  %119 = load %struct.cJSON*, %struct.cJSON** %118, align 8
  store %struct.cJSON* %119, %struct.cJSON** %7, align 8
  br label %91, !llvm.loop !30

120:                                              ; preds = %91
  %121 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %122 = icmp ne %struct.cJSON* %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %125 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %124, i32 0, i32 2
  %126 = load %struct.cJSON*, %struct.cJSON** %125, align 8
  %127 = icmp ne %struct.cJSON* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %130 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %131 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %130, i32 0, i32 2
  %132 = load %struct.cJSON*, %struct.cJSON** %131, align 8
  %133 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %132, i32 0, i32 1
  store %struct.cJSON* %129, %struct.cJSON** %133, align 8
  br label %134

134:                                              ; preds = %128, %123, %120
  %135 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  store %struct.cJSON* %135, %struct.cJSON** %3, align 8
  br label %142

136:                                              ; preds = %99, %80, %50, %17, %12
  %137 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %138 = icmp ne %struct.cJSON* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %140)
  br label %141

141:                                              ; preds = %139, %136
  store %struct.cJSON* null, %struct.cJSON** %3, align 8
  br label %142

142:                                              ; preds = %141, %134, %85
  %143 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  ret %struct.cJSON* %143
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cJSON_Minify(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %56

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %53, %8
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %9
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %43 [
    i32 32, label %20
    i32 9, label %20
    i32 13, label %20
    i32 10, label %20
    i32 47, label %23
    i32 34, label %42
  ]

20:                                               ; preds = %15, %15, %15, %15
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %2, align 8
  br label %53

23:                                               ; preds = %15
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 47
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  call void @skip_oneline_comment(i8** noundef %2)
  br label %41

30:                                               ; preds = %23
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 42
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void @skip_multiline_comment(i8** noundef %2)
  br label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %37, %36
  br label %41

41:                                               ; preds = %40, %29
  br label %53

42:                                               ; preds = %15
  call void @minify_string(i8** noundef %2, i8** noundef %3)
  br label %53

43:                                               ; preds = %15
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %46, i8* %48, align 1
  %49 = load i8*, i8** %2, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %2, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %43, %42, %41, %20
  br label %9, !llvm.loop !31

54:                                               ; preds = %9
  %55 = load i8*, i8** %3, align 8
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %54, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_oneline_comment(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %5, i8** %3, align 8
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %6
  %14 = load i8**, i8*** %2, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i8**, i8*** %2, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %21, align 8
  br label %29

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i8**, i8*** %2, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %26, align 8
  br label %6, !llvm.loop !32

29:                                               ; preds = %20, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_multiline_comment(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %5, i8** %3, align 8
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %6
  %14 = load i8**, i8*** %2, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 42
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load i8**, i8*** %2, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i8**, i8*** %2, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %30, i8** %28, align 8
  br label %36

31:                                               ; preds = %20, %13
  br label %32

32:                                               ; preds = %31
  %33 = load i8**, i8*** %2, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  br label %6, !llvm.loop !33

36:                                               ; preds = %27, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minify_string(i8** noundef %0, i8** noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %8, i8* %11, align 1
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %14, i8** %12, align 8
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %17, i8** %15, align 8
  br label %18

18:                                               ; preds = %79, %2
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %86

25:                                               ; preds = %18
  %26 = load i8**, i8*** %3, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %29, i8* %32, align 1
  %33 = load i8**, i8*** %3, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %49

39:                                               ; preds = %25
  %40 = load i8**, i8*** %4, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 34, i8* %42, align 1
  %43 = load i8**, i8*** %3, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %43, align 8
  %46 = load i8**, i8*** %4, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %46, align 8
  br label %86

49:                                               ; preds = %25
  %50 = load i8**, i8*** %3, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 92
  br i1 %55, label %56, label %77

56:                                               ; preds = %49
  %57 = load i8**, i8*** %3, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 34
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load i8**, i8*** %3, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = load i8**, i8*** %4, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %67, i8* %70, align 1
  %71 = load i8**, i8*** %3, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %71, align 8
  %74 = load i8**, i8*** %4, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %74, align 8
  br label %77

77:                                               ; preds = %63, %56, %49
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load i8**, i8*** %3, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %80, align 8
  %83 = load i8**, i8*** %4, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %83, align 8
  br label %18, !llvm.loop !34

86:                                               ; preds = %39, %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_IsInvalid(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = icmp eq %struct.cJSON* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_IsFalse(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = icmp eq %struct.cJSON* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_IsTrue(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = icmp eq %struct.cJSON* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 2
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_IsBool(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = icmp eq %struct.cJSON* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 3
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_IsNull(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = icmp eq %struct.cJSON* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 4
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_IsArray(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = icmp eq %struct.cJSON* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 32
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_IsObject(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = icmp eq %struct.cJSON* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 64
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_IsRaw(%struct.cJSON* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %3, align 8
  %4 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %5 = icmp eq %struct.cJSON* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cJSON*, %struct.cJSON** %3, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 128
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cJSON_Compare(%struct.cJSON* noundef %0, %struct.cJSON* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cJSON*, align 8
  %6 = alloca %struct.cJSON*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cJSON*, align 8
  %9 = alloca %struct.cJSON*, align 8
  %10 = alloca %struct.cJSON*, align 8
  %11 = alloca %struct.cJSON*, align 8
  store %struct.cJSON* %0, %struct.cJSON** %5, align 8
  store %struct.cJSON* %1, %struct.cJSON** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %13 = icmp eq %struct.cJSON* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  %15 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %16 = icmp eq %struct.cJSON* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %19 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 255
  %22 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %23 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 255
  %26 = icmp ne i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17, %14, %3
  store i32 0, i32* %4, align 4
  br label %186

28:                                               ; preds = %17
  %29 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %30 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 255
  switch i32 %32, label %34 [
    i32 1, label %33
    i32 2, label %33
    i32 4, label %33
    i32 8, label %33
    i32 16, label %33
    i32 128, label %33
    i32 32, label %33
    i32 64, label %33
  ]

33:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28
  br label %35

34:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %186

35:                                               ; preds = %33
  %36 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %37 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %38 = icmp eq %struct.cJSON* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %186

40:                                               ; preds = %35
  %41 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %42 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 255
  switch i32 %44, label %185 [
    i32 1, label %45
    i32 2, label %45
    i32 4, label %45
    i32 8, label %46
    i32 16, label %57
    i32 128, label %57
    i32 32, label %79
    i32 64, label %114
  ]

45:                                               ; preds = %40, %40, %40
  store i32 1, i32* %4, align 4
  br label %186

46:                                               ; preds = %40
  %47 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %48 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %47, i32 0, i32 6
  %49 = load double, double* %48, align 8
  %50 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %51 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %50, i32 0, i32 6
  %52 = load double, double* %51, align 8
  %53 = call i32 @compare_double(double noundef %49, double noundef %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %186

56:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %186

57:                                               ; preds = %40, %40
  %58 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %59 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %64 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57
  store i32 0, i32* %4, align 4
  br label %186

68:                                               ; preds = %62
  %69 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %70 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %73 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strcmp(i8* noundef %71, i8* noundef %74) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 1, i32* %4, align 4
  br label %186

78:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %186

79:                                               ; preds = %40
  %80 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %81 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %80, i32 0, i32 2
  %82 = load %struct.cJSON*, %struct.cJSON** %81, align 8
  store %struct.cJSON* %82, %struct.cJSON** %8, align 8
  %83 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %84 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %83, i32 0, i32 2
  %85 = load %struct.cJSON*, %struct.cJSON** %84, align 8
  store %struct.cJSON* %85, %struct.cJSON** %9, align 8
  br label %86

86:                                               ; preds = %101, %79
  %87 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %88 = icmp ne %struct.cJSON* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %91 = icmp ne %struct.cJSON* %90, null
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i1 [ false, %86 ], [ %91, %89 ]
  br i1 %93, label %94, label %108

94:                                               ; preds = %92
  %95 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %96 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @cJSON_Compare(%struct.cJSON* noundef %95, %struct.cJSON* noundef %96, i32 noundef %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %186

101:                                              ; preds = %94
  %102 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %103 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %102, i32 0, i32 0
  %104 = load %struct.cJSON*, %struct.cJSON** %103, align 8
  store %struct.cJSON* %104, %struct.cJSON** %8, align 8
  %105 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %106 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %105, i32 0, i32 0
  %107 = load %struct.cJSON*, %struct.cJSON** %106, align 8
  store %struct.cJSON* %107, %struct.cJSON** %9, align 8
  br label %86, !llvm.loop !35

108:                                              ; preds = %92
  %109 = load %struct.cJSON*, %struct.cJSON** %8, align 8
  %110 = load %struct.cJSON*, %struct.cJSON** %9, align 8
  %111 = icmp ne %struct.cJSON* %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %186

113:                                              ; preds = %108
  store i32 1, i32* %4, align 4
  br label %186

114:                                              ; preds = %40
  store %struct.cJSON* null, %struct.cJSON** %10, align 8
  store %struct.cJSON* null, %struct.cJSON** %11, align 8
  %115 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %116 = icmp ne %struct.cJSON* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %119 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %118, i32 0, i32 2
  %120 = load %struct.cJSON*, %struct.cJSON** %119, align 8
  br label %122

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi %struct.cJSON* [ %120, %117 ], [ null, %121 ]
  store %struct.cJSON* %123, %struct.cJSON** %10, align 8
  br label %124

124:                                              ; preds = %145, %122
  %125 = load %struct.cJSON*, %struct.cJSON** %10, align 8
  %126 = icmp ne %struct.cJSON* %125, null
  br i1 %126, label %127, label %149

127:                                              ; preds = %124
  %128 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %129 = load %struct.cJSON*, %struct.cJSON** %10, align 8
  %130 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %129, i32 0, i32 7
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call %struct.cJSON* @get_object_item(%struct.cJSON* noundef %128, i8* noundef %131, i32 noundef %132)
  store %struct.cJSON* %133, %struct.cJSON** %11, align 8
  %134 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  %135 = icmp eq %struct.cJSON* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %186

137:                                              ; preds = %127
  %138 = load %struct.cJSON*, %struct.cJSON** %10, align 8
  %139 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @cJSON_Compare(%struct.cJSON* noundef %138, %struct.cJSON* noundef %139, i32 noundef %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %186

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.cJSON*, %struct.cJSON** %10, align 8
  %147 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %146, i32 0, i32 0
  %148 = load %struct.cJSON*, %struct.cJSON** %147, align 8
  store %struct.cJSON* %148, %struct.cJSON** %10, align 8
  br label %124, !llvm.loop !36

149:                                              ; preds = %124
  %150 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %151 = icmp ne %struct.cJSON* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load %struct.cJSON*, %struct.cJSON** %6, align 8
  %154 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %153, i32 0, i32 2
  %155 = load %struct.cJSON*, %struct.cJSON** %154, align 8
  br label %157

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %152
  %158 = phi %struct.cJSON* [ %155, %152 ], [ null, %156 ]
  store %struct.cJSON* %158, %struct.cJSON** %11, align 8
  br label %159

159:                                              ; preds = %180, %157
  %160 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  %161 = icmp ne %struct.cJSON* %160, null
  br i1 %161, label %162, label %184

162:                                              ; preds = %159
  %163 = load %struct.cJSON*, %struct.cJSON** %5, align 8
  %164 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  %165 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %164, i32 0, i32 7
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call %struct.cJSON* @get_object_item(%struct.cJSON* noundef %163, i8* noundef %166, i32 noundef %167)
  store %struct.cJSON* %168, %struct.cJSON** %10, align 8
  %169 = load %struct.cJSON*, %struct.cJSON** %10, align 8
  %170 = icmp eq %struct.cJSON* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %186

172:                                              ; preds = %162
  %173 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  %174 = load %struct.cJSON*, %struct.cJSON** %10, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @cJSON_Compare(%struct.cJSON* noundef %173, %struct.cJSON* noundef %174, i32 noundef %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %172
  store i32 0, i32* %4, align 4
  br label %186

179:                                              ; preds = %172
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.cJSON*, %struct.cJSON** %11, align 8
  %182 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %181, i32 0, i32 0
  %183 = load %struct.cJSON*, %struct.cJSON** %182, align 8
  store %struct.cJSON* %183, %struct.cJSON** %11, align 8
  br label %159, !llvm.loop !37

184:                                              ; preds = %159
  store i32 1, i32* %4, align 4
  br label %186

185:                                              ; preds = %40
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %184, %178, %171, %143, %136, %113, %112, %100, %78, %77, %67, %56, %55, %45, %39, %34, %27
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cJSON_malloc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i8* (i64)*, i8* (i64)** getelementptr inbounds (%struct.internal_hooks, %struct.internal_hooks* @global_hooks, i32 0, i32 0), align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i8* %3(i64 noundef %4)
  ret i8* %5
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { readnone }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"clang version 14.0.0"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
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
