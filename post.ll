; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

declare float @llvm.trax.loadf(i32, i32) nounwind

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

define i32 @main() nounwind ssp {
entry:
  %stack.i = alloca [32 x i32], align 4
  %0 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %1 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %2 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %3 = call float @llvm.trax.loadf(i32 0, i32 2)
  %4 = call float @llvm.trax.loadf(i32 0, i32 5)
  %5 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %6 = call float @llvm.trax.loadf(i32 %5, i32 0) nounwind
  %7 = call float @llvm.trax.loadf(i32 %5, i32 1) nounwind
  %8 = call float @llvm.trax.loadf(i32 %5, i32 2) nounwind
  %9 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %10 = call float @llvm.trax.loadf(i32 %9, i32 0) nounwind
  %11 = call float @llvm.trax.loadf(i32 %9, i32 1) nounwind
  %12 = call float @llvm.trax.loadf(i32 %9, i32 2) nounwind
  %13 = add nsw i32 %9, 9
  %14 = call float @llvm.trax.loadf(i32 %13, i32 0) nounwind
  %15 = call float @llvm.trax.loadf(i32 %13, i32 1) nounwind
  %16 = call float @llvm.trax.loadf(i32 %13, i32 2) nounwind
  %17 = add nsw i32 %9, 12
  %18 = call float @llvm.trax.loadf(i32 %17, i32 0) nounwind
  %19 = call float @llvm.trax.loadf(i32 %17, i32 1) nounwind
  %20 = call float @llvm.trax.loadf(i32 %17, i32 2) nounwind
  %21 = add nsw i32 %9, 15
  %22 = call float @llvm.trax.loadf(i32 %21, i32 0) nounwind
  %23 = call float @llvm.trax.loadf(i32 %21, i32 1) nounwind
  %24 = call float @llvm.trax.loadf(i32 %21, i32 2) nounwind
  %25 = add nsw i32 %9, 18
  %26 = call float @llvm.trax.loadf(i32 %25, i32 0) nounwind
  %27 = call float @llvm.trax.loadf(i32 %25, i32 1) nounwind
  %28 = call float @llvm.trax.loadf(i32 %25, i32 2) nounwind
  %29 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %30 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %31 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %32 = call i32 @llvm.trax.atominc(i32 0)
  %33 = mul nsw i32 %1, %0
  %34 = sitofp i32 %0 to float
  %35 = fdiv float %34, -2.000000e+00
  %36 = sitofp i32 %1 to float
  %37 = fdiv float %36, -2.000000e+00
  %38 = icmp sgt i32 %33, %32
  br i1 %38, label %bb.lr.ph, label %return

bb.lr.ph:                                         ; preds = %entry
  %tmp436 = bitcast float %10 to i32
  %tmp437 = zext i32 %tmp436 to i192
  %tmp380 = bitcast float %11 to i32
  %tmp381 = zext i32 %tmp380 to i192
  %tmp382 = shl nuw nsw i192 %tmp381, 32
  %tmp370 = bitcast float %12 to i32
  %tmp371 = zext i32 %tmp370 to i192
  %tmp372 = shl nuw nsw i192 %tmp371, 64
  %mask373 = or i192 %tmp382, %tmp437
  %mask429 = or i192 %mask373, %tmp372
  %tmp1998 = zext i32 %tmp436 to i96
  %tmp1993 = trunc i192 %tmp382 to i96
  %ins1995 = or i96 %tmp1993, %tmp1998
  %tmp1416 = zext i96 %ins1995 to i128
  %tmp1411 = trunc i192 %tmp372 to i128
  %mask1412 = or i128 %tmp1416, %tmp1411
  br label %bb

bb:                                               ; preds = %bb19, %bb.lr.ph
  %storemerge755 = phi i32 [ %32, %bb.lr.ph ], [ %497, %bb19 ]
  %memtmp4.i95.1748 = phi i128 [ undef, %bb.lr.ph ], [ %ins1435, %bb19 ]
  %memtmp46.i.2744 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp46.i.0, %bb19 ]
  %memtmp.i42.1738 = phi i128 [ undef, %bb.lr.ph ], [ %ins904, %bb19 ]
  %memtmp.1736 = phi i128 [ undef, %bb.lr.ph ], [ %ins192, %bb19 ]
  %memtmp20.0735 = phi i128 [ undef, %bb.lr.ph ], [ %ins, %bb19 ]
  %mask495598.off64734 = phi i32 [ 0, %bb.lr.ph ], [ %tmp415, %bb19 ]
  %mask495598.off32733 = phi i32 [ 0, %bb.lr.ph ], [ %tmp2495, %bb19 ]
  %mask495598.off0732 = phi i32 [ 0, %bb.lr.ph ], [ %tmp2501, %bb19 ]
  %mask317603731 = phi i512 [ undef, %bb.lr.ph ], [ %mask317605, %bb19 ]
  %39 = sdiv i32 %storemerge755, %0
  %40 = srem i32 %storemerge755, %0
  %41 = sitofp i32 %40 to float
  %42 = fadd float %41, %35
  %43 = fadd float %42, 5.000000e-01
  %44 = fmul float %43, 2.000000e+00
  %45 = fdiv float %44, %34
  %46 = sitofp i32 %39 to float
  %47 = fadd float %46, %37
  %48 = fadd float %47, 5.000000e-01
  %49 = fmul float %48, 2.000000e+00
  %50 = fdiv float %49, %36
  br label %bb2

