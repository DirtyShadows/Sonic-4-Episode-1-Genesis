;===============================================================================
; Object 0x09 - Sonic - Special Stage
; [ Begin ]
;===============================================================================	
loc_2FE04:	
		bsr	loc_2FE20
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_2FE16(pc,d0),d1
		jmp	loc_2FE16(pc,d1)
loc_2FE16:
		dc.w	loc_2FE34-loc_2FE16
		dc.w	loc_2FEEA-loc_2FE16
		dc.w	loc_3009C-loc_2FE16
		dc.w	loc_2FE16-loc_2FE16
		dc.w	loc_300CA-loc_2FE16
loc_2FE20:
		lea	($FFFFDB82).w,a1
		moveq	#$E,d0
loc_2FE26:	
		move.w	$FFFFFFFC(a1),-(a1)
		dbra	d0,loc_2FE26
		move.w	($FFFFF604).w,-(a1)
		rts
loc_2FE34:
		move.b	#2,$24(a0)
		moveq	#0,d0
		move.l	d0,$2A(a0)
		move.w	#$80,d1
		move.w	d1,$2E(a0)
		move.w	d0,$30(a0)
		add.w	($FFFFF73E).w,d0
		move.w	d0,8(a0)
		add.w	($FFFFF740).w,d1
		move.w	d1,$C(a0)
		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.l	#loc_306FC,4(a0)
		move.w	#$22E5,2(a0)
		move.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.w	#$6E,$34(a0)
		clr.b	($FFFFF742).w
		move.w	#$400,$32(a0)
		move.b	#$40,$26(a0)
		move.b	#1,($FFFFF766).w
		clr.b	$37(a0)
		bclr	#6,$22(a0)
		clr.b	$21(a0)
		move.l	#$FFFFB140,a1
		move.b	#$63,(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$18,$C(a1)
		move.l	#Obj_0x10_Mappings,4(a1) 
		move.w	#$623C,2(a1)
		move.b	#4,1(a1)
		move.b	#4,$18(a1)
		move.l	a0,$38(a1)
		bra	loc_2FFC8
loc_2FEEA:
		tst.b	$25(a0)
		bne.s	loc_2FF26
		lea	($FFFFF604).w,a2
		bsr	loc_30474
		bsr	loc_304F4
		bsr	loc_30334
		bsr	loc_30534
		bsr	loc_3056E
		bsr	loc_3003E
		bsr	loc_3038A
		lea	(loc_306CE),a1
		bsr	loc_303EA
		bsr	loc_30CCC
		bsr	loc_302F2
		bra	loc_2FFC8
loc_2FF26:
		bsr	loc_2FF3E
		bsr	loc_30334
		bsr	loc_30534
		bsr	loc_3056E
		bsr	loc_30CCC
		bra	loc_2FFC8	
;-------------------------------------------------------------------------------	
loc_2FF3E:
		moveq	#0,d0
		move.b	$36(a0),d0
		add.b	#8,d0
		move.b	d0,$36(a0)
		bne.s	loc_2FF54
		move.b	#0,$25(a0)
loc_2FF54:
		add.b	$26(a0),d0
		and.b	#$FC,1(a0)
		sub.b	#$10,d0
		lsr.b	#5,d0
		add.w	d0,d0
		move.b	loc_2FFA8(pc,d0),$1A(a0)
		move.b	loc_2FFA9(pc,d0),d0
		or.b	d0,1(a0)
		move.b	$36(a0),d0
		sub.b	#8,d0
		bne.s	loc_2FFA6
		move.b	d0,$21(a0)
		cmpa.l	#$FFFFB000,a0
		bne.s	loc_2FF92
		tst.w	($FFFFFE20).w
		beq.s	loc_2FFA6
		bra.s	loc_2FF98
loc_2FF92:
		tst.w	($FFFFFED0).w
		beq.s	loc_2FFA6
loc_2FF98:
		bsr	loc_30CD2
		bne.s	loc_2FFA6
		move.l	a0,$38(a1)
		move.b	#$5B,(a1)
