	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 2
	.globl	_transpose                      ; -- Begin function transpose
	.p2align	2
_transpose:                             ; @transpose
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #12]
	subs	w8, w8, #2
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #8]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	mov	x10, #12
	mul	x9, x9, x10
	add	x8, x8, x9
	ldrsw	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl  #2]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #8]
	add	x9, x9, x10, lsl #3
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl  #2]
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_3
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_1
LBB0_8:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mulMatrix                      ; -- Begin function mulMatrix
	.p2align	2
_mulMatrix:                             ; @mulMatrix
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #28]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	wzr, [sp, #4]
	b	LBB1_1
LBB1_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_3 Depth 2
	ldr	w8, [sp, #4]
	subs	w8, w8, #2
	cset	w8, ge
	tbnz	w8, #0, LBB1_8
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	str	wzr, [sp]
	b	LBB1_3
LBB1_3:                                 ;   Parent Loop BB1_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB1_6
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_3 Depth=2
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	mov	x11, #12
	mul	x9, x9, x11
	add	x8, x8, x9
	ldrsw	x9, [sp]
	ldr	w8, [x8, x9, lsl  #2]
	ldr	w9, [sp, #28]
	mul	w8, w8, w9
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	mul	x10, x10, x11
	add	x9, x9, x10
	ldrsw	x10, [sp]
	str	w8, [x9, x10, lsl  #2]
	b	LBB1_5
LBB1_5:                                 ;   in Loop: Header=BB1_3 Depth=2
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	LBB1_3
LBB1_6:                                 ;   in Loop: Header=BB1_1 Depth=1
	b	LBB1_7
LBB1_7:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB1_1
LBB1_8:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_matrixMultiply                 ; -- Begin function matrixMultiply
	.p2align	2
_matrixMultiply:                        ; @matrixMultiply
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	wzr, [sp, #20]
	b	LBB2_1
LBB2_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_3 Depth 2
                                        ;       Child Loop BB2_5 Depth 3
	ldr	w8, [sp, #20]
	subs	w8, w8, #2
	cset	w8, ge
	tbnz	w8, #0, LBB2_12
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	str	wzr, [sp, #16]
	b	LBB2_3
LBB2_3:                                 ;   Parent Loop BB2_1 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB2_5 Depth 3
	ldr	w8, [sp, #16]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB2_10
	b	LBB2_4
LBB2_4:                                 ;   in Loop: Header=BB2_3 Depth=2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	mov	x10, #12
	mul	x9, x9, x10
	add	x9, x8, x9
	ldrsw	x10, [sp, #16]
	mov	w8, #0
	str	w8, [x9, x10, lsl  #2]
	str	wzr, [sp, #12]
	b	LBB2_5
LBB2_5:                                 ;   Parent Loop BB2_1 Depth=1
                                        ;     Parent Loop BB2_3 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #12]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB2_8
	b	LBB2_6
LBB2_6:                                 ;   in Loop: Header=BB2_5 Depth=3
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #20]
	mov	x11, #12
	mul	x9, x9, x11
	add	x8, x8, x9
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl  #2]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #12]
	add	x9, x9, x10, lsl #3
	ldrsw	x10, [sp, #16]
	ldr	w9, [x9, x10, lsl  #2]
	mul	w10, w8, w9
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	mul	x9, x9, x11
	add	x8, x8, x9
	ldrsw	x9, [sp, #16]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	b	LBB2_7
LBB2_7:                                 ;   in Loop: Header=BB2_5 Depth=3
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB2_5
LBB2_8:                                 ;   in Loop: Header=BB2_3 Depth=2
	b	LBB2_9
LBB2_9:                                 ;   in Loop: Header=BB2_3 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB2_3
LBB2_10:                                ;   in Loop: Header=BB2_1 Depth=1
	b	LBB2_11
LBB2_11:                                ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB2_1
LBB2_12:
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_matrixAdd                      ; -- Begin function matrixAdd
	.p2align	2
_matrixAdd:                             ; @matrixAdd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	wzr, [sp, #4]
	b	LBB3_1
LBB3_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_3 Depth 2
	ldr	w8, [sp, #4]
	subs	w8, w8, #2
	cset	w8, ge
	tbnz	w8, #0, LBB3_8
	b	LBB3_2
LBB3_2:                                 ;   in Loop: Header=BB3_1 Depth=1
	str	wzr, [sp]
	b	LBB3_3
LBB3_3:                                 ;   Parent Loop BB3_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB3_6
	b	LBB3_4
LBB3_4:                                 ;   in Loop: Header=BB3_3 Depth=2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #4]
	mov	x11, #12
	mul	x9, x9, x11
	add	x8, x8, x9
	ldrsw	x9, [sp]
	ldr	w8, [x8, x9, lsl  #2]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	mul	x10, x10, x11
	add	x9, x9, x10
	ldrsw	x10, [sp]
	ldr	w9, [x9, x10, lsl  #2]
	add	w8, w8, w9
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	mul	x10, x10, x11
	add	x9, x9, x10
	ldrsw	x10, [sp]
	str	w8, [x9, x10, lsl  #2]
	b	LBB3_5
LBB3_5:                                 ;   in Loop: Header=BB3_3 Depth=2
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	LBB3_3
LBB3_6:                                 ;   in Loop: Header=BB3_1 Depth=1
	b	LBB3_7
LBB3_7:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB3_1
LBB3_8:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_printMatrix                    ; -- Begin function printMatrix
	.p2align	2
_printMatrix:                           ; @printMatrix
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	b	LBB4_1
LBB4_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_3 Depth 2
	ldur	w8, [x29, #-12]
	subs	w8, w8, #2
	cset	w8, ge
	tbnz	w8, #0, LBB4_8
	b	LBB4_2
LBB4_2:                                 ;   in Loop: Header=BB4_1 Depth=1
	str	wzr, [sp, #16]
	b	LBB4_3
LBB4_3:                                 ;   Parent Loop BB4_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]
	subs	w8, w8, #2
	cset	w8, ge
	tbnz	w8, #0, LBB4_6
	b	LBB4_4
LBB4_4:                                 ;   in Loop: Header=BB4_3 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	mov	x10, #12
	mul	x9, x9, x10
	add	x8, x8, x9
	ldrsw	x9, [sp, #16]
	ldr	w9, [x8, x9, lsl  #2]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	b	LBB4_5
LBB4_5:                                 ;   in Loop: Header=BB4_3 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB4_3
LBB4_6:                                 ;   in Loop: Header=BB4_1 Depth=1
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB4_7
LBB4_7:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	LBB4_1
LBB4_8:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_TestD                          ; -- Begin function TestD
	.p2align	2
_TestD:                                 ; @TestD
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	add	x0, x8, #48
	sub	x1, x29, #32
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	_transpose
	ldr	x8, [sp, #24]
	mov	w0, #3
	add	x1, x8, #24
	add	x2, sp, #56
	str	x2, [sp]                        ; 8-byte Folded Spill
	bl	_mulMatrix
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x2, sp, #32
	str	x2, [sp, #16]                   ; 8-byte Folded Spill
	bl	_matrixMultiply
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #24]
	add	x2, x8, #72
	bl	_matrixAdd
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #24]
	add	x0, x8, #72
	bl	_printMatrix
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB5_2
	b	LBB5_1
LBB5_1:
	bl	___stack_chk_fail
LBB5_2:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	add	x0, sp, #12
	str	x0, [sp]                        ; 8-byte Folded Spill
	adrp	x1, l___const.main.mx@PAGE
	add	x1, x1, l___const.main.mx@PAGEOFF
	mov	x2, #96
	bl	_memcpy
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	_TestD
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.globl	_ROW                            ; @ROW
	.p2align	2, 0x0
_ROW:
	.long	2                               ; 0x2

	.globl	_COL                            ; @COL
	.p2align	2, 0x0
_COL:
	.long	3                               ; 0x3

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d "

l_.str.1:                               ; @.str.1
	.asciz	"\n"

l_.str.2:                               ; @.str.2
	.asciz	"D = A + 3 * B x transpose(C):\n"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.mx
l___const.main.mx:
	.long	6                               ; 0x6
	.long	4                               ; 0x4
	.long	0                               ; 0x0
	.long	8                               ; 0x8
	.long	3                               ; 0x3
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5
	.long	6                               ; 0x6
	.long	2                               ; 0x2
	.long	4                               ; 0x4
	.long	6                               ; 0x6
	.long	1                               ; 0x1
	.long	3                               ; 0x3
	.long	5                               ; 0x5
	.space	24

.subsections_via_symbols
