;===============================================================================
; Object 0xC5 - Sky Fortress Boss
; [ Begin ]
;=============================================================================== 
loc_3831E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3832C(pc,d0),d1
		jmp	loc_3832C(pc,d1)
loc_3832C:
		dc.w	loc_38340-loc_3832C
		dc.w	loc_38352-loc_3832C
		dc.w	loc_385F8-loc_3832C
		dc.w	loc_3869E-loc_3832C
		dc.w	loc_38778-loc_3832C
		dc.w	loc_3888E-loc_3832C
		dc.w	loc_388CE-loc_3832C
		dc.w	loc_38920-loc_3832C
		dc.w	loc_38A22-loc_3832C
		dc.w	loc_38AA2-loc_3832C
loc_38340:
		bsr	EnemySettings	
		move.b	$28(a0),d0
		sub.b	#$90,d0
		move.b	d0,$24(a0)
		rts
loc_38352:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_38364(pc,d0),d1
		jsr	loc_38364(pc,d1)
		bra	loc_38AD0
loc_38364:	
		dc.w	loc_38382-loc_38364
		dc.w	loc_383B6-loc_38364
		dc.w	loc_38426-loc_38364
		dc.w	loc_38440-loc_38364
		dc.w	loc_38466-loc_38364
		dc.w	loc_3849E-loc_38364
		dc.w	loc_384AC-loc_38364
		dc.w	loc_384C4-loc_38364
		dc.w	loc_384F6-loc_38364
		dc.w	loc_38512-loc_38364
		dc.w	loc_38542-loc_38364
		dc.w	loc_3859A-loc_38364
		dc.w	loc_3849E-loc_38364
		dc.w	loc_385BA-loc_38364
		dc.w	loc_385C8-loc_38364
loc_38382:
		addq.b	#2,$25(a0)
		move.b	#0,$20(a0)
		move.b	#8,$21(a0)
		move.w	#$442,d0
		move.w	d0,($FFFFEECE).w
		move.w	d0,($FFFFEEC6).w
		move.w	8(a0),d0
		sub.w	#$60,d0
		move.w	d0,$34(a0)
		add.w	#$C0,d0
		move.w	d0,$36(a0)
		bra	loc_3A892
loc_383B6:
		bsr	loc_32866
		add.w	#$20,d2
		cmp.w	#$40,d2
		bcs.s	loc_383C8
		bra	loc_3A892
loc_383C8:
		addq.b	#2,$25(a0)
		move.w	#$40,$12(a0)
		lea	(loc_38B44),a2
		bsr	loc_32970
		sub.w	#$88,8(a1)
		add.w	#$60,$C(a1)
		lea	(loc_38B44),a2
		bsr	loc_32970
		add.w	#$88,8(a1)
		add.w	#$60,$C(a1)
		lea	(loc_38B50),a2
		bsr	loc_32970
		lea	(loc_38B54),a2
		bsr	loc_32970
		lea	(loc_38B5C),a2
		bsr	loc_32970
		move.w	#$60,$2A(a0)
		bra	loc_3A892
loc_38426:
		subq.w	#1,$2A(a0)
		beq.s	loc_38434
		bsr	loc_3A904
		bra	loc_3A892
loc_38434:
		addq.b	#2,$25(a0)
		clr.w	$12(a0)
		bra	loc_3A892
loc_38440:
		addq.b	#2,$25(a0)
		bsr	loc_32866
		move.w	#$100,d1
		tst.w	d0
		bne.s	loc_38452
		neg.w	d1
loc_38452:
		move.w	d1,$10(a0)
		bset	#2,$22(a0)
		move.w	#$70,$2A(a0)
		bra	loc_3A892
loc_38466:
		subq.w	#1,$2A(a0)
		bmi.s	loc_38492
		move.w	8(a0),d0
		tst.w	$10(a0)
		bmi.s	loc_38480
		cmp.w	$36(a0),d0
		bcc.s	loc_38486
		bra	loc_3848A