loc_2FFA6:
		rts
loc_2FFA8:
		dc.b	$4
loc_2FFA9:	
		dc.b	1,0,0,4,0,$C,0,4,2,0,2,4,3,$C,$1
loc_2FFB8:	
		dc.b	0,$FF,0,0,0,$FF,$B,0,0,$FF,$24,$80,0,$FF,$2E,$20
loc_2FFC8:
		lea	loc_2FFB8(pc),a3
		lea	($FFFFF766).w,a4
		move.w	#$5CA0,d4
		moveq	#0,d1	
;-------------------------------------------------------------------------------	
loc_2FFD6:
		moveq	#0,d0
		move.b	$1A(a0),d0
		cmp.b	(a4),d0
		beq.s	loc_3003C
		move.b	d0,(a4)
		moveq	#0,d6
		cmp.b	#4,d0
		blt.s	loc_2FFFC
		addq.w	#4,d6
		cmp.b	#$C,d0
		blt.s	loc_2FFFC
		addq.w	#4,d6
		cmp.b	#$10,d0
		blt.s	loc_2FFFC
		addq.b	#4,d6
loc_2FFFC:
		move.l	0(a3,d6),d6
		add.w	d1,d0
		add.w	d0,d0
		lea	(loc_30AE4),a2
		adda.w	0(a2,d0),a2
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	loc_3003C
loc_30014:	
		moveq	#0,d1
		move.w	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		and.w	#$F0,d3
		add.w	#$10,d3
		and.w	#$FFF,d1
		lsl.w	#1,d1
		add.l	d6,d1
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	dMA_68KtoVRAM	
		dbra	d5,loc_30014
loc_3003C:	
		rts
;-------------------------------------------------------------------------------	
loc_3003E:	
		lea	($FFFFF605).w,a2
loc_30042:
		move.b	(a2),d0
		and.b	#$70,d0
		beq	loc_3009A
		move.w	#$780,d2
		moveq	#0,d0
		move.b	$26(a0),d0
		add.b	#$80,d0
		jsr	CalcSine	
		muls.w	d2,d1
		asr.l	#8,d1
		add.w	d1,$10(a0)
		muls.w	d2,d0
		asr.l	#7,d0
		add.w	d0,$12(a0)
		bset	#2,$22(a0)
		move.b	#4,$24(a0)
		move.b	#3,$1C(a0)
		moveq	#0,d0
		move.b	d0,$1E(a0)
		move.b	d0,$1B(a0)
		move.b	d0,$21(a0)
		move.w	#$A0,d0
		jsr	Play_Sfx	
loc_3009A:
		rts
;-------------------------------------------------------------------------------	


loc_3009C:
		lea	($FFFFF604).w,a2
		bsr	loc_30128
		bsr	loc_300FC
		bsr	loc_3014A
		bsr	loc_302AA
		bsr	loc_30334
		bsr	loc_3056E
		lea	(loc_306CE),a1
		bsr	loc_303EA
		bsr	loc_30CCC
		bra	loc_2FFC8
loc_300CA:
		lea	($FFFFF604).w,a2
		bsr	loc_30128
		bsr	loc_300FC
		bsr	loc_3014A
		bsr	loc_302AA
		bsr	loc_30334
		bsr	loc_3056E
		bsr	loc_3038A
		lea	(loc_306CE),a1
		bsr	loc_303EA
		bsr	loc_30CCC
		bra	loc_2FFC8	
;-------------------------------------------------------------------------------	
loc_300FC:
		move.l	$2A(a0),d2
		move.l	$2E(a0),d3
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	$12(a0),d0
		add.w	#$A8,$12(a0)
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d2,$2A(a0)
		move.l	d3,$2E(a0)
		rts
loc_30128:
		move.b	(a2),d0
		btst	#2,d0
		bne.s	loc_3013A
		btst	#3,d0
		bne	loc_30142
		rts
loc_3013A:
		sub.w	#$40,$10(a0)
		rts
