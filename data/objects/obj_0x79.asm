;=============================================================================== 
; Object 0x79 - Star Post
; [ Begin ]
;===============================================================================
loc_1AF4C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1AF5A(pc,d0),d1
		jmp	loc_1AF5A(pc,d1)	
loc_1AF5A:
		dc.w	loc_1AF64-loc_1AF5A
		dc.w	loc_1AFC4-loc_1AF5A
		dc.w	loc_1B0C0-loc_1AF5A
		dc.w	loc_1B0D0-loc_1AF5A
		dc.w	loc_1B3CC-loc_1AF5A
loc_1AF64:
		addq.b	#2,$24(a0)
		move.l	#Star_Post_Mappings,4(a0) 
		move.w	#$47C,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#8,$19(a0)
		move.b	#5,$18(a0)
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		bclr	#7,2(a2,d0)
		btst	#0,2(a2,d0)
		bne.s	loc_1AFB8
		move.b	($FFFFFE30).w,d1
		and.b	#$7F,d1
		move.b	$28(a0),d2
		and.b	#$7F,d2
		cmp.b	d2,d1
		bcs.s	loc_1AFC4
loc_1AFB8:
		bset	#0,2(a2,d0)
		move.b	#2,$1C(a0)
loc_1AFC4:
		tst.w	($FFFFFE08).w
		bne	loc_1B0C0
		lea	($FFFFB000).w,a3
		move.b	($FFFFFE30).w,d1
		bsr.s	loc_1AFEC
		tst.w	($FFFFFFD8).w
		beq	loc_1B0C0
		lea	($FFFFB040).w,a3
		move.b	($FFFFFEE0).w,d1
		bsr.s	loc_1AFEC
		bra	loc_1B0C0
loc_1AFEC:
		and.b	#$7F,d1
		move.b	$28(a0),d2
		and.b	#$7F,d2
		cmp.b	d2,d1
		bcc	loc_1B0B2
		move.w	8(a3),d0
		sub.w	8(a0),d0
		add.w	#8,d0
		cmp.w	#$10,d0
		bcc	loc_1B0B0
		move.w	$C(a3),d0
		sub.w	$C(a0),d0
		add.w	#$40,d0
		cmp.w	#$68,d0
		bcc	loc_1B0B0
		move.w	#$A1,d0
		jsr	Play_Sfx	
		jsr	SingleObjectLoad	
		bne.s	loc_1B096
		move.b	#$79,0(a1)
		move.b	#6,$24(a1)
		move.w	8(a0),$30(a1)
		move.w	$C(a0),$32(a1)
		sub.w	#$14,$32(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	#4,1(a1)
		move.b	#8,$19(a1)
		move.b	#4,$18(a1)
		move.b	#2,$1A(a1)
		move.w	#$20,$36(a1)
		move.w	a0,$3E(a1)
		tst.w	($FFFFFFD8).w
		bne.s	loc_1B096
		cmp.w	#$32,($FFFFFE20).w
		bcs.s	loc_1B096
		bsr	loc_1B354
loc_1B096:
		move.b	#1,$1C(a0)
		bsr	Star_Post_Save_Info	
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		bset	#0,2(a2,d0)
loc_1B0B0:
		rts
loc_1B0B2:
		tst.b	$1C(a0)
		bne.s	loc_1B0BE
		move.b	#2,$1C(a0)
loc_1B0BE:
		rts
loc_1B0C0:
		lea	(Star_Post_Animate_Data),a1 
		bsr	loc_1B4A2
		jmp	MarkObjGone	
loc_1B0D0:
		subq.w	#1,$36(a0)
		bpl.s	loc_1B0F2
		move.w	$3E(a0),a1
		cmp.b	#$79,(a1)
		bne.s	loc_1B0EC
		move.b	#2,$1C(a1)
		move.b	#0,$1A(a1)
loc_1B0EC:
		jmp	deleteObject	
loc_1B0F2:
		move.b	$26(a0),d0
		sub.b	#$10,$26(a0)
		sub.b	#$40,d0
		jsr	CalcSine	
		muls.w	#$C00,d1
		swap.w	d1
		add.w	$30(a0),d1
		move.w	d1,8(a0)
		muls.w	#$C00,d0
		swap.w	d0
		add.w	$32(a0),d0
		move.w	d0,$C(a0)
		jmp	MarkObjGone	
