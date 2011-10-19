; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%0 = type { double, float }
%struct.BVH = type { i32 }
%struct.Box = type { %struct.Color, %struct.Color }
%struct.Color = type { float, float, float }
%struct.HitRecord = type { float, %struct.Trigonum }
%struct.Image = type { i32, i32, i32 }
%struct.Mat = type { %struct.Color, float, float }
%struct.PinHoleCamera = type { %struct.Color, %struct.Color, %struct.Color, %struct.Color, %struct.Color, float, float }
%struct.PointLight = type { %struct.Color, %struct.Color }
%struct.Ray = type { %struct.Color, %struct.Color }
%struct.Shader = type <{ i8 }>
%struct.Trigonum = type { %struct.Color, %struct.Color, %struct.Color, i32, %struct.Mat }
%struct.Vector = type { float, float, float }

declare float @llvm.trax.loadf(i32, i32) nounwind

define internal fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %this, double %point1.0, float %point1.1, double %point2.0, float %point2.1, double %point3.0, float %point3.1, i32 %i, i32 %mat_id) nounwind ssp align 2 {
return:
  %tmp80 = bitcast double %point1.0 to i64
  %tmp58 = bitcast double %point2.0 to i64
  %tmp36 = bitcast double %point3.0 to i64
  %0 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 0
  %1 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 0
  %2 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 1
  %3 = bitcast %struct.Trigonum* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %2, align 4
  %4 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %4, align 4
  %5 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 0
  %6 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 1
  store float 0.000000e+00, float* %6, align 4
  %7 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 2
  store float 0.000000e+00, float* %7, align 4
  %8 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 0
  store float 0.000000e+00, float* %8, align 4
  %9 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 1
  store float 0.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 2
  store float 0.000000e+00, float* %10, align 4
  %tmp93 = trunc i64 %tmp80 to i32
  %tmp94 = bitcast i32 %tmp93 to float
  store float %tmp94, float* %0, align 4
  %11 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 1
  %tmp89 = lshr i64 %tmp80, 32
  %tmp90 = trunc i64 %tmp89 to i32
  %tmp91 = bitcast i32 %tmp90 to float
  store float %tmp91, float* %11, align 4
  %12 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 2
  store float %point1.1, float* %12, align 4
  %tmp71 = trunc i64 %tmp58 to i32
  %tmp72 = bitcast i32 %tmp71 to float
  store float %tmp72, float* %1, align 4
  %13 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 1
  %tmp67 = lshr i64 %tmp58, 32
  %tmp68 = trunc i64 %tmp67 to i32
  %tmp69 = bitcast i32 %tmp68 to float
  store float %tmp69, float* %13, align 4
  %14 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 2
  store float %point2.1, float* %14, align 4
  %tmp49 = trunc i64 %tmp36 to i32
  %tmp50 = bitcast i32 %tmp49 to float
  store float %tmp50, float* %5, align 4
  %15 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 1
  %tmp45 = lshr i64 %tmp36, 32
  %tmp46 = trunc i64 %tmp45 to i32
  %tmp47 = bitcast i32 %tmp46 to float
  store float %tmp47, float* %15, align 4
  %16 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 2
  store float %point3.1, float* %16, align 4
  %17 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 3
  store i32 %i, i32* %17, align 4
  %18 = call i32 @llvm.trax.loadi(i32 0, i32 9)
  %19 = mul nsw i32 %mat_id, 25
  %20 = add nsw i32 %19, %18
  %21 = call float @llvm.trax.loadf(i32 %20, i32 6)
  %22 = call float @llvm.trax.loadf(i32 %20, i32 5)
  %23 = call float @llvm.trax.loadf(i32 %20, i32 4)
  store float %23, float* %8, align 4
  %24 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 1
  store float %22, float* %24, align 4
  %25 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 2
  store float %21, float* %25, align 4
  %26 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 1
  store float 0x3FD3333340000000, float* %26, align 4
  %27 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 2
  store float 0x3FE6666660000000, float* %27, align 4
  ret void
}

declare i32 @llvm.trax.loadi(i32, i32) nounwind

define internal fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* nocapture %this, %struct.HitRecord* nocapture %hit_record, %struct.Box* %ray) nounwind ssp align 2 {
entry:
  %memtmp.i.i = alloca %struct.Trigonum, align 8
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %edge1.i = alloca %struct.Color, align 8
  %normal.i = alloca %struct.Color, align 8
  %s.i = alloca %struct.Color, align 8
  %stack = alloca [32 x i32], align 4
  %tri = alloca %struct.Trigonum, align 8
  %2 = getelementptr inbounds %struct.BVH* %this, i64 0, i32 0
  %3 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %4 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %7 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %ray819.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray819.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray819.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %9 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 0
  %10 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 2
  %elt.i30 = bitcast %struct.Color* %10 to double*
  %11 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 2, i32 2
  %12 = getelementptr inbounds %struct.Color* %edge1.i, i64 0, i32 0
  %13 = getelementptr inbounds %struct.Color* %edge1.i, i64 0, i32 1
  %14 = getelementptr inbounds %struct.Color* %edge1.i, i64 0, i32 2
  %15 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 1
  %16 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 0
  %17 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 1
  %18 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 2
  %19 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %20 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %21 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %22 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %23 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %25 = getelementptr inbounds %struct.Color* %s.i, i64 0, i32 0
  %26 = getelementptr inbounds %struct.Color* %s.i, i64 0, i32 1
  %27 = getelementptr inbounds %struct.Color* %s.i, i64 0, i32 2
  %elt74.i = bitcast %struct.Color* %edge1.i to double*
  %28 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %29 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1
  %30 = bitcast %struct.Trigonum* %29 to i8*
  %memtmp4.i.i = bitcast %struct.Trigonum* %memtmp.i.i to i8*
  br label %bb.outer

bb.outer:                                         ; preds = %bb9, %entry
  %memtmp81.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp81.i.11379, %bb9 ]
  %memtmp75.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp75.i.11381, %bb9 ]
  %memtmp69.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp69.i.11383, %bb9 ]
  %memtmp63.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp63.i.11385, %bb9 ]
  %memtmp84.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp84.i.3, %bb9 ]
  %memtmp52.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp52.i.2, %bb9 ]
  %memtmp32.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp32.i.2, %bb9 ]
  %node_id.0.ph = phi i32 [ 0, %entry ], [ %154, %bb9 ]
  %sp.0.ph = phi i32 [ -1, %entry ], [ %155, %bb9 ]
  br label %bb

bb:                                               ; preds = %bb3, %bb.outer
  %memtmp81.i.0 = phi i128 [ %ins182, %bb3 ], [ %memtmp81.i.0.ph, %bb.outer ]
  %memtmp75.i.0 = phi i128 [ %ins204, %bb3 ], [ %memtmp75.i.0.ph, %bb.outer ]
  %memtmp69.i.0 = phi i128 [ %ins226, %bb3 ], [ %memtmp69.i.0.ph, %bb.outer ]
  %memtmp63.i.0 = phi i128 [ %ins248, %bb3 ], [ %memtmp63.i.0.ph, %bb.outer ]
  %node_id.0 = phi i32 [ %73, %bb3 ], [ %node_id.0.ph, %bb.outer ]
  %sp.0 = phi i32 [ %76, %bb3 ], [ %sp.0.ph, %bb.outer ]
  %31 = load i32* %2, align 4
  %32 = shl nsw i32 %node_id.0, 3
  %33 = add nsw i32 %31, %32
  %34 = call float @llvm.trax.loadf(i32 %33, i32 2) nounwind
  %35 = call float @llvm.trax.loadf(i32 %33, i32 1) nounwind
  %36 = call float @llvm.trax.loadf(i32 %33, i32 0) nounwind
  %37 = call float @llvm.trax.loadf(i32 %33, i32 5) nounwind
  %38 = call float @llvm.trax.loadf(i32 %33, i32 4) nounwind
  %39 = call float @llvm.trax.loadf(i32 %33, i32 3) nounwind
  %40 = load float* %3, align 4
  %41 = load float* %4, align 4
  %42 = load float* %5, align 4
  %tmp736 = bitcast float %40 to i32
  %tmp737 = zext i32 %tmp736 to i96
  %tmp730 = bitcast float %41 to i32
  %tmp731 = zext i32 %tmp730 to i96
  %tmp732 = shl nuw nsw i96 %tmp731, 32
  %tmp724 = bitcast float %42 to i32
  %tmp421 = zext i32 %tmp724 to i128
  %tmp422 = shl nuw nsw i128 %tmp421, 64
  %43 = fsub float %36, %40
  %44 = load float* %6, align 4
  %45 = load float* %7, align 4
  %46 = load float* %8, align 4
  %tmp713 = bitcast float %44 to i32
  %tmp714 = zext i32 %tmp713 to i96
  %tmp707 = bitcast float %45 to i32
  %tmp708 = zext i32 %tmp707 to i96
  %tmp709 = shl nuw nsw i96 %tmp708, 32
  %tmp701 = bitcast float %46 to i32
  %tmp399 = zext i32 %tmp701 to i128
  %tmp400 = shl nuw nsw i128 %tmp399, 64
  %47 = fdiv float %43, %44
  %48 = fsub float %39, %40
  %49 = fdiv float %48, %44
  %50 = fcmp ogt float %47, %49
  %tx1.i.0 = select i1 %50, float %49, float %47
  %tx2.i.0 = select i1 %50, float %47, float %49
  %51 = fcmp ogt float %tx1.i.0, -1.000000e+10
  %tnear.i.0 = select i1 %51, float %tx1.i.0, float -1.000000e+10
  %52 = fcmp olt float %tx2.i.0, 1.000000e+10
  %tfar.i.0 = select i1 %52, float %tx2.i.0, float 1.000000e+10
  %53 = fcmp ogt float %tnear.i.0, %tfar.i.0
  %54 = fcmp olt float %tfar.i.0, 0.000000e+00
  %or.cond = or i1 %53, %54
  br i1 %or.cond, label %bb7, label %bb29.i

bb29.i:                                           ; preds = %bb
  %55 = fsub float %35, %41
  %56 = fdiv float %55, %45
  %57 = fsub float %38, %41
  %58 = fdiv float %57, %45
  %59 = fcmp ogt float %56, %58
  %ty1.i.0 = select i1 %59, float %58, float %56
  %ty2.i.0 = select i1 %59, float %56, float %58
  %60 = fcmp ogt float %ty1.i.0, %tnear.i.0
  %tnear.i.1 = select i1 %60, float %ty1.i.0, float %tnear.i.0
  %61 = fcmp olt float %ty2.i.0, %tfar.i.0
  %tfar.i.1 = select i1 %61, float %ty2.i.0, float %tfar.i.0
  %62 = fcmp ogt float %tnear.i.1, %tfar.i.1
  %63 = fcmp olt float %tfar.i.1, 0.000000e+00
  %or.cond1395 = or i1 %62, %63
  br i1 %or.cond1395, label %bb7, label %bb62.i

