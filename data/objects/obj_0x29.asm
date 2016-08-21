;=============================================================================== 
; Object 0x29 - Enemy Points
; [ Begin ]
;===============================================================================
loc_FADA:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_FAE8(pc,d0),d1
		jmp	loc_FAE8(pc,d1)
loc_FAE8:
		dc.w	loc_FAEC-loc_FAE8
		dc.w	loc_FB1A-loc_FAE8
loc_FAEC:
		addq.b	#2,$24(a0)
		move.l	#Enemy_Points_Mappings,4(a0) 
		move.w	#$4AC,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#1,$18(a0)
		move.b	#8,$19(a0)
		move.w	#$FD00,$12(a0)
loc_FB1A:
		tst.w	$12(a0)
		bpl	deleteObject	
		bsr	SpeedToPos	
		add.w	#$18,$12(a0)
		bra	displaySprite	
;=============================================================================== 
; Object 0x29 - Enemy Points 
; [ End ]
;===============================================================================	