loc_38480:
		cmp.w	$34(a0),d0
		bcc.s	loc_3848A
loc_38486:
		neg.w	$10(a0)
loc_3848A:
		bsr	loc_3A904
		bra	loc_3A892
loc_38492:
		addq.b	#2,$25(a0)
		clr.b	$1C(a0)
		bra	loc_3A892
loc_3849E:
		lea	(loc_38B96),a1
		bsr	loc_3A8BC
		bra	loc_3A892
loc_384AC:
		addq.b	#2,$25(a0)
		move.w	#$E,$2A(a0)
		move.w	$3C(a0),a1
		move.b	#4,$25(a1)
		bra	loc_3A892
loc_384C4:
		subq.w	#1,$2A(a0)
		beq.s	loc_384D6
		move.w	$3C(a0),a1
		addq.w	#1,$C(a1)
		bra	loc_3A892
loc_384D6:
		addq.b	#2,$25(a0)
		move.w	#$40,$2A(a0)
		bset	#4,$22(a0)
		bset	#6,$22(a0)
		move.b	#6,$20(a0)
		bra	loc_3A892
loc_384F6:
		subq.w	#1,$2A(a0)
		bmi.s	loc_38500
		bra	loc_3A892
loc_38500:
		addq.b	#2,$25(a0)
		lea	(loc_38B58),a2
		bsr	loc_32970
		bra	loc_3A892
loc_38512:
		move.w	$3E(a0),a1
		btst	#2,$22(a1)
		bne.s	loc_38522
		bra	loc_3A892
loc_38522:
		addq.b	#2,$25(a0)
		move.w	#$80,$2A(a0)
		bsr	loc_32866
		move.w	#$80,d1
		tst.w	d0
		bne.s	loc_3853A
		neg.w	d1
loc_3853A:
		move.w	d1,$10(a0)
		bra	loc_3A892
loc_38542:
		subq.w	#1,$2A(a0)
		bmi.s	loc_3856E
		move.w	8(a0),d0
		tst.w	$10(a0)
		bmi.s	loc_3855C
		cmp.w	$36(a0),d0
		bcc.s	loc_38562
		bra	loc_38566
loc_3855C:
		cmp.w	$34(a0),d0
		bcc.s	loc_38566
loc_38562:
		clr.w	$10(a0)
loc_38566:
		bsr	loc_3A904
		bra	loc_3A892
loc_3856E:
		addq.b	#2,$25(a0)
		move.w	#$E,$2A(a0)
		bclr	#3,$22(a0)
		bclr	#4,$22(a0)
		bclr	#6,$22(a0)
		clr.b	$20(a0)
		move.w	$3E(a0),a1
		bsr	loc_3A8AA
		bra	loc_3A892
loc_3859A:
		subq.w	#1,$2A(a0)
		beq.s	loc_385AC
		move.w	$3C(a0),a1
		subq.w	#1,$C(a1)
		bra	loc_3A892
loc_385AC:
		addq.b	#2,$25(a0)
		move.b	#1,$1C(a0)
		bra	loc_3A892
loc_385BA:
		move.b	#6,$25(a0)
		bsr	loc_38440
		bra	loc_3A892
loc_385C8:
		clr.b	$20(a0)
		st	$21(a0)
		bclr	#6,$22(a0)
		subq.w	#1,$30(a0)
		bmi.s	loc_385E4
		bsr	loc_3A8EC
		bra	loc_3A892
loc_385E4:
		move.w	#$720,d0
		move.w	d0,($FFFFEECE).w
		move.w	d0,($FFFFEEC6).w
		bsr	loc_3A898
		addq.w	#4,sp
		rts
loc_385F8:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_38622(pc,d0),d1
		jsr	loc_38622(pc,d1)
		tst.b	(a0)
		beq	Null_Sub_01	
		move.w	8(a0),-(sp)
		move.w	#$13,d1
		move.w	#$40,d2
		move.w	#$80,d3
		move.w	(sp)+,d4
		bra	loc_3A8F8