bb62.i:                                           ; preds = %bb29.i
  %ins550 = or i96 %tmp737, %tmp732
  %tmp251 = zext i96 %ins550 to i128
  %mask252 = and i128 %memtmp63.i.0, -79228162514264337593543950336
  %mask247 = or i128 %mask252, %tmp251
  %ins248 = or i128 %mask247, %tmp422
  %tmp233 = lshr i128 %ins248, 64
  %tmp234 = trunc i128 %tmp233 to i32
  %tmp235 = bitcast i32 %tmp234 to float
  %64 = fsub float %34, %tmp235
  %ins527 = or i96 %tmp714, %tmp709
  %tmp229 = zext i96 %ins527 to i128
  %mask230 = and i128 %memtmp69.i.0, -79228162514264337593543950336
  %mask225 = or i128 %mask230, %tmp229
  %ins226 = or i128 %mask225, %tmp400
  %tmp211 = lshr i128 %ins226, 64
  %tmp212 = trunc i128 %tmp211 to i32
  %tmp213 = bitcast i32 %tmp212 to float
  %65 = fdiv float %64, %tmp213
  %ins504 = or i96 %tmp737, %tmp732
  %tmp207 = zext i96 %ins504 to i128
  %mask208 = and i128 %memtmp75.i.0, -79228162514264337593543950336
  %mask203 = or i128 %mask208, %tmp207
  %ins204 = or i128 %mask203, %tmp422
  %tmp189 = lshr i128 %ins204, 64
  %tmp190 = trunc i128 %tmp189 to i32
  %tmp191 = bitcast i32 %tmp190 to float
  %66 = fsub float %37, %tmp191
  %ins481 = or i96 %tmp714, %tmp709
  %tmp185 = zext i96 %ins481 to i128
  %mask186 = and i128 %memtmp81.i.0, -79228162514264337593543950336
  %mask181 = or i128 %mask186, %tmp185
  %ins182 = or i128 %mask181, %tmp400
  %tmp167 = lshr i128 %ins182, 64
  %tmp168 = trunc i128 %tmp167 to i32
  %tmp169 = bitcast i32 %tmp168 to float
  %67 = fdiv float %66, %tmp169
  %68 = fcmp ogt float %65, %67
  %tz1.i.0 = select i1 %68, float %67, float %65
  %tz2.i.0 = select i1 %68, float %65, float %67
  %69 = fcmp ogt float %tz1.i.0, %tnear.i.1
  %tnear.i.2 = select i1 %69, float %tz1.i.0, float %tnear.i.1
  %70 = fcmp olt float %tz2.i.0, %tfar.i.1
  %tfar.i.2 = select i1 %70, float %tz2.i.0, float %tfar.i.1
  %71 = fcmp ogt float %tnear.i.2, %tfar.i.2
  %72 = fcmp olt float %tfar.i.2, 0.000000e+00
  %or.cond1396 = or i1 %71, %72
  br i1 %or.cond1396, label %bb7, label %bb1

bb1:                                              ; preds = %bb62.i
  %73 = call i32 @llvm.trax.loadi(i32 %33, i32 7)
  %74 = call i32 @llvm.trax.loadi(i32 %33, i32 6)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %bb3, label %bb6

bb3:                                              ; preds = %bb1
  %76 = add nsw i32 %sp.0, 1
  %77 = add nsw i32 %73, 1
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [32 x i32]* %stack, i64 0, i64 %78
  store i32 %77, i32* %79, align 4
  br label %bb

bb5:                                              ; preds = %bb6
  %80 = mul nsw i32 %storemerge, 11
  %81 = add nsw i32 %80, %73
  %82 = call float @llvm.trax.loadf(i32 %81, i32 2) nounwind
  %83 = call float @llvm.trax.loadf(i32 %81, i32 1) nounwind
  %84 = call float @llvm.trax.loadf(i32 %81, i32 0) nounwind
  %tmp808 = bitcast float %84 to i32
  %tmp809 = zext i32 %tmp808 to i64
  %tmp789 = bitcast float %83 to i32
  %tmp790 = zext i32 %tmp789 to i64
  %tmp791 = shl nuw i64 %tmp790, 32
  %ins793 = or i64 %tmp809, %tmp791
  %85 = call float @llvm.trax.loadf(i32 %81, i32 5) nounwind
  %86 = call float @llvm.trax.loadf(i32 %81, i32 4) nounwind
  %87 = call float @llvm.trax.loadf(i32 %81, i32 3) nounwind
  %tmp784 = bitcast float %87 to i32
  %tmp785 = zext i32 %tmp784 to i64
  %tmp765 = bitcast float %86 to i32
  %tmp766 = zext i32 %tmp765 to i64
  %tmp767 = shl nuw i64 %tmp766, 32
  %ins769 = or i64 %tmp785, %tmp767
  %88 = call float @llvm.trax.loadf(i32 %81, i32 8) nounwind
  %89 = call float @llvm.trax.loadf(i32 %81, i32 7) nounwind
  %90 = call float @llvm.trax.loadf(i32 %81, i32 6) nounwind
  %tmp760 = bitcast float %90 to i32
  %tmp761 = zext i32 %tmp760 to i64
  %tmp741 = bitcast float %89 to i32
  %tmp742 = zext i32 %tmp741 to i64
  %tmp743 = shl nuw i64 %tmp742, 32
  %ins745 = or i64 %tmp761, %tmp743
  %91 = call i32 @llvm.trax.loadi(i32 %81, i32 10) nounwind
  %92 = call i32 @llvm.trax.loadi(i32 %81, i32 9) nounwind
  %tmp806 = bitcast i64 %ins793 to double
  %tmp782 = bitcast i64 %ins769 to double
  %tmp758 = bitcast i64 %ins745 to double
  call fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %tri, double %tmp806, float %82, double %tmp782, float %85, double %tmp758, float %88, i32 %92, i32 %91) nounwind ssp
  %tmp820 = load float* %ray819.0, align 1
  %tmp821 = load float* %ray819.1, align 1
  %tmp822 = load float* %ray819.2, align 1
  %tmp = load float* %ray.1.0, align 1
  %tmp817 = load float* %ray.1.1, align 1
  %tmp818 = load float* %ray.1.2, align 1
  %val.i31 = load double* %elt.i30, align 8
  %val2.i32 = load float* %11, align 8
  %93 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %9, double %val.i31, float %val2.i32) nounwind
  %mrv_gr.i34 = extractvalue %0 %93, 0
  %tmp1039 = bitcast double %mrv_gr.i34 to i64
  %mrv_gr4.i = extractvalue %0 %93, 1
  %tmp1026 = trunc i64 %tmp1039 to i32
  %tmp1027 = bitcast i32 %tmp1026 to float
  store float %tmp1027, float* %12, align 8
  %tmp1029 = lshr i64 %tmp1039, 32
  %tmp1030 = trunc i64 %tmp1029 to i32
  %tmp1031 = bitcast i32 %tmp1030 to float
  store float %tmp1031, float* %13, align 4
  store float %mrv_gr4.i, float* %14, align 8
  %94 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %15, double %val.i31, float %val2.i32) nounwind
  %mrv_gr12.i36 = extractvalue %0 %94, 0
  %tmp1017 = bitcast double %mrv_gr12.i36 to i64
  %mrv_gr14.i38 = extractvalue %0 %94, 1
  %tmp1007 = lshr i64 %tmp1017, 32
  %95 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i, double %mrv_gr12.i36, float %mrv_gr14.i38) nounwind
  %mrv_gr22.i = extractvalue %0 %95, 0
  %tmp995 = bitcast double %mrv_gr22.i to i64
  %mrv_gr24.i = extractvalue %0 %95, 1
  %tmp982 = trunc i64 %tmp995 to i32
  %tmp983 = bitcast i32 %tmp982 to float
  store float %tmp983, float* %16, align 8
  %tmp985 = lshr i64 %tmp995, 32
  %tmp986 = trunc i64 %tmp985 to i32
  %tmp987 = bitcast i32 %tmp986 to float
  store float %tmp987, float* %17, align 4
  store float %mrv_gr24.i, float* %18, align 8
  %96 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %normal.i) nounwind
  %mrv_gr28.i = extractvalue %0 %96, 0
  %tmp973 = bitcast double %mrv_gr28.i to i64
  %mrv_gr30.i = extractvalue %0 %96, 1
  %tmp960 = trunc i64 %tmp973 to i32
  %tmp961 = bitcast i32 %tmp960 to float
  store float %tmp961, float* %16, align 8
  %tmp963 = lshr i64 %tmp973, 32
  %tmp964 = trunc i64 %tmp963 to i32
  %tmp965 = bitcast i32 %tmp964 to float
  store float %tmp965, float* %17, align 4
  store float %mrv_gr30.i, float* %18, align 8
  %tmp1161 = bitcast float %tmp to i32
  %tmp1162 = zext i32 %tmp1161 to i96
  %tmp1155 = bitcast float %tmp817 to i32
  %tmp1156 = zext i32 %tmp1155 to i96
  %tmp1157 = shl nuw nsw i96 %tmp1156, 32
  %ins1159 = or i96 %tmp1162, %tmp1157
  %tmp1149 = bitcast float %tmp818 to i32
  %tmp952 = zext i96 %ins1159 to i128
  %mask953 = and i128 %memtmp32.i.1, -79228162514264337593543950336
  %tmp946 = zext i32 %tmp1149 to i128
  %tmp947 = shl nuw nsw i128 %tmp946, 64
  %mask948 = or i128 %mask953, %tmp952
  %ins949 = or i128 %mask948, %tmp947
  store float %tmp, float* %19, align 8
  store float %tmp817, float* %20, align 4
  %tmp934 = lshr i128 %ins949, 64
  %tmp935 = trunc i128 %tmp934 to i32
  %tmp936 = bitcast i32 %tmp935 to float
  store float %tmp936, float* %21, align 8
  %97 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %1, double %mrv_gr12.i36, float %mrv_gr14.i38) nounwind
  %mrv_gr44.i48 = extractvalue %0 %97, 0
  %tmp929 = bitcast double %mrv_gr44.i48 to i64
  %mrv_gr46.i50 = extractvalue %0 %97, 1
  %tmp919 = lshr i64 %tmp929, 32
  %tmp1246 = trunc i64 %tmp929 to i32
  %tmp1247 = bitcast i32 %tmp1246 to float
  %98 = fmul float %tmp1247, %tmp1027
  %99 = fadd float %98, 0.000000e+00
  %tmp1243 = trunc i64 %tmp919 to i32
  %tmp1244 = bitcast i32 %tmp1243 to float
  %100 = fmul float %tmp1244, %tmp1031
  %101 = fadd float %100, %99
  %102 = fmul float %mrv_gr46.i50, %mrv_gr4.i
  %103 = fadd float %102, %101
  %104 = fdiv float 1.000000e+00, %103
  %tmp1278 = bitcast float %tmp820 to i32
  %tmp1279 = zext i32 %tmp1278 to i96
  %tmp1272 = bitcast float %tmp821 to i32
  %tmp1273 = zext i32 %tmp1272 to i96
  %tmp1274 = shl nuw nsw i96 %tmp1273, 32
  %ins1276 = or i96 %tmp1279, %tmp1274
  %tmp1266 = bitcast float %tmp822 to i32
  %tmp908 = zext i96 %ins1276 to i128
  %mask909 = and i128 %memtmp52.i.1, -79228162514264337593543950336
  %tmp902 = zext i32 %tmp1266 to i128
  %tmp903 = shl nuw nsw i128 %tmp902, 64
  %mask904 = or i128 %mask909, %tmp908
  %ins905 = or i128 %mask904, %tmp903
  store float %tmp820, float* %22, align 8
  store float %tmp821, float* %23, align 4
  %tmp890 = lshr i128 %ins905, 64
  %tmp891 = trunc i128 %tmp890 to i32
  %tmp892 = bitcast i32 %tmp891 to float
  store float %tmp892, float* %24, align 8
  %val59.i = load double* %elt.i30, align 8
  %val61.i = load float* %11, align 8
  %105 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %val59.i, float %val61.i) nounwind
  %mrv_gr64.i = extractvalue %0 %105, 0
  %tmp885 = bitcast double %mrv_gr64.i to i64
  %mrv_gr66.i = extractvalue %0 %105, 1
  %tmp872 = trunc i64 %tmp885 to i32
  %tmp873 = bitcast i32 %tmp872 to float
  store float %tmp873, float* %25, align 8
  %tmp875 = lshr i64 %tmp885, 32
  %tmp876 = trunc i64 %tmp875 to i32
  %tmp877 = bitcast i32 %tmp876 to float
  store float %tmp877, float* %26, align 4
  store float %mrv_gr66.i, float* %27, align 8
  %tmp1291 = trunc i64 %tmp929 to i32
  %tmp1292 = bitcast i32 %tmp1291 to float
  %106 = fmul float %tmp1292, %tmp873
  %107 = fadd float %106, 0.000000e+00
  %tmp1288 = trunc i64 %tmp919 to i32
  %tmp1289 = bitcast i32 %tmp1288 to float
  %108 = fmul float %tmp1289, %tmp877
  %109 = fadd float %108, %107
  %110 = fmul float %mrv_gr46.i50, %mrv_gr66.i
  %111 = fadd float %110, %109
  %112 = fmul float %111, %104
  %113 = fcmp olt float %112, 0.000000e+00
  %114 = fcmp ogt float %112, 1.000000e+00
  %or.cond1397 = or i1 %113, %114
  br i1 %or.cond1397, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb73.i

