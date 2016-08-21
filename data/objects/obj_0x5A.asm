;===============================================================================
; Object 0x5A - Special Stage Rings Check
; [ Begin ]
;===============================================================================	
loc_319C4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_319D2(pc,d0),d1
		jmp	loc_319D2(pc,d1)
loc_319D2:
		dc.w	loc_319DC-loc_319D2
		dc.w	loc_31A46-loc_319D2
		dc.w	loc_31D5A-loc_319D2
		dc.w	loc_31C02-loc_319D2
		dc.w	loc_31D96-loc_319D2
loc_319DC:
		move.l	($FFFFDB28).w,a1
		cmpa.l	#loc_CEE0C,a1
		blt.s	loc_31A3A
		cmpa.l	#loc_CF408,a1
		bge.s	loc_31A3A
		moveq	#6,d0
		bsr.s	loc_319A4
		st	($FFFFDB98).w
		moveq	#6,d0
loc_319FA:	
		bsr	loc_3277C
		bne.s	loc_31A32
		move.b	#$5A,(a1)
		addq.b	#2,$24(a1)
		move.l	#loc_324D2,4(a1)
		move.w	#$6322,2(a1)
		move.b	#4,1(a1)
		move.b	#5,$18(a1)
		move.b	d0,$2A(a1)
		move.w	#0,$30(a1)
		move.b	#$FF,$1A(a1)
loc_31A32:
		dbra	d0,loc_319FA
		bra	loc_32752
loc_31A3A:
		rts	
;-------------------------------------------------------------------------------	
loc_31A3C:
		dc.b	0,1,1,1,2,4,6,8,9,$FF
;-------------------------------------------------------------------------------	
loc_31A46:
		cmp.b	#4,($FFFFDB0D).w
		bne.s	loc_31A84
		move.w	$2C(a0),d0
		move.b	loc_31A3C(pc,d0),$1A(a0)
		bmi	loc_31B0C
		add.w	#1,$2C(a0)
		moveq	#0,d0
		move.b	$2A(a0),d0
		add.w	d0,d0
		add.w	$30(a0),d0
		move.b	loc_31A8E(pc,d0),9(a0)
		move.b	loc_31A8F(pc,d0),$D(a0)
		add.w	#$E,$30(a0)
		bra	loc_3274C
loc_31A84:
		tst.b	$1A(a0)
		bpl	loc_3274C
		rts	
;-------------------------------------------------------------------------------	
loc_31A8E:
		dc.b	$F6
loc_31A8F:
		dc.b	$F6,$70,$5E,$76,$58,$7E,$56,$88,$58,$8E,$5E,$F6,$F6,$F6,$F6,$6D
		dc.b	$5A,$74,$54,$7E,$50,$8A,$54,$92,$5A,$F6,$F6,$F6,$F6,$6A,$58,$72
		dc.b	$50,$7E,$4C,$8C,$50,$94,$58,$F6,$F6,$F6,$F6,$68,$56,$70,$4C,$7E
		dc.b	$48,$8E,$4C,$96,$56,$F6,$F6,$62,$5E,$66,$50,$70,$46,$7E,$42,$8E
		dc.b	$46,$98,$50,$9C,$5E,$5C,$5A,$62,$4A,$70,$3E,$7E,$38,$8E,$3E,$9C
		dc.b	$4A,$A2,$5A,$54,$54,$5A,$3E,$6A,$30,$7E,$2A,$94,$30,$A4,$3E,$AA
		dc.b	$54,$42,$4A,$4C,$28,$62,$12,$7E,$A,$9C,$12,$B2,$28,$BC,$4A,$16
		dc.b	$26,$28,$FC,$EC,$EC,$EC,$EC,$EC,$EC,$D6,$FC,$E8,$26	
;-------------------------------------------------------------------------------	
loc_31B0C:
		cmp.w	#$E8,8(a0)
		bne	loc_32752
		moveq	#0,d0
		bsr	loc_319A4
		move.w	#$A1,d0
		jsr	Play_Sfx	
		sf	($FFFFDB95).w
		sf	($FFFFDB98).w
		tst.b	($FFFFFE00).w
		beq	loc_31BE4
		add.b	#$10,($FFFFDB93).w
		moveq	#0,d6
		move.w	($FFFFFE20).w,d2
		move.w	($FFFFFED0).w,d3
		lea	($FFFFFFA0).w,a3
		moveq	#0,d0
		move.b	($FFFFFE17).w,d0
		add.w	d0,d0
		add.w	d0,d0
		move.w	($FFFFFE20).w,0(a3,d0)
		move.w	($FFFFFED0).w,2(a3,d0)
		move.w	#0,($FFFFFE20).w
		move.w	#0,($FFFFFED0).w
		add.b	#1,($FFFFFE17).w
		moveq	#0,d0
		move.w	d0,($FFFFB03C).w
		move.b	d0,($FFFFB03E).w
		move.w	d0,($FFFFB07C).w
		move.b	d0,($FFFFB07E).w
		move.w	#$C,d0
		cmp.w	d3,d2
		bgt.s	loc_31BA2
		beq.s	loc_31BBA
		sub.b	#$10,($FFFFDB93).w
		add.b	#1,($FFFFDB93).w
		move.w	#$E,d0
		move.w	#$2000,d6