;===============================================================================
; Sub Routine - Star_Post_Save_Info
; [ Begin ]
;===============================================================================	
Star_Post_Save_Info: 
		cmpa.w	#$B000,a3
		bne	loc_1B1B6
		move.b	$28(a0),($FFFFFE30).w
		move.b	($FFFFFE30).w,($FFFFFE31).w
		move.w	8(a0),($FFFFFE32).w
		move.w	$C(a0),($FFFFFE34).w
		move.w	($FFFFB002).w,($FFFFFE3C).w
		move.w	($FFFFB03E).w,($FFFFFE3E).w
		move.w	($FFFFFE20).w,($FFFFFE36).w
		move.b	($FFFFFE1B).w,($FFFFFE54).w
		move.l	($FFFFFE22).w,($FFFFFE38).w
		move.b	($FFFFEEDF).w,($FFFFFE58).w
		move.w	($FFFFEECE).w,($FFFFFE56).w
		move.w	($FFFFEE00).w,($FFFFFE40).w
		move.w	($FFFFEE04).w,($FFFFFE42).w
		move.w	($FFFFEE08).w,($FFFFFE44).w
		move.w	($FFFFEE0C).w,($FFFFFE46).w
		move.w	($FFFFEE10).w,($FFFFFE48).w
		move.w	($FFFFEE14).w,($FFFFFE4A).w
		move.w	($FFFFEE18).w,($FFFFFE4C).w
		move.w	($FFFFEE1C).w,($FFFFFE4E).w
		move.w	($FFFFF648).w,($FFFFFE50).w
		move.b	($FFFFF64D).w,($FFFFFE52).w
		move.b	($FFFFF64E).w,($FFFFFE53).w
		rts
loc_1B1B6:
		move.b	$28(a0),($FFFFFEE0).w
		move.b	($FFFFFEE0).w,($FFFFFEE1).w
		move.w	8(a0),($FFFFFEE2).w
		move.w	$C(a0),($FFFFFEE4).w
		move.w	($FFFFB042).w,($FFFFFEEC).w
		move.w	($FFFFB07E).w,($FFFFFEEE).w
		move.w	($FFFFFED0).w,($FFFFFEE6).w
		move.b	($FFFFFEC7).w,($FFFFFE55).w
		move.l	($FFFFFED2).w,($FFFFFEE8).w
		rts
;===============================================================================
; Sub Routine - Star_Post_Save_Info
; [ End ]
;===============================================================================
	
;===============================================================================
; Sub Routine - Star_Post_Load_Info
; [ Begin ]
;===============================================================================	
Star_Post_Load_Info: 
		move.b	($FFFFFE31).w,($FFFFFE30).w
		move.w	($FFFFFE32).w,($FFFFB008).w
		move.w	($FFFFFE34).w,($FFFFB00C).w
		move.w	($FFFFFE36).w,($FFFFFE20).w
		move.b	($FFFFFE54).w,($FFFFFE1B).w
		clr.w	($FFFFFE20).w
		clr.b	($FFFFFE1B).w
		move.l	($FFFFFE38).w,($FFFFFE22).w
		move.b	#$3B,($FFFFFE25).w
		subq.b	#1,($FFFFFE24).w
		move.w	($FFFFFE3C).w,($FFFFB002).w
		move.w	($FFFFFE3E).w,($FFFFB03E).w
		move.b	($FFFFFE58).w,($FFFFEEDF).w
		move.b	($FFFFFE52).w,($FFFFF64D).w
		move.w	($FFFFFE56).w,($FFFFEECE).w
		move.w	($FFFFFE56).w,($FFFFEEC6).w
		move.w	($FFFFFE40).w,($FFFFEE00).w
		move.w	($FFFFFE42).w,($FFFFEE04).w
		move.w	($FFFFFE44).w,($FFFFEE08).w
		move.w	($FFFFFE46).w,($FFFFEE0C).w
		move.w	($FFFFFE48).w,($FFFFEE10).w
		move.w	($FFFFFE4A).w,($FFFFEE14).w
		move.w	($FFFFFE4C).w,($FFFFEE18).w
		move.w	($FFFFFE4E).w,($FFFFEE1C).w
		tst.b	($FFFFF730).w
		beq.s	loc_1B290
		move.w	($FFFFFE50).w,($FFFFF648).w
		move.b	($FFFFFE52).w,($FFFFF64D).w
		move.b	($FFFFFE53).w,($FFFFF64E).w
loc_1B290:
		tst.b	($FFFFFE30).w
		bpl.s	loc_1B2A2
		move.w	($FFFFFE32).w,d0
		sub.w	#$A0,d0
		move.w	d0,($FFFFEEC8).w
loc_1B2A2:
		rts	
;===============================================================================
; Sub Routine - Star_Post_Load_Info
; [ End ]
;===============================================================================	

Star_Post_Animate_Data: 
		dc.w	loc_1B2AA-Star_Post_Animate_Data
		dc.w	loc_1B2AD-Star_Post_Animate_Data
		dc.w	loc_1B2B0-Star_Post_Animate_Data
loc_1B2AA:
		dc.b	$F,0,$FF
loc_1B2AD:
		dc.b	$F,1,$FF
loc_1B2B0:
		dc.b	3,0,4,$FF
;-------------------------------------------------------------------------------	
Star_Post_Mappings: 
		dc.w	loc_1B2BE-Star_Post_Mappings
		dc.w	loc_1B2E0-Star_Post_Mappings
		dc.w	loc_1B2FA-Star_Post_Mappings
		dc.w	loc_1B304-Star_Post_Mappings
		dc.w	loc_1B30E-Star_Post_Mappings
