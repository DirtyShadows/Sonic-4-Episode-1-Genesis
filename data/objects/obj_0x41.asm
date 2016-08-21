;=============================================================================== 
; Object 0x41 - Springs 
; [ Begin ]
;===============================================================================
loc_14950:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_14964(pc,d0),d1
		jsr	loc_14964(pc,d1)
		jmp	MarkObjGone	
loc_14964:
		dc.w	loc_14970-loc_14964
		dc.w	loc_14A48-loc_14964
		dc.w	loc_14B38-loc_14964
		dc.w	loc_14D48-loc_14964
		dc.w	loc_14E32-loc_14964
		dc.w	loc_14F66-loc_14964
loc_14970:
		addq.b	#2,$24(a0)
		move.l	#Springs_Mappings,4(a0) 
		move.w	#$45C,2(a0)
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		move.b	$28(a0),d0
		lsr.w	#3,d0
		and.w	#$E,d0
		move.w	loc_149A6(pc,d0),d0
		jmp	loc_149A6(pc,d0)
loc_149A6:
		dc.w	loc_14A1C-loc_149A6
		dc.w	loc_149B0-loc_149A6
		dc.w	loc_149D0-loc_149A6
		dc.w	loc_149E4-loc_149A6
		dc.w	loc_149FE-loc_149A6
loc_149B0:
		move.b	#4,$24(a0)
		move.b	#2,$1C(a0)
		move.b	#3,$1A(a0)
		move.w	#$470,2(a0)
		move.b	#8,$19(a0)
		bra.s	loc_14A1C
loc_149D0:
		move.b	#6,$24(a0)
		move.b	#6,$1A(a0)
		bset	#1,$22(a0)
		bra.s	loc_14A1C
loc_149E4:
		move.b	#8,$24(a0)
		move.b	#4,$1C(a0)
		move.b	#7,$1A(a0)
		move.w	#$43C,2(a0)
		bra.s	loc_14A1C
loc_149FE:
		move.b	#$A,$24(a0)
		move.b	#4,$1C(a0)
		move.b	#$A,$1A(a0)
		move.w	#$43C,2(a0)
		bset	#1,$22(a0)
loc_14A1C:
		move.b	$28(a0),d0
		and.w	#2,d0
		move.w	loc_14A44(pc,d0),$30(a0)
		btst	#1,d0
		beq.s	loc_14A3E
		bset	#5,2(a0)
		move.l	#Springs_Mappings_01,4(a0) 
loc_14A3E:
		bsr	ModifySpriteAttr_2P	
		rts	
loc_14A44:
		dc.w	$F000,$F600
loc_14A48:
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#$10,d3
		move.w	8(a0),d4
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_157D2
		btst	#3,$22(a0)
		beq.s	loc_14A70
		bsr.s	loc_14A92
loc_14A70:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_157D2
		btst	#4,$22(a0)
		beq.s	loc_14A88
		bsr.s	loc_14A92
loc_14A88:
		lea	(Springs_Animate_Data),a1 
		bra	animateSprite	
loc_14A92:
		move.w	#$100,$1C(a0)
		addq.w	#8,$C(a1)
		move.w	$30(a0),$12(a1)
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#$10,$1C(a1)
		move.b	#2,$24(a1)
		move.b	$28(a0),d0
		bpl.s	loc_14AC6
		move.w	#0,$10(a1)
loc_14AC6:
		btst	#0,d0
		beq.s	loc_14B06
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#0,$2C(a1)
		move.b	#4,$2D(a1)
		btst	#1,d0
		bne.s	loc_14AF6
		move.b	#1,$2C(a1)
loc_14AF6:
		btst	#0,$22(a1)
		beq.s	loc_14B06
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_14B06:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_14B1C
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_14B1C:
		cmp.b	#8,d0
		bne.s	loc_14B2E
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_14B2E:
		move.w	#$CC,d0
		jmp	Play_Sfx	
loc_14B38:
		move.w	#$13,d1
		move.w	#$E,d2
		move.w	#$F,d3
		move.w	8(a0),d4
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_157D2
		btst	#5,$22(a0)
		beq.s	loc_14B78
		move.b	$22(a0),d1
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcs.s	loc_14B70
		eor.b	#1,d1
loc_14B70:
		and.b	#1,d1
		bne.s	loc_14B78
		bsr.s	loc_14BB6
loc_14B78:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_157D2
		btst	#6,$22(a0)
		beq.s	loc_14BA8
		move.b	$22(a0),d1
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcs.s	loc_14BA0
		eor.b	#1,d1
