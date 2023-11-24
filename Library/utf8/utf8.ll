; ModuleID = 'utf8.c'
source_filename = "utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i32 @utf8casecmp(i8* noundef nonnull %src1, i8* noundef nonnull %src2) #0 {
entry:
  %retval = alloca i32, align 4
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %src1_lwr_cp = alloca i32, align 4
  %src2_lwr_cp = alloca i32, align 4
  %src1_upr_cp = alloca i32, align 4
  %src2_upr_cp = alloca i32, align 4
  %src1_orig_cp = alloca i32, align 4
  %src2_orig_cp = alloca i32, align 4
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  store i32 0, i32* %src1_lwr_cp, align 4
  store i32 0, i32* %src2_lwr_cp, align 4
  store i32 0, i32* %src1_upr_cp, align 4
  store i32 0, i32* %src2_upr_cp, align 4
  store i32 0, i32* %src1_orig_cp, align 4
  store i32 0, i32* %src2_orig_cp, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.then9, %entry
  %0 = load i8*, i8** %src1.addr, align 8
  %call = call i8* @utf8codepoint(i8* noundef %0, i32* noundef %src1_orig_cp)
  store i8* %call, i8** %src1.addr, align 8
  %1 = load i8*, i8** %src2.addr, align 8
  %call1 = call i8* @utf8codepoint(i8* noundef %1, i32* noundef %src2_orig_cp)
  store i8* %call1, i8** %src2.addr, align 8
  %2 = load i32, i32* %src1_orig_cp, align 4
  %call2 = call i32 @utf8lwrcodepoint(i32 noundef %2)
  store i32 %call2, i32* %src1_lwr_cp, align 4
  %3 = load i32, i32* %src2_orig_cp, align 4
  %call3 = call i32 @utf8lwrcodepoint(i32 noundef %3)
  store i32 %call3, i32* %src2_lwr_cp, align 4
  %4 = load i32, i32* %src1_orig_cp, align 4
  %call4 = call i32 @utf8uprcodepoint(i32 noundef %4)
  store i32 %call4, i32* %src1_upr_cp, align 4
  %5 = load i32, i32* %src2_orig_cp, align 4
  %call5 = call i32 @utf8uprcodepoint(i32 noundef %5)
  store i32 %call5, i32* %src2_upr_cp, align 4
  %6 = load i32, i32* %src1_orig_cp, align 4
  %cmp = icmp eq i32 0, %6
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.cond
  %7 = load i32, i32* %src2_orig_cp, align 4
  %cmp6 = icmp eq i32 0, %7
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %for.cond
  %8 = load i32, i32* %src1_lwr_cp, align 4
  %9 = load i32, i32* %src2_lwr_cp, align 4
  %cmp7 = icmp eq i32 %8, %9
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %10 = load i32, i32* %src1_upr_cp, align 4
  %11 = load i32, i32* %src2_upr_cp, align 4
  %cmp8 = icmp eq i32 %10, %11
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %lor.lhs.false, %if.else
  br label %for.cond

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end10

if.end10:                                         ; preds = %if.end
  %12 = load i32, i32* %src1_lwr_cp, align 4
  %13 = load i32, i32* %src2_lwr_cp, align 4
  %sub = sub nsw i32 %12, %13
  store i32 %sub, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8codepoint(i8* noalias noundef nonnull %str, i32* noalias noundef nonnull %out_codepoint) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %out_codepoint.addr = alloca i32*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32* %out_codepoint, i32** %out_codepoint.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %and = and i32 248, %conv
  %cmp = icmp eq i32 240, %and
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %and4 = and i32 7, %conv3
  %shl = shl i32 %and4, 18
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %and7 = and i32 63, %conv6
  %shl8 = shl i32 %and7, 12
  %or = or i32 %shl, %shl8
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %7 to i32
  %and11 = and i32 63, %conv10
  %shl12 = shl i32 %and11, 6
  %or13 = or i32 %or, %shl12
  %8 = load i8*, i8** %str.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %8, i64 3
  %9 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %9 to i32
  %and16 = and i32 63, %conv15
  %or17 = or i32 %or13, %and16
  %10 = load i32*, i32** %out_codepoint.addr, align 8
  store i32 %or17, i32* %10, align 4
  %11 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 4
  store i8* %add.ptr, i8** %str.addr, align 8
  br label %if.end59

if.else:                                          ; preds = %entry
  %12 = load i8*, i8** %str.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %13 to i32
  %and20 = and i32 240, %conv19
  %cmp21 = icmp eq i32 224, %and20
  br i1 %cmp21, label %if.then23, label %if.else38

if.then23:                                        ; preds = %if.else
  %14 = load i8*, i8** %str.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %15 to i32
  %and26 = and i32 15, %conv25
  %shl27 = shl i32 %and26, 12
  %16 = load i8*, i8** %str.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %17 to i32
  %and30 = and i32 63, %conv29
  %shl31 = shl i32 %and30, 6
  %or32 = or i32 %shl27, %shl31
  %18 = load i8*, i8** %str.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %19 to i32
  %and35 = and i32 63, %conv34
  %or36 = or i32 %or32, %and35
  %20 = load i32*, i32** %out_codepoint.addr, align 8
  store i32 %or36, i32* %20, align 4
  %21 = load i8*, i8** %str.addr, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %21, i64 3
  store i8* %add.ptr37, i8** %str.addr, align 8
  br label %if.end58

if.else38:                                        ; preds = %if.else
  %22 = load i8*, i8** %str.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %23 to i32
  %and41 = and i32 224, %conv40
  %cmp42 = icmp eq i32 192, %and41
  br i1 %cmp42, label %if.then44, label %if.else54

if.then44:                                        ; preds = %if.else38
  %24 = load i8*, i8** %str.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %25 to i32
  %and47 = and i32 31, %conv46
  %shl48 = shl i32 %and47, 6
  %26 = load i8*, i8** %str.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %27 to i32
  %and51 = and i32 63, %conv50
  %or52 = or i32 %shl48, %and51
  %28 = load i32*, i32** %out_codepoint.addr, align 8
  store i32 %or52, i32* %28, align 4
  %29 = load i8*, i8** %str.addr, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %add.ptr53, i8** %str.addr, align 8
  br label %if.end

if.else54:                                        ; preds = %if.else38
  %30 = load i8*, i8** %str.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %31 to i32
  %32 = load i32*, i32** %out_codepoint.addr, align 8
  store i32 %conv56, i32* %32, align 4
  %33 = load i8*, i8** %str.addr, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %add.ptr57, i8** %str.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else54, %if.then44
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then23
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then
  %34 = load i8*, i8** %str.addr, align 8
  ret i8* %34
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i32 @utf8lwrcodepoint(i32 noundef %cp) #1 {
entry:
  %cp.addr = alloca i32, align 4
  store i32 %cp, i32* %cp.addr, align 4
  %0 = load i32, i32* %cp.addr, align 4
  %cmp = icmp sle i32 65, %0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %cp.addr, align 4
  %cmp1 = icmp sge i32 90, %1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %cp.addr, align 4
  %cmp2 = icmp sle i32 192, %2
  br i1 %cmp2, label %land.lhs.true3, label %lor.lhs.false5

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %cp.addr, align 4
  %cmp4 = icmp sge i32 214, %3
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %land.lhs.true3, %lor.lhs.false
  %4 = load i32, i32* %cp.addr, align 4
  %cmp6 = icmp sle i32 216, %4
  br i1 %cmp6, label %land.lhs.true7, label %lor.lhs.false9

land.lhs.true7:                                   ; preds = %lor.lhs.false5
  %5 = load i32, i32* %cp.addr, align 4
  %cmp8 = icmp sge i32 222, %5
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true7, %lor.lhs.false5
  %6 = load i32, i32* %cp.addr, align 4
  %cmp10 = icmp sle i32 913, %6
  br i1 %cmp10, label %land.lhs.true11, label %lor.lhs.false13

land.lhs.true11:                                  ; preds = %lor.lhs.false9
  %7 = load i32, i32* %cp.addr, align 4
  %cmp12 = icmp sge i32 929, %7
  br i1 %cmp12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true11, %lor.lhs.false9
  %8 = load i32, i32* %cp.addr, align 4
  %cmp14 = icmp sle i32 931, %8
  br i1 %cmp14, label %land.lhs.true15, label %lor.lhs.false17

land.lhs.true15:                                  ; preds = %lor.lhs.false13
  %9 = load i32, i32* %cp.addr, align 4
  %cmp16 = icmp sge i32 939, %9
  br i1 %cmp16, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %land.lhs.true15, %lor.lhs.false13
  %10 = load i32, i32* %cp.addr, align 4
  %cmp18 = icmp sle i32 1040, %10
  br i1 %cmp18, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %lor.lhs.false17
  %11 = load i32, i32* %cp.addr, align 4
  %cmp20 = icmp sge i32 1071, %11
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true19, %land.lhs.true15, %land.lhs.true11, %land.lhs.true7, %land.lhs.true3, %land.lhs.true
  %12 = load i32, i32* %cp.addr, align 4
  %add = add nsw i32 %12, 32
  store i32 %add, i32* %cp.addr, align 4
  br label %if.end141

if.else:                                          ; preds = %land.lhs.true19, %lor.lhs.false17
  %13 = load i32, i32* %cp.addr, align 4
  %cmp21 = icmp sle i32 1024, %13
  br i1 %cmp21, label %land.lhs.true22, label %if.else26

land.lhs.true22:                                  ; preds = %if.else
  %14 = load i32, i32* %cp.addr, align 4
  %cmp23 = icmp sge i32 1039, %14
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %land.lhs.true22
  %15 = load i32, i32* %cp.addr, align 4
  %add25 = add nsw i32 %15, 80
  store i32 %add25, i32* %cp.addr, align 4
  br label %if.end140

if.else26:                                        ; preds = %land.lhs.true22, %if.else
  %16 = load i32, i32* %cp.addr, align 4
  %cmp27 = icmp sle i32 256, %16
  br i1 %cmp27, label %land.lhs.true28, label %lor.lhs.false30

land.lhs.true28:                                  ; preds = %if.else26
  %17 = load i32, i32* %cp.addr, align 4
  %cmp29 = icmp sge i32 303, %17
  br i1 %cmp29, label %if.then74, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true28, %if.else26
  %18 = load i32, i32* %cp.addr, align 4
  %cmp31 = icmp sle i32 306, %18
  br i1 %cmp31, label %land.lhs.true32, label %lor.lhs.false34

land.lhs.true32:                                  ; preds = %lor.lhs.false30
  %19 = load i32, i32* %cp.addr, align 4
  %cmp33 = icmp sge i32 311, %19
  br i1 %cmp33, label %if.then74, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true32, %lor.lhs.false30
  %20 = load i32, i32* %cp.addr, align 4
  %cmp35 = icmp sle i32 330, %20
  br i1 %cmp35, label %land.lhs.true36, label %lor.lhs.false38

land.lhs.true36:                                  ; preds = %lor.lhs.false34
  %21 = load i32, i32* %cp.addr, align 4
  %cmp37 = icmp sge i32 375, %21
  br i1 %cmp37, label %if.then74, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %land.lhs.true36, %lor.lhs.false34
  %22 = load i32, i32* %cp.addr, align 4
  %cmp39 = icmp sle i32 386, %22
  br i1 %cmp39, label %land.lhs.true40, label %lor.lhs.false42

land.lhs.true40:                                  ; preds = %lor.lhs.false38
  %23 = load i32, i32* %cp.addr, align 4
  %cmp41 = icmp sge i32 389, %23
  br i1 %cmp41, label %if.then74, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true40, %lor.lhs.false38
  %24 = load i32, i32* %cp.addr, align 4
  %cmp43 = icmp sle i32 416, %24
  br i1 %cmp43, label %land.lhs.true44, label %lor.lhs.false46

land.lhs.true44:                                  ; preds = %lor.lhs.false42
  %25 = load i32, i32* %cp.addr, align 4
  %cmp45 = icmp sge i32 421, %25
  br i1 %cmp45, label %if.then74, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %land.lhs.true44, %lor.lhs.false42
  %26 = load i32, i32* %cp.addr, align 4
  %cmp47 = icmp sle i32 478, %26
  br i1 %cmp47, label %land.lhs.true48, label %lor.lhs.false50

land.lhs.true48:                                  ; preds = %lor.lhs.false46
  %27 = load i32, i32* %cp.addr, align 4
  %cmp49 = icmp sge i32 495, %27
  br i1 %cmp49, label %if.then74, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %land.lhs.true48, %lor.lhs.false46
  %28 = load i32, i32* %cp.addr, align 4
  %cmp51 = icmp sle i32 504, %28
  br i1 %cmp51, label %land.lhs.true52, label %lor.lhs.false54

land.lhs.true52:                                  ; preds = %lor.lhs.false50
  %29 = load i32, i32* %cp.addr, align 4
  %cmp53 = icmp sge i32 543, %29
  br i1 %cmp53, label %if.then74, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %land.lhs.true52, %lor.lhs.false50
  %30 = load i32, i32* %cp.addr, align 4
  %cmp55 = icmp sle i32 546, %30
  br i1 %cmp55, label %land.lhs.true56, label %lor.lhs.false58

land.lhs.true56:                                  ; preds = %lor.lhs.false54
  %31 = load i32, i32* %cp.addr, align 4
  %cmp57 = icmp sge i32 563, %31
  br i1 %cmp57, label %if.then74, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %land.lhs.true56, %lor.lhs.false54
  %32 = load i32, i32* %cp.addr, align 4
  %cmp59 = icmp sle i32 582, %32
  br i1 %cmp59, label %land.lhs.true60, label %lor.lhs.false62

land.lhs.true60:                                  ; preds = %lor.lhs.false58
  %33 = load i32, i32* %cp.addr, align 4
  %cmp61 = icmp sge i32 591, %33
  br i1 %cmp61, label %if.then74, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %land.lhs.true60, %lor.lhs.false58
  %34 = load i32, i32* %cp.addr, align 4
  %cmp63 = icmp sle i32 984, %34
  br i1 %cmp63, label %land.lhs.true64, label %lor.lhs.false66

land.lhs.true64:                                  ; preds = %lor.lhs.false62
  %35 = load i32, i32* %cp.addr, align 4
  %cmp65 = icmp sge i32 1007, %35
  br i1 %cmp65, label %if.then74, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %land.lhs.true64, %lor.lhs.false62
  %36 = load i32, i32* %cp.addr, align 4
  %cmp67 = icmp sle i32 1120, %36
  br i1 %cmp67, label %land.lhs.true68, label %lor.lhs.false70

land.lhs.true68:                                  ; preds = %lor.lhs.false66
  %37 = load i32, i32* %cp.addr, align 4
  %cmp69 = icmp sge i32 1153, %37
  br i1 %cmp69, label %if.then74, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %land.lhs.true68, %lor.lhs.false66
  %38 = load i32, i32* %cp.addr, align 4
  %cmp71 = icmp sle i32 1162, %38
  br i1 %cmp71, label %land.lhs.true72, label %if.else75

land.lhs.true72:                                  ; preds = %lor.lhs.false70
  %39 = load i32, i32* %cp.addr, align 4
  %cmp73 = icmp sge i32 1279, %39
  br i1 %cmp73, label %if.then74, label %if.else75

if.then74:                                        ; preds = %land.lhs.true72, %land.lhs.true68, %land.lhs.true64, %land.lhs.true60, %land.lhs.true56, %land.lhs.true52, %land.lhs.true48, %land.lhs.true44, %land.lhs.true40, %land.lhs.true36, %land.lhs.true32, %land.lhs.true28
  %40 = load i32, i32* %cp.addr, align 4
  %or = or i32 %40, 1
  store i32 %or, i32* %cp.addr, align 4
  br label %if.end139

