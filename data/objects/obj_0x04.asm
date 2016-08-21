;===============================================================================
; Object 0x04 - Water Surface - Hidden Palace / Chemical Plant / Neo Green Hill
; [ Begin ]
;===============================================================================	
loc_1C718:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1C726(pc,d0),d1
		jmp	loc_1C726(pc,d1)
loc_1C726:
		dc.w	loc_1C72C-loc_1C726
		dc.w	loc_1C76C-loc_1C726
		dc.w	loc_1C7FE-loc_1C726
loc_1C72C:
		addq.b	#2,$24(a0)
		move.l	#Water_Surface_Mappings,4(a0) 
		move.w	#$8400,2(a0)
		bsr	loc_1D302
		move.b	#4,1(a0)
		move.b	#$80,$19(a0)
		move.w	8(a0),$30(a0)
		cmp.b	#$F,($FFFFFE10).w
		bne.s	loc_1C76C
		addq.b	#2,$24(a0)
		move.l	#Water_Surface_NGHz_Mappings,4(a0) 
		bra	loc_1C7FE
loc_1C76C:
		move.w	($FFFFF646).w,d1
		move.w	d1,$C(a0)
		tst.b	$32(a0)
		bne.s	loc_1C78E
		btst	#7,($FFFFF605).w
		beq.s	loc_1C79E
		addq.b	#3,$1A(a0)
		move.b	#1,$32(a0)
		bra.s	loc_1C79E
loc_1C78E:
		tst.w	($FFFFF63A).w
		bne.s	loc_1C79E
		move.b	#0,$32(a0)
		subq.b	#3,$1A(a0)
loc_1C79E:
		lea	(Water_Surface_Data),a1 
		moveq	#0,d1
		move.b	$1B(a0),d1
		move.b	0(a1,d1),$1A(a0)
		addq.b	#1,$1B(a0)
		and.b	#$3F,$1B(a0)
		bra	loc_1D2F0	
;-------------------------------------------------------------------------------
Water_Surface_Data: 
		dc.b	0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,$1
		dc.b	1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,$2
		dc.b	2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,$1
		dc.b	1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,$0
;-------------------------------------------------------------------------------	
loc_1C7FE:
		move.w	($FFFFF646).w,d1
		move.w	d1,$C(a0)
		tst.b	$32(a0)
		bne.s	loc_1C820
		btst	#7,($FFFFF605).w
		beq.s	loc_1C830
		addq.b	#2,$1A(a0)
		move.b	#1,$32(a0)
		bra.s	loc_1C846
loc_1C820:
		tst.w	($FFFFF63A).w
		bne.s	loc_1C846
		move.b	#0,$32(a0)
		subq.b	#2,$1A(a0)
loc_1C830:
		subq.b	#1,$1E(a0)
		bpl.s	loc_1C846
		move.b	#5,$1E(a0)
		addq.b	#1,$1A(a0)
		and.b	#1,$1A(a0)
loc_1C846:
		bra	loc_1D2F0	
;-------------------------------------------------------------------------------
Water_Surface_Mappings: 
		dc.w	loc_1C856-Water_Surface_Mappings
		dc.w	loc_1C870-Water_Surface_Mappings
		dc.w	loc_1C88A-Water_Surface_Mappings
		dc.w	loc_1C8A4-Water_Surface_Mappings
		dc.w	loc_1C8D6-Water_Surface_Mappings
		dc.w	loc_1C908-Water_Surface_Mappings
loc_1C856:
		dc.w	$3
		dc.l	$F80D0000,$FFA0,$F80D0000,$FFE0
		dc.l	$F80D0000,$20
loc_1C870:
		dc.w	$3
		dc.l	$F80D0008,$4FFA0,$F80D0008,$4FFE0
		dc.l	$F80D0008,$40020
loc_1C88A:
		dc.w	$3
		dc.l	$F80D0010,$8FFA0,$F80D0010,$8FFE0
		dc.l	$F80D0010,$80020
loc_1C8A4:
		dc.w	$6
		dc.l	$F80D0000,$FFA0,$F80D0008,$4FFC0
		dc.l	$F80D0000,$FFE0,$F80D0008,$40000
		dc.l	$F80D0000,$20,$F80D0008,$40040
loc_1C8D6:
		dc.w	$6
		dc.l	$F80D0008,$4FFA0,$F80D0010,$8FFC0
		dc.l	$F80D0008,$4FFE0,$F80D0010,$80000
		dc.l	$F80D0008,$40020,$F80D0010,$80040
loc_1C908:
		dc.w	$6
		dc.l	$F80D0010,$8FFA0,$F80D0008,$4FFC0
		dc.l	$F80D0010,$8FFE0,$F80D0008,$40000
		dc.l	$F80D0010,$80020,$F80D0008,$40040	
;-------------------------------------------------------------------------------
Water_Surface_NGHz_Mappings 
		dc.w	loc_1C942-Water_Surface_NGHz_Mappings
		dc.w	loc_1C95C-Water_Surface_NGHz_Mappings
		dc.w	loc_1C976-Water_Surface_NGHz_Mappings
		dc.w	loc_1C9A8-Water_Surface_NGHz_Mappings
loc_1C942:
		dc.w	$3
		dc.l	$FC0D0000,$FFA0,$FC0D0000,$FFE0
		dc.l	$FC0D0000,$20
loc_1C95C:
		dc.w	$3
		dc.l	$FC0D0008,$4FFA0,$FC0D0008,$4FFE0
		dc.l	$FC0D0008,$40020
loc_1C976:
		dc.w	$6
		dc.l	$FC0D0000,$FFA0,$FC0D0000,$FFC0
		dc.l	$FC0D0000,$FFE0,$FC0D0000,$0
		dc.l	$FC0D0000,$20,$FC0D0000,$40
loc_1C9A8:
		dc.w	$6
		dc.l	$FC0D0008,$4FFA0,$FC0D0008,$4FFC0
		dc.l	$FC0D0008,$4FFE0,$FC0D0008,$40000
		dc.l	$FC0D0008,$40020,$FC0D0008,$40040	
;===============================================================================
; Object 0x04 - Water Surface - Hidden Palace / Chemical Plant / Neo Green Hill
; [ End ]
;===============================================================================