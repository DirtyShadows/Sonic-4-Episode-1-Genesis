;===============================================================================
; Object 0x24 - Oxygen Bubbles - Neo Green Hill ( Underwater ) 
; [ Begin ]
;===============================================================================
loc_1B71C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1B72A(pc,d0),d1
		jmp	loc_1B72A(pc,d1)
loc_1B72A:
		dc.w	loc_1B736-loc_1B72A
		dc.w	loc_1B798-loc_1B72A
		dc.w	loc_1B7B2-loc_1B72A
		dc.w	loc_1B812-loc_1B72A
		dc.w	loc_1B830-loc_1B72A
		dc.w	loc_1B834-loc_1B72A
loc_1B736:
		addq.b	#2,$24(a0)
		move.l	#Sonic_Underwater_Mappings,4(a0) 
		move.w	#$855B,2(a0)
		bsr	loc_1BB24
		move.b	#$84,1(a0)
		move.b	#$10,$19(a0)
		move.b	#1,$18(a0)
		move.b	$28(a0),d0
		bpl.s	loc_1B77E
		addq.b	#8,$24(a0)
		and.w	#$7F,d0
		move.b	d0,$32(a0)
		move.b	d0,$33(a0)
		move.b	#6,$1C(a0)
		bra	loc_1B834
loc_1B77E:
		move.b	d0,$1C(a0)
		move.w	8(a0),$30(a0)
		move.w	#$FF78,$12(a0)
		jsr	PseudoRandomNumber	
		move.b	d0,$26(a0)
loc_1B798:
		lea	(Oxygen_Bubbles_Animate_Data),a1 
		jsr	animateSprite	
		cmp.b	#6,$1A(a0)
		bne.s	loc_1B7B2
		move.b	#1,$2E(a0)
loc_1B7B2:
		move.w	($FFFFF646).w,d0
		cmp.w	$C(a0),d0
		bcs.s	loc_1B7CA
		move.b	#6,$24(a0)
		addq.b	#3,$1C(a0)
		bra	loc_1B812
loc_1B7CA:
		move.b	$26(a0),d0
		addq.b	#1,$26(a0)
		and.w	#$7F,d0
		lea	(loc_190E0),a1
		move.b	0(a1,d0),d0
		ext.w	d0
		add.w	$30(a0),d0
		move.w	d0,8(a0)
		tst.b	$2E(a0)
		beq.s	loc_1B7FC
		bsr	loc_1B976
		cmp.b	#6,$24(a0)
		beq.s	loc_1B812
loc_1B7FC:
		bsr	loc_1BB2A
		tst.b	1(a0)
		bpl.s	loc_1B80C
		jmp	displaySprite	
loc_1B80C:
		jmp	deleteObject	
loc_1B812:
		lea	(Oxygen_Bubbles_Animate_Data),a1 
		jsr	animateSprite	
		tst.b	1(a0)
		bpl.s	loc_1B82A
		jmp	displaySprite	
loc_1B82A:
		jmp	deleteObject	
loc_1B830:
		bra	loc_1BB1E
loc_1B834:
		tst.w	$36(a0)
		bne.s	loc_1B896
		move.w	($FFFFF646).w,d0
		cmp.w	$C(a0),d0
		bcc	loc_1B942
		tst.b	1(a0)
		bpl	loc_1B942
		subq.w	#1,$38(a0)
		bpl	loc_1B936
		move.w	#1,$36(a0)
loc_1B85C:	
		jsr	PseudoRandomNumber	
		move.w	d0,d1
		and.w	#7,d0
		cmp.w	#6,d0
		bcc.s	loc_1B85C
		move.b	d0,$34(a0)
		and.w	#$C,d1
		lea	(loc_1B964),a1
		adda.w	d1,a1
		move.l	a1,$3C(a0)
		subq.b	#1,$32(a0)
		bpl.s	loc_1B894
		move.b	$33(a0),$32(a0)
		bset	#7,$36(a0)
loc_1B894:
		bra.s	loc_1B89E
loc_1B896:
		subq.w	#1,$38(a0)
		bpl	loc_1B936