bb73.i:                                           ; preds = %bb5
  %val75.i = load double* %elt74.i, align 8
  %115 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %s.i, double %val75.i, float %mrv_gr4.i) nounwind
  %mrv_gr80.i = extractvalue %0 %115, 0
  %tmp863 = bitcast double %mrv_gr80.i to i64
  %mrv_gr82.i = extractvalue %0 %115, 1
  %tmp853 = lshr i64 %tmp863, 32
  %ins1321 = or i96 %tmp1162, %tmp1157
  %tmp842 = zext i96 %ins1321 to i128
  %mask843 = and i128 %memtmp84.i.2, -79228162514264337593543950336
  %mask838 = or i128 %mask843, %tmp842
  %ins839 = or i128 %mask838, %tmp947
  %tmp824 = lshr i128 %ins839, 64
  %tmp825 = trunc i128 %tmp824 to i32
  %tmp826 = bitcast i32 %tmp825 to float
  %tmp1336 = trunc i64 %tmp863 to i32
  %tmp1337 = bitcast i32 %tmp1336 to float
  %116 = fmul float %tmp1337, %tmp
  %117 = fadd float %116, 0.000000e+00
  %tmp1333 = trunc i64 %tmp853 to i32
  %tmp1334 = bitcast i32 %tmp1333 to float
  %118 = fmul float %tmp1334, %tmp817
  %119 = fadd float %118, %117
  %120 = fmul float %mrv_gr82.i, %tmp826
  %121 = fadd float %120, %119
  %122 = fmul float %121, %104
  %123 = fcmp olt float %122, 0.000000e+00
  br i1 %123, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb94.i55

bb94.i55:                                         ; preds = %bb73.i
  %124 = fadd float %122, %112
  %125 = fcmp ogt float %124, 1.000000e+00
  br i1 %125, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb96.i

bb96.i:                                           ; preds = %bb94.i55
  %tmp1358 = trunc i64 %tmp863 to i32
  %tmp1359 = bitcast i32 %tmp1358 to float
  %tmp1102 = trunc i64 %tmp1017 to i32
  %tmp1103 = bitcast i32 %tmp1102 to float
  %126 = fmul float %tmp1359, %tmp1103
  %127 = fadd float %126, 0.000000e+00
  %tmp1355 = trunc i64 %tmp853 to i32
  %tmp1356 = bitcast i32 %tmp1355 to float
  %tmp1106 = trunc i64 %tmp1007 to i32
  %tmp1107 = bitcast i32 %tmp1106 to float
  %128 = fmul float %tmp1356, %tmp1107
  %129 = fadd float %128, %127
  %130 = fmul float %mrv_gr82.i, %mrv_gr14.i38
  %131 = fadd float %130, %129
  %132 = fmul float %131, %104
  %133 = fcmp ule float %132, 0.000000e+00
  %134 = fcmp olt float %132, 0x3F50624DE0000000
  %or.cond1398 = or i1 %133, %134
  %135 = fcmp oeq float %132, 1.000000e+10
  %or.cond1399 = or i1 %or.cond1398, %135
  br i1 %or.cond1399, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb96.i
  %136 = load float* %28, align 4
  %137 = fcmp ogt float %136, %132
  br i1 %137, label %bb3.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit

bb3.i.i:                                          ; preds = %bb2.i.i
  store float %132, float* %28, align 4
  %138 = call float @llvm.trax.loadf(i32 %81, i32 2) nounwind
  %139 = call float @llvm.trax.loadf(i32 %81, i32 1) nounwind
  %140 = call float @llvm.trax.loadf(i32 %81, i32 0) nounwind
  %tmp1233 = bitcast float %140 to i32
  %tmp1234 = zext i32 %tmp1233 to i64
  %tmp1214 = bitcast float %139 to i32
  %tmp1215 = zext i32 %tmp1214 to i64
  %tmp1216 = shl nuw i64 %tmp1215, 32
  %ins1218 = or i64 %tmp1234, %tmp1216
  %141 = call float @llvm.trax.loadf(i32 %81, i32 5) nounwind
  %142 = call float @llvm.trax.loadf(i32 %81, i32 4) nounwind
  %143 = call float @llvm.trax.loadf(i32 %81, i32 3) nounwind
  %tmp1209 = bitcast float %143 to i32
  %tmp1210 = zext i32 %tmp1209 to i64
  %tmp1190 = bitcast float %142 to i32
  %tmp1191 = zext i32 %tmp1190 to i64
  %tmp1192 = shl nuw i64 %tmp1191, 32
  %ins1194 = or i64 %tmp1210, %tmp1192
  %144 = call float @llvm.trax.loadf(i32 %81, i32 8) nounwind
  %145 = call float @llvm.trax.loadf(i32 %81, i32 7) nounwind
  %146 = call float @llvm.trax.loadf(i32 %81, i32 6) nounwind
  %tmp1185 = bitcast float %146 to i32
  %tmp1186 = zext i32 %tmp1185 to i64
  %tmp1166 = bitcast float %145 to i32
  %tmp1167 = zext i32 %tmp1166 to i64
  %tmp1168 = shl nuw i64 %tmp1167, 32
  %ins1170 = or i64 %tmp1186, %tmp1168
  %147 = call i32 @llvm.trax.loadi(i32 %81, i32 10) nounwind
  %148 = call i32 @llvm.trax.loadi(i32 %81, i32 9) nounwind
  %tmp1231 = bitcast i64 %ins1218 to double
  %tmp1207 = bitcast i64 %ins1194 to double
  %tmp1183 = bitcast i64 %ins1170 to double
  call fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %memtmp.i.i, double %tmp1231, float %138, double %tmp1207, float %141, double %tmp1183, float %144, i32 %148, i32 %147) nounwind ssp
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %memtmp4.i.i, i64 60, i32 4, i1 false) nounwind
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit: ; preds = %bb3.i.i, %bb2.i.i, %bb96.i, %bb94.i55, %bb73.i, %bb5
  %memtmp84.i.1 = phi i128 [ %memtmp84.i.2, %bb5 ], [ %ins839, %bb73.i ], [ %ins839, %bb94.i55 ], [ %ins839, %bb3.i.i ], [ %ins839, %bb96.i ], [ %ins839, %bb2.i.i ]
  %149 = add nsw i32 %storemerge, 1
  br label %bb6

bb6:                                              ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, %bb1
  %memtmp84.i.2 = phi i128 [ %memtmp84.i.1, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ %memtmp84.i.0.ph, %bb1 ]
  %memtmp52.i.1 = phi i128 [ %ins905, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ %memtmp52.i.0.ph, %bb1 ]
  %memtmp32.i.1 = phi i128 [ %ins949, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ %memtmp32.i.0.ph, %bb1 ]
  %storemerge = phi i32 [ %149, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ 0, %bb1 ]
  %150 = icmp slt i32 %storemerge, %74
  br i1 %150, label %bb5, label %bb7

bb7:                                              ; preds = %bb6, %bb62.i, %bb29.i, %bb
  %memtmp63.i.11385 = phi i128 [ %ins248, %bb6 ], [ %memtmp63.i.0, %bb ], [ %memtmp63.i.0, %bb29.i ], [ %ins248, %bb62.i ]
  %memtmp69.i.11383 = phi i128 [ %ins226, %bb6 ], [ %memtmp69.i.0, %bb ], [ %memtmp69.i.0, %bb29.i ], [ %ins226, %bb62.i ]
  %memtmp75.i.11381 = phi i128 [ %ins204, %bb6 ], [ %memtmp75.i.0, %bb ], [ %memtmp75.i.0, %bb29.i ], [ %ins204, %bb62.i ]
  %memtmp81.i.11379 = phi i128 [ %ins182, %bb6 ], [ %memtmp81.i.0, %bb ], [ %memtmp81.i.0, %bb29.i ], [ %ins182, %bb62.i ]
  %memtmp84.i.3 = phi i128 [ %memtmp84.i.2, %bb6 ], [ %memtmp84.i.0.ph, %bb ], [ %memtmp84.i.0.ph, %bb29.i ], [ %memtmp84.i.0.ph, %bb62.i ]
  %memtmp52.i.2 = phi i128 [ %memtmp52.i.1, %bb6 ], [ %memtmp52.i.0.ph, %bb ], [ %memtmp52.i.0.ph, %bb29.i ], [ %memtmp52.i.0.ph, %bb62.i ]
  %memtmp32.i.2 = phi i128 [ %memtmp32.i.1, %bb6 ], [ %memtmp32.i.0.ph, %bb ], [ %memtmp32.i.0.ph, %bb29.i ], [ %memtmp32.i.0.ph, %bb62.i ]
  %151 = icmp slt i32 %sp.0, 0
  br i1 %151, label %return, label %bb9