bb2:                                              ; preds = %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit, %bb
  %storemerge1730 = phi i32 [ 0, %bb ], [ %489, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp4.i95.0723 = phi i128 [ %memtmp4.i95.1748, %bb ], [ %ins1435, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp46.i.1719 = phi i128 [ %memtmp46.i.2744, %bb ], [ %memtmp46.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i42.0713 = phi i128 [ %memtmp.i42.1738, %bb ], [ %ins904, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.0711 = phi i128 [ %memtmp.1736, %bb ], [ %ins192, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %mask495597.off64710 = phi i32 [ %mask495598.off64734, %bb ], [ %tmp461, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %mask495597.off32709 = phi i32 [ %mask495598.off32733, %bb ], [ %tmp475, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %mask495597.off0708 = phi i32 [ %mask495598.off0732, %bb ], [ %tmp490, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %mask317604707 = phi i512 [ %mask317603731, %bb ], [ %mask317605, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %51 = call float @llvm.trax.rand()
  %52 = fadd float %51, -5.000000e-01
  %53 = fmul float %52, 2.000000e+00
  %54 = call float @llvm.trax.rand()
  %55 = fadd float %54, -5.000000e-01
  %56 = fmul float %55, 2.000000e+00
  %57 = fmul float %53, %3
  %58 = fmul float %56, %4
  %59 = fsub float %50, %58
  %60 = fsub float %45, %57
  %61 = fmul float %26, %59
  %62 = fmul float %27, %59
  %63 = fmul float %28, %59
  %tmp1049 = bitcast float %61 to i32
  %tmp1050 = zext i32 %tmp1049 to i96
  %tmp1043 = bitcast float %62 to i32
  %tmp1044 = zext i32 %tmp1043 to i96
  %tmp1045 = shl nuw nsw i96 %tmp1044, 32
  %ins1047 = or i96 %tmp1045, %tmp1050
  %tmp1037 = bitcast float %63 to i32
  %tmp907 = zext i96 %ins1047 to i128
  %mask908 = and i128 %memtmp.i42.0713, -79228162514264337593543950336
  %tmp901 = zext i32 %tmp1037 to i128
  %tmp902 = shl nuw nsw i128 %tmp901, 64
  %mask903 = or i128 %tmp902, %mask908
  %ins904 = or i128 %mask903, %tmp907
  %ins904.tr = trunc i128 %ins904 to i96
  %64 = fmul float %22, %60
  %65 = fmul float %23, %60
  %66 = fmul float %24, %60
  %tmp931 = lshr i96 %ins904.tr, 64
  %tmp932 = trunc i96 %tmp931 to i32
  %tmp933 = bitcast i32 %tmp932 to float
  %67 = fadd float %61, %64
  %68 = fadd float %62, %65
  %69 = fadd float %66, %tmp933
  %70 = fadd float %67, %18
  %71 = fadd float %68, %19
  %72 = fadd float %20, %69
  %73 = fmul float %70, %70
  %74 = fmul float %71, %71
  %75 = fadd float %73, %74
  %76 = fmul float %72, %72
  %77 = fadd float %75, %76
  %78 = call float @llvm.trax.invsqrt(float %77) nounwind
  %79 = fdiv float 1.000000e+00, %78
  %80 = fdiv float %72, %79
  %81 = fdiv float %71, %79
  %82 = fdiv float %70, %79
  %tmp426 = bitcast float %82 to i32
  %tmp427 = zext i32 %tmp426 to i192
  %tmp428 = shl nuw nsw i192 %tmp427, 96
  %tmp406 = bitcast float %81 to i32
  %tmp407 = zext i32 %tmp406 to i192
  %tmp408 = shl nuw nsw i192 %tmp407, 128
  %tmp390 = bitcast float %80 to i32
  %tmp391 = zext i32 %tmp390 to i192
  %tmp392 = shl nuw i192 %tmp391, 160
  %mask409 = or i192 %mask429, %tmp408
  %mask393 = or i192 %mask409, %tmp428
  %ins394 = or i192 %mask393, %tmp392
  %mask292 = and i512 %mask317604707, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins293 = or i512 %mask292, 1343554297
  %tmp324 = lshr i192 %ins394, 160
  %tmp325 = trunc i192 %tmp324 to i32
  %tmp326 = bitcast i32 %tmp325 to float
  br label %bb.outer.i80

bb.outer.i80:                                     ; preds = %bb9.i180, %bb2
  %mask317606 = phi i512 [ %ins293, %bb2 ], [ %mask317605, %bb9.i180 ]
  %node_id.0.ph.i75 = phi i32 [ 0, %bb2 ], [ %240, %bb9.i180 ]
  %sp.0.ph.i76 = phi i32 [ -1, %bb2 ], [ %241, %bb9.i180 ]
  %tmp404.i78 = add i32 %sp.0.ph.i76, 1
  %tmp778 = sext i32 %tmp404.i78 to i64
  %tmp780 = zext i32 %sp.0.ph.i76 to i64
  br label %bb.i92

bb.i92:                                           ; preds = %bb3.i108, %bb.outer.i80
  %indvar.i81 = phi i64 [ %indvar.next.i107, %bb3.i108 ], [ 0, %bb.outer.i80 ]
  %node_id.0.i82 = phi i32 [ %118, %bb3.i108 ], [ %node_id.0.ph.i75, %bb.outer.i80 ]
  %tmp779 = add i64 %tmp778, %indvar.i81
  %scevgep.i86 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp779
  %tmp781 = add i64 %tmp780, %indvar.i81
  %sp.0.i84 = trunc i64 %tmp781 to i32
  %83 = shl nsw i32 %node_id.0.i82, 3
  %84 = add nsw i32 %83, %31
  %85 = call float @llvm.trax.loadf(i32 %84, i32 2) nounwind
  %86 = call float @llvm.trax.loadf(i32 %84, i32 1) nounwind
  %87 = call float @llvm.trax.loadf(i32 %84, i32 0) nounwind
  %88 = call float @llvm.trax.loadf(i32 %84, i32 5) nounwind
  %89 = call float @llvm.trax.loadf(i32 %84, i32 4) nounwind
  %90 = call float @llvm.trax.loadf(i32 %84, i32 3) nounwind
  %91 = fsub float %87, %10
  %92 = fdiv float %91, %82
  %93 = fsub float %90, %10
  %94 = fdiv float %93, %82
  %95 = fcmp ogt float %92, %94
  %tx1.i.0.i87 = select i1 %95, float %94, float %92
  %tx2.i.0.i88 = select i1 %95, float %92, float %94
  %96 = fcmp ogt float %tx1.i.0.i87, -1.000000e+10
  %tnear.i.0.i89 = select i1 %96, float %tx1.i.0.i87, float -1.000000e+10
  %97 = fcmp olt float %tx2.i.0.i88, 1.000000e+10
  %tfar.i.0.i90 = select i1 %97, float %tx2.i.0.i88, float 1.000000e+10
  %98 = fcmp ogt float %tnear.i.0.i89, %tfar.i.0.i90
  %99 = fcmp olt float %tfar.i.0.i90, 0.000000e+00
  %or.cond.i91 = or i1 %98, %99
  br i1 %or.cond.i91, label %bb7.i179, label %bb29.i.i98

bb29.i.i98:                                       ; preds = %bb.i92
  %100 = fsub float %86, %11
  %101 = fdiv float %100, %81
  %102 = fsub float %89, %11
  %103 = fdiv float %102, %81
  %104 = fcmp ogt float %101, %103
  %ty1.i.0.i93 = select i1 %104, float %103, float %101
  %ty2.i.0.i94 = select i1 %104, float %101, float %103
  %105 = fcmp ogt float %ty1.i.0.i93, %tnear.i.0.i89
  %tnear.i.1.i95 = select i1 %105, float %ty1.i.0.i93, float %tnear.i.0.i89
  %106 = fcmp olt float %ty2.i.0.i94, %tfar.i.0.i90
  %tfar.i.1.i96 = select i1 %106, float %ty2.i.0.i94, float %tfar.i.0.i90
  %107 = fcmp ogt float %tnear.i.1.i95, %tfar.i.1.i96
  %108 = fcmp olt float %tfar.i.1.i96, 0.000000e+00
  %or.cond1395.i97 = or i1 %107, %108
  br i1 %or.cond1395.i97, label %bb7.i179, label %bb62.i.i104

bb62.i.i104:                                      ; preds = %bb29.i.i98
  %109 = fsub float %85, %12
  %110 = fdiv float %109, %tmp326
  %111 = fsub float %88, %12
  %112 = fdiv float %111, %tmp326
  %113 = fcmp ogt float %110, %112
  %tz1.i.0.i99 = select i1 %113, float %112, float %110
  %tz2.i.0.i100 = select i1 %113, float %110, float %112
  %114 = fcmp ogt float %tz1.i.0.i99, %tnear.i.1.i95
  %tnear.i.2.i101 = select i1 %114, float %tz1.i.0.i99, float %tnear.i.1.i95
  %115 = fcmp olt float %tz2.i.0.i100, %tfar.i.1.i96
  %tfar.i.2.i102 = select i1 %115, float %tz2.i.0.i100, float %tfar.i.1.i96
  %116 = fcmp ogt float %tnear.i.2.i101, %tfar.i.2.i102
  %117 = fcmp olt float %tfar.i.2.i102, 0.000000e+00
  %or.cond1396.i103 = or i1 %116, %117
  br i1 %or.cond1396.i103, label %bb7.i179, label %bb1.i105

bb1.i105:                                         ; preds = %bb62.i.i104
  %118 = call i32 @llvm.trax.loadi(i32 %84, i32 7) nounwind
  %119 = call i32 @llvm.trax.loadi(i32 %84, i32 6) nounwind
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %bb3.i108, label %bb6.preheader.i106

bb6.preheader.i106:                               ; preds = %bb1.i105
  %121 = icmp sgt i32 %119, 0
  br i1 %121, label %bb5.i119, label %bb7.i179

bb3.i108:                                         ; preds = %bb1.i105
  %122 = add nsw i32 %118, 1
  store i32 %122, i32* %scevgep.i86, align 4
  %indvar.next.i107 = add i64 %indvar.i81, 1
  br label %bb.i92

bb5.i119:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178, %bb6.preheader.i106
  %mask317602 = phi i512 [ %mask317601, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178 ], [ %mask317606, %bb6.preheader.i106 ]
  %storemerge388.i109 = phi i32 [ %236, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178 ], [ 0, %bb6.preheader.i106 ]
  %tmp772 = mul i32 %storemerge388.i109, 11
  %tmp396.i111 = add i32 %118, %tmp772
  %123 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 2) nounwind
  %124 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 1) nounwind
  %125 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 0) nounwind
  %126 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 5) nounwind
  %127 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 4) nounwind
  %128 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 3) nounwind
  %129 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 8) nounwind
  %130 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 7) nounwind
  %131 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 6) nounwind
  %132 = call i32 @llvm.trax.loadi(i32 %tmp396.i111, i32 10) nounwind
  %133 = call i32 @llvm.trax.loadi(i32 %tmp396.i111, i32 9) nounwind
  %134 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %135 = mul nsw i32 %132, 25
  %136 = add nsw i32 %134, %135
  %137 = call float @llvm.trax.loadf(i32 %136, i32 6) nounwind
  %138 = call float @llvm.trax.loadf(i32 %136, i32 5) nounwind
  %139 = call float @llvm.trax.loadf(i32 %136, i32 4) nounwind
  %140 = fsub float %125, %131
  %141 = fsub float %124, %130
  %142 = fsub float %123, %129
  %143 = fsub float %128, %131
  %144 = fsub float %127, %130
  %145 = fsub float %126, %129
  %146 = fmul float %141, %145
  %147 = fmul float %144, %142
  %148 = fsub float %146, %147
  %149 = fmul float %143, %142
  %150 = fmul float %140, %145
  %151 = fsub float %149, %150
  %152 = fmul float %144, %140
  %153 = fmul float %143, %141
  %154 = fsub float %152, %153
  %155 = fmul float %148, %148
  %156 = fmul float %151, %151
  %157 = fadd float %155, %156
  %158 = fmul float %154, %154
  %159 = fadd float %157, %158
  %160 = call float @llvm.trax.invsqrt(float %159) nounwind
  %161 = fmul float %81, %145
  %162 = fmul float %144, %tmp326
  %163 = fsub float %161, %162
  %164 = fmul float %143, %tmp326
  %165 = fmul float %82, %145
  %166 = fsub float %164, %165
  %167 = fmul float %144, %82
  %168 = fmul float %143, %81
  %169 = fsub float %167, %168
  %170 = fmul float %163, %140
  %171 = fadd float %170, 0.000000e+00
  %172 = fmul float %166, %141
  %173 = fadd float %172, %171
  %174 = fmul float %169, %142
  %175 = fadd float %174, %173
  %176 = fdiv float 1.000000e+00, %175
  %177 = fsub float %10, %131
  %178 = fsub float %11, %130
  %179 = fsub float %12, %129
  %180 = fmul float %163, %177
  %181 = fadd float %180, 0.000000e+00
  %182 = fmul float %166, %178
  %183 = fadd float %182, %181
  %184 = fmul float %169, %179
  %185 = fadd float %184, %183
  %186 = fmul float %185, %176
  %187 = fcmp olt float %186, 0.000000e+00
  %188 = fcmp ogt float %186, 1.000000e+00
  %or.cond1397.i118 = or i1 %187, %188
  br i1 %or.cond1397.i118, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178, label %bb73.i.i120

