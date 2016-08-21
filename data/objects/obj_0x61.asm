;===============================================================================
; Object 0x61 - Bomb - Special Stage
; [ Begin ]
;===============================================================================	
loc_31324:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_31332(pc,d0),d1
		jmp	loc_31332(pc,d1)
loc_31332:	
		dc.w	loc_3133A-loc_31332
		dc.w	loc_3137A-loc_31332
		dc.w	loc_317AA-loc_31332
		dc.w	loc_313DE-loc_31332
loc_3133A:
		addq.b	#2,$24(a0)
		move.w	#$7F,8(a0)
		move.w	#$58,$C(a0)
		move.l	#loc_326B0,4(a0)
		move.w	#$238A,2(a0)
		move.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.b	#2,$20(a0)
		move.b	#$FF,($FFFFDB4D).w
		tst.b	$26(a0)
		bmi.s	loc_3137A
		bsr	loc_3170C
loc_3137A:
		bsr	loc_3159A
		bsr	loc_31610
		lea	(loc_32676),a1
		bsr	loc_3180E
		tst.b	1(a0)
		bpl.s	loc_3139A
		bsr	loc_3139C
		bra	loc_3274C
loc_3139A:
		rts
loc_3139C:
		move.w	#8,d6
		bsr	loc_31514
		bcc.s	loc_313DC
		move.b	#1,$21(a1)
		move.w	#$CB,d0
		jsr	Play_Unknow	
		move.b	#6,$24(a0)
		move.b	#0,$1B(a0)
		move.b	#0,$1E(a0)
		move.l	$34(a0),d0
		beq.s	loc_313DC
		move.l	#0,$34(a0)
		move.l	d0,a1
		st	$2A(a1)
loc_313DC:
		rts
loc_313DE:
		move.b	#$A,$1C(a0)
		move.w	#$42B5,2(a0)
		bsr	loc_31404
		bsr	loc_3159A
		bsr	loc_31610
		lea	(loc_32676),a1
		bsr	loc_32758
		bra	loc_3274C
loc_31404:
		cmp.w	#4,$30(a0)
		bcc.s	loc_31412
		move.b	#1,$18(a0)
loc_31412:
		rts	
;===============================================================================
; Object 0x61 - Bomb - Special Stage
; [ End ]
;===============================================================================