bb9:                                              ; preds = %bb7
  %152 = sext i32 %sp.0 to i64
  %153 = getelementptr inbounds [32 x i32]* %stack, i64 0, i64 %152
  %154 = load i32* %153, align 4
  %155 = add nsw i32 %sp.0, -1
  br label %bb.outer

return:                                           ; preds = %bb7
  ret void
}

define internal fastcc %0 @_ZN5Color3addES_(%struct.Color* nocapture %this, double %color.0, float %color.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %color.0 to i64
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %2 = fadd float %tmp42, %1
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %5 = fadd float %tmp39, %4
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fadd float %7, %color.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

define i32 @main() ssp {
entry:
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %edge1.i.i = alloca %struct.Color, align 8
  %n.i.i = alloca %struct.Color, align 8
  %ray_to_light_source28.i = alloca %struct.Box, align 8
  %2 = alloca %struct.Color, align 8
  %3 = alloca %struct.Color, align 8
  %4 = alloca %struct.Color, align 8
  %light.i = alloca %struct.Color, align 8
  %L.i = alloca %struct.Color, align 8
  %hit_record73 = alloca %struct.HitRecord, align 8
  %5 = alloca %struct.Color, align 8
  %V.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %result = alloca %struct.Color, align 8
  %ray = alloca %struct.Box, align 8
  %bvh = alloca %struct.BVH, align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %6 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %7 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %8 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %9 = call float @llvm.trax.loadf(i32 0, i32 2)
  %10 = call float @llvm.trax.loadf(i32 0, i32 5)
  %11 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %12 = call float @llvm.trax.loadf(i32 %11, i32 0) nounwind
  %13 = call float @llvm.trax.loadf(i32 %11, i32 1) nounwind
  %14 = call float @llvm.trax.loadf(i32 %11, i32 2) nounwind
  %tmp483 = bitcast float %13 to i32
  %tmp484 = zext i32 %tmp483 to i96
  %15 = getelementptr inbounds %struct.Color* %result, i64 0, i32 0
  store float 0.000000e+00, float* %15, align 8
  %16 = getelementptr inbounds %struct.Color* %result, i64 0, i32 1
  store float 0.000000e+00, float* %16, align 4
  %17 = getelementptr inbounds %struct.Color* %result, i64 0, i32 2
  store float 0.000000e+00, float* %17, align 8
  %18 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %19 = call float @llvm.trax.loadf(i32 %18, i32 0) nounwind
  %20 = call float @llvm.trax.loadf(i32 %18, i32 1) nounwind
  %21 = call float @llvm.trax.loadf(i32 %18, i32 2) nounwind
  %22 = add nsw i32 %18, 9
  %23 = call float @llvm.trax.loadf(i32 %22, i32 0) nounwind
  %24 = call float @llvm.trax.loadf(i32 %22, i32 1) nounwind
  %25 = call float @llvm.trax.loadf(i32 %22, i32 2) nounwind
  %26 = add nsw i32 %18, 12
  %27 = call float @llvm.trax.loadf(i32 %26, i32 0) nounwind
  %28 = call float @llvm.trax.loadf(i32 %26, i32 1) nounwind
  %29 = call float @llvm.trax.loadf(i32 %26, i32 2) nounwind
  %30 = add nsw i32 %18, 15
  %31 = call float @llvm.trax.loadf(i32 %30, i32 0) nounwind
  %32 = call float @llvm.trax.loadf(i32 %30, i32 1) nounwind
  %33 = call float @llvm.trax.loadf(i32 %30, i32 2) nounwind
  %34 = add nsw i32 %18, 18
  %35 = call float @llvm.trax.loadf(i32 %34, i32 0) nounwind
  %36 = call float @llvm.trax.loadf(i32 %34, i32 1) nounwind
  %37 = call float @llvm.trax.loadf(i32 %34, i32 2) nounwind
  %38 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %39 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %40 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %41 = bitcast %struct.Box* %ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %41, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %40, align 4
  %42 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %42, align 4
  %43 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %44 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %45 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %46 = getelementptr inbounds %struct.BVH* %bvh, i64 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = call i32 @llvm.trax.atominc(i32 0)
  %48 = mul nsw i32 %6, %7
  %49 = sitofp i32 %6 to float
  %50 = fdiv float %49, -2.000000e+00
  %51 = sitofp i32 %7 to float
  %52 = fdiv float %51, -2.000000e+00
  %53 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %54 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %55 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %56 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %57 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %58 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %59 = getelementptr inbounds %struct.Color* %5, i64 0, i32 0
  %60 = getelementptr inbounds %struct.Color* %5, i64 0, i32 1
  %61 = getelementptr inbounds %struct.Color* %5, i64 0, i32 2
  %62 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %63 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %64 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %65 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %66 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %67 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %68 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %69 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %70 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %71 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %72 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %73 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %74 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %75 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %76 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %77 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %78 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %tmp = bitcast %struct.HitRecord* %hit_record73 to i8*
  %tmp74 = bitcast %struct.HitRecord* %hit_record to i8*
  %ray1082.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray1082.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray1082.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %.01551 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 0, i32 0
  %.11553 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 0, i32 1
  %.21555 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 0, i32 2
  %.11524.0 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 1, i32 0
  %.11524.1 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 1, i32 1
  %.11524.2 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 1, i32 2
  %.21525.0 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 2, i32 0
  %.21525.1 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 2, i32 1
  %.21525.2 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 2, i32 2
  %.41535.0 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 4, i32 0, i32 0
  %.41535.1 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 4, i32 0, i32 1
  %.41535.2 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 4, i32 0, i32 2
  %.4.1 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 4, i32 1
  %.4.2 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 1, i32 4, i32 2
  %79 = getelementptr inbounds %struct.HitRecord* %hit_record73, i64 0, i32 0
  %80 = getelementptr inbounds %struct.Color* %4, i64 0, i32 0
  %81 = getelementptr inbounds %struct.Color* %4, i64 0, i32 1
  %82 = getelementptr inbounds %struct.Color* %4, i64 0, i32 2
  %83 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %84 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %85 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %86 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 0
  %87 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 1
  %88 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 2
  %89 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %90 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %91 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %92 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 0
  %93 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 1
  %94 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 2
  %95 = getelementptr inbounds %struct.Color* %3, i64 0, i32 0
  %96 = getelementptr inbounds %struct.Color* %3, i64 0, i32 1
  %97 = getelementptr inbounds %struct.Color* %3, i64 0, i32 2
  %98 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 0
  %99 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 1
  %100 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 2
  %tmp2455 = bitcast float %12 to i32
  %tmp2456 = zext i32 %tmp2455 to i96
  %tmp2451 = shl nuw nsw i96 %tmp484, 32
  %tmp2443 = bitcast float %14 to i32
  %tmp1256 = zext i32 %tmp2443 to i128
  %tmp1257 = shl nuw nsw i128 %tmp1256, 64
  %101 = getelementptr inbounds %struct.Color* %2, i64 0, i32 0
  %102 = getelementptr inbounds %struct.Color* %2, i64 0, i32 1
  %103 = getelementptr inbounds %struct.Color* %2, i64 0, i32 2
  %104 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 0
  %105 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 1
  %106 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 2
  %ray_to_light_source28.i1568.0 = getelementptr inbounds %struct.Box* %ray_to_light_source28.i, i64 0, i32 0, i32 0
  %ray_to_light_source28.i1568.1 = getelementptr inbounds %struct.Box* %ray_to_light_source28.i, i64 0, i32 0, i32 1
  %ray_to_light_source28.i1568.2 = getelementptr inbounds %struct.Box* %ray_to_light_source28.i, i64 0, i32 0, i32 2
  %ray_to_light_source28.i.1.0 = getelementptr inbounds %struct.Box* %ray_to_light_source28.i, i64 0, i32 1, i32 0
  %ray_to_light_source28.i.1.1 = getelementptr inbounds %struct.Box* %ray_to_light_source28.i, i64 0, i32 1, i32 1
  %ray_to_light_source28.i.1.2 = getelementptr inbounds %struct.Box* %ray_to_light_source28.i, i64 0, i32 1, i32 2
  %elt26 = bitcast %struct.Color* %result to double*
  br label %bb30

bb:                                               ; preds = %bb30
  %107 = sdiv i32 %storemerge, %6
  %108 = srem i32 %storemerge, %6
  %109 = sitofp i32 %108 to float
  %110 = fadd float %109, %50
  %111 = fadd float %110, 5.000000e-01
  %112 = fmul float %111, 2.000000e+00
  %113 = fdiv float %112, %49
  %114 = sitofp i32 %107 to float
  %115 = fadd float %114, %52
  %116 = fadd float %115, 5.000000e-01
  %117 = fmul float %116, 2.000000e+00
  %118 = fdiv float %117, %51
  br label %bb18

bb2:                                              ; preds = %bb18
  %119 = call float @llvm.trax.rand()
  %120 = fadd float %119, -5.000000e-01
  %121 = fmul float %120, 2.000000e+00
  %122 = call float @llvm.trax.rand()
  %123 = fadd float %122, -5.000000e-01
  %124 = fmul float %123, 2.000000e+00
  %125 = fmul float %121, %9
  %126 = fmul float %124, %10
  %127 = fsub float %118, %126
  %128 = fsub float %113, %125
  store float %27, float* %56, align 8
  store float %28, float* %57, align 4
  store float %29, float* %58, align 8
  %129 = fmul float %35, %127
  %130 = fmul float %36, %127
  %131 = fmul float %37, %127
  %tmp1049 = bitcast float %129 to i32
  %tmp1050 = zext i32 %tmp1049 to i96
  %tmp1043 = bitcast float %130 to i32
  %tmp1044 = zext i32 %tmp1043 to i96
  %tmp1045 = shl nuw nsw i96 %tmp1044, 32
  %ins1047 = or i96 %tmp1050, %tmp1045
  %tmp1037 = bitcast float %131 to i32
  %tmp907 = zext i96 %ins1047 to i128
  %mask908 = and i128 %memtmp.i42.0, -79228162514264337593543950336
  %tmp901 = zext i32 %tmp1037 to i128
  %tmp902 = shl nuw nsw i128 %tmp901, 64
  %mask903 = or i128 %mask908, %tmp907
  %ins904 = or i128 %mask903, %tmp902
  %tmp950 = bitcast float %129 to i32
  %tmp951 = zext i32 %tmp950 to i64
  %tmp944 = bitcast float %130 to i32
  %tmp945 = zext i32 %tmp944 to i64
  %tmp946 = shl nuw i64 %tmp945, 32
  %ins948 = or i64 %tmp951, %tmp946
  %ins904.tr = trunc i128 %ins904 to i96
  %132 = fmul float %31, %128
  %133 = fmul float %32, %128
  %134 = fmul float %33, %128
  %tmp1072 = bitcast float %132 to i32
  %tmp1073 = zext i32 %tmp1072 to i96
  %tmp1066 = bitcast float %133 to i32
  %tmp1067 = zext i32 %tmp1066 to i96
  %tmp1068 = shl nuw nsw i96 %tmp1067, 32
  %ins1070 = or i96 %tmp1073, %tmp1068
  %tmp1060 = bitcast float %134 to i32
  %tmp885 = zext i96 %ins1070 to i128
  %mask886 = and i128 %memtmp4.i43.0, -79228162514264337593543950336
  %tmp879 = zext i32 %tmp1060 to i128
  %tmp880 = shl nuw nsw i128 %tmp879, 64
  %mask881 = or i128 %mask886, %tmp885
  %ins882 = or i128 %mask881, %tmp880
  store float %132, float* %59, align 8
  store float %133, float* %60, align 4
  %tmp867 = lshr i128 %ins882, 64
  %tmp868 = trunc i128 %tmp867 to i32
  %tmp869 = bitcast i32 %tmp868 to float
  store float %tmp869, float* %61, align 8
  %tmp936 = bitcast i64 %ins948 to double
  %tmp931 = lshr i96 %ins904.tr, 64
  %tmp932 = trunc i96 %tmp931 to i32
  %tmp933 = bitcast i32 %tmp932 to float
  %135 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %5, double %tmp936, float %tmp933) nounwind
  %mrv_gr14.i63 = extractvalue %0 %135, 0
  %mrv_gr16.i = extractvalue %0 %135, 1
  %136 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i63, float %mrv_gr16.i) nounwind
  %mrv_gr24.i65 = extractvalue %0 %136, 0
  %tmp840 = bitcast double %mrv_gr24.i65 to i64
  %mrv_gr26.i67 = extractvalue %0 %136, 1
  %tmp827 = trunc i64 %tmp840 to i32
  %tmp828 = bitcast i32 %tmp827 to float
  store float %tmp828, float* %53, align 8
  %tmp830 = lshr i64 %tmp840, 32
  %tmp831 = trunc i64 %tmp830 to i32
  %tmp832 = bitcast i32 %tmp831 to float
  store float %tmp832, float* %54, align 4
  store float %mrv_gr26.i67, float* %55, align 8
  %137 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %137, 0
  %tmp818 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i = extractvalue %0 %137, 1
  %tmp808 = lshr i64 %tmp818, 32
  %tmp995 = trunc i64 %tmp818 to i32
  %tmp996 = bitcast i32 %tmp995 to float
  %tmp992 = trunc i64 %tmp808 to i32
  %tmp993 = bitcast i32 %tmp992 to float
  store float %19, float* %38, align 8
  store float %20, float* %62, align 4
  store float %21, float* %63, align 8
  store float %tmp996, float* %39, align 4
  store float %tmp993, float* %64, align 4
  store float %mrv_gr32.i, float* %65, align 4
  store float 0.000000e+00, float* %66, align 4
  store float 0.000000e+00, float* %67, align 4
  store float 0.000000e+00, float* %68, align 4
  store float 0.000000e+00, float* %69, align 4
  store float 0.000000e+00, float* %70, align 4
  store float 0.000000e+00, float* %71, align 4
  store float 0.000000e+00, float* %72, align 4
  store float 0.000000e+00, float* %73, align 4
  store float 0.000000e+00, float* %74, align 4
  store float 0.000000e+00, float* %75, align 4
  store float 0.000000e+00, float* %76, align 4
  store float 0.000000e+00, float* %77, align 4
  store float 1.000000e+10, float* %78, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record, %struct.Box* %ray)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* %tmp74, i64 64, i32 8, i1 false)
  %tmp1083 = load float* %ray1082.0, align 8
  %tmp1084 = load float* %ray1082.1, align 4
  %tmp1085 = load float* %ray1082.2, align 8
  %tmp1079 = load float* %ray.1.0, align 4
  %tmp1080 = load float* %ray.1.1, align 4
  %tmp1081 = load float* %ray.1.2, align 4
  %tmp1552 = load float* %.01551, align 4
  %tmp1554 = load float* %.11553, align 4
  %tmp1556 = load float* %.21555, align 4
  %tmp1545 = load float* %.11524.0, align 4
  %tmp1546 = load float* %.11524.1, align 4
  %tmp1547 = load float* %.11524.2, align 4
  %tmp1539 = load float* %.21525.0, align 4
  %tmp1540 = load float* %.21525.1, align 4
  %tmp1541 = load float* %.21525.2, align 4
  %tmp1536 = load float* %.41535.0, align 4
  %tmp1537 = load float* %.41535.1, align 4
  %tmp1538 = load float* %.41535.2, align 4
  %tmp1527 = load float* %.4.1, align 4
  %tmp1528 = load float* %.4.2, align 4
  %138 = load float* %79, align 8
  %tmp1885 = bitcast float %tmp1079 to i32
  %tmp1886 = zext i32 %tmp1885 to i96
  %tmp1879 = bitcast float %tmp1080 to i32
  %tmp1880 = zext i32 %tmp1879 to i96
  %tmp1881 = shl nuw nsw i96 %tmp1880, 32
  %ins1883 = or i96 %tmp1886, %tmp1881
  %tmp1873 = bitcast float %tmp1081 to i32
  %tmp1460 = zext i96 %ins1883 to i128
  %mask1461 = and i128 %memtmp.i94.0, -79228162514264337593543950336
  %tmp1454 = zext i32 %tmp1873 to i128
  %tmp1455 = shl nuw nsw i128 %tmp1454, 64
  %mask1456 = or i128 %mask1461, %tmp1460
  %ins1457 = or i128 %mask1456, %tmp1455
  %tmp1442 = lshr i128 %ins1457, 64
  %tmp1443 = trunc i128 %tmp1442 to i32
  %tmp1444 = bitcast i32 %tmp1443 to float
  %139 = fmul float %tmp1079, %138
  %140 = fmul float %tmp1080, %138
  %141 = fmul float %tmp1444, %138
  %tmp1908 = bitcast float %139 to i32
  %tmp1909 = zext i32 %tmp1908 to i96
  %tmp1902 = bitcast float %140 to i32
  %tmp1903 = zext i32 %tmp1902 to i96
  %tmp1904 = shl nuw nsw i96 %tmp1903, 32
  %ins1906 = or i96 %tmp1909, %tmp1904
  %tmp1896 = bitcast float %141 to i32
  %tmp1438 = zext i96 %ins1906 to i128
  %mask1439 = and i128 %memtmp4.i95.0, -79228162514264337593543950336
  %tmp1432 = zext i32 %tmp1896 to i128
  %tmp1433 = shl nuw nsw i128 %tmp1432, 64
  %mask1434 = or i128 %mask1439, %tmp1438
  %ins1435 = or i128 %mask1434, %tmp1433
  %tmp1592 = bitcast float %139 to i32
  %tmp1593 = zext i32 %tmp1592 to i64
  %tmp1586 = bitcast float %140 to i32
  %tmp1587 = zext i32 %tmp1586 to i64
  %tmp1588 = shl nuw i64 %tmp1587, 32
  %ins1590 = or i64 %tmp1593, %tmp1588
  %ins1435.tr = trunc i128 %ins1435 to i96
  %tmp1997 = bitcast float %tmp1083 to i32
  %tmp1998 = zext i32 %tmp1997 to i96
  %tmp1991 = bitcast float %tmp1084 to i32
  %tmp1992 = zext i32 %tmp1991 to i96
  %tmp1993 = shl nuw nsw i96 %tmp1992, 32
  %ins1995 = or i96 %tmp1998, %tmp1993
  %tmp1985 = bitcast float %tmp1085 to i32
  %tmp1416 = zext i96 %ins1995 to i128
  %mask1417 = and i128 %memtmp10.i96.0, -79228162514264337593543950336
  %tmp1410 = zext i32 %tmp1985 to i128
  %tmp1411 = shl nuw nsw i128 %tmp1410, 64
  %mask1412 = or i128 %mask1417, %tmp1416
  %ins1413 = or i128 %mask1412, %tmp1411
  store float %tmp1083, float* %80, align 8
  store float %tmp1084, float* %81, align 4
  %tmp1398 = lshr i128 %ins1413, 64
  %tmp1399 = trunc i128 %tmp1398 to i32
  %tmp1400 = bitcast i32 %tmp1399 to float
  store float %tmp1400, float* %82, align 8
  %tmp1578 = bitcast i64 %ins1590 to double
  %tmp1573 = lshr i96 %ins1435.tr, 64
  %tmp1574 = trunc i96 %tmp1573 to i32
  %tmp1575 = bitcast i32 %tmp1574 to float
  %142 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %4, double %tmp1578, float %tmp1575) nounwind
  %mrv_gr20.i116 = extractvalue %0 %142, 0
  %tmp1393 = bitcast double %mrv_gr20.i116 to i64
  %mrv_gr22.i = extractvalue %0 %142, 1
  %tmp1383 = lshr i64 %tmp1393, 32
  %tmp2295 = bitcast float %tmp1545 to i32
  %tmp2296 = zext i32 %tmp2295 to i96
  %tmp2289 = bitcast float %tmp1546 to i32
  %tmp2290 = zext i32 %tmp2289 to i96
  %tmp2291 = shl nuw nsw i96 %tmp2290, 32
  %ins2293 = or i96 %tmp2296, %tmp2291
  %tmp2283 = bitcast float %tmp1547 to i32
  %tmp2182 = zext i96 %ins2293 to i128
  %mask2183 = and i128 %memtmp.i70.i.0, -79228162514264337593543950336
  %tmp2176 = zext i32 %tmp2283 to i128
  %tmp2177 = shl nuw nsw i128 %tmp2176, 64
  %mask2178 = or i128 %mask2183, %tmp2182
  %ins2179 = or i128 %mask2178, %tmp2177
  %tmp2225 = bitcast float %tmp1545 to i32
  %tmp2226 = zext i32 %tmp2225 to i64
  %tmp2219 = bitcast float %tmp1546 to i32
  %tmp2220 = zext i32 %tmp2219 to i64
  %tmp2221 = shl nuw i64 %tmp2220, 32
  %ins2223 = or i64 %tmp2226, %tmp2221
  %ins2179.tr = trunc i128 %ins2179 to i96
  %tmp2318 = bitcast float %tmp1552 to i32
  %tmp2319 = zext i32 %tmp2318 to i96
  %tmp2312 = bitcast float %tmp1554 to i32
  %tmp2313 = zext i32 %tmp2312 to i96
  %tmp2314 = shl nuw nsw i96 %tmp2313, 32
  %ins2316 = or i96 %tmp2319, %tmp2314
  %tmp2306 = bitcast float %tmp1556 to i32
  %tmp2160 = zext i96 %ins2316 to i128
  %mask2161 = and i128 %memtmp4.i.i.0, -79228162514264337593543950336
  %tmp2154 = zext i32 %tmp2306 to i128
  %tmp2155 = shl nuw nsw i128 %tmp2154, 64
  %mask2156 = or i128 %mask2161, %tmp2160
  %ins2157 = or i128 %mask2156, %tmp2155
  store float %tmp1552, float* %83, align 8
  store float %tmp1554, float* %84, align 4
  %tmp2142 = lshr i128 %ins2157, 64
  %tmp2143 = trunc i128 %tmp2142 to i32
  %tmp2144 = bitcast i32 %tmp2143 to float
  store float %tmp2144, float* %85, align 8
  %tmp2211 = bitcast i64 %ins2223 to double
  %tmp2206 = lshr i96 %ins2179.tr, 64
  %tmp2207 = trunc i96 %tmp2206 to i32
  %tmp2208 = bitcast i32 %tmp2207 to float
  %143 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %tmp2211, float %tmp2208) nounwind
  %mrv_gr14.i.i = extractvalue %0 %143, 0
  %tmp2137 = bitcast double %mrv_gr14.i.i to i64
  %mrv_gr16.i.i = extractvalue %0 %143, 1
  %tmp2124 = trunc i64 %tmp2137 to i32
  %tmp2125 = bitcast i32 %tmp2124 to float
  store float %tmp2125, float* %86, align 8
  %tmp2127 = lshr i64 %tmp2137, 32
  %tmp2128 = trunc i64 %tmp2127 to i32
  %tmp2129 = bitcast i32 %tmp2128 to float
  store float %tmp2129, float* %87, align 4
  store float %mrv_gr16.i.i, float* %88, align 8
  %tmp2341 = bitcast float %tmp1539 to i32
  %tmp2342 = zext i32 %tmp2341 to i96
  %tmp2335 = bitcast float %tmp1540 to i32
  %tmp2336 = zext i32 %tmp2335 to i96
  %tmp2337 = shl nuw nsw i96 %tmp2336, 32
  %ins2339 = or i96 %tmp2342, %tmp2337
  %tmp2329 = bitcast float %tmp1541 to i32
  %tmp2116 = zext i96 %ins2339 to i128
  %mask2117 = and i128 %memtmp18.i.i.0, -79228162514264337593543950336
  %tmp2110 = zext i32 %tmp2329 to i128
  %tmp2111 = shl nuw nsw i128 %tmp2110, 64
  %mask2112 = or i128 %mask2117, %tmp2116
  %ins2113 = or i128 %mask2112, %tmp2111
  %tmp2249 = bitcast float %tmp1539 to i32
  %tmp2250 = zext i32 %tmp2249 to i64
  %tmp2243 = bitcast float %tmp1540 to i32
  %tmp2244 = zext i32 %tmp2243 to i64
  %tmp2245 = shl nuw i64 %tmp2244, 32
  %ins2247 = or i64 %tmp2250, %tmp2245
  %ins2113.tr = trunc i128 %ins2113 to i96
  %ins2362 = or i96 %tmp2296, %tmp2291
  %tmp2094 = zext i96 %ins2362 to i128
  %mask2095 = and i128 %memtmp24.i.i.0, -79228162514264337593543950336
  %mask2090 = or i128 %mask2095, %tmp2094
  %ins2091 = or i128 %mask2090, %tmp2177
  store float %tmp1545, float* %89, align 8
  store float %tmp1546, float* %90, align 4
  %tmp2076 = lshr i128 %ins2091, 64
  %tmp2077 = trunc i128 %tmp2076 to i32
  %tmp2078 = bitcast i32 %tmp2077 to float
  store float %tmp2078, float* %91, align 8
  %tmp2235 = bitcast i64 %ins2247 to double
  %tmp2230 = lshr i96 %ins2113.tr, 64
  %tmp2231 = trunc i96 %tmp2230 to i32
  %tmp2232 = bitcast i32 %tmp2231 to float
  %144 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %tmp2235, float %tmp2232) nounwind
  %mrv_gr36.i.i = extractvalue %0 %144, 0
  %mrv_gr38.i.i = extractvalue %0 %144, 1
  %145 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i.i, double %mrv_gr36.i.i, float %mrv_gr38.i.i) nounwind
  %mrv_gr46.i.i = extractvalue %0 %145, 0
  %tmp2049 = bitcast double %mrv_gr46.i.i to i64
  %mrv_gr48.i.i = extractvalue %0 %145, 1
  %tmp2036 = trunc i64 %tmp2049 to i32
  %tmp2037 = bitcast i32 %tmp2036 to float
  store float %tmp2037, float* %92, align 8
  %tmp2039 = lshr i64 %tmp2049, 32
  %tmp2040 = trunc i64 %tmp2039 to i32
  %tmp2041 = bitcast i32 %tmp2040 to float
  store float %tmp2041, float* %93, align 4
  store float %mrv_gr48.i.i, float* %94, align 8
  %146 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n.i.i) nounwind
  %mrv_gr52.i.i = extractvalue %0 %146, 0
  %tmp2027 = bitcast double %mrv_gr52.i.i to i64
  %mrv_gr54.i.i = extractvalue %0 %146, 1
  %tmp2021 = bitcast float %mrv_gr54.i.i to i32
  %tmp2017 = lshr i64 %tmp2027, 32
  %tmp2273 = zext i64 %tmp2027 to i96
  %tmp2267 = zext i64 %tmp2017 to i96
  %tmp2268 = shl nuw nsw i96 %tmp2267, 32
  %tmp2273.masked = and i96 %tmp2273, 4294967295
  %ins2270 = or i96 %tmp2273.masked, %tmp2268
  %tmp1372 = zext i96 %ins2270 to i128
  %mask1373 = and i128 %memtmp24.i.0, -79228162514264337593543950336
  %tmp1366 = zext i32 %tmp2021 to i128
  %tmp1367 = shl nuw nsw i128 %tmp1366, 64
  %mask1368 = or i128 %mask1373, %tmp1372
  %ins1369 = or i128 %mask1368, %tmp1367
  %tmp1358 = trunc i64 %tmp2027 to i32
  %tmp1359 = bitcast i32 %tmp1358 to float
  %tmp1362 = trunc i64 %tmp2017 to i32
  %tmp1363 = bitcast i32 %tmp1362 to float
  %tmp1354 = lshr i128 %ins1369, 64
  %tmp1355 = trunc i128 %tmp1354 to i32
  %tmp1356 = bitcast i32 %tmp1355 to float
  %ins2385 = or i96 %tmp1886, %tmp1881
  %tmp1350 = zext i96 %ins2385 to i128
  %mask1351 = and i128 %memtmp30.i.0, -79228162514264337593543950336
  %mask1346 = or i128 %mask1351, %tmp1350
  %ins1347 = or i128 %mask1346, %tmp1455
  store float %tmp1079, float* %95, align 8
  store float %tmp1080, float* %96, align 4
  %tmp1332 = lshr i128 %ins1347, 64
  %tmp1333 = trunc i128 %tmp1332 to i32
  %tmp1334 = bitcast i32 %tmp1333 to float
  store float %tmp1334, float* %97, align 8
  %147 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %3) nounwind
  %mrv_gr38.i = extractvalue %0 %147, 0
  %tmp1327 = bitcast double %mrv_gr38.i to i64
  %mrv_gr40.i = extractvalue %0 %147, 1
  %tmp1317 = lshr i64 %tmp1327, 32
  %tmp2400 = trunc i64 %tmp1327 to i32
  %tmp2401 = bitcast i32 %tmp2400 to float
  %148 = fmul float %tmp2401, %tmp1359
  %149 = fadd float %148, 0.000000e+00
  %tmp2397 = trunc i64 %tmp1317 to i32
  %tmp2398 = bitcast i32 %tmp2397 to float
  %150 = fmul float %tmp2398, %tmp1363
  %151 = fadd float %150, %149
  %152 = fmul float %mrv_gr40.i, %tmp1356
  %153 = fadd float %152, %151
  %154 = fcmp ogt float %153, 0.000000e+00
  br i1 %154, label %bb.i, label %bb52.i

