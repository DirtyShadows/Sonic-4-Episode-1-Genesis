;=============================================================================== 
; Object 0x6E - Metropolis - Machine
; [ Begin ]	
;===============================================================================
loc_24154:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_24162(pc,d0),d1
		jmp	loc_24162(pc,d1)
loc_24162:
		dc.w	loc_24170-loc_24162
		dc.w	loc_241DA-loc_24162
		dc.w	loc_24264-loc_24162
loc_24168:
		dc.b	$10,$C,$28,8,$60,$18,$C,$C
loc_24170:
		addq.b	#2,$24(a0)
		move.l	#Machine_Mappings,4(a0) 
		move.w	#$6000,2(a0)
		bsr	loc_2435C
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsr.w	#3,d0
		and.w	#$E,d0
		lea	loc_24168(pc,d0),a3
		move.b	(a3)+,$19(a0)
		move.b	(a3)+,$16(a0)
		lsr.w	#1,d0
		move.b	d0,$1A(a0)
		move.w	8(a0),$34(a0)
		move.w	$C(a0),$30(a0)
		cmp.b	#3,d0
		bne.s	loc_241DA
		addq.b	#2,$24(a0)
		move.w	#$63F0,2(a0)
		bsr	loc_2435C
		move.b	#5,$18(a0)
		bra	loc_24264
loc_241DA:
		move.w	8(a0),-(sp)
		move.b	($FFFFFE80).w,d1
		sub.b	#$38,d1
		ext.w	d1
		move.b	($FFFFFE84).w,d2
		sub.b	#$38,d2
		ext.w	d2
		btst	#0,$28(a0)
		beq.s	loc_241FE
		neg.w	d1
		neg.w	d2
loc_241FE:
		btst	#1,$28(a0)
		beq.s	loc_2420A
		neg.w	d1
		exg.l	d2,d1
loc_2420A:
		add.w	$34(a0),d1
		move.w	d1,8(a0)
		add.w	$30(a0),d2
		move.w	d2,$C(a0)
		move.w	(sp)+,d4
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		bsr	loc_24362
		move.w	$34(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_2424C
		jmp	displaySprite	
loc_2424C:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_2425E
		bclr	#7,2(a2,d0)
loc_2425E:
		jmp	deleteObject	
loc_24264:
		move.b	($FFFFFE80).w,d1
		lsr.b	#1,d1
		sub.b	#$1C,d1
		ext.w	d1
		move.b	($FFFFFE84).w,d2
		lsr.b	#1,d2
		sub.b	#$1C,d2
		ext.w	d2
		btst	#0,$28(a0)
		beq.s	loc_24288
		neg.w	d1
		neg.w	d2
loc_24288:
		btst	#1,$28(a0)
		beq.s	loc_24294
		neg.w	d1
		exg.l	d2,d1
loc_24294:
		add.w	$34(a0),d1
		move.w	d1,8(a0)
		add.w	$30(a0),d2
		move.w	d2,$C(a0)
		move.w	$34(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_242BC
		jmp	displaySprite	
loc_242BC:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_242CE
		bclr	#7,2(a2,d0)
loc_242CE:
		jmp	deleteObject	
;-------------------------------------------------------------------------------
Machine_Mappings: 
		dc.w	loc_242DC-Machine_Mappings
		dc.w	loc_242E6-Machine_Mappings
		dc.w	loc_24300-Machine_Mappings
		dc.w	loc_24352-Machine_Mappings
loc_242DC:
		dc.w	$1
		dc.l	$F40E0025,$12FFF0
loc_242E6:
		dc.w	$3
		dc.l	$F80D0031,$18FFD8,$F80D0031,$18FFF8
		dc.l	$F8050031,$180018
loc_24300:
		dc.w	$A
		dc.l	$E80E0039,$1CFFA0,$E80E0839,$81CFFC0
		dc.l	$E80E0039,$1CFFE0,$E80E0839,$81C0000
		dc.l	$E80E0039,$1C0020,$E80E0839,$81C0040
		dc.l	$60045,$22FFA0,$60845,$822FFB0
		dc.l	$60045,$220040,$60845,$8220050
loc_24352:
		dc.w	$1
		dc.l	$F40A0000,$FFF4	
;=============================================================================== 
; Object 0x6E - Metropolis - Machine
; [ End ]	
;===============================================================================	