loc_14BA0:
		and.b	#1,d1
		bne.s	loc_14BA8
		bsr.s	loc_14BB6
loc_14BA8:
		bsr	loc_14C8E
		lea	(Springs_Animate_Data),a1 
		bra	animateSprite	
loc_14BB6:
		move.w	#$300,$1C(a0)
		move.w	$30(a0),$10(a1)
		addq.w	#8,8(a1)
		bset	#0,$22(a1)
		btst	#0,$22(a0)
		bne.s	loc_14BE4
		bclr	#0,$22(a1)
		sub.w	#$10,8(a1)
		neg.w	$10(a1)
loc_14BE4:
		move.w	#$F,$2E(a1)
		move.w	$10(a1),$14(a1)
		btst	#2,$22(a1)
		bne.s	loc_14BFE
		move.b	#0,$1C(a1)
loc_14BFE:
		move.b	$28(a0),d0
		bpl.s	loc_14C0A
		move.w	#0,$12(a1)
loc_14C0A:
		btst	#0,d0
		beq.s	loc_14C4A
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#1,$2C(a1)
		move.b	#8,$2D(a1)
		btst	#1,d0
		bne.s	loc_14C3A
		move.b	#3,$2C(a1)
loc_14C3A:
		btst	#0,$22(a1)
		beq.s	loc_14C4A
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_14C4A:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_14C60
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_14C60:
		cmp.b	#8,d0
		bne.s	loc_14C72
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_14C72:
		bclr	#5,$22(a0)
		bclr	#6,$22(a0)
		bclr	#5,$22(a1)
		move.w	#$CC,d0
		jmp	Play_Sfx	
loc_14C8E:
		cmp.b	#3,$1C(a0)
		beq	loc_14D46
		move.w	8(a0),d0
		move.w	d0,d1
		add.w	#$28,d1
		btst	#0,$22(a0)
		beq.s	loc_14CB0
		move.w	d0,d1
		sub.w	#$28,d0
loc_14CB0:
		move.w	$C(a0),d2
		move.w	d2,d3
		sub.w	#$18,d2
		add.w	#$18,d3
		lea	($FFFFB000).w,a1
		btst	#1,$22(a1)
		bne.s	loc_14D04
		move.w	$14(a1),d4
		btst	#0,$22(a0)
		beq.s	loc_14CD8
		neg.w	d4
loc_14CD8:
		tst.w	d4
		bmi.s	loc_14D04
		move.w	8(a1),d4
		cmp.w	d0,d4
		bcs	loc_14D04
		cmp.w	d1,d4
		bcc	loc_14D04
		move.w	$C(a1),d4
		cmp.w	d2,d4
		bcs	loc_14D04
		cmp.w	d3,d4
		bcc	loc_14D04
		move.w	d0,-(sp)
		bsr	loc_14BB6
		move.w	(sp)+,d0
loc_14D04:
		lea	($FFFFB040).w,a1
		btst	#1,$22(a1)
		bne.s	loc_14D46
		move.w	$14(a1),d4
		btst	#0,$22(a0)
		beq.s	loc_14D1E
		neg.w	d4
loc_14D1E:
		tst.w	d4
		bmi.s	loc_14D46
		move.w	8(a1),d4
		cmp.w	d0,d4
		bcs	loc_14D46
		cmp.w	d1,d4
		bcc	loc_14D46
		move.w	$C(a1),d4
		cmp.w	d2,d4
		bcs	loc_14D46
		cmp.w	d3,d4
		bcc	loc_14D46
		bsr	loc_14BB6
loc_14D46:
		rts
loc_14D48:
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#$10,d3
		move.w	8(a0),d4
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_157D2
		cmp.w	#$FFFE,d4
		bne.s	loc_14D6E
		bsr.s	loc_14D8E
loc_14D6E:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_157D2
		cmp.w	#$FFFE,d4
		bne.s	loc_14D84
		bsr.s	loc_14D8E
loc_14D84:
		lea	(Springs_Animate_Data),a1 
		bra	animateSprite	
loc_14D8E:
		move.w	#$100,$1C(a0)
		subq.w	#8,$C(a1)
		move.w	$30(a0),$12(a1)
		neg.w	$12(a1)
		move.b	$28(a0),d0
		bpl.s	loc_14DAE
		move.w	#0,$10(a1)
loc_14DAE:
		btst	#0,d0
		beq.s	loc_14DEE
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#0,$2C(a1)
		move.b	#4,$2D(a1)
		btst	#1,d0
		bne.s	loc_14DDE
		move.b	#1,$2C(a1)
