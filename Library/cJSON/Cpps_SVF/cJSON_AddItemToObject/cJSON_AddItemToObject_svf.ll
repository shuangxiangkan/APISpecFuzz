; ModuleID = '/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF/cJSON_AddItemToObject/cJSON_AddItemToObject_svf.c'
source_filename = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF/cJSON_AddItemToObject/cJSON_AddItemToObject_svf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cJSON = type { %struct.cJSON*, %struct.cJSON*, %struct.cJSON*, i32, i8*, i32, double, i8* }

@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cJSON*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cJSON*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call %struct.cJSON* @cJSON_CreateObject()
  store %struct.cJSON* %6, %struct.cJSON** %2, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %7 = call %struct.cJSON* @cJSON_CreateObject()
  store %struct.cJSON* %7, %struct.cJSON** %4, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %11 = call i32 @cJSON_AddItemToObject(%struct.cJSON* noundef %8, i8* noundef %9, %struct.cJSON* noundef %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %13 = bitcast %struct.cJSON* %12 to i8*
  %14 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %15 = bitcast %struct.cJSON* %14 to i8*
  call void @MAYALIAS(i8* noundef %13, i8* noundef %15)
  %16 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %17 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %16, i32 0, i32 7
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %3, align 8
  call void @MAYALIAS(i8* noundef %18, i8* noundef %19)
  %20 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %21 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %3, align 8
  call void @MAYALIAS(i8* noundef %22, i8* noundef %23)
  %24 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %24)
  %25 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %25)
  ret i32 0
}

declare dso_local %struct.cJSON* @cJSON_CreateObject() #1

declare dso_local i32 @cJSON_AddItemToObject(%struct.cJSON* noundef, i8* noundef, %struct.cJSON* noundef) #1

declare dso_local void @MAYALIAS(i8* noundef, i8* noundef) #1

declare dso_local void @cJSON_Delete(%struct.cJSON* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
