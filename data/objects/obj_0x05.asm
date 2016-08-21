;===============================================================================
; Object 0x05 - Miles "Tail"
; [ Begin ]
;===============================================================================	

loc_18E1E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_18E2C(pc,d0),d1
		jmp	loc_18E2C(pc,d1)
loc_18E2C:
		dc.w	loc_18E30-loc_18E2C
		dc.w	loc_18E58-loc_18E2C
loc_18E30:
		addq.b	#2,$24(a0)
		move.l	#Miles_Mappings,4(a0) 
		move.w	#$7B0,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#2,$18(a0)
		move.b	#$18,$19(a0)
		move.b	#4,1(a0)
loc_18E58:
		move.w	$3E(a0),a2
		move.b	$26(a2),$26(a0)
		move.b	$22(a2),$22(a0)
		move.w	8(a2),8(a0)
		move.w	$C(a2),$C(a0)
		and.w	#$7FFF,2(a0)
		tst.w	2(a2)
		bpl.s	loc_18E86
		or.w	#$8000,2(a0)
loc_18E86:
		moveq	#0,d0
		move.b	$1C(a2),d0
		btst	#5,$22(a2)
		beq.s	loc_18E96
		moveq	#4,d0
loc_18E96:
		cmp.b	$30(a0),d0
		
		beq.s	loc_18EA6
		move.b	d0,$30(a0)
		move.b	loc_18EBC(pc,d0),$1C(a0)
loc_18EA6:
		lea	(Miles_Tail_AnimateData),a1 
		bsr	loc_189E8
		bsr	Load_Miles_Tail_Dynamic_PLC 
		jsr	displaySprite	
		rts	
loc_18EBC:
		dc.b	0,0,3,3,9,1,0,2,1,7,0,0,0,8,0,$0
		dc.b	0,0,0,0,$A,0,0,0,0,0,0,0,0,0,0,$0
		dc.b	0,$0
Miles_Tail_AnimateData: 
		dc.w	loc_18EF4-Miles_Tail_AnimateData
		dc.w	loc_18EF7-Miles_Tail_AnimateData
		dc.w	loc_18EFE-Miles_Tail_AnimateData
		dc.w	loc_18F06-Miles_Tail_AnimateData
		dc.w	loc_18F0C-Miles_Tail_AnimateData
		dc.w	loc_18F12-Miles_Tail_AnimateData
		dc.w	loc_18F18-Miles_Tail_AnimateData
		dc.w	loc_18F1E-Miles_Tail_AnimateData
		dc.w	loc_18F24-Miles_Tail_AnimateData
		dc.w	loc_18F2A-Miles_Tail_AnimateData
		dc.w	loc_18F30-Miles_Tail_AnimateData
loc_18EF4:
		dc.b	$20,0,$FF
loc_18EF7:
		dc.b	7,9,$A,$B,$C,$D,$FF
loc_18EFE:
		dc.b	3,9,$A,$B,$C,$D,$FD,$1
loc_18F06:
		dc.b	$FC,$49,$4A,$4B,$4C,$FF
loc_18F0C:
		dc.b	3,$4D,$4E,$4F,$50,$FF
loc_18F12:
		dc.b	3,$51,$52,$53,$54,$FF
loc_18F18:
		dc.b	3,$55,$56,$57,$58,$FF
loc_18F1E:
		dc.b	2,$81,$82,$83,$84,$FF
loc_18F24:
		dc.b	2,$87,$88,$89,$8A,$FF
loc_18F2A:
		dc.b	9,$87,$88,$89,$8A,$FF
loc_18F30:
		dc.b	9,$81,$82,$83,$84,$FF	
;===============================================================================
; Object 0x05 - Miles "Tail"
; [ End ]
;===============================================================================