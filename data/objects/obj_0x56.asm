;=============================================================================== 
; Object 0x56 - Ghz Boss
; [ Begin ]	
;===============================================================================	
loc_2B4B8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_2B4C6(pc,d0),d1
		jmp	loc_2B4C6(pc,d1)
loc_2B4C6:
		dc.w	loc_2B4D6-loc_2B4C6
		dc.w	loc_2B802-loc_2B4C6
		dc.w	loc_2BAF0-loc_2B4C6
		dc.w	loc_2BB98-loc_2B4C6
		dc.w	loc_2BC06-loc_2B4C6
		dc.w	loc_2BD96-loc_2B4C6
		dc.w	loc_2BACC-loc_2B4C6
		dc.w	loc_2BE7C-loc_2B4C6
loc_2B4D6:
		move.l	#loc_2C09A,4(a0)
		move.w	#$23A0,2(a0)
		or.b	#4,1(a0)
		move.b	#$81,$28(a0)
		move.w	#$29D0,8(a0)
		move.w	#$426,$C(a0)
		move.b	#$20,$19(a0)
		move.b	#$14,$16(a0)
		move.b	#4,$18(a0)
		move.b	#$F,$20(a0)
		move.b	#8,$21(a0)
		addq.b	#2,$24(a0)
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$38(a0)
		bsr	loc_2C1DA
		jsr	S1SingleObjectLoad	
		bne	loc_2B584
		move.b	#$56,0(a1)
		move.l	a0,$34(a1)
		move.l	a1,$34(a0)
		move.l	#loc_2C09A,4(a1)
		move.w	#$3A0,2(a1)
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#4,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		move.b	#$E,$24(a1)
		move.b	#1,$1C(a1)
		move.b	1(a0),1(a1)
loc_2B584:
		jsr	S1SingleObjectLoad	
		bne.s	loc_2B5D2
		move.b	#$56,0(a1)
		move.l	a0,$34(a1)
		move.l	#loc_2BFFA,4(a1)
		move.w	#$400,2(a1)
		bsr	loc_2C1C2
		move.b	#4,1(a1)
		move.b	#$30,$19(a1)
		move.b	#$10,$16(a1)
		move.b	#3,$18(a1)
		move.w	#$2AF0,8(a1)
		move.l	$C(a0),$C(a1)
		move.b	#6,$24(a1)
loc_2B5D2:
		bsr	loc_2B638
		sub.w	#8,$38(a0)
		move.w	#$2AF0,8(a0)
		move.w	#$2F8,$C(a0)
		jsr	S1SingleObjectLoad	
		bne.s	loc_2B636
		move.b	#$56,0(a1)
		move.l	a0,$34(a1)
		move.l	#loc_2BF12,4(a1)
		move.w	#$256C,2(a1)
		bsr	loc_2C1C2
		move.b	#4,1(a1)
		move.b	#$40,$19(a1)
		move.b	#3,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		move.w	#$1E,$2A(a1)
		move.b	#4,$24(a1)
loc_2B636:
		rts
loc_2B638:
		jsr	S1SingleObjectLoad	
		bne.s	loc_2B6B0
		move.b	#$56,0(a1)
		move.l	a0,$34(a1)
		move.l	#loc_2BFFA,4(a1)
		move.w	#$2400,2(a1)
		bsr	loc_2C1C2
		move.b	#4,1(a1)
		move.b	#$10,$19(a1)
		move.b	#2,$18(a1)
		move.b	#$10,$16(a1)
		move.b	#$10,$17(a1)
		move.w	#$2AF0,8(a1)
		move.l	$C(a0),$C(a1)
		add.w	#$1C,8(a1)
		add.w	#$C,$C(a1)
		move.b	#8,$24(a1)
		move.b	#4,$1A(a1)
		move.b	#1,$1C(a1)
		move.w	#$A,$2A(a1)
		move.b	#0,$28(a1)
