; ModuleID = '/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF/cJSON_CreateFloatArray/cJSON_CreateFloatArray_svf.c'
source_filename = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF/cJSON_CreateFloatArray/cJSON_CreateFloatArray_svf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cJSON = type { %struct.cJSON*, %struct.cJSON*, %struct.cJSON*, i32, i8*, i32, double, i8* }

@.str = private unnamed_addr constant [7 x i8] c"123.12\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  store i32 0, i32* %1, align 4
  store float* bitcast ([7 x i8]* @.str to float*), float** %2, align 8
  store i32 123, i32* %3, align 4
  %5 = load float*, float** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.cJSON* @cJSON_CreateFloatArray(float* noundef %5, i32 noundef %6)
  store %struct.cJSON* %7, %struct.cJSON** %4, align 8
  ret i32 0
}

declare dso_local %struct.cJSON* @cJSON_CreateFloatArray(float* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
