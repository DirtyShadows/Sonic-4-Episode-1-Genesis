;===============================================================================
; Object 0x3B
; [ Begin ]
;===============================================================================	
loc_12620:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1262E(pc,d0),d1
		jmp	loc_1262E(pc,d1)
loc_1262E:
		dc.w	loc_12632-loc_1262E
		dc.w	loc_1265A-loc_1262E
loc_12632:
		addq.b	#2,$24(a0)
		move.l	#Obj_0x3B_Mappings,4(a0) 
		move.w	#$66C0,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#$13,$19(a0)
		move.b	#4,$18(a0)
loc_1265A:
		move.w	#$1B,d1
		move.w	#$10,d2
		move.w	#$10,d3
		move.w	8(a0),d4
		bsr	SolidObject	
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	deleteObject	
		bra	displaySprite	
;------------------------------------------------------------------------------- 
Obj_0x3B_Mappings: 
		dc.w	loc_12688-Obj_0x3B_Mappings
loc_12688:
		dc.w	$2
		dc.l	$F00B0000,$FFE8,$F00B000C,$60000	
;===============================================================================
; Object 0x3B
; [ End ]
;===============================================================================