loc_2B6B0:
		jsr	S1SingleObjectLoad	
		bne.s	loc_2B728
		move.b	#$56,0(a1)
		move.l	a0,$34(a1)
		move.l	#loc_2BFFA,4(a1)
		move.w	#$2400,2(a1)
		bsr	loc_2C1C2
		move.b	#4,1(a1)
		move.b	#$10,$19(a1)
		move.b	#2,$18(a1)
		move.b	#$10,$16(a1)
		move.b	#$10,$17(a1)
		move.w	#$2AF0,8(a1)
		move.l	$C(a0),$C(a1)
		add.w	#$FFF4,8(a1)
		add.w	#$C,$C(a1)
		move.b	#8,$24(a1)
		move.b	#4,$1A(a1)
		move.b	#1,$1C(a1)
		move.w	#$A,$2A(a1)
		move.b	#1,$28(a1)
loc_2B728:
		jsr	S1SingleObjectLoad	
		bne.s	loc_2B7A0
		move.b	#$56,0(a1)
		move.l	a0,$34(a1)
		move.l	#loc_2BFFA,4(a1)
		move.w	#$2400,2(a1)
		bsr	loc_2C1C2
		move.b	#4,1(a1)
		move.b	#$10,$19(a1)
		move.b	#3,$18(a1)
		move.b	#$10,$16(a1)
		move.b	#$10,$17(a1)
		move.w	#$2AF0,8(a1)
		move.l	$C(a0),$C(a1)
		add.w	#$FFD4,8(a1)
		add.w	#$C,$C(a1)
		move.b	#8,$24(a1)
		move.b	#6,$1A(a1)
		move.b	#2,$1C(a1)
		move.w	#$A,$2A(a1)
		move.b	#2,$28(a1)
loc_2B7A0:
		jsr	S1SingleObjectLoad	
		bne.s	loc_2B800
		move.b	#$56,0(a1)
		move.l	a0,$34(a1)
		move.l	#loc_2BFFA,4(a1)
		move.w	#$2400,2(a1)
		bsr	loc_2C1C2
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#2,$18(a1)
		move.w	#$2AF0,8(a1)
		move.l	$C(a0),$C(a1)
		add.w	#$FFCA,8(a1)
		add.w	#8,$C(a1)
		move.b	#$A,$24(a1)
		move.b	#1,$1A(a1)
		move.b	#0,$1C(a1)
loc_2B800:
		rts
loc_2B802:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2B810(pc,d0),d1
		jmp	loc_2B810(pc,d1)
loc_2B810:
		dc.w	loc_2B81C-loc_2B810
		dc.w	loc_2B848-loc_2B810
		dc.w	loc_2B8A4-loc_2B810
		dc.w	loc_2B8D6-loc_2B810
		dc.w	loc_2B914-loc_2B810
		dc.w	loc_2B92A-loc_2B810
loc_2B81C:
		move.b	#0,$20(a0)
		cmp.w	#$29D0,8(a0)
		ble.s	loc_2B83A
		sub.w	#1,8(a0)
		add.w	#1,$C(a0)
		bra	loc_2C198
loc_2B83A:
		move.w	#$29D0,8(a0)
		addq.b	#2,$25(a0)
		bra	loc_2C198
loc_2B848:
		moveq	#0,d0
		move.b	$2C(a0),d0
		move.w	loc_2B856(pc,d0),d1
		jmp	loc_2B856(pc,d1) 
loc_2B856:
		dc.w	loc_2B85A-loc_2B856
		dc.w	loc_2B880-loc_2B856
loc_2B85A:
		cmp.w	#$41E,$C(a0)
		bge.s	loc_2B86C
		add.w	#1,$C(a0)
		bra	loc_2C198
loc_2B86C:
		addq.b	#2,$2C(a0)
		bset	#0,$2D(a0)
		move.w	#$3C,$2A(a0)
		bra	loc_2C198
loc_2B880:
		sub.w	#1,$2A(a0)
		bpl	loc_2C198
		move.w	#$FE00,$10(a0)
		addq.b	#2,$25(a0)
		move.b	#$F,$20(a0)
		bset	#1,$2D(a0)
		bra	loc_2C198
loc_2B8A4:
		bsr	loc_2BA48
		bsr	loc_2BA26
		move.w	$2E(a0),d0
		lsr.w	#1,d0
		sub.w	#$14,d0
		move.w	d0,$C(a0)
		move.w	#0,$2E(a0)
		move.l	8(a0),d2
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.l	d2,8(a0)
		bra	loc_2C198
