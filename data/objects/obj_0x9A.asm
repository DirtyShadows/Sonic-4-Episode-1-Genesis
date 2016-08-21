;===============================================================================
; Object 0x9A - Turtloid badnick - Sky Chase
; [ Begin ]
;===============================================================================	
loc_33B20:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_33B2E(pc,d0),d1
		jmp	loc_33B2E(pc,d1)
loc_33B2E:	
		dc.w	loc_33B32-loc_33B2E
		dc.w	loc_33B4E-loc_33B2E
loc_33B32:
		bsr	EnemySettings	
		move.w	#$FF80,$10(a0)
		bsr	loc_33C34
		lea	(Turtloid_Animate_Data),a1 
		move.l	a1,$2E(a0)
		bra	loc_33CA8
loc_33B4E:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_33B64(pc,d0),d1
		jsr	loc_33B64(pc,d1)
		bsr	loc_33B6C
		bra	loc_329BE
loc_33B64:
		dc.w	loc_33B8A-loc_33B64
		dc.w	loc_33BB4-loc_33B64
		dc.w	loc_33BD4-loc_33B64
		dc.w	loc_33BEE-loc_33B64
loc_33B6C:
		move.w	8(a0),-(sp)
		bsr	loc_3A904
		bsr	loc_329AC
		move.w	#$18,d1
		move.w	#8,d2
		move.w	#$E,d3
		move.w	(sp)+,d4
		bra	loc_3A8F2
loc_33B8A:
		bsr	loc_32866
		tst.w	d0
		bmi	Null_Sub_01	
		cmp.w	#$80,d2
		bcc	Null_Sub_01	
		addq.b	#2,$25(a0)
		move.w	#0,$10(a0)
		move.b	#4,$2A(a0)
		move.b	#1,$1A(a0)
		rts
loc_33BB4:
		subq.b	#1,$2A(a0)
		bpl	Null_Sub_01	
		addq.b	#2,$25(a0)
		move.b	#8,$2A(a0)
		move.w	$2C(a0),a1
		move.b	#3,$1A(a1)
		bra	loc_33CDC
loc_33BD4:
		subq.b	#1,$2A(a0)
		bpl.s	loc_33BEC
		addq.b	#2,$25(a0)
		move.w	#$FF80,$10(a0)
		clr.b	$1A(a0)
		move.w	$2C(a0),a1
loc_33BEC:
		rts
loc_33BEE:
		rts	
;===============================================================================
; Object 0x9A - Turtloid badnick - Sky Chase
; [ End ]
;===============================================================================