loc_38622:
		dc.w	loc_38628-loc_38622
		dc.w	loc_38636-loc_38622
		dc.w	loc_3865E-loc_38622
loc_38628:
		addq.b	#2,$25(a0)
		move.b	#$C,$1A(a0)
		bra	loc_3A892
loc_38636:
		move.w	$2C(a0),a1
		btst	#5,$22(a1)
		bne.s	loc_38650
		bchg	#0,$2F(a0)
		bne	Null_Sub_01	
		bra	loc_3A892
loc_38650:
		addq.b	#2,$25(a0)
		move.b	#4,$30(a0)
		bra	loc_3A892
loc_3865E:
		subq.b	#1,$1E(a0)
		bpl	Null_Sub_01	
		move.b	$1E(a0),d0
		move.b	$1B(a0),d1
		addq.b	#2,d0
		bpl.s	loc_38694
		move.b	d1,$1E(a0)
		subq.b	#1,$30(a0)
		bpl.s	loc_38694
		move.b	#$10,$30(a0)
		addq.b	#1,d1
		cmp.b	#5,d1
		bcc	loc_3A898
		move.b	d1,$1B(a0)
		move.b	d1,$1E(a0)
loc_38694:
		bclr	#0,$2F(a0)
		bra	loc_3A892
loc_3869E:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_386AC(pc,d0),d1
		jmp	loc_386AC(pc,d1)
loc_386AC:
		dc.w	loc_386B6-loc_386AC
		dc.w	loc_386C8-loc_386AC
		dc.w	loc_386EC-loc_386AC
		dc.w	loc_3870C-loc_386AC
		dc.w	loc_38764-loc_386AC
loc_386B6:
		addq.b	#2,$25(a0)
		move.b	#5,$1A(a0)
		addq.w	#8,$C(a0)
		bra	loc_3A892
loc_386C8:
		move.w	$2C(a0),a1
		btst	#2,$22(a1)
		bne.s	loc_386D8
		bra	loc_3A892
loc_386D8:
		addq.b	#2,$25(a0)
		move.w	#$40,$2A(a0)
		move.w	#$40,$12(a0)
		bra	loc_3A892
loc_386EC:
		subq.w	#1,$2A(a0)
		beq.s	loc_386FA
		bsr	loc_3A904
		bra	loc_3A892
loc_386FA:
		addq.b	#2,$25(a0)
		clr.w	$12(a0)
		move.w	#$10,$2A(a0)
		bra	loc_3A892
loc_3870C:
		move.w	$2C(a0),a1
		btst	#5,$22(a1)
		bne.s	loc_38756
		subq.w	#1,$2A(a0)
		bne.s	loc_38752
		move.w	#$80,$2A(a0)
		moveq	#0,d0
		move.b	$2E(a0),d0
		addq.b	#1,d0
		cmp.b	#3,d0
		bcs.s	loc_38734
		moveq	#0,d0
loc_38734:
		move.b	d0,$2E(a0)
		tst.b	$30(a0,d0)
		bne.s	loc_38752
		st	$30(a0,d0)
		lea	(loc_38B48),a2
		bsr	loc_32970
		move.b	$2E(a0),$2E(a1)
loc_38752:
		bra	loc_3A892
loc_38756:
		addq.b	#2,$25(a0)
		bset	#5,$22(a0)
		bra	loc_3A892
loc_38764:
		move.w	$2C(a0),a1
		cmp.b	#$C5,(a1)
		bne	loc_3A898
		bsr	loc_3A8EC
		bra	loc_3A892
loc_38778:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_3879A(pc,d0),d1
		jsr	loc_3879A(pc,d1)
		lea	(loc_38B96),a1
		bsr	loc_3A8BC
		tst.b	(a0)
		beq	Null_Sub_01	
		bra	loc_3A892