loc_2B8D6:
		subq.w	#1,$3C(a0)
		bmi.s	loc_2B8FC
		bsr	Boss_Defeated	
		bsr	loc_2C1EC
		bsr	loc_2C1C8
		tst.w	d1
		bpl	loc_2C198
		add.w	d1,$C(a0)
		move.w	#0,$12(a0)
		bra	loc_2C198
loc_2B8FC:
		clr.w	$10(a0)
		addq.b	#2,$25(a0)
		move.w	#$FFDA,$3C(a0)
		move.w	#$C,$2A(a0)
		bra	loc_2C198
loc_2B914:
		subq.w	#1,$2A(a0)
		bpl	loc_2C198
		addq.b	#2,$25(a0)
		move.b	#0,$2C(a0)
		bra	loc_2C198
loc_2B92A:
		moveq	#0,d0
		move.b	$2C(a0),d0
		move.w	loc_2B93C(pc,d0),d1
		jsr	loc_2B93C(pc,d1)
		bra	loc_2C198
loc_2B93C:
		dc.w	loc_2B942-loc_2B93C
		dc.w	loc_2B9C4-loc_2B93C
		dc.w	loc_2B9E2-loc_2B93C
loc_2B942:
		bclr	#0,$2D(a0)
		bsr	loc_2C1B6
		bne	loc_2B9C2
		move.b	#$56,0(a1)
		move.l	a0,$34(a1)
		move.l	#loc_2BF12,4(a1)
		move.w	#$256C,2(a1)
		bsr	loc_2C1C2
		move.b	#4,1(a1)
		move.b	#$20,$19(a1)
		move.b	#3,$18(a1)
		move.l	8(a0),8(a1)
		move.l	$C(a0),$C(a1)
		add.w	#$C,$C(a1)
		move.b	$22(a0),$22(a1)
		move.b	1(a0),1(a1)
		move.b	#$C,$24(a1)
		move.b	#2,$1C(a1)
		move.w	#$10,$2A(a1)
		move.w	#$32,$2A(a0)
		addq.b	#2,$2C(a0)
		bsr	loc_2C1E0
		move.b	#1,($FFFFF7A7).w
loc_2B9C2:
		rts
loc_2B9C4:
		sub.w	#1,$2A(a0)
		bpl.s	loc_2B9E0
		bset	#2,$2D(a0)
		move.w	#$60,$2A(a0)
		addq.b	#2,$2C(a0)
		bsr	loc_2C1E6
loc_2B9E0:
		rts
loc_2B9E2:
		subq.w	#1,$C(a0)
		sub.w	#1,$2A(a0)
		bpl.s	loc_2BA02
		bset	#0,$22(a0)
		bset	#0,1(a0)
		addq.w	#1,$C(a0)
		addq.w	#2,8(a0)
loc_2BA02:
		cmp.w	#$2A90,($FFFFEECA).w
		bcc.s	loc_2BA10
		addq.w	#2,($FFFFEECA).w
		bra.s	loc_2BA24
loc_2BA10:
		tst.b	1(a0)
		bmi.s	loc_2BA24
		addq.w	#4,sp
		move.l	$34(a0),a1
		bsr	loc_2C1AA
		bra	loc_2C19E
loc_2BA24:
		rts
loc_2BA26:
		move.w	8(a0),d0
		cmp.w	#$28A0,d0
		ble.s	loc_2BA36
		cmp.w	#$2B08,d0
		blt.s	loc_2BA46
loc_2BA36:
		bchg	#0,$22(a0)
		bchg	#0,1(a0)
		neg.w	$10(a0)
loc_2BA46:
		rts
loc_2BA48:
		cmp.b	#6,$25(a0)
		bcc.s	loc_2BA8E
		tst.b	$22(a0)
		bmi.s	loc_2BA90
		tst.b	$20(a0)
		bne.s	loc_2BA8E
		tst.b	$3E(a0)
		bne.s	loc_2BA72
		move.b	#$20,$3E(a0)
		move.w	#$AC,d0
		jsr	Play_Sfx	
loc_2BA72:
		lea	($FFFFFB22).w,a1
		moveq	#0,d0
		tst.w	(a1)
		bne.s	loc_2BA80
		move.w	#$EEE,d0
