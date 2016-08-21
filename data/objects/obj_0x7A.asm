;=============================================================================== 
; Object 0x7A - Platforms - Move horizontally - Dust Hill / Chemical Plant
; [ Begin ]	
;===============================================================================	
loc_25148:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_25156(pc,d0),d1
		jmp	loc_25156(pc,d1)
loc_25156:
		dc.w	loc_25174-loc_25156
		dc.w	loc_25236-loc_25156
		dc.w	loc_25292-loc_25156
loc_2515C:	
		dc.b	0,$68,$FF,$98,0,0,1,$A8,$FF,$50,0,$40,1,$E8,$FF,$80
		dc.b	0,$80,0,$68,0,$67,0,$0
loc_25174:
		addq.b	#2,$24(a0)
		move.l	#Platform_Horizontal_Mappings,4(a0) 
		move.w	#$E418,2(a0)
		cmp.b	#$B,($FFFFFE10).w
		bne.s	loc_2519C
		move.l	#DHz_Swing_Platforms_Mappings,4(a0) 
		move.w	#0,2(a0)
loc_2519C:
		bsr	loc_2532C
		moveq	#0,d1
		move.b	$28(a0),d1
		lea	loc_2515C(pc,d1),a2
		move.b	(a2)+,d1
		move.l	a0,a1
		bra.s	loc_251CE
loc_251B0:	
		bsr	loc_25326
		bne.s	loc_251F2
		move.b	0(a0),0(a1)
		move.b	#4,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
loc_251CE:
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	#4,1(a1)
		move.b	#4,$18(a1)
		move.b	#$18,$19(a1)
		move.w	8(a1),$30(a1)
loc_251F2:
		dbra	d1,loc_251B0
		move.l	a0,$3C(a1)
		move.l	a1,$3C(a0)
		cmp.b	#$C,$28(a0)
		bne.s	loc_2520C
		move.b	#1,$36(a0)
loc_2520C:
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
loc_25236:
		bsr.s	loc_2529C
		tst.w	($FFFFFFD8).w
		beq.s	loc_25242
		bra	loc_25320
loc_25242:
		move.w	$32(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bls.s	loc_25266
		move.w	$34(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_2526C
loc_25266:
		jmp	displaySprite	
loc_2526C:
		move.l	$3C(a0),a1
		cmpa.l	a0,a1
		beq.s	loc_2527A
		jsr	delete_A1_Object	
loc_2527A:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_2528C
		bclr	#7,2(a2,d0)
loc_2528C:
		jmp	deleteObject	
loc_25292:
		bsr.s	loc_2529C
		bsr.s	loc_252E6
		jmp	displaySprite	
loc_2529C:
		move.w	8(a0),-(sp)
		tst.b	$36(a0)
		beq.s	loc_252BE
		move.w	8(a0),d0
		subq.w	#1,d0
		cmp.w	$32(a0),d0
		bne.s	loc_252B8
		move.b	#0,$36(a0)
loc_252B8:
		move.w	d0,8(a0)
		bra.s	loc_252D4
loc_252BE:
		move.w	8(a0),d0
		addq.w	#1,d0
		cmp.w	$34(a0),d0
		bne.s	loc_252D0
		move.b	#1,$36(a0)
loc_252D0:
		move.w	d0,8(a0)
loc_252D4:
		moveq	#0,d1
		move.b	$19(a0),d1
		move.w	#8,d3
		move.w	(sp)+,d4
		bsr	loc_25332
		rts
loc_252E6:
		move.l	$3C(a0),a1
		move.w	8(a0),d0
		sub.w	#$18,d0
		move.w	8(a1),d2
		add.w	#$18,d2
		cmp.w	d0,d2
		bne.s	loc_2530A
		eor.b	#1,$36(a0)
		eor.b	#1,$36(a1)
loc_2530A:
		rts
;-------------------------------------------------------------------------------
Platform_Horizontal_Mappings: 
		dc.w	loc_2530E-Platform_Horizontal_Mappings
loc_2530E:
		dc.w	$2
		dc.l	$F8090010,$8FFE8,$F8090810,$8080000	
;=============================================================================== 
; Object 0x7A - Platforms - Move horizontally - Dust Hill / Chemical Plant
; [ End ]	
;===============================================================================	