;===============================================================================
; Object 0x4A - Octus - Oil Ocean
; [ Begin ]
;===============================================================================	
loc_28BB4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_28BC2(pc,d0),d1
		jmp	loc_28BC2(pc,d1)
loc_28BC2:
		dc.w	loc_28BF2-loc_28BC2
		dc.w	loc_28C58-loc_28BC2
		dc.w	loc_28BE6-loc_28BC2
		dc.w	loc_28BCA-loc_28BC2
loc_28BCA:
		sub.w	#1,$2C(a0)
		bmi.s	loc_28BD4
		rts
loc_28BD4:
		bsr	loc_28E62
		lea	(Octus_AnimateData),a1 
		bsr	loc_28E56
		bra	J_MarkObjGone	
loc_28BE6:
		subq.w	#1,$2C(a0)
		beq	J_DeleteObject	
		bra	J_DisplaySprite	
loc_28BF2:
		move.l	#Octus_Mappings,4(a0) 
		move.w	#$2538,2(a0)
		or.b	#4,1(a0)
		move.b	#$A,$20(a0)
		move.b	#4,$18(a0)
		move.b	#$10,$19(a0)
		move.b	#$B,$16(a0)
		move.b	#8,$17(a0)
		bsr	J_ObjectFall	
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_28C50
		add.w	d1,$C(a0)
		move.w	#0,$12(a0)
		addq.b	#2,$24(a0)
		move.w	8(a0),d0
		sub.w	($FFFFB008).w,d0
		bpl.s	loc_28C50
		bchg	#0,$22(a0)
loc_28C50:
		move.w	$C(a0),$2A(a0)
		rts
loc_28C58:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_28C74(pc,d0),d1
		jsr	loc_28C74(pc,d1)
		lea	(Octus_AnimateData),a1 
		bsr	loc_28E56
		bra	J_MarkObjGone	
loc_28C74:
		dc.w	loc_28C7E-loc_28C74
		dc.w	loc_28CA4-loc_28C74
		dc.w	loc_28CC0-loc_28C74
		dc.w	loc_28CDA-loc_28C74
		dc.w	loc_28CE8-loc_28C74
loc_28C7E:
		move.w	8(a0),d0
		sub.w	($FFFFB008).w,d0
		cmp.w	#$80,d0
		bgt.s	loc_28CA2
		cmp.w	#$FF80,d0
		blt.s	loc_28CA2
		addq.b	#2,$25(a0)
		move.b	#3,$1C(a0)
		move.w	#$20,$2C(a0)
loc_28CA2:
		rts
loc_28CA4:
		subq.w	#1,$2C(a0)
		bmi.s	loc_28CAC
		rts
loc_28CAC:
		addq.b	#2,$25(a0)
		move.b	#4,$1C(a0)
		move.w	#$FE00,$12(a0)
		bra	loc_28E62
loc_28CC0:
		add.w	#$10,$12(a0)
		bpl.s	loc_28CCC
		bra	loc_28E62
loc_28CCC:
		addq.b	#2,$25(a0)
		move.w	#$3C,$2C(a0)
		bra	loc_28D10
loc_28CDA:
		subq.w	#1,$2C(a0)
		bmi.s	loc_28CE2
		rts
loc_28CE2:
		addq.b	#2,$25(a0)
		rts
loc_28CE8:
		add.w	#$10,$12(a0)
		move.w	$C(a0),d0
		cmp.w	$2A(a0),d0
		bcc.s	loc_28CFC
		bra	loc_28E62
loc_28CFC:
		clr.b	$25(a0)
		clr.b	$1C(a0)
		clr.w	$12(a0)
		move.b	#1,$1A(a0)
		rts
loc_28D10:
		jsr	SingleObjectLoad	
		bne.s	loc_28D7A
		move.b	#$4A,0(a1)
		move.b	#6,$24(a1)
		move.l	#Octus_Mappings,4(a1) 
		move.w	#$2538,2(a1)
		move.b	#4,$18(a1)
		move.b	#$10,$19(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	#$F,$2C(a1)
		move.b	1(a0),1(a1)
		move.b	$22(a0),$22(a1)
		move.b	#2,$1C(a1)
		move.b	#$98,$20(a1)
		move.w	#$FE00,$10(a1)
		btst	#0,1(a1)
		beq.s	loc_28D7A
		neg.w	$10(a1)
loc_28D7A:
		rts	
Octus_AnimateData: 
		dc.w	loc_28D86-Octus_AnimateData
		dc.w	loc_28D8A-Octus_AnimateData
		dc.w	loc_28D8F-Octus_AnimateData
		dc.w	loc_28D94-Octus_AnimateData
		dc.w	loc_28D98-Octus_AnimateData
loc_28D86:
		dc.b	$F,1,0,$FF
loc_28D8A:
		dc.b	3,1,2,3,$FF
loc_28D8F:
		dc.b	2,5,6,$FF,$0
loc_28D94:
		dc.b	$F,4,$FF,$0
loc_28D98:
		dc.b	7,0,1,$FD,1,$0	
Octus_Mappings: 
		dc.w	loc_28DAC-Octus_Mappings
		dc.w	loc_28DBE-Octus_Mappings
		dc.w	loc_28DD8-Octus_Mappings
		dc.w	loc_28DF2-Octus_Mappings
		dc.w	loc_28E0C-Octus_Mappings
		dc.w	loc_28E2E-Octus_Mappings
		dc.w	loc_28E38-Octus_Mappings
loc_28DAC:
		dc.w	$2
		dc.l	$EB0D0000,$FFF0,$FB0D0008,$4FFF0
loc_28DBE:
		dc.w	$3
		dc.l	$F00D0000,$FFF0,$90010,$8FFE8
		dc.l	$90016,$B0000
loc_28DD8:
		dc.w	$3
		dc.l	$F00D0000,$FFF0,$9001C,$EFFE8
		dc.l	$90022,$110000
loc_28DF2:
		dc.w	$3
		dc.l	$F00D0000,$FFF0,$90028,$14FFE8
		dc.l	$9002E,$170000
loc_28E0C:
		dc.w	$4
		dc.l	$F0010034,$1AFFF7,$F00D0000,$FFF0
		dc.l	$90010,$8FFE8,$90016,$B0000
loc_28E2E:
		dc.w	$1
		dc.l	$F2010036,$1BFFF0
loc_28E38:
		dc.w	$1
		dc.l	$F2010038,$1CFFF0	
;===============================================================================
; Object 0x4A	- Octus - Oil Ocean
; [ End ]
;===============================================================================