;=============================================================================== 
; Object 0x6A - Three Rotating Boxes - Dust Hill / Platforms - Metropolis 
; [ Begin ]	
;===============================================================================
loc_23864:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_23872(pc,d0),d1
		jmp	loc_23872(pc,d1)
loc_23872:
		dc.w	loc_23878-loc_23872
		dc.w	loc_23992-loc_23872
		dc.w	loc_23A1A-loc_23872
loc_23878:
		addq.b	#2,$24(a0)
		move.l	#Mz_Platform_Mappings,4(a0) 
		move.w	#$6000,2(a0)
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.b	#$20,$19(a0)
		move.b	#$C,$16(a0)
		move.l	#loc_23A90,$2C(a0) 
		move.b	#1,$1A(a0)
		cmp.b	#$B,($FFFFFE10).w
		bne	loc_23978
		addq.b	#2,$24(a0)
		move.l	#Rotating_Boxes_Mappings,4(a0) 
		move.w	#$63D4,2(a0)
		move.b	#$20,$19(a0)
		move.b	#$20,$16(a0)
		move.l	#loc_23AA8,$2C(a0)
		btst	#0,$22(a0)
		beq.s	loc_238F0
		move.l	#loc_23AC6,$2C(a0)
loc_238F0:
		move.b	#0,$1A(a0)
		cmp.b	#$18,$28(a0)
		bne	loc_23984
		bsr	loc_23B08
		bne.s	loc_23950
		bsr.s	loc_23952
		add.w	#$40,8(a1)
		add.w	#$40,$C(a1)
		move.b	#6,$28(a1)
		btst	#0,$22(a0)
		beq.s	loc_23928
		move.b	#$C,$28(a1)
loc_23928:
		bsr	loc_23B08
		bne.s	loc_23950
		bsr.s	loc_23952
		sub.w	#$40,8(a1)
		add.w	#$40,$C(a1)
		move.b	#$C,$28(a1)
		btst	#0,$22(a0)
		beq.s	loc_23950
		move.b	#6,$28(a1)
loc_23950:
		bra.s	loc_23978
loc_23952:
		move.b	0(a0),0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	8(a0),$32(a1)
		move.w	$C(a0),$30(a1)
		move.b	$22(a0),$22(a1)
		rts
loc_23978:
		move.w	8(a0),$32(a0)
		move.w	$C(a0),$30(a0)
loc_23984:
		bsr	loc_23B0E
		move.b	$28(a0),$38(a0)
		bra	loc_23A56
loc_23992:
		move.w	8(a0),-(sp)
		tst.w	$36(a0)
		bne.s	loc_239E2
		move.b	$3C(a0),d1
		move.b	$22(a0),d0
		btst	#3,d0
		bne.s	loc_239BE
		btst	#3,d1
		beq.s	loc_239C2
		move.b	#1,$36(a0)
		move.b	#0,$3C(a0)
		bra.s	loc_239F2
loc_239BE:
		move.b	d0,$3C(a0)
loc_239C2:
		btst	#4,d0
		bne.s	loc_239DC
		btst	#4,d1
		beq.s	loc_239F2
		move.b	#1,$36(a0)
		move.b	#0,$3C(a0)
		bra.s	loc_239F2
loc_239DC:
		move.b	d0,$3C(a0)
		bra.s	loc_239F2
loc_239E2:
		jsr	SpeedToPos	
		subq.w	#1,$34(a0)
		bne.s	loc_239F2
		bsr	loc_23A56
loc_239F2:
		move.w	(sp)+,d4
		tst.b	1(a0)
		bpl.s	loc_23A12
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		bsr	loc_23B14
loc_23A12:
		move.w	$32(a0),d0
		bra	loc_23B1A
loc_23A1A:
		move.w	8(a0),-(sp)
		jsr	SpeedToPos	
		subq.w	#1,$34(a0)
		bne.s	loc_23A2E
		bsr	loc_23A56
loc_23A2E:
		move.w	(sp)+,d4
		tst.b	1(a0)
		bpl.s	loc_23A4E
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		bsr	loc_23B14
loc_23A4E:
		move.w	$32(a0),d0
		bra	loc_23B1A
loc_23A56:
		moveq	#0,d0
		move.b	$38(a0),d0
		move.l	$2C(a0),a1
		lea	0(a1,d0),a1
		move.w	(a1)+,$10(a0)
		move.w	(a1)+,$12(a0)
		move.w	(a1)+,$34(a0)
		move.w	#7,$3A(a0)
		move.b	#0,$36(a0)
		addq.b	#6,$38(a0)
		cmp.b	#$18,$38(a0)
		bcs.s	loc_23A8E
		move.b	#0,$38(a0)
loc_23A8E:
		rts
;-------------------------------------------------------------------------------
loc_23A90:
		dc.w	0,$400,$10,$400,$FE00,$20,0,$400
		dc.w	$10,$FC00,$FE00,$20
;-------------------------------------------------------------------------------	
loc_23AA8:
		dc.w	0,$100,$40,$FF00,0,$80,0,$FF00
		dc.w	$40,$100,0,$80,$100,0,$40	
;-------------------------------------------------------------------------------
loc_23AC6:
		dc.w	0,$100,$40,$100,0,$80,0,$FF00
		dc.w	$40,$FF00,0,$80,$FF00,0,$40	
;-------------------------------------------------------------------------------
Rotating_Boxes_Mappings: 
		dc.w	loc_23AE6-Rotating_Boxes_Mappings
loc_23AE6:
		dc.w	$4
		dc.l	$E00F0000,$FFE0,$E00F0010,$80000
		dc.l	$F1810,$1808FFE0,$F1800,$18000000 
;=============================================================================== 
; Object 0x6A - Three Rotating Boxes - Dust Hill / Platforms - Metropolis 
; [ End ]	
;===============================================================================	