bb73.i.i120:                                      ; preds = %bb5.i119
  %189 = fmul float %178, %142
  %190 = fmul float %141, %179
  %191 = fsub float %189, %190
  %192 = fmul float %140, %179
  %193 = fmul float %177, %142
  %194 = fsub float %192, %193
  %195 = fmul float %141, %177
  %196 = fmul float %140, %178
  %197 = fsub float %195, %196
  %198 = fmul float %191, %82
  %199 = fadd float %198, 0.000000e+00
  %200 = fmul float %194, %81
  %201 = fadd float %200, %199
  %202 = fmul float %197, %tmp326
  %203 = fadd float %202, %201
  %204 = fmul float %203, %176
  %205 = fcmp olt float %204, 0.000000e+00
  br i1 %205, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178, label %bb94.i55.i121

bb94.i55.i121:                                    ; preds = %bb73.i.i120
  %206 = fadd float %204, %186
  %207 = fcmp ogt float %206, 1.000000e+00
  br i1 %207, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178, label %bb96.i.i124

bb96.i.i124:                                      ; preds = %bb94.i55.i121
  %208 = fmul float %191, %143
  %209 = fadd float %208, 0.000000e+00
  %210 = fmul float %194, %144
  %211 = fadd float %210, %209
  %212 = fmul float %197, %145
  %213 = fadd float %212, %211
  %214 = fmul float %213, %176
  %215 = fcmp ule float %214, 0.000000e+00
  %216 = fcmp olt float %214, 0x3F50624DE0000000
  %or.cond1398.i122 = or i1 %215, %216
  %217 = fcmp oeq float %214, 1.000000e+10
  %or.cond1399.i123 = or i1 %or.cond1398.i122, %217
  br i1 %or.cond1399.i123, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178, label %bb2.i.i.i125

