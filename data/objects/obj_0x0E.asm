;===============================================================================
; Object 0x0E Sonic And Miles In Title Screen
; [ Begin ]
;===============================================================================	
loc_109D4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	Sonic_Miles_Index(pc,d0),d1 
		jmp	Sonic_Miles_Index(pc,d1)	
Sonic_Miles_Index: 
		dc.w	loc_109EA-Sonic_Miles_Index
		dc.w	loc_10A2C-Sonic_Miles_Index
		dc.w	loc_10A40-Sonic_Miles_Index
		dc.w	loc_10A56-Sonic_Miles_Index
loc_109EA:
		addq.b	#2,$24(a0)
		move.w	#$148,8(a0)
		move.w	#$C4,$A(a0)
		move.l	#Sonic_Miles_Mappings,4(a0) 
		move.w	#$4200,2(a0)
		move.b	#1,$18(a0)
		move.b	#$1D,$1F(a0)
		tst.b	$1A(a0)
		beq.s	loc_10A2C
		move.w	#$FC,8(a0)
		move.w	#$CC,$A(a0)
		move.w	#$2200,2(a0)
loc_10A2C:
		bra	displaySprite	
		subq.b	#1,$1F(a0)
		bpl.s	loc_10A3E
		addq.b	#2,$24(a0)
		bra	displaySprite	
loc_10A3E:
		rts
loc_10A40:
		sub.w	#8,$A(a0)
		cmp.w	#$96,$A(a0)
		bne.s	loc_10A52
		addq.b	#2,$24(a0)
loc_10A52:
		bra	displaySprite	
loc_10A56:
		bra	displaySprite	
;===============================================================================
; Object 0x0E Sonic And Miles In Title Screen
; [ End ]
;===============================================================================