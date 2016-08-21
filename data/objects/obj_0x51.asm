;===============================================================================
; Object 0x51 - Casino Night Boss
; [ Begin ]
;===============================================================================	
loc_2DE00:
		moveq	#0,d0
		move.b	$A(a0),d0
		move.w	loc_2DE0E(pc,d0),d1
		jmp	loc_2DE0E(pc,d1)
loc_2DE0E:
		dc.w	loc_2DE14-loc_2DE0E
		dc.w	loc_2DF14-loc_2DE0E
		dc.w	loc_2E43A-loc_2DE0E
loc_2DE14:
		move.l	#CNz_Boss_Mappings,4(a0) 
		move.w	#$3A7,2(a0)
		or.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.w	#$2A46,8(a0)
		move.w	#$654,$C(a0)
		move.b	#0,$B(a0)
		move.b	#$20,$E(a0)
		move.b	#$80,$14(a0)
		addq.b	#2,$A(a0)
		move.b	#0,$26(a0)
		bset	#6,1(a0)
		move.b	#4,$F(a0)
		move.b	#$F,$20(a0)
		move.b	#8,$32(a0)
		move.w	8(a0),($FFFFF750).w
		move.w	$C(a0),($FFFFF754).w
		move.w	8(a0),$10(a0)
		move.w	$C(a0),$12(a0)
		move.b	#5,$15(a0)
		move.w	8(a0),$16(a0)
		move.w	$C(a0),$18(a0)
		move.b	#1,$1B(a0)
		move.w	8(a0),$1C(a0)
		move.w	$C(a0),$1E(a0)
		move.b	#6,$21(a0)
		move.w	8(a0),$22(a0)
		move.w	$C(a0),$24(a0)
		move.b	#2,$27(a0)
		move.b	#0,$38(a0)
		move.w	#0,($FFFFF75A).w
		move.w	#$FE80,($FFFFF758).w
		move.b	#0,$2D(a0)
		move.w	#1,($FFFFF75C).w
		bsr	loc_2DEE6
		rts
loc_2DEE6:
		lea	($FFFFF740).w,a2
		move.b	#8,(a2)+
		move.b	#0,(a2)+
		move.b	#1,(a2)+
		move.b	#0,(a2)+
		move.b	#$10,(a2)+
		move.b	#0,(a2)+
		move.b	#3,(a2)+
		move.b	#0,(a2)+
		move.b	#2,(a2)+
		move.b	#0,(a2)+
		rts
loc_2DF14:
		tst.b	($FFFFF73F).w
		beq.s	loc_2DF2C
		move.b	($FFFFFE0F).w,d0
		and.b	#$1F,d0
		bne.s	loc_2DF2C
		move.b	#$D0,d0
		bsr	loc_2E776
loc_2DF2C:
		moveq	#0,d0
		move.b	$26(a0),d0
		move.w	loc_2DF3A(pc,d0),d1
		jmp	loc_2DF3A(pc,d1)
loc_2DF3A:
		dc.w	loc_2DF46-loc_2DF3A
		dc.w	loc_2E0B8-loc_2DF3A
		dc.w	loc_2E132-loc_2DF3A
		dc.w	loc_2E26C-loc_2DF3A
		dc.w	loc_2E2DC-loc_2DF3A
		dc.w	loc_2E33A-loc_2DF3A
loc_2DF46:
		moveq	#0,d0
		move.b	$38(a0),d0
		move.w	loc_2DF54(pc,d0),d0
		jmp	loc_2DF54(pc,d0)
loc_2DF54:
		dc.w	loc_2DF58-loc_2DF54
		dc.w	loc_2DF88-loc_2DF54
loc_2DF58:
		cmp.w	#$28C0,($FFFFF750).w
		bgt.s	loc_2DF84
		move.w	#$28C0,($FFFFF750).w
		move.w	#0,($FFFFF75A).w
		move.w	#$180,($FFFFF758).w
		move.b	#2,$38(a0)
		bset	#0,1(a0)	; Change Direction 
		move.b	#0,$2D(a0)
