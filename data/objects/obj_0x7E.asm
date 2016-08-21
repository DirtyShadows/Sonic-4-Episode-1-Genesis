;===============================================================================
; Object 0x7E
; [ Begin ]
;===============================================================================	
loc_19F96:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_19FA4(pc,d0),d1
		jmp	loc_19FA4(pc,d1)
loc_19FA4:
		dc.w	loc_19FA8-loc_19FA4
		dc.w	loc_19FDE-loc_19FA4
loc_19FA8:
		addq.b	#2,$24(a0)
		move.l	#Obj_0x7E_Mappings,4(a0) 
		move.b	#4,1(a0)
		move.b	#1,$18(a0)
		move.b	#$18,$19(a0)
		move.w	#$5F2,2(a0)
		bsr	ModifySpriteAttr_2P	
		btst	#7,($FFFFB002).w
		beq.s	loc_19FDE
		bset	#7,2(a0)
loc_19FDE:
		tst.b	($FFFFFE19).w
		beq.s	loc_1A05E
		tst.b	$30(a0)
		beq.s	loc_1A02E
		subq.b	#1,$1E(a0)
		bpl.s	loc_1A016
		move.b	#1,$1E(a0)
		addq.b	#1,$1A(a0)
		cmp.b	#6,$1A(a0)
		bcs.s	loc_1A016
		move.b	#0,$1A(a0)
		move.b	#0,$30(a0)
		move.b	#1,$31(a0)
		rts
loc_1A016:
		tst.b	$31(a0)
		bne.s	loc_1A028
loc_1A01C:	
		move.w	($FFFFB008).w,8(a0)
		move.w	($FFFFB00C).w,$C(a0)
loc_1A028:
		jmp	displaySprite	
loc_1A02E:
		tst.b	($FFFFB02A).w
		bne.s	loc_1A050
		move.w	($FFFFB014).w,d0
		bpl.s	loc_1A03C
		neg.w	d0
loc_1A03C:
		cmp.w	#$800,d0
		bcs.s	loc_1A050
		move.b	#0,$1A(a0)
		move.b	#1,$30(a0)
		bra.s	loc_1A01C
loc_1A050:
		move.b	#0,$30(a0)
		move.b	#0,$31(a0)
		rts
loc_1A05E:
		jmp	deleteObject	
;-------------------------------------------------------------------------------	
Obj_0x7E_Mappings: 
		dc.w	loc_1A070-Obj_0x7E_Mappings
		dc.w	loc_1A092-Obj_0x7E_Mappings
		dc.w	loc_1A0B4-Obj_0x7E_Mappings
		dc.w	loc_1A092-Obj_0x7E_Mappings
		dc.w	loc_1A070-Obj_0x7E_Mappings
		dc.w	loc_1A0D6-Obj_0x7E_Mappings
loc_1A070:
		dc.w	$4
		dc.l	$F8000000,$FFF8,$F8000800,$8000000
		dc.l	$1000,$1000FFF8,$1800,$18000000
loc_1A092:
		dc.w	$4
		dc.l	$F0050001,$FFF0,$F0050801,$8000000
		dc.l	$51001,$1000FFF0,$51801,$18000000
loc_1A0B4:
		dc.w	$4
		dc.l	$E80A0005,$2FFE8,$E80A0805,$8020000
		dc.l	$A1005,$1002FFE8,$A1805,$18020000
loc_1A0D6:
		dc.w	$0	
;===============================================================================
; Object 0x7E
; [ End ]
;===============================================================================