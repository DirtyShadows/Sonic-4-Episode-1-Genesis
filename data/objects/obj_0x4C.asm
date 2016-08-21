;=============================================================================== 
; Object 0x4C - Hidden Palace - Batbot
; [ Begin ]	
;=============================================================================== 
loc_28434:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_28442(pc,d0),d1
		jmp	loc_28442(pc,d1)
loc_28442:
		dc.w	loc_28448-loc_28442
		dc.w	loc_28486-loc_28442
		dc.w	loc_284F4-loc_28442
loc_28448:
		move.l	#Batbot_Mappings,4(a0) 
		move.w	#$2530,2(a0)
		or.b	#4,1(a0)
		move.b	#$A,$20(a0)
		move.b	#4,$18(a0)
		move.b	#$10,$19(a0)
		move.b	#$10,$16(a0)
		move.b	#8,$17(a0)
		addq.b	#2,$24(a0)
		move.w	$C(a0),$2E(a0)
		rts
loc_28486:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_284A6(pc,d0),d1
		jsr	loc_284A6(pc,d1)
		bsr	loc_284AC
		lea	(Batbot_Animate_Data),a1 
		bsr	loc_288AE
		bra	loc_288A8
loc_284A6:
		dc.w	loc_28612-loc_284A6
		dc.w	loc_2864A-loc_284A6
		dc.w	loc_28656-loc_284A6
loc_284AC:
		move.b	$3F(a0),d0
		jsr	CalcSine	
		asr.w	#6,d0
		add.w	$2E(a0),d0
		move.w	d0,$C(a0)
		addq.b	#4,$3F(a0)
		rts
loc_284C6:	
		move.w	8(a0),d0
		sub.w	($FFFFB008).w,d0
		cmp.w	#$80,d0
		bgt.s	loc_284F2
		cmp.w	#$FF80,d0
		blt.s	loc_284F2
		move.b	#4,$25(a0)
		move.b	#2,$1C(a0)
		move.w	#8,$2A(a0)
		move.b	#0,$3E(a0)
loc_284F2:
		rts
loc_284F4:
		bsr	loc_285F2
		bsr	loc_28594
		bsr	loc_28514
		bsr	loc_288B4
		lea	(Batbot_Animate_Data),a1 
		bsr	loc_288AE
		bra	loc_288A8
		rts
loc_28514:
		tst.b	$3D(a0)
		beq.s	loc_28526
		bset	#0,1(a0)
		bset	#0,$22(a0)
loc_28526:
		rts
loc_28528:	
		sub.w	#1,$2C(a0)
		bpl.s	loc_28572
		move.w	8(a0),d0
		sub.w	($FFFFB008).w,d0
		cmp.w	#$60,d0
		bgt.s	loc_28574
		cmp.w	#$FFA0,d0
		blt.s	loc_28574
		tst.w	d0
		bpl.s	loc_2854C
		st	$3D(a0)
loc_2854C:
		move.b	#$40,$3F(a0)
		move.w	#$400,$14(a0)
		move.b	#4,$24(a0)
		move.b	#3,$1C(a0)
		move.w	#$C,$2A(a0)
		move.b	#1,$3E(a0)
		moveq	#0,d0
loc_28572:
		rts
loc_28574:
		cmp.w	#$80,d0
		bgt.s	loc_28580
		cmp.w	#$FF80,d0
		bgt.s	loc_28572
loc_28580:
		move.b	#1,$1C(a0)
		move.b	#0,$25(a0)
		move.w	#$18,$2A(a0)
		rts
loc_28594:
		tst.b	$3D(a0)
		bne.s	loc_285AE
		moveq	#0,d0
		move.b	$3F(a0),d0
		cmp.w	#$C0,d0
		bge.s	loc_285C2
		addq.b	#2,d0
		move.b	d0,$3F(a0)
		rts
loc_285AE:
		moveq	#0,d0
		move.b	$3F(a0),d0
		cmp.w	#$C0,d0
		beq.s	loc_285C2
		subq.b	#2,d0
		move.b	d0,$3F(a0)
		rts
loc_285C2:
		sf	$3D(a0)
		move.b	#0,$1C(a0)
		move.b	#2,$24(a0)
		move.b	#0,$25(a0)
		move.w	#$18,$2A(a0)
		move.b	#1,$1C(a0)
		bclr	#0,1(a0)
		bclr	#0,$22(a0)
		rts
loc_285F2:
		move.b	$3F(a0),d0
		jsr	CalcSine	
		muls.w	$14(a0),d1
		asr.l	#8,d1
		move.w	d1,$10(a0)
		muls.w	$14(a0),d0
		asr.l	#8,d0
		move.w	d0,$12(a0)
		rts
loc_28612:
		sub.w	#1,$2A(a0)
		bpl.s	loc_28648
		bsr	loc_284C6
		beq.s	loc_28648
		jsr	PseudoRandomNumber	
		and.b	#$FF,d0
		bne.s	loc_28648
		move.w	#$18,$2A(a0)
		move.w	#$1E,$2C(a0)
		addq.b	#2,$25(a0)
		move.b	#1,$1C(a0)
		move.b	#0,$3E(a0)
