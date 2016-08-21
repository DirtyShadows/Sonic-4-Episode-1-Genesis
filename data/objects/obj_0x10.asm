;===============================================================================	
; Object 0x10
; [ Begin ] 
;===============================================================================	
loc_30CD8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_30CE6(pc,d0),d1
		jmp	loc_30CE6(pc,d1)
loc_30CE6:
		dc.w	loc_30CF0-loc_30CE6
		dc.w	loc_30DCA-loc_30CE6
		dc.w	loc_30E86-loc_30CE6
		dc.w	loc_30CE6-loc_30CE6
		dc.w	loc_30EB2-loc_30CE6
loc_30CF0:
		addq.b	#2,$24(a0)
		moveq	#0,d0
		move.w	d0,$2A(a0)
		move.w	#$80,d1
		move.w	d1,$2E(a0)
		add.w	($FFFFF73E).w,d0
		move.w	d0,8(a0)
		add.w	($FFFFF740).w,d1
		move.w	d1,$C(a0)
		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.l	#loc_30FB2,4(a0)
		move.w	#$4300,2(a0)
		move.b	#4,1(a0)
		move.b	#2,$18(a0)
		move.w	#$80,$34(a0)
		move.w	#$400,$32(a0)
		move.b	#$40,$26(a0)
		move.b	#1,($FFFFF7DE).w
		clr.b	$21(a0)
		move.l	#$FFFFB180,a1
		move.b	#$63,(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$18,$C(a1)
		move.l	#Obj_0x10_Mappings,4(a1) 
		move.w	#$623C,2(a1)
		move.b	#4,1(a1)
		move.b	#4,$18(a1)
		move.l	a0,$38(a1)
		move.l	#$FFFFB1C0,a1
		move.b	#$88,(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.l	#loc_3121C,4(a1)
		move.w	#$4316,2(a1)
		move.b	#4,1(a1)
		move.b	$18(a0),$18(a1)
		sub.b	#1,$18(a1)
		move.l	a0,$38(a1)
		rts
loc_30DCA:
		tst.b	$25(a0)
		bne.s	loc_30E0E
		bsr	loc_30E24
		lea	($FFFFF606).w,a2
		bsr	loc_30474
		bsr	loc_304F4
		moveq	#1,d0
		bsr	loc_30334
		bsr	loc_30534
		bsr	loc_3056E
		lea	($FFFFF607).w,a2
		bsr	loc_30042
		bsr	loc_3038A
		lea	(Obj_0x10_AnimateData),a1 
		bsr	loc_303EA
		bsr	loc_31318
		bsr	loc_302F2
		bra.s	loc_30E74
loc_30E0E:
		bsr	loc_2FF3E
		bsr	loc_30334
		bsr	loc_30534
		bsr	loc_3056E
		bsr	loc_31318
		bra.s	loc_30E74
loc_30E24:
		tst.b	($FFFFFE00).w
		beq.s	loc_30E2C
		rts
loc_30E2C:
		move.b	($FFFFF606).w,d0
		and.b	#$7F,d0
		beq.s	loc_30E4E
		moveq	#0,d0
		moveq	#3,d1
		lea	($FFFFDB62).w,a1
loc_30E3E:	
		move.l	d0,(a1)
		move.l	d0,(a1)
		dbra	d1,loc_30E3E
		move.w	#$B4,($FFFFF702).w
		rts
loc_30E4E:
		tst.w	($FFFFF702).w
		beq.s	loc_30E5A
		subq.w	#1,($FFFFF702).w
		rts
loc_30E5A:
		lea	($FFFFDB80).w,a1
		move.w	(a1),($FFFFF606).w
		rts	
loc_30E64:
		dc.b	0,$FF,$30,$60,0,$FF,$38,0,0,$FF,$4C,$80,0,$FF,$53,$C0
loc_30E74:
		lea	loc_30E64(pc),a3
		lea	($FFFFF7DE).w,a4
		move.w	#$6000,d4
		moveq	#$12,d1
		bra	loc_2FFD6
loc_30E86:
		lea	($FFFFF606).w,a2
		bsr	loc_30128
		bsr	loc_300FC
		bsr	loc_302AA
		bsr	loc_30334
		bsr	loc_3056E
		bsr	loc_3014A
		lea	(Obj_0x10_AnimateData),a1 
		bsr	loc_303EA
		bsr	loc_31318
		bra.s	loc_30E74
loc_30EB2:
		lea	($FFFFF606).w,a2
		bsr	loc_30128
		bsr	loc_300FC
		bsr	loc_3014A
		bsr	loc_302AA
		bsr	loc_30334
		bsr	loc_3056E
		bsr	loc_3038A
		lea	(Obj_0x10_AnimateData),a1 
		bsr	loc_303EA
		bsr	loc_31318
		bra.s	loc_30E74	
;===============================================================================	
; Object 0x10
; [ End ] 
;===============================================================================	