loc_3879A:
		dc.w	loc_387A0-loc_3879A
		dc.w	loc_387C6-loc_3879A
		dc.w	loc_387EE-loc_3879A
loc_387A0:
		addq.b	#2,$25(a0)
		move.b	#3,$1C(a0)
		move.b	#7,$1A(a0)
		move.w	#$100,$12(a0)
		move.w	#$60,$2A(a0)
		lea	(loc_38B4C),a2
		bra	loc_32970
loc_387C6:
		bsr	loc_38832
		subq.w	#1,$2A(a0)
		beq.s	loc_387D4
		bra	loc_38818
loc_387D4:
		addq.b	#2,$25(a0)
		move.w	#$60,$2A(a0)
		move.w	#$FF00,$10(a0)
		move.w	$C(a0),$34(a0)
		bra	loc_38818
loc_387EE:
		bsr	loc_38832
		subq.w	#1,$2A(a0)
		bne.s	loc_38802
		move.w	#$C0,$2A(a0)
		neg.w	$10(a0)
loc_38802:
		moveq	#4,d0
		move.w	$C(a0),d1
		cmp.w	$34(a0),d1
		bcs.s	loc_38810
		neg.w	d0
loc_38810:
		add.w	d0,$12(a0)
		bra	loc_38818
loc_38818:
		move.w	8(a0),-(sp)
		bsr	loc_3A904
		move.w	#$10,d1
		move.w	#8,d2
		move.w	#8,d3
		move.w	(sp)+,d4
		bra	loc_3A8F2
loc_38832:
		move.w	$2C(a0),a1
		btst	#5,$22(a1)
		bne	loc_3887A
		move.w	$2C(a0),a1
		move.w	$2C(a1),a1
		btst	#3,$22(a1)
		beq.s	loc_3888C
		move.w	8(a0),d0
		move.w	8(a1),d1
		sub.w	#$20,d1
		cmp.w	d1,d0
		bls.s	loc_3888C
		add.w	#$40,d1
		cmp.w	d1,d0
		bhi.s	loc_3888C
		bsr	loc_376D0
		move.w	$2C(a0),a1
		moveq	#0,d0
		move.b	$2E(a0),d0
		clr.b	$30(a1,d0)
loc_3887A:
		move.b	#$58,(a0)
		clr.b	$24(a0)
		move.w	$3C(a0),a1
		bsr	loc_3A8AA
		addq.w	#4,sp
loc_3888C:
		rts
loc_3888E:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_3889C(pc,d0),d1
		jmp	loc_3889C(pc,d1)
loc_3889C:
		dc.w	loc_388A0-loc_3889C
		dc.w	loc_388AC-loc_3889C
loc_388A0:
		addq.b	#2,$25(a0)
		move.b	#$9B,$20(a0)
		rts
loc_388AC:
		move.w	$2C(a0),a1
		btst	#5,$22(a1)
		bne	loc_3A898
		move.w	8(a1),8(a0)
		move.w	$C(a1),d0
		add.w	#$C,d0
		move.w	d0,$C(a0)
		rts
loc_388CE:
		move.w	$2C(a0),a1
		btst	#5,$22(a1)
		bne	loc_3A898
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_388EA(pc,d0),d1
		jmp	loc_388EA(pc,d1)
loc_388EA:
		dc.w	loc_388F0-loc_388EA
		dc.w	loc_388FE-loc_388EA
		dc.w	loc_38912-loc_388EA
loc_388F0:
		addq.b	#2,$25(a0)
		move.b	#4,$1A(a0)
		bra	loc_3A892
loc_388FE:
		move.w	$2C(a0),a1
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		bra	loc_3A892
loc_38912:
		move.w	$2C(a0),a1
		move.w	8(a1),8(a0)
		bra	loc_3A892
loc_38920:
		move.w	$2C(a0),a1
		btst	#5,$22(a1)
		bne	loc_3A898
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_3894A(pc,d0),d1
		jsr	loc_3894A(pc,d1)
		bchg	#0,$2F(a0)
		bne	Null_Sub_01	
		bra	loc_3A892