loc_2BA80:
		move.w	d0,(a1)
		subq.b	#1,$3E(a0)
		bne.s	loc_2BA8E
		move.b	#$F,$20(a0)
loc_2BA8E:
		rts
loc_2BA90:
		moveq	#$64,d0
		bsr	loc_2C1D4
		move.b	#6,$25(a0)
		move.w	#0,$10(a0)
		move.w	#$FE80,$12(a0)
		move.w	#$B3,$3C(a0)
		bset	#3,$2D(a0)
		move.l	$34(a0),a1
		move.b	#4,$1C(a1)
		move.b	#6,$1A(a1)
		moveq	#$40,d0
		bra	loc_2C1CE
		rts
loc_2BACC:
		sub.w	#1,$C(a0)
		sub.w	#1,$2A(a0)
		bpl	loc_2C198
		move.b	#4,$24(a0)
		lea	(loc_2BED8),a1
		bsr	loc_2C1BC
		bra	loc_2C198
loc_2BAF0:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2BAFE(pc,d0),d1
		jmp	loc_2BAFE(pc,d1)
loc_2BAFE:
		dc.w	loc_2BB02-loc_2BAFE
		dc.w	loc_2BB68-loc_2BAFE
loc_2BB02:
		move.l	$34(a0),a1
		cmp.b	#$56,(a1)
		bne	loc_2C19E
		btst	#0,$2D(a1)
		beq.s	loc_2BB30
		move.b	#1,$1C(a0)
		move.w	#$18,$2A(a0)
		addq.b	#2,$25(a0)
		move.b	#$F8,d0
		bsr	loc_2C1B0
		bra.s	loc_2BB42
loc_2BB30:
		move.b	($FFFFFE0F).w,d0
		and.b	#$1F,d0
		bne.s	loc_2BB42
		move.b	#$DE,d0
		bsr	loc_2C1B0
loc_2BB42:
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.b	$22(a1),$22(a0)
		move.b	1(a1),1(a0)
		lea	(loc_2BED8),a1
		bsr	loc_2C1BC
		bra	loc_2C198
loc_2BB68:
		sub.w	#1,$2A(a0)
		bpl.s	loc_2BB8A
		cmp.w	#$FFF0,$2A(a0)
		ble	loc_2C19E
		move.b	#4,$18(a0)
		add.w	#1,$C(a0)
		bra	loc_2C198
loc_2BB8A:
		lea	(loc_2BED8),a1
		bsr	loc_2C1BC
		bra	loc_2C198
loc_2BB98:
		tst.b	$25(a0)
		bne.s	loc_2BBC8
		cmp.w	#$28F0,($FFFFEEC8).w
		bcs	loc_2C198
		cmp.w	#$29D0,8(a0)
		ble.s	loc_2BBBA
		sub.w	#1,8(a0)
		bra	loc_2C198
loc_2BBBA:
		move.w	#$29D0,8(a0)
		addq.b	#2,$25(a0)
		bra	loc_2C198
loc_2BBC8:
		move.l	$34(a0),a1
		btst	#1,$2D(a1)
		beq	loc_2C198
		btst	#2,$2D(a1)
		bne	loc_2C198
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		add.w	#8,$C(a0)
		move.b	$22(a1),$22(a0)
		bmi	loc_2C198
		move.b	1(a1),1(a0)
		bra	loc_2C198
loc_2BC06:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2BC14(pc,d0),d1
		jmp	loc_2BC14(pc,d1)
loc_2BC14:
		dc.w	loc_2BC1E-loc_2BC14
		dc.w	loc_2BCB6-loc_2BC14
		dc.w	loc_2BCE8-loc_2BC14
		dc.w	loc_2BD48-loc_2BC14
		dc.w	loc_2BD74-loc_2BC14
loc_2BC1E:
		cmp.w	#$28F0,($FFFFEEC8).w
		bcs	loc_2C198
		move.w	#$100,$12(a0)
		cmp.b	#1,$28(a0)
		bgt.s	loc_2BC58
		beq.s	loc_2BC48
		cmp.w	#$29EC,8(a0)
		ble.s	loc_2BC68
		sub.w	#1,8(a0)
		bra.s	loc_2BC8A
