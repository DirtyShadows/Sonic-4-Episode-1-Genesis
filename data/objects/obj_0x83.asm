;===============================================================================
; Object 0x83 - Three rotating platforms - Neo Green Hill
; [ Begin ]
;===============================================================================
loc_26104:
		btst	#6,1(a0)
		bne	loc_2611C
loc_2610E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_26124(pc,d0),d1
		jmp	loc_26124(pc,d1)
loc_2611C:
		move.w	#$280,d0
		bra	loc_26380
loc_26124:
		dc.w	loc_2612A-loc_26124
		dc.w	loc_26228-loc_26124
		dc.w	loc_26356-loc_26124
loc_2612A:
		addq.b	#2,$24(a0)
		move.l	#NGHz_Swing_Platforms_Mappings,4(a0) 
		move.w	#0,2(a0)
		bsr	loc_2639E
		move.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.b	#$20,$19(a0)
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$32(a0)
		move.b	$28(a0),d1
		move.b	d1,d0
		and.w	#$F,d1
		and.b	#$F0,d0
		ext.w	d0
		asl.w	#3,d0
		move.w	d0,$2E(a0)
		move.b	$22(a0),d0
		ror.b	#2,d0
		and.b	#$C0,d0
		move.b	d0,$26(a0)
		bsr	loc_26398
		bne.s	loc_261E4
		move.b	0(a0),0(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	#4,1(a1)
		bset	#6,1(a1)
		move.b	#$40,$E(a1)
		moveq	#8,d1
		move.b	d1,$F(a1)
		subq.w	#1,d1
		lea	$10(a1),a2
loc_261B8:	
		addq.w	#4,a2
		move.w	#1,(a2)+
		dbra	d1,loc_261B8
		move.b	#1,$B(a1)
		move.b	#$40,$14(a1)
		bset	#4,1(a1)
		move.l	a1,$34(a0)
		bsr.s	loc_261E6
		move.l	a1,$38(a0)
		bsr.s	loc_261E6
		move.l	a1,$3C(a0)
loc_261E4:
		bra.s	loc_26228
loc_261E6:
		bsr	loc_26398
		bne.s	loc_26226
		addq.b	#4,$24(a1)
		move.b	0(a0),0(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	#4,1(a1)
		move.b	#4,$18(a1)
		move.b	#$20,$19(a1)
		move.w	8(a0),$30(a1)
		move.w	$C(a0),$32(a1)
		move.w	8(a0),$2C(a1)
loc_26226:
		rts
loc_26228:
		move.w	8(a0),-(sp)
		moveq	#0,d0
		moveq	#0,d1
		move.w	$2E(a0),d0
		add.w	d0,$26(a0)
		move.w	$32(a0),d2
		move.w	$30(a0),d3
		moveq	#0,d6
		move.l	$34(a0),a1
		lea	$10(a1),a2
		move.b	$26(a0),d0
		bsr	loc_263A4
		swap.w	d0
		swap.w	d1
		asr.l	#4,d0
		asr.l	#4,d1
		move.l	d0,d4
		move.l	d1,d5
		swap.w	d4
		swap.w	d5
		add.w	d2,d4
		add.w	d3,d5
		move.w	d5,8(a1)
		move.w	d4,$C(a1)
		move.l	d0,d4
		move.l	d1,d5
		add.l	d0,d4
		add.l	d1,d5
		moveq	#1,d6
		bsr	loc_26336
		swap.w	d4
		swap.w	d5
		add.w	d2,d4
		add.w	d3,d5
		move.w	d5,8(a0)
		move.w	d4,$C(a0)
		move.b	$26(a0),d0
		add.b	#$55,d0
		bsr	loc_263A4
		swap.w	d0
		swap.w	d1
		asr.l	#4,d0
		asr.l	#4,d1
		move.l	d0,d4
		move.l	d1,d5
		moveq	#2,d6
		bsr	loc_26336
		swap.w	d4
		swap.w	d5
		add.w	d2,d4
		add.w	d3,d5
		move.l	$38(a0),a1
		move.w	d5,8(a1)
		move.w	d4,$C(a1)
		move.b	$26(a0),d0
		sub.b	#$55,d0
		bsr	loc_263A4
		swap.w	d0
		swap.w	d1
		asr.l	#4,d0
		asr.l	#4,d1
		move.l	d0,d4
		move.l	d1,d5
		moveq	#2,d6
		bsr	loc_26336
		swap.w	d4
		swap.w	d5
		add.w	d2,d4
		add.w	d3,d5
		move.l	$3C(a0),a1
		move.w	d5,8(a1)
		move.w	d4,$C(a1)
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		move.w	#8,d2
		move.w	#9,d3
		move.w	(sp)+,d4
		bsr	loc_263AA
		tst.w	($FFFFFFD8).w
		beq.s	loc_26312
		bra	loc_26386
loc_26312:
		move.w	$30(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_2632A
		bra	loc_26386
loc_2632A:
		move.l	$34(a0),a1
		bsr	loc_26392
		bra	loc_2638C
loc_26336:
		movem.l D4/D5,-(sp)
		swap.w	d4
		swap.w	d5
		add.w	d2,d4
		add.w	d3,d5
		move.w	d5,(a2)+
		move.w	d4,(a2)+
		movem.l (sp)+,d4/D5
		add.l	d0,d4
		add.l	d1,d5
		addq.w	#2,a2
		dbra	d6,loc_26336
		rts
loc_26356:
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		move.w	#8,d2
		move.w	#9,d3
		move.w	$2C(a0),d4
		bsr	loc_263AA
		move.w	8(a0),$2C(a0)
		move.w	$30(a0),d0
		bra	loc_263B0
;===============================================================================
; Object 0x83 - Three rotating platforms - Neo Green Hill
; [ End ]
;===============================================================================