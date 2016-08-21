;=============================================================================== 
; Object 0x16 - Hill Top Teleferics
; [ Begin ]	
;===============================================================================

loc_1DBF8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1DC06(pc,d0),d1
		jmp	loc_1DC06(pc,d1)
loc_1DC06:	
		dc.w	loc_1DC0A-loc_1DC06
		dc.w	loc_1DC5C-loc_1DC06
loc_1DC0A:
		addq.b	#2,$24(a0)
		move.l	#Teleferics_Mappings,4(a0) 
		move.w	#$43E6,2(a0)
		bsr	loc_1DE22
		or.b	#4,1(a0)
		move.b	#$20,$19(a0)
		move.b	#0,$1A(a0)
		move.b	#1,$18(a0)
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$32(a0)
		move.b	#$40,$16(a0)
		bset	#4,1(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsl.w	#3,d0
		move.w	d0,$34(a0)
loc_1DC5C:
		move.w	8(a0),-(sp)
		bsr	loc_1DC78
		moveq	#0,d1
		move.b	$19(a0),d1
		move.w	#$FFD8,d3
		move.w	(sp)+,d4
		bsr	loc_1DE2E
		bra	loc_1DE16
loc_1DC78:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_1DC86(pc,d0),d1
		jmp	loc_1DC86(pc,d1)
loc_1DC86:
		dc.w	loc_1DC8C-loc_1DC86
		dc.w	loc_1DCB4-loc_1DC86
		dc.w	loc_1DD0E-loc_1DC86
loc_1DC8C:
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_1DCB2
		addq.b	#2,$25(a0)
		move.w	#$200,$10(a0)
		btst	#0,$22(a0)
		beq.s	loc_1DCAC
		neg.w	$10(a0)
loc_1DCAC:
		move.w	#$100,$12(a0)
loc_1DCB2:
		rts
loc_1DCB4:
		move.w	($FFFFFE04).w,d0
		and.w	#$F,d0
		bne.s	loc_1DCC8
		move.w	#$E4,d0
		jsr	Play_Sfx	
loc_1DCC8:
		bsr	loc_1DE28
		subq.w	#1,$34(a0)
		bne.s	loc_1DD0C
		addq.b	#2,$25(a0)
		move.b	#2,$1A(a0)
		move.w	#0,$10(a0)
		move.w	#0,$12(a0)
		bsr	loc_1DE1C
		bne.s	loc_1DD0C
		move.b	#$1C,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	1(a0),1(a1)
		move.b	#6,$28(a1)
loc_1DD0C:
		rts
loc_1DD0E:
		bsr	loc_1DE28
		add.w	#$38,$12(a0)
		move.w	($FFFFEECE).w,d0
		add.w	#$E0,d0
		cmp.w	$C(a0),d0
		bcs	loc_1DE10
		rts	
;-------------------------------------------------------------------------------
Teleferics_Mappings: 
		dc.w	loc_1DD34-Teleferics_Mappings
		dc.w	loc_1DD86-Teleferics_Mappings
		dc.w	loc_1DDC8-Teleferics_Mappings
		dc.w	loc_1DDDA-Teleferics_Mappings
		dc.w	loc_1DDF4-Teleferics_Mappings
loc_1DD34:
		dc.w	$A
		dc.l	$C1050000,$FFE4,$D0030004,$2FFE6
		dc.l	$F0030004,$2FFE6,$10010008,$4FFE7
		dc.l	$D505000A,$5000C,$E003000E,$70011
		dc.l	$10010012,$90011,$3000E,$70011
		dc.l	$200D0014,$AFFE0,$200D0814,$80A0000
loc_1DD86:
		dc.w	$8
		dc.l	$C1050000,$FFE4,$D0030004,$2FFE6
		dc.l	$F0030004,$2FFE6,$1001002C,$16FFE6
		dc.l	$D505000A,$5000C,$E003000E,$70011
		dc.l	$1801002E,$170011,$3000E,$70011
loc_1DDC8:
		dc.w	$2
		dc.l	$200D0014,$AFFE0,$200D0814,$80A0000
loc_1DDDA:
		dc.w	$3
		dc.l	$D805001C,$EFFF8,$E8070020,$10FFF8
		dc.l	$8070020,$10FFF8
loc_1DDF4:
		dc.w	$3
		dc.l	$D8050028,$14FFF8,$E8070820,$810FFF8
		dc.l	$8070820,$810FFF8	
;=============================================================================== 
; Object 0x16 - Hill Top Teleferics
; [ End ]	
;===============================================================================	