loc_3894A:
		dc.w	loc_38954-loc_3894A
		dc.w	loc_3897C-loc_3894A
		dc.w	loc_389B4-loc_3894A
		dc.w	loc_389C8-loc_3894A
		dc.w	loc_38A16-loc_3894A
loc_38954:
		addq.b	#2,$25(a0)
		move.b	#$D,$1A(a0)
		move.b	#4,$18(a0)
		move.b	#0,$20(a0)
		add.w	#$10,$C(a0)
		move.b	#$C,$1B(a0)
		subq.w	#3,$C(a0)
		rts
loc_3897C:
		bset	#0,$2F(a0)
		subq.b	#1,$1E(a0)
		bpl.s	loc_389A6
		move.b	$1E(a0),d0
		addq.b	#2,d0
		bpl.s	loc_389A0
		move.b	$1B(a0),d0
		subq.b	#1,d0
		beq.s	loc_389A8
		move.b	d0,$1B(a0)
		move.b	d0,$1E(a0)
loc_389A0:
		bclr	#0,$2F(a0)
loc_389A6:
		rts
loc_389A8:
		addq.b	#2,$25(a0)
		move.w	#$40,$2A(a0)
		rts
loc_389B4:
		subq.w	#1,$2A(a0)
		bmi.s	loc_389BC
		rts
loc_389BC:
		addq.b	#2,$25(a0)
		add.w	#$10,$C(a0)
		rts
loc_389C8:
		moveq	#0,d0
		move.b	$2E(a0),d0
		addq.b	#1,d0
		cmp.b	#5,d0
		bcc.s	loc_389EE
		add.w	#$10,$C(a0)
		move.b	d0,$2E(a0)
		move.b	loc_38A0A(pc,d0),$1A(a0)
		move.b	loc_38A10(pc,d0),$20(a0)
		rts
loc_389EE:
		addq.b	#2,$25(a0)
		move.w	#$80,$2A(a0)
		bset	#2,$22(a0)
		move.w	$2C(a0),a1
		bset	#3,$22(a1)
		rts	
;-------------------------------------------------------------------------------
loc_38A0A:
		dc.b	$E,$F,$10,$11,$12,$0
;-------------------------------------------------------------------------------	
loc_38A10:
		dc.b	$86,$AB,$AC,$AD,$AE,$0	
;-------------------------------------------------------------------------------	
loc_38A16:
		move.w	$2C(a0),a1
		move.w	8(a1),8(a0)
		rts
loc_38A22:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_38A30(pc,d0),d1
		jmp	loc_38A30(pc,d1)
loc_38A30:
		dc.w	loc_38A36-loc_38A30
		dc.w	loc_38A60-loc_38A30
		dc.w	loc_38A88-loc_38A30
loc_38A36:
		addq.b	#2,$25(a0)
		move.b	#0,$1A(a0)
		move.b	#1,$1C(a0)
		move.w	#$2C60,8(a0)
		move.w	#$4E6,$C(a0)
		lea	(loc_38B60),a2
		bsr	loc_32970
		bra	loc_3A892
