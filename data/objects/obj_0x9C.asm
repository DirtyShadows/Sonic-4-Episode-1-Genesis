;===============================================================================
; Object 0x9C - Turtloid Sub - Sky Chase
; [ Begin ]
;===============================================================================	
loc_33C6C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_33C7A(pc,d0),d1
		jmp	loc_33C7A(pc,d1)
loc_33C7A:
		dc.w	loc_33C7E-loc_33C7A
		dc.w	loc_33C82-loc_33C7A
loc_33C7E:
		bra	EnemySettings	
loc_33C82:
		move.w	$2C(a0),a1
		move.b	$32(a0),d0
		cmp.b	(a1),d0
		bne	loc_3A898
		move.l	8(a1),8(a0)
		move.l	$C(a1),$C(a0)
		move.l	$2E(a0),a1
		bsr	loc_3A8BC
		bra	loc_329BE
;-------------------------------------------------------------------------------	
loc_33CA8:
		bsr	loc_3A8B6
		bne.s	loc_33CDA
		move.b	#$9C,0(a1)
		move.b	#6,$1A(a1)
		move.b	#$1A,$28(a1)
		move.w	a0,$2C(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.l	$2E(a0),$2E(a1)
		move.b	(a0),$32(a1)
loc_33CDA:
		rts
;-------------------------------------------------------------------------------	
loc_33CDC:
		bsr	loc_3A89E
		bne.s	loc_33D1A
		move.b	#$98,0(a1)
		move.b	#6,$1A(a1)
		move.b	#$1C,$28(a1)
		move.w	8(a0),8(a1)
		sub.w	#$14,8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$A,$C(a1)
		move.w	#$FF00,$10(a1)
		lea	loc_33904(pc),a2
		move.l	a2,$2A(a1)
loc_33D1A:
		rts	
;-------------------------------------------------------------------------------
Obj_0x9A_Ptr: 
		dc.l	Turtloid_Mappings	
		dc.w	$38A
		dc.b	4,5,$18,$0
Obj_0x9B_Ptr: 
		dc.l	Turtloid_Mappings	
		dc.w	$38A
		dc.b	4,4,$C,$1A
Obj_0x9C_Ptr: 
		dc.l	Turtloid_Mappings	
		dc.w	$38A
		dc.b	4,5,8,$0
;-------------------------------------------------------------------------------
loc_33D3A:
		dc.w	loc_33D3C-loc_33D3A
loc_33D3C:
		dc.b	1,4,5,$FF
;-------------------------------------------------------------------------------
Turtloid_Animate_Data: 
		dc.w	loc_33D42-Turtloid_Animate_Data
loc_33D42:
		dc.b	1,6,7,$FF	
;-------------------------------------------------------------------------------	
Balkiry_Animate_Data: 
		dc.w	loc_33D48-Balkiry_Animate_Data
loc_33D48:
		dc.b	1,8,9,$FF	
;-------------------------------------------------------------------------------	
Turtloid_Mappings: 
		dc.w	loc_33D60-Turtloid_Mappings
		dc.w	loc_33D7A-Turtloid_Mappings
		dc.w	loc_33D94-Turtloid_Mappings
		dc.w	loc_33D9E-Turtloid_Mappings
		dc.w	loc_33DA8-Turtloid_Mappings
		dc.w	loc_33DB2-Turtloid_Mappings
		dc.w	loc_33DBC-Turtloid_Mappings
		dc.w	loc_33DC6-Turtloid_Mappings
		dc.w	loc_33DD0-Turtloid_Mappings
		dc.w	loc_33DDA-Turtloid_Mappings
loc_33D60:
		dc.w	$3
		dc.l	$F0092000,$2000FFE4,$F00F2006,$2003FFFC
		dc.l	$92016,$200BFFE4
loc_33D7A:
		dc.w	$3
		dc.l	$F0092000,$2000FFE4,$9201C,$200EFFE4
		dc.l	$F00F2006,$2003FFFC
loc_33D94:
		dc.w	$1
		dc.l	$F40A2022,$2011FFF4
loc_33D9E:
		dc.w	$1
		dc.l	$F40A202B,$2015FFF4
loc_33DA8:
		dc.w	$1
		dc.l	$FC000034,$1AFFFC
loc_33DB2:
		dc.w	$1
		dc.l	$FC000035,$1AFFFC
loc_33DBC:
		dc.w	$1
		dc.l	$6040036,$1B001C
loc_33DC6:
		dc.w	$1
		dc.l	$6000038,$1C001C
loc_33DD0:
		dc.w	$1
		dc.l	$FB040036,$1B001B
loc_33DDA:
		dc.w	$1
		dc.l	$FB000038,$1C001B	
;===============================================================================
; Object 0x9C - Turtloid Sub - Sky Chase
; [ End ]
;===============================================================================