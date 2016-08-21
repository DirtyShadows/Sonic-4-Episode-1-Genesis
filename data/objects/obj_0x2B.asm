;=============================================================================== 
; Object 0x2B - Raising Pillar / Breakable Pillar - Neo Green Hill
; [ Begin ]	
;===============================================================================	
loc_21816:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_21824(pc,d0),d1
		jmp	loc_21824(pc,d1)
loc_21824:
		dc.w	loc_2182A-loc_21824
		dc.w	loc_21858-loc_21824
		dc.w	loc_21948-loc_21824
loc_2182A:
		addq.b	#2,$24(a0)
		move.l	#Raising_Pillar_Mappings,4(a0) 
		move.w	#$2000,2(a0)
		bsr	loc_21EA8
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#$18,$16(a0)
		move.b	#4,$18(a0)
loc_21858:
		move.w	8(a0),-(sp)
		bsr	loc_218E2
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	(sp)+,d4
		bsr	loc_21EAE
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne	loc_2188A
		bra	loc_21E9C
loc_2188A:
		lea	(loc_21978),a4
		lea	(loc_2196A),a2
		addq.b	#7,$1A(a0)
		bsr	loc_219B0
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		bsr.s	loc_218B0
		lea	($FFFFB040).w,a1
		addq.b	#1,d6
		bra	loc_21948
loc_218B0:
		bclr	d6,$22(a0)
		beq.s	loc_218E0
		bset	#2,$22(a1)
		move.b	#$E,$16(a1)
		move.b	#7,$17(a1)
		move.b	#2,$1C(a1)
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#2,$24(a1)
loc_218E0:
		rts
loc_218E2:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_218F0(pc,d0),d1
		jmp	loc_218F0(pc,d1)
loc_218F0:
		dc.w	loc_218F6-loc_218F0
		dc.w	loc_21920-loc_218F0
		dc.w	loc_2191E-loc_218F0
loc_218F6:
		tst.w	($FFFFFE08).w
		bne.s	loc_2191E
		lea	($FFFFB000).w,a1
		bsr.s	loc_21906
		lea	($FFFFB040).w,a1
loc_21906:
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcc.s	loc_21912
		neg.w	d0
loc_21912:
		cmp.w	#$40,d0
		bcc.s	loc_2191E
		move.b	#2,$25(a0)
loc_2191E:
		rts
loc_21920:
		subq.w	#1,$34(a0)
		bcc.s	loc_21946
		move.w	#3,$34(a0)
		subq.w	#4,$C(a0)
		addq.b	#4,$16(a0)
		addq.b	#1,$1A(a0)
		cmp.b	#6,$1A(a0)
		bne.s	loc_21946
		move.b	#4,$25(a0)
loc_21946:
		rts
loc_21948:
		tst.b	$3F(a0)
		beq.s	loc_21954
		subq.b	#1,$3F(a0)
		bra.s	loc_2195E
loc_21954:
		bsr	loc_21EB4
		add.w	#$18,$12(a0)
loc_2195E:
		tst.b	1(a0)
		bpl	loc_21E96
		bra	loc_21E90	
loc_2196A:
		dc.b	0,0,0,0,4,4,8,8,$C,$C,$10,$10,$14,$14
loc_21978:
		dc.w	$FE00,$FE00,$200,$FE00,$FE40,$FE40,$1C0,$FE40
		dc.w	$FE80,$FE80,$180,$FE80,$FEC0,$FEC0,$140,$FEC0
		dc.w	$FF00,$FF00,$100,$FF00,$FF40,$FF40,$C0,$FF40
		dc.w	$FF80,$FF80,$80,$FF80
loc_219B0:
		moveq	#0,d0
		move.b	$1A(a0),d0
		add.w	d0,d0
		move.l	4(a0),a3
		adda.w	0(a3,d0),a3
		move.w	(a3)+,d1
		subq.w	#1,d1
		bset	#5,1(a0)
		move.b	0(a0),d4
		move.b	1(a0),d5
		move.l	a0,a1
		bra.s	loc_219DE
