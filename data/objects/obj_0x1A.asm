;=============================================================================== 
; Object 0x1A - Collapsing Platforms - Hidden Palace / Oil Ocean ...
; [ Begin ]
;=============================================================================== 
loc_E5E4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_E5F2(pc,d0),d1
		jmp	loc_E5F2(pc,d1)
loc_E5F2:
		dc.w	loc_E5F8-loc_E5F2
		dc.w	loc_E6A4-loc_E5F2
		dc.w	loc_E6DC-loc_E5F2
loc_E5F8:
		addq.b	#2,$24(a0)
		move.l	#Collapsing_Platforms_Mappings_1A,4(a0) 
		move.w	#$4000,2(a0)
		bsr	ModifySpriteAttr_2P	
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.b	#7,$38(a0)
		move.b	$28(a0),$1A(a0)
		move.l	#loc_E91A,$34(a0)
		cmp.b	#8,($FFFFFE10).w
		bne.s	loc_E660
		move.l	#HPz_Collapsing_Platforms_Mappings,4(a0) 
		move.w	#$434A,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#$30,$19(a0)
		move.l	#loc_ED14,$3C(a0)
		move.l	#loc_E933,$34(a0)
		bra.s	loc_E6A4
loc_E660:
		cmp.b	#$A,($FFFFFE10).w
		bne.s	loc_E68A
		move.l	#OOz_Collapsing_Platforms_Mappings,4(a0) 
		move.w	#$639D,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#$40,$19(a0)
		move.l	#loc_ED04,$3C(a0)
		bra.s	loc_E6A4
loc_E68A:
		move.l	#loc_E964,$3C(a0)
		move.b	#$34,$19(a0)
		move.b	#$38,$16(a0)
		bset	#4,1(a0)
loc_E6A4:
		tst.b	$3A(a0)
		beq.s	loc_E6B6
		tst.b	$38(a0)
		beq	loc_E890
		subq.b	#1,$38(a0)
loc_E6B6:
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_E6C6
		move.b	#1,$3A(a0)
loc_E6C6:
		moveq	#0,d1
		move.b	$19(a0),d1
		move.l	$3C(a0),a2
		move.w	8(a0),d4
		bsr	loc_15CC2
		bra	MarkObjGone	
loc_E6DC:
		tst.b	$38(a0)
		beq.s	loc_E720
		tst.b	$3A(a0)
		bne.s	loc_E6F0
		subq.b	#1,$38(a0)
		bra	displaySprite	
loc_E6F0:
		bsr	loc_E6C6
		subq.b	#1,$38(a0)
		bne.s	loc_E71E
		lea	($FFFFB000).w,a1
		bsr.s	loc_E704
		lea	($FFFFB040).w,a1
loc_E704:
		btst	#3,$22(a1)
		beq.s	loc_E71E
		bclr	#3,$22(a1)
		bclr	#5,$22(a1)
		move.b	#1,$1D(a1)
loc_E71E:
		rts
loc_E720:
		bsr	ObjectFall	
		tst.b	1(a0)
		bpl	deleteObject	
		bra	displaySprite	
;=============================================================================== 
; Object 0x1A - Collapsing Platforms - Hidden Palace / Oil Ocean ...
; [ End ]
;===============================================================================	