bb2.i.i.i125:                                     ; preds = %bb96.i.i124
  %tmp289 = trunc i512 %mask317602 to i32
  %tmp290 = bitcast i32 %tmp289 to float
  %218 = fcmp ogt float %tmp290, %214
  br i1 %218, label %bb3.i.i.i176, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178

bb3.i.i.i176:                                     ; preds = %bb2.i.i.i125
  %tmp284 = bitcast float %214 to i32
  %tmp285 = zext i32 %tmp284 to i512
  %219 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 2) nounwind
  %220 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 1) nounwind
  %221 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 0) nounwind
  %222 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 5) nounwind
  %223 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 4) nounwind
  %224 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 3) nounwind
  %225 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 8) nounwind
  %226 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 7) nounwind
  %227 = call float @llvm.trax.loadf(i32 %tmp396.i111, i32 6) nounwind
  %228 = call i32 @llvm.trax.loadi(i32 %tmp396.i111, i32 10) nounwind
  %229 = call i32 @llvm.trax.loadi(i32 %tmp396.i111, i32 9) nounwind
  %tmp369.i126 = bitcast float %221 to i32
  %tmp370.i127 = zext i32 %tmp369.i126 to i480
  %tmp301.i128 = bitcast float %220 to i32
  %tmp302.i129 = zext i32 %tmp301.i128 to i480
  %tmp303.i130 = shl nuw nsw i480 %tmp302.i129, 32
  %tmp295.i131 = bitcast float %219 to i32
  %tmp296.i132 = zext i32 %tmp295.i131 to i480
  %tmp297.i133 = shl nuw nsw i480 %tmp296.i132, 64
  %tmp363.i134 = bitcast float %224 to i32
  %tmp364.i135 = zext i32 %tmp363.i134 to i480
  %tmp365.i136 = shl nuw nsw i480 %tmp364.i135, 96
  %tmp357.i137 = bitcast float %223 to i32
  %tmp358.i138 = zext i32 %tmp357.i137 to i480
  %tmp359.i139 = shl nuw nsw i480 %tmp358.i138, 128
  %tmp351.i140 = bitcast float %222 to i32
  %tmp352.i141 = zext i32 %tmp351.i140 to i480
  %tmp353.i142 = shl nuw nsw i480 %tmp352.i141, 160
  %tmp345.i143 = bitcast float %227 to i32
  %tmp346.i144 = zext i32 %tmp345.i143 to i480
  %tmp347.i145 = shl nuw nsw i480 %tmp346.i144, 192
  %tmp339.i146 = bitcast float %226 to i32
  %tmp340.i147 = zext i32 %tmp339.i146 to i480
  %tmp341.i148 = shl nuw nsw i480 %tmp340.i147, 224
  %tmp333.i149 = bitcast float %225 to i32
  %tmp334.i150 = zext i32 %tmp333.i149 to i480
  %tmp335.i151 = shl nuw nsw i480 %tmp334.i150, 256
  %tmp290.i152 = zext i32 %229 to i480
  %tmp291.i153 = shl nuw nsw i480 %tmp290.i152, 288
  %230 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %231 = mul nsw i32 %228, 25
  %232 = add nsw i32 %230, %231
  %233 = call float @llvm.trax.loadf(i32 %232, i32 6) nounwind
  %234 = call float @llvm.trax.loadf(i32 %232, i32 5) nounwind
  %235 = call float @llvm.trax.loadf(i32 %232, i32 4) nounwind
  %tmp325.i154 = bitcast float %235 to i32
  %tmp326.i155 = zext i32 %tmp325.i154 to i480
  %tmp327.i156 = shl nuw nsw i480 %tmp326.i155, 320
  %tmp317.i157 = bitcast float %234 to i32
  %tmp318.i158 = zext i32 %tmp317.i157 to i480
  %tmp319.i159 = shl nuw nsw i480 %tmp318.i158, 352
  %tmp309.i160 = bitcast float %233 to i32
  %tmp310.i161 = zext i32 %tmp309.i160 to i480
  %tmp311.i162 = shl nuw nsw i480 %tmp310.i161, 384
  %mask298.i163 = or i480 %tmp297.i133, %tmp370.i127
  %mask366.i164 = or i480 %mask298.i163, %tmp303.i130
  %mask360.masked.masked.masked.masked.masked.i165 = or i480 %mask366.i164, %tmp353.i142
  %mask354.masked.masked.masked.masked.masked.masked.i166 = or i480 %mask360.masked.masked.masked.masked.masked.i165, %tmp359.i139
  %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i167 = or i480 %mask354.masked.masked.masked.masked.masked.masked.i166, %tmp365.i136
  %mask342.masked.masked.masked.masked.masked.masked.masked.i168 = or i480 %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i167, %tmp335.i151
  %mask336.masked.masked.masked.masked.masked.masked.i169 = or i480 %mask342.masked.masked.masked.masked.masked.masked.masked.i168, %tmp341.i148
  %mask292.masked.masked.masked.masked.masked.i170 = or i480 %mask336.masked.masked.masked.masked.masked.masked.i169, %tmp347.i145
  %mask328.masked.masked.masked.masked.i171 = or i480 %mask292.masked.masked.masked.masked.masked.i170, %tmp291.i153
  %mask320.masked.masked.masked.i172 = or i480 %mask328.masked.masked.masked.masked.i171, %tmp311.i162
  %mask312.masked.masked.i173 = or i480 %mask320.masked.masked.masked.i172, %tmp319.i159
  %ins288.i174 = or i480 %mask312.masked.masked.i173, %tmp327.i156
  %ins285.i175 = or i480 %ins288.i174, 770681673391627619131312691654083964084373995933406099189890146314966155308140517402099473489517307419678932548501811235986099843289400054120448
  %tmp279 = zext i480 %ins285.i175 to i512
  %tmp280 = shl nuw i512 %tmp279, 32
  %ins282 = or i512 %tmp280, %tmp285
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178: ; preds = %bb3.i.i.i176, %bb2.i.i.i125, %bb96.i.i124, %bb94.i55.i121, %bb73.i.i120, %bb5.i119
  %mask317601 = phi i512 [ %ins282, %bb3.i.i.i176 ], [ %mask317602, %bb2.i.i.i125 ], [ %mask317602, %bb96.i.i124 ], [ %mask317602, %bb94.i55.i121 ], [ %mask317602, %bb73.i.i120 ], [ %mask317602, %bb5.i119 ]
  %236 = add nsw i32 %storemerge388.i109, 1
  %exitcond771 = icmp eq i32 %236, %119
  br i1 %exitcond771, label %bb7.i179, label %bb5.i119

