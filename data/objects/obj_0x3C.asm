;===============================================================================
; Object 0x3C
; [ Begin ]
;===============================================================================	
loc_1269C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_126AE(pc,d0),d1
		jsr	loc_126AE(pc,d1)
		bra	MarkObjGone	
loc_126AE:
		dc.w	loc_126B4-loc_126AE
		dc.w	loc_126E2-loc_126AE
		dc.w	loc_1275A-loc_126AE
loc_126B4:
		addq.b	#2,$24(a0)
		move.l	#Obj_0x3C_Mappings,4(a0) 
		move.w	#$4590,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		move.b	$28(a0),$1A(a0)
loc_126E2:
		move.w	($FFFFB010).w,$30(a0)
		move.w	#$1B,d1
		move.w	#$20,d2
		move.w	#$20,d3
		move.w	8(a0),d4
		bsr	SolidObject	
		btst	#5,$22(a0)
		bne.s	loc_12706
loc_12704:	
		rts
loc_12706:
		lea	($FFFFB000).w,a1
		cmp.b	#2,$1C(a1)
		bne.s	loc_12704
		move.w	$30(a0),d0
		bpl.s	loc_1271A
		neg.w	d0
loc_1271A:
		cmp.w	#$480,d0
		bcs.s	loc_12704
		move.w	$30(a0),$10(a1)
		addq.w	#4,8(a1)
		lea	(loc_127E4),a4
		move.w	8(a0),d0
		cmp.w	8(a1),d0
		bcs.s	loc_12746
		sub.w	#8,8(a1)
		lea	(loc_12804),a4
loc_12746:
		move.w	$10(a1),$14(a1)
		bclr	#5,$22(a0)
		bclr	#5,$22(a1)
		bsr.s	loc_12770
loc_1275A:
		bsr	SpeedToPos	
		add.w	#$70,$12(a0)
		tst.b	1(a0)
		bpl	deleteObject	
		bra	displaySprite	
;===============================================================================
; Object 0x3C
; [ End ]
;===============================================================================