;=============================================================================== 
; Object 0x36 - Vertical Spikes 
; [ Begin ]	
;===============================================================================	
loc_1225C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1226A(pc,d0),d1
		jmp	loc_1226A(pc,d1)
loc_1226A:
		dc.w	loc_12282-loc_1226A
		dc.w	loc_122F2-loc_1226A
		dc.w	loc_12342-loc_1226A	
		dc.w	loc_1239E-loc_1226A
loc_12272:
		dc.b	$10,$10,$20,$10,$30,$10,$40,$10,$10,$10,$10,$20,$10,$30,$10,$40
loc_12282:
		addq.b	#2,$24(a0)
		move.l	#Spikes_Mappings,4(a0) 
		move.w	#$2434,2(a0)
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.b	$28(a0),d0
		and.b	#$F,$28(a0)
		and.w	#$F0,d0
		lea	loc_12272(pc),a1
		lsr.w	#3,d0
		adda.w	d0,a1
		move.b	(a1)+,$19(a0)
		move.b	(a1)+,$16(a0)
		lsr.w	#1,d0
		move.b	d0,$1A(a0)
		cmp.b	#4,d0
		bcs.s	loc_122D4
		addq.b	#2,$24(a0)
		move.w	#$242C,2(a0)
loc_122D4:
		btst	#1,$22(a0)
		beq.s	loc_122E2
		move.b	#6,$24(a0)
loc_122E2:
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$32(a0)
		bra	ModifySpriteAttr_2P	
loc_122F2:
		bsr	loc_1241C
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		bsr	SolidObject	
		move.b	$22(a0),d6
		and.b	#$18,d6
		beq.s	loc_1233A
		move.b	d6,d0
		and.b	#8,d0
		beq.s	loc_1232C
		lea	($FFFFB000).w,a1
		bsr	loc_123EC
loc_1232C:
		and.b	#$10,d6
		beq.s	loc_1233A
		lea	($FFFFB040).w,a1
		bsr	loc_123EC
loc_1233A:
		move.w	$30(a0),d0
		bra	loc_12D4C
loc_12342:
		move.w	8(a0),-(sp)
		bsr	loc_1241C
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	(sp)+,d4
		bsr	SolidObject	
		swap.w	d6
		and.w	#3,d6
		beq.s	loc_12396
		move.b	d6,d0
		and.b	#1,d0
		beq.s	loc_12382
		lea	($FFFFB000).w,a1
		bsr	loc_123EC
		bclr	#5,$22(a0)
loc_12382:
		and.b	#2,d6
		beq.s	loc_12396
		lea	($FFFFB040).w,a1
		bsr	loc_123EC
		bclr	#6,$22(a0)
loc_12396:
		move.w	$30(a0),d0
		bra	loc_12D4C
loc_1239E:	
		bsr	loc_1241C
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		bsr	SolidObject	
		swap.w	d6
		and.w	#$C,d6
		beq.s	loc_123E4
		move.b	d6,d0
		and.b	#4,d0
		beq.s	loc_123D6
		lea	($FFFFB000).w,a1
		bsr	loc_123EC
loc_123D6:
		and.b	#8,d6
		beq.s	loc_123E4
		lea	($FFFFB040).w,a1
		bsr	loc_123EC
loc_123E4:
		move.w	$30(a0),d0
		bra	loc_12D4C
loc_123EC:
		btst	#1,$2B(a1)
		bne.s	loc_1241A
		cmp.b	#4,$24(a1)
		bcc.s	loc_1241A
		move.l	$C(a1),d3
		move.w	$12(a1),d0
		ext.l	d0
		asl.l	#8,d0
		sub.l	d0,d3
		move.l	d3,$C(a1)
		move.l	a0,a2
		move.l	a1,a0
		jsr	Hurt_Player	
		move.l	a2,a0
loc_1241A:
		rts
loc_1241C:
		moveq	#0,d0
		move.b	$28(a0),d0
		add.w	d0,d0
		move.w	loc_1242C(pc,d0),d1
		jmp	loc_1242C(pc,d1)