loc_1B2BE:
		dc.w	$4
		dc.l	$E8012004,$2002FFFC,$F8032006,$2003FFF8
		dc.l	$F8032806,$28030000,$D8050000,$FFF8
loc_1B2E0:
		dc.w	$3
		dc.l	$E8012004,$2002FFFC,$F8032006,$2003FFF8
		dc.l	$F8032806,$28030000
loc_1B2FA:
		dc.w	$1
		dc.l	$F8050000,$FFF8
loc_1B304:
		dc.w	$1
		dc.l	$F8052000,$2000FFF8
loc_1B30E:
		dc.w	$4
		dc.l	$E8012004,$2002FFFC,$F8032006,$2003FFF8
		dc.l	$F8032806,$28030000,$D8052000,$2000FFF8
;-------------------------------------------------------------------------------
Star_Post_Stars_Mappings: 
		dc.w	loc_1B336-Star_Post_Stars_Mappings
		dc.w	loc_1B340-Star_Post_Stars_Mappings
		dc.w	loc_1B34A-Star_Post_Stars_Mappings
loc_1B336:
		dc.w	$1
		dc.l	$F805000A,$5FFF8
loc_1B340:
		dc.w	$1
		dc.l	$FC00000E,$7FFFC
loc_1B34A:
		dc.w	$1
		dc.l	$FC00000F,$7FFFC
;-------------------------------------------------------------------------------
loc_1B354:
		moveq	#3,d1
		moveq	#0,d2
loc_1B358:	
		bsr	S1SingleObjectLoad	
		bne.s	loc_1B3CA
		move.b	0(a0),0(a1)
		move.l	#Star_Post_Stars_Mappings,4(a1) 
		move.w	#$47C,2(a1)
		move.b	#4,1(a1)
		move.b	#8,$24(a1)
		move.w	8(a0),d0
		move.w	d0,8(a1)
		move.w	d0,$30(a1)
		move.w	$C(a0),d0
		sub.w	#$30,d0
		move.w	d0,$C(a1)
		move.w	d0,$32(a1)
		move.b	$18(a0),$18(a1)
		move.b	#8,$19(a1)
		move.b	#1,$1A(a1)
		move.w	#$FC00,$10(a1)
		move.w	#0,$12(a1)
		move.w	d2,$34(a1)
		move.b	#$D8,$20(a1)
		add.w	#$40,d2
		dbra	d1,loc_1B358
loc_1B3CA:
		rts
loc_1B3CC:
		move.b	$21(a0),d0
		beq	loc_1B3EA
		and.b	#1,d0
		beq.s	loc_1B3E6
		move.b	#1,($FFFFF7CD).w
		move.b	#$10,($FFFFF600).w
loc_1B3E6:
		clr.b	$21(a0)
loc_1B3EA:
		add.w	#$A,$34(a0)
		move.w	$34(a0),d0
		and.w	#$FF,d0
		jsr	CalcSine	
		asr.w	#5,d0
		asr.w	#4,d1
		move.w	d1,d3
		move.w	$34(a0),d2
		and.w	#$7C0,d2
		lsr.w	#5,d2
		moveq	#2,d5
		moveq	#0,d4
		cmp.w	#$10,d2
		ble.s	loc_1B41A
		neg.w	d1
loc_1B41A:
		and.w	#$F,d2
		cmp.w	#8,d2
		ble.s	loc_1B42A
		neg.w	d2
		and.w	#7,d2
loc_1B42A:
		lsr.w	#1,d2
		beq.s	loc_1B430
		add.w	d1,d4
loc_1B430:
		asl.w	#1,d1
		dbra	d5,loc_1B42A
		asr.w	#3,d4
		add.w	d4,d0
		addq.w	#1,$36(a0)
		move.w	$36(a0),d1
		cmp.w	#$40,d1
		bge.s	loc_1B452
loc_1B448:
		muls.w	d1,d0
		muls.w	d1,d3
		asr.w	#5,d0
		asr.w	#5,d3
		bra.s	loc_1B464
loc_1B452:
		cmp.w	#$1C0,d1
		ble.s	loc_1B464
		neg.w	d1
		add.w	#$200,d1
		bmi	loc_1B496
		bra.s	loc_1B448
loc_1B464:
		move.w	$30(a0),d2
		add.w	d3,d2
		move.w	d2,8(a0)
		move.w	$32(a0),d2
		add.w	d0,d2
		move.w	d2,$C(a0)
		addq.b	#1,$1B(a0)
		move.b	$1B(a0),d0
		and.w	#6,d0
		lsr.w	#1,d0
		cmp.b	#3,d0
		bne.s	loc_1B48E
		moveq	#1,d0
loc_1B48E:
		move.b	d0,$1A(a0)
		bra	loc_1B49C	
;=============================================================================== 
; Object 0x79 - Star Post
; [ End ]
;===============================================================================	