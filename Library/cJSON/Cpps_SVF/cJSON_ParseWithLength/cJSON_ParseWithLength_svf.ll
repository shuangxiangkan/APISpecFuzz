; ModuleID = '/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF/cJSON_ParseWithLength/cJSON_ParseWithLength_svf.c'
source_filename = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF/cJSON_ParseWithLength/cJSON_ParseWithLength_svf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cJSON = type { %struct.cJSON*, %struct.cJSON*, %struct.cJSON*, i32, i8*, i32, double, i8* }

@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cJSON*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i64 123, i64* %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call %struct.cJSON* @cJSON_ParseWithLength(i8* noundef %5, i64 noundef %6)
  store %struct.cJSON* %7, %struct.cJSON** %4, align 8
  %8 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %9 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %2, align 8
  call void @MAYALIAS(i8* noundef %10, i8* noundef %11)
  %12 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %13 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %12, i32 0, i32 7
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %2, align 8
  call void @MAYALIAS(i8* noundef %14, i8* noundef %15)
  ret i32 0
}

declare dso_local %struct.cJSON* @cJSON_ParseWithLength(i8* noundef, i64 noundef) #1

declare dso_local void @MAYALIAS(i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