bb.i:                                             ; preds = %bb2
  %155 = fmul float %tmp1359, -1.000000e+00
  %156 = fmul float %tmp1363, -1.000000e+00
  %157 = fmul float %tmp1356, -1.000000e+00
  %tmp2432 = bitcast float %155 to i32
  %tmp2433 = zext i32 %tmp2432 to i96
  %tmp2426 = bitcast float %156 to i32
  %tmp2427 = zext i32 %tmp2426 to i96
  %tmp2428 = shl nuw nsw i96 %tmp2427, 32
  %ins2430 = or i96 %tmp2433, %tmp2428
  %tmp2420 = bitcast float %157 to i32
  %tmp1306 = zext i96 %ins2430 to i128
  %mask1307 = and i128 %memtmp46.i.1, -79228162514264337593543950336
  %tmp1300 = zext i32 %tmp2420 to i128
  %tmp1301 = shl nuw nsw i128 %tmp1300, 64
  %mask1302 = or i128 %mask1307, %tmp1306
  %ins1303 = or i128 %mask1302, %tmp1301
  %tmp1288 = lshr i128 %ins1303, 64
  %tmp1289 = trunc i128 %tmp1288 to i32
  %tmp1290 = bitcast i32 %tmp1289 to float
  br label %bb52.i