loc_38A60:
		move.w	$2C(a0),a1
		btst	#5,$22(a1)
		bne.s	loc_38A7A
		lea	(Robotnik_Running_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A892
loc_38A7A:
		addq.b	#2,$25(a0)
		move.w	#$C0,$2A(a0)
		bra	loc_3A892
loc_38A88:
		subq.w	#1,$2A(a0)
		bmi.s	loc_38A96
		addq.w	#1,$C(a0)
		bra	loc_3A892
loc_38A96:
		move.w	$3E(a0),a1
		bsr	loc_3A8AA
		bra	loc_3A898
loc_38AA2:
		move.w	$2C(a0),a1
		move.w	$C(a1),d0
		add.w	#$26,d0
		move.w	d0,$C(a0)
		bra	loc_3A892
		move.w	8(a0),-(sp)
		bsr	loc_3A904
		move.w	#$F,d1
		move.w	#8,d2
		move.w	#8,d3
		move.w	(sp)+,d4
		bra	loc_3A8F2
loc_38AD0:
		tst.b	$21(a0)
		beq.s	loc_38B20
		tst.b	$20(a0)
		bne.s	loc_38B1E
		tst.b	$30(a0)
		bne.s	loc_38AFA
		btst	#6,$22(a0)
		beq.s	loc_38B1E
		move.b	#$20,$30(a0)
		move.w	#$AC,d0
		jsr	Play_Sfx	
loc_38AFA:
		lea	($FFFFFB22).w,a1
		moveq	#0,d0
		tst.w	(a1)
		bne.s	loc_38B08
		move.w	#$EEE,d0
loc_38B08:
		move.w	d0,(a1)
		subq.b	#1,$30(a0)
		bne.s	loc_38B1E
		btst	#4,$22(a0)
		beq.s	loc_38B1E
		move.b	#6,$20(a0)
loc_38B1E:
		rts
loc_38B20:
		moveq	#$64,d0
		bsr	add_Points	
		clr.b	$20(a0)
		move.w	#$EF,$30(a0)
		move.b	#$1C,$25(a0)
		bset	#5,$22(a0)
		bclr	#6,$22(a0)
		rts	
;-------------------------------------------------------------------------------	
loc_38B44:
		dc.w	$2A,$C594
loc_38B48:	
		dc.w	$3E,$C598
loc_38B4C:	
		dc.w	$3C,$C59A
loc_38B50:
		dc.w	$3C,$C59C
loc_38B54:
		dc.w	$3A,$C596	
loc_38B58:
		dc.w	$3E,$C59E	
loc_38B5C:	
		dc.w	$38,$C5A0	
loc_38B60:
		dc.w	$3E,$C5A2
;-------------------------------------------------------------------------------	
Obj_0xC5_Ptr: 
		dc.l	loc_38BBC
		dc.w	$379
		dc.b	4,4,$20,$0
Obj_0xC5_01_Ptr: 
		dc.l	loc_38BBC
		dc.w	$379
		dc.b	4,1,8,$0
Obj_0xC5_02_Ptr: 
		dc.l	loc_38BBC
		dc.w	$379
		dc.b	4,5,$10,$0
Obj_0xC5_03_Ptr: 
		dc.l	Robotnik_Running_Mappings 
		dc.w	$0
		dc.b	4,5,$20,$0
Obj_0xC5_04_Ptr: ;loc_38B8C:
		dc.l	loc_38DA0
		dc.w	$A46D
		dc.b	4,5,$20,$0	
;-------------------------------------------------------------------------------	
loc_38B96:
		dc.w	loc_38B9E-loc_38B96
		dc.w	loc_38BA8-loc_38B96
		dc.w	loc_38BB0-loc_38B96
		dc.w	loc_38BB4-loc_38B96
loc_38B9E:
		dc.b	5,0,1,2,3,3,3,3,$FA,$0
loc_38BA8:
		dc.b	3,3,2,1,0,0,$FA,$0
loc_38BB0:
		dc.b	3,5,6,$FF
loc_38BB4:
		dc.b	3,7,8,9,$A,$B,$FF,$0	
;-------------------------------------------------------------------------------	
loc_38BBC:
		dc.w	loc_38BE2-loc_38BBC
		dc.w	loc_38C04-loc_38BBC
		dc.w	loc_38C26-loc_38BBC
		dc.w	loc_38C48-loc_38BBC
		dc.w	loc_38C6A-loc_38BBC
		dc.w	loc_38C7C-loc_38BBC
		dc.w	loc_38C8E-loc_38BBC
		dc.w	loc_38C98-loc_38BBC
		dc.w	loc_38CA2-loc_38BBC
		dc.w	loc_38CAC-loc_38BBC
		dc.w	loc_38CB6-loc_38BBC
		dc.w	loc_38CC0-loc_38BBC
		dc.w	loc_38CCA-loc_38BBC
		dc.w	loc_38CEC-loc_38BBC
		dc.w	loc_38CF6-loc_38BBC
		dc.w	loc_38D08-loc_38BBC
		dc.w	loc_38D22-loc_38BBC
		dc.w	loc_38D44-loc_38BBC
		dc.w	loc_38D6E-loc_38BBC
loc_38BE2:
		dc.w	$4
		dc.l	$F80C2000,$2000FFE0,$F80C2004,$20020000
		dc.l	$92008,$2004FFE8,$92808,$28040000
loc_38C04:
		dc.w	$4
		dc.l	$F80C2000,$2000FFE0,$F80C2800,$28000000
		dc.l	$9200E,$2007FFE8,$9280E,$28070000
loc_38C26:
		dc.w	$4
		dc.l	$F80C2000,$2000FFE0,$F80C2800,$28000000
		dc.l	$92014,$200AFFE8,$92814,$280A0000
loc_38C48:
		dc.w	$4
		dc.l	$F80C2000,$2000FFE0,$F80C2800,$28000000
		dc.l	$8201A,$200DFFE8,$8281A,$280D0000
loc_38C6A:
		dc.w	$2
		dc.l	$F805401D,$400EFFF0,$F805481D,$480E0000
loc_38C7C:
		dc.w	$2
		dc.l	$F80D2021,$2010FFE0,$F80D2821,$28100000
loc_38C8E:
		dc.w	$1
		dc.l	$F80E2029,$2014FFF0
loc_38C98:
		dc.w	$1
		dc.l	$F80E2035,$201AFFF0
loc_38CA2:
		dc.w	$1
		dc.l	$F80E2041,$2020FFF0
loc_38CAC:
		dc.w	$1
		dc.l	$F80E204D,$2026FFF0
loc_38CB6:
		dc.w	$1
		dc.l	$F80E2841,$2820FFF0
loc_38CC0:
		dc.w	$1
		dc.l	$F80E2835,$281AFFF0
loc_38CCA:
		dc.w	$4
		dc.l	$C0072059,$202CFFF8,$E0072059,$202CFFF8
		dc.l	$72059,$202CFFF8,$20072059,$202CFFF8
loc_38CEC:
		dc.w	$1
		dc.l	$C4071,$4038FFF0
loc_38CF6:
		dc.w	$2
		dc.l	$F00F4061,$4030FFF0,$100C4071,$4038FFF0
loc_38D08:
		dc.w	$3
		dc.l	$E00F4061,$4030FFF0,$F4061,$4030FFF0
		dc.l	$200C4071,$4038FFF0
loc_38D22:
		dc.w	$4
		dc.l	$D00F4061,$4030FFF0,$F00F4061,$4030FFF0
		dc.l	$100F4061,$4030FFF0,$300C4071,$4038FFF0
loc_38D44:
		dc.w	$5
		dc.l	$C00F4061,$4030FFF0,$E00F4061,$4030FFF0
		dc.l	$F4061,$4030FFF0,$200F4061,$4030FFF0
		dc.l	$400C4071,$4038FFF0
loc_38D6E:
		dc.w	$6
		dc.l	$B00F4061,$4030FFF0,$D00F4061,$4030FFF0
		dc.l	$F00F4061,$4030FFF0,$100F4061,$4030FFF0
		dc.l	$300F4061,$4030FFF0,$500C4071,$4038FFF0	
;-------------------------------------------------------------------------------
loc_38DA0:
		dc.w	loc_38DA2-loc_38DA0
loc_38DA2:
		dc.w	$2
		dc.l	$F40E0000,$FFE0,$F40E0800,$8000000	
;===============================================================================
; Object 0xC5 - Sky Fortress Boss
; [ End ]
;===============================================================================