loc_14DDE:
		btst	#0,$22(a1)
		beq.s	loc_14DEE
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_14DEE:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_14E04
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_14E04:
		cmp.b	#8,d0
		bne.s	loc_14E16
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_14E16:
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#2,$24(a1)
		move.w	#$CC,d0
		jmp	Play_Sfx	
loc_14E32:
		move.w	#$1B,d1
		move.w	#$10,d2
		move.w	8(a0),d4
		lea	loc_15072(pc),a2
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_1582A
		btst	#3,$22(a0)
		beq.s	loc_14E5A
		bsr.s	loc_14E7C
loc_14E5A:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_1582A
		btst	#4,$22(a0)
		beq.s	loc_14E72
		bsr.s	loc_14E7C
loc_14E72:
		lea	(Springs_Animate_Data),a1 
		bra	animateSprite	
loc_14E7C:
		btst	#0,$22(a0)
		bne.s	loc_14E92
		move.w	8(a0),d0
		subq.w	#4,d0
		cmp.w	8(a1),d0
		bcs.s	loc_14EA0
		rts
loc_14E92:
		move.w	8(a0),d0
		addq.w	#4,d0
		cmp.w	8(a1),d0
		bcc.s	loc_14EA0
		rts
loc_14EA0:
		move.w	#$500,$1C(a0)
		move.w	$30(a0),$12(a1)
		move.w	$30(a0),$10(a1)
		addq.w	#6,$C(a1)
		addq.w	#6,8(a1)
		bset	#0,$22(a1)
		btst	#0,$22(a0)
		bne.s	loc_14ED8
		bclr	#0,$22(a1)
		sub.w	#$C,8(a1)
		neg.w	$10(a1)
loc_14ED8:
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#$10,$1C(a1)
		move.b	#2,$24(a1)
		move.b	$28(a0),d0
		btst	#0,d0
		beq.s	loc_14F34
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#1,$2C(a1)
		move.b	#8,$2D(a1)
		btst	#1,d0
		bne.s	loc_14F24
		move.b	#3,$2C(a1)
loc_14F24:
		btst	#0,$22(a1)
		beq.s	loc_14F34
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_14F34:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_14F4A
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_14F4A:
		cmp.b	#8,d0
		bne.s	loc_14F5C
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_14F5C:
		move.w	#$CC,d0
		jmp	Play_Sfx	
loc_14F66:
		move.w	#$1B,d1
		move.w	#$10,d2
		move.w	8(a0),d4
		lea	loc_1508E(pc),a2
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_1582A
		cmp.w	#$FFFE,d4
		bne.s	loc_14F8C
		bsr.s	loc_14FAE
loc_14F8C:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_1582A
		cmp.w	#$FFFE,d4
		bne.s	loc_14FA2
		bsr.s	loc_14FAE
loc_14FA2:
		lea	(Springs_Animate_Data),a1 
		bra	animateSprite	
		rts
loc_14FAE:
		move.w	#$500,$1C(a0)
		move.w	$30(a0),$12(a1)
		neg.w	$12(a1)
		move.w	$30(a0),$10(a1)
		subq.w	#6,$C(a1)
		addq.w	#6,8(a1)
		bset	#0,$22(a1)
		btst	#0,$22(a0)
		bne.s	loc_14FEA
		bclr	#0,$22(a1)
		sub.w	#$C,8(a1)
		neg.w	$10(a1)
loc_14FEA:
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#2,$24(a1)
		move.b	$28(a0),d0
		btst	#0,d0
		beq.s	loc_15040
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#1,$2C(a1)
		move.b	#8,$2D(a1)
		btst	#1,d0
		bne.s	loc_15030
		move.b	#3,$2C(a1)
loc_15030:
		btst	#0,$22(a1)
		beq.s	loc_15040
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_15040:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_15056
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_15056:
		cmp.b	#8,d0
		bne.s	loc_15068
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_15068:
		move.w	#$CC,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------
loc_15072:
		dc.b	$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$E,$C,$A,$8
		dc.b	6,4,2,0,$FE,$FC,$FC,$FC,$FC,$FC,$FC,$FC 
;-------------------------------------------------------------------------------	
loc_1508E:
		dc.b	$F4,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F2,$F4,$F6,$F8
		dc.b	$FA,$FC,$FE,0,2,4,4,4,4,4,4,$4	