if.else75:                                        ; preds = %land.lhs.true72, %lor.lhs.false70
  %41 = load i32, i32* %cp.addr, align 4
  %cmp76 = icmp sle i32 313, %41
  br i1 %cmp76, label %land.lhs.true77, label %lor.lhs.false79

land.lhs.true77:                                  ; preds = %if.else75
  %42 = load i32, i32* %cp.addr, align 4
  %cmp78 = icmp sge i32 328, %42
  br i1 %cmp78, label %if.then95, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %land.lhs.true77, %if.else75
  %43 = load i32, i32* %cp.addr, align 4
  %cmp80 = icmp sle i32 377, %43
  br i1 %cmp80, label %land.lhs.true81, label %lor.lhs.false83

land.lhs.true81:                                  ; preds = %lor.lhs.false79
  %44 = load i32, i32* %cp.addr, align 4
  %cmp82 = icmp sge i32 382, %44
  br i1 %cmp82, label %if.then95, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %land.lhs.true81, %lor.lhs.false79
  %45 = load i32, i32* %cp.addr, align 4
  %cmp84 = icmp sle i32 431, %45
  br i1 %cmp84, label %land.lhs.true85, label %lor.lhs.false87

land.lhs.true85:                                  ; preds = %lor.lhs.false83
  %46 = load i32, i32* %cp.addr, align 4
  %cmp86 = icmp sge i32 432, %46
  br i1 %cmp86, label %if.then95, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %land.lhs.true85, %lor.lhs.false83
  %47 = load i32, i32* %cp.addr, align 4
  %cmp88 = icmp sle i32 435, %47
  br i1 %cmp88, label %land.lhs.true89, label %lor.lhs.false91

land.lhs.true89:                                  ; preds = %lor.lhs.false87
  %48 = load i32, i32* %cp.addr, align 4
  %cmp90 = icmp sge i32 438, %48
  br i1 %cmp90, label %if.then95, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %land.lhs.true89, %lor.lhs.false87
  %49 = load i32, i32* %cp.addr, align 4
  %cmp92 = icmp sle i32 461, %49
  br i1 %cmp92, label %land.lhs.true93, label %if.else97

land.lhs.true93:                                  ; preds = %lor.lhs.false91
  %50 = load i32, i32* %cp.addr, align 4
  %cmp94 = icmp sge i32 476, %50
  br i1 %cmp94, label %if.then95, label %if.else97

if.then95:                                        ; preds = %land.lhs.true93, %land.lhs.true89, %land.lhs.true85, %land.lhs.true81, %land.lhs.true77
  %51 = load i32, i32* %cp.addr, align 4
  %add96 = add nsw i32 %51, 1
  store i32 %add96, i32* %cp.addr, align 4
  %52 = load i32, i32* %cp.addr, align 4
  %and = and i32 %52, -2
  store i32 %and, i32* %cp.addr, align 4
  br label %if.end

if.else97:                                        ; preds = %land.lhs.true93, %lor.lhs.false91
  %53 = load i32, i32* %cp.addr, align 4
  switch i32 %53, label %sw.default [
    i32 376, label %sw.bb
    i32 579, label %sw.bb98
    i32 398, label %sw.bb99
    i32 573, label %sw.bb100
    i32 544, label %sw.bb101
    i32 439, label %sw.bb102
    i32 452, label %sw.bb103
    i32 455, label %sw.bb104
    i32 458, label %sw.bb105
    i32 497, label %sw.bb106
    i32 503, label %sw.bb107
    i32 391, label %sw.bb108
    i32 395, label %sw.bb109
    i32 401, label %sw.bb110
    i32 408, label %sw.bb111
    i32 423, label %sw.bb112
    i32 428, label %sw.bb113
    i32 431, label %sw.bb114
    i32 440, label %sw.bb115
    i32 444, label %sw.bb116
    i32 500, label %sw.bb117
    i32 571, label %sw.bb118
    i32 577, label %sw.bb119
    i32 1021, label %sw.bb120
    i32 1022, label %sw.bb121
    i32 1023, label %sw.bb122
    i32 895, label %sw.bb123
    i32 902, label %sw.bb124
    i32 904, label %sw.bb125
    i32 905, label %sw.bb126
    i32 906, label %sw.bb127
    i32 908, label %sw.bb128
    i32 910, label %sw.bb129
    i32 911, label %sw.bb130
    i32 880, label %sw.bb131
    i32 882, label %sw.bb132
    i32 886, label %sw.bb133
    i32 1012, label %sw.bb134
    i32 975, label %sw.bb135
    i32 1017, label %sw.bb136
    i32 1015, label %sw.bb137
    i32 1018, label %sw.bb138
  ]

sw.default:                                       ; preds = %if.else97
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else97
  store i32 255, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.else97
  store i32 384, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.else97
  store i32 477, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.else97
  store i32 410, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.else97
  store i32 414, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.else97
  store i32 658, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.else97
  store i32 454, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.else97
  store i32 457, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.else97
  store i32 460, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.else97
  store i32 499, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb107:                                         ; preds = %if.else97
  store i32 447, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.else97
  store i32 392, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.else97
  store i32 396, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.else97
  store i32 402, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.else97
  store i32 409, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.else97
  store i32 424, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.else97
  store i32 429, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb114:                                         ; preds = %if.else97
  store i32 432, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.else97
  store i32 441, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.else97
  store i32 445, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb117:                                         ; preds = %if.else97
  store i32 501, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.else97
  store i32 572, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.else97
  store i32 578, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.else97
  store i32 891, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb121:                                         ; preds = %if.else97
  store i32 892, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.else97
  store i32 893, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb123:                                         ; preds = %if.else97
  store i32 1011, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.else97
  store i32 940, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb125:                                         ; preds = %if.else97
  store i32 941, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb126:                                         ; preds = %if.else97
  store i32 942, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.else97
  store i32 943, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.else97
  store i32 972, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.else97
  store i32 973, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.else97
  store i32 974, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.else97
  store i32 881, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb132:                                         ; preds = %if.else97
  store i32 883, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.else97
  store i32 887, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.else97
  store i32 952, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.else97
  store i32 983, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.else97
  store i32 1010, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb137:                                         ; preds = %if.else97
  store i32 1016, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.else97
  store i32 1019, i32* %cp.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb138, %sw.bb137, %sw.bb136, %sw.bb135, %sw.bb134, %sw.bb133, %sw.bb132, %sw.bb131, %sw.bb130, %sw.bb129, %sw.bb128, %sw.bb127, %sw.bb126, %sw.bb125, %sw.bb124, %sw.bb123, %sw.bb122, %sw.bb121, %sw.bb120, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109, %sw.bb108, %sw.bb107, %sw.bb106, %sw.bb105, %sw.bb104, %sw.bb103, %sw.bb102, %sw.bb101, %sw.bb100, %sw.bb99, %sw.bb98, %sw.bb, %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then95
  br label %if.end139

if.end139:                                        ; preds = %if.end, %if.then74
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.then24
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then
  %54 = load i32, i32* %cp.addr, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i32 @utf8uprcodepoint(i32 noundef %cp) #1 {
entry:
  %cp.addr = alloca i32, align 4
  store i32 %cp, i32* %cp.addr, align 4
  %0 = load i32, i32* %cp.addr, align 4
  %cmp = icmp sle i32 97, %0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %cp.addr, align 4
  %cmp1 = icmp sge i32 122, %1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %cp.addr, align 4
  %cmp2 = icmp sle i32 224, %2
  br i1 %cmp2, label %land.lhs.true3, label %lor.lhs.false5

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %cp.addr, align 4
  %cmp4 = icmp sge i32 246, %3
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %land.lhs.true3, %lor.lhs.false
  %4 = load i32, i32* %cp.addr, align 4
  %cmp6 = icmp sle i32 248, %4
  br i1 %cmp6, label %land.lhs.true7, label %lor.lhs.false9

land.lhs.true7:                                   ; preds = %lor.lhs.false5
  %5 = load i32, i32* %cp.addr, align 4
  %cmp8 = icmp sge i32 254, %5
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true7, %lor.lhs.false5
  %6 = load i32, i32* %cp.addr, align 4
  %cmp10 = icmp sle i32 945, %6
  br i1 %cmp10, label %land.lhs.true11, label %lor.lhs.false13

land.lhs.true11:                                  ; preds = %lor.lhs.false9
  %7 = load i32, i32* %cp.addr, align 4
  %cmp12 = icmp sge i32 961, %7
  br i1 %cmp12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true11, %lor.lhs.false9
  %8 = load i32, i32* %cp.addr, align 4
  %cmp14 = icmp sle i32 963, %8
  br i1 %cmp14, label %land.lhs.true15, label %lor.lhs.false17

land.lhs.true15:                                  ; preds = %lor.lhs.false13
  %9 = load i32, i32* %cp.addr, align 4
  %cmp16 = icmp sge i32 971, %9
  br i1 %cmp16, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %land.lhs.true15, %lor.lhs.false13
  %10 = load i32, i32* %cp.addr, align 4
  %cmp18 = icmp sle i32 1072, %10
  br i1 %cmp18, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %lor.lhs.false17
  %11 = load i32, i32* %cp.addr, align 4
  %cmp20 = icmp sge i32 1103, %11
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true19, %land.lhs.true15, %land.lhs.true11, %land.lhs.true7, %land.lhs.true3, %land.lhs.true
  %12 = load i32, i32* %cp.addr, align 4
  %sub = sub nsw i32 %12, 32
  store i32 %sub, i32* %cp.addr, align 4
  br label %if.end141

if.else:                                          ; preds = %land.lhs.true19, %lor.lhs.false17
  %13 = load i32, i32* %cp.addr, align 4
  %cmp21 = icmp sle i32 1104, %13
  br i1 %cmp21, label %land.lhs.true22, label %if.else26

land.lhs.true22:                                  ; preds = %if.else
  %14 = load i32, i32* %cp.addr, align 4
  %cmp23 = icmp sge i32 1119, %14
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %land.lhs.true22
  %15 = load i32, i32* %cp.addr, align 4
  %sub25 = sub nsw i32 %15, 80
  store i32 %sub25, i32* %cp.addr, align 4
  br label %if.end140

if.else26:                                        ; preds = %land.lhs.true22, %if.else
  %16 = load i32, i32* %cp.addr, align 4
  %cmp27 = icmp sle i32 256, %16
  br i1 %cmp27, label %land.lhs.true28, label %lor.lhs.false30

land.lhs.true28:                                  ; preds = %if.else26
  %17 = load i32, i32* %cp.addr, align 4
  %cmp29 = icmp sge i32 303, %17
  br i1 %cmp29, label %if.then74, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true28, %if.else26
  %18 = load i32, i32* %cp.addr, align 4
  %cmp31 = icmp sle i32 306, %18
  br i1 %cmp31, label %land.lhs.true32, label %lor.lhs.false34

land.lhs.true32:                                  ; preds = %lor.lhs.false30
  %19 = load i32, i32* %cp.addr, align 4
  %cmp33 = icmp sge i32 311, %19
  br i1 %cmp33, label %if.then74, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true32, %lor.lhs.false30
  %20 = load i32, i32* %cp.addr, align 4
  %cmp35 = icmp sle i32 330, %20
  br i1 %cmp35, label %land.lhs.true36, label %lor.lhs.false38

land.lhs.true36:                                  ; preds = %lor.lhs.false34
  %21 = load i32, i32* %cp.addr, align 4
  %cmp37 = icmp sge i32 375, %21
  br i1 %cmp37, label %if.then74, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %land.lhs.true36, %lor.lhs.false34
  %22 = load i32, i32* %cp.addr, align 4
  %cmp39 = icmp sle i32 386, %22
  br i1 %cmp39, label %land.lhs.true40, label %lor.lhs.false42

land.lhs.true40:                                  ; preds = %lor.lhs.false38
  %23 = load i32, i32* %cp.addr, align 4
  %cmp41 = icmp sge i32 389, %23
  br i1 %cmp41, label %if.then74, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true40, %lor.lhs.false38
  %24 = load i32, i32* %cp.addr, align 4
  %cmp43 = icmp sle i32 416, %24
  br i1 %cmp43, label %land.lhs.true44, label %lor.lhs.false46

land.lhs.true44:                                  ; preds = %lor.lhs.false42
  %25 = load i32, i32* %cp.addr, align 4
  %cmp45 = icmp sge i32 421, %25
  br i1 %cmp45, label %if.then74, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %land.lhs.true44, %lor.lhs.false42
  %26 = load i32, i32* %cp.addr, align 4
  %cmp47 = icmp sle i32 478, %26
  br i1 %cmp47, label %land.lhs.true48, label %lor.lhs.false50

land.lhs.true48:                                  ; preds = %lor.lhs.false46
  %27 = load i32, i32* %cp.addr, align 4
  %cmp49 = icmp sge i32 495, %27
  br i1 %cmp49, label %if.then74, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %land.lhs.true48, %lor.lhs.false46
  %28 = load i32, i32* %cp.addr, align 4
  %cmp51 = icmp sle i32 504, %28
  br i1 %cmp51, label %land.lhs.true52, label %lor.lhs.false54

land.lhs.true52:                                  ; preds = %lor.lhs.false50
  %29 = load i32, i32* %cp.addr, align 4
  %cmp53 = icmp sge i32 543, %29
  br i1 %cmp53, label %if.then74, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %land.lhs.true52, %lor.lhs.false50
  %30 = load i32, i32* %cp.addr, align 4
  %cmp55 = icmp sle i32 546, %30
  br i1 %cmp55, label %land.lhs.true56, label %lor.lhs.false58

land.lhs.true56:                                  ; preds = %lor.lhs.false54
  %31 = load i32, i32* %cp.addr, align 4
  %cmp57 = icmp sge i32 563, %31
  br i1 %cmp57, label %if.then74, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %land.lhs.true56, %lor.lhs.false54
  %32 = load i32, i32* %cp.addr, align 4
  %cmp59 = icmp sle i32 582, %32
  br i1 %cmp59, label %land.lhs.true60, label %lor.lhs.false62

land.lhs.true60:                                  ; preds = %lor.lhs.false58
  %33 = load i32, i32* %cp.addr, align 4
  %cmp61 = icmp sge i32 591, %33
  br i1 %cmp61, label %if.then74, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %land.lhs.true60, %lor.lhs.false58
  %34 = load i32, i32* %cp.addr, align 4
  %cmp63 = icmp sle i32 984, %34
  br i1 %cmp63, label %land.lhs.true64, label %lor.lhs.false66

land.lhs.true64:                                  ; preds = %lor.lhs.false62
  %35 = load i32, i32* %cp.addr, align 4
  %cmp65 = icmp sge i32 1007, %35
  br i1 %cmp65, label %if.then74, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %land.lhs.true64, %lor.lhs.false62
  %36 = load i32, i32* %cp.addr, align 4
  %cmp67 = icmp sle i32 1120, %36
  br i1 %cmp67, label %land.lhs.true68, label %lor.lhs.false70

land.lhs.true68:                                  ; preds = %lor.lhs.false66
  %37 = load i32, i32* %cp.addr, align 4
  %cmp69 = icmp sge i32 1153, %37
  br i1 %cmp69, label %if.then74, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %land.lhs.true68, %lor.lhs.false66
  %38 = load i32, i32* %cp.addr, align 4
  %cmp71 = icmp sle i32 1162, %38
  br i1 %cmp71, label %land.lhs.true72, label %if.else75

land.lhs.true72:                                  ; preds = %lor.lhs.false70
  %39 = load i32, i32* %cp.addr, align 4
  %cmp73 = icmp sge i32 1279, %39
  br i1 %cmp73, label %if.then74, label %if.else75

