;=============================================================================== 
; Object 0x66 - Metropolis - Springs on Walls
; [ Begin ]	
;=============================================================================== 
loc_22D08:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_22D16(pc,d0),d1
		jmp	loc_22D16(pc,d1)
loc_22D16:
		dc.w	loc_22D1A-loc_22D16
		dc.w	loc_22D5E-loc_22D16
loc_22D1A:
		addq.b	#2,$24(a0)
		move.l	#Springs_Wall_Mappings,4(a0) 
		move.w	#$8680,2(a0)
		bsr	loc_22F04
		or.b	#4,1(a0)
		move.b	#8,$19(a0)
		move.b	#4,$18(a0)
		move.b	#$40,$16(a0)
		move.b	$28(a0),d0
		lsr.b	#4,d0
		and.b	#7,d0
		move.b	d0,$1A(a0)
		beq.s	loc_22D5E
		move.b	#$80,$16(a0)
loc_22D5E:
		move.w	#$13,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_22F0A
		cmp.b	#1,d4
		bne.s	loc_22DA6
		btst	#1,$22(a1)
		beq.s	loc_22DA6
		move.b	$22(a0),d1
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcs.s	loc_22D9E
		eor.b	#1,d1
loc_22D9E:
		and.b	#1,d1
		bne.s	loc_22DA6
		bsr.s	loc_22DFC
loc_22DA6:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_22F0A
		cmp.b	#1,d4
		bne.s	loc_22DDC
		btst	#1,$22(a1)
		beq.s	loc_22DDC
		move.b	$22(a0),d1
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcs.s	loc_22DD4
		eor.b	#1,d1
loc_22DD4:
		and.b	#1,d1
		bne.s	loc_22DDC
		bsr.s	loc_22DFC
loc_22DDC:
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_22EFE
		tst.w	($FFFFFE08).w
		beq.s	loc_22DFA
		bsr	loc_22EF8
loc_22DFA:
		rts
loc_22DFC:
		move.w	$30(a0),$10(a1)
		move.w	#$F800,$10(a1)
		move.w	#$F800,$12(a1)
		bset	#0,$22(a1)
		btst	#0,$22(a0)
		bne.s	loc_22E26
		bclr	#0,$22(a1)
		neg.w	$10(a1)
loc_22E26:
		move.w	#$F,$2E(a1)
		move.w	$10(a1),$14(a1)
		btst	#2,$22(a1)
		bne.s	loc_22E40
		move.b	#0,$1C(a1)
loc_22E40:
		move.b	$28(a0),d0
		bpl.s	loc_22E4C
		move.w	#0,$12(a1)
loc_22E4C:
		btst	#0,d0
		beq.s	loc_22E8C
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#1,$2C(a1)
		move.b	#8,$2D(a1)
		btst	#1,d0
		bne.s	loc_22E7C
		move.b	#3,$2C(a1)
loc_22E7C:
		btst	#0,$22(a1)
		beq.s	loc_22E8C
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_22E8C:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_22EA2
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_22EA2:
		cmp.b	#8,d0
		bne.s	loc_22EB4
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_22EB4:
		bclr	#5,$22(a0)
		bclr	#6,$22(a0)
		bclr	#5,$22(a1)
		move.w	#$CC,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------
Springs_Wall_Mappings: 
		dc.w	loc_22ED4-Springs_Wall_Mappings
		dc.w	loc_22EE6-Springs_Wall_Mappings
loc_22ED4:
		dc.w	$2
		dc.l	$C0050034,$1AFFF8,$30050034,$1AFFF8
loc_22EE6:
		dc.w	$2
		dc.l	$80050034,$1AFFF8,$70050034,$1AFFF8	
;=============================================================================== 
; Object 0x66 - Metropolis - Springs on Walls
; [ End ]	
;=============================================================================== 