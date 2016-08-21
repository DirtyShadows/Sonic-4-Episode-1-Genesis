;===============================================================================
; Object 0x89 - Neo Green Hill Boss
; [ Begin ]
;===============================================================================	
loc_2C9B4:
		moveq	#0,d0
		move.b	$A(a0),d0
		move.w	loc_2C9C2(pc,d0),d1
		jmp	loc_2C9C2(pc,d1)
loc_2C9C2:
		dc.w	loc_2C9C8-loc_2C9C2
		dc.w	loc_2CB44-loc_2C9C2
		dc.w	loc_2CEB6-loc_2C9C2
loc_2C9C8:
		move.w	($FFFFB008).w,d0
		cmp.w	#$2A60,d0
		blt	loc_2CB18
		cmp.w	#$2B60,d0
		bgt	loc_2CB18
		cmp.b	#$81,($FFFFB06A).w
		beq.s	loc_2C9F8
		move.w	($FFFFB048).w,d0
		cmp.w	#$2A60,d0
		blt	loc_2CB18
		cmp.w	#$2B60,d0
		bgt	loc_2CB18
loc_2C9F8:
		move.b	#1,($FFFFEEBD).w
		move.w	#$3E0,2(a0)
		move.l	#NGHz_Boss_Ship_Mappings,4(a0) 
		or.b	#4,1(a0)
		move.b	#$20,$E(a0)
		move.b	#2,$18(a0)
		move.b	#2,$A(a0)
		move.w	#$2AE0,8(a0)
		move.w	#$388,$C(a0)
		move.w	#$2AE0,($FFFFF750).w
		move.w	#$388,($FFFFF754).w
		bset	#6,1(a0)
		move.b	#3,$F(a0)
		move.b	#$F,$20(a0)
		move.b	#8,$32(a0)
		move.b	#8,$B(a0)
		move.w	#$FC80,$2E(a0)
		clr.b	($FFFFF73F).w
		move.w	#$2AE0,$10(a0)
		move.w	#$488,$12(a0)	; Battle Position
		move.b	#0,$15(a0)
		move.w	#$2AE0,$16(a0)
		move.w	#$488,$18(a0)	; Battle Position
		move.b	#9,$1B(a0)
		move.w	#$2AE0,$1C(a0)
		move.w	#$488,$1E(a0)	; Battle Position
		move.b	#6,$21(a0)
		move.w	#$100,($FFFFF75A).w
		bsr	loc_2D468
		bne	loc_2CB18
		move.b	#$89,(a1)	; Call Pillar Object
		move.l	#NGHz_Boss_Arrows_Launcher_Mappings,4(a1) 
		or.b	#4,1(a1)
		move.w	#$3E0,2(a1)
		move.b	#$10,$19(a1)
		move.b	#4,$18(a1)
		move.w	#$2A50,8(a1)
		move.w	#$510,$C(a1)
		addq.b	#4,$A(a1)
		move.l	a0,$2A(a1)
		move.b	#0,$1A(a1)
		move.b	#2,$18(a1)
		move.b	#$20,$16(a1)
		move.l	a1,a2
		bsr	loc_2D474
		bne.s	loc_2CB18
		moveq	#0,d0
		move.w	#$F,d1
loc_2CB00:	
		move.l	0(a2,d0),0(a1,d0)
		addq.w	#4,d0
		dbra	d1,loc_2CB00
		bset	#0,1(a1)
		move.w	#$2B70,8(a1)
loc_2CB18:
		bsr	loc_2CB1E
		rts
loc_2CB1E:
		lea	($FFFFF740).w,a2
		move.b	#4,(a2)+
		move.b	#0,(a2)+
		move.b	#0,(a2)+
		move.b	#0,(a2)+
		move.b	#2,(a2)+
		move.b	#0,(a2)+
		move.b	#1,(a2)+
		move.b	#0,(a2)+
		rts