bb7.i179:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178, %bb6.preheader.i106, %bb62.i.i104, %bb29.i.i98, %bb.i92
  %mask317605 = phi i512 [ %mask317606, %bb6.preheader.i106 ], [ %mask317601, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i178 ], [ %mask317606, %bb.i92 ], [ %mask317606, %bb29.i.i98 ], [ %mask317606, %bb62.i.i104 ]
  %237 = icmp slt i32 %sp.0.i84, 0
  br i1 %237, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit181, label %bb9.i180

bb9.i180:                                         ; preds = %bb7.i179
  %238 = sext i32 %sp.0.i84 to i64
  %239 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %238
  %240 = load i32* %239, align 4
  %241 = add nsw i32 %sp.0.i84, -1
  br label %bb.outer.i80

_ZN3BVH9intersectER9HitRecordR3Ray.exit181:       ; preds = %bb7.i179
  %tmp569 = lshr i512 %mask317605, 32
  %tmp570 = trunc i512 %tmp569 to i32
  %tmp571 = bitcast i32 %tmp570 to float
  %tmp565 = lshr i512 %mask317605, 64
  %tmp566 = trunc i512 %tmp565 to i32
  %tmp567 = bitcast i32 %tmp566 to float
  %tmp557 = lshr i512 %mask317605, 128
  %tmp558 = trunc i512 %tmp557 to i32
  %tmp559 = bitcast i32 %tmp558 to float
  %tmp553 = lshr i512 %mask317605, 160
  %tmp554 = trunc i512 %tmp553 to i32
  %tmp555 = bitcast i32 %tmp554 to float
  %tmp545 = lshr i512 %mask317605, 224
  %tmp533 = lshr i512 %mask317605, 352
  %tmp534 = trunc i512 %tmp533 to i32
  %tmp535 = bitcast i32 %tmp534 to float
  %tmp529 = lshr i512 %mask317605, 384
  %tmp530 = trunc i512 %tmp529 to i32
  %tmp531 = bitcast i32 %tmp530 to float
  %tmp521 = lshr i512 %mask317605, 448
  %tmp522 = trunc i512 %tmp521 to i32
  %tmp523 = bitcast i32 %tmp522 to float
  %tmp517 = lshr i512 %mask317605, 480
  %tmp518 = trunc i512 %tmp517 to i32
  %tmp519 = bitcast i32 %tmp518 to float
  %tmp514 = trunc i512 %mask317605 to i32
  %tmp515 = bitcast i32 %tmp514 to float
  %242 = lshr i192 %ins394, 96
  %.tr = trunc i192 %242 to i128
  %tmp1455 = and i128 %.tr, 79228162495817593519834398720
  %tmp1442 = lshr exact i128 %tmp1455, 64
  %tmp1443 = trunc i128 %tmp1442 to i32
  %tmp1444 = bitcast i32 %tmp1443 to float
  %243 = fmul float %82, %tmp515
  %244 = fmul float %81, %tmp515
  %245 = fmul float %tmp1444, %tmp515
  %tmp1908 = bitcast float %243 to i32
  %tmp1909 = zext i32 %tmp1908 to i96
  %tmp1902 = bitcast float %244 to i32
  %tmp1903 = zext i32 %tmp1902 to i96
  %tmp1904 = shl nuw nsw i96 %tmp1903, 32
  %ins1906 = or i96 %tmp1904, %tmp1909
  %tmp1896 = bitcast float %245 to i32
  %tmp1438 = zext i96 %ins1906 to i128
  %mask1439 = and i128 %memtmp4.i95.0723, -79228162514264337593543950336
  %tmp1432 = zext i32 %tmp1896 to i128
  %tmp1433 = shl nuw nsw i128 %tmp1432, 64
  %mask1434 = or i128 %tmp1433, %mask1439
  %ins1435 = or i128 %mask1434, %tmp1438
  %ins1435.tr = trunc i128 %ins1435 to i96
  %tmp1398 = lshr i128 %mask1412, 64
  %tmp1399 = trunc i128 %tmp1398 to i32
  %tmp1400 = bitcast i32 %tmp1399 to float
  %tmp1573 = lshr i96 %ins1435.tr, 64
  %tmp1574 = trunc i96 %tmp1573 to i32
  %tmp1575 = bitcast i32 %tmp1574 to float
  %246 = fadd float %243, %10
  %247 = fadd float %244, %11
  %248 = fadd float %tmp1400, %tmp1575
  %tmp2176 = trunc i512 %tmp557 to i128
  %tmp2177 = and i128 %tmp2176, 79228162495817593519834398720
  %tmp2154 = trunc i512 %tmp569 to i128
  %tmp2155 = and i128 %tmp2154, 79228162495817593519834398720
  %tmp2142 = lshr exact i128 %tmp2155, 64
  %tmp2143 = trunc i128 %tmp2142 to i32
  %tmp2144 = bitcast i32 %tmp2143 to float
  %tmp2206756 = lshr i512 %mask317605, 192
  %tmp2207 = trunc i512 %tmp2206756 to i32
  %tmp2208 = bitcast i32 %tmp2207 to float
  %249 = fsub float %tmp571, %tmp559
  %250 = fsub float %tmp567, %tmp555
  %251 = fsub float %tmp2144, %tmp2208
  %tmp2076 = lshr exact i128 %tmp2177, 64
  %tmp2077 = trunc i128 %tmp2076 to i32
  %tmp2078 = bitcast i32 %tmp2077 to float
  %tmp2230758 = lshr i512 %mask317605, 288
  %tmp2231 = trunc i512 %tmp2230758 to i32
  %tmp2232 = bitcast i32 %tmp2231 to float
  %tmp41.i213 = trunc i512 %tmp545 to i32
  %tmp42.i214 = bitcast i32 %tmp41.i213 to float
  %252 = fsub float %tmp559, %tmp42.i214
  %tmp37.i215656 = lshr i512 %mask317605, 256
  %tmp38.i216 = trunc i512 %tmp37.i215656 to i32
  %tmp39.i217 = bitcast i32 %tmp38.i216 to float
  %253 = fsub float %tmp555, %tmp39.i217
  %254 = fsub float %tmp2078, %tmp2232
  %255 = fmul float %250, %254
  %256 = fmul float %253, %251
  %257 = fsub float %255, %256
  %258 = fmul float %252, %251
  %259 = fmul float %249, %254
  %260 = fsub float %258, %259
  %261 = fmul float %253, %249
  %262 = fmul float %252, %250
  %263 = fsub float %261, %262
  %264 = fmul float %257, %257
  %265 = fmul float %260, %260
  %266 = fadd float %264, %265
  %267 = fmul float %263, %263
  %268 = fadd float %266, %267
  %269 = call float @llvm.trax.invsqrt(float %268) nounwind
  %270 = fdiv float 1.000000e+00, %269
  %271 = fdiv float %263, %270
  %272 = fdiv float %260, %270
  %273 = fdiv float %257, %270
  %274 = fmul float %82, %82
  %275 = fmul float %81, %81
  %276 = fadd float %274, %275
  %277 = fmul float %tmp1444, %tmp1444
  %278 = fadd float %276, %277
  %279 = call float @llvm.trax.invsqrt(float %278) nounwind
  %280 = fdiv float 1.000000e+00, %279
  %281 = fdiv float %tmp1444, %280
  %282 = fdiv float %81, %280
  %283 = fdiv float %82, %280
  %284 = fmul float %283, %273
  %285 = fadd float %284, 0.000000e+00
  %286 = fmul float %282, %272
  %287 = fadd float %286, %285
  %288 = fmul float %281, %271
  %289 = fadd float %288, %287
  %290 = fcmp ogt float %289, 0.000000e+00
  br i1 %290, label %bb.i, label %bb52.i