loc_2DF84:
		bra	loc_2DFB4
loc_2DF88:
		cmp.w	#$29C0,($FFFFF750).w
		blt.s	loc_2DFB4
		move.w	#$29C0,($FFFFF750).w
		move.w	#0,($FFFFF75A).w
		move.w	#$FE80,($FFFFF758).w
		move.b	#0,$38(a0)
		bclr	#0,1(a0)	; Change Direction 
		move.b	#0,$2D(a0)
loc_2DFB4:
		bsr	loc_29B7E
		tst.b	$3F(a0)
		beq.s	loc_2DFC6
		subq.b	#1,$3F(a0)
		bra	loc_2E056
loc_2DFC6:
		move.w	($FFFFB008).w,d0
		sub.w	8(a0),d0
		add.w	#$10,d0
		cmp.w	#$20,d0
		bcc.s	loc_2E056
		cmp.w	#$6B0,($FFFFB00C).w
		bcs.s	loc_2E016
		cmp.b	#3,$2D(a0)
		bcc.s	loc_2E056
		addq.b	#1,$2D(a0)
		addq.b	#2,$26(a0)
		move.b	#8,($FFFFF740).w
		move.b	#0,($FFFFF743).w
		move.b	#0,($FFFFF749).w
		move.b	#0,($FFFFF73F).w
		bsr	loc_2E102
		move.w	#$50,($FFFFF75C).w
		bra	loc_2E118
loc_2E016:
		cmp.w	#$67C,($FFFFB00C).w
		bcs.s	loc_2E056
		move.b	#$F,$B(a0)
		move.b	#2,($FFFFF73F).w
		move.b	#$20,($FFFFF743).w
		move.b	#$20,($FFFFF749).w
		move.b	#9,($FFFFF740).w
		addq.b	#4,$26(a0)
		move.w	#0,($FFFFF758).w
		move.w	#$180,($FFFFF75A).w
		move.b	#0,$3E(a0)
		bra	loc_2E118
loc_2E056:
		bra	loc_2E05A
loc_2E05A:
		add.w	#1,($FFFFF75C).w
		move.w	($FFFFF75C).w,d0
		and.w	#$3F,d0
		bne	loc_2E118
		btst	#6,($FFFFF75D).w
		beq.s	loc_2E096
		move.b	#$F,$B(a0)
		move.b	#2,($FFFFF73F).w
		move.b	#$20,($FFFFF743).w
		move.b	#$20,($FFFFF749).w
		move.b	#9,($FFFFF740).w
		bra	loc_2E118
loc_2E096:
		move.b	#$C,$B(a0)
		move.b	#1,($FFFFF73F).w
		move.b	#0,($FFFFF743).w
		move.b	#0,($FFFFF749).w
		move.b	#4,($FFFFF740).w
		bra	loc_2E118
loc_2E0B8:
		move.b	#0,($FFFFF73F).w
		sub.w	#1,($FFFFF75C).w
		bne.s	loc_2E0D6
		move.b	#$20,($FFFFF743).w
		move.b	#$20,($FFFFF749).w
		bra	loc_2E118
loc_2E0D6:
		cmp.w	#$FFEC,($FFFFF75C).w
		bgt	loc_2E118
		move.b	#0,($FFFFF743).w
		move.b	#0,($FFFFF749).w
		move.b	#0,$26(a0)
		move.w	#$FFFF,($FFFFF75C).w
		move.b	#$40,$3F(a0)
		bra	loc_2E118
loc_2E102:
		bsr	loc_2E770
		bne.s	loc_2E116
		move.b	#$51,(a1)
		move.b	#4,$A(a1)
		move.l	a0,$34(a1)
loc_2E116:
		rts
