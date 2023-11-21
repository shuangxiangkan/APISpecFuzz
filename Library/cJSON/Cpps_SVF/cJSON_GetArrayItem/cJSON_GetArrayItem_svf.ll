; ModuleID = '/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF/cJSON_GetArrayItem/cJSON_GetArrayItem_svf.c'
source_filename = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF/cJSON_GetArrayItem/cJSON_GetArrayItem_svf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cJSON = type { %struct.cJSON*, %struct.cJSON*, %struct.cJSON*, i32, i8*, i32, double, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cJSON*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cJSON*, align 8
  store i32 0, i32* %1, align 4
  %5 = call %struct.cJSON* @cJSON_CreateObject()
  store %struct.cJSON* %5, %struct.cJSON** %2, align 8
  store i32 123, i32* %3, align 4
  %6 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.cJSON* @cJSON_GetArrayItem(%struct.cJSON* noundef %6, i32 noundef %7)
  store %struct.cJSON* %8, %struct.cJSON** %4, align 8
  %9 = load %struct.cJSON*, %struct.cJSON** %4, align 8
  %10 = bitcast %struct.cJSON* %9 to i8*
  %11 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  %12 = bitcast %struct.cJSON* %11 to i8*
  call void @MAYALIAS(i8* noundef %10, i8* noundef %12)
  %13 = load %struct.cJSON*, %struct.cJSON** %2, align 8
  call void @cJSON_Delete(%struct.cJSON* noundef %13)
  ret i32 0
}

declare dso_local %struct.cJSON* @cJSON_CreateObject() #1

declare dso_local %struct.cJSON* @cJSON_GetArrayItem(%struct.cJSON* noundef, i32 noundef) #1

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
