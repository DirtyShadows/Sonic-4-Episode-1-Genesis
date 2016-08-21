;===============================================================================
; Object 0x87
; [ Begin ]
;===============================================================================	
loc_7EFA:
		moveq	#0,d0
		move.b	$A(a0),d0
		move.w	loc_7F08(pc,d0),d1
		jmp	loc_7F08(pc,d1)
loc_7F08:
		dc.w	loc_7F10-loc_7F08
		dc.w	loc_8010-loc_7F08
		dc.w	loc_80AA-loc_7F08
		dc.w	loc_814A-loc_7F08
loc_7F10:
		move.b	#2,$A(a0)
		move.l	#loc_7E76,4(a0)
		move.w	#$41FA,2(a0)
		move.b	#4,1(a0)
		bset	#6,1(a0)
		move.b	#2,$F(a0)
		move.w	#$20,d0
		moveq	#0,d1
		lea	$10(a0),a1
		move.w	#$48,(a1)
		move.w	d0,2(a1)
		move.w	d1,4(a1)
		move.w	#$E0,6(a1)
		move.w	d0,8(a1)
		move.w	d1,$A(a1)
		move.w	d0,$E(a1)
		move.w	d0,$14(a1)
		move.w	d0,$1A(a1)
		move.w	d0,$20(a1)
		tst.b	($FFFFFE00).w
		bne.s	loc_7FBA
		bsr	loc_7B8A
		bne.s	loc_7FB8
		move.b	#$87,(a1)
		move.b	#4,$A(a1)
		move.l	#loc_7E76,4(a1)
		move.w	#$41FA,2(a1)
		move.b	#4,1(a1)
		bset	#6,1(a1)
		move.b	#1,$F(a1)
		lea	$10(a1),a2
		move.w	#$80,(a2)
		move.w	d0,2(a2)
		move.w	d1,4(a2)
		move.w	d0,8(a2)
		move.w	d0,$E(a2)
loc_7FB8:
		rts
loc_7FBA:
		bsr	loc_7B8A
		bne.s	loc_7FB8
		move.b	#$87,(a1)
		move.b	#6,$A(a1)
		move.l	#loc_7E76,4(a1)
		move.w	#$41FA,2(a1)
		move.b	#4,1(a1)
		bset	#6,1(a1)
		move.b	#0,$F(a1)
		lea	$10(a1),a2
		move.w	#$2C,d0
		move.w	#$A,d1
		move.w	d0,2(a2)
		move.w	d1,4(a2)
		move.w	d0,8(a2)
		move.w	d1,$A(a2)
		move.w	d0,$E(a2)
		move.w	d1,$10(a2)
		rts
loc_8010:
		moveq	#0,d0
		moveq	#0,d3
		lea	$10(a0),a1
		move.l	a1,a2
		addq.w	#5,a2
		move.b	($FFFFB03C).w,d0
		beq.s	loc_802A
		addq.w	#1,d3
		move.b	d0,(a2)
		lea	6(a2),a2
loc_802A:
		move.b	($FFFFB03D).w,d0
		tst.b	d3
		bne.s	loc_8036
		tst.b	d0
		beq.s	loc_803E
loc_8036:
		addq.w	#1,d3
		move.b	d0,(a2)
		lea	6(a2),a2
loc_803E:
		addq.w	#1,d3
		move.b	($FFFFB03E).w,(a2)
		lea	6(a2),a2
		move.w	d3,d4
		subq.w	#1,d4
		move.w	#$48,d1
		moveq	#0,d5
loc_8052:	
		move.w	d1,0(a1,d5)
		add.w	#8,d1
		addq.w	#6,d5
		dbra	d4,loc_8052
		moveq	#0,d0
		moveq	#0,d4
		move.b	($FFFFB07C).w,d0
		beq.s	loc_8072
		addq.w	#1,d4
		move.b	d0,(a2)
		lea	6(a2),a2
loc_8072:
		move.b	($FFFFB07D).w,d0
		tst.b	d4
		bne.s	loc_807E
		tst.b	d0
		beq.s	loc_8086
loc_807E:
		addq.w	#1,d4
		move.b	d0,(a2)
		lea	6(a2),a2
loc_8086:
		move.b	($FFFFB07E).w,(a2)
		addq.w	#1,d4
		add.w	d4,d3
		subq.w	#1,d4
		move.w	#$E0,d1
loc_8094:	
		move.w	d1,0(a1,d5)
		add.w	#8,d1
		addq.w	#6,d5
		dbra	d4,loc_8094
		move.b	d3,$F(a0)
		bra	J_DisplaySprite_00	
loc_80AA:
		moveq	#0,d0
		moveq	#0,d1
		moveq	#0,d2
		moveq	#1,d3
		move.b	($FFFFB03E).w,d0
		add.b	($FFFFB07E).w,d0
		move.b	($FFFFB03D).w,d1
		add.b	($FFFFB07D).w,d1
		move.b	($FFFFB03C).w,d2
		add.b	($FFFFB07C).w,d2
		cmp.b	#$A,d0
		bcs.s	loc_80D6
		addq.w	#1,d1
		sub.b	#$A,d0
loc_80D6:
		tst.b	d1
		beq.s	loc_80F2
		cmp.b	#$A,d1
		bcs.s	loc_80E8
		add.b	#1,d2
		sub.b	#$A,d1
loc_80E8:
		addq.w	#1,d3
		tst.b	d2
		beq.s	loc_80F8
		addq.w	#1,d3
		bra.s	loc_80F8
loc_80F2:
		tst.b	d2
		beq.s	loc_80F8
		addq.w	#2,d3
loc_80F8:
		lea	$10(a0),a1
		move.b	d3,$F(a0)
		cmp.b	#2,d3
		blt.s	loc_8128
		beq.s	loc_8134
		move.w	#$78,(a1)
		move.b	d2,5(a1)
		move.w	#$80,6(a1)
		move.b	d1,$B(a1)
		move.w	#$88,$C(a1)
		move.b	d0,$11(a1)
		bra	J_DisplaySprite_00	
loc_8128:
		move.w	#$80,(a1)
		move.b	d0,5(a1)
		bra	J_DisplaySprite_00	
loc_8134:
		move.w	#$7C,(a1)
		move.b	d1,5(a1)
		move.w	#$84,6(a1)
		move.b	d0,$B(a1)
		bra	J_DisplaySprite_00	
loc_814A:
		move.b	($FFFFDB93).w,d0
		bne.s	loc_8152
		rts
loc_8152:
		lea	$10(a0),a1
		moveq	#0,d2
		move.b	d0,d1
		and.b	#$F0,d0
		beq.s	loc_817A
		addq.w	#1,d2
		move.w	#$20,(a1)
		lea	6(a1),a1
		sub.b	#$10,d0
		beq.s	loc_817A
		addq.w	#1,d2
		move.w	#$30,(a1)
		lea	6(a1),a1
loc_817A:
		and.b	#$F,d1
		beq.s	loc_8196
		addq.w	#1,d2
		move.w	#$B8,(a1)
		lea	6(a1),a1
		sub.b	#1,d1
		beq.s	loc_8196
		addq.w	#1,d2
		move.w	#$C8,(a1)
loc_8196:
		move.b	d2,$F(a0)
		bra	J_DisplaySprite_00	
;===============================================================================
; Object 0x87
; [ End ]
;===============================================================================