bb52.i:                                           ; preds = %bb.i, %bb2
  %N.i.0.0 = phi float [ %155, %bb.i ], [ %tmp1359, %bb2 ]
  %N.i.1.0 = phi float [ %156, %bb.i ], [ %tmp1363, %bb2 ]
  %N.i.2.0 = phi float [ %tmp1290, %bb.i ], [ %tmp1356, %bb2 ]
  %memtmp46.i.0 = phi i128 [ %ins1303, %bb.i ], [ %memtmp46.i.1, %bb2 ]
  %158 = fmul float %tmp1527, 0x3FD99999A0000000
  %tmp2478 = bitcast float %158 to i32
  %tmp2479 = zext i32 %tmp2478 to i96
  %tmp2474 = shl nuw nsw i96 %tmp2479, 32
  %ins2476 = or i96 %tmp2479, %tmp2474
  %tmp1284 = zext i96 %ins2476 to i128
  %mask1285 = and i128 %memtmp53.i.0, -79228162514264337593543950336
  %tmp1278 = zext i32 %tmp2478 to i128
  %tmp1279 = shl nuw nsw i128 %tmp1278, 64
  %mask1280 = or i128 %mask1285, %tmp1284
  %ins1281 = or i128 %mask1280, %tmp1279
  store float %158, float* %98, align 8
  store float %158, float* %99, align 4
  %tmp1266 = lshr i128 %ins1281, 64
  %tmp1267 = trunc i128 %tmp1266 to i32
  %tmp1268 = bitcast i32 %tmp1267 to float
  store float %tmp1268, float* %100, align 8
  %ins2453 = or i96 %tmp2456, %tmp2451
  %tmp1262 = zext i96 %ins2453 to i128
  %mask1263 = and i128 %memtmp59.i.0, -79228162514264337593543950336
  %mask1258 = or i128 %mask1263, %tmp1262
  %ins1259 = or i128 %mask1258, %tmp1257
  store float %12, float* %101, align 8
  store float %13, float* %102, align 4
  %tmp1244 = lshr i128 %ins1259, 64
  %tmp1245 = trunc i128 %tmp1244 to i32
  %tmp1246 = bitcast i32 %tmp1245 to float
  store float %tmp1246, float* %103, align 8
  %159 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %2, double %mrv_gr20.i116, float %mrv_gr22.i) nounwind
  %mrv_gr71.i = extractvalue %0 %159, 0
  %tmp1239 = bitcast double %mrv_gr71.i to i64
  %mrv_gr73.i = extractvalue %0 %159, 1
  %tmp1226 = trunc i64 %tmp1239 to i32
  %tmp1227 = bitcast i32 %tmp1226 to float
  store float %tmp1227, float* %104, align 8
  %tmp1229 = lshr i64 %tmp1239, 32
  %tmp1230 = trunc i64 %tmp1229 to i32
  %tmp1231 = bitcast i32 %tmp1230 to float
  store float %tmp1231, float* %105, align 4
  store float %mrv_gr73.i, float* %106, align 8
  %160 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %L.i) nounwind
  %mrv_gr77.i = extractvalue %0 %160, 0
  %tmp1217 = bitcast double %mrv_gr77.i to i64
  %mrv_gr79.i = extractvalue %0 %160, 1
  %tmp1207 = lshr i64 %tmp1217, 32
  %tmp1965 = trunc i64 %tmp1217 to i32
  %tmp1966 = bitcast i32 %tmp1965 to float
  %161 = fmul float %tmp1966, %N.i.0.0
  %162 = fadd float %161, 0.000000e+00
  %tmp1962 = trunc i64 %tmp1207 to i32
  %tmp1963 = bitcast i32 %tmp1962 to float
  %163 = fmul float %tmp1963, %N.i.1.0
  %164 = fadd float %163, %162
  %165 = fmul float %mrv_gr79.i, %N.i.2.0
  %166 = fadd float %165, %164
  %167 = fcmp ogt float %166, 0.000000e+00
  br i1 %167, label %bb93.i, label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

