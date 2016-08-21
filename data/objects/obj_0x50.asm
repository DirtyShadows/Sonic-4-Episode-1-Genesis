;=============================================================================== 
; Object 0x50 - Oil Ocean - Aquis (Seahorse)	
; [ Begin ]	
;===============================================================================	
loc_28FCC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_28FDA(pc,d0),d1
		jmp	loc_28FDA(pc,d1)
loc_28FDA:	
		dc.w	loc_28FE2-loc_28FDA
		dc.w	loc_290A0-loc_28FDA
		dc.w	loc_290C6-loc_28FDA
		dc.w	loc_290F0-loc_28FDA
loc_28FE2:
		addq.b	#2,$24(a0)
		move.l	#Aquis_Mappings,4(a0) 
		move.w	#$2500,2(a0)
		or.b	#4,1(a0)
		move.b	#$A,$20(a0)
		move.b	#4,$18(a0)
		move.b	#$10,$19(a0)
		move.w	#$FF00,$10(a0)
		move.b	$28(a0),d0
		move.b	d0,d1
		and.w	#$F0,d1
		lsl.w	#4,d1
		move.w	d1,$2E(a0)
		move.w	d1,$30(a0)
		and.w	#$F,d0
		lsl.w	#4,d0
		subq.w	#1,d0
		move.w	d0,$32(a0)
		move.w	d0,$34(a0)
		move.w	$C(a0),$2A(a0)
		move.w	($FFFFF646).w,$3A(a0)
		bsr	loc_2931C
		bne.s	loc_290A0
		move.b	#$50,0(a1)
		move.b	#4,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$A,8(a1)
		add.w	#$FFFA,$C(a1)
		move.l	#Aquis_Mappings,4(a1) 
		move.w	#$2500,2(a1)
		or.b	#4,1(a1)
		move.b	#3,$18(a1)
		move.b	$22(a0),$22(a1)
		move.b	#3,$1C(a1)
		move.l	a1,$36(a0)
		move.l	a0,$36(a1)
		bset	#6,$22(a0)
loc_290A0:
		lea	(aquis_Animate_Data),a1 
		bsr	loc_29328
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_290C0(pc,d0),d1
		jsr	loc_290C0(pc,d1)
		bsr	loc_29212
		bra	loc_29322	
loc_290C0:
		dc.w	loc_29102-loc_290C0
		dc.w	loc_29110-loc_290C0
		dc.w	loc_29116-loc_290C0
loc_290C6:
		move.l	$36(a0),a1
		tst.b	(a1)
		beq	loc_29316
		cmp.b	#$50,(a1)
		bne	loc_29316
		btst	#7,$22(a1)
		bne	loc_29316
		lea	(aquis_Animate_Data),a1 
		bsr	loc_29328
		bra	loc_29310
loc_290F0:
		bsr	loc_29340
		lea	(aquis_Animate_Data),a1 
		bsr	loc_29328
		bra	loc_29322
loc_29102:
		tst.b	1(a0)
		bmi.s	loc_2910A
		rts
loc_2910A:
		addq.b	#2,$25(a0)
		rts
loc_29110:
		bsr	loc_291AA
		rts
loc_29116:
		bsr	loc_291F4
		bsr	loc_29120
		rts
loc_29120:
		tst.b	$2D(a0)
		bne	loc_291A8
		st	$2D(a0)
		bsr	loc_2932E
		tst.w	d1
		beq.s	loc_291A8
		cmp.w	#$FFF0,d1
		bcc.s	loc_291A8
		bsr	loc_2931C
		bne.s	loc_291A8
		move.b	#$50,0(a1)
		move.b	#6,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.l	#Aquis_Mappings,4(a1) 
		move.w	#$2500,2(a1)
		or.b	#4,1(a1)
		move.b	#3,$18(a1)
		move.b	#$98,$20(a1)
		move.b	#2,$1C(a1)
		move.w	#$A,d0
		move.w	#$10,d1
		move.w	#$FD00,d2
		btst	#0,$22(a0)
		beq.s	loc_29196
		neg.w	d1
		neg.w	d2
loc_29196:
		sub.w	d0,$C(a1)
		sub.w	d1,8(a1)
		move.w	d2,$10(a1)
		move.w	#$200,$12(a1)
