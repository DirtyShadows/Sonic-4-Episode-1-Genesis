;===============================================================================
; Object 0x0C -
; [ Begin ]
;===============================================================================	
loc_1C04C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1C05A(pc,d0),d1
		jmp	loc_1C05A(pc,d1)
loc_1C05A:
		dc.w	loc_1C05E-loc_1C05A
		dc.w	loc_1C0BE-loc_1C05A
loc_1C05E:
		addq.b	#2,$24(a0)
		move.l	#loc_1C136,4(a0)
		move.w	#$E418,2(a0)
		bsr	loc_1C14A
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		move.w	$C(a0),d0
		sub.w	#$10,d0
		move.w	d0,$3A(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		and.w	#$F0,d0
		add.w	#$10,d0
		move.w	d0,d1
		subq.w	#1,d0
		move.w	d0,$30(a0)
		move.w	d0,$32(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		and.w	#$F,d0
		move.b	d0,$3E(a0)
		move.b	d0,$3F(a0)
loc_1C0BE:
		move.b	$3C(a0),d0
		beq.s	loc_1C0FC
		cmp.b	#$80,d0
		bne.s	loc_1C10C
		move.b	$3D(a0),d1
		bne.s	loc_1C0DE
		subq.b	#1,$3E(a0)
		bpl.s	loc_1C0DE
		move.b	$3F(a0),$3E(a0)
		bra.s	loc_1C10C
loc_1C0DE:
		addq.b	#1,$3D(a0)
		move.b	d1,d0
		bsr	loc_1C150
		add.w	#8,d0
		asr.w	#6,d0
		sub.w	#$10,d0
		add.w	$3A(a0),d0
		move.w	d0,$C(a0)
		bra.s	loc_1C122
loc_1C0FC:
		move.w	($FFFFFE0E).w,d1
		and.w	#$3FF,d1
		bne.s	loc_1C110
		move.b	#1,$3D(a0)
loc_1C10C:
		addq.b	#1,$3C(a0)
loc_1C110:
		bsr	loc_1C150
		add.w	#8,d1
		asr.w	#4,d1
		add.w	$3A(a0),d1
		move.w	d1,$C(a0)
loc_1C122:
		moveq	#0,d1
		move.b	$19(a0),d1
		moveq	#9,d3
		move.w	8(a0),d4
		bsr	loc_15C6A
		bra	loc_1C144	
;-------------------------------------------------------------------------------
loc_1C136:	
		dc.w	loc_1C138-loc_1C136
loc_1C138:
		dc.w	$1
		dc.l	$F80D0000,$FFF0	
;===============================================================================
; Object 0x0C -
; [ End ]
;===============================================================================