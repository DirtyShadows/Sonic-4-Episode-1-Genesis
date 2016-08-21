;===============================================================================
; Object 0x5B
; [ Begin ]
;===============================================================================	
loc_3186E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3187C(pc,d0),d1
		jmp	loc_3187C(pc,d1)
loc_3187C:
		dc.w	loc_31880-loc_3187C
		dc.w	loc_31954-loc_3187C
loc_31880:
		move.l	$38(a0),a3
		moveq	#0,d1
		move.b	$3D(a3),d1
		beq.s	loc_31898
		sub.b	#1,$3D(a3)
		move.w	#$A,d1
		bra.s	loc_318C8
loc_31898:
		move.b	$3C(a3),d1
		beq.s	loc_318B0
		sub.b	#1,$3C(a3)
		move.b	#9,$3D(a3)
		move.w	#$A,d1
		bra.s	loc_318C8
loc_318B0:
		move.b	$3E(a3),d1
		beq.s	loc_318CC
		move.b	#0,$3E(a3)
		btst	#0,d1
		beq.s	loc_318C8
		lea	loc_31864(pc),a2
		bra.s	loc_318CC
loc_318C8:
		lea	loc_3185A(pc),a2
loc_318CC:
		cmp.b	#9,(a3)
		bne.s	loc_318D8
		sub.w	d1,($FFFFFE20).w
		bra.s	loc_318DC
loc_318D8:
		sub.w	d1,($FFFFFED0).w
loc_318DC:
		move.w	d1,d2
		subq.w	#1,d2
		bmi	loc_32752
		move.l	a0,a1
		bra.s	loc_318EE
loc_318E8:	
		bsr	loc_3277C
		bne.s	loc_3194E
loc_318EE:
		move.b	#$5B,(a1)
		move.b	#2,$24(a1)
		move.l	#loc_324D2,4(a1)
		move.w	#$6322,2(a1)
		move.b	#4,1(a1)
		move.b	#5,$18(a1)
		move.b	#0,$20(a1)
		move.b	#8,$1C(a1)
		move.w	8(a3),8(a1)
		move.w	$C(a3),$C(a1)
		move.b	$26(a3),d0
		add.b	#$40,d0
		add.b	(a2)+,d0
		jsr	CalcSine	
		muls.w	#$400,d1
		asr.l	#8,d1
		move.w	d1,$10(a1)
		muls.w	#$1000,d0
		asr.l	#8,d0
		move.w	d0,$12(a1)
loc_3194E:
		dbra	d2,loc_318E8
		rts
loc_31954:
		bsr	loc_32770
		add.w	#$80,$12(a0)
		bsr	loc_3198C
		tst.w	8(a0)
		bmi	loc_32752
		cmp.w	#$100,8(a0)
		bcc	loc_32752
		cmp.w	#$E0,$C(a0)
		bgt	loc_32752
		lea	(loc_3247A),a1
		bsr	loc_32758
		bra	loc_3274C
loc_3198C:
		tst.w	$12(a0)
		bmi	loc_319A0
		move.b	#0,$18(a0)
		move.b	#9,$1C(a0)
loc_319A0:
		rts	
;===============================================================================
; Object 0x5B
; [ End ]
;===============================================================================