bb.i:                                             ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit181
  %291 = fmul float %273, -1.000000e+00
  %292 = fmul float %272, -1.000000e+00
  %293 = fmul float %271, -1.000000e+00
  %tmp2432 = bitcast float %291 to i32
  %tmp2433 = zext i32 %tmp2432 to i96
  %tmp2426 = bitcast float %292 to i32
  %tmp2427 = zext i32 %tmp2426 to i96
  %tmp2428 = shl nuw nsw i96 %tmp2427, 32
  %ins2430 = or i96 %tmp2433, %tmp2428
  %tmp2420 = bitcast float %293 to i32
  %tmp1306 = zext i96 %ins2430 to i128
  %mask1307 = and i128 %memtmp46.i.1719, -79228162514264337593543950336
  %tmp1300 = zext i32 %tmp2420 to i128
  %tmp1301 = shl nuw nsw i128 %tmp1300, 64
  %mask1302 = or i128 %tmp1306, %mask1307
  %ins1303 = or i128 %mask1302, %tmp1301
  %tmp1288 = lshr i128 %ins1303, 64
  %tmp1289 = trunc i128 %tmp1288 to i32
  %tmp1290 = bitcast i32 %tmp1289 to float
  br label %bb52.i

bb52.i:                                           ; preds = %bb.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit181
  %N.i.0.0 = phi float [ %291, %bb.i ], [ %273, %_ZN3BVH9intersectER9HitRecordR3Ray.exit181 ]
  %N.i.1.0 = phi float [ %292, %bb.i ], [ %272, %_ZN3BVH9intersectER9HitRecordR3Ray.exit181 ]
  %N.i.2.0 = phi float [ %tmp1290, %bb.i ], [ %271, %_ZN3BVH9intersectER9HitRecordR3Ray.exit181 ]
  %memtmp46.i.0 = phi i128 [ %ins1303, %bb.i ], [ %memtmp46.i.1719, %_ZN3BVH9intersectER9HitRecordR3Ray.exit181 ]
  %294 = fmul float %tmp523, 0x3FD99999A0000000
  %295 = fsub float %6, %246
  %296 = fsub float %7, %247
  %297 = fsub float %8, %248
  %298 = fmul float %295, %295
  %299 = fmul float %296, %296
  %300 = fadd float %298, %299
  %301 = fmul float %297, %297
  %302 = fadd float %300, %301
  %303 = call float @llvm.trax.invsqrt(float %302) nounwind
  %304 = fdiv float 1.000000e+00, %303
  %305 = fdiv float %297, %304
  %306 = fdiv float %296, %304
  %307 = fdiv float %295, %304
  %308 = fmul float %307, %N.i.0.0
  %309 = fadd float %308, 0.000000e+00
  %310 = fmul float %306, %N.i.1.0
  %311 = fadd float %310, %309
  %312 = fmul float %305, %N.i.2.0
  %313 = fadd float %312, %311
  %314 = fcmp ogt float %313, 0.000000e+00
  br i1 %314, label %bb93.i, label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

bb93.i:                                           ; preds = %bb52.i
  %315 = call float @llvm.trax.invsqrt(float %302) nounwind
  br label %bb.outer.i

bb.outer.i:                                       ; preds = %bb9.i, %bb93.i
  %tmp568596.off0 = phi i32 [ %tmp514, %bb93.i ], [ %tmp568595.off0, %bb9.i ]
  %node_id.0.ph.i = phi i32 [ 0, %bb93.i ], [ %473, %bb9.i ]
  %sp.0.ph.i = phi i32 [ -1, %bb93.i ], [ %474, %bb9.i ]
  %tmp404.i = add i32 %sp.0.ph.i, 1
  %tmp766 = sext i32 %tmp404.i to i64
  %tmp768 = zext i32 %sp.0.ph.i to i64
  br label %bb.i53

bb.i53:                                           ; preds = %bb3.i, %bb.outer.i
  %indvar.i = phi i64 [ %indvar.next.i, %bb3.i ], [ 0, %bb.outer.i ]
  %node_id.0.i = phi i32 [ %351, %bb3.i ], [ %node_id.0.ph.i, %bb.outer.i ]
  %tmp767 = add i64 %tmp766, %indvar.i
  %scevgep.i = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp767
  %tmp769 = add i64 %tmp768, %indvar.i
  %sp.0.i = trunc i64 %tmp769 to i32
  %316 = shl nsw i32 %node_id.0.i, 3
  %317 = add nsw i32 %316, %31
  %318 = call float @llvm.trax.loadf(i32 %317, i32 2) nounwind
  %319 = call float @llvm.trax.loadf(i32 %317, i32 1) nounwind
  %320 = call float @llvm.trax.loadf(i32 %317, i32 0) nounwind
  %321 = call float @llvm.trax.loadf(i32 %317, i32 5) nounwind
  %322 = call float @llvm.trax.loadf(i32 %317, i32 4) nounwind
  %323 = call float @llvm.trax.loadf(i32 %317, i32 3) nounwind
  %324 = fsub float %320, %246
  %325 = fdiv float %324, %307
  %326 = fsub float %323, %246
  %327 = fdiv float %326, %307
  %328 = fcmp ogt float %325, %327
  %tx1.i.0.i = select i1 %328, float %327, float %325
  %tx2.i.0.i = select i1 %328, float %325, float %327
  %329 = fcmp ogt float %tx1.i.0.i, -1.000000e+10
  %tnear.i.0.i = select i1 %329, float %tx1.i.0.i, float -1.000000e+10
  %330 = fcmp olt float %tx2.i.0.i, 1.000000e+10
  %tfar.i.0.i = select i1 %330, float %tx2.i.0.i, float 1.000000e+10
  %331 = fcmp ogt float %tnear.i.0.i, %tfar.i.0.i
  %332 = fcmp olt float %tfar.i.0.i, 0.000000e+00
  %or.cond.i = or i1 %331, %332
  br i1 %or.cond.i, label %bb7.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb.i53
  %333 = fsub float %319, %247
  %334 = fdiv float %333, %306
  %335 = fsub float %322, %247
  %336 = fdiv float %335, %306
  %337 = fcmp ogt float %334, %336
  %ty1.i.0.i = select i1 %337, float %336, float %334
  %ty2.i.0.i = select i1 %337, float %334, float %336
  %338 = fcmp ogt float %ty1.i.0.i, %tnear.i.0.i
  %tnear.i.1.i = select i1 %338, float %ty1.i.0.i, float %tnear.i.0.i
  %339 = fcmp olt float %ty2.i.0.i, %tfar.i.0.i
  %tfar.i.1.i = select i1 %339, float %ty2.i.0.i, float %tfar.i.0.i
  %340 = fcmp ogt float %tnear.i.1.i, %tfar.i.1.i
  %341 = fcmp olt float %tfar.i.1.i, 0.000000e+00
  %or.cond1395.i = or i1 %340, %341
  br i1 %or.cond1395.i, label %bb7.i, label %bb62.i.i