loc_30142:
		add.w	#$40,$10(a0)
		rts
loc_3014A:
		moveq	#0,d2
		moveq	#0,d3
		move.w	$2E(a0),d2
		bmi.s	loc_301AA
		move.w	$2A(a0),d3
		bmi.s	loc_30186
		cmp.w	d2,d3
		bcs.s	loc_30176
		bne.s	loc_3016C
		tst.w	d3
		bne.s	loc_3016C
		move.b	#$40,$26(a0)
		rts
loc_3016C:
		lsl.l	#5,d2
		divu.w	d3,d2
		move.b	d2,$26(a0)
		rts
loc_30176:
		lsl.l	#5,d3
		divu.w	d2,d3
		sub.w	#$40,d3
		neg.w	d3
		move.b	d3,$26(a0)
		rts
loc_30186:
		neg.w	d3
		cmp.w	d2,d3
		bcc.s	loc_3019A
		lsl.l	#5,d3
		divu.w	d2,d3
		add.w	#$40,d3
		move.b	d3,$26(a0)
		rts
loc_3019A:
		lsl.l	#5,d2
		divu.w	d3,d2
		sub.w	#$80,d2
		neg.w	d2
		move.b	d2,$26(a0)
		rts
loc_301AA:
		neg.w	d2
		move.w	$2A(a0),d3
		bpl.s	loc_301D6
		neg.w	d3
		cmp.w	d2,d3
		bcs.s	loc_301C6
		lsl.l	#5,d2
		divu.w	d3,d2
		add.w	#$80,d2
		move.b	d2,$26(a0)
		rts
loc_301C6:
		lsl.l	#5,d3
		divu.w	d2,d3
		sub.w	#$C0,d3
		neg.w	d3
		move.b	d3,$26(a0)
		rts
loc_301D6:
		cmp.w	d2,d3
		bcc.s	loc_301E8
		lsl.l	#5,d3
		divu.w	d2,d3
		add.w	#$C0,d3
		move.b	d3,$26(a0)
		rts
loc_301E8:
		lsl.l	#5,d2
		divu.w	d3,d2
		sub.w	#$100,d2
		neg.w	d2
		move.b	d2,$26(a0)
		rts
;-------------------------------------------------------------------------------
loc_301F8:
		moveq	#0,d6
		moveq	#0,d0
		move.w	$2A(a1),d0
		bpl.s	loc_30206
		st	d6
		neg.w	d0
loc_30206:
		lsl.l	#7,d0
		divu.w	$34(a1),d0
		move.b	loc_30228(pc,d0),d0
		tst.b	d6
		bne.s	loc_3021A
		sub.b	#$80,d0
		neg.b	d0
loc_3021A:
		tst.w	$2E(a1)
		bpl.s	loc_30222
		neg.b	d0
loc_30222:
		move.b	d0,$26(a0)
		rts
loc_30228:
		dc.b	$40,$40,$40,$40,$41,$41,$41,$42,$42,$42,$43,$43,$43,$44,$44,$44
		dc.b	$45,$45,$45,$46,$46,$46,$47,$47,$47,$48,$48,$48,$48,$49,$49,$49
		dc.b	$4A,$4A,$4A,$4B,$4B,$4B,$4C,$4C,$4C,$4D,$4D,$4D,$4E,$4E,$4E,$4F
		dc.b	$4F,$50,$50,$50,$51,$51,$51,$52,$52,$52,$53,$53,$53,$54,$54,$54
		dc.b	$55,$55,$56,$56,$56,$57,$57,$57,$58,$58,$59,$59,$59,$5A,$5A,$5B
		dc.b	$5B,$5B,$5C,$5C,$5D,$5D,$5E,$5E,$5E,$5F,$5F,$60,$60,$61,$61,$62
		dc.b	$62,$63,$63,$64,$64,$65,$65,$66,$66,$67,$67,$68,$68,$69,$6A,$6A
		dc.b	$6B,$6C,$6C,$6D,$6E,$6E,$6F,$70,$71,$72,$73,$74,$75,$77,$78,$7A
		dc.b	$80,$0