loc_31BA2:
		move.w	#$80,d3
		bsr	loc_31CB6
		add.w	d6,2(a1)
		add.w	d6,2(a2)
		bsr	loc_31F8C
		bra	loc_32752
loc_31BBA:
		sub.b	#$10,($FFFFDB93).w
		move.w	#$10,d0
		bsr	loc_31F8C
		cmp.b	#3,($FFFFFE17).w
		bne	loc_32752
		st	($FFFFDB86).w
		bsr	loc_32386
		add.b	#1,($FFFFDB94).w
		bra	loc_32752
loc_31BE4:
		move.w	#6,d0
		move.w	($FFFFFE20).w,d2
		add.w	($FFFFFED0).w,d2
		cmp.w	($FFFFDB8C).w,d2
		blt.s	loc_31BFA
		move.w	#4,d0
loc_31BFA:
		bsr	loc_31F48
		bra	loc_32752
loc_31C02:
		cmp.b	#$15,$1A(a0)
		bne.s	loc_31C4E
		move.w	$30(a0),d0
		tst.b	$2E(a0)
		bne.s	loc_31C32
		sub.w	#1,$C(a0)
		sub.w	#4,d0
		cmp.w	$C(a0),d0
		blt.s	loc_31C4E
		add.w	#1,d0
		move.w	d0,$C(a0)
		st	$2E(a0)
		bra.s	loc_31C4E
loc_31C32:
		add.w	#1,$C(a0)
		add.w	#4,d0
		cmp.w	$C(a0),d0
		bgt.s	loc_31C4E
		sub.w	#1,d0
		move.w	d0,$C(a0)
		sf	$2E(a0)
loc_31C4E:
		sub.w	#1,$2A(a0)
		bne	loc_3274C
		tst.b	$2F(a0)
		beq.s	loc_31C7A
loc_31C5E:	
		move.b	#$C8,($FFFFDB0D).w
		move.w	#$FD,d0
		jsr	Play_Music	
		st	($FFFFDB86).w
		bsr	loc_32386
		move.l	(sp)+,d0
		rts
loc_31C7A:
		cmp.b	#$15,$1A(a0)
		bne	loc_32752
		tst.w	$30(a0)
		beq	loc_32752
		tst.b	($FFFFFE00).w
		beq.s	loc_31CAE
		cmp.b	#3,($FFFFFE17).w
		bne.s	loc_31CA2
		add.b	#1,($FFFFDB94).w
		bra.s	loc_31C5E
loc_31CA2:
		move.w	#$12,d0
		bsr	loc_31F8C
		bra	loc_32752
loc_31CAE:
		bsr	loc_31ED8
		bra	loc_32752
loc_31CB6:
		move.w	#$48,d4
		tst.b	($FFFFFE00).w
		beq.s	loc_31CC4
		move.w	#$1C,d4
loc_31CC4:
		bsr	loc_3277C
		bne	loc_31D58
		move.b	#$5A,(a1)
		move.b	#6,$24(a1)
		move.l	#loc_31FF2,4(a1)
		move.w	#$21A2,2(a1)
		move.b	#4,1(a1)
		move.b	#1,$18(a1)
		move.w	d3,8(a1)
		move.w	d4,$C(a1)
		move.w	#$3C,$2A(a1)
		move.b	#$14,$1A(a1)
		move.l	a1,a2
		bsr	loc_3277C
		bne.s	loc_31D58
		move.b	#$5A,(a1)
		move.b	#6,$24(a1)
		move.l	#loc_31FF2,4(a1)
		move.w	#$21A2,2(a1)
		move.b	#4,1(a1)
		move.b	#0,$18(a1)
		move.w	d3,8(a1)
		move.w	d4,$C(a1)
		move.w	d4,$30(a1)
		move.w	#$3C,$2A(a1)
		move.b	#$15,$1A(a1)
		cmp.w	#6,d0
		bne.s	loc_31D58
		st	$2F(a1)
		bset	#1,1(a1)
loc_31D58:
		rts	
loc_31D5A:
		sub.w	#1,$2A(a0)
		bne	loc_3274C
		cmp.b	#$13,$1A(a0)
		bgt	loc_32752
		move.b	#8,$24(a0)
		move.w	#8,$14(a0)
		move.w	8(a0),d1
		sub.w	#$80,d1
		move.w	$C(a0),d2
		sub.w	#$70,d2
		bsr	loc_32764
		move.b	d0,$26(a0)
		bra	loc_3274C
loc_31D96:
		moveq	#0,d0
		move.b	$26(a0),d0
		bsr	loc_3276A
		muls.w	$14(a0),d0
		muls.w	$14(a0),d1
		asr.w	#8,d0
		asr.w	#8,d1
		add.w	d1,8(a0)
		add.w	d0,$C(a0)
		cmp.w	#0,8(a0)
		blt	loc_32752
		cmp.w	#$100,8(a0)
		bgt	loc_32752
		cmp.w	#0,$C(a0)
		blt	loc_32752
		bra	loc_3274C	
;===============================================================================
; Object 0x5A - Special Stage Rings Check
; [ End ]
;===============================================================================