;=============================================================================== 
; Object 0x12 - Hidden Palace - Master Emerald 
; [ Begin ]	
;===============================================================================
loc_1C158:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1C166(pc,d0),d1
		jmp	loc_1C166(pc,d1)
loc_1C166:
		dc.w	loc_1C16A-loc_1C166
		dc.w	loc_1C192-loc_1C166
loc_1C16A:	
		addq.b	#2,$24(a0)
		move.l	#Master_Emerald_Mappings,4(a0) 
		move.w	#$6392,2(a0)
		bsr	loc_1C1E0
		move.b	#4,1(a0)
		move.b	#$20,$19(a0)
		move.b	#4,$18(a0)
loc_1C192:	
		move.w	#$20,d1
		move.w	#$10,d2
		move.w	#$10,d3
		move.w	8(a0),d4
		bsr	SolidObject	
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_1C1DA
		bra	J_DisplaySprite_03	
;------------------------------------------------------------------------------- 
Master_Emerald_Mappings: 
		dc.w	loc_1C1C0-Master_Emerald_Mappings
loc_1C1C0:
		dc.w	$2
		dc.l	$F00F0000,$FFE0,$F00F0010,$80000	
;=============================================================================== 
; Object 0x12 - Hidden Palace - Master Emerald 
; [ End ]	
;===============================================================================	