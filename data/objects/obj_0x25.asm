;===============================================================================
; Object 0x25 - Rings - Only used in debug mode ( Left Over From Sonic 1 ???? )
; [ Begin ]
;===============================================================================	
loc_FC58:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_FC66(pc,d0),d1
		jmp	loc_FC66(pc,d1)
loc_FC66:
		dc.w	loc_FC70-loc_FC66
		dc.w	loc_FCA4-loc_FC66
		dc.w	loc_FCB2-loc_FC66
		dc.w	loc_FCC4-loc_FC66
		dc.w	loc_FCD2-loc_FC66
loc_FC70:
		addq.b	#2,$24(a0)
		move.w	8(a0),$32(a0)
		move.l	#Rings_Mappings,4(a0) 
		move.w	#$26BC,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#2,$18(a0)
		move.b	#$47,$20(a0)
		move.b	#8,$19(a0)
loc_FCA4:
		move.b	($FFFFFEA3).w,$1A(a0)
		move.w	$32(a0),d0
		bra	loc_12D4C
loc_FCB2:
		addq.b	#2,$24(a0)
		move.b	#0,$20(a0)
		move.b	#1,$18(a0)
		bsr.s	loc_FCD6
loc_FCC4:
		lea	(Rings_Animate_Data),a1 
		bsr	animateSprite	
		bra	displaySprite	
loc_FCD2:
		bra	deleteObject	
;===============================================================================
; Object 0x25 - Rings - Only used in debug mode ( Left Over From Sonic 1 ???? )
; [ End ]
;===============================================================================