loc_2BC48:
		cmp.w	#$29C4,8(a0)
		ble.s	loc_2BC74
		sub.w	#1,8(a0)
		bra.s	loc_2BC8A
loc_2BC58:
		cmp.w	#$29A4,8(a0)
		ble.s	loc_2BC80
		sub.w	#1,8(a0)
		bra.s	loc_2BC8A
loc_2BC68:
		move.w	#$29EC,8(a0)
		addq.b	#2,$25(a0)
		bra.s	loc_2BC8A
loc_2BC74:
		move.w	#$29C4,8(a0)
		addq.b	#2,$25(a0)
		bra.s	loc_2BC8A
loc_2BC80:
		move.w	#$29A4,8(a0)
		addq.b	#2,$25(a0)
loc_2BC8A:
		bsr	loc_2C1EC
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_2BC9C
		add.w	d1,$C(a0)
loc_2BC9C:
		tst.b	$25(a0)
		beq.s	loc_2BCA8
		move.w	#$FE00,$10(a0)
loc_2BCA8:
		lea	(loc_2BFE6),a1
		bsr	loc_2C1BC
		bra	loc_2C198
loc_2BCB6:
		move.l	$34(a0),a1
		cmp.b	#$56,(a1)
		bne	loc_2C19E
		btst	#1,$2D(a1)
		beq	loc_2C198
		addq.b	#2,$25(a0)
		cmp.b	#2,$18(a0)
		bne.s	loc_2BCE4
		move.w	$C(a0),d0
		move.l	$34(a0),a1
		add.w	d0,$2E(a1)
loc_2BCE4:
		bra	loc_2C198
loc_2BCE8:
		move.l	$34(a0),a1
		cmp.b	#$56,(a1)
		bne	loc_2C19E
		move.b	$22(a1),$22(a0)
		move.b	1(a1),1(a0)
		tst.b	$22(a0)
		bpl.s	loc_2BD0A
		addq.b	#2,$25(a0)
loc_2BD0A:
		bsr	loc_2BA26
		bsr	loc_2C1EC
		jsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_2BD20
		add.w	d1,$C(a0)
loc_2BD20:
		move.w	#$100,$12(a0)
		cmp.b	#2,$18(a0)
		bne.s	loc_2BD3A
		move.w	$C(a0),d0
		move.l	$34(a0),a1
		add.w	d0,$2E(a1)
loc_2BD3A:
		lea	(loc_2BFE6),a1
		bsr	loc_2C1BC
		bra	loc_2C198
loc_2BD48:
		sub.w	#1,$2A(a0)
		bpl	loc_2C198
		addq.b	#2,$25(a0)
		move.w	#$A,$2A(a0)
		move.w	#$FD00,$12(a0)
		cmp.b	#2,$18(a0)
		beq	loc_2C198
		neg.w	$10(a0)
		bra	loc_2C198
loc_2BD74:
		subq.w	#1,$2A(a0)
		bpl	loc_2C198
		bsr	loc_2C1EC
		bsr	loc_2C1C8
		tst.w	d1
		bpl.s	loc_2BD92
		move.w	#$FE00,$12(a0)
		add.w	d1,$C(a0)
loc_2BD92:
		bra	loc_2C1A4
loc_2BD96:
		tst.b	$25(a0)
		bne.s	loc_2BDC6
		cmp.w	#$28F0,($FFFFEEC8).w
		bcs	loc_2C198
		cmp.w	#$299A,8(a0)
		ble.s	loc_2BDB8
		sub.w	#1,8(a0)
		bra	loc_2C198
loc_2BDB8:
		move.w	#$299A,8(a0)
		addq.b	#2,$25(a0)
		bra	loc_2C198
loc_2BDC6:
		move.l	$34(a0),a1
		cmp.b	#$56,(a1)
		bne	loc_2C19E
		btst	#3,$2D(a1)
		bne.s	loc_2BE2C
		bsr	loc_2BE4C
		btst	#1,$2D(a1)
		beq	loc_2C198
		move.b	#$8B,$20(a0)
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.b	$22(a1),$22(a0)
		move.b	1(a1),1(a0)
		add.w	#$10,$C(a0)
		move.w	#$FFCA,d0
		btst	#0,$22(a0)
		beq.s	loc_2BE1A
		neg.w	d0