loc_2E118:
		bsr	loc_2E1EC
		bsr	loc_2E38C
		bsr	loc_2E1A2
		lea	(CNz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bra	loc_2E764
loc_2E132:
		bsr	loc_29B7E
		tst.b	$3E(a0)
		bne.s	loc_2E170
		cmp.w	#$680,$C(a0)
		bcs.s	loc_2E118
		move.w	#0,($FFFFF758).w
		move.w	#$FE80,($FFFFF75A).w
		move.b	#$FF,$3E(a0)
		move.b	#1,($FFFFF73F).w
		move.b	#0,($FFFFF743).w
		move.b	#0,($FFFFF749).w
		move.b	#4,($FFFFF740).w
		bra.s	loc_2E118
loc_2E170:
		cmp.w	#$654,$C(a0)
		bcc.s	loc_2E118
		move.b	#0,$26(a0)
		move.w	#0,($FFFFF75A).w
		move.w	#$FE80,($FFFFF758).w
		btst	#0,1(a0)
		beq.s	loc_2E19E
		move.w	#$180,($FFFFF758).w
		move.b	#$C,$B(a0)
loc_2E19E:
		bra	loc_2E118
loc_2E1A2:
		cmp.b	#$2F,$14(a0)
		bne.s	loc_2E1BC
		lea	($FFFFF740).w,a1
		and.b	#$F0,6(a1)
		or.b	#6,6(a1)
		rts
loc_2E1BC:
		cmp.b	#4,($FFFFB024).w
		beq.s	loc_2E1CC
		cmp.b	#4,($FFFFB064).w
		bne.s	loc_2E1EA
loc_2E1CC:
		lea	($FFFFF740).w,a1
		move.b	6(a1),d0
		and.b	#$F,d0
		cmp.b	#6,d0
		beq.s	loc_2E1EA
		and.b	#$F0,6(a1)
		or.b	#5,6(a1)
loc_2E1EA:
		rts
loc_2E1EC:
		move.b	$1A(a0),d0
		jsr	CalcSine	
		asr.w	#6,d0
		add.w	($FFFFF754).w,d0
		move.w	d0,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		addq.b	#2,$1A(a0)
		cmp.b	#6,$26(a0)
		bcc.s	loc_2E250
		tst.b	$32(a0)
		beq.s	loc_2E252
		tst.b	$20(a0)
		bne.s	loc_2E250
		tst.b	$14(a0)
		bne.s	loc_2E234
		move.b	#$30,$14(a0)
		move.w	#$AC,d0
		jsr	Play_Sfx	
loc_2E234:
		lea	($FFFFFB22).w,a1
		moveq	#0,d0
		tst.w	(a1)
		bne.s	loc_2E242
		move.w	#$EEE,d0
loc_2E242:
		move.w	d0,(a1)
		subq.b	#1,$14(a0)
		bne.s	loc_2E250
		move.b	#$F,$20(a0)
loc_2E250:
		rts
loc_2E252:
		moveq	#$64,d0
		bsr	loc_2E78E
		move.w	#$B3,($FFFFF75C).w
		move.b	#6,$26(a0)
		moveq	#$40,d0
		bsr	loc_2E788
		rts
loc_2E26C:
		st	$2C(a0)
		subq.w	#1,($FFFFF75C).w
		bmi.s	loc_2E28E
		move.b	#0,($FFFFF73F).w
		move.b	#0,$B(a0)
		move.b	#$B,$21(a0)
		bsr	Boss_Defeated	
		bra.s	loc_2E2C8
loc_2E28E:
		bset	#0,1(a0)
		clr.w	($FFFFF758).w
		clr.w	($FFFFF75A).w
		addq.b	#2,$26(a0)
		lea	($FFFFF740).w,a1
		and.b	#$F0,6(a1)
		or.b	#3,6(a1)
		move.b	#8,0(a1)
		move.b	#$DD,($FFFF8C54).w
		move.b	#1,($FFFFF72C).w
		move.w	#$FFEE,($FFFFF75C).w
loc_2E2C8:
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2E38C
		bra	loc_2E764
loc_2E2DC:
		addq.w	#1,($FFFFF75C).w
		beq.s	loc_2E2EC
		bpl.s	loc_2E2F2
		add.w	#$18,($FFFFF75A).w
		bra.s	loc_2E31E
loc_2E2EC:
		clr.w	($FFFFF75A).w
		bra.s	loc_2E31E
loc_2E2F2:
		cmp.w	#$18,($FFFFF75C).w
		bcs.s	loc_2E30A
		beq.s	loc_2E312
		cmp.w	#$20,($FFFFF75C).w
		bcs.s	loc_2E31E
		addq.b	#2,$26(a0)
		bra.s	loc_2E31E
loc_2E30A:
		sub.w	#8,($FFFFF75A).w
		bra.s	loc_2E31E
loc_2E312:
		clr.w	($FFFFF75A).w
		bsr	loc_2E794
		bsr	loc_2E79A
loc_2E31E:
		bsr	loc_29B7E
		bsr	loc_2E1EC
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2E38C
		bra	loc_2E764
loc_2E33A:
		move.w	#$400,($FFFFF758).w
		move.w	#$FFC0,($FFFFF75A).w
		cmp.w	#$2AF0,($FFFFEECA).w
		beq.s	loc_2E354
		addq.w	#2,($FFFFEECA).w
		bra.s	loc_2E35A
loc_2E354:
		tst.b	1(a0)
		bpl.s	loc_2E380
loc_2E35A:
		bsr	loc_29B7E
		bsr	loc_2E1EC
		move.w	($FFFFF754).w,$C(a0)
		move.w	($FFFFF750).w,8(a0)
		bsr	loc_2E38C
		lea	(CNz_Boss_Animate_Data),a1 
		bsr	loc_29BA4
		bra	loc_2E764
loc_2E380:
		move.w	#$2AF0,($FFFFEECA).w
		jmp	deleteObject	
loc_2E38C:
		move.w	8(a0),d0
		move.w	$C(a0),d1
		move.w	d0,$16(a0)
		move.w	d1,$18(a0)
		move.w	d0,$1C(a0)
		move.w	d1,$1E(a0)
		tst.b	$2C(a0)
		bne.s	loc_2E3C4
		move.w	d0,$22(a0)
		move.w	d1,$24(a0)
		move.w	d0,$10(a0)
		move.w	d1,$12(a0)
		move.w	d1,$3A(a0)
		move.w	d1,$34(a0)
		rts
loc_2E3C4:
		cmp.w	#$78,($FFFFF75C).w
		bgt.s	loc_2E438
		sub.w	#1,$22(a0)	; Eject Left Catcher From Ship
		move.l	$3A(a0),d0
		move.w	$2E(a0),d1
		add.w	#$38,$2E(a0)
		ext.l	d1
		asl.l	#8,d1
		add.l	d1,d0
		move.l	d0,$3A(a0)
		move.w	$3A(a0),$24(a0)
		cmp.w	#$6F0,$24(a0)
		blt.s	loc_2E3FE
		move.w	#0,$2E(a0)
loc_2E3FE:
		cmp.w	#$3C,($FFFFF75C).w
		bgt.s	loc_2E438
		add.w	#1,$10(a0)	; Eject Right Catcher From Ship
		move.l	$34(a0),d0
		move.w	$30(a0),d1
		add.w	#$38,$30(a0)
		ext.l	d1
		asl.l	#8,d1
		add.l	d1,d0
		move.l	d0,$34(a0)
		move.w	$34(a0),$12(a0)
		cmp.w	#$6F0,$12(a0)
		blt.s	loc_2E438
		move.w	#0,$30(a0)
loc_2E438:
		rts
loc_2E43A:
		move.l	$34(a0),a1
		cmp.b	#6,$26(a1)
		bcc	loc_2E76A
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2E456(pc,d0),d1
		jmp	loc_2E456(pc,d1)
loc_2E456:	
		dc.w	loc_2E45E-loc_2E456
		dc.w	loc_2E4AC-loc_2E456
		dc.w	loc_2E4F2-loc_2E456
		dc.w	loc_2E596-loc_2E456
loc_2E45E:
		move.l	#CNz_Boss_Mappings,4(a0) 
		move.w	#$3A7,2(a0)	; Spikeball VRAM
		or.b	#4,1(a0)
		move.b	#7,$18(a0)
		addq.b	#2,$25(a0)
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		add.w	#$30,$C(a0)
		move.b	#8,$16(a0)
		move.b	#8,$17(a0)
		move.b	#$12,$1A(a0)
		move.b	#$98,$20(a0)
		rts
loc_2E4AC:
		move.l	$34(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.w	$28(a0),d0
		add.w	d0,$C(a0)
		add.w	#1,d0
		cmp.w	#$2E,d0
		blt.s	loc_2E4D2
		move.w	#$2E,d0
loc_2E4D2:
		move.w	d0,$28(a0)
		tst.w	($FFFFF75C).w
		bne	loc_2E764
		addq.b	#2,$25(a0)
		move.w	#0,$10(a0)
		move.w	#0,$12(a0)
		bra	loc_2E764
loc_2E4F2:
		bsr	loc_2E50E
		jsr	ObjHitFloor	
		tst.w	d1
		bpl	loc_2E764
		add.w	d1,$C(a0)
		bsr	loc_2E546
		bra	loc_2E764
loc_2E50E:
		moveq	#0,d2
		move.w	8(a0),d2
		swap.w	d2
		moveq	#0,d3
		move.w	$C(a0),d3
		swap.w	d3
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	$12(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		add.w	#$38,$12(a0)
		swap.w	d2
		move.w	d2,8(a0)
		swap.w	d3
		move.w	d3,$C(a0)
		rts
loc_2E546:
		move.b	#$C4,d0
		bsr	loc_2E776
		move.w	#$3A7,2(a0)	; Spikeball Bomb VRAM
		move.b	#7,$1C(a0)
		move.w	#$FD00,$12(a0)
		move.w	#$FF00,$10(a0)
		move.b	#4,$A(a0)
		move.b	#6,$25(a0)
		move.b	#$98,$20(a0)
		bsr	loc_2E77C
		bne.s	loc_2E594
		moveq	#0,d0
		move.w	#$F,d1
loc_2E584:	
		move.l	0(a0,d0),0(a1,d0)
		addq.w	#4,d0
		dbra	d1,loc_2E584
		neg.w	$10(a1)
loc_2E594:
		rts
loc_2E596:
		bsr	loc_2E50E
		lea	(CNz_Boss_Animate_Data),a1 
		bsr	loc_2E782
		cmp.w	#$705,$C(a0)
		bcs	loc_2E764
		bra	loc_2E76A
;-------------------------------------------------------------------------------
CNz_Boss_Animate_Data: 
		dc.w	loc_2E5C6-CNz_Boss_Animate_Data
		dc.w	loc_2E5C9-CNz_Boss_Animate_Data
		dc.w	loc_2E5CF-CNz_Boss_Animate_Data
		dc.w	loc_2E5D5-CNz_Boss_Animate_Data
		dc.w	loc_2E5D9-CNz_Boss_Animate_Data
		dc.w	loc_2E5DE-CNz_Boss_Animate_Data
		dc.w	loc_2E5E9-CNz_Boss_Animate_Data
		dc.w	loc_2E5F3-CNz_Boss_Animate_Data
		dc.w	loc_2E5F7-CNz_Boss_Animate_Data
		dc.w	loc_2E5FA-CNz_Boss_Animate_Data
loc_2E5C6:
		dc.b	$F,1,$FF
loc_2E5C9:
		dc.b	$F,4,$FF,5,$FC,$2
loc_2E5CF:
		dc.b	$F,2,$FF,3,$FC,$2
loc_2E5D5:
		dc.b	7,6,7,$FF
loc_2E5D9:
		dc.b	1,$C,$D,$E,$FF
loc_2E5DE:
		dc.b	7,8,9,8,9,8,9,8,9,$FD,$3
loc_2E5E9:
		dc.b	7,$A,$A,$A,$A,$A,$A,$A,$FD,$3
loc_2E5F3:
		dc.b	3,$13,$14,$FF
loc_2E5F7:
		dc.b	1,0,$FF
loc_2E5FA:
		dc.b	1,$F,$10,$11,$FF,$0	
;-------------------------------------------------------------------------------
CNz_Boss_Mappings: 
		dc.w	CNz_Boss_Mappings-CNz_Boss_Mappings
		dc.w	loc_2E62A-CNz_Boss_Mappings
		dc.w	loc_2E654-CNz_Boss_Mappings
		dc.w	loc_2E65E-CNz_Boss_Mappings
		dc.w	loc_2E668-CNz_Boss_Mappings
		dc.w	loc_2E672-CNz_Boss_Mappings
		dc.w	loc_2E684-CNz_Boss_Mappings
		dc.w	loc_2E696-CNz_Boss_Mappings
		dc.w	loc_2E6A8-CNz_Boss_Mappings
		dc.w	loc_2E6BA-CNz_Boss_Mappings
		dc.w	loc_2E6CC-CNz_Boss_Mappings
		dc.w	loc_2E6DE-CNz_Boss_Mappings
		dc.w	loc_2E6F0-CNz_Boss_Mappings
		dc.w	loc_2E6FA-CNz_Boss_Mappings
		dc.w	loc_2E704-CNz_Boss_Mappings
		dc.w	loc_2E70E-CNz_Boss_Mappings
		dc.w	loc_2E720-CNz_Boss_Mappings
		dc.w	loc_2E732-CNz_Boss_Mappings
		dc.w	loc_2E744-CNz_Boss_Mappings
		dc.w	loc_2E74E-CNz_Boss_Mappings
		dc.w	loc_2E758-CNz_Boss_Mappings
loc_2E62A:
		dc.w	$5
		dc.l	$F005017D,$BE0010,$D80E2060,$2030FFF9
		dc.l	$F206C,$2036FFD8,$F207C,$203EFFF8
		dc.l	$6208C,$20460018
loc_2E654:
		dc.w	$1
		dc.l	$180620AA,$2055FFE4
loc_2E65E:
		dc.w	$1
		dc.l	$100620B0,$2058FFDB
loc_2E668:
		dc.w	$1
		dc.l	$100B2092,$20490008
loc_2E672:
		dc.w	$2
		dc.l	$1009209E,$204F0008,$100620A4,$20520020
loc_2E684:
		dc.w	$2
		dc.l	$F00D0189,$C4FFF0,$F0050181,$C0FFE0
loc_2E696:
		dc.w	$2
		dc.l	$F00D0191,$C8FFF0,$F0050181,$C0FFE0
loc_2E6A8:
		dc.w	$2
		dc.l	$F00D0199,$CCFFF0,$F0050185,$C2FFE0
loc_2E6BA:
		dc.w	$2
		dc.l	$F00D01A1,$D0FFF0,$F0050185,$C2FFE0
loc_2E6CC:
		dc.w	$2
		dc.l	$F00D01A9,$D4FFF0,$F0050185,$C2FFE0
loc_2E6DE:
		dc.w	$2
		dc.l	$F00D01B1,$D8FFF0,$F0050185,$C2FFE0
loc_2E6F0:
		dc.w	$1
		dc.l	$280C20B6,$205BFFF0
loc_2E6FA:
		dc.w	$1
		dc.l	$280C20BA,$205DFFF0
loc_2E704:
		dc.w	$1
		dc.l	$280C20BE,$205FFFF0
loc_2E70E:
		dc.w	$2
		dc.l	$200C20C2,$2061FFE4,$200C20C6,$20630004
loc_2E720:
		dc.w	$2
		dc.l	$200C20CA,$2065FFE4,$200C20CE,$20670004
loc_2E732:
		dc.w	$2
		dc.l	$200C20D2,$2069FFE4,$200C20D6,$206B0004
loc_2E744:
		dc.w	$1
		dc.l	$F40A00DA,$6DFFF4
loc_2E74E:
		dc.w	$1
		dc.l	$FC0000E3,$71FFFC
loc_2E758:
		dc.w	$1
		dc.l	$FC0000E4,$72FFFC	
;===============================================================================
; Object 0x51 - Casino Night Boss
; [ End ]
;===============================================================================