loc_1242C:
		dc.w	loc_12432-loc_1242C
		dc.w	loc_12434-loc_1242C
		dc.w	loc_12448-loc_1242C
loc_12432:
		rts
loc_12434:
		bsr	loc_1245C
		moveq	#0,d0
		move.b	$34(a0),d0
		add.w	$32(a0),d0
		move.w	d0,$C(a0)
		rts
loc_12448:
		bsr	loc_1245C
		moveq	#0,d0
		move.b	$34(a0),d0
		add.w	$30(a0),d0
		move.w	d0,8(a0)
		rts
loc_1245C:
		tst.w	$38(a0)
		beq.s	loc_1247A
		subq.w	#1,$38(a0)
		bne.s	loc_124BC
		tst.b	1(a0)
		bpl.s	loc_124BC
		move.w	#$B6,d0
		jsr	Play_Sfx	
		bra.s	loc_124BC
loc_1247A:
		tst.w	$36(a0)
		beq.s	loc_1249C
		sub.w	#$800,$34(a0)
		bcc.s	loc_124BC
		move.w	#0,$34(a0)
		move.w	#0,$36(a0)
		move.w	#$3C,$38(a0)
		bra.s	loc_124BC
loc_1249C:
		add.w	#$800,$34(a0)
		cmp.w	#$2000,$34(a0)
		bcs.s	loc_124BC
		move.w	#$2000,$34(a0)
		move.w	#1,$36(a0)
		move.w	#$3C,$38(a0)
loc_124BC:
		rts
Spikes_Mappings: 
		dc.w	loc_124CE-Spikes_Mappings
		dc.w	loc_124E0-Spikes_Mappings
		dc.w	loc_12502-Spikes_Mappings
		dc.w	loc_12534-Spikes_Mappings
		dc.w	loc_12576-Spikes_Mappings
		dc.w	loc_12588-Spikes_Mappings
		dc.w	loc_125AA-Spikes_Mappings
		dc.w	loc_125DC-Spikes_Mappings
loc_124CE:
		dc.w	$2
		dc.l	$F0070000,$FFF0,$F0070000,$0
loc_124E0:
		dc.w	$4
		dc.l	$F0070000,$FFE0,$F0070000,$FFF0
		dc.l	$F0070000,0,$F0070000,$10
loc_12502:
		dc.w	$6
		dc.l	$F0070000,$FFD0,$F0070000,$FFE0
		dc.l	$F0070000,$FFF0,$F0070000,$0
		dc.l	$F0070000,$10,$F0070000,$20
loc_12534:
		dc.w	$8
		dc.l	$F0070000,$FFC0,$F0070000,$FFD0
		dc.l	$F0070000,$FFE0,$F0070000,$FFF0
		dc.l	$F0070000,0,$F0070000,$10
		dc.l	$F0070000,$20,$F0070000,$30
loc_12576:
		dc.w	$2
		dc.l	$F00D0000,$FFF0,$D0000,$FFF0
loc_12588:
		dc.w	$4
		dc.l	$E00D0000,$FFF0,$F00D0000,$FFF0
		dc.l	$D0000,$FFF0,$100D0000,$FFF0
loc_125AA:
		dc.w	$6
		dc.l	$D00D0000,$FFF0,$E00D0000,$FFF0
		dc.l	$F00D0000,$FFF0,$D0000,$FFF0
		dc.l	$100D0000,$FFF0,$200D0000,$FFF0
loc_125DC:
		dc.w	$8
		dc.l	$C00D0000,$FFF0,$D00D0000,$FFF0
		dc.l	$E00D0000,$FFF0,$F00D0000,$FFF0
		dc.l	$D0000,$FFF0,$100D0000,$FFF0
		dc.l	$200D0000,$FFF0,$300D0000,$FFF0
;=============================================================================== 
; Object 0x36 - Vertical Spikes 
; [ End ]	
;===============================================================================	