;-------------------------------------------------------------------------------	
loc_302AA:
		move.w	$2E(a0),d0
		ble.s	loc_302F0
		muls.w	d0,d0
		move.w	$2A(a0),d1
		muls.w	d1,d1
		add.w	d1,d0
		move.w	$34(a0),d1
		mulu.w	d1,d1
		cmp.l	d1,d0
		bcs.s	loc_302F0
		move.b	#2,$24(a0)
		bclr	#2,$22(a0)
		moveq	#0,d0
		move.w	d0,$10(a0)
		move.w	d0,$12(a0)
		move.w	d0,$14(a0)
		move.b	d0,$37(a0)
		bset	#6,$22(a0)
		bsr	loc_30534
		bsr	loc_3056E
loc_302F0:
		rts
loc_302F2:
		tst.b	$21(a0)
		beq.s	loc_30332
		clr.b	$21(a0)
		clr.b	$14(a0)
		cmpa.l	#$FFFFB000,a0
		bne.s	loc_30314
		st	($FFFFF742).w
		tst.w	($FFFFFE20).w
		beq.s	loc_30328
		bra.s	loc_3031E
loc_30314:
		clr.b	($FFFFF742).w
		tst.w	($FFFFFED0).w
		beq.s	loc_30328
loc_3031E:
		move.w	#$C6,d0
		jsr	Play_Sfx	
loc_30328:
		move.b	#2,$25(a0)
		clr.b	$36(a0)
loc_30332:
		rts
loc_30334:
		move.w	$34(a0),d0
		cmpa.l	#$FFFFB000,a0
		bne.s	loc_30348
		tst.b	($FFFFF742).w
		beq.s	loc_30358
		bra.s	loc_3034E
loc_30348:
		tst.b	($FFFFF742).w
		bne.s	loc_30358
loc_3034E:
		cmp.w	#$80,d0
		beq.s	loc_30378
		addq.w	#1,d0
		bra.s	loc_30360
loc_30358:
		cmp.w	#$6E,d0
		beq.s	loc_30378
		subq.w	#1,d0
loc_30360:
		move.w	d0,$34(a0)
		cmp.w	#$77,d0
		bcc.s	loc_30372
		move.b	#3,$18(a0)
		rts
loc_30372:
		move.b	#2,$18(a0)
loc_30378:
		rts 
loc_3037A:
		dc.b	$1
loc_3037B:	
		dc.b	1,0,0,1,0,2,0,1,2,0,2,1,3,2,$1	
loc_3038A:
		btst	#2,$22(a0)
		beq.s	loc_303A0
		move.b	#3,$1C(a0)
		and.b	#$FC,$22(a0)
		rts
loc_303A0:
		moveq	#0,d0
		move.b	$26(a0),d0
		sub.b	#$10,d0
		lsr.b	#5,d0
		move.b	d0,d1
		add.w	d0,d0
		move.b	loc_3037A(pc,d0),d2
		cmp.b	$1C(a0),d2
		bne.s	loc_303C0
		cmp.b	$3F(a0),d1
		beq.s	loc_303E8
loc_303C0:
		move.b	d1,$3F(a0)
		move.b	d2,$1C(a0)
		move.b	loc_3037B(pc,d0),d0
		and.b	#$FC,$22(a0)
		or.b	d0,$22(a0)
		cmp.b	#1,d1
		beq.s	loc_303E2
		cmp.b	#5,d1
		bne.s	loc_303E8
loc_303E2:
		move.w	#$400,$32(a0)
loc_303E8:
		rts
loc_303EA:
		moveq	#0,d0
		move.b	$1C(a0),d0
		cmp.b	$1D(a0),d0
		beq.s	loc_30406
		move.b	#0,$1B(a0)
		move.b	d0,$1D(a0)
		move.b	#0,$1E(a0)