loc_2CB44:
		moveq	#0,d0
		move.b	$26(a0),d0
		move.w	loc_2CB52(pc,d0),d1
		jmp	loc_2CB52(pc,d1)
loc_2CB52:
		dc.w	loc_2CB60-loc_2CB52
		dc.w	loc_2CB9E-loc_2CB52
		dc.w	loc_2CBDC-loc_2CB52
		dc.w	loc_2CC2A-loc_2CB52
		dc.w	loc_2CD9A-loc_2CB52
		dc.w	loc_2CDFC-loc_2CB52
		dc.w	loc_2CE64-loc_2CB52
loc_2CB60:
		bsr	loc_29B7E
		bsr	loc_2CC80
		bsr	loc_2CD32
		cmp.w	#$430,($FFFFF754).w	; Robotnick Start Position
		blt.s	loc_2CB90
		move.w	#$430,($FFFFF754).w	; Robotnick Battle Position
		add.b	#2,$26(a0)
		move.w	#0,($FFFFF75A).w
		move.w	#$FF38,($FFFFF758).w
		st	$38(a0)
loc_2CB90:
		lea	(NGHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bra	loc_2D45C
loc_2CB9E:
		bsr	loc_29B7E
		bsr	loc_2CC80
		bsr	loc_2CD32
		tst.b	$38(a0)
		bne.s	loc_2CBBA
		cmp.w	#$2B10,($FFFFF750).w
		blt.s	loc_2CBCE
		bra.s	loc_2CBC2
loc_2CBBA:
		cmp.w	#$2AB0,($FFFFF750).w
		bgt.s	loc_2CBCE
loc_2CBC2:
		add.b	#2,$26(a0)
		move.w	#0,($FFFFF758).w
loc_2CBCE:
		lea	(NGHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bra	loc_2D45C
loc_2CBDC:
		bsr	loc_29B7E
		bsr	loc_2CC80
		bsr	loc_2CD32
		cmp.b	#$C0,$1A(a0)
		bne.s	loc_2CC1C
		lea	($FFFFF740).w,a1
		and.b	#$F0,4(a1)
		or.b	#3,4(a1)
		addq.b	#2,$26(a0)
		btst	#0,1(a0)
		sne	$38(a0)
		move.w	#$1E,($FFFFF75C).w	; Time Before Position Change
		move.b	#$BD,d0
		bsr	loc_2D46E
loc_2CC1C:
		lea	(NGHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bra	loc_2D45C
loc_2CC2A:
		cmp.w	#$14,($FFFFF75C).w
		bne.s	loc_2CC3E
		bset	#0,$3E(a0)
		move.b	#1,($FFFFF73F).w
loc_2CC3E:
		sub.w	#1,($FFFFF75C).w
		bpl.s	loc_2CC66
		clr.b	($FFFFF73F).w
		move.b	#2,$26(a0)
		bchg	#0,1(a0)	; Boss Position Change
		beq.s	loc_2CC60
		move.w	#$FF38,($FFFFF758).w
		bra.s	loc_2CC66
loc_2CC60:
		move.w	#$C8,($FFFFF758).w
loc_2CC66:
		bsr	loc_29B7E
		bsr	loc_2CC80
		bsr	loc_2CD32	
		lea	(NGHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bra	loc_2D45C
loc_2CC80:
		bsr	loc_2CCB2
		cmp.b	#4,($FFFFB024).w
		beq.s	loc_2CC94
		cmp.b	#4,($FFFFB064).w
		bne.s	loc_2CC9E
loc_2CC94:
		lea	($FFFFF740).w,a1
		move.b	#$31,3(a1)
loc_2CC9E:
		cmp.b	#$3F,$14(a0)
		bne.s	loc_2CCB0
		lea	($FFFFF740).w,a1
		move.b	#$C0,3(a1)
loc_2CCB0:
		rts
loc_2CCB2:
		move.b	$1A(a0),d0
		jsr	CalcSine	
		asr.w	#6,d0
		add.w	($FFFFF754).w,d0
		move.w	d0,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		addq.b	#2,$1A(a0)
		cmp.b	#8,$26(a0)
		bcc.s	loc_2CD16
		tst.b	$32(a0)
		beq.s	loc_2CD18
		tst.b	$20(a0)
		bne.s	loc_2CD16
		tst.b	$14(a0)
		bne.s	loc_2CCFA
		move.b	#$40,$14(a0)
		move.w	#$AC,d0
		jsr	Play_Sfx	
loc_2CCFA:
		lea	($FFFFFB22).w,a1
		moveq	#0,d0
		tst.w	(a1)
		bne.s	loc_2CD08
		move.w	#$EEE,d0	; Boss Hit
loc_2CD08:
		move.w	d0,(a1)
		subq.b	#1,$14(a0)
		bne.s	loc_2CD16
		move.b	#$F,$20(a0)
loc_2CD16:
		rts
loc_2CD18:
		moveq	#$64,d0
		bsr	loc_2D48C
		move.w	#$B3,($FFFFF75C).w
		move.b	#8,$26(a0)
		moveq	#$40,d0	; Load Egg Prison Art
		bsr	loc_2D486
		rts
loc_2CD32:
		move.w	8(a0),d0
		move.w	$C(a0),d1
		move.w	d0,$10(a0)
		move.w	d1,$12(a0)
		move.w	d0,$1C(a0)
		move.w	d1,$1E(a0)
		tst.b	$2C(a0)
		bne.s	loc_2CD5E
		move.w	d0,$16(a0)
		move.w	d1,$18(a0)
		move.w	d1,$3A(a0)
		rts
loc_2CD5E:
		cmp.w	#$78,($FFFFF75C).w
		bgt.s	loc_2CD98
		sub.w	#1,$16(a0)
		move.l	$3A(a0),d0
		move.w	$2E(a0),d1
		add.w	#$38,$2E(a0)
		ext.l	d1
		asl.l	#8,d1
		add.l	d1,d0
		move.l	d0,$3A(a0)
		move.w	$3A(a0),$18(a0)
		cmp.w	#$540,$18(a0)
		blt.s	loc_2CD98
		move.w	#0,$2E(a0)
loc_2CD98:
		rts
loc_2CD9A:
		st	$2C(a0)
		subq.w	#1,($FFFFF75C).w
		bmi.s	loc_2CDB0
		bsr	Boss_Defeated	
		move.b	#5,$15(a0)
		bra.s	loc_2CDDE
loc_2CDB0:
		move.b	#3,$F(a0)
		lea	($FFFFF740).w,a2
		move.b	#1,4(a2)
		move.b	#0,5(a2)
		bset	#0,1(a0)
		clr.w	($FFFFF758).w
		clr.w	($FFFFF75A).w
		addq.b	#2,$26(a0)
		move.w	#$FFEE,($FFFFF75C).w
loc_2CDDE:
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		lea	(NGHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2CD32
		bra	loc_2D45C
loc_2CDFC:
		addq.w	#1,($FFFFF75C).w
		beq.s	loc_2CE0C
		bpl.s	loc_2CE12
		add.w	#$18,($FFFFF75A).w
		bra.s	loc_2CE3E
loc_2CE0C:
		clr.w	($FFFFF75A).w
		bra.s	loc_2CE3E
loc_2CE12:
		cmp.w	#$18,($FFFFF75C).w
		bcs.s	loc_2CE2A
		beq.s	loc_2CE32
		cmp.w	#$20,($FFFFF75C).w
		bcs.s	loc_2CE3E
		addq.b	#2,$26(a0)
		bra.s	loc_2CE3E
loc_2CE2A:
		sub.w	#8,($FFFFF75A).w
		bra.s	loc_2CE3E
loc_2CE32:
		clr.w	($FFFFF75A).w
		bsr	loc_2D492
		bsr	loc_2D498
loc_2CE3E:
		bsr	loc_29B7E
		bsr	loc_2CCB2
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		lea	(NGHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2CD32
		bra	loc_2D45C
loc_2CE64:
		move.w	#$400,($FFFFF758).w
		move.w	#$FFC0,($FFFFF75A).w
		cmp.w	#$2BE0,($FFFFEECA).w
		bcc.s	loc_2CE7E
		addq.w	#2,($FFFFEECA).w
		bra.s	loc_2CE84
loc_2CE7E:
		tst.b	1(a0)
		bpl.s	loc_2CEAA
loc_2CE84:
		bsr	loc_29B7E
		bsr	loc_2CCB2
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		lea	(NGHz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bsr	loc_2CD32
		bra	loc_2D45C
loc_2CEAA:
		move.w	#$2BE0,($FFFFEECA).w
		jmp	deleteObject	
loc_2CEB6:
		moveq	#0,d0
		move.l	$2A(a0),a1
		cmp.b	#8,$26(a1)
		blt.s	loc_2CECA
		move.b	#4,$25(a0)
loc_2CECA:
		move.b	$25(a0),d0
		move.w	loc_2CED6(pc,d0),d1
		jmp	loc_2CED6(pc,d1)
loc_2CED6:
		dc.w	loc_2CEE0-loc_2CED6
		dc.w	loc_2CF12-loc_2CED6
		dc.w	loc_2D058-loc_2CED6
		dc.w	loc_2D0AC-loc_2CED6
		dc.w	loc_2D07A-loc_2CED6
loc_2CEE0:
		bsr	loc_2D088
		move.b	($FFFFFE0F).w,d0
		and.b	#$1F,d0
		bne.s	loc_2CEF6
		move.w	#$E1,d0
		bsr	loc_2D46E
loc_2CEF6:
		sub.w	#1,$C(a0)
		cmp.w	#$488,$C(a0)
		bgt.s	loc_2CF0E
		addq.b	#2,$25(a0)
		move.b	#0,($FFFFEEBD).w
loc_2CF0E:
		bra	loc_2D45C
loc_2CF12:
		bsr	loc_2D088
		move.l	$2A(a0),a3
		btst	#0,$3E(a3)
		beq.s	loc_2CF48
		tst.b	$38(a3)
		beq.s	loc_2CF32
		btst	#0,1(a0)
		beq.s	loc_2CF48
		bra.s	loc_2CF3A
loc_2CF32:
		btst	#0,1(a0)
		bne.s	loc_2CF48
loc_2CF3A:
		bclr	#0,$3E(a3)
		bsr	loc_2CFC2
		st	$38(a0)
loc_2CF48:
		bsr	loc_2CF50
		bra	loc_2D45C
loc_2CF50:
		tst.b	$38(a0)
		beq.s	loc_2CFBC
		tst.w	$30(a0)
		bgt.s	loc_2CF62
		move.w	#$1F,$30(a0)
loc_2CF62:
		sub.w	#1,$30(a0)
		bgt.s	loc_2CF90
		sf	$38(a0)
		move.w	#0,$30(a0)
		tst.b	$38(a3)
		bne.s	loc_2CF82
		move.w	#$2A50,8(a0)
		bra.s	loc_2CF88
loc_2CF82:
		move.w	#$2B70,8(a0)
loc_2CF88:
		move.w	#$488,$C(a0)
		bra.s	loc_2CFBC
loc_2CF90:
		move.w	#$2A50,d1
		tst.b	$38(a3)
		beq.s	loc_2CF9E
		move.w	#$2B70,d1
loc_2CF9E:
		move.b	($FFFFFE0F).w,d0
		and.w	#1,d0
		add.w	d0,d0
		add.w	loc_2CFBE(pc,d0),d1
		move.w	d1,8(a0)
		move.w	#$488,d1
		add.w	loc_2CFBE(pc,d0),d1
		move.w	d1,$C(a0)
loc_2CFBC:
		rts
loc_2CFBE:
		dc.w	1,$FFFF
loc_2CFC2:
		bsr	loc_2D468
		bne	loc_2D04E
		move.b	#$89,0(a1)
		move.b	#4,$A(a1)
		move.b	#8,$25(a1)
		move.l	#NGHz_Boss_Arrows_Launcher_Mappings,4(a1) 
		move.w	#$3E0,2(a1)
		or.b	#4,1(a1)
		moveq	#0,d6
		move.b	#2,$1A(a1)
		move.w	#$2A6A,8(a1)
		tst.b	$38(a3)
		beq.s	loc_2D012
		st	d6
		move.w	#$2B56,8(a1)
		bset	#0,1(a1)
loc_2D012:
		move.w	#$28,$30(a1)
		bsr	loc_2D480
		and.w	#3,d0
		add.w	d0,d0
		move.w	arrows_Target(pc,d0),$C(a1) 
		move.l	a1,a2
		bsr	loc_2D468
		bne.s	loc_2D04E
		move.b	#$89,0(a1)
		move.b	#4,$A(a1)
		move.b	#6,$25(a1)
		move.l	a2,$34(a1)
		move.b	d6,$28(a1)
		move.l	a3,$38(a1)
loc_2D04E:
		rts
;-------------------------------------------------------------------------------	
Arrows_Target: 
		dc.w	$458,$478,$498,$4B8
;-------------------------------------------------------------------------------	
loc_2D058:
		move.b	#1,($FFFFEEBD).w
		add.w	#1,$C(a0)
		cmp.w	#$510,$C(a0)
		blt.s	loc_2D076
		move.b	#0,($FFFFEEBD).w
		bra	loc_2D462
loc_2D076:
		bra	loc_2D45C
loc_2D07A:
		sub.w	#1,$30(a0)
		beq	loc_2D462
		bra	loc_2D45C
loc_2D088:
		move.w	#$23,d1
		move.w	#$44,d2
		move.w	#$45,d3
		move.w	8(a0),d4
		move.w	$C(a0),-(sp)
		add.w	#4,$C(a0)
		bsr	loc_2D4A4
		move.w	(sp)+,$C(a0)
		rts
loc_2D0AC:
		moveq	#0,d0
		move.l	$38(a0),a1
		cmp.b	#8,$26(a1)
		blt.s	loc_2D0C0
		move.b	#6,$2A(a0)
loc_2D0C0:
		move.b	$2A(a0),d0
		move.w	loc_2D0CC(pc,d0),d1
		jmp	loc_2D0CC(pc,d1)
loc_2D0CC:
		dc.w	loc_2D0D6-loc_2D0CC
		dc.w	loc_2D144-loc_2D0CC
		dc.w	loc_2D194-loc_2D0CC
		dc.w	loc_2D1BA-loc_2D0CC
		dc.w	loc_2D1D6-loc_2D0CC
loc_2D0D6:
		move.l	#NGHz_Boss_Arrows_Launcher_Mappings,4(a0) 
		move.w	#$3E0,2(a0)
		or.b	#4,1(a0)
		move.b	#$90,$E(a0)
		move.b	#4,$18(a0)
		addq.b	#2,$2A(a0)
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.w	#4,$12(a0)
		move.b	#4,$1A(a0)
		add.w	#9,$C(a0)
		tst.b	$28(a0)
		beq.s	loc_2D136
		bset	#0,$22(a0)
		bset	#0,1(a0)
		move.w	#$FFFD,$10(a0)
		bra.s	loc_2D13C
loc_2D136:
		move.w	#3,$10(a0)
loc_2D13C:
		move.b	#$B0,$20(a0)
		rts
loc_2D144:
		btst	#7,$22(a0)
		beq.s	loc_2D152
		move.b	#8,$2A(a0)
loc_2D152:
		move.w	8(a0),d0
		add.w	$10(a0),d0
		tst.w	$10(a0)
		bpl.s	loc_2D16C
		cmp.w	#$2A77,d0
		bgt.s	loc_2D18C
		move.w	#$2A77,d0
		bra.s	loc_2D176
loc_2D16C:
		cmp.w	#$2B49,d0
		blt.s	loc_2D18C
		move.w	#$2B49,d0
loc_2D176:
		add.b	#2,$2A(a0)
		move.w	d0,8(a0)
		move.b	#$DD,d0
		bsr	loc_2D46E
		bra	loc_2D45C
loc_2D18C:
		move.w	d0,8(a0)
		bra	loc_2D45C
loc_2D194:
		move.b	#0,$20(a0)
		btst	#7,$22(a0)
		beq.s	loc_2D1A8
		add.b	#2,$2A(a0)
loc_2D1A8:
		bsr	loc_2D1DA
		lea	(Pillars_Animate_Data),a1 
		bsr	loc_2D47A
		bra	loc_2D45C
loc_2D1BA:
		bsr	loc_2D212
		move.w	$C(a0),d0
		add.w	$12(a0),d0
		cmp.w	#$4F0,d0
		bgt	loc_2D462
		move.w	d0,$C(a0)
		bra	loc_2D45C
loc_2D1D6:
		bra	loc_2D462
loc_2D1DA:
		tst.w	$30(a0)
		bne.s	loc_2D202
		move.w	#$1B,d1
		move.w	#1,d2
		move.w	#2,d3
		move.w	8(a0),d4
		bsr	loc_2D49E
		btst	#3,$22(a0)
		beq.s	loc_2D210
		move.w	#$1F,$30(a0)
loc_2D202:
		sub.w	#1,$30(a0)
		bne.s	loc_2D210
		move.b	#6,$2A(a0)
loc_2D210:
		rts
loc_2D212:
		bclr	#3,$22(a0)
		beq.s	loc_2D220
		lea	($FFFFB000).w,a1
		bsr.s	loc_2D22C
loc_2D220:
		bclr	#4,$22(a0)
		beq.s	loc_2D238
		lea	($FFFFB040).w,a1
loc_2D22C:
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
loc_2D238:
		rts	
;-------------------------------------------------------------------------------
Pillars_Animate_Data: 
		dc.w	loc_2D23E-Pillars_Animate_Data
		dc.w	loc_2D255-Pillars_Animate_Data
loc_2D23E:
		dc.b	1,4,6,5,4,6,4,5,4,6,4,4,6,5,4,$6
		dc.b	4,5,4,6,4,$FD,$1
loc_2D255:
		dc.b	$F,4,4,4,4,4,4,4,4,4,4,4,4,4,4,$4
		dc.b	4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,$F9
		dc.b	$0	
;-------------------------------------------------------------------------------
NGHz_Boss_Arrows_Launcher_Mappings: 
		dc.w	loc_2D284-NGHz_Boss_Arrows_Launcher_Mappings
		dc.w	loc_2D2AE-NGHz_Boss_Arrows_Launcher_Mappings
		dc.w	loc_2D2AE-NGHz_Boss_Arrows_Launcher_Mappings
		dc.w	loc_2D2B8-NGHz_Boss_Arrows_Launcher_Mappings
		dc.w	loc_2D2B8-NGHz_Boss_Arrows_Launcher_Mappings
		dc.w	loc_2D2C2-NGHz_Boss_Arrows_Launcher_Mappings
		dc.w	loc_2D2CC-NGHz_Boss_Arrows_Launcher_Mappings
loc_2D284:
		dc.w	$5
		dc.l	$280F2088,$20440000,$80F2088,$20440000
		dc.l	$E80F2088,$20440000,$C80F2088,$20440000
		dc.l	$C00C2084,$20420000
loc_2D2AE:
		dc.w	$1
		dc.l	$FC042098,$204CFFF8
loc_2D2B8:
		dc.w	$1
		dc.l	$FC0C209A,$204DFFF0
loc_2D2C2:
		dc.w	$1
		dc.l	$FC0C209E,$204FFFF0
loc_2D2CC:
		dc.w	$1
		dc.l	$FC0C20A2,$2051FFF0
;-------------------------------------------------------------------------------
NGHz_Boss_Animate_Data: 
		dc.w	NGHz_Robotnick_Faces-NGHz_Boss_Animate_Data 
		dc.w	NGHz_Ship_Boost-NGHz_Boss_Animate_Data	
		dc.w	NGHz_Hammer_Start-NGHz_Boss_Animate_Data	
		dc.w	NGHz_Hammer_Usage-NGHz_Boss_Animate_Data	
		dc.w	NGHz_Hammer_Fall-NGHz_Boss_Animate_Data	
NGHz_Robotnick_Faces: 
		dc.b	7,0,1,$FF,2,3,2,3,2,3,2,3,$FF,4,4,$4
		dc.b	4,4,4,4,4,$FF
NGHz_Ship_Boost: 
		dc.b	1,6,7,$FF
NGHz_Hammer_Start: 
		dc.b	$F,9,$FF
NGHz_Hammer_Usage: 
		dc.b	2,$A,$A,$B,$B,$B,$B,$B,$A,$A,$FD,$2
NGHz_Hammer_Fall: 
		dc.b	$F,8,$FF	
;-------------------------------------------------------------------------------	
NGHz_Boss_Ship_Mappings: 
		dc.w	loc_2D324-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D336-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D348-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D35A-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D36C-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D37E-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D390-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D3A2-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D3B4-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D3EE-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D418-NGHz_Boss_Ship_Mappings
		dc.w	loc_2D442-NGHz_Boss_Ship_Mappings
loc_2D324:
		dc.w	$2
		dc.l	$E80D0150,$A8FFE8,$E8050148,$A4FFD8
loc_2D336:
		dc.w	$2
		dc.l	$E80D0158,$ACFFE8,$E8050148,$A4FFD8
loc_2D348:
		dc.w	$2
		dc.l	$E80D0160,$B0FFE8,$E805014C,$A6FFD8
loc_2D35A:
		dc.w	$2
		dc.l	$E80D0168,$B4FFE8,$E805014C,$A6FFD8
loc_2D36C:
		dc.w	$2
		dc.l	$E80D0170,$B8FFE8,$E805014C,$A6FFD8
loc_2D37E:
		dc.w	$2
		dc.l	$E80D0178,$BCFFE8,$E805014C,$A6FFD8
loc_2D390:
		dc.w	$2
		dc.l	$1805007E,$3FFFE8,$1805007E,$3F0008
loc_2D3A2:
		dc.w	$2
		dc.l	$18040082,$41FFE8,$18040082,$410008
loc_2D3B4:
		dc.w	$7
		dc.l	$D8050140,$A0FFFA,$E8050144,$A20008
		dc.l	$206F,$2037FFD0,$F8062070,$2038FFD8
		dc.l	$F80F2128,$2094FFE8,$F8072076,$203BFFE8
		dc.l	$F8072076,$203B0008
loc_2D3EE:
		dc.w	$5
		dc.l	$EA0F2000,$2000FF9C,$D20A2010,$2008FFA4
		dc.l	$D20B2019,$200CFFBC,$F2052025,$2012FFBC
		dc.l	$F8052065,$2032FFC0
loc_2D418:
		dc.w	$5
		dc.l	$F10F2029,$2014FF9D,$D90A2039,$201CFFA5
		dc.l	$D9072042,$2021FFBD,$F902204A,$2025FFBD
		dc.l	$F8052069,$2034FFC0
loc_2D442:
		dc.w	$3
		dc.l	$EC0F204D,$2026FFA0,$C0D205D,$202EFFA0
		dc.l	$4206D,$2036FFC0	
;===============================================================================
; Object 0x89 - Neo Green Hill Boss
; [ End ]
;===============================================================================