loc_2BE1A:
		add.w	d0,8(a0)
		lea	(loc_2BFE6),a1
		bsr	loc_2C1BC
		bra	loc_2C198
loc_2BE2C:
		move.w	#$FFFD,d0
		btst	#0,$22(a0)
		beq.s	loc_2BE3A
		neg.w	d0
loc_2BE3A:
		add.w	d0,8(a0)
		lea	(loc_2BFE6),a1
		bsr	loc_2C1BC
		bra	loc_2C198
loc_2BE4C:
		cmp.b	#1,$21(a1)
		beq.s	loc_2BE56
		rts
loc_2BE56:
		move.w	8(a0),d0
		sub.w	($FFFFB008).w,d0
		bpl.s	loc_2BE6A
		btst	#0,$22(a1)
		bne.s	loc_2BE74
		rts
loc_2BE6A:
		btst	#0,$22(a1)
		beq.s	loc_2BE74
		rts
loc_2BE74:
		bset	#3,$2D(a1)
		rts
loc_2BE7C:
		move.l	$34(a0),a1
		move.l	8(a1),8(a0)
		move.l	$C(a1),$C(a0)
		move.b	$22(a1),$22(a0)
		move.b	1(a1),1(a0)
		move.b	$3E(a1),d0
		cmp.b	#$1F,d0
		bne.s	loc_2BEA8
		move.b	#2,$1C(a0)
loc_2BEA8:
		cmp.b	#4,($FFFFB024).w
		beq.s	loc_2BEB8
		cmp.b	#4,($FFFFB064).w
		bne.s	loc_2BEC6
loc_2BEB8:
		cmp.b	#2,$1C(a0)
		beq.s	loc_2BEC6
		move.b	#3,$1C(a0)
loc_2BEC6:
		lea	(loc_2C06A),a1
		jsr	animateSprite	
		jmp	displaySprite	
;------------------------------------------------------------------------------- 
loc_2BED8:
		dc.w	loc_2BEDE-loc_2BED8
		dc.w	loc_2BEE2-loc_2BED8
		dc.w	loc_2BEF8-loc_2BED8
loc_2BEDE:
		dc.b	1,5,6,$FF
loc_2BEE2:
		dc.b	1,1,1,1,2,2,2,3,3,3,4,4,4,0,0,$0
		dc.b	0,0,0,0,0,$FF
loc_2BEF8:
		dc.b	1,0,0,0,0,0,0,0,0,4,4,4,3,3,3,$2
		dc.b	2,2,1,1,1,5,6,$FE,2,$0
;-------------------------------------------------------------------------------
loc_2BF12:
		dc.w	loc_2BF20-loc_2BF12
		dc.w	loc_2BF2A-loc_2BF12
		dc.w	loc_2BF54-loc_2BF12
		dc.w	loc_2BF7E-loc_2BF12
		dc.w	loc_2BF98-loc_2BF12
		dc.w	loc_2BFB2-loc_2BF12
		dc.w	loc_2BFCC-loc_2BF12
loc_2BF20:
		dc.w	$1
		dc.l	$D8050000,$2
loc_2BF2A:
		dc.w	$5
		dc.l	$D8050004,$20002,$D80D000C,$60012
		dc.l	$D80D000C,$60032,$D80D000C,$6FFE2
		dc.l	$D80D000C,$6FFC2
loc_2BF54:
		dc.w	$5
		dc.l	$D8050004,$20002,$D80D000C,$60012
		dc.l	$D8050008,$40032,$D80D000C,$6FFE2
		dc.l	$D8050008,$4FFD2
loc_2BF7E:
		dc.w	$3
		dc.l	$D8050004,$20002,$D80D000C,$60012
		dc.l	$D80D000C,$6FFE2
loc_2BF98:
		dc.w	$3
		dc.l	$D8050004,$20002,$D8050008,$40012
		dc.l	$D8050008,$4FFF2
loc_2BFB2:
		dc.w	$3
		dc.l	$D8050000,2,$D80D000C,$60012
		dc.l	$D80D000C,$60032