bb93.i:                                           ; preds = %bb52.i
  %tmp1918 = trunc i64 %tmp1207 to i32
  %tmp1921 = trunc i64 %tmp1217 to i32
  %tmp1940 = trunc i64 %tmp1383 to i32
  %tmp1943 = trunc i64 %tmp1393 to i32
  %tmp1919 = bitcast i32 %tmp1918 to float
  %tmp1922 = bitcast i32 %tmp1921 to float
  %tmp1941 = bitcast i32 %tmp1940 to float
  %tmp1944 = bitcast i32 %tmp1943 to float
  %168 = load float* %104, align 8
  %169 = fmul float %168, %168
  %170 = load float* %105, align 4
  %171 = fmul float %170, %170
  %172 = fadd float %169, %171
  %173 = load float* %106, align 8
  %174 = fmul float %173, %173
  %175 = fadd float %172, %174
  %176 = call float @llvm.trax.invsqrt(float %175) nounwind
  %177 = fdiv float 1.000000e+00, %176
  store float %tmp1944, float* %ray_to_light_source28.i1568.0, align 8
  store float %tmp1941, float* %ray_to_light_source28.i1568.1, align 4
  store float %mrv_gr22.i, float* %ray_to_light_source28.i1568.2, align 8
  store float %tmp1922, float* %ray_to_light_source28.i.1.0, align 4
  store float %tmp1919, float* %ray_to_light_source28.i.1.1, align 4
  store float %mrv_gr79.i, float* %ray_to_light_source28.i.1.2, align 4
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record73, %struct.Box* %ray_to_light_source28.i) nounwind
  %178 = load float* %79, align 8
  %179 = fcmp uge float %178, %177
  %180 = fcmp ule float %178, 0x3F847AE140000000
  %or.cond = or i1 %179, %180
  br i1 %or.cond, label %bb96.i, label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

bb96.i:                                           ; preds = %bb93.i
  %181 = fmul float %tmp1528, %166
  %tmp1839 = bitcast float %181 to i32
  %tmp1840 = zext i32 %tmp1839 to i96
  %tmp1833 = bitcast float %181 to i32
  %tmp1834 = zext i32 %tmp1833 to i96
  %tmp1835 = shl nuw nsw i96 %tmp1834, 32
  %ins1837 = or i96 %tmp1840, %tmp1835
  %tmp1827 = bitcast float %181 to i32
  %tmp1174 = zext i96 %ins1837 to i128
  %mask1175 = and i128 %memtmp103.i.1, -79228162514264337593543950336
  %tmp1168 = zext i32 %tmp1827 to i128
  %tmp1169 = shl nuw nsw i128 %tmp1168, 64
  %mask1170 = or i128 %mask1175, %tmp1174
  %ins1171 = or i128 %mask1170, %tmp1169
  %tmp1635 = bitcast float %181 to i32
  %tmp1636 = zext i32 %tmp1635 to i64
  %tmp1629 = bitcast float %181 to i32
  %tmp1630 = zext i32 %tmp1629 to i64
  %tmp1631 = shl nuw i64 %tmp1630, 32
  %ins1633 = or i64 %tmp1636, %tmp1631
  %tmp1156 = lshr i128 %ins1171, 64
  %tmp1157 = trunc i128 %tmp1156 to i32
  %tmp1158 = bitcast i32 %tmp1157 to float
  %tmp1621 = bitcast i64 %ins1633 to double
  %182 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %light.i, double %tmp1621, float %tmp1158) nounwind
  %mrv_gr115.i = extractvalue %0 %182, 0
  %tmp1151 = bitcast double %mrv_gr115.i to i64
  %mrv_gr117.i = extractvalue %0 %182, 1
  %tmp1138 = trunc i64 %tmp1151 to i32
  %tmp1139 = bitcast i32 %tmp1138 to float
  store float %tmp1139, float* %98, align 8
  %tmp1141 = lshr i64 %tmp1151, 32
  %tmp1142 = trunc i64 %tmp1141 to i32
  %tmp1143 = bitcast i32 %tmp1142 to float
  store float %tmp1143, float* %99, align 4
  store float %mrv_gr117.i, float* %100, align 8
  br label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit: ; preds = %bb96.i, %bb93.i, %bb52.i
  %183 = phi float [ %mrv_gr117.i, %bb96.i ], [ %tmp1268, %bb52.i ], [ %tmp1268, %bb93.i ]
  %184 = phi float [ %tmp1143, %bb96.i ], [ %158, %bb52.i ], [ %158, %bb93.i ]
  %185 = phi float [ %tmp1139, %bb96.i ], [ %158, %bb52.i ], [ %158, %bb93.i ]
  %memtmp103.i.0 = phi i128 [ %ins1171, %bb96.i ], [ %memtmp103.i.1, %bb52.i ], [ %memtmp103.i.1, %bb93.i ]
  %tmp1816 = bitcast float %tmp1536 to i32
  %tmp1817 = zext i32 %tmp1816 to i96
  %tmp1810 = bitcast float %tmp1537 to i32
  %tmp1811 = zext i32 %tmp1810 to i96
  %tmp1812 = shl nuw nsw i96 %tmp1811, 32
  %ins1814 = or i96 %tmp1817, %tmp1812
  %tmp1804 = bitcast float %tmp1538 to i32
  %tmp1771 = zext i96 %ins1814 to i128
  %mask1772 = and i128 %memtmp.i.i.0, -79228162514264337593543950336
  %tmp1765 = zext i32 %tmp1804 to i128
  %tmp1766 = shl nuw nsw i128 %tmp1765, 64
  %mask1767 = or i128 %mask1772, %tmp1771
  %ins1768 = or i128 %mask1767, %tmp1766
  %tmp1793 = bitcast float %tmp1536 to i32
  %tmp1794 = zext i32 %tmp1793 to i96
  %tmp1787 = bitcast float %tmp1537 to i32
  %tmp1788 = zext i32 %tmp1787 to i96
  %tmp1789 = shl nuw nsw i96 %tmp1788, 32
  %ins1791 = or i96 %tmp1794, %tmp1789
  %tmp1130 = zext i96 %ins1791 to i128
  %mask1131 = and i128 %memtmp120.i.0, -79228162514264337593543950336
  %tmp1125 = and i128 %ins1768, 79228162495817593519834398720
  %mask1126 = or i128 %mask1131, %tmp1130
  %ins1127 = or i128 %mask1126, %tmp1125
  %ins1127.tr = trunc i128 %ins1127 to i96
  %186 = fmul float %tmp1536, %185
  %187 = fmul float %tmp1537, %184
  %tmp1731 = lshr i96 %ins1127.tr, 64
  %tmp1732 = trunc i96 %tmp1731 to i32
  %tmp1733 = bitcast i32 %tmp1732 to float
  %188 = fmul float %tmp1733, %183
  %tmp1726 = bitcast float %186 to i32
  %tmp1727 = zext i32 %tmp1726 to i96
  %tmp1720 = bitcast float %187 to i32
  %tmp1721 = zext i32 %tmp1720 to i96
  %tmp1722 = shl nuw nsw i96 %tmp1721, 32
  %ins1724 = or i96 %tmp1727, %tmp1722
  %tmp1714 = bitcast float %188 to i32
  %tmp1108 = zext i96 %ins1724 to i128
  %mask1109 = and i128 %memtmp130.i.0, -79228162514264337593543950336
  %tmp1102 = zext i32 %tmp1714 to i128
  %tmp1103 = shl nuw nsw i128 %tmp1102, 64
  %mask1104 = or i128 %mask1109, %tmp1108
  %ins1105 = or i128 %mask1104, %tmp1103
  store float %186, float* %98, align 8
  store float %187, float* %99, align 4
  %tmp1090 = lshr i128 %ins1105, 64
  %tmp1091 = trunc i128 %tmp1090 to i32
  %tmp1092 = bitcast i32 %tmp1091 to float
  store float %tmp1092, float* %100, align 8
  %tmp1681 = bitcast float %186 to i32
  %tmp1682 = zext i32 %tmp1681 to i96
  %tmp1675 = bitcast float %187 to i32
  %tmp1676 = zext i32 %tmp1675 to i96
  %tmp1677 = shl nuw nsw i96 %tmp1676, 32
  %ins1679 = or i96 %tmp1682, %tmp1677
  %tmp195 = zext i96 %ins1679 to i128
  %mask196 = and i128 %memtmp.0, -79228162514264337593543950336
  %tmp190 = and i128 %ins1105, 79228162495817593519834398720
  %mask191 = or i128 %mask196, %tmp195
  %ins192 = or i128 %mask191, %tmp190
  %tmp409 = bitcast float %186 to i32
  %tmp410 = zext i32 %tmp409 to i64
  %tmp403 = bitcast float %187 to i32
  %tmp404 = zext i32 %tmp403 to i64
  %tmp405 = shl nuw i64 %tmp404, 32
  %ins407 = or i64 %tmp410, %tmp405
  %tmp177 = lshr i128 %ins192, 64
  %tmp178 = trunc i128 %tmp177 to i32
  %tmp179 = bitcast i32 %tmp178 to float
  %tmp395 = bitcast i64 %ins407 to double
  %189 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %result, double %tmp395, float %tmp179)
  %mrv_gr14 = extractvalue %0 %189, 0
  %tmp172 = bitcast double %mrv_gr14 to i64
  %mrv_gr16 = extractvalue %0 %189, 1
  %tmp159 = trunc i64 %tmp172 to i32
  %tmp160 = bitcast i32 %tmp159 to float
  store float %tmp160, float* %15, align 8
  %tmp162 = lshr i64 %tmp172, 32
  %tmp163 = trunc i64 %tmp162 to i32
  %tmp164 = bitcast i32 %tmp163 to float
  store float %tmp164, float* %16, align 4
  store float %mrv_gr16, float* %17, align 8
  %190 = add nsw i32 %storemerge1, 1
  br label %bb18