if.then74:                                        ; preds = %land.lhs.true72, %land.lhs.true68, %land.lhs.true64, %land.lhs.true60, %land.lhs.true56, %land.lhs.true52, %land.lhs.true48, %land.lhs.true44, %land.lhs.true40, %land.lhs.true36, %land.lhs.true32, %land.lhs.true28
  %40 = load i32, i32* %cp.addr, align 4
  %and = and i32 %40, -2
  store i32 %and, i32* %cp.addr, align 4
  br label %if.end139

if.else75:                                        ; preds = %land.lhs.true72, %lor.lhs.false70
  %41 = load i32, i32* %cp.addr, align 4
  %cmp76 = icmp sle i32 313, %41
  br i1 %cmp76, label %land.lhs.true77, label %lor.lhs.false79

land.lhs.true77:                                  ; preds = %if.else75
  %42 = load i32, i32* %cp.addr, align 4
  %cmp78 = icmp sge i32 328, %42
  br i1 %cmp78, label %if.then95, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %land.lhs.true77, %if.else75
  %43 = load i32, i32* %cp.addr, align 4
  %cmp80 = icmp sle i32 377, %43
  br i1 %cmp80, label %land.lhs.true81, label %lor.lhs.false83

land.lhs.true81:                                  ; preds = %lor.lhs.false79
  %44 = load i32, i32* %cp.addr, align 4
  %cmp82 = icmp sge i32 382, %44
  br i1 %cmp82, label %if.then95, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %land.lhs.true81, %lor.lhs.false79
  %45 = load i32, i32* %cp.addr, align 4
  %cmp84 = icmp sle i32 431, %45
  br i1 %cmp84, label %land.lhs.true85, label %lor.lhs.false87

land.lhs.true85:                                  ; preds = %lor.lhs.false83
  %46 = load i32, i32* %cp.addr, align 4
  %cmp86 = icmp sge i32 432, %46
  br i1 %cmp86, label %if.then95, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %land.lhs.true85, %lor.lhs.false83
  %47 = load i32, i32* %cp.addr, align 4
  %cmp88 = icmp sle i32 435, %47
  br i1 %cmp88, label %land.lhs.true89, label %lor.lhs.false91

land.lhs.true89:                                  ; preds = %lor.lhs.false87
  %48 = load i32, i32* %cp.addr, align 4
  %cmp90 = icmp sge i32 438, %48
  br i1 %cmp90, label %if.then95, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %land.lhs.true89, %lor.lhs.false87
  %49 = load i32, i32* %cp.addr, align 4
  %cmp92 = icmp sle i32 461, %49
  br i1 %cmp92, label %land.lhs.true93, label %if.else97

land.lhs.true93:                                  ; preds = %lor.lhs.false91
  %50 = load i32, i32* %cp.addr, align 4
  %cmp94 = icmp sge i32 476, %50
  br i1 %cmp94, label %if.then95, label %if.else97

if.then95:                                        ; preds = %land.lhs.true93, %land.lhs.true89, %land.lhs.true85, %land.lhs.true81, %land.lhs.true77
  %51 = load i32, i32* %cp.addr, align 4
  %sub96 = sub nsw i32 %51, 1
  store i32 %sub96, i32* %cp.addr, align 4
  %52 = load i32, i32* %cp.addr, align 4
  %or = or i32 %52, 1
  store i32 %or, i32* %cp.addr, align 4
  br label %if.end

if.else97:                                        ; preds = %land.lhs.true93, %lor.lhs.false91
  %53 = load i32, i32* %cp.addr, align 4
  switch i32 %53, label %sw.default [
    i32 255, label %sw.bb
    i32 384, label %sw.bb98
    i32 477, label %sw.bb99
    i32 410, label %sw.bb100
    i32 414, label %sw.bb101
    i32 658, label %sw.bb102
    i32 454, label %sw.bb103
    i32 457, label %sw.bb104
    i32 460, label %sw.bb105
    i32 499, label %sw.bb106
    i32 447, label %sw.bb107
    i32 392, label %sw.bb108
    i32 396, label %sw.bb109
    i32 402, label %sw.bb110
    i32 409, label %sw.bb111
    i32 424, label %sw.bb112
    i32 429, label %sw.bb113
    i32 432, label %sw.bb114
    i32 441, label %sw.bb115
    i32 445, label %sw.bb116
    i32 501, label %sw.bb117
    i32 572, label %sw.bb118
    i32 578, label %sw.bb119
    i32 891, label %sw.bb120
    i32 892, label %sw.bb121
    i32 893, label %sw.bb122
    i32 1011, label %sw.bb123
    i32 940, label %sw.bb124
    i32 941, label %sw.bb125
    i32 942, label %sw.bb126
    i32 943, label %sw.bb127
    i32 972, label %sw.bb128
    i32 973, label %sw.bb129
    i32 974, label %sw.bb130
    i32 881, label %sw.bb131
    i32 883, label %sw.bb132
    i32 887, label %sw.bb133
    i32 977, label %sw.bb134
    i32 983, label %sw.bb135
    i32 1010, label %sw.bb136
    i32 1016, label %sw.bb137
    i32 1019, label %sw.bb138
  ]

sw.default:                                       ; preds = %if.else97
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else97
  store i32 376, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.else97
  store i32 579, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.else97
  store i32 398, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.else97
  store i32 573, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.else97
  store i32 544, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.else97
  store i32 439, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.else97
  store i32 452, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.else97
  store i32 455, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.else97
  store i32 458, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.else97
  store i32 497, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb107:                                         ; preds = %if.else97
  store i32 503, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.else97
  store i32 391, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.else97
  store i32 395, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.else97
  store i32 401, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.else97
  store i32 408, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.else97
  store i32 423, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.else97
  store i32 428, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb114:                                         ; preds = %if.else97
  store i32 431, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.else97
  store i32 440, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.else97
  store i32 444, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb117:                                         ; preds = %if.else97
  store i32 500, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.else97
  store i32 571, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.else97
  store i32 577, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.else97
  store i32 1021, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb121:                                         ; preds = %if.else97
  store i32 1022, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.else97
  store i32 1023, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb123:                                         ; preds = %if.else97
  store i32 895, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.else97
  store i32 902, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb125:                                         ; preds = %if.else97
  store i32 904, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb126:                                         ; preds = %if.else97
  store i32 905, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.else97
  store i32 906, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.else97
  store i32 908, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.else97
  store i32 910, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.else97
  store i32 911, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.else97
  store i32 880, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb132:                                         ; preds = %if.else97
  store i32 882, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.else97
  store i32 886, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.else97
  store i32 920, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.else97
  store i32 975, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.else97
  store i32 1017, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb137:                                         ; preds = %if.else97
  store i32 1015, i32* %cp.addr, align 4
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.else97
  store i32 1018, i32* %cp.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb138, %sw.bb137, %sw.bb136, %sw.bb135, %sw.bb134, %sw.bb133, %sw.bb132, %sw.bb131, %sw.bb130, %sw.bb129, %sw.bb128, %sw.bb127, %sw.bb126, %sw.bb125, %sw.bb124, %sw.bb123, %sw.bb122, %sw.bb121, %sw.bb120, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109, %sw.bb108, %sw.bb107, %sw.bb106, %sw.bb105, %sw.bb104, %sw.bb103, %sw.bb102, %sw.bb101, %sw.bb100, %sw.bb99, %sw.bb98, %sw.bb, %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then95
  br label %if.end139

if.end139:                                        ; preds = %if.end, %if.then74
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.then24
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then
  %54 = load i32, i32* %cp.addr, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8cat(i8* noalias noundef nonnull %dst, i8* noalias noundef nonnull %src) #1 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %d = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %dst.addr, align 8
  store i8* %0, i8** %d, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %d, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.body6, %while.end
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp ne i32 0, %conv3
  br i1 %cmp4, label %while.body6, label %while.end9

while.body6:                                      ; preds = %while.cond2
  %6 = load i8*, i8** %src.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr7, i8** %src.addr, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %d, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr8, i8** %d, align 8
  store i8 %7, i8* %8, align 1
  br label %while.cond2, !llvm.loop !6

while.end9:                                       ; preds = %while.cond2
  %9 = load i8*, i8** %d, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %dst.addr, align 8
  ret i8* %10
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i8* @utf8chr(i8* noundef nonnull %src, i32 noundef %chr) #0 {
entry:
  %retval = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %chr.addr = alloca i32, align 4
  %c = alloca [5 x i8], align 1
  store i8* %src, i8** %src.addr, align 8
  store i32 %chr, i32* %chr.addr, align 4
  %0 = bitcast [5 x i8]* %c to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 5, i1 false)
  %1 = load i32, i32* %chr.addr, align 4
  %cmp = icmp eq i32 0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 0, %conv
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %src.addr, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %chr.addr, align 4
  %and = and i32 -128, %6
  %cmp3 = icmp eq i32 0, %and
  br i1 %cmp3, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  %7 = load i32, i32* %chr.addr, align 4
  %conv6 = trunc i32 %7 to i8
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 0
  store i8 %conv6, i8* %arrayidx, align 1
  br label %if.end74

if.else7:                                         ; preds = %if.else
  %8 = load i32, i32* %chr.addr, align 4
  %and8 = and i32 -2048, %8
  %cmp9 = icmp eq i32 0, %and8
  br i1 %cmp9, label %if.then11, label %if.else22

if.then11:                                        ; preds = %if.else7
  %9 = load i32, i32* %chr.addr, align 4
  %shr = ashr i32 %9, 6
  %conv12 = trunc i32 %shr to i8
  %conv13 = sext i8 %conv12 to i32
  %or = or i32 192, %conv13
  %conv14 = trunc i32 %or to i8
  %arrayidx15 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 0
  store i8 %conv14, i8* %arrayidx15, align 1
  %10 = load i32, i32* %chr.addr, align 4
  %and16 = and i32 %10, 63
  %conv17 = trunc i32 %and16 to i8
  %conv18 = sext i8 %conv17 to i32
  %or19 = or i32 128, %conv18
  %conv20 = trunc i32 %or19 to i8
  %arrayidx21 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 1
  store i8 %conv20, i8* %arrayidx21, align 1
  br label %if.end73

if.else22:                                        ; preds = %if.else7
  %11 = load i32, i32* %chr.addr, align 4
  %and23 = and i32 -65536, %11
  %cmp24 = icmp eq i32 0, %and23
  br i1 %cmp24, label %if.then26, label %if.else46

if.then26:                                        ; preds = %if.else22
  %12 = load i32, i32* %chr.addr, align 4
  %shr27 = ashr i32 %12, 12
  %conv28 = trunc i32 %shr27 to i8
  %conv29 = sext i8 %conv28 to i32
  %or30 = or i32 224, %conv29
  %conv31 = trunc i32 %or30 to i8
  %arrayidx32 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 0
  store i8 %conv31, i8* %arrayidx32, align 1
  %13 = load i32, i32* %chr.addr, align 4
  %shr33 = ashr i32 %13, 6
  %and34 = and i32 %shr33, 63
  %conv35 = trunc i32 %and34 to i8
  %conv36 = sext i8 %conv35 to i32
  %or37 = or i32 128, %conv36
  %conv38 = trunc i32 %or37 to i8
  %arrayidx39 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 1
  store i8 %conv38, i8* %arrayidx39, align 1
  %14 = load i32, i32* %chr.addr, align 4
  %and40 = and i32 %14, 63
  %conv41 = trunc i32 %and40 to i8
  %conv42 = sext i8 %conv41 to i32
  %or43 = or i32 128, %conv42
  %conv44 = trunc i32 %or43 to i8
  %arrayidx45 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 2
  store i8 %conv44, i8* %arrayidx45, align 1
  br label %if.end

if.else46:                                        ; preds = %if.else22
  %15 = load i32, i32* %chr.addr, align 4
  %shr47 = ashr i32 %15, 18
  %conv48 = trunc i32 %shr47 to i8
  %conv49 = sext i8 %conv48 to i32
  %or50 = or i32 240, %conv49
  %conv51 = trunc i32 %or50 to i8
  %arrayidx52 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 0
  store i8 %conv51, i8* %arrayidx52, align 1
  %16 = load i32, i32* %chr.addr, align 4
  %shr53 = ashr i32 %16, 12
  %and54 = and i32 %shr53, 63
  %conv55 = trunc i32 %and54 to i8
  %conv56 = sext i8 %conv55 to i32
  %or57 = or i32 128, %conv56
  %conv58 = trunc i32 %or57 to i8
  %arrayidx59 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 1
  store i8 %conv58, i8* %arrayidx59, align 1
  %17 = load i32, i32* %chr.addr, align 4
  %shr60 = ashr i32 %17, 6
  %and61 = and i32 %shr60, 63
  %conv62 = trunc i32 %and61 to i8
  %conv63 = sext i8 %conv62 to i32
  %or64 = or i32 128, %conv63
  %conv65 = trunc i32 %or64 to i8
  %arrayidx66 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 2
  store i8 %conv65, i8* %arrayidx66, align 1
  %18 = load i32, i32* %chr.addr, align 4
  %and67 = and i32 %18, 63
  %conv68 = trunc i32 %and67 to i8
  %conv69 = sext i8 %conv68 to i32
  %or70 = or i32 128, %conv69
  %conv71 = trunc i32 %or70 to i8
  %arrayidx72 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 3
  store i8 %conv71, i8* %arrayidx72, align 1
  br label %if.end

if.end:                                           ; preds = %if.else46, %if.then26
  br label %if.end73

if.end73:                                         ; preds = %if.end, %if.then11
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then5
  br label %if.end75

if.end75:                                         ; preds = %if.end74
  %19 = load i8*, i8** %src.addr, align 8
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 0
  %call = call i8* @utf8str(i8* noundef %19, i8* noundef %arraydecay) #4
  store i8* %call, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end75, %while.end
  %20 = load i8*, i8** %retval, align 8
  ret i8* %20
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i8* @utf8str(i8* noundef nonnull %haystack, i8* noundef nonnull %needle) #0 {
entry:
  %retval = alloca i8*, align 8
  %haystack.addr = alloca i8*, align 8
  %needle.addr = alloca i8*, align 8
  %throwaway_codepoint = alloca i32, align 4
  %maybeMatch = alloca i8*, align 8
  %n = alloca i8*, align 8
  store i8* %haystack, i8** %haystack.addr, align 8
  store i8* %needle, i8** %needle.addr, align 8
  store i32 0, i32* %throwaway_codepoint, align 4
  %0 = load i8*, i8** %needle.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %haystack.addr, align 8
  store i8* %2, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.end
  %3 = load i8*, i8** %haystack.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp ne i32 0, %conv2
  br i1 %cmp3, label %while.body, label %while.end25

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %haystack.addr, align 8
  store i8* %5, i8** %maybeMatch, align 8
  %6 = load i8*, i8** %needle.addr, align 8
  store i8* %6, i8** %n, align 8
  br label %while.cond5

while.cond5:                                      ; preds = %while.body18, %while.body
  %7 = load i8*, i8** %haystack.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %9 = load i8*, i8** %n, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  br i1 %cmp8, label %land.rhs, label %land.end17

land.rhs:                                         ; preds = %while.cond5
  %11 = load i8*, i8** %haystack.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %land.rhs13, label %land.end

land.rhs13:                                       ; preds = %land.rhs
  %13 = load i8*, i8** %n, align 8
  %14 = load i8, i8* %13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs13, %land.rhs
  %15 = phi i1 [ false, %land.rhs ], [ %cmp15, %land.rhs13 ]
  br label %land.end17

