;===============================================================================
; Object 0x5E - Head up Display - Special Stage 
; [ Begin ]
;===============================================================================	
loc_7BBC:
		move.b	$24(a0),d0
		bne.s	loc_7BF6
		moveq	#0,d1
		tst.b	($FFFFFE00).w
		beq.s	loc_7BCC
		addq.w	#1,d1
loc_7BCC:
		move.w	#$80,8(a0)
		move.l	#SS_Head_Up_Display_Mappings,4(a0) 
		move.w	#$1FA,2(a0)
		move.b	#4,1(a0)
		move.b	#0,$18(a0)
		move.b	#1,$24(a0)
		move.b	d1,$1A(a0)
loc_7BF6:
		bra	J_DisplaySprite_00	
		rts	
;-------------------------------------------------------------------------------
SS_Head_Up_Display_Mappings: 
		dc.w	loc_7C00-SS_Head_Up_Display_Mappings
		dc.w	loc_7C52-SS_Head_Up_Display_Mappings
loc_7C00:
		dc.w	$A
		dc.l	$100CA000,$A000FFA0,$1000A004,$A002FFC0
		dc.l	$100CC005,$C0020038,$1000C009,$C0040058
		dc.l	$180DC00A,$C005FF98,$1801C03C,$C01EFFB8
		dc.l	$180DC00A,$C0050030,$1801C03C,$C01E0050
		dc.l	$100FC026,$C013FFEC,$1003C036,$C01B000C
loc_7C52:
		dc.w	$8
		dc.l	$100CA000,$A000FFA0,$1000A004,$A002FFC0
		dc.l	$100CC005,$C0020038,$1000C009,$C0040058
		dc.l	$180DC00A,$C005FF98,$1801C03C,$C01EFFB8
		dc.l	$180DC00A,$C0050030,$1801C03C,$C01E0050	
;===============================================================================
; Object 0x5E - Head up Display - Special Stage 
; [ End ]
;===============================================================================