loc_30406:
		subq.b	#1,$1E(a0)
		bpl.s	loc_30472
		add.w	d0,d0
		adda.w	0(a1,d0),a1
		move.b	($FFFFDB21).w,d0
		lsr.b	#1,d0
		move.b	d0,$1E(a0)
		cmp.b	#0,$1C(a0)
		bne.s	loc_3043E
		sub.b	#1,$33(a0)
		bgt.s	loc_3043E
		bchg	#0,$22(a0)
		bchg	#0,1(a0)
		move.b	$32(a0),$33(a0)
loc_3043E:
		moveq	#0,d1
		move.b	$1B(a0),d1
		move.b	1(a1,d1),d0
		bpl.s	loc_30454
		move.b	#0,$1B(a0)
		move.b	1(a1),d0
loc_30454:
		and.b	#$7F,d0
		move.b	d0,$1A(a0)
		move.b	$22(a0),d1
		and.b	#3,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		addq.b	#1,$1B(a0)
loc_30472:
		rts
loc_30474:
		move.w	$14(a0),d2
		move.b	(a2),d0
		btst	#2,d0
		bne.s	loc_304C6
		btst	#3,d0
		bne	loc_304D6
		bset	#6,$22(a0)
		bne.s	loc_30496
		move.b	#$1E,$37(a0)
loc_30496:
		move.b	$26(a0),d0
		bmi.s	loc_304AE
		sub.b	#$38,d0
		cmp.b	#$10,d0
		bcc.s	loc_304AE
		move.w	d2,d1
		asr.w	#3,d1
		sub.w	d1,d2
		bra.s	loc_304B4
loc_304AE:
		move.w	d2,d1
		asr.w	#3,d1
		sub.w	d1,d2
loc_304B4:
		move.w	d2,$14(a0)
		move.b	$37(a0),d0
		beq.s	loc_304C4
		subq.b	#1,d0
		move.b	d0,$37(a0)
loc_304C4:
		rts

loc_304C6:
		add.w	#$60,d2
		cmp.w	#$600,d2
		ble.s	loc_304E4
		move.w	#$600,d2
		bra.s	loc_304E4
loc_304D6:
		sub.w	#$60,d2
		cmp.w	#$FA00,d2
		bge.s	loc_304E4
		move.w	#$FA00,d2
loc_304E4:
		move.w	d2,$14(a0)
		bclr	#6,$22(a0)
		clr.b	$37(a0)
		rts
loc_304F4:
		tst.b	$37(a0)
		bne.s	loc_3050E
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	#$60,d1
		asr.l	#8,d1
		add.w	d1,$14(a0)
loc_3050E:
		move.b	$26(a0),d0
		bpl.s	loc_30532
		add.b	#4,d0
		cmp.b	#$88,d0
		bcs.s	loc_30532
		move.w	$14(a0),d0
		bpl.s	loc_30526
		neg.w	d0
loc_30526:
		cmp.w	#$100,d0
		bcc.s	loc_30532
		move.b	#8,$24(a0)
loc_30532:
		rts
loc_30534:
		moveq	#0,d0
		moveq	#0,d1
		move.w	$14(a0),d2
		bpl.s	loc_30548
		neg.w	d2
		lsr.w	#8,d2
		sub.b	d2,$26(a0)
		bra.s	loc_3054E
loc_30548:
		lsr.w	#8,d2
		add.b	d2,$26(a0)
loc_3054E:
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	$34(a0),d1
		asr.l	#8,d1
		move.w	d1,$2A(a0)
		muls.w	$34(a0),d0
		asr.l	#8,d0
		move.w	d0,$2E(a0)
		rts
loc_3056E:
		move.w	$2A(a0),d0
		muls.w	#$CC,d0
		asr.l	#8,d0
		add.w	($FFFFF73E).w,d0
		move.w	d0,8(a0)
		move.w	$2E(a0),d0
		add.w	($FFFFF740).w,d0
		move.w	d0,$C(a0)
		rts	
;===============================================================================
; Object 0x09 - Sonic - Special Stage
; [ End ]
;===============================================================================