loc_28648:
		rts
loc_2864A:
		subq.b	#1,$2A(a0)
		bpl.s	loc_28654
		subq.b	#2,$25(a0)
loc_28654:
		rts
loc_28656:
		bsr	loc_28528
		beq.s	loc_2869C
		sub.w	#1,$2A(a0)
		bne.s	loc_2869C
		move.b	$3E(a0),d0
		beq.s	loc_28684
		move.b	#0,$3E(a0)
		move.w	#8,$2A(a0)
		bset	#0,1(a0)
		bset	#0,$22(a0)
		rts
loc_28684:
		move.b	#1,$3E(a0)
		move.w	#$C,$2A(a0)
		bclr	#0,1(a0)
		bclr	#0,$22(a0)
loc_2869C:
		rts
;-------------------------------------------------------------------------------
Batbot_Animate_Data: 
		dc.w	loc_286A6-Batbot_Animate_Data
		dc.w	loc_286AA-Batbot_Animate_Data
		dc.w	loc_286B9-Batbot_Animate_Data
		dc.w	loc_286CA-Batbot_Animate_Data
loc_286A6:
		dc.b	1,0,5,$FF
loc_286AA:
		dc.b	1,1,6,1,6,2,7,2,7,1,6,1,6,$FD,$0
loc_286B9:
		dc.b	1,1,6,1,6,2,7,3,8,4,9,4,9,3,8,$FE
		dc.b	$A
loc_286CA:
		dc.b	3,$A,$B,$C,$D,$E,$FF,$0
;-------------------------------------------------------------------------------
Batbot_Mappings: 
		dc.w	loc_286F0-Batbot_Mappings
		dc.w	loc_28712-Batbot_Mappings
		dc.w	loc_28734-Batbot_Mappings
		dc.w	loc_28756-Batbot_Mappings
		dc.w	loc_28778-Batbot_Mappings
		dc.w	loc_28792-Batbot_Mappings
		dc.w	loc_287B4-Batbot_Mappings
		dc.w	loc_287D6-Batbot_Mappings
		dc.w	loc_287F8-Batbot_Mappings
		dc.w	loc_2881A-Batbot_Mappings
		dc.w	loc_28834-Batbot_Mappings
		dc.w	loc_2884E-Batbot_Mappings
		dc.w	loc_28868-Batbot_Mappings
		dc.w	loc_2887A-Batbot_Mappings
		dc.w	loc_2888C-Batbot_Mappings
loc_286F0:
		dc.w	$4
		dc.l	$F0050000,$FFF8,$50004,$2FFF8
		dc.l	$F00B0008,$40005,$F00B0808,$804FFE3
loc_28712:
		dc.w	$4
		dc.l	$F0050000,$FFF8,$50004,$2FFF8
		dc.l	$F60D0014,$A0005,$F60D0814,$80AFFDB
loc_28734:
		dc.w	$4
		dc.l	$F0050000,$FFF8,$50004,$2FFF8
		dc.l	$F80D001C,$E0004,$F80D081C,$80EFFDC
loc_28756:
		dc.w	$4
		dc.l	$F0050000,$FFF8,$50004,$2FFF8
		dc.l	$F8050024,$12FFEC,$F8050028,$140004
loc_28778:
		dc.w	$3
		dc.l	$F801002C,$160000,$F0050000,$FFF8
		dc.l	$50004,$2FFF8
loc_28792:
		dc.w	$4
		dc.l	$F0050000,$FFF8,$5002E,$17FFF8
		dc.l	$F00B0008,$40005,$F00B0808,$804FFE3
loc_287B4:
		dc.w	$4
		dc.l	$F0050000,$FFF8,$5002E,$17FFF8
		dc.l	$F60D0014,$A0005,$F60D0814,$80AFFDB
loc_287D6:
		dc.w	$4
		dc.l	$F0050000,$FFF8,$5002E,$17FFF8
		dc.l	$F80D001C,$E0004,$F80D081C,$80EFFDC
loc_287F8:
		dc.w	$4
		dc.l	$F0050000,$FFF8,$5002E,$17FFF8
		dc.l	$F8050028,$140004,$F8050024,$12FFEC
loc_2881A:
		dc.w	$3
		dc.l	$F801002C,$160000,$F0050000,$FFF8
		dc.l	$5002E,$17FFF8
loc_28834:
		dc.w	$3
		dc.l	$F0070032,$19FFF8,$F80D001C,$E0004
		dc.l	$F80D081C,$80EFFDC
loc_2884E:
		dc.w	$3
		dc.l	$F0070032,$19FFF8,$F8050028,$140004
		dc.l	$F8050024,$12FFEC
loc_28868:
		dc.w	$2
		dc.l	$F801002C,$160000,$F0070032,$19FFF8
loc_2887A:
		dc.w	$2
		dc.l	$F801082C,$816FFF8,$F0070032,$19FFF8
loc_2888C:
		dc.w	$3
		dc.l	$F0070032,$19FFF8,$F8050828,$814FFEC
		dc.l	$F8050824,$8120004	
;=============================================================================== 
; Object 0x4C - Hidden Palace - Batbot
; [ End ]	
;=============================================================================== 