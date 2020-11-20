; llvm-as llvm.ll
; x86 assembly: llc llvm.bc -o llvm.s -march x86
; interpreter: lli llvm.bc

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
@.str = internal constant [12 x i8] c"Hello World\00"

; puts from libc
declare i32 @puts(i8*)

define i32 @main(...) {
	call i32 @puts(i8* getelementptr([12 x i8]* @.str, i32 0, i32 0))
	ret i32 0
}
