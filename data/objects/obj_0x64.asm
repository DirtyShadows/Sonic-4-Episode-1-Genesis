;=============================================================================== 
; Object 0x64 - Metropolis - Pistons 
; [ Begin ]	
;===============================================================================	
loc_226E0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_226EE(pc,d0),d1
		jmp	loc_226EE(pc,d1)
loc_226EE:
		dc.w	loc_226FA-loc_226EE
		dc.w	loc_22762-loc_226EE
loc_226F2:
		dc.b	$40,$C,$40,1,$10,$20,$40,$1
loc_226FA:
		addq.b	#2,$24(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsr.w	#2,d0
		and.w	#$1C,d0
		lea	loc_226F2(pc,d0),a3
		move.b	(a3)+,$19(a0)
		move.b	(a3)+,$2E(a0)
		lsr.w	#2,d0
		move.b	d0,$1A(a0)
		bne.s	loc_2272A
		move.b	#$6C,$16(a0)
		bset	#4,1(a0)
loc_2272A:
		move.l	#Pistons_Mappings,4(a0) 
		move.w	#$2000,2(a0)
		bsr	loc_22894
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.w	8(a0),$34(a0)
		move.w	$C(a0),$30(a0)
		moveq	#0,d0
		move.b	(a3)+,d0
		move.w	d0,$3C(a0)
		and.b	#$F,$28(a0)
loc_22762:
		move.w	8(a0),-(sp)
		moveq	#0,d0
		move.b	$28(a0),d0
		add.w	d0,d0
		move.w	loc_227B4(pc,d0),d1
		jsr	loc_227B4(pc,d1)
		move.w	(sp)+,d4
		tst.b	1(a0)
		bpl.s	loc_22796
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$2E(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		bsr	loc_2289A
loc_22796:
		move.w	$34(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_227AE
		jmp	displaySprite	
loc_227AE:
		jmp	deleteObject	
loc_227B4:
		dc.w	loc_227B8-loc_227B4
		dc.w	loc_227BA-loc_227B4
loc_227B8:
		rts
loc_227BA:
		tst.b	$38(a0)
		bne.s	loc_227DE
		tst.w	$3A(a0)
		beq.s	loc_227CC
		subq.w	#8,$3A(a0)
		bra.s	loc_227FE
loc_227CC:
		subq.w	#1,$36(a0)
		bpl.s	loc_227FE
		move.w	#$5A,$36(a0)
		move.b	#1,$38(a0)
loc_227DE:
		move.w	$3A(a0),d0
		cmp.w	$3C(a0),d0
		beq.s	loc_227EE
		addq.w	#8,$3A(a0)
		bra.s	loc_227FE
loc_227EE:
		subq.w	#1,$36(a0)
		bpl.s	loc_227FE
		move.w	#$5A,$36(a0)
		clr.b	$38(a0)
loc_227FE:
		move.w	$3A(a0),d0
		btst	#0,$22(a0)
		beq.s	loc_22810
		neg.w	d0
		add.w	#$40,d0
loc_22810:
		move.w	$30(a0),d1
		add.w	d0,d1
		move.w	d1,$C(a0)
		rts
;-------------------------------------------------------------------------------
Pistons_Mappings: 
		dc.w	loc_22820-Pistons_Mappings
		dc.w	loc_22872-Pistons_Mappings
loc_22820:
		dc.w	$A
		dc.l	$F40E0001,$FFC0,$F40E0801,$800FFE0
		dc.l	$F40E0001,0,$F40E0801,$8000020
		dc.l	$C07000D,$6FFD8,$2C07000D,$6FFD8
		dc.l	$4C07000D,$6FFD8,$C07000D,$60018
		dc.l	$2C07000D,$60018,$4C07000D,$60018
loc_22872:
		dc.w	$4
		dc.l	$E0070057,$2BFFF0,$E0070857,$82B0000
		dc.l	$71057,$102BFFF0,$71857,$182B0000	
;=============================================================================== 
; Object 0x64 - Metropolis - Pistons 
; [ End ]	
;===============================================================================	