;===============================================================================
; Object 0x5D - Chemical Plant Boss
; [ Begin ]
;===============================================================================	
loc_29CD4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_29CE2(pc,d0),d1
		jmp	loc_29CE2(pc,d1)
loc_29CE2:
		dc.w	loc_29CFE-loc_29CE2
		dc.w	loc_29EEE-loc_29CE2
		dc.w	loc_2A342-loc_29CE2
		dc.w	loc_2A406-loc_29CE2
		dc.w	loc_2A552-loc_29CE2
		dc.w	loc_2A61A-loc_29CE2
		dc.w	loc_2AC1A-loc_29CE2
		dc.w	loc_2A59E-loc_29CE2
		dc.w	loc_2A732-loc_29CE2
		dc.w	loc_2A256-loc_29CE2
		dc.w	loc_2A1FE-loc_29CE2
		dc.w	loc_2AE96-loc_29CE2
		dc.w	loc_2AEEE-loc_29CE2
		dc.w	loc_2AF96-loc_29CE2
loc_29CFE:
		move.l	#CPz_Boss_Mappings_1,4(a0) 
		move.w	#$2420,2(a0)
		or.b	#4,1(a0)
		move.b	#$20,$19(a0)
		move.w	#$2B80,8(a0)
		move.w	#$4B0,$C(a0)
		move.b	#3,$18(a0)
		move.b	#$F,$20(a0)
		move.b	#8,$21(a0)
		addq.b	#2,$24(a0)
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$38(a0)
		bclr	#3,$2D(a0)
		bsr	loc_2B49A
		jsr	S1SingleObjectLoad	
		bne	loc_29E4C
		move.b	#$5D,0(a1)
		move.l	a0,$34(a1)
		move.l	a1,$34(a0)
		move.l	#CPz_Boss_Mappings_1,4(a1) 
		move.w	#$420,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#3,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		move.b	#$16,$24(a1)
		move.b	#1,$1C(a1)
		move.b	1(a0),1(a1)
		bsr	loc_2B488
		tst.b	$28(a0)
		bmi	loc_29E4C
		jsr	S1SingleObjectLoad	
		bne	loc_29E4C
		move.b	#$5D,0(a1)
		move.l	a0,$34(a1)
		move.l	#CPz_Boss_Mappings_2,4(a1) 
		move.w	#$418,2(a1)
		bsr	loc_2B488
		move.b	#1,$1E(a0)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#3,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		move.b	#$18,$24(a1)
		move.b	1(a0),1(a1)
		jsr	S1SingleObjectLoad	
		bne.s	loc_29E4C
		move.b	#$5D,0(a1)
		move.l	a0,$34(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.w	#$2500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#2,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		move.b	#$12,$24(a1)
loc_29E4C:
		jsr	S1SingleObjectLoad	
		bne.s	loc_29EA8
		move.b	#$5D,0(a1)
		move.l	a0,$34(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.w	#$2500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#4,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		sub.w	#$38,$C(a1)
		sub.w	#$10,8(a1)
		move.w	#$FFF0,$2E(a1)
		add.b	#$10,$24(a1)
		move.b	#6,$1C(a1)
loc_29EA8:
		jsr	S1SingleObjectLoad	
		bne.s	loc_29EEC
		move.b	#$5D,0(a1)
		move.l	a0,$34(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.w	#$2500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#4,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		move.b	#4,$24(a1)
loc_29EEC:
		rts
loc_29EEE:
		bsr	loc_29F32
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_29F24(pc,d0),d1
		jsr	loc_29F24(pc,d1)
		lea	(CPz_Boss_Animate_Data_1),a1 
		jsr	animateSprite	
		move.b	$22(a0),d0
		and.b	#3,d0
		and.b	#$FC,1(a0)
		or.b	d0,1(a0)
		jmp	displaySprite	
loc_29F24:	
		dc.w	loc_2A002-loc_29F24
		dc.w	loc_2A138-loc_29F24
		dc.w	loc_2A1A0-loc_29F24
		dc.w	loc_2A1B4-loc_29F24
		dc.w	loc_29F54-loc_29F24
		dc.w	loc_29F78-loc_29F24
		dc.w	loc_29FC2-loc_29F24
loc_29F32:
		cmp.b	#8,$25(a0)
		bge.s	loc_29F4A
		move.w	($FFFFB008).w,d0
		sub.w	8(a0),d0
		bgt.s	loc_29F4C
		bclr	#0,$22(a0)
loc_29F4A:
		rts
loc_29F4C:
		bset	#0,$22(a0)
		rts
loc_29F54:
		subq.w	#1,$3C(a0)
		bpl	loc_2A0D4
		bset	#0,$22(a0)
		bclr	#7,$22(a0)
		clr.w	$10(a0)
		addq.b	#2,$25(a0)
		move.w	#$FFDA,$3C(a0)
		rts
loc_29F78:
		addq.w	#1,$3C(a0)
		beq.s	loc_29F88
		bpl.s	loc_29F8E
		add.w	#$18,$12(a0)
		bra.s	loc_29FBA
loc_29F88:
		clr.w	$12(a0)
		bra.s	loc_29FBA
loc_29F8E:
		cmp.w	#$30,$3C(a0)
		bcs.s	loc_29FA6
		beq.s	loc_29FAE
		cmp.w	#$38,$3C(a0)
		bcs.s	loc_29FBA
		addq.b	#2,$25(a0)
		bra.s	loc_29FBA
loc_29FA6:
		sub.w	#8,$12(a0)
		bra.s	loc_29FBA
loc_29FAE:
		clr.w	$12(a0)
		bsr	loc_2B4A0
		bsr	loc_2B4A6
loc_29FBA:
		bsr	loc_2A0AE
		bra	loc_2A01E
loc_29FC2:
		bset	#6,$2E(a0)
		move.w	#$400,$10(a0)
		move.w	#$FFC0,$12(a0)
		cmp.w	#$2C10,($FFFFEECA).w
		bcc.s	loc_29FE2
		addq.w	#2,($FFFFEECA).w
		bra.s	loc_29FE8
loc_29FE2:
		tst.b	1(a0)
		bpl.s	loc_29FF0
loc_29FE8:
		bsr	loc_2A0AE
		bra	loc_2A01E
loc_29FF0:
		addq.l	#4,sp
		move.l	$34(a0),a1
		jsr	delete_A1_Object	
		jmp	deleteObject	
loc_2A002:
		move.w	#$100,$12(a0)
		bsr	loc_2A0AE
		cmp.w	#$4C0,$38(a0)
		bne.s	loc_2A01E
		move.w	#0,$12(a0)
		addq.b	#2,$25(a0)
loc_2A01E:
		move.b	$3F(a0),d0
		jsr	CalcSine	
		asr.w	#6,d0
		add.w	$38(a0),d0
		move.w	d0,$C(a0)
		move.w	$30(a0),8(a0)
		addq.b	#2,$3F(a0)
		cmp.b	#8,$25(a0)
		bcc.s	loc_2A088
		tst.b	$22(a0)
		bmi.s	loc_2A08A
		tst.b	$20(a0)
		bne.s	loc_2A088
		tst.b	$3E(a0)
		bne.s	loc_2A066
		move.b	#$20,$3E(a0)
		move.w	#$AC,d0
		jsr	Play_Sfx	
loc_2A066:
		lea	($FFFFFB22).w,a1
		moveq	#0,d0
		tst.w	(a1)
		bne.s	loc_2A074
		move.w	#$EEE,d0
loc_2A074:
		move.w	d0,(a1)
		subq.b	#1,$3E(a0)
		bne.s	loc_2A088
		move.b	#$F,$20(a0)
		bclr	#1,$2D(a0)
loc_2A088:
		rts
loc_2A08A:
		moveq	#$64,d0
		bsr	loc_2B494
		move.b	#8,$25(a0)
		move.w	#$B3,$3C(a0)
		move.l	$34(a0),a1
		move.b	#4,$1C(a1)
		moveq	#$40,d0
		bra	loc_2B48E
		rts
loc_2A0AE:
		move.l	$30(a0),d2
		move.l	$38(a0),d3
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	$12(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d2,$30(a0)
		move.l	d3,$38(a0)
		rts
loc_2A0D4:
		move.b	($FFFFFE0F).w,d0
		and.b	#7,d0
		bne.s	loc_2A11A
		jsr	SingleObjectLoad	
		bne.s	loc_2A11A
		move.b	#$58,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		jsr	PseudoRandomNumber	
		move.w	d0,d1
		moveq	#0,d1
		move.b	d0,d1
		lsr.b	#2,d1
		sub.w	#$20,d1
		add.w	d1,8(a1)
		lsr.w	#8,d0
		lsr.b	#2,d0
		sub.w	#$20,d0
		add.w	d0,$C(a1)
loc_2A11A:
		rts
loc_2A11C:	
		jsr	SingleObjectLoad	
		bne.s	loc_2A136
		move.b	#$58,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
loc_2A136:
		rts
loc_2A138:
		btst	#3,$2D(a0)
		bne.s	loc_2A146
		move.w	#$2B30,d0
		bra.s	loc_2A14A
loc_2A146:
		move.w	#$2A50,d0
loc_2A14A:
		move.w	d0,d1
		sub.w	$30(a0),d0
		bpl.s	loc_2A154
		neg.w	d0
loc_2A154:
		cmp.w	#3,d0
		ble.s	loc_2A176
		cmp.w	$30(a0),d1
		bgt.s	loc_2A168
		move.w	#$FD00,$10(a0)
		bra.s	loc_2A16E
loc_2A168:
		move.w	#$300,$10(a0)
loc_2A16E:
		bsr	loc_2A0AE
		bra	loc_2A01E
loc_2A176:
		cmp.w	#$4C0,$38(a0)
		bne	loc_2A01E
		move.w	#0,$10(a0)
		move.w	#0,$12(a0)
		addq.b	#2,$25(a0)
		bchg	#3,$2D(a0)
		bset	#0,$2E(a0)
		bra	loc_2A01E
loc_2A1A0:
		btst	#0,$2E(a0)
		beq.s	loc_2A1AC
		bra	loc_2A01E
loc_2A1AC:
		addq.b	#2,$25(a0)
		bra	loc_2A01E
loc_2A1B4:
		move.w	($FFFFB008).w,d0
		add.w	#$4C,d0
		cmp.w	$30(a0),d0
		bgt.s	loc_2A1E2
		beq	loc_2A01E
		sub.l	#$10000,$30(a0)
		cmp.w	#$2A28,$30(a0)
		bgt	loc_2A01E
		move.w	#$2A28,$30(a0)
		bra	loc_2A01E
loc_2A1E2:
		add.l	#$10000,$30(a0)
		cmp.w	#$2B70,$30(a0)
		blt	loc_2A01E
		move.w	#$2B70,$30(a0)
		bra	loc_2A01E
loc_2A1FE:
		cmp.b	#$F9,$30(a0)
		beq.s	loc_2A220
		sub.b	#1,$30(a0)
		bgt	loc_2B470
		bsr	loc_2A11C
		move.b	#$F9,$30(a0)
		move.w	#$1E,$2A(a0)
loc_2A220:
		subq.w	#1,$2A(a0)
		bpl	loc_2B470
		move.w	$10(a0),d0
		add.w	d0,8(a0)
		move.l	$C(a0),d3
		move.w	$12(a0),d0
		add.w	#$38,$12(a0)
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d3,$C(a0)
		cmp.l	#$5800000,d3
		bcc	loc_2B476
		bra	loc_2B47C
loc_2A256:
		btst	#7,$22(a0)
		bne.s	loc_2A28C
		move.l	$34(a0),a1
		move.l	8(a1),8(a0)
		move.l	$C(a1),$C(a0)
		move.b	1(a1),1(a0)
		move.b	$22(a1),$22(a0)
		move.l	#CPz_Boss_Animate_Data,a1 ;	loc_2AFDC
		jsr	animateSprite	
		jmp	displaySprite	
loc_2A28C:
		moveq	#$22,d3
		move.b	#$78,$30(a0)
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.b	d3,$1A(a0)
		move.b	#$14,$24(a0)
		jsr	PseudoRandomNumber	
		asr.w	#8,d0
		asr.w	#6,d0
		move.w	d0,$10(a0)
		move.w	#$FC80,$12(a0)
		moveq	#1,d2
		addq.w	#1,d3
loc_2A2C6:	
		jsr	SingleObjectLoad	
		bne	loc_2B476
		move.b	#$5D,0(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.b	d3,$1A(a1)
		move.b	#$14,$24(a1)
		move.w	#$2500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#2,$18(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	$22(a0),$22(a1)
		move.b	1(a0),1(a1)
		jsr	PseudoRandomNumber	
		asr.w	#8,d0
		asr.w	#6,d0
		move.w	d0,$10(a1)
		move.w	#$FC80,$12(a1)
		swap.w	d0
		add.b	#$1E,d0
		and.w	#$7F,d0
		move.b	d0,$30(a1)
		addq.w	#1,d3
		dbra	d2,loc_2A2C6
		rts
loc_2A342:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2A350(pc,d0),d1
		jmp	loc_2A350(pc,d1)
loc_2A350:
		dc.w	loc_2A354-loc_2A350
		dc.w	loc_2A382-loc_2A350
loc_2A354:
		move.l	$34(a0),a1
		btst	#0,$2E(a1)
		bne.s	loc_2A362
		rts
loc_2A362:
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		add.w	#$18,$C(a0)
		move.w	#$C,$2C(a0)
		addq.b	#2,$25(a0)
		move.l	a0,a1
		bra.s	loc_2A390
loc_2A382:
		jsr	S1SingleObjectLoad	
		beq.s	loc_2A38C
		rts
loc_2A38C:
		move.l	a0,$34(a1)
loc_2A390:
		subq.w	#1,$2C(a0)
		blt.s	loc_2A3F6
		move.b	#$5D,0(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.w	#$2500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#5,$18(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	$2C(a0),d0
		sub.w	#$B,d0
		neg.w	d0
		lsl.w	#3,d0
		move.w	d0,$38(a1)
		add.w	d0,$C(a1)
		move.b	#1,$1C(a1)
		cmp.b	#2,$25(a1)
		beq	loc_2A59E
		move.b	#$E,$24(a1)
		bra	loc_2A59E
loc_2A3F6:
		move.b	#0,$25(a0)
		move.b	#6,$24(a0)
		bra	loc_2A59E
loc_2A406:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2A414(pc,d0),d1
		jmp	loc_2A414(pc,d1)
loc_2A414:
		dc.w	loc_2A41A-loc_2A414
		dc.w	loc_2A4A8-loc_2A414
		dc.w	loc_2A516-loc_2A414
loc_2A41A:
		jsr	S1SingleObjectLoad	
		bne	loc_2A59E
		move.b	#$E,$24(a0)
		move.b	#6,$24(a1)
		move.b	#2,$25(a1)
		move.b	#$5D,0(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.w	#$2500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#4,$18(a1)
		move.b	#2,$32(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	#$58,d0
		move.b	d0,$31(a1)
		add.w	d0,$C(a1)
		move.b	#2,$1C(a1)
		move.l	a0,$34(a1)
		move.b	#$12,$30(a1)
		jsr	S1SingleObjectLoad	
		bne.s	loc_2A4A4
		move.b	#$5D,0(a1)
		move.b	#$A,$24(a1)
		move.l	$34(a0),$34(a1)
loc_2A4A4:
		bra	loc_2A59E
loc_2A4A8:
		move.l	$34(a0),a1
		move.l	$34(a1),a2
		btst	#7,$22(a2)
		bne	loc_2B476
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		sub.b	#1,$30(a0)
		bne.s	loc_2A4FA
		move.b	#$12,$30(a0)
		sub.b	#8,$31(a0)
		bgt.s	loc_2A4FA
		bmi.s	loc_2A4EC
		move.b	#3,$1C(a0)
		move.b	#$C,$30(a0)
		bra.s	loc_2A4FA
loc_2A4EC:
		move.b	#6,$30(a0)
		move.b	#4,$25(a0)
		rts
loc_2A4FA:
		moveq	#0,d0
		move.b	$31(a0),d0
		add.w	d0,$C(a0)
		lea	(CPz_Boss_Animate_Data),a1 
		jsr	animateSprite	
		jmp	displaySprite	
loc_2A516:
		sub.b	#1,$30(a0)
		beq.s	loc_2A520
		rts
loc_2A520:
		subq.b	#1,$32(a0)
		beq.s	loc_2A53E
		move.b	#2,$1C(a0)
		move.b	#$12,$30(a0)
		move.b	#2,$25(a0)
		move.b	#$58,$31(a0)
loc_2A53E:
		move.l	$34(a0),a1
		move.b	#8,$24(a1)
		move.b	#$58,$31(a1)
		bra	loc_2B476
loc_2A552:
		tst.b	$3C(a0)
		bne.s	loc_2A58E
		moveq	#0,d0
		move.b	$31(a0),d0
		add.w	$C(a0),d0
		lea	($FFFFB000).w,a1
		moveq	#$7F,d1
loc_2A568:	
		cmp.w	$C(a1),d0
		beq.s	loc_2A57E
		lea	$40(a1),a1
		dbra	d1,loc_2A568
		bra.s	loc_2A59E
loc_2A578:	
		st	$3C(a0)
		bra.s	loc_2A59E
loc_2A57E:
		moveq	#0,d7
		move.b	#$5D,d7
		cmp.b	(a1),d7
		beq.s	loc_2A590
		dbra	d1,loc_2A568
		bra.s	loc_2A59E
loc_2A58E:
		move.l	a0,a1
loc_2A590:
		bset	#7,$22(a1)
		sub.b	#8,$31(a0)
		beq.s	loc_2A578
loc_2A59E:
		move.l	$34(a0),a1
		move.l	$34(a1),a2
		btst	#7,$22(a2)
		bne.s	loc_2A5EE
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		cmp.b	#4,$25(a0)
		bne.s	loc_2A5C8
		add.w	#$18,$C(a0)
loc_2A5C8:
		btst	#7,$22(a0)
		bne.s	loc_2A5EA
		move.w	$38(a0),d0
		add.w	d0,$C(a0)
		lea	(CPz_Boss_Animate_Data),a1 
		jsr	animateSprite	
		jmp	displaySprite	
loc_2A5EA:
		bra	loc_2B476
loc_2A5EE:
		move.b	#$14,$24(a0)
		jsr	PseudoRandomNumber	
		asr.w	#8,d0
		asr.w	#6,d0
		move.w	d0,$10(a0)
		move.w	#$FC80,$12(a0)
		swap.w	d0
		add.b	#$1E,d0
		and.w	#$7F,d0
		move.b	d0,$30(a0)
		bra	loc_2B470
loc_2A61A:
		btst	#7,$22(a0)
		bne	loc_2B476
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2A632(pc,d0),d1
		jmp	loc_2A632(pc,d1)
loc_2A632:
		dc.w	loc_2A638-loc_2A632
		dc.w	loc_2A67E-loc_2A632
		dc.w	loc_2A6D0-loc_2A632
loc_2A638:
		addq.b	#2,$25(a0)
		move.b	#$5D,0(a0)
		move.l	#CPz_Boss_Mappings,4(a0) 
		move.w	#$6500,2(a0)
		move.b	#4,1(a0)
		move.b	#$20,$19(a0)
		move.b	#4,$18(a0)
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.b	#$F,$30(a0)
		move.b	#4,$1C(a0)
loc_2A67E:
		subq.b	#1,$30(a0)
		bne.s	loc_2A6A2
		move.b	#5,$1C(a0)
		move.b	#4,$30(a0)
		addq.b	#2,$25(a0)
		sub.w	#$24,$C(a0)
		sub.w	#2,8(a0)
		rts
loc_2A6A2:
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.b	$22(a1),$22(a0)
		move.b	1(a1),1(a0)
		lea	(CPz_Boss_Animate_Data),a1 
		jsr	animateSprite	
		jmp	displaySprite	
loc_2A6D0:
		subq.b	#1,$30(a0)
		bne.s	loc_2A6F6
		move.b	#0,$25(a0)
		move.l	$34(a0),a1
		bset	#1,$2E(a1)
		addq.b	#1,$3C(a0)
		cmp.b	#$C,$3C(a0)
		bge	loc_2B476
		rts
loc_2A6F6:
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		sub.w	#$24,$C(a0)
		sub.w	#2,8(a0)
		btst	#0,1(a0)
		beq.s	loc_2A720
		add.w	#4,8(a0)
loc_2A720:
		lea	(CPz_Boss_Animate_Data),a1 
		jsr	animateSprite	
		jmp	displaySprite	
loc_2A732:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2A740(pc,d0),d1
		jmp	loc_2A740(pc,d1)
loc_2A740:
		dc.w	loc_2A74C-loc_2A740
		dc.w	loc_2A7FC-loc_2A740
		dc.w	loc_2ABB0-loc_2A740
		dc.w	loc_2AB44-loc_2A740
		dc.w	loc_2AC06-loc_2A740
		dc.w	loc_2A888-loc_2A740
loc_2A74C:
		move.l	$34(a0),a1
		btst	#7,$2E(a1)
		bne.s	loc_2A7AE
		bset	#7,$2E(a1)
		jsr	S1SingleObjectLoad	
		bne.s	loc_2A7AE
		move.b	#$5D,0(a1)
		move.l	a0,$34(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.w	#$2500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#4,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		move.b	#$10,$24(a1)
		move.b	#4,$25(a1)
		move.b	#9,$1C(a1)
loc_2A7AE:
		jsr	S1SingleObjectLoad	
		bne.s	loc_2A7F8
		move.b	#$5D,0(a1)
		move.l	a0,$34(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.w	#$6500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#4,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		add.b	#$10,$24(a1)
		move.b	#6,$25(a1)
loc_2A7F8:
		addq.b	#2,$25(a0)
loc_2A7FC:
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		sub.w	#$38,$C(a0)
		btst	#7,$22(a0)
		bne.s	loc_2A880
		btst	#2,$2E(a1)
		beq.s	loc_2A82C
		bsr	loc_2AA6E
		bsr	loc_2A992
		bra.s	loc_2A84C
loc_2A82C:
		btst	#5,$2E(a1)
		beq.s	loc_2A84C
		subq.w	#1,$2A(a0)
		bne.s	loc_2A84C
		bclr	#5,$2E(a1)
		bset	#3,$2E(a1)
		bset	#4,$2E(a1)
loc_2A84C:
		move.l	$34(a0),a1
		move.b	$22(a1),$22(a0)
		move.b	1(a1),1(a0)
		move.w	$2E(a0),d0
		btst	#0,1(a0)
		beq.s	loc_2A86A
		neg.w	d0
loc_2A86A:
		add.w	d0,8(a0)
		lea	(CPz_Boss_Animate_Data),a1 
		jsr	animateSprite	
		jmp	displaySprite	
loc_2A880:
		move.b	#$A,$25(a0)
		bra.s	loc_2A84C
loc_2A888:
		move.l	d7,-(sp)
		move.b	#$1E,$30(a0)
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		sub.w	#$38,$C(a0)
		move.w	$2E(a0),d0
		btst	#0,1(a0)
		beq.s	loc_2A8B4
		neg.w	d0
loc_2A8B4:
		add.w	d0,8(a0)
		move.b	#$20,$1A(a0)
		move.b	#$14,$24(a0)
		jsr	PseudoRandomNumber	
		asr.w	#8,d0
		asr.w	#6,d0
		move.w	d0,$10(a0)
		move.w	#$FC80,$12(a0)
		moveq	#0,d7
		move.w	$2E(a0),d0
		add.w	#$18,d0
		bge.s	loc_2A8F6
		add.w	#$18,d0
		bge.s	loc_2A8F4
		add.w	#$18,d0
		bge.s	loc_2A8F2
		addq.w	#1,d7
loc_2A8F2:
		addq.w	#1,d7
loc_2A8F4:
		addq.w	#1,d7
loc_2A8F6:
		subq.w	#1,d7
		bmi	loc_2A986
loc_2A8FC:	
		jsr	SingleObjectLoad	
		bne	loc_2B476
		move.b	#$5D,0(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.b	#$21,$1A(a1)
		move.b	#$14,$24(a1)
		move.w	#$2500,2(a1)
		move.b	1(a0),1(a1)
		move.b	#$20,$19(a1)
		move.b	#2,$18(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#8,$C(a1)
		move.w	d7,d2
		add.w	d2,d2
		move.w	loc_2A98C(pc,d2),d3
		btst	#0,1(a0)
		beq.s	loc_2A95C
		neg.w	d3
loc_2A95C:
		add.w	d3,8(a1)
		jsr	PseudoRandomNumber	
		asr.w	#8,d0
		asr.w	#6,d0
		move.w	d0,$10(a1)
		move.w	#$FC80,$12(a1)
		swap.w	d0
		add.b	#$1E,d0
		and.w	#$7F,d0
		move.b	d0,$30(a1)
		dbra	d7,loc_2A8FC
loc_2A986:
		move.l	(sp)+,d7
		bra	loc_2B470
loc_2A98C:	
		dc.w	$18,$30,$48	
loc_2A992:
		btst	#3,$2E(a1)
		bne	loc_2AA6C
		btst	#4,$2E(a1)	
		bne	loc_2AA6C
		cmp.w	#$FFEC,$2E(a0)
		blt.s	loc_2A9C6
		btst	#1,$2D(a1)
		beq	loc_2AA6C
		bclr	#1,$2D(a1)
		bset	#2,$2D(a1)
		bra.s	loc_2AA04
loc_2A9C6:
		cmp.w	#$FFC0,$2E(a0)
		bge	loc_2AA6C
		move.w	($FFFFB008).w,d1
		sub.w	#8,d1
		btst	#0,1(a0)
		beq.s	loc_2A9F4
		add.w	$2E(a0),d1
		sub.w	8(a0),d1
		bgt	loc_2AA6C
		cmp.w	#$FFE8,d1
		bge.s	loc_2AA04
		rts
loc_2A9F4:
		sub.w	$2E(a0),d1
		sub.w	8(a0),d1
		blt.s	loc_2AA6C
		cmp.w	#$18,d1
		bgt.s	loc_2AA6C
loc_2AA04:
		bset	#5,$2E(a1)
		bclr	#2,$2E(a1)
		move.w	#$12,$2A(a0)
		jsr	S1SingleObjectLoad	
		bne.s	loc_2AA6C
		move.b	#$5D,0(a1)
		move.l	a0,$34(a1)
		move.b	#$10,$24(a1)
		move.b	#8,$25(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.w	#$2500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#5,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		move.b	#$B,$1C(a1)
		move.w	#$24,$2A(a1)
loc_2AA6C:
		rts
loc_2AA6E:
		moveq	#1,d0
		btst	#4,$2E(a1)
		bne.s	loc_2AA7A
		moveq	#$FFFFFFFF,d0
loc_2AA7A:
		cmp.w	#$FFF0,$2E(a0)
		bne.s	loc_2AAF2
		bclr	#4,$2E(a1)
		beq.s	loc_2AAF2
		bclr	#2,$2E(a1)
		clr.b	$25(a0)
		move.l	a1,a2
		jsr	S1SingleObjectLoad	
		bne.s	loc_2AAF0
		move.b	#$5D,0(a1)
		move.l	$34(a0),$34(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.w	#$2500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#4,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		move.b	#4,$24(a1)
		move.b	#0,$25(a0)
		bra.s	loc_2AAF0
		move.b	#$A,$24(a1)
		move.l	$34(a0),$34(a1)
loc_2AAF0:
		rts
loc_2AAF2:
		move.w	$2E(a0),d1
		cmp.w	#$FFD8,d1
		bge.s	loc_2AB3C
		cmp.w	#$FFC0,d1
		bge.s	loc_2AB34
		move.b	#8,$1C(a0)
		cmp.w	#$FFA8,d1
		blt.s	loc_2AB1E
		bgt.s	loc_2AB18
		btst	#4,$2E(a1)
		beq.s	loc_2AB1C
loc_2AB18:
		add.w	d0,$2E(a0)
loc_2AB1C:
		rts
loc_2AB1E:
		move.w	#$FFA8,$2E(a0)
		btst	#0,1(a0)
		beq.s	loc_2AB18
		move.w	#$58,$2E(a0)
		bra.s	loc_2AB18
loc_2AB34:
		move.b	#7,$1C(a0)
		bra.s	loc_2AB18
loc_2AB3C:
		move.b	#6,$1C(a0)
		bra.s	loc_2AB18
loc_2AB44:
		btst	#7,$22(a0)
		bne	loc_2B476
		move.l	$34(a0),a1
		move.l	$34(a1),d0
		beq	loc_2B476
		move.l	d0,a1
		bclr	#3,$2E(a1)
		beq.s	loc_2AB78
		move.b	#$C,$24(a0)
		move.b	#0,$25(a0)
		move.b	#$87,$20(a0)
		bra.s	loc_2ABD8
loc_2AB78:
		bclr	#1,$2E(a1)
		bne.s	loc_2AB88
		tst.b	$1C(a0)
		bne.s	loc_2ABD8
		rts
loc_2AB88:
		tst.b	$1C(a0)
		bne.s	loc_2AB94
		move.b	#$B,$1C(a0)
loc_2AB94:
		add.b	#1,$1C(a0)
		cmp.b	#$17,$1C(a0)
		blt.s	loc_2ABD8
		bclr	#0,$2E(a1)
		bset	#2,$2E(a1)
		bra.s	loc_2ABD8
loc_2ABB0:
		btst	#7,$22(a0)
		bne	loc_2B476
		move.l	$34(a0),a1
		move.l	$34(a1),a1
		btst	#5,$2E(a1)
		beq.s	loc_2ABD8
		cmp.b	#9,$1C(a0)
		bne.s	loc_2ABD8
		move.b	#$A,$1C(a0)
loc_2ABD8:
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.b	1(a1),1(a0)
		move.b	$22(a1),$22(a0)
		lea	(CPz_Boss_Animate_Data),a1 
		jsr	animateSprite	
		jmp	displaySprite	
loc_2AC06:
		btst	#7,$22(a0)
		bne	loc_2B476
		subq.w	#1,$2A(a0)
		beq	loc_2B476
		bra.s	loc_2ABD8
loc_2AC1A:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2AC28(pc,d0),d1
		jmp	loc_2AC28(pc,d1)
loc_2AC28:
		dc.w	loc_2AC32-loc_2AC28
		dc.w	loc_2AC6A-loc_2AC28
		dc.w	loc_2AD70-loc_2AC28
		dc.w	loc_2ACE6-loc_2AC28
		dc.w	loc_2AD30-loc_2AC28
loc_2AC32:
		addq.b	#2,$25(a0)
		move.b	#$20,$16(a0)
		move.b	#$19,$1C(a0)
		move.w	#0,$12(a0)
		move.l	$34(a0),a1
		move.l	$34(a1),a1
		btst	#2,$2D(a1)
		beq.s	loc_2AC6A
		bclr	#2,$2D(a1)
		move.b	#6,$25(a0)
		move.w	#9,$2A(a0)
loc_2AC6A:
		bsr	loc_2B4AC
		jsr	ObjHitFloor	
		tst.w	d1
		bmi.s	loc_2AC92
		cmp.w	#$518,$C(a0)
		bge.s	loc_2ACC8
		lea	(CPz_Boss_Animate_Data),a1 
		jsr	animateSprite	
		jmp	displaySprite	
loc_2AC92:
		add.w	d1,$C(a0)
		move.l	$34(a0),a1
		move.l	$34(a1),a1
		bset	#2,$2E(a1)
		bset	#4,$2E(a1)
		move.b	#2,$25(a1)
		addq.b	#2,$25(a0)
		move.b	#0,$28(a0)
		move.w	#$E6,d0
		bsr	loc_2B482
		jmp	displaySprite	
loc_2ACC8:
		move.l	$34(a0),a1
		move.l	$34(a1),a1
		bset	#2,$2E(a1)
		bset	#4,$2E(a1)
		move.b	#2,$25(a1)
		bra	loc_2B476
loc_2ACE6:
		sub.w	#1,$2A(a0)
		bpl.s	loc_2AD1A
		move.b	#2,$18(a0)
		move.b	#$25,$1A(a0)
		move.l	$34(a0),a1
		move.l	$34(a1),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		addq.b	#2,$25(a0)
		move.b	#8,$1E(a0)
		bra.s	loc_2AD30
loc_2AD1A:
		bsr	loc_2B4B2
		lea	(CPz_Boss_Animate_Data),a1 
		jsr	animateSprite	
		jmp	displaySprite	
loc_2AD30:
		sub.b	#1,$1E(a0)
		bpl.s	loc_2AD56
		add.b	#1,$1A(a0)
		move.b	#8,$1E(a0)
		cmp.b	#$27,$1A(a0)
		bgt	loc_2ACC8
		blt.s	loc_2AD56
		add.b	#$C,$1E(a0)
loc_2AD56:
		move.l	$34(a0),a1
		move.l	$34(a1),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		jmp	displaySprite	
loc_2AD70:
		moveq	#0,d0
		move.b	$28(a0),d0
		bne	loc_2AE6C
		add.w	#$18,$C(a0)
		add.w	#$C,8(a0)
		btst	#0,1(a0)
		beq.s	loc_2AD94
		sub.w	#$18,8(a0)
loc_2AD94:
		move.b	#4,$16(a0)
		move.b	#4,$17(a0)
		addq.b	#1,$28(a0)
		move.b	#9,$1A(a0)
		move.w	$12(a0),d0
		lsr.w	#1,d0
		neg.w	d0
		move.w	d0,$12(a0)
		jsr	PseudoRandomNumber	
		asr.w	#6,d0
		bmi.s	loc_2ADC4
		add.w	#$200,d0
loc_2ADC4:
		add.w	#$FF00,d0
		move.w	d0,$10(a0)
		move.b	#0,$20(a0)
		moveq	#3,d3
loc_2ADD4:	
		jsr	S1SingleObjectLoad	
		bne	loc_2AE68
		move.b	#$5D,0(a1)
		move.l	a0,$34(a1)
		move.l	#CPz_Boss_Mappings,4(a1) 
		move.w	#$6500,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#2,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		move.b	#4,$16(a1)
		move.b	#4,$17(a1)
		move.b	#9,$1A(a1)
		move.b	#$C,$24(a1)
		move.b	#4,$25(a1)
		move.b	#1,$28(a1)
		move.w	$12(a0),$12(a1)
		move.b	$20(a0),$20(a1)
		jsr	PseudoRandomNumber	
		asr.w	#6,d0
		bmi.s	loc_2AE52
		add.w	#$80,d0
loc_2AE52:
		add.w	#$FF80,d0
		move.w	d0,$10(a1)
		swap.w	d0
		and.w	#$3FF,d0
		sub.w	d0,$12(a1)
		dbra	d3,loc_2ADD4
loc_2AE68:
		bra	loc_2B470
loc_2AE6C:
		bsr	loc_2B4AC
		jsr	ObjHitFloor	
		tst.w	d1
		bmi.s	loc_2AE7E
		bra	loc_2B47C
loc_2AE7E:
		bra	loc_2B476
		add.w	d1,$C(a0)
		move.w	$12(a0),d0
		lsr.w	#1,d0
		neg.w	d0
		move.w	d0,$12(a0)
		bra	loc_2B470
loc_2AE96:
		move.l	$34(a0),a1
		move.l	8(a1),8(a0)
		move.l	$C(a1),$C(a0)
		move.b	$22(a1),$22(a0)
		move.b	1(a1),1(a0)
		move.b	$3E(a1),d0
		cmp.b	#$1F,d0
		bne.s	loc_2AEC2
		move.b	#2,$1C(a0)
loc_2AEC2:
		cmp.b	#4,($FFFFB024).w
		beq.s	loc_2AED2
		cmp.b	#4,($FFFFB064).w
		bne.s	loc_2AED8
loc_2AED2:
		move.b	#3,$1C(a0)
loc_2AED8:
		lea	(CPz_Boss_Animate_Data_1),a1 
		jsr	animateSprite	
		jmp	displaySprite	
loc_2AEEA:
		dc.b	0,$FF,1,$0	
loc_2AEEE:
		btst	#7,$22(a0)
		bne.s	loc_2AF48
		move.l	$34(a0),a1
		move.l	8(a1),8(a0)
		move.l	$C(a1),$C(a0)
		move.b	$22(a1),$22(a0)
		move.b	1(a1),1(a0)
		subq.b	#1,$1E(a0)
		bpl.s	loc_2AF36
		move.b	#1,$1E(a0)
		move.b	$2A(a0),d0
		addq.b	#1,d0
		cmp.b	#2,d0
		ble.s	loc_2AF2C
		moveq	#0,d0
loc_2AF2C:
		move.b	loc_2AEEA(pc,d0),$1A(a0)
		move.b	d0,$2A(a0)
loc_2AF36:
		cmp.b	#$FF,$1A(a0)
		bne	loc_2B470
		move.b	#0,$1A(a0)
		rts
loc_2AF48:
		move.l	$34(a0),a1
		btst	#6,$2E(a1)
		bne.s	loc_2AF56
		rts
loc_2AF56:
		addq.b	#2,$25(a0)
		move.l	#CPz_Boss_Mappings_3,4(a0) 
		move.w	#$418,2(a0)
		bsr	loc_2B49A
		move.b	#0,$1A(a0)
		move.b	#5,$1E(a0)
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		add.w	#4,$C(a0)
		sub.w	#$28,8(a0)
		rts
loc_2AF96:	
		subq.b	#1,$1E(a0)
		bpl.s	loc_2AFD8
		move.b	#5,$1E(a0)
		addq.b	#1,$1A(a0)
		cmp.b	#4,$1A(a0)
		bne	loc_2AFD8
		move.b	#0,$1A(a0)
		move.l	$34(a0),a1
		move.b	(a1),d0
		beq	loc_2B476
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		add.w	#4,$C(a0)
		sub.w	#$28,8(a0)
loc_2AFD8:
		bra	loc_2B470
;-------------------------------------------------------------------------------
CPz_Boss_Animate_Data: 
		dc.w	loc_2B012-CPz_Boss_Animate_Data
		dc.w	loc_2B015-CPz_Boss_Animate_Data
		dc.w	loc_2B018-CPz_Boss_Animate_Data
		dc.w	loc_2B01D-CPz_Boss_Animate_Data
		dc.w	loc_2B021-CPz_Boss_Animate_Data
		dc.w	loc_2B028-CPz_Boss_Animate_Data
		dc.w	loc_2B02B-CPz_Boss_Animate_Data
		dc.w	loc_2B02E-CPz_Boss_Animate_Data
		dc.w	loc_2B031-CPz_Boss_Animate_Data
		dc.w	loc_2B034-CPz_Boss_Animate_Data
		dc.w	loc_2B037-CPz_Boss_Animate_Data
		dc.w	loc_2B043-CPz_Boss_Animate_Data
		dc.w	loc_2B04E-CPz_Boss_Animate_Data
		dc.w	loc_2B051-CPz_Boss_Animate_Data
		dc.w	loc_2B054-CPz_Boss_Animate_Data
		dc.w	loc_2B057-CPz_Boss_Animate_Data
		dc.w	loc_2B05A-CPz_Boss_Animate_Data
		dc.w	loc_2B05D-CPz_Boss_Animate_Data
		dc.w	loc_2B060-CPz_Boss_Animate_Data
		dc.w	loc_2B063-CPz_Boss_Animate_Data
		dc.w	loc_2B066-CPz_Boss_Animate_Data
		dc.w	loc_2B069-CPz_Boss_Animate_Data
		dc.w	loc_2B06C-CPz_Boss_Animate_Data
		dc.w	loc_2B06F-CPz_Boss_Animate_Data
		dc.w	loc_2B072-CPz_Boss_Animate_Data
		dc.w	loc_2B075-CPz_Boss_Animate_Data
		dc.w	loc_2B079-CPz_Boss_Animate_Data
loc_2B012:
		dc.b	$F,0,$FF
loc_2B015:
		dc.b	$F,1,$FF
loc_2B018:
		dc.b	5,2,3,2,$FF
loc_2B01D:
		dc.b	5,2,3,$FF
loc_2B021:
		dc.b	2,4,5,6,7,8,$FF
loc_2B028:
		dc.b	3,9,$FF
loc_2B02B:
		dc.b	$F,$A,$FF
loc_2B02E:
		dc.b	$F,$1C,$FF
loc_2B031:
		dc.b	$F,$1E,$FF
loc_2B034:
		dc.b	$F,$B,$FF
loc_2B037:
		dc.b	3,$C,$C,$D,$D,$D,$D,$D,$C,$C,$FD,$9
loc_2B043:
		dc.b	3,$E,$E,$F,$F,$F,$F,$F,$E,$E,$FF
loc_2B04E:
		dc.b	$F,$10,$FF
loc_2B051:
		dc.b	$F,$11,$FF
loc_2B054:
		dc.b	$F,$12,$FF
loc_2B057:
		dc.b	$F,$13,$FF
loc_2B05A:
		dc.b	$F,$14,$FF
loc_2B05D:
		dc.b	$F,$15,$FF
loc_2B060:
		dc.b	$F,$16,$FF
loc_2B063:
		dc.b	$F,$17,$FF
loc_2B066:
		dc.b	$F,$18,$FF
loc_2B069:
		dc.b	$F,$19,$FF
loc_2B06C:
		dc.b	$F,$1A,$FF
loc_2B06F:
		dc.b	$F,$1B,$FF
loc_2B072:
		dc.b	$F,$1C,$FF
loc_2B075:
		dc.b	1,$1D,$1F,$FF
loc_2B079:
		dc.b	$F,$1E,$FF	
;-------------------------------------------------------------------------------
CPz_Boss_Mappings: 
		dc.w	loc_2B0CC-CPz_Boss_Mappings
		dc.w	loc_2B0E6-CPz_Boss_Mappings
		dc.w	loc_2B0F0-CPz_Boss_Mappings
		dc.w	loc_2B0FA-CPz_Boss_Mappings
		dc.w	loc_2B104-CPz_Boss_Mappings
		dc.w	loc_2B10E-CPz_Boss_Mappings
		dc.w	loc_2B118-CPz_Boss_Mappings
		dc.w	loc_2B122-CPz_Boss_Mappings
		dc.w	loc_2B12C-CPz_Boss_Mappings
		dc.w	loc_2B136-CPz_Boss_Mappings
		dc.w	loc_2B140-CPz_Boss_Mappings
		dc.w	loc_2B152-CPz_Boss_Mappings
		dc.w	loc_2B15C-CPz_Boss_Mappings
		dc.w	loc_2B166-CPz_Boss_Mappings
		dc.w	loc_2B170-CPz_Boss_Mappings
		dc.w	loc_2B17A-CPz_Boss_Mappings
		dc.w	loc_2B184-CPz_Boss_Mappings
		dc.w	loc_2B18E-CPz_Boss_Mappings
		dc.w	loc_2B198-CPz_Boss_Mappings
		dc.w	loc_2B1A2-CPz_Boss_Mappings
		dc.w	loc_2B1AC-CPz_Boss_Mappings
		dc.w	loc_2B1BE-CPz_Boss_Mappings
		dc.w	loc_2B1D0-CPz_Boss_Mappings
		dc.w	loc_2B1E2-CPz_Boss_Mappings
		dc.w	loc_2B1F4-CPz_Boss_Mappings
		dc.w	loc_2B20E-CPz_Boss_Mappings
		dc.w	loc_2B228-CPz_Boss_Mappings
		dc.w	loc_2B242-CPz_Boss_Mappings
		dc.w	loc_2B25C-CPz_Boss_Mappings
		dc.w	loc_2B276-CPz_Boss_Mappings
		dc.w	loc_2B280-CPz_Boss_Mappings
		dc.w	loc_2B2A2-CPz_Boss_Mappings
		dc.w	loc_2B2AC-CPz_Boss_Mappings
		dc.w	loc_2B2B6-CPz_Boss_Mappings
		dc.w	loc_2B2C0-CPz_Boss_Mappings
		dc.w	loc_2B2CA-CPz_Boss_Mappings
		dc.w	loc_2B2D4-CPz_Boss_Mappings
		dc.w	loc_2B2DE-CPz_Boss_Mappings
		dc.w	loc_2B2E8-CPz_Boss_Mappings
		dc.w	loc_2B2F2-CPz_Boss_Mappings
loc_2B0CC:
		dc.w	$3
		dc.l	$B80D0000,$FFF8,$C80A0008,$40008
		dc.l	$E0050011,$80010
loc_2B0E6:
		dc.w	$1
		dc.l	$FC000024,$12FFFC
loc_2B0F0:
		dc.w	$1
		dc.l	$FC040025,$12FFF5
loc_2B0FA:
		dc.w	$1
		dc.l	$FC040027,$13FFF6
loc_2B104:
		dc.w	$1
		dc.l	$C4000036,$1BFFFB
loc_2B10E:
		dc.w	$1
		dc.l	$C4000037,$1BFFFB
loc_2B118:
		dc.w	$1
		dc.l	$C4000038,$1CFFFB
loc_2B122:
		dc.w	$1
		dc.l	$C4010039,$1CFFFB
loc_2B12C:
		dc.w	$1
		dc.l	$C401003B,$1DFFFB
loc_2B136:
		dc.w	$1
		dc.l	$FC00003D,$1EFFFC
loc_2B140:
		dc.w	$2
		dc.l	$E0015,$A0000,$8080021,$100018
loc_2B152:
		dc.w	$1
		dc.l	$18080029,$140000
loc_2B15C:
		dc.w	$1
		dc.l	$1808002C,$160000
loc_2B166:
		dc.w	$1
		dc.l	$1808002F,$170008
loc_2B170:
		dc.w	$1
		dc.l	$18040032,$19FFFC
loc_2B17A:
		dc.w	$1
		dc.l	$18040034,$1AFFFC
loc_2B184:
		dc.w	$1
		dc.l	$10080063,$310000
loc_2B18E:
		dc.w	$1
		dc.l	$10080066,$330000
loc_2B198:
		dc.w	$1
		dc.l	$10080069,$340000
loc_2B1A2:
		dc.w	$1
		dc.l	$1008006C,$360000
loc_2B1AC:
		dc.w	$2
		dc.l	$1008006C,$360000,$8080063,$310000
loc_2B1BE:
		dc.w	$2
		dc.l	$1008006C,$360000,$8080066,$330000
loc_2B1D0:
		dc.w	$2
		dc.l	$1008006C,$360000,$8080069,$340000
loc_2B1E2:
		dc.w	$2
		dc.l	$1008006C,$360000,$808006C,$360000
loc_2B1F4:
		dc.w	$3
		dc.l	$1008006C,$360000,$808006C,$360000
		dc.l	$80063,$310000
loc_2B20E:
		dc.w	$3
		dc.l	$1008006C,$360000,$808006C,$360000
		dc.l	$80066,$330000
loc_2B228:
		dc.w	$3
		dc.l	$1008006C,$360000,$808006C,$360000
		dc.l	$80069,$340000
loc_2B242:
		dc.w	$3
		dc.l	$1008006C,$360000,$808006C,$360000
		dc.l	$8006C,$360000
loc_2B25C:
		dc.w	$3
		dc.l	$E0015,$A0000,$8080021,$100018
		dc.l	$8080021,$100030
loc_2B276:
		dc.w	$1
		dc.l	$B003E,$1F0000
loc_2B280:
		dc.w	$4
		dc.l	$E0015,$A0000,$8080021,$100018
		dc.l	$8080021,$100030,$8080021,$100048
loc_2B2A2:
		dc.w	$1
		dc.l	$B083E,$81F0000
loc_2B2AC:
		dc.w	$1
		dc.l	$E0015,$A0000
loc_2B2B6:
		dc.w	$1
		dc.l	$80021,$100000
loc_2B2C0:
		dc.w	$1
		dc.l	$B80D0000,$FFF8
loc_2B2CA:
		dc.w	$1
		dc.l	$C80A0008,$40008
loc_2B2D4:
		dc.w	$1
		dc.l	$E0050011,$80010
loc_2B2DE:
		dc.w	$1
		dc.l	$E00A004A,$25FFF0
loc_2B2E8:
		dc.w	$1
		dc.l	$E80D0053,$29FFF0
loc_2B2F2:
		dc.w	$1
		dc.l	$E80D005B,$2DFFF0	
;-------------------------------------------------------------------------------
CPz_Boss_Animate_Data_1: 
		dc.w	loc_2B306-CPz_Boss_Animate_Data_1
		dc.w	loc_2B309-CPz_Boss_Animate_Data_1
		dc.w	loc_2B30D-CPz_Boss_Animate_Data_1
		dc.w	loc_2B316-CPz_Boss_Animate_Data_1
		dc.w	loc_2B31F-CPz_Boss_Animate_Data_1
loc_2B306:
		dc.b	$F,0,$FF
loc_2B309:
		dc.b	7,1,2,$FF
loc_2B30D:
		dc.b	7,5,5,5,5,5,5,$FD,$1
loc_2B316:
		dc.b	7,3,4,3,4,3,4,$FD,$1
loc_2B31F:
		dc.b	$F,6,6,6,6,6,6,6,6,6,6,$FD,$1	
;-------------------------------------------------------------------------------	
CPz_Boss_Mappings_1: 
		dc.w	loc_2B33A-CPz_Boss_Mappings_1
		dc.w	loc_2B35C-CPz_Boss_Mappings_1
		dc.w	loc_2B37E-CPz_Boss_Mappings_1
		dc.w	loc_2B3A0-CPz_Boss_Mappings_1
		dc.w	loc_2B3C2-CPz_Boss_Mappings_1
		dc.w	loc_2B3E4-CPz_Boss_Mappings_1
		dc.w	loc_2B406-CPz_Boss_Mappings_1
loc_2B33A:
		dc.w	$4
		dc.l	$F8050000,$FFE0,$8050004,$2FFE0
		dc.l	$F80F0008,$4FFF0,$F8070018,$C0010
loc_2B35C:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0030,$18FFF0
		dc.l	$E8050024,$120010,$D8050020,$100002
loc_2B37E:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0038,$1CFFF0
		dc.l	$E8050024,$120010,$D8050020,$100002
loc_2B3A0:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0040,$20FFF0
		dc.l	$E8050024,$120010,$D8050020,$100002
loc_2B3C2:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0048,$24FFF0
		dc.l	$E8050024,$120010,$D8050020,$100002
loc_2B3E4:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0050,$28FFF0
		dc.l	$E8050024,$120010,$D8050020,$100002
loc_2B406:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0058,$2CFFF0
		dc.l	$E8050024,$120010,$D8050020,$100002	
;-------------------------------------------------------------------------------
CPz_Boss_Mappings_2: 
		dc.w	loc_2B42C-CPz_Boss_Mappings_2
		dc.w	loc_2B436-CPz_Boss_Mappings_2
loc_2B42C:
		dc.w	$1
		dc.l	$50000,$1C
loc_2B436:
		dc.w	$1
		dc.l	$50004,$2001C	
;-------------------------------------------------------------------------------	
CPz_Boss_Mappings_3: 
		dc.w	loc_2B448-CPz_Boss_Mappings_3
		dc.w	loc_2B452-CPz_Boss_Mappings_3
		dc.w	loc_2B45C-CPz_Boss_Mappings_3
		dc.w	loc_2B466-CPz_Boss_Mappings_3
loc_2B448:
		dc.w	$1
		dc.l	$F8050000,$FFF8
loc_2B452:
		dc.w	$1
		dc.l	$F8050004,$2FFF8
loc_2B45C:
		dc.w	$1
		dc.l	$F8050008,$4FFF8
loc_2B466:
		dc.w	$1
		dc.l	$F805000C,$6FFF8	
;===============================================================================
; Object 0x5D - Chemical Plant Boss
; [ End ]
;===============================================================================