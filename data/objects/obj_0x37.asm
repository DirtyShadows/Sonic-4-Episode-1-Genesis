;=============================================================================== 
; Object 0x37 - Rings flying out of you when you get hit 
; [ Begin ]
;=============================================================================== 
loc_FD6A:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_FD78(pc,d0),d1
		jmp	loc_FD78(pc,d1)
loc_FD78:
		dc.w	loc_FD82-loc_FD78
		dc.w	loc_FE6A-loc_FD78
		dc.w	loc_FECC-loc_FD78
		dc.w	loc_FEE0-loc_FD78
		dc.w	loc_FEEE-loc_FD78
loc_FD82:
		move.l	a0,a1
		moveq	#0,d5
		move.w	($FFFFFE20).w,d5
		tst.b	$3F(a0)
		beq.s	loc_FD94
		move.w	($FFFFFED0).w,d5
loc_FD94:
		moveq	#$20,d0
		cmp.w	d0,d5
		bcs.s	loc_FD9C
		move.w	d0,d5
loc_FD9C:
		subq.w	#1,d5
		move.w	#$288,d4
		bra.s	loc_FDAC
loc_FDA4:	
		bsr	SingleObjectLoad	
		bne	loc_FE34
loc_FDAC:
		move.b	#$37,0(a1)
		addq.b	#2,$24(a1)
		move.b	#8,$16(a1)
		move.b	#8,$17(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.l	#Rings_Mappings,4(a1) 
		move.w	#$26BC,2(a1)
		bsr	Modify_A1_SpriteAttr_2P 
		move.b	#$84,1(a1)
		move.b	#3,$18(a1)
		move.b	#$47,$20(a1)
		move.b	#8,$19(a1)
		move.b	#$FF,($FFFFFEA6).w
		tst.w	d4
		bmi.s	loc_FE24
		move.w	d4,d0
		bsr	loc_102D8
		move.w	d4,d2
		lsr.w	#8,d2
		asl.w	d2,d0
		asl.w	d2,d1
		move.w	d0,d2
		move.w	d1,d3
		add.b	#$10,d4
		bcc.s	loc_FE24
		sub.w	#$80,d4
		bcc.s	loc_FE24
		move.w	#$288,d4
loc_FE24:
		move.w	d2,$10(a1)
		move.w	d3,$12(a1)
		neg.w	d2
		neg.w	d4
		dbra	d5,loc_FDA4
loc_FE34:
		move.w	#$C6,d0
		jsr	Play_Unknow	
		tst.b	$3F(a0)
		bne.s	loc_FE58
		move.w	#0,($FFFFFE20).w
		move.b	#$80,($FFFFFE1D).w
		move.b	#0,($FFFFFE1B).w
		bra.s	loc_FE6A
loc_FE58:
		move.w	#0,($FFFFFED0).w
		move.b	#$80,($FFFFFEC9).w
		move.b	#0,($FFFFFEC7).w
loc_FE6A:
		move.b	($FFFFFEA7).w,$1A(a0)
		bsr	SpeedToPos	
		add.w	#$18,$12(a0)
		bmi.s	loc_FEAA
		move.b	($FFFFFE0F).w,d0
		add.b	d7,d0
		and.b	#7,d0
		bne.s	loc_FEAA
		tst.b	1(a0)
		bpl.s	loc_FEC2
		jsr	(loc_1ACEE)
		tst.w	d1
		bpl.s	loc_FEAA
		add.w	d1,$C(a0)
		move.w	$12(a0),d0
		asr.w	#2,d0
		sub.w	d0,$12(a0)
		neg.w	$12(a0)
loc_FEAA:
		tst.b	($FFFFFEA6).w
		beq.s	loc_FEEE
		move.w	($FFFFEECE).w,d0
		add.w	#$E0,d0
		cmp.w	$C(a0),d0
		bcs.s	loc_FEEE
		bra	displaySprite	
loc_FEC2:
		tst.w	($FFFFFFD8).w
		bne	loc_FEEE
		bra.s	loc_FEAA
loc_FECC:
		addq.b	#2,$24(a0)
		move.b	#0,$20(a0)
		move.b	#1,$18(a0)
		bsr	loc_FCD6
loc_FEE0:	
		lea	(Rings_Animate_Data),a1 
		bsr	animateSprite	
		bra	displaySprite	
loc_FEEE:
		bra	deleteObject	
;=============================================================================== 
; Object 0x37 - Rings flying out of you when you get hit 
; [ End ]
;=============================================================================== 
