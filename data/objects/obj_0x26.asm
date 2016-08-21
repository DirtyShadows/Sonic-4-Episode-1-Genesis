;=============================================================================== 
; Object 0x26 - Monitors 
; [ Begin ]
;=============================================================================== 
loc_102E0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_102EE(pc,d0),d1
		jmp	loc_102EE(pc,d1)
loc_102EE:
		dc.w	loc_102F8-loc_102EE
		dc.w	loc_1036A-loc_102EE
		dc.w	loc_1042C-loc_102EE
		dc.w	loc_103B8-loc_102EE
		dc.w	loc_103C2-loc_102EE
loc_102F8:
		addq.b	#2,$24(a0)
		move.b	#$E,$16(a0)
		move.b	#$E,$17(a0)
		move.l	#Monitors_Mappings,4(a0) 
		move.w	#$680,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.b	#$F,$19(a0)
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		bclr	#7,2(a2,d0)
		btst	#0,2(a2,d0)
		beq.s	loc_10352
		move.b	#8,$24(a0)
		move.b	#$B,$1A(a0)
		rts
loc_10352:
		move.b	#$46,$20(a0)
		move.b	$28(a0),$1C(a0)
		tst.w	($FFFFFFD8).w
		beq.s	loc_1036A
		move.b	#9,$1C(a0)
loc_1036A:
		move.b	$25(a0),d0
		beq.s	loc_1038C
		bsr	ObjectFall	
		jsr	ObjHitFloor	
		tst.w	d1
		bpl	loc_1038C
		add.w	d1,$C(a0)
		clr.w	$12(a0)
		clr.b	$25(a0)
loc_1038C:
		move.w	#$1A,d1
		move.w	#$F,d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_103C6
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_103D8
loc_103B8:
		lea	(Monitors_AnimateData),a1 
		bsr	animateSprite	
loc_103C2:
		bra	MarkObjGone	
loc_103C6:
		btst	d6,$22(a0)
		bne.s	loc_103F2
		cmp.b	#2,$1C(a1)
		bne	loc_15A34
		rts
loc_103D8:
		btst	d6,$22(a0)
		bne.s	loc_103F2
		tst.w	($FFFFFFD8).w
		beq	loc_15A34
		cmp.b	#2,$1C(a1)
		bne	loc_15A34
		rts
loc_103F2:
		move.w	d1,d2
		add.w	d2,d2
		btst	#1,$22(a1)
		bne.s	loc_1040E
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	d1,d0
		bmi.s	loc_1040E
		cmp.w	d2,d0
		bcs.s	loc_10422
loc_1040E:
		bclr	#3,$22(a1)
		bset	#1,$22(a1)
		bclr	d6,$22(a0)
		moveq	#0,d4
		rts
loc_10422:
		move.w	d4,d2
		bsr	loc_15BCA
		moveq	#0,d4
		rts
loc_1042C:
		move.b	$22(a0),d0
		and.b	#$78,d0
		beq.s	loc_1045C
		move.b	d0,d1
		and.b	#$28,d1
		beq.s	loc_1044A
		and.b	#$D7,($FFFFB022).w
		or.b	#2,($FFFFB022).w
loc_1044A:
		and.b	#$50,d0
		beq.s	loc_1045C
		and.b	#$D7,($FFFFB062).w
		or.b	#2,($FFFFB062).w
loc_1045C:
		clr.b	$22(a0)
		addq.b	#2,$24(a0)
		move.b	#0,$20(a0)
		bsr	SingleObjectLoad	
		bne.s	loc_1048E
		move.b	#$2E,0(a1)	; Call Monitor Contents
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	$1C(a0),$1C(a1)
		move.w	$3E(a0),$3E(a1)
loc_1048E:
		bsr	SingleObjectLoad	
		bne.s	loc_104AA
		move.b	#$27,0(a1)	; Call Monitor Hit
		addq.b	#2,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
loc_104AA:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		bset	#0,2(a2,d0)
		move.b	#$A,$1C(a0)
		bra	displaySprite	
;=============================================================================== 
; Object 0x26 - Monitors 
; [ End ]
;=============================================================================== 