loc_219D6:	
		bsr	loc_21EA2
		bne.s	loc_21A1E
		addq.w	#8,a3
loc_219DE:
		move.b	#4,$24(a1)
		move.b	d4,0(a1)
		move.l	a3,4(a1)
		move.b	d5,1(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	2(a0),2(a1)
		move.b	$18(a0),$18(a1)
		move.b	$19(a0),$19(a1)
		move.w	(a4)+,$10(a1)
		move.w	(a4)+,$12(a1)
		move.b	(a2)+,$3F(a1)
		dbra	d1,loc_219D6
loc_21A1E:
		move.w	#$CB,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------
Raising_Pillar_Mappings: 
		dc.w	loc_21A44-Raising_Pillar_Mappings
		dc.w	loc_21A76-Raising_Pillar_Mappings
		dc.w	loc_21AB0-Raising_Pillar_Mappings
		dc.w	loc_21AEA-Raising_Pillar_Mappings
		dc.w	loc_21B2C-Raising_Pillar_Mappings
		dc.w	loc_21B6E-Raising_Pillar_Mappings
		dc.w	loc_21BB8-Raising_Pillar_Mappings
		dc.w	loc_21C02-Raising_Pillar_Mappings
		dc.w	loc_21C44-Raising_Pillar_Mappings
		dc.w	loc_21C96-Raising_Pillar_Mappings
		dc.w	loc_21CE8-Raising_Pillar_Mappings
		dc.w	loc_21D4A-Raising_Pillar_Mappings
		dc.w	loc_21DAC-Raising_Pillar_Mappings
		dc.w	loc_21E1E-Raising_Pillar_Mappings
loc_21A44:
		dc.w	$6
		dc.l	$100D208B,$2045FFF0,$E805005D,$2EFFE0
		dc.l	$E805085D,$82E0010,$E80D0061,$30FFF0
		dc.l	$F80D0069,$34FFF0,$80D0083,$41FFF0
loc_21A76:
		dc.w	$7
		dc.l	$140D208B,$2045FFF0,$E405005D,$2EFFE0
		dc.l	$E405085D,$82E0010,$E40D0061,$30FFF0
		dc.l	$F40D0069,$34FFF0,$FC0D0069,$34FFF0
		dc.l	$C0D0083,$41FFF0
loc_21AB0:
		dc.w	$7
		dc.l	$180D208B,$2045FFF0,$E005005D,$2EFFE0
		dc.l	$E005085D,$82E0010,$E00D0061,$30FFF0
		dc.l	$F00D0069,$34FFF0,$D0069,$34FFF0
		dc.l	$100D0083,$41FFF0
loc_21AEA:
		dc.w	$8
		dc.l	$1C0D208B,$2045FFF0,$DC05005D,$2EFFE0
		dc.l	$DC05085D,$82E0010,$DC0D0061,$30FFF0
		dc.l	$EC0D0069,$34FFF0,$FC0D0069,$34FFF0
		dc.l	$40D0069,$34FFF0,$140D0083,$41FFF0
loc_21B2C:
		dc.w	$8
		dc.l	$200D208B,$2045FFF0,$D805005D,$2EFFE0
		dc.l	$D805085D,$82E0010,$D80D0061,$30FFF0
		dc.l	$E80D0069,$34FFF0,$F80D0069,$34FFF0
		dc.l	$80D0069,$34FFF0,$180D0083,$41FFF0
loc_21B6E:
		dc.w	$9
		dc.l	$240D208B,$2045FFF0,$D405005D,$2EFFE0
		dc.l	$D405085D,$82E0010,$D40D0061,$30FFF0
		dc.l	$E40D0069,$34FFF0,$F40D0069,$34FFF0
		dc.l	$40D0069,$34FFF0,$C0D0069,$34FFF0
		dc.l	$1C0D0083,$41FFF0
loc_21BB8:
		dc.w	$9
		dc.l	$280D208B,$2045FFF0,$D005005D,$2EFFE0
		dc.l	$D005085D,$82E0010,$D00D0061,$30FFF0
		dc.l	$E00D0069,$34FFF0,$F00D0069,$34FFF0
		dc.l	$D0069,$34FFF0,$100D0069,$34FFF0
		dc.l	$200D0083,$41FFF0
loc_21C02:
		dc.w	$8
		dc.l	$E805005D,$2EFFE0,$E805085D,$82E0010
		dc.l	$E8050061,$30FFF0,$E8050065,$320000
		dc.l	$F8050069,$34FFF0,$F805006D,$360000
		dc.l	$8050083,$41FFF0,$8050087,$430000
loc_21C44:
		dc.w	$A
		dc.l	$E405005D,$2EFFE0,$E405085D,$82E0010
		dc.l	$E4050061,$30FFF0,$E4050065,$320000
		dc.l	$F4050069,$34FFF0,$F405006D,$360000
		dc.l	$FC050069,$34FFF0,$FC05006D,$360000
		dc.l	$C050083,$41FFF0,$C050087,$430000
loc_21C96:
		dc.w	$A
		dc.l	$E005005D,$2EFFE0,$E005085D,$82E0010
		dc.l	$E0050061,$30FFF0,$E0050065,$320000
		dc.l	$F0050069,$34FFF0,$F005006D,$360000
		dc.l	$50069,$34FFF0,$5006D,$360000
		dc.l	$10050083,$41FFF0,$10050087,$430000
loc_21CE8:
		dc.w	$C
		dc.l	$DC05005D,$2EFFE0,$DC05085D,$82E0010
		dc.l	$DC050061,$30FFF0,$DC050065,$320000
		dc.l	$EC050069,$34FFF0,$EC05006D,$360000
		dc.l	$FC050069,$34FFF0,$FC05006D,$360000
		dc.l	$4050069,$34FFF0,$405006D,$360000
		dc.l	$14050083,$41FFF0,$14050087,$430000
loc_21D4A:
		dc.w	$C
		dc.l	$D805005D,$2EFFE0,$D805085D,$82E0010
		dc.l	$D8050061,$30FFF0,$D8050065,$320000
		dc.l	$E8050069,$34FFF0,$E805006D,$360000
		dc.l	$F8050069,$34FFF0,$F805006D,$360000
		dc.l	$8050069,$34FFF0,$805006D,$360000
		dc.l	$18050083,$41FFF0,$18050087,$430000
loc_21DAC:
		dc.w	$E
		dc.l	$D405005D,$2EFFE0,$D405085D,$82E0010
		dc.l	$D4050061,$30FFF0,$D4050065,$320000
		dc.l	$E4050069,$34FFF0,$E405006D,$360000
		dc.l	$F4050069,$34FFF0,$F405006D,$360000
		dc.l	$4050069,$34FFF0,$405006D,$360000
		dc.l	$C050069,$34FFF0,$C05006D,$360000
		dc.l	$1C050083,$41FFF0,$1C050087,$430000
loc_21E1E:
		dc.w	$E
		dc.l	$D005005D,$2EFFE0,$D005085D,$82E0010
		dc.l	$D0050061,$30FFF0,$D0050065,$320000
		dc.l	$E0050069,$34FFF0,$E005006D,$360000
		dc.l	$F0050069,$34FFF0,$F005006D,$360000
		dc.l	$50069,$34FFF0,$5006D,$360000
		dc.l	$10050069,$34FFF0,$1005006D,$360000
		dc.l	$20050083,$41FFF0,$20050087,$430000	
;=============================================================================== 
; Object 0x2B - Raising Pillar / Breakable Pillar - Neo Green Hill 
; [ End ]	
;===============================================================================	