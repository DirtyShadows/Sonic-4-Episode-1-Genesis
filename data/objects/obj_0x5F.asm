;===============================================================================
; Object 0x5F - "START" with Flags - Special Stage
; [ Begin ]
;===============================================================================	
loc_7C94:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_7CA2(pc,d0),d1
		jmp	loc_7CA2(pc,d1)
loc_7CA2:
		dc.w	loc_7CEE-loc_7CA2
		dc.w	loc_7D2E-loc_7CA2
		dc.w	loc_7D58-loc_7CA2
		dc.w	loc_7CAE-loc_7CA2
		dc.w	loc_7DE2-loc_7CA2
		dc.w	loc_7DBC-loc_7CA2
loc_7CAE:
		moveq	#0,d0
		move.b	$26(a0),d0
		bsr	CalcSine	
		muls.w	$14(a0),d0
		muls.w	$14(a0),d1
		asr.w	#8,d0
		asr.w	#8,d1
		add.w	d1,8(a0)
		add.w	d0,$C(a0)
		cmp.w	#0,8(a0)
		blt	J_DeleteObject_00	
		cmp.w	#$100,8(a0)
		bgt	J_DeleteObject_00	
		cmp.w	#0,$C(a0)
		blt	J_DeleteObject_00	
		bra	J_DisplaySprite_00	
loc_7CEE:
		tst.b	($FFFFFE00).w
		beq.s	loc_7CFC
		move.w	#8,d0
		bsr	loc_839C
loc_7CFC:
		move.w	#$80,8(a0)
		move.w	#$FFC0,$C(a0)
		move.w	#$100,$12(a0)
		move.l	#SS_Start_Flag_Mappings,4(a0) 
		move.w	#$38A,2(a0)
		move.b	#4,1(a0)
		move.b	#1,$18(a0)
		move.b	#2,$24(a0)
loc_7D2E:
		bsr	J_SpeedToPos_00	
		cmp.w	#$48,$C(a0)
		blt	J_DisplaySprite_00	
		move.w	#0,$12(a0)
		move.w	#$48,$C(a0)
		move.b	#4,$24(a0)
		move.b	#$F,$2A(a0)
		bra	J_DisplaySprite_00	
loc_7D58:
		sub.b	#1,$2A(a0)
		bne	J_DisplaySprite_00	
		moveq	#6,d6
		lea	(loc_7E30),a2
		moveq	#2,d3
		move.w	#8,$14(a0)
		move.b	#6,$24(a0)
loc_7D78:	
		bsr	loc_7B8A
		bne.s	loc_7DAA
		moveq	#0,d0
		move.w	#$F,d1
loc_7D84:	
		move.l	0(a0,d0),0(a1,d0)
		addq.w	#4,d0
		dbra	d1,loc_7D84
		move.b	d3,$1A(a1)
		addq.w	#1,d3
		move.w	#$FFD8,d2
		move.w	8(a2),d1
		bsr	CalcAngle	
		move.b	d0,$26(a1)
		lea	$A(a2),a2
loc_7DAA:
		dbra	d6,loc_7D78
		move.b	#$A,$24(a0)
		move.w	#$1E,$2A(a0)
		rts
loc_7DBC:
		sub.w	#1,$2A(a0)
		bpl.s	loc_7DE0
		tst.b	($FFFFFE00).w
		beq.s	loc_7DD4
		move.w	#$A,d0
		bsr	loc_839C
		bra.s	loc_7DD8
loc_7DD4:
		bsr	loc_8390
loc_7DD8:
		st	($FFFFDB23).w
		bra	J_DeleteObject_00	
loc_7DE0:
		rts
loc_7DE2:
		rts	
;-------------------------------------------------------------------------------
SS_Start_Flag_Mappings: 
		dc.w	loc_7DF6-SS_Start_Flag_Mappings
		dc.w	loc_7E30-SS_Start_Flag_Mappings
		dc.w	loc_7E30-SS_Start_Flag_Mappings
		dc.w	loc_7E3A-SS_Start_Flag_Mappings
		dc.w	loc_7E44-SS_Start_Flag_Mappings
		dc.w	loc_7E4E-SS_Start_Flag_Mappings
		dc.w	loc_7E58-SS_Start_Flag_Mappings
		dc.w	loc_7E62-SS_Start_Flag_Mappings
		dc.w	loc_7E6C-SS_Start_Flag_Mappings
loc_7DF6:
		dc.w	$7
		dc.l	$FA000,$A000FFB8,$7A010,$A008FFD8
		dc.l	$7A018,$A00CFFE8,$7A020,$A010FFF8
		dc.l	$7A028,$A0140008,$7A018,$A00C0018
		dc.l	$FA800,$A8000028
loc_7E30:
		dc.w	$1
		dc.l	$FA000,$A000FFB8
loc_7E3A:
		dc.w	$1
		dc.l	$7A010,$A008FFD8
loc_7E44:
		dc.w	$1
		dc.l	$7A018,$A00CFFE8
loc_7E4E:
		dc.w	$1
		dc.l	$7A020,$A010FFF8
loc_7E58:
		dc.w	$1
		dc.l	$7A028,$A0140008
loc_7E62:
		dc.w	$1
		dc.l	$7A018,$A00C0018
loc_7E6C:
		dc.w	$1
		dc.l	$FA800,$A8000028	
;===============================================================================
; Object 0x5F - "START" with Flags - Special Stage
; [ End ]
;===============================================================================