; ModuleID = 'cJSON_specifications.c'
source_filename = "cJSON_specifications.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cJSON = type { %struct.cJSON*, %struct.cJSON*, %struct.cJSON*, i32, i8*, i32, double, i8* }

@.str = private unnamed_addr constant [10 x i8] c"ALLOC_RET\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [23 x i8] c"cJSON_specifications.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (%struct.cJSON* ()* @cJSON_CreateObject to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 7, i8* null }], section "llvm.metadata"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.cJSON* @cJSON_CreateObject() #0 {
  %1 = tail call dereferenceable_or_null(10) i8* @malloc(i64 noundef 10)
  %2 = bitcast i8* %1 to %struct.cJSON*
  ret %struct.cJSON* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @cJSON_AddItemToObjectCS(%struct.cJSON* nocapture noundef writeonly %0, i8* noundef %1, %struct.cJSON* nocapture noundef readnone %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  %5 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %5, align 8, !tbaa !10
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.cJSON* @cJSON_ParseWithOpts(i8* nocapture noundef readnone %0, i8** nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #3 {
  ret %struct.cJSON* null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.cJSON* @cJSON_AddBoolToObject(%struct.cJSON* noundef readnone returned %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #3 {
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cJSON_Compare(%struct.cJSON* nocapture noundef readnone %0, %struct.cJSON* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #3 {
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.cJSON* @cJSON_CreateArrayReference(%struct.cJSON* noundef readnone returned %0) local_unnamed_addr #3 {
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.cJSON* @cJSON_AddNumberToObject(%struct.cJSON* noundef readnone returned %0, i8* nocapture noundef readnone %1, double noundef %2) local_unnamed_addr #3 {
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.cJSON* @cJSON_DetachItemFromArray(%struct.cJSON* noundef readnone returned %0, i32 noundef %1) local_unnamed_addr #3 {
  ret %struct.cJSON* %0
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cJSON* @cJSON_CreateStringReference(i8* noundef %0) local_unnamed_addr #4 {
  %2 = tail call i32 (...) @cJSON_Createobject() #7
  %3 = sext i32 %2 to i64
  %4 = inttoptr i64 %3 to %struct.cJSON*
  %5 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %4, i64 0, i32 7
  store i8* %0, i8** %5, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %4, i64 0, i32 4
  store i8* %0, i8** %6, align 8, !tbaa !3
  ret %struct.cJSON* %4
}

declare dso_local i32 @cJSON_Createobject(...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.cJSON* @cJSON_DetachItemFromObjectCaseSensitive(%struct.cJSON* noundef returned writeonly %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %3, align 8, !tbaa !10
  %4 = ptrtoint i8* %1 to i64
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 5
  store i32 %5, i32* %6, align 8, !tbaa !11
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.cJSON* @cJSON_GetArrayItem(%struct.cJSON* noundef readnone returned %0, i32 noundef %1) local_unnamed_addr #3 {
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.cJSON* @cJSON_Duplicate(%struct.cJSON* noundef readnone returned %0, i32 noundef %1) local_unnamed_addr #3 {
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @cJSON_DeleteItemFromObjectCaseSensitive(%struct.cJSON* nocapture noundef writeonly %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %3, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.cJSON* @cJSON_AddFalseToObject(%struct.cJSON* noundef returned writeonly %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %3, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cJSON_HasObjectItem(%struct.cJSON* nocapture noundef readnone %0, i8* nocapture noundef readnone %1) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.cJSON* @cJSON_DetachItemFromObject(%struct.cJSON* noundef returned writeonly %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %3, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cJSON_ReplaceItemInObject(%struct.cJSON* nocapture noundef readnone %0, i8* nocapture noundef readnone %1, %struct.cJSON* nocapture noundef readnone %2) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.cJSON* @cJSON_AddRawToObject(%struct.cJSON* noundef returned writeonly %0, i8* noundef %1, i8* nocapture noundef readnone %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  %5 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %5, align 8, !tbaa !10
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.cJSON* @cJSON_DetachItemViaPointer(%struct.cJSON* noundef readnone returned %0, %struct.cJSON* nocapture noundef readnone %1) local_unnamed_addr #3 {
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @cJSON_DeleteItemFromObject(%struct.cJSON* nocapture noundef writeonly %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %3, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.cJSON* @cJSON_ParseWithLengthOpts(i8* nocapture noundef readnone %0, i64 noundef %1, i8** nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #3 {
  ret %struct.cJSON* null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @cJSON_PrintBuffered(%struct.cJSON* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  %5 = load i8*, i8** %4, align 8, !tbaa !10
  ret i8* %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cJSON_ReplaceItemInArray(%struct.cJSON* nocapture noundef readnone %0, i32 noundef %1, %struct.cJSON* nocapture noundef readnone %2) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.cJSON* @cJSON_GetObjectItem(%struct.cJSON* noundef readnone returned %0, i8* nocapture noundef readnone %1) local_unnamed_addr #3 {
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cJSON_InsertItemInArray(%struct.cJSON* nocapture noundef readnone %0, i32 noundef %1, %struct.cJSON* nocapture noundef readnone %2) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.cJSON* @cJSON_AddArrayToObject(%struct.cJSON* noundef returned writeonly %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %3, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @cJSON_AddItemToObject(%struct.cJSON* nocapture noundef writeonly %0, i8* noundef %1, %struct.cJSON* nocapture noundef readnone %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  %5 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %5, align 8, !tbaa !10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.cJSON* @cJSON_AddObjectToObject(%struct.cJSON* noundef returned writeonly %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %3, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.cJSON* @cJSON_CreateObjectReference(%struct.cJSON* noundef readnone returned %0) local_unnamed_addr #3 {
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.cJSON* @cJSON_GetObjectItemCaseSensitive(%struct.cJSON* noundef readnone returned %0, i8* nocapture noundef readnone %1) local_unnamed_addr #3 {
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @cJSON_GetStringValue(%struct.cJSON* nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  %3 = load i8*, i8** %2, align 8, !tbaa !3
  ret i8* %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cJSON_ReplaceItemViaPointer(%struct.cJSON* nocapture noundef readnone %0, %struct.cJSON* nocapture noundef readnone %1, %struct.cJSON* nocapture noundef readnone %2) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.cJSON* @cJSON_AddNullToObject(%struct.cJSON* noundef returned writeonly %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %3, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @cJSON_AddItemReferenceToObject(%struct.cJSON* nocapture noundef writeonly %0, i8* noundef %1, %struct.cJSON* nocapture noundef readnone %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  %5 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %5, align 8, !tbaa !10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cJSON_AddItemReferenceToArray(%struct.cJSON* nocapture noundef readnone %0, %struct.cJSON* nocapture noundef readnone %1) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.cJSON* @cJSON_AddTrueToObject(%struct.cJSON* noundef returned writeonly %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %3, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  ret %struct.cJSON* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cJSON_ReplaceItemInObjectCaseSensitive(%struct.cJSON* nocapture noundef readnone %0, i8* nocapture noundef readnone %1, %struct.cJSON* nocapture noundef readnone %2) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cJSON_AddItemToArray(%struct.cJSON* nocapture noundef readnone %0, %struct.cJSON* nocapture noundef readnone %1) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i8* @cJSON_SetValuestring(%struct.cJSON* nocapture noundef writeonly %0, i8* noundef returned %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 7
  store i8* %1, i8** %3, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.cJSON, %struct.cJSON* %0, i64 0, i32 4
  store i8* %1, i8** %4, align 8, !tbaa !3
  ret i8* %1
}

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 32}
!4 = !{!"cJSON", !5, i64 0, !5, i64 8, !5, i64 16, !8, i64 24, !5, i64 32, !8, i64 40, !9, i64 48, !5, i64 56}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!4, !5, i64 56}
!11 = !{!4, !8, i64 40}