loc_2BFCC:
		dc.w	$3
		dc.l	$D8050004,$20002,$D80D000C,$6FFE2
		dc.l	$D80D000C,$6FFC2
;-------------------------------------------------------------------------------	
loc_2BFE6:
		dc.w	loc_2BFEC-loc_2BFE6
		dc.w	loc_2BFF1-loc_2BFE6
		dc.w	loc_2BFF5-loc_2BFE6
loc_2BFEC:
		dc.b	5,1,2,3,$FF
loc_2BFF1:
		dc.b	1,4,5,$FF
loc_2BFF5:
		dc.b	1,6,7,$FF,$0
;-------------------------------------------------------------------------------
loc_2BFFA:
		dc.w	loc_2C00A-loc_2BFFA
		dc.w	loc_2C024-loc_2BFFA
		dc.w	loc_2C02E-loc_2BFFA
		dc.w	loc_2C038-loc_2BFFA
		dc.w	loc_2C042-loc_2BFFA
		dc.w	loc_2C04C-loc_2BFFA
		dc.w	loc_2C056-loc_2BFFA
		dc.w	loc_2C060-loc_2BFFA
loc_2C00A:
		dc.w	$3
		dc.l	$F00F0000,$FFD0,$F00F0010,$8FFF0
		dc.l	$F00F0020,$100010
loc_2C024:
		dc.w	$1
		dc.l	$F00F0030,$18FFF0
loc_2C02E:
		dc.w	$1
		dc.l	$F00F0040,$20FFF0
loc_2C038:
		dc.w	$1
		dc.l	$F00F0050,$28FFF0
loc_2C042:
		dc.w	$1
		dc.l	$F00F0060,$30FFF0
loc_2C04C:
		dc.w	$1
		dc.l	$F00F1060,$1030FFF0
loc_2C056:
		dc.w	$1
		dc.l	$F00F0070,$38FFF0
loc_2C060:
		dc.w	$1
		dc.l	$F00F1070,$1038FFF0
;-------------------------------------------------------------------------------
loc_2C06A:
		dc.w	loc_2C074-loc_2C06A
		dc.w	loc_2C077-loc_2C06A
		dc.w	loc_2C07B-loc_2C06A
		dc.w	loc_2C084-loc_2C06A
		dc.w	loc_2C08D-loc_2C06A
loc_2C074:
		dc.b	$F,0,$FF
loc_2C077:
		dc.b	7,1,2,$FF
loc_2C07B:
		dc.b	7,5,5,5,5,5,5,$FD,$1
loc_2C084:
		dc.b	7,3,4,3,4,3,4,$FD,$1
loc_2C08D:
		dc.b	$F,6,6,6,6,6,6,6,6,6,6,$FD,$1
;-------------------------------------------------------------------------------
loc_2C09A:
		dc.w	loc_2C0A8-loc_2C09A
		dc.w	loc_2C0CA-loc_2C09A
		dc.w	loc_2C0EC-loc_2C09A
		dc.w	loc_2C10E-loc_2C09A
		dc.w	loc_2C130-loc_2C09A
		dc.w	loc_2C152-loc_2C09A
		dc.w	loc_2C174-loc_2C09A
loc_2C0A8:
		dc.w	$4
		dc.l	$F8050000,$FFE0,$8050004,$2FFE0
		dc.l	$F80F0008,$4FFF0,$F8070018,$C0010
loc_2C0CA:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0030,$18FFF0
		dc.l	$E8050024,$120010,$D8050020,$100002
loc_2C0EC:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0038,$1CFFF0
		dc.l	$E8050024,$120010,$D8050020,$100002
loc_2C10E:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0040,$20FFF0
		dc.l	$E8050024,$120010,$D8050020,$100002
loc_2C130:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0048,$24FFF0
		dc.l	$E8050024,$120010,$D8050020,$100002
loc_2C152:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0050,$28FFF0
		dc.l	$E8050024,$120010,$D8050020,$100002
loc_2C174:
		dc.w	$4
		dc.l	$E8050028,$14FFE0,$E80D0058,$2CFFF0
		dc.l	$E8050024,$120010,$D8050020,$100002	
;=============================================================================== 
; Object 0x56 - Ghz Boss
; [ End ]	
;===============================================================================	
