; ModuleID = 'H:/viv/numadd_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@numadd_str = internal unnamed_addr constant [7 x i8] c"numadd\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [7 x i8] c"add_io\00", align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define void @numadd(i32 %a, i32 %b, i32* %y) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %a) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %y) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @numadd_str) nounwind
  %b_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b) nounwind
  %a_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %a) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %y, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %a, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %y_assign = add nsw i32 %b_read, %a_read
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %y, i32 %y_assign) nounwind
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.s_axilite.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"a", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"b", metadata !11, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"y", metadata !5, metadata !"int", i32 0, i32 31}
