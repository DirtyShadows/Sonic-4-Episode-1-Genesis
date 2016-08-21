;=============================================================================== 
; Object 0x43 - Oil Ocean - Giant Spikeball
; [ Begin ]	
;===============================================================================
loc_1FC5C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1FC6A(pc,d0),d1
		jmp	loc_1FC6A(pc,d1)
loc_1FC6A:
		dc.w	loc_1FC82-loc_1FC6A
		dc.w	loc_1FD26-loc_1FC6A
		dc.w	loc_1FD78-loc_1FC6A
loc_1FC70:
		dc.b	0,$68,0,0,0,0,1,$E8,$FF,$E8,0,$18,1,$A8,$FF,$A8
		dc.b	$FF,$D8
loc_1FC82:
		addq.b	#2,$24(a0)
		move.w	#$C30C,2(a0)
		bsr	loc_1FE36
		moveq	#0,d1
		move.b	$28(a0),d1
		lea	loc_1FC70(pc,d1),a2
		move.b	(a2)+,d1
		move.l	a0,a1
		bra.s	loc_1FCC4
loc_1FCA0:	
		bsr	loc_1FE30
		bne.s	loc_1FCF0
		move.b	0(a0),0(a1)
		move.b	#4,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	#1,$36(a1)
loc_1FCC4:
		move.l	#Giant_Spikeball_Mappings,4(a1) 
		move.w	2(a0),2(a1)
		move.b	#4,1(a1)
		move.b	#4,$18(a1)
		move.b	#$18,$19(a1)
		move.b	#$A5,$20(a1)
		move.w	8(a1),$30(a1)
loc_1FCF0:
		dbra	d1,loc_1FCA0
		move.l	a0,$3C(a1)
		move.l	a1,$3C(a0)
		moveq	#0,d1
		move.b	(a2)+,d1
		move.w	$30(a0),d0
		sub.w	d1,d0
		move.w	d0,$32(a0)
		move.w	d0,$32(a1)
		add.w	d1,d0
		add.w	d1,d0
		move.w	d0,$34(a0)
		move.w	d0,$34(a1)
		move.w	(a2)+,d0
		add.w	d0,8(a0)
		move.w	(a2)+,d0
		add.w	d0,8(a1)
loc_1FD26:
		bsr.s	loc_1FD82
		move.w	$32(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bls.s	loc_1FD4C
		move.w	$34(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_1FD52
loc_1FD4C:
		jmp	displaySprite	
loc_1FD52:
		move.l	$3C(a0),a1
		cmpa.l	a0,a1
		beq.s	loc_1FD60
		jsr	delete_A1_Object	
loc_1FD60:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_1FD72
		bclr	#7,2(a2,d0)
loc_1FD72:
		jmp	deleteObject	
loc_1FD78:
		bsr.s	loc_1FD82
		bsr.s	loc_1FDCC
		jmp	displaySprite	
loc_1FD82:
		tst.b	$36(a0)
		bne.s	loc_1FDAA
		move.w	8(a0),d1
		subq.w	#1,d1
		cmp.w	$32(a0),d1
		bne.s	loc_1FDA4
		move.b	#1,$36(a0)
		move.w	#$D5,d0
		jsr	Play_Sfx_Ex	
loc_1FDA4:
		move.w	d1,8(a0)
		rts
loc_1FDAA:
		move.w	8(a0),d1
		addq.w	#1,d1
		cmp.w	$34(a0),d1
		bne.s	loc_1FDC6
		move.b	#0,$36(a0)
		move.w	#$D5,d0
		jsr	Play_Sfx_Ex	
loc_1FDC6:
		move.w	d1,8(a0)
		rts
loc_1FDCC:
		move.l	$3C(a0),a1
		move.w	8(a0),d0
		sub.w	#$18,d0
		move.w	8(a1),d2
		add.w	#$18,d2
		cmp.w	d0,d2
		bne.s	loc_1FDFA
		eor.b	#1,$36(a0)
		eor.b	#1,$36(a1)
		move.w	#$D5,d0
		jsr	Play_Sfx_Ex	
loc_1FDFA:
		rts	
;-------------------------------------------------------------------------------
Giant_Spikeball_Mappings: 
		dc.w	loc_1FDFE-Giant_Spikeball_Mappings
loc_1FDFE:
		dc.w	$6
		dc.l	$E0050000,$FFE8,$D80F0004,$2FFF8
		dc.l	$F8090014,$AFFE8,$F809001A,$D0000
		dc.l	$10051000,$1000FFE8,$80F1004,$1002FFF8	
;=============================================================================== 
; Object 0x43 - Oil Ocean - Giant Spikeball
; [ End ]	
;===============================================================================	