loc_1B89E:
		jsr	PseudoRandomNumber	
		and.w	#$1F,d0
		move.w	d0,$38(a0)
		bsr	SingleObjectLoad	
		bne.s	loc_1B91A
		move.b	0(a0),0(a1)
		move.w	8(a0),8(a1)
		jsr	PseudoRandomNumber	
		and.w	#$F,d0
		subq.w	#8,d0
		add.w	d0,8(a1)
		move.w	$C(a0),$C(a1)
		moveq	#0,d0
		move.b	$34(a0),d0
		move.l	$3C(a0),a2
		move.b	0(a2,d0),$28(a1)
		btst	#7,$36(a0)
		beq.s	loc_1B91A
		jsr	PseudoRandomNumber	
		and.w	#3,d0
		bne.s	loc_1B906
		bset	#6,$36(a0)
		bne.s	loc_1B91A
		move.b	#2,$28(a1)
loc_1B906:
		tst.b	$34(a0)
		bne.s	loc_1B91A
		bset	#6,$36(a0)
		bne.s	loc_1B91A
		move.b	#2,$28(a1)
loc_1B91A:
		subq.b	#1,$34(a0)
		bpl.s	loc_1B936
		jsr	PseudoRandomNumber	
		and.w	#$7F,d0
		add.w	#$80,d0
		add.w	d0,$38(a0)
		clr.w	$36(a0)
loc_1B936:
		lea	(Oxygen_Bubbles_Animate_Data),a1 
		jsr	animateSprite	
loc_1B942:
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_1BB1E
		move.w	($FFFFF646).w,d0
		cmp.w	$C(a0),d0
		bcs	J_DisplaySprite_02	
		rts	
;-------------------------------------------------------------------------------
loc_1B964:	
		dc.w	1,0,0,$100,0,1,1,$0
		dc.w	$100	
;-------------------------------------------------------------------------------
loc_1B976:
		lea	($FFFFB000).w,a1
		bsr.s	loc_1B980
		lea	($FFFFB040).w,a1
loc_1B980:
		tst.b	$2A(a1)
		bmi	loc_1BA20
		move.w	8(a1),d0
		move.w	8(a0),d1
		sub.w	#$10,d1
		cmp.w	d0,d1
		bcc	loc_1BA20
		add.w	#$20,d1
		cmp.w	d0,d1
		bcs.s	loc_1BA20
		move.w	$C(a1),d0
		move.w	$C(a0),d1
		cmp.w	d0,d1
		bcc.s	loc_1BA20
		add.w	#$10,d1
		cmp.w	d0,d1
		bcs.s	loc_1BA20
		bsr	ResumeMusic	
		move.w	#$AD,d0
		jsr	Play_Sfx	
		clr.w	$10(a1)
		clr.w	$12(a1)
		clr.w	$14(a1)
		move.b	#$15,$1C(a1)
		move.w	#$23,$2E(a1)
		move.b	#0,$3C(a1)
		bclr	#5,$22(a1)
		bclr	#4,$22(a1)
		btst	#2,$22(a1)
		beq	loc_1BA0E
		bclr	#2,$22(a1)
		move.b	#$13,$16(a1)
		move.b	#9,$17(a1)
		subq.w	#5,$C(a1)
loc_1BA0E:
		cmp.b	#6,$24(a0)
		beq.s	loc_1BA20
		move.b	#6,$24(a0)
		addq.b	#3,$1C(a0)
loc_1BA20:
		rts	
;-------------------------------------------------------------------------------
Oxygen_Bubbles_Animate_Data: 
		dc.w	loc_1BA30-Oxygen_Bubbles_Animate_Data
		dc.w	loc_1BA35-Oxygen_Bubbles_Animate_Data
		dc.w	loc_1BA3B-Oxygen_Bubbles_Animate_Data
		dc.w	loc_1BA42-Oxygen_Bubbles_Animate_Data
		dc.w	loc_1BA42-Oxygen_Bubbles_Animate_Data
		dc.w	loc_1BA44-Oxygen_Bubbles_Animate_Data
		dc.w	loc_1BA48-Oxygen_Bubbles_Animate_Data
loc_1BA30:
		dc.b	$E,0,1,2,$FC
loc_1BA35:
		dc.b	$E,1,2,3,4,$FC
loc_1BA3B:
		dc.b	$E,2,3,4,5,6,$FC
loc_1BA42:
		dc.b	4,$FC
loc_1BA44:
		dc.b	4,6,7,$FC
loc_1BA48:
		dc.b	$F,$E,$F,$FF	
;===============================================================================
; Object 0x24 - Oxygen Bubbles - Neo Green Hill ( Underwater ) 
; [ End ]
;===============================================================================