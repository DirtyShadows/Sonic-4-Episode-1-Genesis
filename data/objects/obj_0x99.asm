;===============================================================================
; Object 0x99 - Nebula badnick - Sky Chase
; [ Begin ]
;===============================================================================	
loc_339B2:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_339C0(pc,d0),d1
		jmp	loc_339C0(pc,d1)
loc_339C0:
		dc.w	loc_339C6-loc_339C0
		dc.w	loc_339D2-loc_339C0
		dc.w	loc_33A06-loc_339C0
loc_339C6:
		bsr	EnemySettings	
		move.w	#$FF40,$10(a0)
		rts
loc_339D2:
		bsr	loc_32866
		tst.w	d0
		bne.s	loc_339E4
		cmp.w	#$80,d2
		bcc.s	loc_339E4
		bsr	loc_339FA
loc_339E4:
		bsr	loc_3A904
		bsr	loc_329AC
		lea	(Nebula_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_329BE
loc_339FA:
		addq.b	#2,$24(a0)
		move.w	#$FF60,$12(a0)
		rts
loc_33A06:
		tst.b	$2A(a0)
		bne.s	loc_33A1E
		bsr	loc_32866
		add.w	#8,d2
		cmp.w	#$10,d2
		bcc.s	loc_33A1E
		bsr	loc_33A3A
loc_33A1E:
		add.w	#1,$12(a0)
		bsr	loc_3A904
		bsr	loc_329AC
		lea	(Nebula_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_329BE
loc_33A3A:
		st	$2A(a0)
		bsr	loc_3A8B6
		bne.s	loc_33A70
		move.b	#$98,0(a1)
		move.b	#4,$1A(a1)
		move.b	#$14,$28(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$18,$C(a1)
		lea	loc_338FA(pc),a2
		move.l	a2,$2A(a1)
loc_33A70:
		rts	
;-------------------------------------------------------------------------------
Obj_0x99_Ptr: 
		dc.l	Nebula_Mappings	
		dc.w	$A36E
		dc.b	4,4,$10,$6	
;-------------------------------------------------------------------------------
Nebula_Animate_Data: 
		dc.w	loc_33A7E-Nebula_Animate_Data
loc_33A7E:
		dc.b	3,0,1,2,3,$FF	
;-------------------------------------------------------------------------------
Nebula_Mappings: 
		dc.w	loc_33A8E-Nebula_Mappings
		dc.w	loc_33AB0-Nebula_Mappings
		dc.w	loc_33AD2-Nebula_Mappings
		dc.w	loc_33AF4-Nebula_Mappings
		dc.w	loc_33B16-Nebula_Mappings
loc_33A8E:
		dc.w	$4
		dc.l	$EC080012,$9FFE8,$EC081812,$18090000
		dc.l	$EC040000,$FFF8,$F40F0002,$1FFF0
loc_33AB0:
		dc.w	$4
		dc.l	$EC040015,$AFFF0,$EC041815,$180A0000
		dc.l	$EC040000,$FFF8,$F40F0002,$1FFF0
loc_33AD2:
		dc.w	$4
		dc.l	$EC000017,$BFFF8,$EC000817,$80B0000
		dc.l	$EC040000,$FFF8,$F40F0002,$1FFF0
loc_33AF4:
		dc.w	$4
		dc.l	$EC041015,$100AFFF0,$EC040815,$80A0000
		dc.l	$EC040000,$FFF8,$F40F0002,$1FFF0
loc_33B16:
		dc.w	$1
		dc.l	$F8050018,$CFFF8	
;===============================================================================
; Object 0x99 - Nebula badnick - Sky Chase
; [ End ]
;===============================================================================