;-------------------------------------------------------------------------------	
Springs_Animate_Data: 
		dc.w	loc_150B6-Springs_Animate_Data
		dc.w	loc_150B9-Springs_Animate_Data
		dc.w	loc_150C5-Springs_Animate_Data
		dc.w	loc_150C8-Springs_Animate_Data
		dc.w	loc_150D4-Springs_Animate_Data
		dc.w	loc_150D7-Springs_Animate_Data
loc_150B6:
		dc.b	$F,0,$FF
loc_150B9:
		dc.b	0,1,0,0,2,2,2,2,2,2,$FD,$0
loc_150C5:
		dc.b	$F,3,$FF
loc_150C8:
		dc.b	0,4,3,3,5,5,5,5,5,5,$FD,$2
loc_150D4:
		dc.b	$F,7,$FF
loc_150D7:
		dc.b	0,8,7,7,9,9,9,9,9,9,$FD,4,$0	
;-------------------------------------------------------------------------------
Springs_Mappings: 
		dc.w	loc_15110-Springs_Mappings
		dc.w	loc_15122-Springs_Mappings
		dc.w	loc_1512C-Springs_Mappings
		dc.w	loc_1513E-Springs_Mappings
		dc.w	loc_15150-Springs_Mappings
		dc.w	loc_1515A-Springs_Mappings
		dc.w	loc_1516C-Springs_Mappings
		dc.w	loc_1517E-Springs_Mappings
		dc.w	loc_151A0-Springs_Mappings
		dc.w	loc_151BA-Springs_Mappings
		dc.w	loc_151DC-Springs_Mappings
Springs_Mappings_01: 
		dc.w	loc_15110-Springs_Mappings_01
		dc.w	loc_15122-Springs_Mappings_01
		dc.w	loc_1512C-Springs_Mappings_01
		dc.w	loc_1513E-Springs_Mappings_01
		dc.w	loc_15150-Springs_Mappings_01
		dc.w	loc_1515A-Springs_Mappings_01
		dc.w	loc_1516C-Springs_Mappings_01
		dc.w	loc_151FE-Springs_Mappings_01
		dc.w	loc_15220-Springs_Mappings_01
		dc.w	loc_1523A-Springs_Mappings_01
		dc.w	loc_1525C-Springs_Mappings_01
loc_15110:
		dc.w	$2
		dc.l	$F00D0000,$FFF0,$50008,$4FFF8
loc_15122:
		dc.w	$1
		dc.l	$F80D0000,$FFF0
loc_1512C:
		dc.w	$2
		dc.l	$E00D0000,$FFF0,$F007000C,$6FFF8
loc_1513E:
		dc.w	$2
		dc.l	$F0030000,0,$F8010004,$2FFF8
loc_15150:
		dc.w	$1
		dc.l	$F0030000,$FFF8
loc_1515A:
		dc.w	$2
		dc.l	$F0030000,$10,$F8090006,$3FFF8
loc_1516C:
		dc.w	$2
		dc.l	$D1000,$1000FFF0,$F0051008,$1004FFF8
loc_1517E:
		dc.w	$4
		dc.l	$F00D0000,$FFF0,$50008,$40000
		dc.l	$FB05000C,$6FFF6,$5201C,$200EFFF0
loc_151A0:
		dc.w	$3
		dc.l	$F60D0000,$FFEA,$6050008,$4FFFA
		dc.l	$5201C,$200EFFF0
loc_151BA:
		dc.w	$4
		dc.l	$E60D0000,$FFFB,$F6050008,$4000B
		dc.l	$F30B0010,$8FFF6,$5201C,$200EFFF0
loc_151DC:
		dc.w	$4
		dc.l	$D1000,$1000FFF0,$F0051008,$10040000
		dc.l	$F505100C,$1006FFF6,$F005301C,$300EFFF0
loc_151FE:
		dc.w	$4
		dc.l	$F00D0000,$FFF0,$50008,$40000
		dc.l	$FB05000C,$6FFF6,$5001C,$EFFF0
loc_15220:
		dc.w	$3
		dc.l	$F60D0000,$FFEA,$6050008,$4FFFA
		dc.l	$5001C,$EFFF0
loc_1523A:
		dc.w	$4
		dc.l	$E60D0000,$FFFB,$F6050008,$4000B
		dc.l	$F30B0010,$8FFF6,$5001C,$EFFF0
loc_1525C:
		dc.w	$4
		dc.l	$D1000,$1000FFF0,$F0051008,$10040000
		dc.l	$F505100C,$1006FFF6,$F005101C,$100EFFF0	
;=============================================================================== 
; Object 0x41 - Springs 
; [ End ]
;===============================================================================	