land.end17:                                       ; preds = %land.end, %while.cond5
  %16 = phi i1 [ false, %while.cond5 ], [ %15, %land.end ]
  br i1 %16, label %while.body18, label %while.end

while.body18:                                     ; preds = %land.end17
  %17 = load i8*, i8** %n, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %n, align 8
  %18 = load i8*, i8** %haystack.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr19, i8** %haystack.addr, align 8
  br label %while.cond5, !llvm.loop !8

while.end:                                        ; preds = %land.end17
  %19 = load i8*, i8** %n, align 8
  %20 = load i8, i8* %19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 0, %conv20
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.end
  %21 = load i8*, i8** %maybeMatch, align 8
  store i8* %21, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %while.end
  %22 = load i8*, i8** %maybeMatch, align 8
  %call = call i8* @utf8codepoint(i8* noundef %22, i32* noundef %throwaway_codepoint)
  store i8* %call, i8** %haystack.addr, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else
  br label %while.cond, !llvm.loop !9

while.end25:                                      ; preds = %while.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end25, %if.then23, %if.then
  %23 = load i8*, i8** %retval, align 8
  ret i8* %23
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i32 @utf8cmp(i8* noundef nonnull %src1, i8* noundef nonnull %src2) #0 {
entry:
  %retval = alloca i32, align 4
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load i8*, i8** %src1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load i8*, i8** %src2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 0, %conv2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %5 = load i8*, i8** %src1.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %7 = load i8*, i8** %src2.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp slt i32 %conv5, %conv6
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %while.body
  %9 = load i8*, i8** %src1.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv9 = sext i8 %10 to i32
  %11 = load i8*, i8** %src2.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp sgt i32 %conv9, %conv10
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end
  %13 = load i8*, i8** %src1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %src1.addr, align 8
  %14 = load i8*, i8** %src2.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr15, i8** %src2.addr, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %lor.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then13, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8cpy(i8* noalias noundef nonnull %dst, i8* noalias noundef nonnull %src) #1 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %d = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %dst.addr, align 8
  store i8* %0, i8** %d, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** %d, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %d, align 8
  store i8 %4, i8* %5, align 1
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %d, align 8
  store i8 0, i8* %6, align 1
  %7 = load i8*, i8** %dst.addr, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i64 @utf8cspn(i8* noundef nonnull %src, i8* noundef nonnull %reject) #0 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %reject.addr = alloca i8*, align 8
  %chars = alloca i64, align 8
  %r = alloca i8*, align 8
  %offset = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %reject, i8** %reject.addr, align 8
  store i64 0, i64* %chars, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end35, %entry
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %while.body, label %while.end37

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %reject.addr, align 8
  store i8* %2, i8** %r, align 8
  store i64 0, i64* %offset, align 8
  br label %while.cond2

while.cond2:                                      ; preds = %if.end23, %while.body
  %3 = load i8*, i8** %r, align 8
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 0, %conv3
  br i1 %cmp4, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond2
  %5 = load i8*, i8** %r, align 8
  %6 = load i8, i8* %5, align 1
  %conv7 = sext i8 %6 to i32
  %and = and i32 192, %conv7
  %cmp8 = icmp ne i32 128, %and
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body6
  %7 = load i64, i64* %offset, align 8
  %cmp10 = icmp ult i64 0, %7
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i64, i64* %chars, align 8
  store i64 %8, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %while.body6
  %9 = load i8*, i8** %r, align 8
  %10 = load i8, i8* %9, align 1
  %conv12 = sext i8 %10 to i32
  %11 = load i8*, i8** %src.addr, align 8
  %12 = load i64, i64* %offset, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8, i8* %arrayidx, align 1
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv12, %conv13
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else
  %14 = load i64, i64* %offset, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %offset, align 8
  %15 = load i8*, i8** %r, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %r, align 8
  br label %if.end

if.else17:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else17
  %16 = load i8*, i8** %r, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %r, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %17 = load i8*, i8** %r, align 8
  %18 = load i8, i8* %17, align 1
  %conv19 = sext i8 %18 to i32
  %and20 = and i32 192, %conv19
  %cmp21 = icmp eq i32 128, %and20
  br i1 %cmp21, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %do.cond
  store i64 0, i64* %offset, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then16
  br label %if.end23

if.end23:                                         ; preds = %if.end
  br label %while.cond2, !llvm.loop !13

while.end:                                        ; preds = %while.cond2
  %19 = load i64, i64* %offset, align 8
  %cmp24 = icmp ult i64 0, %19
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %while.end
  %20 = load i64, i64* %chars, align 8
  store i64 %20, i64* %retval, align 8
  br label %return

if.end27:                                         ; preds = %while.end
  br label %do.body28

do.body28:                                        ; preds = %do.cond30, %if.end27
  %21 = load i8*, i8** %src.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr29, i8** %src.addr, align 8
  br label %do.cond30

do.cond30:                                        ; preds = %do.body28
  %22 = load i8*, i8** %src.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv31 = sext i8 %23 to i32
  %and32 = and i32 192, %conv31
  %cmp33 = icmp eq i32 128, %and32
  br i1 %cmp33, label %do.body28, label %do.end35, !llvm.loop !14

do.end35:                                         ; preds = %do.cond30
  %24 = load i64, i64* %chars, align 8
  %inc36 = add i64 %24, 1
  store i64 %inc36, i64* %chars, align 8
  br label %while.cond, !llvm.loop !15

while.end37:                                      ; preds = %while.cond
  %25 = load i64, i64* %chars, align 8
  store i64 %25, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end37, %if.then26, %if.then
  %26 = load i64, i64* %retval, align 8
  ret i64 %26
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8dup(i8* noundef %src) #1 {
entry:
  %src.addr = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %call = call i8* @utf8dup_ex(i8* noundef %0, i8* (i8*, i64)* noundef null, i8* noundef null)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8dup_ex(i8* noundef %src, i8* (i8*, i64)* noundef %alloc_func_ptr, i8* noundef %user_data) #1 {