bb62.i.i:                                         ; preds = %bb29.i.i
  %342 = fsub float %318, %248
  %343 = fdiv float %342, %305
  %344 = fsub float %321, %248
  %345 = fdiv float %344, %305
  %346 = fcmp ogt float %343, %345
  %tz1.i.0.i = select i1 %346, float %345, float %343
  %tz2.i.0.i = select i1 %346, float %343, float %345
  %347 = fcmp ogt float %tz1.i.0.i, %tnear.i.1.i
  %tnear.i.2.i = select i1 %347, float %tz1.i.0.i, float %tnear.i.1.i
  %348 = fcmp olt float %tz2.i.0.i, %tfar.i.1.i
  %tfar.i.2.i = select i1 %348, float %tz2.i.0.i, float %tfar.i.1.i
  %349 = fcmp ogt float %tnear.i.2.i, %tfar.i.2.i
  %350 = fcmp olt float %tfar.i.2.i, 0.000000e+00
  %or.cond1396.i = or i1 %349, %350
  br i1 %or.cond1396.i, label %bb7.i, label %bb1.i

bb1.i:                                            ; preds = %bb62.i.i
  %351 = call i32 @llvm.trax.loadi(i32 %317, i32 7) nounwind
  %352 = call i32 @llvm.trax.loadi(i32 %317, i32 6) nounwind
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %bb3.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb1.i
  %354 = icmp sgt i32 %352, 0
  br i1 %354, label %bb5.i, label %bb7.i

bb3.i:                                            ; preds = %bb1.i
  %355 = add nsw i32 %351, 1
  store i32 %355, i32* %scevgep.i, align 4
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb.i53

bb5.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i
  %tmp568594.off0 = phi i32 [ %tmp568593.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %tmp568596.off0, %bb6.preheader.i ]
  %storemerge388.i = phi i32 [ %469, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ 0, %bb6.preheader.i ]
  %tmp = mul i32 %storemerge388.i, 11
  %tmp396.i = add i32 %351, %tmp
  %356 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %357 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %358 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %359 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %360 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %361 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %362 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %363 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %364 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %365 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %366 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %367 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %368 = mul nsw i32 %365, 25
  %369 = add nsw i32 %367, %368
  %370 = call float @llvm.trax.loadf(i32 %369, i32 6) nounwind
  %371 = call float @llvm.trax.loadf(i32 %369, i32 5) nounwind
  %372 = call float @llvm.trax.loadf(i32 %369, i32 4) nounwind
  %373 = fsub float %358, %364
  %374 = fsub float %357, %363
  %375 = fsub float %356, %362
  %376 = fsub float %361, %364
  %377 = fsub float %360, %363
  %378 = fsub float %359, %362
  %379 = fmul float %374, %378
  %380 = fmul float %377, %375
  %381 = fsub float %379, %380
  %382 = fmul float %376, %375
  %383 = fmul float %373, %378
  %384 = fsub float %382, %383
  %385 = fmul float %377, %373
  %386 = fmul float %376, %374
  %387 = fsub float %385, %386
  %388 = fmul float %381, %381
  %389 = fmul float %384, %384
  %390 = fadd float %388, %389
  %391 = fmul float %387, %387
  %392 = fadd float %390, %391
  %393 = call float @llvm.trax.invsqrt(float %392) nounwind
  %394 = fmul float %306, %378
  %395 = fmul float %377, %305
  %396 = fsub float %394, %395
  %397 = fmul float %376, %305
  %398 = fmul float %307, %378
  %399 = fsub float %397, %398
  %400 = fmul float %377, %307
  %401 = fmul float %376, %306
  %402 = fsub float %400, %401
  %403 = fmul float %396, %373
  %404 = fadd float %403, 0.000000e+00
  %405 = fmul float %399, %374
  %406 = fadd float %405, %404
  %407 = fmul float %402, %375
  %408 = fadd float %407, %406
  %409 = fdiv float 1.000000e+00, %408
  %410 = fsub float %246, %364
  %411 = fsub float %247, %363
  %412 = fsub float %248, %362
  %413 = fmul float %396, %410
  %414 = fadd float %413, 0.000000e+00
  %415 = fmul float %399, %411
  %416 = fadd float %415, %414
  %417 = fmul float %402, %412
  %418 = fadd float %417, %416
  %419 = fmul float %418, %409
  %420 = fcmp olt float %419, 0.000000e+00
  %421 = fcmp ogt float %419, 1.000000e+00
  %or.cond1397.i = or i1 %420, %421
  br i1 %or.cond1397.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb73.i.i

bb73.i.i:                                         ; preds = %bb5.i
  %422 = fmul float %411, %375
  %423 = fmul float %374, %412
  %424 = fsub float %422, %423
  %425 = fmul float %373, %412
  %426 = fmul float %410, %375
  %427 = fsub float %425, %426
  %428 = fmul float %374, %410
  %429 = fmul float %373, %411
  %430 = fsub float %428, %429
  %431 = fmul float %424, %307
  %432 = fadd float %431, 0.000000e+00
  %433 = fmul float %427, %306
  %434 = fadd float %433, %432
  %435 = fmul float %430, %305
  %436 = fadd float %435, %434
  %437 = fmul float %436, %409
  %438 = fcmp olt float %437, 0.000000e+00
  br i1 %438, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb94.i55.i

bb94.i55.i:                                       ; preds = %bb73.i.i
  %439 = fadd float %437, %419
  %440 = fcmp ogt float %439, 1.000000e+00
  br i1 %440, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb96.i.i