loc_291A8:
		rts
loc_291AA:
		subq.b	#1,$3C(a0)
		bmi.s	loc_291E6
		bsr	loc_2932E
		bclr	#0,$22(a0)
		tst.w	d0
		beq.s	loc_291C4
		bset	#0,$22(a0)
loc_291C4:
		move.w	loc_291E2(pc,d0),d2
		add.w	d2,$10(a0)
		move.w	loc_291E2(pc,d1),d2
		add.w	d2,$12(a0)
		move.w	#$100,d0
		move.w	d0,d1
		bsr	loc_29334
		bra	loc_29340	
loc_291E2:
		dc.w	$FFF0,$10
loc_291E6:
		addq.b	#2,$25(a0)
		move.b	#$20,$3C(a0)
		bra	loc_2933A
loc_291F4:
		subq.b	#1,$3C(a0)
		bmi.s	loc_291FC
		rts
loc_291FC:
		subq.b	#2,$25(a0)
		move.w	#$FF00,$12(a0)
		move.b	#$80,$3C(a0)
		clr.b	$2D(a0)
		rts
loc_29212:
		moveq	#$A,d0
		moveq	#$FFFFFFFA,d1
		move.l	$36(a0),a1
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	$22(a0),$22(a1)
		move.b	$23(a0),$23(a1)
		move.b	1(a0),1(a1)
		btst	#0,$22(a1)
		beq.s	loc_29242
		neg.w	d0
loc_29242:
		add.w	d0,8(a1)
		add.w	d1,$C(a1)
		rts
;-------------------------------------------------------------------------------
Aquis_Animate_Data: 
		dc.w	loc_29258-Aquis_Animate_Data
		dc.w	loc_2925B-Aquis_Animate_Data
		dc.w	loc_29263-Aquis_Animate_Data
		dc.w	loc_29269-Aquis_Animate_Data
		dc.w	loc_2926D-Aquis_Animate_Data
		dc.w	loc_29270-Aquis_Animate_Data
loc_29258:
		dc.b	$E,0,$FF
loc_2925B:
		dc.b	5,3,4,3,4,3,4,$FF
loc_29263:
		dc.b	3,5,6,7,6,$FF
loc_29269:
		dc.b	3,1,2,$FF
loc_2926D:
		dc.b	1,5,$FF
loc_29270:
		dc.b	$E,8,$FF,$0	
;-------------------------------------------------------------------------------
Aquis_Mappings: 
		dc.w	loc_29286-Aquis_Mappings
		dc.w	loc_292A0-Aquis_Mappings
		dc.w	loc_292AA-Aquis_Mappings
		dc.w	loc_292B4-Aquis_Mappings
		dc.w	loc_292CE-Aquis_Mappings
		dc.w	loc_292E8-Aquis_Mappings
		dc.w	loc_292F2-Aquis_Mappings
		dc.w	loc_292FC-Aquis_Mappings
		dc.w	loc_29306-Aquis_Mappings
loc_29286:
		dc.w	$3
		dc.l	$E80D0000,$FFF0,$F8090008,$4FFF8
		dc.l	$805000E,$7FFF8
loc_292A0:
		dc.w	$1
		dc.l	$F8050022,$11FFF8
loc_292AA:
		dc.w	$1
		dc.l	$F8050026,$13FFF8
loc_292B4:
		dc.w	$3
		dc.l	$E80D0012,$9FFF0,$F8090008,$4FFF8
		dc.l	$805000E,$7FFF8
loc_292CE:
		dc.w	$3
		dc.l	$E80D001A,$DFFF0,$F8090008,$4FFF8
		dc.l	$805000E,$7FFF8
loc_292E8:
		dc.w	$1
		dc.l	$F801002A,$15FFFC
loc_292F2:
		dc.w	$1
		dc.l	$F801002C,$16FFFC
loc_292FC:
		dc.w	$1
		dc.l	$F801002E,$17FFFC
loc_29306:
		dc.w	$1
		dc.l	$F80D0030,$18FFF0	
;=============================================================================== 
; Object 0x50 - Oil Ocean - Aquis (Seahorse)	
; [ End ]	
;===============================================================================	