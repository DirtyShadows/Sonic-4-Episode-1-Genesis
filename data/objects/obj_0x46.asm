;=============================================================================== 
; Object 0x46 - Oil Ocean - Spring With Ball - Sonic can stay on ball 
; [ Begin ]	
;===============================================================================	
loc_20832:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_20840(pc,d0),d1
		jmp	loc_20840(pc,d1)
loc_20840:
		dc.w	loc_20848-loc_20840
		dc.w	loc_20906-loc_20840
		dc.w	loc_20954-loc_20840
		dc.w	loc_209F8-loc_20840
loc_20848:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_20864
		bclr	#7,2(a2,d0)
		bset	#0,2(a2,d0)
		bne	loc_20AE0
loc_20864:
		addq.b	#2,$24(a0)
		move.b	#$F,$16(a0)
		move.b	#$F,$17(a0)
		move.l	#Spring_Ball_Mappings,4(a0) 
		move.w	#$6354,2(a0)
		bsr	loc_20AF2
		move.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.w	8(a0),$34(a0)
		move.w	$C(a0),$36(a0)
		move.b	#$10,$19(a0)
		move.b	#0,$1A(a0)
		move.w	#0,$14(a0)
		move.b	#1,$1F(a0)
		bsr	loc_20AE6
		bne.s	loc_20902
		move.b	#$46,0(a1)
		addq.b	#6,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$12,$C(a1)
		move.l	#Spring_Push_Boost_Mappings,4(a1) 
		move.w	#$43C5,2(a1)
		or.b	#4,1(a1)
		move.b	#$10,$19(a1)
		move.b	#4,$18(a1)
		move.b	#9,$1A(a1)
		move.l	a0,$3C(a1)
loc_20902:
		move.l	a1,$3C(a0)
loc_20906:
		btst	#6,($FFFFF607).w
		bne.s	loc_20920
		lea	($FFFFF7E0).w,a2
		moveq	#0,d0
		move.b	$28(a0),d0
		lsr.w	#4,d0
		tst.b	0(a2,d0)
		beq.s	loc_2094C
loc_20920:
		addq.b	#2,$24(a0)
		bset	#1,$22(a0)
		move.w	#$FD00,$12(a0)
		move.w	#$100,$14(a0)
		move.l	$3C(a0),a1
		move.b	#1,$30(a1)
		btst	#0,$22(a0)
		beq.s	loc_2094C
		neg.w	$14(a0)
loc_2094C:
		bsr	loc_20A0C
		bra	loc_20AEC
loc_20954:
		move.w	8(a0),-(sp)
		bsr	loc_20B0A
		btst	#1,$22(a0)
		beq.s	loc_209A8
		add.w	#$18,$12(a0)
		bmi.s	loc_209A6
		move.w	($FFFFEECE).w,d0
		add.w	#$E0,d0
		cmp.w	$C(a0),d0
		bcs.s	loc_209E0
		jsr	ObjHitFloor	
		tst.w	d1
		bpl	loc_209A6
		add.w	d1,$C(a0)
		clr.w	$12(a0)
		bclr	#1,$22(a0)
		move.w	#$100,$10(a0)
		btst	#0,$22(a0)
		beq.s	loc_209A6
		neg.w	$10(a0)
loc_209A6:
		bra.s	loc_209C0
loc_209A8:
		jsr	ObjHitFloor	
		cmp.w	#8,d1
		blt.s	loc_209BC
		bset	#1,$22(a0)
		bra.s	loc_209C0
loc_209BC:
		add.w	d1,$C(a0)
loc_209C0:
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		move.w	#$10,d2
		move.w	#$11,d3
		move.w	(sp)+,d4
		bsr	loc_20AF8
		bsr	loc_20A0C
		bra	loc_20AEC
loc_209E0:
		move.w	(sp)+,d4
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_209F4
		bclr	#7,2(a2,d0)
loc_209F4:
		bra	loc_20AE0
loc_209F8:
		tst.b	$30(a0)
		beq.s	loc_20A08
		subq.b	#1,$1A(a0)
		bne.s	loc_20A08
		clr.b	$30(a0)
loc_20A08:
		bra	loc_20AEC
loc_20A0C:
		tst.b	$1A(a0)
		beq.s	loc_20A1A
		move.b	#0,$1A(a0)
		rts
loc_20A1A:
		move.b	$14(a0),d0
		beq.s	loc_20A46
		bmi.s	loc_20A4E
		subq.b	#1,$1E(a0)
		bpl.s	loc_20A46
		neg.b	d0
		addq.b	#8,d0
		bcs.s	loc_20A30
		moveq	#0,d0
loc_20A30:
		move.b	d0,$1E(a0)
		move.b	$1F(a0),d0
		addq.b	#1,d0
		cmp.b	#4,d0
		bne.s	loc_20A42
		moveq	#1,d0
loc_20A42:
		move.b	d0,$1F(a0)
loc_20A46:
		move.b	$1F(a0),$1A(a0)
		rts
loc_20A4E:
		subq.b	#1,$1E(a0)
		bpl.s	loc_20A46
		addq.b	#8,d0
		bcs.s	loc_20A5A
		moveq	#0,d0
loc_20A5A:
		move.b	d0,$1E(a0)
		move.b	$1F(a0),d0
		subq.b	#1,d0
		bne.s	loc_20A68
		moveq	#3,d0
loc_20A68:
		move.b	d0,$1F(a0)
		bra.s	loc_20A46
;-------------------------------------------------------------------------------
Spring_Ball_Mappings: 
		dc.w	loc_20A76-Spring_Ball_Mappings
		dc.w	loc_20A98-Spring_Ball_Mappings
		dc.w	loc_20ABA-Spring_Ball_Mappings
		dc.w	loc_20ACC-Spring_Ball_Mappings
loc_20A76:
		dc.w	$4
		dc.l	$F0050000,$FFF0,$F0050004,$20000
		dc.l	$51804,$1802FFF0,$51004,$10020000
loc_20A98:
		dc.w	$4
		dc.l	$F0050008,$4FFF0,$F0050808,$8040000
		dc.l	$51008,$1004FFF0,$51808,$18040000
loc_20ABA:
		dc.w	$2
		dc.l	$F00D000C,$6FFF0,$D180C,$1806FFF0
loc_20ACC:
		dc.w	$2
		dc.l	$F00D080C,$806FFF0,$D100C,$1006FFF0	
;=============================================================================== 
; Object 0x46 - Oil Ocean - Spring With Ball - Sonic can stay on ball 
; [ End ]	
;===============================================================================	