bb96.i.i:                                         ; preds = %bb94.i55.i
  %441 = fmul float %424, %376
  %442 = fadd float %441, 0.000000e+00
  %443 = fmul float %427, %377
  %444 = fadd float %443, %442
  %445 = fmul float %430, %378
  %446 = fadd float %445, %444
  %447 = fmul float %446, %409
  %448 = fcmp ule float %447, 0.000000e+00
  %449 = fcmp olt float %447, 0x3F50624DE0000000
  %or.cond1398.i = or i1 %448, %449
  %450 = fcmp oeq float %447, 1.000000e+10
  %or.cond1399.i = or i1 %or.cond1398.i, %450
  br i1 %or.cond1399.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb96.i.i
  %tmp509 = bitcast i32 %tmp568594.off0 to float
  %451 = fcmp ogt float %tmp509, %447
  br i1 %451, label %bb3.i.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %tmp503 = bitcast float %447 to i32
  %452 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %453 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %454 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %455 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %456 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %457 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %458 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %459 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %460 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %461 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %462 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %463 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %464 = mul nsw i32 %461, 25
  %465 = add nsw i32 %463, %464
  %466 = call float @llvm.trax.loadf(i32 %465, i32 6) nounwind
  %467 = call float @llvm.trax.loadf(i32 %465, i32 5) nounwind
  %468 = call float @llvm.trax.loadf(i32 %465, i32 4) nounwind
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i: ; preds = %bb3.i.i.i, %bb2.i.i.i, %bb96.i.i, %bb94.i55.i, %bb73.i.i, %bb5.i
  %tmp568593.off0 = phi i32 [ %tmp503, %bb3.i.i.i ], [ %tmp568594.off0, %bb2.i.i.i ], [ %tmp568594.off0, %bb96.i.i ], [ %tmp568594.off0, %bb94.i55.i ], [ %tmp568594.off0, %bb73.i.i ], [ %tmp568594.off0, %bb5.i ]
  %469 = add nsw i32 %storemerge388.i, 1
  %exitcond = icmp eq i32 %469, %352
  br i1 %exitcond, label %bb7.i, label %bb5.i

bb7.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i, %bb62.i.i, %bb29.i.i, %bb.i53
  %tmp568595.off0 = phi i32 [ %tmp568596.off0, %bb6.preheader.i ], [ %tmp568593.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %tmp568596.off0, %bb.i53 ], [ %tmp568596.off0, %bb29.i.i ], [ %tmp568596.off0, %bb62.i.i ]
  %470 = icmp slt i32 %sp.0.i, 0
  br i1 %470, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit, label %bb9.i

bb9.i:                                            ; preds = %bb7.i
  %471 = sext i32 %sp.0.i to i64
  %472 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %471
  %473 = load i32* %472, align 4
  %474 = add nsw i32 %sp.0.i, -1
  br label %bb.outer.i

_ZN3BVH9intersectER9HitRecordR3Ray.exit:          ; preds = %bb7.i
  %475 = fdiv float 1.000000e+00, %315
  %tmp512 = bitcast i32 %tmp568595.off0 to float
  %476 = fcmp uge float %tmp512, %475
  %477 = fcmp ule float %tmp512, 0x3F847AE140000000
  %or.cond = or i1 %476, %477
  br i1 %or.cond, label %bb96.i, label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

bb96.i:                                           ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %478 = fmul float %tmp519, %313
  %479 = fadd float %478, %294
  %480 = fadd float %294, %478
  br label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit: ; preds = %bb96.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit, %bb52.i
  %481 = phi float [ %480, %bb96.i ], [ %294, %bb52.i ], [ %294, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %482 = phi float [ %479, %bb96.i ], [ %294, %bb52.i ], [ %294, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %483 = fmul float %tmp535, %482
  %484 = fmul float %tmp531, %482
  %tmp1731760 = lshr i512 %mask317605, 416
  %tmp1732 = trunc i512 %tmp1731760 to i32
  %tmp1733 = bitcast i32 %tmp1732 to float
  %485 = fmul float %tmp1733, %481
  %tmp1726 = bitcast float %483 to i32
  %tmp1727 = zext i32 %tmp1726 to i96
  %tmp1720 = bitcast float %484 to i32
  %tmp1721 = zext i32 %tmp1720 to i96
  %tmp1722 = shl nuw nsw i96 %tmp1721, 32
  %ins1724 = or i96 %tmp1727, %tmp1722
  %tmp1714 = bitcast float %485 to i32
  %tmp1108 = zext i96 %ins1724 to i128
  %tmp1102 = zext i32 %tmp1714 to i128
  %tmp1103 = shl nuw nsw i128 %tmp1102, 64
  %mask196 = and i128 %memtmp.0711, -79228162514264337593543950336
  %mask191 = or i128 %tmp1108, %mask196
  %ins192 = or i128 %mask191, %tmp1103
  %tmp177 = lshr i128 %ins192, 64
  %tmp178 = trunc i128 %tmp177 to i32
  %tmp179 = bitcast i32 %tmp178 to float
  %tmp450 = bitcast i32 %mask495597.off0708 to float
  %tmp447 = bitcast i32 %mask495597.off32709 to float
  %tmp443 = bitcast i32 %mask495597.off64710 to float
  %486 = fadd float %483, %tmp450
  %487 = fadd float %484, %tmp447
  %488 = fadd float %tmp443, %tmp179
  %tmp490 = bitcast float %486 to i32
  %tmp475 = bitcast float %487 to i32
  %tmp461 = bitcast float %488 to i32
  %489 = add nsw i32 %storemerge1730, 1
  %exitcond786 = icmp eq i32 %489, 25
  br i1 %exitcond786, label %bb19, label %bb2

bb19:                                             ; preds = %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit
  %490 = fmul float %486, 0x3FA47AE140000000
  %491 = fmul float %487, 0x3FA47AE140000000
  %492 = fmul float %488, 0x3FA47AE140000000
  %tmp2501 = bitcast float %490 to i32
  %tmp2502 = zext i32 %tmp2501 to i96
  %tmp2495 = bitcast float %491 to i32
  %tmp2496 = zext i32 %tmp2495 to i96
  %tmp2497 = shl nuw nsw i96 %tmp2496, 32
  %ins2499 = or i96 %tmp2502, %tmp2497
  %tmp2489 = bitcast float %492 to i32
  %tmp151 = zext i96 %ins2499 to i128
  %mask152 = and i128 %memtmp20.0735, -79228162514264337593543950336
  %tmp147 = zext i32 %tmp2489 to i128
  %tmp148 = shl nuw nsw i128 %tmp147, 64
  %mask = or i128 %tmp148, %mask152
  %ins = or i128 %mask, %tmp151
  %ins.tr609 = trunc i128 %ins to i96
  %493 = mul nsw i32 %39, %0
  %494 = add nsw i32 %493, %40
  %495 = mul nsw i32 %494, 3
  %496 = add nsw i32 %495, %2
  call void @llvm.trax.storef(float %490, i32 %496, i32 0) nounwind
  call void @llvm.trax.storef(float %491, i32 %496, i32 1) nounwind
  %tmp414 = lshr i96 %ins.tr609, 64
  %tmp415 = trunc i96 %tmp414 to i32
  %tmp416 = bitcast i32 %tmp415 to float
  call void @llvm.trax.storef(float %tmp416, i32 %496, i32 2) nounwind
  %497 = call i32 @llvm.trax.atominc(i32 0)
  %498 = icmp sgt i32 %33, %497
  br i1 %498, label %bb, label %return

return:                                           ; preds = %bb19, %entry
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind

declare float @llvm.trax.rand() nounwind

declare float @llvm.trax.invsqrt(float) nounwind