entry:
  %retval = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %alloc_func_ptr.addr = alloca i8* (i8*, i64)*, align 8
  %user_data.addr = alloca i8*, align 8
  %n = alloca i8*, align 8
  %bytes = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* (i8*, i64)* %alloc_func_ptr, i8* (i8*, i64)** %alloc_func_ptr.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store i8* null, i8** %n, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %call = call i64 @utf8size(i8* noundef %0) #4
  store i64 %call, i64* %bytes, align 8
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** %alloc_func_ptr.addr, align 8
  %tobool = icmp ne i8* (i8*, i64)* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8* (i8*, i64)*, i8* (i8*, i64)** %alloc_func_ptr.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %4 = load i64, i64* %bytes, align 8
  %call1 = call i8* %2(i8* noundef %3, i64 noundef %4)
  store i8* %call1, i8** %n, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %bytes, align 8
  %call2 = call noalias i8* @malloc(i64 noundef %5) #5
  store i8* %call2, i8** %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i8*, i8** %n, align 8
  %cmp = icmp eq i8* null, %6
  br i1 %cmp, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.else4:                                         ; preds = %if.end
  store i64 0, i64* %bytes, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else4
  %7 = load i8*, i8** %src.addr, align 8
  %8 = load i64, i64* %bytes, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp5 = icmp ne i32 0, %conv
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %src.addr, align 8
  %11 = load i64, i64* %bytes, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i8, i8* %arrayidx7, align 1
  %13 = load i8*, i8** %n, align 8
  %14 = load i64, i64* %bytes, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8 %12, i8* %arrayidx8, align 1
  %15 = load i64, i64* %bytes, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %bytes, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  %16 = load i8*, i8** %n, align 8
  %17 = load i64, i64* %bytes, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8 0, i8* %arrayidx9, align 1
  %18 = load i8*, i8** %n, align 8
  store i8* %18, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3
  %19 = load i8*, i8** %retval, align 8
  ret i8* %19
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i64 @utf8size(i8* noundef nonnull %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @utf8size_lazy(i8* noundef %0) #4
  %add = add i64 %call, 1
  ret i64 %add
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i64 @utf8len(i8* noundef nonnull %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @utf8nlen(i8* noundef %0, i64 noundef -1) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i64 @utf8nlen(i8* noundef nonnull %str, i64 noundef %n) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %t = alloca i8*, align 8
  %length = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %t, align 8
  store i64 0, i64* %length, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8*, i8** %t, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %3 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %sub.ptr.sub, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp ne i32 0, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %and = and i32 248, %conv3
  %cmp4 = icmp eq i32 240, %and
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 4
  store i8* %add.ptr, i8** %str.addr, align 8
  br label %if.end22

if.else:                                          ; preds = %while.body
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv6 = sext i8 %11 to i32
  %and7 = and i32 240, %conv6
  %cmp8 = icmp eq i32 224, %and7
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else
  %12 = load i8*, i8** %str.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %12, i64 3
  store i8* %add.ptr11, i8** %str.addr, align 8
  br label %if.end21

if.else12:                                        ; preds = %if.else
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = sext i8 %14 to i32
  %and14 = and i32 224, %conv13
  %cmp15 = icmp eq i32 192, %and14
  br i1 %cmp15, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else12
  %15 = load i8*, i8** %str.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr18, i8** %str.addr, align 8
  br label %if.end

if.else19:                                        ; preds = %if.else12
  %16 = load i8*, i8** %str.addr, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %add.ptr20, i8** %str.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then17
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then10
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  %17 = load i64, i64* %length, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %length, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %land.end
  %18 = load i8*, i8** %str.addr, align 8
  %19 = load i8*, i8** %t, align 8
  %sub.ptr.lhs.cast23 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %19 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %20 = load i64, i64* %n.addr, align 8
  %cmp26 = icmp ugt i64 %sub.ptr.sub25, %20
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.end
  %21 = load i64, i64* %length, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %length, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %while.end
  %22 = load i64, i64* %length, align 8
  ret i64 %22
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i32 @utf8ncasecmp(i8* noundef nonnull %src1, i8* noundef nonnull %src2, i64 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %src1_lwr_cp = alloca i32, align 4
  %src2_lwr_cp = alloca i32, align 4
  %src1_upr_cp = alloca i32, align 4
  %src2_upr_cp = alloca i32, align 4
  %src1_orig_cp = alloca i32, align 4
  %src2_orig_cp = alloca i32, align 4
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c130 = alloca i32, align 4
  %c233 = alloca i32, align 4
  %c155 = alloca i32, align 4
  %c258 = alloca i32, align 4
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 0, i32* %src1_lwr_cp, align 4
  store i32 0, i32* %src2_lwr_cp, align 4
  store i32 0, i32* %src1_upr_cp, align 4
  store i32 0, i32* %src2_upr_cp, align 4
  store i32 0, i32* %src1_orig_cp, align 4
  store i32 0, i32* %src2_orig_cp, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8*, i8** %src1.addr, align 8
  store i8* %0, i8** %s1, align 8
  %1 = load i8*, i8** %src2.addr, align 8
  store i8* %1, i8** %s2, align 8
  %2 = load i64, i64* %n.addr, align 8
  %cmp = icmp eq i64 0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  %3 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp eq i64 1, %3
  br i1 %cmp1, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %s1, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %and = and i32 224, %conv
  %cmp2 = icmp eq i32 192, %and
  br i1 %cmp2, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i8*, i8** %s2, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %and5 = and i32 224, %conv4
  %cmp6 = icmp eq i32 192, %and5
  br i1 %cmp6, label %if.then8, label %if.end16

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load i8*, i8** %s1, align 8
  %9 = load i8, i8* %8, align 1
  %conv9 = sext i8 %9 to i32
  %and10 = and i32 224, %conv9
  store i32 %and10, i32* %c1, align 4
  %10 = load i8*, i8** %s2, align 8
  %11 = load i8, i8* %10, align 1
  %conv11 = sext i8 %11 to i32
  %and12 = and i32 224, %conv11
  store i32 %and12, i32* %c2, align 4
  %12 = load i32, i32* %c1, align 4
  %13 = load i32, i32* %c2, align 4
  %cmp13 = icmp slt i32 %12, %13
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then8
  %14 = load i32, i32* %c1, align 4
  %15 = load i32, i32* %c2, align 4
  %sub = sub nsw i32 %14, %15
  store i32 %sub, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then8
  store i32 0, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %lor.lhs.false, %if.end
  %16 = load i64, i64* %n.addr, align 8
  %cmp17 = icmp uge i64 2, %16
  br i1 %cmp17, label %land.lhs.true19, label %if.end41

land.lhs.true19:                                  ; preds = %if.end16
  %17 = load i8*, i8** %s1, align 8
  %18 = load i8, i8* %17, align 1
  %conv20 = sext i8 %18 to i32
  %and21 = and i32 240, %conv20
  %cmp22 = icmp eq i32 224, %and21
  br i1 %cmp22, label %if.then29, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true19
  %19 = load i8*, i8** %s2, align 8
  %20 = load i8, i8* %19, align 1
  %conv25 = sext i8 %20 to i32
  %and26 = and i32 240, %conv25
  %cmp27 = icmp eq i32 224, %and26
  br i1 %cmp27, label %if.then29, label %if.end41

if.then29:                                        ; preds = %lor.lhs.false24, %land.lhs.true19
  %21 = load i8*, i8** %s1, align 8
  %22 = load i8, i8* %21, align 1
  %conv31 = sext i8 %22 to i32
  %and32 = and i32 240, %conv31
  store i32 %and32, i32* %c130, align 4
  %23 = load i8*, i8** %s2, align 8
  %24 = load i8, i8* %23, align 1
  %conv34 = sext i8 %24 to i32
  %and35 = and i32 240, %conv34
  store i32 %and35, i32* %c233, align 4
  %25 = load i32, i32* %c130, align 4
  %26 = load i32, i32* %c233, align 4
  %cmp36 = icmp slt i32 %25, %26
  br i1 %cmp36, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.then29
  %27 = load i32, i32* %c130, align 4
  %28 = load i32, i32* %c233, align 4
  %sub39 = sub nsw i32 %27, %28
  store i32 %sub39, i32* %retval, align 4
  br label %return

if.else40:                                        ; preds = %if.then29
  store i32 0, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %lor.lhs.false24, %if.end16
  %29 = load i64, i64* %n.addr, align 8
  %cmp42 = icmp uge i64 3, %29
  br i1 %cmp42, label %land.lhs.true44, label %if.end66

land.lhs.true44:                                  ; preds = %if.end41
  %30 = load i8*, i8** %s1, align 8
  %31 = load i8, i8* %30, align 1
  %conv45 = sext i8 %31 to i32
  %and46 = and i32 248, %conv45
  %cmp47 = icmp eq i32 240, %and46
  br i1 %cmp47, label %if.then54, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %land.lhs.true44
  %32 = load i8*, i8** %s2, align 8
  %33 = load i8, i8* %32, align 1
  %conv50 = sext i8 %33 to i32
  %and51 = and i32 248, %conv50
  %cmp52 = icmp eq i32 240, %and51
  br i1 %cmp52, label %if.then54, label %if.end66

if.then54:                                        ; preds = %lor.lhs.false49, %land.lhs.true44
  %34 = load i8*, i8** %s1, align 8
  %35 = load i8, i8* %34, align 1
  %conv56 = sext i8 %35 to i32
  %and57 = and i32 248, %conv56
  store i32 %and57, i32* %c155, align 4
  %36 = load i8*, i8** %s2, align 8
  %37 = load i8, i8* %36, align 1
  %conv59 = sext i8 %37 to i32
  %and60 = and i32 248, %conv59
  store i32 %and60, i32* %c258, align 4
  %38 = load i32, i32* %c155, align 4
  %39 = load i32, i32* %c258, align 4
  %cmp61 = icmp slt i32 %38, %39
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.then54
  %40 = load i32, i32* %c155, align 4
  %41 = load i32, i32* %c258, align 4
  %sub64 = sub nsw i32 %40, %41
  store i32 %sub64, i32* %retval, align 4
  br label %return

if.else65:                                        ; preds = %if.then54
  store i32 0, i32* %retval, align 4
  br label %return

if.end66:                                         ; preds = %lor.lhs.false49, %if.end41
  %42 = load i8*, i8** %src1.addr, align 8
  %call = call i8* @utf8codepoint(i8* noundef %42, i32* noundef %src1_orig_cp)
  store i8* %call, i8** %src1.addr, align 8
  %43 = load i8*, i8** %src2.addr, align 8
  %call67 = call i8* @utf8codepoint(i8* noundef %43, i32* noundef %src2_orig_cp)
  store i8* %call67, i8** %src2.addr, align 8
  %44 = load i32, i32* %src1_orig_cp, align 4
  %call68 = call i64 @utf8codepointsize(i32 noundef %44)
  %45 = load i64, i64* %n.addr, align 8
  %sub69 = sub i64 %45, %call68
  store i64 %sub69, i64* %n.addr, align 8
  %46 = load i32, i32* %src1_orig_cp, align 4
  %call70 = call i32 @utf8lwrcodepoint(i32 noundef %46)
  store i32 %call70, i32* %src1_lwr_cp, align 4
  %47 = load i32, i32* %src2_orig_cp, align 4
  %call71 = call i32 @utf8lwrcodepoint(i32 noundef %47)
  store i32 %call71, i32* %src2_lwr_cp, align 4
  %48 = load i32, i32* %src1_orig_cp, align 4
  %call72 = call i32 @utf8uprcodepoint(i32 noundef %48)
  store i32 %call72, i32* %src1_upr_cp, align 4
  %49 = load i32, i32* %src2_orig_cp, align 4
  %call73 = call i32 @utf8uprcodepoint(i32 noundef %49)
  store i32 %call73, i32* %src2_upr_cp, align 4
  %50 = load i32, i32* %src1_orig_cp, align 4
  %cmp74 = icmp eq i32 0, %50
  br i1 %cmp74, label %land.lhs.true76, label %if.else80

land.lhs.true76:                                  ; preds = %if.end66
  %51 = load i32, i32* %src2_orig_cp, align 4
  %cmp77 = icmp eq i32 0, %51
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %land.lhs.true76
  store i32 0, i32* %retval, align 4
  br label %return

if.else80:                                        ; preds = %land.lhs.true76, %if.end66
  %52 = load i32, i32* %src1_lwr_cp, align 4
  %53 = load i32, i32* %src2_lwr_cp, align 4
  %cmp81 = icmp eq i32 %52, %53
  br i1 %cmp81, label %if.then86, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %if.else80
  %54 = load i32, i32* %src1_upr_cp, align 4
  %55 = load i32, i32* %src2_upr_cp, align 4
  %cmp84 = icmp eq i32 %54, %55
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %lor.lhs.false83, %if.else80
  br label %do.cond

if.end87:                                         ; preds = %lor.lhs.false83
  br label %if.end88

if.end88:                                         ; preds = %if.end87
  %56 = load i32, i32* %src1_lwr_cp, align 4
  %57 = load i32, i32* %src2_lwr_cp, align 4
  %sub89 = sub nsw i32 %56, %57
  store i32 %sub89, i32* %retval, align 4
  br label %return

do.cond:                                          ; preds = %if.then86
  %58 = load i64, i64* %n.addr, align 8
  %cmp90 = icmp ult i64 0, %58
  br i1 %cmp90, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.end88, %if.then79, %if.else65, %if.then63, %if.else40, %if.then38, %if.else, %if.then15, %if.then
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i64 @utf8codepointsize(i32 noundef %chr) #1 {
entry:
  %retval = alloca i64, align 8
  %chr.addr = alloca i32, align 4
  store i32 %chr, i32* %chr.addr, align 4
  %0 = load i32, i32* %chr.addr, align 4
  %and = and i32 -128, %0
  %cmp = icmp eq i32 0, %and
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %chr.addr, align 4
  %and1 = and i32 -2048, %1
  %cmp2 = icmp eq i32 0, %and1
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i64 2, i64* %retval, align 8
  br label %return

if.else4:                                         ; preds = %if.else
  %2 = load i32, i32* %chr.addr, align 4
  %and5 = and i32 -65536, %2
  %cmp6 = icmp eq i32 0, %and5
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  store i64 3, i64* %retval, align 8
  br label %return

if.else8:                                         ; preds = %if.else4
  store i64 4, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else8, %if.then7, %if.then3, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8ncat(i8* noalias noundef nonnull %dst, i8* noalias noundef nonnull %src, i64 noundef %n) #1 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %d = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %dst.addr, align 8
  store i8* %0, i8** %d, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %d, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.body8, %while.end
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp ne i32 0, %conv3
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond2
  %6 = load i64, i64* %n.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %n.addr, align 8
  %cmp6 = icmp ne i64 0, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond2
  %7 = phi i1 [ false, %while.cond2 ], [ %cmp6, %land.rhs ]
  br i1 %7, label %while.body8, label %while.end11

while.body8:                                      ; preds = %land.end
  %8 = load i8*, i8** %src.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr9, i8** %src.addr, align 8
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** %d, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr10, i8** %d, align 8
  store i8 %9, i8* %10, align 1
  br label %while.cond2, !llvm.loop !20

while.end11:                                      ; preds = %land.end
  %11 = load i8*, i8** %d, align 8
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %dst.addr, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i32 @utf8ncmp(i8* noundef nonnull %src1, i8* noundef nonnull %src2, i64 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %entry
  %0 = load i64, i64* %n.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %n.addr, align 8
  %cmp = icmp ne i64 0, %0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i8*, i8** %src1.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp ne i32 0, %conv
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %3 = load i8*, i8** %src2.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 0, %conv3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %5, %lor.end ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %src1.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %9 = load i8*, i8** %src2.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp slt i32 %conv6, %conv7
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %while.body
  %11 = load i8*, i8** %src1.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = sext i8 %12 to i32
  %13 = load i8*, i8** %src2.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp sgt i32 %conv10, %conv11
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end
  %15 = load i8*, i8** %src1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %src1.addr, align 8
  %16 = load i8*, i8** %src2.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr16, i8** %src2.addr, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then14, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8ncpy(i8* noalias noundef nonnull %dst, i8* noalias noundef nonnull %src, i64 noundef %n) #1 {
entry:
  %retval = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %d = alloca i8*, align 8
  %index = alloca i64, align 8
  %check_index = alloca i64, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %dst.addr, align 8
  store i8* %0, i8** %d, align 8
  store i64 0, i64* %index, align 8
  store i64 0, i64* %check_index, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %dst.addr, align 8
  store i8* %2, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %index, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %index, align 8
  %4 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp ult i64 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %src.addr, align 8
  %6 = load i64, i64* %index, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %arrayidx, align 1
  %8 = load i8*, i8** %d, align 8
  %9 = load i64, i64* %index, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8 %7, i8* %arrayidx2, align 1
  %10 = load i8*, i8** %src.addr, align 8
  %11 = load i64, i64* %index, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %12 to i32
  %cmp4 = icmp eq i32 0, %conv
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %for.end

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %13 = load i64, i64* %index, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %index, align 8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %if.then6, %for.cond
  %14 = load i64, i64* %index, align 8
  %sub = sub i64 %14, 1
  store i64 %sub, i64* %check_index, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc16, %for.end
  %15 = load i64, i64* %check_index, align 8
  %cmp9 = icmp ugt i64 %15, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond8
  %16 = load i8*, i8** %d, align 8
  %17 = load i64, i64* %check_index, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 %17
  %18 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %18 to i32
  %and = and i32 192, %conv12
  %cmp13 = icmp eq i32 128, %and
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond8
  %19 = phi i1 [ false, %for.cond8 ], [ %cmp13, %land.rhs ]
  br i1 %19, label %for.body15, label %for.end17

for.body15:                                       ; preds = %land.end
  br label %for.inc16

for.inc16:                                        ; preds = %for.body15
  %20 = load i64, i64* %check_index, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %check_index, align 8
  br label %for.cond8, !llvm.loop !23

for.end17:                                        ; preds = %land.end
  %21 = load i64, i64* %check_index, align 8
  %22 = load i64, i64* %index, align 8
  %cmp18 = icmp ult i64 %21, %22
  br i1 %cmp18, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %for.end17
  %23 = load i64, i64* %index, align 8
  %24 = load i64, i64* %check_index, align 8
  %sub20 = sub i64 %23, %24
  %25 = load i8*, i8** %d, align 8
  %26 = load i64, i64* %check_index, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %25, i64 %26
  %call = call i64 @utf8codepointcalcsize(i8* noundef %arrayidx21)
  %cmp22 = icmp ult i64 %sub20, %call
  br i1 %cmp22, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load i64, i64* %index, align 8
  %28 = load i64, i64* %check_index, align 8
  %sub24 = sub i64 %27, %28
  %29 = load i64, i64* %n.addr, align 8
  %cmp25 = icmp eq i64 %sub24, %29
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %30 = load i64, i64* %check_index, align 8
  store i64 %30, i64* %index, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %lor.lhs.false, %for.end17
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc34, %if.end28
  %31 = load i64, i64* %index, align 8
  %32 = load i64, i64* %n.addr, align 8
  %cmp30 = icmp ult i64 %31, %32
  br i1 %cmp30, label %for.body32, label %for.end36

for.body32:                                       ; preds = %for.cond29
  %33 = load i8*, i8** %d, align 8
  %34 = load i64, i64* %index, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 0, i8* %arrayidx33, align 1
  br label %for.inc34

for.inc34:                                        ; preds = %for.body32
  %35 = load i64, i64* %index, align 8
  %inc35 = add i64 %35, 1
  store i64 %inc35, i64* %index, align 8
  br label %for.cond29, !llvm.loop !24

for.end36:                                        ; preds = %for.cond29
  %36 = load i8*, i8** %dst.addr, align 8
  store i8* %36, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end36, %if.then
  %37 = load i8*, i8** %retval, align 8
  ret i8* %37
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i64 @utf8codepointcalcsize(i8* noundef nonnull %str) #1 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %and = and i32 248, %conv
  %cmp = icmp eq i32 240, %and
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 4, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %and4 = and i32 240, %conv3
  %cmp5 = icmp eq i32 224, %and4
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i64 3, i64* %retval, align 8
  br label %return

if.else8:                                         ; preds = %if.else
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %5 to i32
  %and11 = and i32 224, %conv10
  %cmp12 = icmp eq i32 192, %and11
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else8
  store i64 2, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else8
  br label %if.end15

if.end15:                                         ; preds = %if.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  store i64 1, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then7, %if.then
  %6 = load i64, i64* %retval, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8ndup(i8* noundef %src, i64 noundef %n) #1 {
entry:
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i64, i64* %n.addr, align 8
  %call = call i8* @utf8ndup_ex(i8* noundef %0, i64 noundef %1, i8* (i8*, i64)* noundef null, i8* noundef null)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8ndup_ex(i8* noundef %src, i64 noundef %n, i8* (i8*, i64)* noundef %alloc_func_ptr, i8* noundef %user_data) #1 {
entry:
  %retval = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %alloc_func_ptr.addr = alloca i8* (i8*, i64)*, align 8
  %user_data.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  %bytes = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8* (i8*, i64)* %alloc_func_ptr, i8* (i8*, i64)** %alloc_func_ptr.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store i8* null, i8** %c, align 8
  store i64 0, i64* %bytes, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i64, i64* %bytes, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i64, i64* %bytes, align 8
  %4 = load i64, i64* %n.addr, align 8
  %cmp2 = icmp ult i64 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i64, i64* %bytes, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %bytes, align 8
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %land.end
  %7 = load i64, i64* %bytes, align 8
  store i64 %7, i64* %n.addr, align 8
  %8 = load i8* (i8*, i64)*, i8* (i8*, i64)** %alloc_func_ptr.addr, align 8
  %tobool = icmp ne i8* (i8*, i64)* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %9 = load i8* (i8*, i64)*, i8* (i8*, i64)** %alloc_func_ptr.addr, align 8
  %10 = load i8*, i8** %user_data.addr, align 8
  %11 = load i64, i64* %bytes, align 8
  %add = add i64 %11, 1
  %call = call i8* %9(i8* noundef %10, i64 noundef %add)
  store i8* %call, i8** %c, align 8
  br label %if.end

if.else:                                          ; preds = %while.end
  %12 = load i64, i64* %bytes, align 8
  %add4 = add i64 %12, 1
  %call5 = call noalias i8* @malloc(i64 noundef %add4) #5
  store i8* %call5, i8** %c, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i8*, i8** %c, align 8
  %cmp6 = icmp eq i8* null, %13
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  store i64 0, i64* %bytes, align 8
  br label %while.cond10

while.cond10:                                     ; preds = %while.body19, %if.end9
  %14 = load i8*, i8** %src.addr, align 8
  %15 = load i64, i64* %bytes, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %15
  %16 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %16 to i32
  %cmp13 = icmp ne i32 0, %conv12
  br i1 %cmp13, label %land.rhs15, label %land.end18

land.rhs15:                                       ; preds = %while.cond10
  %17 = load i64, i64* %bytes, align 8
  %18 = load i64, i64* %n.addr, align 8
  %cmp16 = icmp ult i64 %17, %18
  br label %land.end18

land.end18:                                       ; preds = %land.rhs15, %while.cond10
  %19 = phi i1 [ false, %while.cond10 ], [ %cmp16, %land.rhs15 ]
  br i1 %19, label %while.body19, label %while.end23

while.body19:                                     ; preds = %land.end18
  %20 = load i8*, i8** %src.addr, align 8
  %21 = load i64, i64* %bytes, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = load i8, i8* %arrayidx20, align 1
  %23 = load i8*, i8** %c, align 8
  %24 = load i64, i64* %bytes, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 %22, i8* %arrayidx21, align 1
  %25 = load i64, i64* %bytes, align 8
  %inc22 = add i64 %25, 1
  store i64 %inc22, i64* %bytes, align 8
  br label %while.cond10, !llvm.loop !26

while.end23:                                      ; preds = %land.end18
  %26 = load i8*, i8** %c, align 8
  %27 = load i64, i64* %bytes, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 0, i8* %arrayidx24, align 1
  %28 = load i8*, i8** %c, align 8
  store i8* %28, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end23, %if.then8
  %29 = load i8*, i8** %retval, align 8
  ret i8* %29
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i8* @utf8rchr(i8* noundef nonnull %src, i32 noundef %chr) #0 {
entry:
  %retval = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %chr.addr = alloca i32, align 4
  %match = alloca i8*, align 8
  %c = alloca [5 x i8], align 1
  %offset = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %chr, i32* %chr.addr, align 4
  store i8* null, i8** %match, align 8
  %0 = bitcast [5 x i8]* %c to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 5, i1 false)
  %1 = load i32, i32* %chr.addr, align 4
  %cmp = icmp eq i32 0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 0, %conv
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %src.addr, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %chr.addr, align 4
  %and = and i32 -128, %6
  %cmp3 = icmp eq i32 0, %and
  br i1 %cmp3, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  %7 = load i32, i32* %chr.addr, align 4
  %conv6 = trunc i32 %7 to i8
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 0
  store i8 %conv6, i8* %arrayidx, align 1
  br label %if.end74

if.else7:                                         ; preds = %if.else
  %8 = load i32, i32* %chr.addr, align 4
  %and8 = and i32 -2048, %8
  %cmp9 = icmp eq i32 0, %and8
  br i1 %cmp9, label %if.then11, label %if.else22

if.then11:                                        ; preds = %if.else7
  %9 = load i32, i32* %chr.addr, align 4
  %shr = ashr i32 %9, 6
  %conv12 = trunc i32 %shr to i8
  %conv13 = sext i8 %conv12 to i32
  %or = or i32 192, %conv13
  %conv14 = trunc i32 %or to i8
  %arrayidx15 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 0
  store i8 %conv14, i8* %arrayidx15, align 1
  %10 = load i32, i32* %chr.addr, align 4
  %and16 = and i32 %10, 63
  %conv17 = trunc i32 %and16 to i8
  %conv18 = sext i8 %conv17 to i32
  %or19 = or i32 128, %conv18
  %conv20 = trunc i32 %or19 to i8
  %arrayidx21 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 1
  store i8 %conv20, i8* %arrayidx21, align 1
  br label %if.end73

if.else22:                                        ; preds = %if.else7
  %11 = load i32, i32* %chr.addr, align 4
  %and23 = and i32 -65536, %11
  %cmp24 = icmp eq i32 0, %and23
  br i1 %cmp24, label %if.then26, label %if.else46

if.then26:                                        ; preds = %if.else22
  %12 = load i32, i32* %chr.addr, align 4
  %shr27 = ashr i32 %12, 12
  %conv28 = trunc i32 %shr27 to i8
  %conv29 = sext i8 %conv28 to i32
  %or30 = or i32 224, %conv29
  %conv31 = trunc i32 %or30 to i8
  %arrayidx32 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 0
  store i8 %conv31, i8* %arrayidx32, align 1
  %13 = load i32, i32* %chr.addr, align 4
  %shr33 = ashr i32 %13, 6
  %and34 = and i32 %shr33, 63
  %conv35 = trunc i32 %and34 to i8
  %conv36 = sext i8 %conv35 to i32
  %or37 = or i32 128, %conv36
  %conv38 = trunc i32 %or37 to i8
  %arrayidx39 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 1
  store i8 %conv38, i8* %arrayidx39, align 1
  %14 = load i32, i32* %chr.addr, align 4
  %and40 = and i32 %14, 63
  %conv41 = trunc i32 %and40 to i8
  %conv42 = sext i8 %conv41 to i32
  %or43 = or i32 128, %conv42
  %conv44 = trunc i32 %or43 to i8
  %arrayidx45 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 2
  store i8 %conv44, i8* %arrayidx45, align 1
  br label %if.end

if.else46:                                        ; preds = %if.else22
  %15 = load i32, i32* %chr.addr, align 4
  %shr47 = ashr i32 %15, 18
  %conv48 = trunc i32 %shr47 to i8
  %conv49 = sext i8 %conv48 to i32
  %or50 = or i32 240, %conv49
  %conv51 = trunc i32 %or50 to i8
  %arrayidx52 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 0
  store i8 %conv51, i8* %arrayidx52, align 1
  %16 = load i32, i32* %chr.addr, align 4
  %shr53 = ashr i32 %16, 12
  %and54 = and i32 %shr53, 63
  %conv55 = trunc i32 %and54 to i8
  %conv56 = sext i8 %conv55 to i32
  %or57 = or i32 128, %conv56
  %conv58 = trunc i32 %or57 to i8
  %arrayidx59 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 1
  store i8 %conv58, i8* %arrayidx59, align 1
  %17 = load i32, i32* %chr.addr, align 4
  %shr60 = ashr i32 %17, 6
  %and61 = and i32 %shr60, 63
  %conv62 = trunc i32 %and61 to i8
  %conv63 = sext i8 %conv62 to i32
  %or64 = or i32 128, %conv63
  %conv65 = trunc i32 %or64 to i8
  %arrayidx66 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 2
  store i8 %conv65, i8* %arrayidx66, align 1
  %18 = load i32, i32* %chr.addr, align 4
  %and67 = and i32 %18, 63
  %conv68 = trunc i32 %and67 to i8
  %conv69 = sext i8 %conv68 to i32
  %or70 = or i32 128, %conv69
  %conv71 = trunc i32 %or70 to i8
  %arrayidx72 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 3
  store i8 %conv71, i8* %arrayidx72, align 1
  br label %if.end

if.end:                                           ; preds = %if.else46, %if.then26
  br label %if.end73

if.end73:                                         ; preds = %if.end, %if.then11
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then5
  br label %if.end75

if.end75:                                         ; preds = %if.end74
  br label %while.cond76

while.cond76:                                     ; preds = %if.end107, %if.end75
  %19 = load i8*, i8** %src.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv77 = sext i8 %20 to i32
  %cmp78 = icmp ne i32 0, %conv77
  br i1 %cmp78, label %while.body80, label %while.end108

while.body80:                                     ; preds = %while.cond76
  store i64 0, i64* %offset, align 8
  br label %while.cond81

while.cond81:                                     ; preds = %while.body88, %while.body80
  %21 = load i8*, i8** %src.addr, align 8
  %22 = load i64, i64* %offset, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %21, i64 %22
  %23 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %23 to i32
  %24 = load i64, i64* %offset, align 8
  %arrayidx84 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 %24
  %25 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %25 to i32
  %cmp86 = icmp eq i32 %conv83, %conv85
  br i1 %cmp86, label %while.body88, label %while.end89

while.body88:                                     ; preds = %while.cond81
  %26 = load i64, i64* %offset, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %offset, align 8
  br label %while.cond81, !llvm.loop !28

while.end89:                                      ; preds = %while.cond81
  %27 = load i64, i64* %offset, align 8
  %arrayidx90 = getelementptr inbounds [5 x i8], [5 x i8]* %c, i64 0, i64 %27
  %28 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %28 to i32
  %cmp92 = icmp eq i32 0, %conv91
  br i1 %cmp92, label %if.then94, label %if.else95

if.then94:                                        ; preds = %while.end89
  %29 = load i8*, i8** %src.addr, align 8
  store i8* %29, i8** %match, align 8
  %30 = load i64, i64* %offset, align 8
  %31 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %add.ptr, i8** %src.addr, align 8
  br label %if.end107

if.else95:                                        ; preds = %while.end89
  %32 = load i64, i64* %offset, align 8
  %33 = load i8*, i8** %src.addr, align 8
  %add.ptr96 = getelementptr inbounds i8, i8* %33, i64 %32
  store i8* %add.ptr96, i8** %src.addr, align 8
  %34 = load i8*, i8** %src.addr, align 8
  %35 = load i8, i8* %34, align 1
  %conv97 = sext i8 %35 to i32
  %cmp98 = icmp ne i32 0, %conv97
  br i1 %cmp98, label %if.then100, label %if.end106

if.then100:                                       ; preds = %if.else95
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then100
  %36 = load i8*, i8** %src.addr, align 8
  %incdec.ptr101 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr101, i8** %src.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load i8*, i8** %src.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv102 = sext i8 %38 to i32
  %and103 = and i32 192, %conv102
  %cmp104 = icmp eq i32 128, %and103
  br i1 %cmp104, label %do.body, label %do.end, !llvm.loop !29

do.end:                                           ; preds = %do.cond
  br label %if.end106

if.end106:                                        ; preds = %do.end, %if.else95
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then94
  br label %while.cond76, !llvm.loop !30

while.end108:                                     ; preds = %while.cond76
  %39 = load i8*, i8** %match, align 8
  store i8* %39, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end108, %while.end
  %40 = load i8*, i8** %retval, align 8
  ret i8* %40
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i8* @utf8pbrk(i8* noundef nonnull %str, i8* noundef nonnull %accept) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %accept.addr = alloca i8*, align 8
  %a = alloca i8*, align 8
  %offset = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %accept, i8** %accept.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end35, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %while.body, label %while.end36

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %accept.addr, align 8
  store i8* %2, i8** %a, align 8
  store i64 0, i64* %offset, align 8
  br label %while.cond2

while.cond2:                                      ; preds = %if.end23, %while.body
  %3 = load i8*, i8** %a, align 8
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 0, %conv3
  br i1 %cmp4, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond2
  %5 = load i8*, i8** %a, align 8
  %6 = load i8, i8* %5, align 1
  %conv7 = sext i8 %6 to i32
  %and = and i32 192, %conv7
  %cmp8 = icmp ne i32 128, %and
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body6
  %7 = load i64, i64* %offset, align 8
  %cmp10 = icmp ult i64 0, %7
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %str.addr, align 8
  store i8* %8, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %while.body6
  %9 = load i8*, i8** %a, align 8
  %10 = load i8, i8* %9, align 1
  %conv12 = sext i8 %10 to i32
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i64, i64* %offset, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8, i8* %arrayidx, align 1
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv12, %conv13
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else
  %14 = load i64, i64* %offset, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %offset, align 8
  %15 = load i8*, i8** %a, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %a, align 8
  br label %if.end

if.else17:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else17
  %16 = load i8*, i8** %a, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %a, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %17 = load i8*, i8** %a, align 8
  %18 = load i8, i8* %17, align 1
  %conv19 = sext i8 %18 to i32
  %and20 = and i32 192, %conv19
  %cmp21 = icmp eq i32 128, %and20
  br i1 %cmp21, label %do.body, label %do.end, !llvm.loop !31

do.end:                                           ; preds = %do.cond
  store i64 0, i64* %offset, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then16
  br label %if.end23

if.end23:                                         ; preds = %if.end
  br label %while.cond2, !llvm.loop !32

while.end:                                        ; preds = %while.cond2
  %19 = load i64, i64* %offset, align 8
  %cmp24 = icmp ult i64 0, %19
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %while.end
  %20 = load i8*, i8** %str.addr, align 8
  store i8* %20, i8** %retval, align 8
  br label %return

if.end27:                                         ; preds = %while.end
  br label %do.body28

do.body28:                                        ; preds = %do.cond30, %if.end27
  %21 = load i8*, i8** %str.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr29, i8** %str.addr, align 8
  br label %do.cond30

do.cond30:                                        ; preds = %do.body28
  %22 = load i8*, i8** %str.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv31 = sext i8 %23 to i32
  %and32 = and i32 192, %conv31
  %cmp33 = icmp eq i32 128, %and32
  br i1 %cmp33, label %do.body28, label %do.end35, !llvm.loop !33

do.end35:                                         ; preds = %do.cond30
  br label %while.cond, !llvm.loop !34

while.end36:                                      ; preds = %while.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end36, %if.then26, %if.then
  %24 = load i8*, i8** %retval, align 8
  ret i8* %24
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i64 @utf8size_lazy(i8* noundef nonnull %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @utf8nsize_lazy(i8* noundef %0, i64 noundef -1) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i64 @utf8nsize_lazy(i8* noundef nonnull %str, i64 noundef %n) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %size, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %size, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i64, i64* %size, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp ne i32 0, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i64, i64* %size, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %size, align 8
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %land.end
  %7 = load i64, i64* %size, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i64 @utf8spn(i8* noundef nonnull %src, i8* noundef nonnull %accept) #0 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %accept.addr = alloca i8*, align 8
  %chars = alloca i64, align 8
  %a = alloca i8*, align 8
  %offset = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %accept, i8** %accept.addr, align 8
  store i64 0, i64* %chars, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.then27, %entry
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %while.body, label %while.end36

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %accept.addr, align 8
  store i8* %2, i8** %a, align 8
  store i64 0, i64* %offset, align 8
  br label %while.cond2

while.cond2:                                      ; preds = %if.end24, %while.body
  %3 = load i8*, i8** %a, align 8
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 0, %conv3
  br i1 %cmp4, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond2
  %5 = load i8*, i8** %a, align 8
  %6 = load i8, i8* %5, align 1
  %conv7 = sext i8 %6 to i32
  %and = and i32 192, %conv7
  %cmp8 = icmp ne i32 128, %and
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body6
  %7 = load i64, i64* %offset, align 8
  %cmp10 = icmp ult i64 0, %7
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i64, i64* %chars, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %chars, align 8
  %9 = load i64, i64* %offset, align 8
  %10 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %9
  store i8* %add.ptr, i8** %src.addr, align 8
  store i64 0, i64* %offset, align 8
  br label %while.end

if.else:                                          ; preds = %land.lhs.true, %while.body6
  %11 = load i8*, i8** %a, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = sext i8 %12 to i32
  %13 = load i8*, i8** %src.addr, align 8
  %14 = load i64, i64* %offset, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8, i8* %arrayidx, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv12, %conv13
  br i1 %cmp14, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  %16 = load i64, i64* %offset, align 8
  %inc17 = add i64 %16, 1
  store i64 %inc17, i64* %offset, align 8
  %17 = load i8*, i8** %a, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %a, align 8
  br label %if.end

if.else18:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else18
  %18 = load i8*, i8** %a, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr19, i8** %a, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %19 = load i8*, i8** %a, align 8
  %20 = load i8, i8* %19, align 1
  %conv20 = sext i8 %20 to i32
  %and21 = and i32 192, %conv20
  %cmp22 = icmp eq i32 128, %and21
  br i1 %cmp22, label %do.body, label %do.end, !llvm.loop !36

do.end:                                           ; preds = %do.cond
  store i64 0, i64* %offset, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then16
  br label %if.end24

if.end24:                                         ; preds = %if.end
  br label %while.cond2, !llvm.loop !37

while.end:                                        ; preds = %if.then, %while.cond2
  %21 = load i64, i64* %offset, align 8
  %cmp25 = icmp ult i64 0, %21
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %while.end
  %22 = load i64, i64* %chars, align 8
  %inc28 = add i64 %22, 1
  store i64 %inc28, i64* %chars, align 8
  %23 = load i64, i64* %offset, align 8
  %24 = load i8*, i8** %src.addr, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8* %add.ptr29, i8** %src.addr, align 8
  br label %while.cond, !llvm.loop !38

if.end30:                                         ; preds = %while.end
  %25 = load i8*, i8** %a, align 8
  %26 = load i8, i8* %25, align 1
  %conv31 = sext i8 %26 to i32
  %cmp32 = icmp eq i32 0, %conv31
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  %27 = load i64, i64* %chars, align 8
  store i64 %27, i64* %retval, align 8
  br label %return

if.end35:                                         ; preds = %if.end30
  br label %while.cond, !llvm.loop !38

while.end36:                                      ; preds = %while.cond
  %28 = load i64, i64* %chars, align 8
  store i64 %28, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end36, %if.then34
  %29 = load i64, i64* %retval, align 8
  ret i64 %29
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i8* @utf8casestr(i8* noundef nonnull %haystack, i8* noundef nonnull %needle) #0 {
entry:
  %retval = alloca i8*, align 8
  %haystack.addr = alloca i8*, align 8
  %needle.addr = alloca i8*, align 8
  %maybeMatch = alloca i8*, align 8
  %n = alloca i8*, align 8
  %h_cp = alloca i32, align 4
  %n_cp = alloca i32, align 4
  %nextH = alloca i8*, align 8
  store i8* %haystack, i8** %haystack.addr, align 8
  store i8* %needle, i8** %needle.addr, align 8
  %0 = load i8*, i8** %needle.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %haystack.addr, align 8
  store i8* %2, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end22, %if.end
  %3 = load i8*, i8** %haystack.addr, align 8
  store i8* %3, i8** %maybeMatch, align 8
  %4 = load i8*, i8** %needle.addr, align 8
  store i8* %4, i8** %n, align 8
  store i32 0, i32* %h_cp, align 4
  store i32 0, i32* %n_cp, align 4
  %5 = load i8*, i8** %haystack.addr, align 8
  %call = call i8* @utf8codepoint(i8* noundef %5, i32* noundef %h_cp)
  store i8* %call, i8** %haystack.addr, align 8
  store i8* %call, i8** %nextH, align 8
  %6 = load i8*, i8** %n, align 8
  %call2 = call i8* @utf8codepoint(i8* noundef %6, i32* noundef %n_cp)
  store i8* %call2, i8** %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %for.cond
  %7 = load i32, i32* %h_cp, align 4
  %cmp3 = icmp ne i32 0, %7
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %n_cp, align 4
  %cmp5 = icmp ne i32 0, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %h_cp, align 4
  %call7 = call i32 @utf8lwrcodepoint(i32 noundef %10)
  store i32 %call7, i32* %h_cp, align 4
  %11 = load i32, i32* %n_cp, align 4
  %call8 = call i32 @utf8lwrcodepoint(i32 noundef %11)
  store i32 %call8, i32* %n_cp, align 4
  %12 = load i32, i32* %h_cp, align 4
  %13 = load i32, i32* %n_cp, align 4
  %cmp9 = icmp ne i32 %12, %13
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body
  br label %while.end

if.end12:                                         ; preds = %while.body
  %14 = load i8*, i8** %haystack.addr, align 8
  %call13 = call i8* @utf8codepoint(i8* noundef %14, i32* noundef %h_cp)
  store i8* %call13, i8** %haystack.addr, align 8
  %15 = load i8*, i8** %n, align 8
  %call14 = call i8* @utf8codepoint(i8* noundef %15, i32* noundef %n_cp)
  store i8* %call14, i8** %n, align 8
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %if.then11, %land.end
  %16 = load i32, i32* %n_cp, align 4
  %cmp15 = icmp eq i32 0, %16
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %while.end
  %17 = load i8*, i8** %maybeMatch, align 8
  store i8* %17, i8** %retval, align 8
  br label %return

if.end18:                                         ; preds = %while.end
  %18 = load i32, i32* %h_cp, align 4
  %cmp19 = icmp eq i32 0, %18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  store i8* null, i8** %retval, align 8
  br label %return

if.end22:                                         ; preds = %if.end18
  %19 = load i8*, i8** %nextH, align 8
  store i8* %19, i8** %haystack.addr, align 8
  br label %for.cond

return:                                           ; preds = %if.then21, %if.then17, %if.then
  %20 = load i8*, i8** %retval, align 8
  ret i8* %20
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i8* @utf8valid(i8* noundef nonnull %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @utf8nvalid(i8* noundef %0, i64 noundef -1) #4
  ret i8* %call
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define weak dso_local i8* @utf8nvalid(i8* noundef nonnull %str, i64 noundef %n) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %t = alloca i8*, align 8
  %consumed = alloca i64, align 8
  %remaining = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %t, align 8
  store i64 0, i64* %consumed, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end140, %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8*, i8** %t, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %consumed, align 8
  %3 = load i64, i64* %consumed, align 8
  %4 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp ne i32 0, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, i64* %n.addr, align 8
  %9 = load i64, i64* %consumed, align 8
  %sub = sub i64 %8, %9
  store i64 %sub, i64* %remaining, align 8
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv3 = sext i8 %11 to i32
  %and = and i32 248, %conv3
  %cmp4 = icmp eq i32 240, %and
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i64, i64* %remaining, align 8
  %cmp6 = icmp ult i64 %12, 4
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %13 = load i8*, i8** %str.addr, align 8
  store i8* %13, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %15 to i32
  %and10 = and i32 192, %conv9
  %cmp11 = icmp ne i32 128, %and10
  br i1 %cmp11, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load i8*, i8** %str.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  %and15 = and i32 192, %conv14
  %cmp16 = icmp ne i32 128, %and15
  br i1 %cmp16, label %if.then24, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %18 = load i8*, i8** %str.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %18, i64 3
  %19 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %19 to i32
  %and21 = and i32 192, %conv20
  %cmp22 = icmp ne i32 128, %and21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false18, %lor.lhs.false, %if.end
  %20 = load i8*, i8** %str.addr, align 8
  store i8* %20, i8** %retval, align 8
  br label %return

if.end25:                                         ; preds = %lor.lhs.false18
  %21 = load i64, i64* %remaining, align 8
  %cmp26 = icmp ne i64 %21, 4
  br i1 %cmp26, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end25
  %22 = load i8*, i8** %str.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %22, i64 4
  %23 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %23 to i32
  %and30 = and i32 192, %conv29
  %cmp31 = icmp eq i32 128, %and30
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true
  %24 = load i8*, i8** %str.addr, align 8
  store i8* %24, i8** %retval, align 8
  br label %return

if.end34:                                         ; preds = %land.lhs.true, %if.end25
  %25 = load i8*, i8** %str.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %26 to i32
  %and37 = and i32 7, %conv36
  %cmp38 = icmp eq i32 0, %and37
  br i1 %cmp38, label %land.lhs.true40, label %if.end47

land.lhs.true40:                                  ; preds = %if.end34
  %27 = load i8*, i8** %str.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %28 to i32
  %and43 = and i32 48, %conv42
  %cmp44 = icmp eq i32 0, %and43
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true40
  %29 = load i8*, i8** %str.addr, align 8
  store i8* %29, i8** %retval, align 8
  br label %return

if.end47:                                         ; preds = %land.lhs.true40, %if.end34
  %30 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %add.ptr, i8** %str.addr, align 8
  br label %if.end140

if.else:                                          ; preds = %while.body
  %31 = load i8*, i8** %str.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv48 = sext i8 %32 to i32
  %and49 = and i32 240, %conv48
  %cmp50 = icmp eq i32 224, %and49
  br i1 %cmp50, label %if.then52, label %if.else94

if.then52:                                        ; preds = %if.else
  %33 = load i64, i64* %remaining, align 8
  %cmp53 = icmp ult i64 %33, 3
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then52
  %34 = load i8*, i8** %str.addr, align 8
  store i8* %34, i8** %retval, align 8
  br label %return

if.end56:                                         ; preds = %if.then52
  %35 = load i8*, i8** %str.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %36 to i32
  %and59 = and i32 192, %conv58
  %cmp60 = icmp ne i32 128, %and59
  br i1 %cmp60, label %if.then68, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.end56
  %37 = load i8*, i8** %str.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %37, i64 2
  %38 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %38 to i32
  %and65 = and i32 192, %conv64
  %cmp66 = icmp ne i32 128, %and65
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %lor.lhs.false62, %if.end56
  %39 = load i8*, i8** %str.addr, align 8
  store i8* %39, i8** %retval, align 8
  br label %return

if.end69:                                         ; preds = %lor.lhs.false62
  %40 = load i64, i64* %remaining, align 8
  %cmp70 = icmp ne i64 %40, 3
  br i1 %cmp70, label %land.lhs.true72, label %if.end79

land.lhs.true72:                                  ; preds = %if.end69
  %41 = load i8*, i8** %str.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %42 to i32
  %and75 = and i32 192, %conv74
  %cmp76 = icmp eq i32 128, %and75
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %land.lhs.true72
  %43 = load i8*, i8** %str.addr, align 8
  store i8* %43, i8** %retval, align 8
  br label %return

if.end79:                                         ; preds = %land.lhs.true72, %if.end69
  %44 = load i8*, i8** %str.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx80, align 1
  %conv81 = sext i8 %45 to i32
  %and82 = and i32 15, %conv81
  %cmp83 = icmp eq i32 0, %and82
  br i1 %cmp83, label %land.lhs.true85, label %if.end92

land.lhs.true85:                                  ; preds = %if.end79
  %46 = load i8*, i8** %str.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %47 to i32
  %and88 = and i32 32, %conv87
  %cmp89 = icmp eq i32 0, %and88
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %land.lhs.true85
  %48 = load i8*, i8** %str.addr, align 8
  store i8* %48, i8** %retval, align 8
  br label %return

if.end92:                                         ; preds = %land.lhs.true85, %if.end79
  %49 = load i8*, i8** %str.addr, align 8
  %add.ptr93 = getelementptr inbounds i8, i8* %49, i64 3
  store i8* %add.ptr93, i8** %str.addr, align 8
  br label %if.end139

if.else94:                                        ; preds = %if.else
  %50 = load i8*, i8** %str.addr, align 8
  %51 = load i8, i8* %50, align 1
  %conv95 = sext i8 %51 to i32
  %and96 = and i32 224, %conv95
  %cmp97 = icmp eq i32 192, %and96
  br i1 %cmp97, label %if.then99, label %if.else129

if.then99:                                        ; preds = %if.else94
  %52 = load i64, i64* %remaining, align 8
  %cmp100 = icmp ult i64 %52, 2
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then99
  %53 = load i8*, i8** %str.addr, align 8
  store i8* %53, i8** %retval, align 8
  br label %return

if.end103:                                        ; preds = %if.then99
  %54 = load i8*, i8** %str.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %55 to i32
  %and106 = and i32 192, %conv105
  %cmp107 = icmp ne i32 128, %and106
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end103
  %56 = load i8*, i8** %str.addr, align 8
  store i8* %56, i8** %retval, align 8
  br label %return

if.end110:                                        ; preds = %if.end103
  %57 = load i64, i64* %remaining, align 8
  %cmp111 = icmp ne i64 %57, 2
  br i1 %cmp111, label %land.lhs.true113, label %if.end120

land.lhs.true113:                                 ; preds = %if.end110
  %58 = load i8*, i8** %str.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %58, i64 2
  %59 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %59 to i32
  %and116 = and i32 192, %conv115
  %cmp117 = icmp eq i32 128, %and116
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %land.lhs.true113
  %60 = load i8*, i8** %str.addr, align 8
  store i8* %60, i8** %retval, align 8
  br label %return

if.end120:                                        ; preds = %land.lhs.true113, %if.end110
  %61 = load i8*, i8** %str.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %62 to i32
  %and123 = and i32 30, %conv122
  %cmp124 = icmp eq i32 0, %and123
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end120
  %63 = load i8*, i8** %str.addr, align 8
  store i8* %63, i8** %retval, align 8
  br label %return

if.end127:                                        ; preds = %if.end120
  %64 = load i8*, i8** %str.addr, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %add.ptr128, i8** %str.addr, align 8
  br label %if.end138

if.else129:                                       ; preds = %if.else94
  %65 = load i8*, i8** %str.addr, align 8
  %66 = load i8, i8* %65, align 1
  %conv130 = sext i8 %66 to i32
  %and131 = and i32 128, %conv130
  %cmp132 = icmp eq i32 0, %and131
  br i1 %cmp132, label %if.then134, label %if.else136

if.then134:                                       ; preds = %if.else129
  %67 = load i8*, i8** %str.addr, align 8
  %add.ptr135 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %add.ptr135, i8** %str.addr, align 8
  br label %if.end137

if.else136:                                       ; preds = %if.else129
  %68 = load i8*, i8** %str.addr, align 8
  store i8* %68, i8** %retval, align 8
  br label %return

if.end137:                                        ; preds = %if.then134
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end127
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end92
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end47
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %land.end
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.else136, %if.then126, %if.then119, %if.then109, %if.then102, %if.then91, %if.then78, %if.then68, %if.then55, %if.then46, %if.then33, %if.then24, %if.then8
  %69 = load i8*, i8** %retval, align 8
  ret i8* %69
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i32 @utf8makevalid(i8* noundef nonnull %str, i32 noundef %replacement) #1 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %replacement.addr = alloca i32, align 4
  %read = alloca i8*, align 8
  %write = alloca i8*, align 8
  %r = alloca i8, align 1
  %codepoint = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %replacement, i32* %replacement.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %read, align 8
  %1 = load i8*, i8** %read, align 8
  store i8* %1, i8** %write, align 8
  %2 = load i32, i32* %replacement.addr, align 4
  %conv = trunc i32 %2 to i8
  store i8 %conv, i8* %r, align 1
  store i32 0, i32* %codepoint, align 4
  %3 = load i32, i32* %replacement.addr, align 4
  %cmp = icmp sgt i32 %3, 127
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end81, %if.else75, %if.then61, %if.then44, %if.then24, %if.end
  %4 = load i8*, i8** %read, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 0, %conv2
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %read, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %and = and i32 248, %conv5
  %cmp6 = icmp eq i32 240, %and
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  %8 = load i8*, i8** %read, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %9 to i32
  %and10 = and i32 192, %conv9
  %cmp11 = icmp ne i32 128, %and10
  br i1 %cmp11, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then8
  %10 = load i8*, i8** %read, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %11 to i32
  %and15 = and i32 192, %conv14
  %cmp16 = icmp ne i32 128, %and15
  br i1 %cmp16, label %if.then24, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %12 = load i8*, i8** %read, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %13 to i32
  %and21 = and i32 192, %conv20
  %cmp22 = icmp ne i32 128, %and21
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %lor.lhs.false18, %lor.lhs.false, %if.then8
  %14 = load i8, i8* %r, align 1
  %15 = load i8*, i8** %write, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %write, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8*, i8** %read, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr25, i8** %read, align 8
  br label %while.cond, !llvm.loop !41

if.end26:                                         ; preds = %lor.lhs.false18
  %17 = load i8*, i8** %read, align 8
  %call = call i8* @utf8codepoint(i8* noundef %17, i32* noundef %codepoint)
  store i8* %call, i8** %read, align 8
  %18 = load i8*, i8** %write, align 8
  %19 = load i32, i32* %codepoint, align 4
  %call27 = call i8* @utf8catcodepoint(i8* noundef %18, i32 noundef %19, i64 noundef 4)
  store i8* %call27, i8** %write, align 8
  br label %if.end81

if.else:                                          ; preds = %while.body
  %20 = load i8*, i8** %read, align 8
  %21 = load i8, i8* %20, align 1
  %conv28 = sext i8 %21 to i32
  %and29 = and i32 240, %conv28
  %cmp30 = icmp eq i32 224, %and29
  br i1 %cmp30, label %if.then32, label %if.else50

if.then32:                                        ; preds = %if.else
  %22 = load i8*, i8** %read, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %23 to i32
  %and35 = and i32 192, %conv34
  %cmp36 = icmp ne i32 128, %and35
  br i1 %cmp36, label %if.then44, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.then32
  %24 = load i8*, i8** %read, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %25 to i32
  %and41 = and i32 192, %conv40
  %cmp42 = icmp ne i32 128, %and41
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %lor.lhs.false38, %if.then32
  %26 = load i8, i8* %r, align 1
  %27 = load i8*, i8** %write, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr45, i8** %write, align 8
  store i8 %26, i8* %27, align 1
  %28 = load i8*, i8** %read, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr46, i8** %read, align 8
  br label %while.cond, !llvm.loop !41

if.end47:                                         ; preds = %lor.lhs.false38
  %29 = load i8*, i8** %read, align 8
  %call48 = call i8* @utf8codepoint(i8* noundef %29, i32* noundef %codepoint)
  store i8* %call48, i8** %read, align 8
  %30 = load i8*, i8** %write, align 8
  %31 = load i32, i32* %codepoint, align 4
  %call49 = call i8* @utf8catcodepoint(i8* noundef %30, i32 noundef %31, i64 noundef 3)
  store i8* %call49, i8** %write, align 8
  br label %if.end80

if.else50:                                        ; preds = %if.else
  %32 = load i8*, i8** %read, align 8
  %33 = load i8, i8* %32, align 1
  %conv51 = sext i8 %33 to i32
  %and52 = and i32 224, %conv51
  %cmp53 = icmp eq i32 192, %and52
  br i1 %cmp53, label %if.then55, label %if.else67

if.then55:                                        ; preds = %if.else50
  %34 = load i8*, i8** %read, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %35 to i32
  %and58 = and i32 192, %conv57
  %cmp59 = icmp ne i32 128, %and58
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.then55
  %36 = load i8, i8* %r, align 1
  %37 = load i8*, i8** %write, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr62, i8** %write, align 8
  store i8 %36, i8* %37, align 1
  %38 = load i8*, i8** %read, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr63, i8** %read, align 8
  br label %while.cond, !llvm.loop !41

if.end64:                                         ; preds = %if.then55
  %39 = load i8*, i8** %read, align 8
  %call65 = call i8* @utf8codepoint(i8* noundef %39, i32* noundef %codepoint)
  store i8* %call65, i8** %read, align 8
  %40 = load i8*, i8** %write, align 8
  %41 = load i32, i32* %codepoint, align 4
  %call66 = call i8* @utf8catcodepoint(i8* noundef %40, i32 noundef %41, i64 noundef 2)
  store i8* %call66, i8** %write, align 8
  br label %if.end79

if.else67:                                        ; preds = %if.else50
  %42 = load i8*, i8** %read, align 8
  %43 = load i8, i8* %42, align 1
  %conv68 = sext i8 %43 to i32
  %and69 = and i32 128, %conv68
  %cmp70 = icmp eq i32 0, %and69
  br i1 %cmp70, label %if.then72, label %if.else75

if.then72:                                        ; preds = %if.else67
  %44 = load i8*, i8** %read, align 8
  %call73 = call i8* @utf8codepoint(i8* noundef %44, i32* noundef %codepoint)
  store i8* %call73, i8** %read, align 8
  %45 = load i8*, i8** %write, align 8
  %46 = load i32, i32* %codepoint, align 4
  %call74 = call i8* @utf8catcodepoint(i8* noundef %45, i32 noundef %46, i64 noundef 1)
  store i8* %call74, i8** %write, align 8
  br label %if.end78

if.else75:                                        ; preds = %if.else67
  %47 = load i8, i8* %r, align 1
  %48 = load i8*, i8** %write, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr76, i8** %write, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i8*, i8** %read, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr77, i8** %read, align 8
  br label %while.cond, !llvm.loop !41

if.end78:                                         ; preds = %if.then72
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end64
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end47
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end26
  br label %while.cond, !llvm.loop !41

while.end:                                        ; preds = %while.cond
  %50 = load i8*, i8** %write, align 8
  store i8 0, i8* %50, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %51 = load i32, i32* %retval, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8catcodepoint(i8* noundef nonnull %str, i32 noundef %chr, i64 noundef %n) #1 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %chr.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %chr, i32* %chr.addr, align 4
  store i64 %n, i64* %n.addr, align 8
  %0 = load i32, i32* %chr.addr, align 4
  %and = and i32 -128, %0
  %cmp = icmp eq i32 0, %and
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp ult i64 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load i32, i32* %chr.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %4 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %add.ptr, i8** %str.addr, align 8
  br label %if.end88

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %chr.addr, align 4
  %and3 = and i32 -2048, %5
  %cmp4 = icmp eq i32 0, %and3
  br i1 %cmp4, label %if.then6, label %if.else23

if.then6:                                         ; preds = %if.else
  %6 = load i64, i64* %n.addr, align 8
  %cmp7 = icmp ult i64 %6, 2
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  store i8* null, i8** %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.then6
  %7 = load i32, i32* %chr.addr, align 4
  %shr = ashr i32 %7, 6
  %and11 = and i32 %shr, 31
  %conv12 = trunc i32 %and11 to i8
  %conv13 = sext i8 %conv12 to i32
  %or = or i32 192, %conv13
  %conv14 = trunc i32 %or to i8
  %8 = load i8*, i8** %str.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %conv14, i8* %arrayidx15, align 1
  %9 = load i32, i32* %chr.addr, align 4
  %and16 = and i32 %9, 63
  %conv17 = trunc i32 %and16 to i8
  %conv18 = sext i8 %conv17 to i32
  %or19 = or i32 128, %conv18
  %conv20 = trunc i32 %or19 to i8
  %10 = load i8*, i8** %str.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 %conv20, i8* %arrayidx21, align 1
  %11 = load i8*, i8** %str.addr, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %add.ptr22, i8** %str.addr, align 8
  br label %if.end87

if.else23:                                        ; preds = %if.else
  %12 = load i32, i32* %chr.addr, align 4
  %and24 = and i32 -65536, %12
  %cmp25 = icmp eq i32 0, %and24
  br i1 %cmp25, label %if.then27, label %if.else53

if.then27:                                        ; preds = %if.else23
  %13 = load i64, i64* %n.addr, align 8
  %cmp28 = icmp ult i64 %13, 3
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  store i8* null, i8** %retval, align 8
  br label %return

if.end31:                                         ; preds = %if.then27
  %14 = load i32, i32* %chr.addr, align 4
  %shr32 = ashr i32 %14, 12
  %and33 = and i32 %shr32, 15
  %conv34 = trunc i32 %and33 to i8
  %conv35 = sext i8 %conv34 to i32
  %or36 = or i32 224, %conv35
  %conv37 = trunc i32 %or36 to i8
  %15 = load i8*, i8** %str.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %conv37, i8* %arrayidx38, align 1
  %16 = load i32, i32* %chr.addr, align 4
  %shr39 = ashr i32 %16, 6
  %and40 = and i32 %shr39, 63
  %conv41 = trunc i32 %and40 to i8
  %conv42 = sext i8 %conv41 to i32
  %or43 = or i32 128, %conv42
  %conv44 = trunc i32 %or43 to i8
  %17 = load i8*, i8** %str.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %conv44, i8* %arrayidx45, align 1
  %18 = load i32, i32* %chr.addr, align 4
  %and46 = and i32 %18, 63
  %conv47 = trunc i32 %and46 to i8
  %conv48 = sext i8 %conv47 to i32
  %or49 = or i32 128, %conv48
  %conv50 = trunc i32 %or49 to i8
  %19 = load i8*, i8** %str.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %conv50, i8* %arrayidx51, align 1
  %20 = load i8*, i8** %str.addr, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %20, i64 3
  store i8* %add.ptr52, i8** %str.addr, align 8
  br label %if.end86

if.else53:                                        ; preds = %if.else23
  %21 = load i64, i64* %n.addr, align 8
  %cmp54 = icmp ult i64 %21, 4
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.else53
  store i8* null, i8** %retval, align 8
  br label %return

if.end57:                                         ; preds = %if.else53
  %22 = load i32, i32* %chr.addr, align 4
  %shr58 = ashr i32 %22, 18
  %and59 = and i32 %shr58, 7
  %conv60 = trunc i32 %and59 to i8
  %conv61 = sext i8 %conv60 to i32
  %or62 = or i32 240, %conv61
  %conv63 = trunc i32 %or62 to i8
  %23 = load i8*, i8** %str.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %conv63, i8* %arrayidx64, align 1
  %24 = load i32, i32* %chr.addr, align 4
  %shr65 = ashr i32 %24, 12
  %and66 = and i32 %shr65, 63
  %conv67 = trunc i32 %and66 to i8
  %conv68 = sext i8 %conv67 to i32
  %or69 = or i32 128, %conv68
  %conv70 = trunc i32 %or69 to i8
  %25 = load i8*, i8** %str.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %conv70, i8* %arrayidx71, align 1
  %26 = load i32, i32* %chr.addr, align 4
  %shr72 = ashr i32 %26, 6
  %and73 = and i32 %shr72, 63
  %conv74 = trunc i32 %and73 to i8
  %conv75 = sext i8 %conv74 to i32
  %or76 = or i32 128, %conv75
  %conv77 = trunc i32 %or76 to i8
  %27 = load i8*, i8** %str.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %conv77, i8* %arrayidx78, align 1
  %28 = load i32, i32* %chr.addr, align 4
  %and79 = and i32 %28, 63
  %conv80 = trunc i32 %and79 to i8
  %conv81 = sext i8 %conv80 to i32
  %or82 = or i32 128, %conv81
  %conv83 = trunc i32 %or82 to i8
  %29 = load i8*, i8** %str.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %29, i64 3
  store i8 %conv83, i8* %arrayidx84, align 1
  %30 = load i8*, i8** %str.addr, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %add.ptr85, i8** %str.addr, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.end57, %if.end31
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end10
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end
  %31 = load i8*, i8** %str.addr, align 8
  store i8* %31, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end88, %if.then56, %if.then30, %if.then9, %if.then2
  %32 = load i8*, i8** %retval, align 8
  ret i8* %32
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i32 @utf8islower(i32 noundef %chr) #1 {
entry:
  %chr.addr = alloca i32, align 4
  store i32 %chr, i32* %chr.addr, align 4
  %0 = load i32, i32* %chr.addr, align 4
  %1 = load i32, i32* %chr.addr, align 4
  %call = call i32 @utf8uprcodepoint(i32 noundef %1)
  %cmp = icmp ne i32 %0, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i32 @utf8isupper(i32 noundef %chr) #1 {
entry:
  %chr.addr = alloca i32, align 4
  store i32 %chr, i32* %chr.addr, align 4
  %0 = load i32, i32* %chr.addr, align 4
  %1 = load i32, i32* %chr.addr, align 4
  %call = call i32 @utf8lwrcodepoint(i32 noundef %1)
  %cmp = icmp ne i32 %0, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local void @utf8lwr(i8* noalias noundef nonnull %str) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %cp = alloca i32, align 4
  %pn = alloca i8*, align 8
  %lwr_cp = alloca i32, align 4
  %size = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %cp, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @utf8codepoint(i8* noundef %0, i32* noundef %cp)
  store i8* %call, i8** %pn, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %cp, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %cp, align 4
  %call1 = call i32 @utf8lwrcodepoint(i32 noundef %2)
  store i32 %call1, i32* %lwr_cp, align 4
  %3 = load i32, i32* %lwr_cp, align 4
  %call2 = call i64 @utf8codepointsize(i32 noundef %3)
  store i64 %call2, i64* %size, align 8
  %4 = load i32, i32* %lwr_cp, align 4
  %5 = load i32, i32* %cp, align 4
  %cmp3 = icmp ne i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i32, i32* %lwr_cp, align 4
  %8 = load i64, i64* %size, align 8
  %call4 = call i8* @utf8catcodepoint(i8* noundef %6, i32 noundef %7, i64 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i8*, i8** %pn, align 8
  store i8* %9, i8** %str.addr, align 8
  %10 = load i8*, i8** %str.addr, align 8
  %call5 = call i8* @utf8codepoint(i8* noundef %10, i32* noundef %cp)
  store i8* %call5, i8** %pn, align 8
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local void @utf8upr(i8* noalias noundef nonnull %str) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %cp = alloca i32, align 4
  %pn = alloca i8*, align 8
  %lwr_cp = alloca i32, align 4
  %size = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %cp, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @utf8codepoint(i8* noundef %0, i32* noundef %cp)
  store i8* %call, i8** %pn, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %cp, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %cp, align 4
  %call1 = call i32 @utf8uprcodepoint(i32 noundef %2)
  store i32 %call1, i32* %lwr_cp, align 4
  %3 = load i32, i32* %lwr_cp, align 4
  %call2 = call i64 @utf8codepointsize(i32 noundef %3)
  store i64 %call2, i64* %size, align 8
  %4 = load i32, i32* %lwr_cp, align 4
  %5 = load i32, i32* %cp, align 4
  %cmp3 = icmp ne i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i32, i32* %lwr_cp, align 4
  %8 = load i64, i64* %size, align 8
  %call4 = call i8* @utf8catcodepoint(i8* noundef %6, i32 noundef %7, i64 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i8*, i8** %pn, align 8
  store i8* %9, i8** %str.addr, align 8
  %10 = load i8*, i8** %str.addr, align 8
  %call5 = call i8* @utf8codepoint(i8* noundef %10, i32* noundef %cp)
  store i8* %call5, i8** %pn, align 8
  br label %while.cond, !llvm.loop !43

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i8* @utf8rcodepoint(i8* noalias noundef nonnull %str, i32* noalias noundef nonnull %out_codepoint) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %out_codepoint.addr = alloca i32*, align 8
  %s = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32* %out_codepoint, i32** %out_codepoint.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %and = and i32 248, %conv
  %cmp = icmp eq i32 240, %and
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %s, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %and4 = and i32 7, %conv3
  %shl = shl i32 %and4, 18
  %5 = load i8*, i8** %s, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %6 to i32
  %and7 = and i32 63, %conv6
  %shl8 = shl i32 %and7, 12
  %or = or i32 %shl, %shl8
  %7 = load i8*, i8** %s, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %8 to i32
  %and11 = and i32 63, %conv10
  %shl12 = shl i32 %and11, 6
  %or13 = or i32 %or, %shl12
  %9 = load i8*, i8** %s, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %9, i64 3
  %10 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %10 to i32
  %and16 = and i32 63, %conv15
  %or17 = or i32 %or13, %and16
  %11 = load i32*, i32** %out_codepoint.addr, align 8
  store i32 %or17, i32* %11, align 4
  br label %if.end56

if.else:                                          ; preds = %entry
  %12 = load i8*, i8** %s, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %13 to i32
  %and20 = and i32 240, %conv19
  %cmp21 = icmp eq i32 224, %and20
  br i1 %cmp21, label %if.then23, label %if.else37

if.then23:                                        ; preds = %if.else
  %14 = load i8*, i8** %s, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %15 to i32
  %and26 = and i32 15, %conv25
  %shl27 = shl i32 %and26, 12
  %16 = load i8*, i8** %s, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %17 to i32
  %and30 = and i32 63, %conv29
  %shl31 = shl i32 %and30, 6
  %or32 = or i32 %shl27, %shl31
  %18 = load i8*, i8** %s, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %19 to i32
  %and35 = and i32 63, %conv34
  %or36 = or i32 %or32, %and35
  %20 = load i32*, i32** %out_codepoint.addr, align 8
  store i32 %or36, i32* %20, align 4
  br label %if.end55

if.else37:                                        ; preds = %if.else
  %21 = load i8*, i8** %s, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %22 to i32
  %and40 = and i32 224, %conv39
  %cmp41 = icmp eq i32 192, %and40
  br i1 %cmp41, label %if.then43, label %if.else52

if.then43:                                        ; preds = %if.else37
  %23 = load i8*, i8** %s, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %24 to i32
  %and46 = and i32 31, %conv45
  %shl47 = shl i32 %and46, 6
  %25 = load i8*, i8** %s, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %26 to i32
  %and50 = and i32 63, %conv49
  %or51 = or i32 %shl47, %and50
  %27 = load i32*, i32** %out_codepoint.addr, align 8
  store i32 %or51, i32* %27, align 4
  br label %if.end

if.else52:                                        ; preds = %if.else37
  %28 = load i8*, i8** %s, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %29 to i32
  %30 = load i32*, i32** %out_codepoint.addr, align 8
  store i32 %conv54, i32* %30, align 4
  br label %if.end

if.end:                                           ; preds = %if.else52, %if.then43
  br label %if.end55

if.end55:                                         ; preds = %if.end, %if.then23
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end56
  %31 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %32 = load i8*, i8** %s, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %33 to i32
  %and59 = and i32 128, %conv58
  %cmp60 = icmp ne i32 0, %and59
  br i1 %cmp60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %34 = load i8*, i8** %s, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %35 to i32
  %and64 = and i32 192, %conv63
  %cmp65 = icmp eq i32 128, %and64
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %36 = phi i1 [ false, %do.cond ], [ %cmp65, %land.rhs ]
  br i1 %36, label %do.body, label %do.end, !llvm.loop !44

do.end:                                           ; preds = %land.end
  %37 = load i8*, i8** %s, align 8
  ret i8* %37
}

attributes #0 = { noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