bb18:                                             ; preds = %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit, %bb
  %191 = phi float [ %204, %bb ], [ %mrv_gr16, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %192 = phi float [ %205, %bb ], [ %tmp164, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %193 = phi float [ %206, %bb ], [ %tmp160, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.0 = phi i128 [ %memtmp.1, %bb ], [ %ins192, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp4.i43.0 = phi i128 [ %memtmp4.i43.1, %bb ], [ %ins882, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i42.0 = phi i128 [ %memtmp.i42.1, %bb ], [ %ins904, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp130.i.0 = phi i128 [ %memtmp130.i.1, %bb ], [ %ins1105, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp120.i.0 = phi i128 [ %memtmp120.i.1, %bb ], [ %ins1127, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp103.i.1 = phi i128 [ %memtmp103.i.2, %bb ], [ %memtmp103.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp59.i.0 = phi i128 [ %memtmp59.i.1, %bb ], [ %ins1259, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp53.i.0 = phi i128 [ %memtmp53.i.1, %bb ], [ %ins1281, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp46.i.1 = phi i128 [ %memtmp46.i.2, %bb ], [ %memtmp46.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp30.i.0 = phi i128 [ %memtmp30.i.1, %bb ], [ %ins1347, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp24.i.0 = phi i128 [ %memtmp24.i.1, %bb ], [ %ins1369, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp10.i96.0 = phi i128 [ %memtmp10.i96.1, %bb ], [ %ins1413, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp4.i95.0 = phi i128 [ %memtmp4.i95.1, %bb ], [ %ins1435, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i94.0 = phi i128 [ %memtmp.i94.1, %bb ], [ %ins1457, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i.i.0 = phi i128 [ %memtmp.i.i.1, %bb ], [ %ins1768, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp24.i.i.0 = phi i128 [ %memtmp24.i.i.1, %bb ], [ %ins2091, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp18.i.i.0 = phi i128 [ %memtmp18.i.i.1, %bb ], [ %ins2113, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp4.i.i.0 = phi i128 [ %memtmp4.i.i.1, %bb ], [ %ins2157, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i70.i.0 = phi i128 [ %memtmp.i70.i.1, %bb ], [ %ins2179, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %storemerge1 = phi i32 [ 0, %bb ], [ %190, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %194 = icmp slt i32 %storemerge1, 25
  br i1 %194, label %bb2, label %bb19

bb19:                                             ; preds = %bb18
  %195 = fmul float %193, 0x3FA47AE140000000
  %196 = fmul float %192, 0x3FA47AE140000000
  %197 = fmul float %191, 0x3FA47AE140000000
  %tmp2501 = bitcast float %195 to i32
  %tmp2502 = zext i32 %tmp2501 to i96
  %tmp2495 = bitcast float %196 to i32
  %tmp2496 = zext i32 %tmp2495 to i96
  %tmp2497 = shl nuw nsw i96 %tmp2496, 32
  %ins2499 = or i96 %tmp2502, %tmp2497
  %tmp2489 = bitcast float %197 to i32
  %tmp151 = zext i96 %ins2499 to i128
  %mask152 = and i128 %memtmp20.0, -79228162514264337593543950336
  %tmp147 = zext i32 %tmp2489 to i128
  %tmp148 = shl nuw nsw i128 %tmp147, 64
  %mask = or i128 %mask152, %tmp151
  %ins = or i128 %mask, %tmp148
  store float %195, float* %15, align 8
  store float %196, float* %16, align 4
  %tmp136 = lshr i128 %ins, 64
  %tmp137 = trunc i128 %tmp136 to i32
  %tmp138 = bitcast i32 %tmp137 to float
  store float %tmp138, float* %17, align 8
  %val27 = load double* %elt26, align 8
  %tmp431 = bitcast double %val27 to i64
  %ins.tr = trunc i128 %ins to i96
  %198 = mul nsw i32 %6, %107
  %199 = add nsw i32 %198, %108
  %200 = mul nsw i32 %199, 3
  %201 = add nsw i32 %8, %200
  %tmp422 = trunc i64 %tmp431 to i32
  %tmp423 = bitcast i32 %tmp422 to float
  call void @llvm.trax.storef(float %tmp423, i32 %201, i32 0) nounwind
  %tmp418 = lshr i64 %tmp431, 32
  %tmp419 = trunc i64 %tmp418 to i32
  %tmp420 = bitcast i32 %tmp419 to float
  call void @llvm.trax.storef(float %tmp420, i32 %201, i32 1) nounwind
  %tmp414 = lshr i96 %ins.tr, 64
  %tmp415 = trunc i96 %tmp414 to i32
  %tmp416 = bitcast i32 %tmp415 to float
  call void @llvm.trax.storef(float %tmp416, i32 %201, i32 2) nounwind
  %202 = call i32 @llvm.trax.atominc(i32 0)
  %tmp2527 = trunc i64 %tmp431 to i32
  %203 = bitcast i32 %tmp2527 to float
  br label %bb30

bb30:                                             ; preds = %bb19, %entry
  %204 = phi float [ 0.000000e+00, %entry ], [ %tmp138, %bb19 ]
  %205 = phi float [ 0.000000e+00, %entry ], [ %196, %bb19 ]
  %206 = phi float [ 0.000000e+00, %entry ], [ %203, %bb19 ]
  %memtmp20.0 = phi i128 [ undef, %entry ], [ %ins, %bb19 ]
  %memtmp.1 = phi i128 [ undef, %entry ], [ %memtmp.0, %bb19 ]
  %memtmp4.i43.1 = phi i128 [ undef, %entry ], [ %memtmp4.i43.0, %bb19 ]
  %memtmp.i42.1 = phi i128 [ undef, %entry ], [ %memtmp.i42.0, %bb19 ]
  %memtmp130.i.1 = phi i128 [ undef, %entry ], [ %memtmp130.i.0, %bb19 ]
  %memtmp120.i.1 = phi i128 [ undef, %entry ], [ %memtmp120.i.0, %bb19 ]
  %memtmp103.i.2 = phi i128 [ undef, %entry ], [ %memtmp103.i.1, %bb19 ]
  %memtmp59.i.1 = phi i128 [ undef, %entry ], [ %memtmp59.i.0, %bb19 ]
  %memtmp53.i.1 = phi i128 [ undef, %entry ], [ %memtmp53.i.0, %bb19 ]
  %memtmp46.i.2 = phi i128 [ undef, %entry ], [ %memtmp46.i.1, %bb19 ]
  %memtmp30.i.1 = phi i128 [ undef, %entry ], [ %memtmp30.i.0, %bb19 ]
  %memtmp24.i.1 = phi i128 [ undef, %entry ], [ %memtmp24.i.0, %bb19 ]
  %memtmp10.i96.1 = phi i128 [ undef, %entry ], [ %memtmp10.i96.0, %bb19 ]
  %memtmp4.i95.1 = phi i128 [ undef, %entry ], [ %memtmp4.i95.0, %bb19 ]
  %memtmp.i94.1 = phi i128 [ undef, %entry ], [ %memtmp.i94.0, %bb19 ]
  %memtmp.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp.i.i.0, %bb19 ]
  %memtmp24.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp24.i.i.0, %bb19 ]
  %memtmp18.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp18.i.i.0, %bb19 ]
  %memtmp4.i.i.1 = phi i128 [ undef, %entry ], [ %memtmp4.i.i.0, %bb19 ]
  %memtmp.i70.i.1 = phi i128 [ undef, %entry ], [ %memtmp.i70.i.0, %bb19 ]
  %storemerge = phi i32 [ %47, %entry ], [ %202, %bb19 ]
  %207 = icmp sgt i32 %48, %storemerge
  br i1 %207, label %bb, label %return

return:                                           ; preds = %bb30
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind

declare float @llvm.trax.rand() nounwind

define internal fastcc %0 @_ZN6Vector5crossES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %1 = load float* %0, align 4
  %2 = fmul float %1, %other.1
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %4 = load float* %3, align 4
  %tmp47 = lshr i64 %tmp28, 32
  %tmp48 = trunc i64 %tmp47 to i32
  %tmp49 = bitcast i32 %tmp48 to float
  %5 = fmul float %4, %tmp49
  %6 = fsub float %2, %5
  %tmp44 = trunc i64 %tmp28 to i32
  %tmp45 = bitcast i32 %tmp44 to float
  %7 = fmul float %4, %tmp45
  %8 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %9 = load float* %8, align 4
  %10 = fmul float %9, %other.1
  %11 = fsub float %7, %10
  %12 = fmul float %9, %tmp49
  %13 = fmul float %1, %tmp45
  %14 = fsub float %12, %13
  %tmp17 = bitcast float %6 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %11 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %14, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector3addES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %2 = fadd float %1, %tmp42
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %5 = fadd float %4, %tmp39
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fadd float %7, %other.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector3subES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %2 = fsub float %1, %tmp42
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %5 = fsub float %4, %tmp39
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fsub float %7, %other.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

declare float @llvm.trax.invsqrt(float) nounwind

define internal fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* nocapture %this) nounwind ssp align 2 {
return:
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %2 = fmul float %1, %1
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %5 = fmul float %4, %4
  %6 = fadd float %2, %5
  %7 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %8 = load float* %7, align 4
  %9 = fmul float %8, %8
  %10 = fadd float %6, %9
  %11 = call float @llvm.trax.invsqrt(float %10) nounwind
  %12 = fdiv float 1.000000e+00, %11
  %13 = load float* %7, align 4
  %14 = fdiv float %13, %12
  %15 = load float* %3, align 4
  %16 = fdiv float %15, %12
  %17 = load float* %0, align 4
  %18 = fdiv float %17, %12
  %tmp18 = bitcast float %18 to i32
  %tmp19 = zext i32 %tmp18 to i64
  %tmp12 = bitcast float %16 to i32
  %tmp13 = zext i32 %tmp12 to i64
  %tmp14 = shl nuw i64 %tmp13, 32
  %ins16 = or i64 %tmp19, %tmp14
  %tmp7 = bitcast i64 %ins16 to double
  %mrv4 = insertvalue %0 undef, double %tmp7, 0
  %mrv5 = insertvalue %0 %mrv4, float %14, 1
  ret %0 %mrv5
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind
