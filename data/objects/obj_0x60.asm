;===============================================================================
; Object 0x60 - Rings - Special Stage
; [ Begin ]
;===============================================================================
loc_31414:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_31422(pc,d0),d1
		jmp	loc_31422(pc,d1)
loc_31422:
		dc.w	loc_3142A-loc_31422
		dc.w	loc_31464-loc_31422
		dc.w	loc_317AA-loc_31422
		dc.w	loc_31484-loc_31422
loc_3142A:
		addq.b	#2,$24(a0)
		move.w	#$7F,8(a0)
		move.w	#$58,$C(a0)
		move.l	#loc_324D2,4(a0)
		move.w	#$6322,2(a0)
		move.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.b	#1,$20(a0)
		tst.b	$26(a0)
		bmi.s	loc_31464
		bsr	loc_3170C
loc_31464:
		bsr	loc_3159A
		bsr	loc_31610
		bsr	loc_314AA
		lea	(loc_3247A),a1
		bsr	loc_3180E
		tst.b	1(a0)
		bmi	loc_3274C
		rts
loc_31484:
		move.b	#$A,$1C(a0)
		move.w	#$477F,2(a0)
		bsr	loc_31404
		bsr	loc_3159A
		bsr	loc_31610
		lea	(loc_3247A),a1
		bsr	loc_32758
		bra	loc_3274C
loc_314AA:
		move.w	#$A,d6
		bsr	loc_31514
		bcc.s	loc_31512
		cmpa.l	#$FFFFB000,a1
		bne.s	loc_314C2
		addq.w	#1,($FFFFFE20).w
		bra.s	loc_314C6
loc_314C2:
		addq.w	#1,($FFFFFED0).w
loc_314C6:
		addq.b	#1,$3E(a1)
		cmp.b	#$A,$3E(a1)
		blt.s	loc_314EE
		addq.b	#1,$3D(a1)
		move.b	#0,$3E(a1)
		cmp.b	#$A,$3D(a1)
		blt.s	loc_314EE
		addq.b	#1,$3C(a1)
		move.b	#0,$3D(a1)
loc_314EE:
		move.b	#6,$24(a0)
		move.l	$34(a0),d0
		beq.s	loc_31508
		move.l	#0,$34(a0)
		move.l	d0,a1
		st	$2A(a1)
loc_31508:
		move.w	#$B5,d0
		jsr	Play_Unknow	
loc_31512:
		rts
loc_31514:
		cmp.b	#8,$1C(a0)
		bne.s	loc_31550
		tst.b	$20(a0)
		beq.s	loc_31550
		lea	($FFFFB000).w,a2
		lea	($FFFFB040).w,a3
		move.w	$34(a2),d0
		cmp.w	$34(a3),d0
		bcs.s	loc_31542
		move.l	a3,a1
		bsr	loc_31556
		bcs.s	loc_31554
		move.l	a2,a1
		bra	loc_31556
loc_31542:
		move.l	a2,a1
		bsr	loc_31556
		bcs.s	loc_31554
		move.l	a3,a1
		bra	loc_31556
loc_31550:
		move	#0,CCR
loc_31554:
		rts
loc_31556:
		cmp.b	#2,$24(a1)
		bne.s	loc_3158A
		tst.b	$25(a1)
		bne.s	loc_3158A
		move.b	$26(a1),d0
		move.b	$26(a0),d1
		move.b	d1,d2
		add.b	d6,d1
		bcs.s	loc_31580
		sub.b	d6,d2
		bcs.s	loc_31582
		cmp.b	d1,d0
		bcc.s	loc_3158A
		cmp.b	d2,d0
		bcc.s	loc_31590
		bra.s	loc_3158A
loc_31580:
		sub.b	d6,d2
loc_31582:
		cmp.b	d1,d0
		bcs.s	loc_31590
		cmp.b	d2,d0
		bcc.s	loc_31590
loc_3158A:
		move	#0,CCR
		rts
loc_31590:
		clr.b	$20(a0)
		move	#1,CCR
		rts
loc_3159A:
		btst	#7,$22(a0)
		bne.s	loc_315DC
		cmp.b	#4,($FFFFDB0D).w
		bne.s	loc_315B6
		sub.l	#$CCCC,$30(a0)
		ble.s	loc_315DC
		bra.s	loc_315C0
loc_315B6:
		sub.l	#$CCCD,$30(a0)
		ble.s	loc_315DC
loc_315C0:
		cmp.b	#$A,$1C(a0)
		beq.s	loc_315DA
		move.w	$30(a0),d0
		cmp.w	#$1D,d0
		ble.s	loc_315D4
		moveq	#$1E,d0
loc_315D4:
		move.b	loc_315F0(pc,d0),$1C(a0)
loc_315DA:
		rts
loc_315DC:
		move.l	(sp)+,d0
		move.l	$34(a0),d0
		beq	loc_32752
		move.l	d0,a1
		st	$2A(a1)
		bra	loc_32752	
;-------------------------------------------------------------------------------	
loc_315F0:
		dc.b	9,9,9,8,8,7,7,6,6,5,5,4,4,3,3,$3
		dc.b	2,2,2,1,1,1,1,1,1,1,1,1,1,1,0,$0
;-------------------------------------------------------------------------------
loc_31610:
		move.w	d7,-(sp)
		moveq	#0,d2
		moveq	#0,d3
		moveq	#0,d4
		moveq	#0,d5
		moveq	#0,d6
		moveq	#0,d7
		move.l	($FFFFDB82).w,a1
		move.w	$30(a0),d0
		beq	loc_316C8
		cmp.w	(a1)+,d0
		bgt	loc_316C8
		subq.w	#1,d0
		add.w	d0,d0
		move.w	d0,d1
		add.w	d0,d0
		add.w	d1,d0
		tst.b	($FFFFDB0E).w
		bne	loc_316D0
		move.b	4(a1,d0),d6
		move.b	5(a1,d0),d7
		beq.s	loc_31658
		move.b	$26(a0),d1
		cmp.b	d6,d1
		bcs.s	loc_31658
		cmp.b	d7,d1
		bcs.s	loc_316C8
loc_31658:
		move.b	0(a1,d0),d2
		move.b	2(a1,d0),d4
		move.b	3(a1,d0),d5
		move.b	1(a1,d0),d3
loc_31668:	
		bpl.s	loc_31672
		cmp.b	#$48,d3
		bcs.s	loc_31672
		ext.w	d3
loc_31672:
		move.b	$26(a0),d0
		bsr	loc_3276A
		muls.w	d4,d1
		muls.w	d5,d0
		asr.l	#8,d0
		asr.l	#8,d1
		add.w	d2,d1
		add.w	d3,d0
		move.w	d1,8(a0)
		move.w	d0,$C(a0)
		move.l	$34(a0),d0
		beq.s	loc_316BE
		move.l	d0,a1
		move.b	$26(a0),d0
		bsr	loc_3276A
		move.w	d4,d7
		lsr.w	#2,d7
		add.w	d7,d4
		muls.w	d4,d1
		move.w	d5,d7
		asr.w	#2,d7
		add.w	d7,d5
		muls.w	d5,d0
		asr.l	#8,d0
		asr.l	#8,d1
		add.w	d2,d1
		add.w	d3,d0
		move.w	d1,8(a1)
		move.w	d0,$C(a1)
loc_316BE:
		or.b	#$80,1(a0)
loc_316C4:	
		move.w	(sp)+,d7
		rts
loc_316C8:
		and.b	#$7F,1(a0)
		bra.s	loc_316C4
loc_316D0:
		move.b	#$80,d1
		move.b	4(a1,d0),d6
		move.b	5(a1,d0),d7
		beq.s	loc_316F2
		sub.w	d1,d6
		sub.w	d1,d7
		neg.w	d6
		neg.w	d7
		move.b	$26(a0),d1
		cmp.b	d7,d1
		bcs.s	loc_316F2
		cmp.b	d6,d1
		bcs.s	loc_316C8
loc_316F2:
		move.b	0(a1,d0),d2
		move.b	2(a1,d0),d4
		move.b	3(a1,d0),d5
		sub.w	#$100,d2
		neg.w	d2
		move.b	1(a1,d0),d3
		bra	loc_31668
loc_3170C:
		bsr	loc_32776
		bne	loc_3179C
		move.l	a0,$34(a1)
		move.b	(a0),(a1)
		move.b	#4,$24(a1)
		move.l	#$3097C,4(a1)
		move.w	#$623C,2(a1)
		move.b	#4,1(a1)
		move.b	#5,$18(a1)
		move.b	$26(a0),d0
		cmp.b	#$10,d0
		bgt.s	loc_31756
		bset	#0,1(a1)
		move.b	#2,$2B(a1)
		move.l	a1,$34(a0)
		rts
loc_31756:
		cmp.b	#$30,d0
		bgt.s	loc_3176E
		bset	#0,1(a1)
		move.b	#1,$2B(a1)
		move.l	a1,$34(a0)
		rts
loc_3176E:
		cmp.b	#$50,d0
		bgt.s	loc_31780
		move.b	#0,$2B(a1)
		move.l	a1,$34(a0)
		rts
loc_31780:
		cmp.b	#$70,d0
		bgt.s	loc_31792
		move.b	#1,$2B(a1)
		move.l	a1,$34(a0)
		rts
loc_31792:
		move.b	#2,$2B(a1)
		move.l	a1,$34(a0)
loc_3179C:
		rts	
;-------------------------------------------------------------------------------
loc_3179E:
		dc.w	0,$18,$14,$14,$14,$0
;-------------------------------------------------------------------------------	
loc_317AA:
		tst.b	$2A(a0)
		bne	loc_3180A
		move.l	$34(a0),a1
		tst.b	1(a1)
		bmi.s	loc_317BE
		rts
loc_317BE:
		moveq	#9,d0
		sub.b	$1C(a1),d0
		add.b	#1,d0
		cmp.b	#$A,d0
		bne.s	loc_317D2
		move.w	#9,d0
loc_317D2:
		move.w	d0,d1
		add.w	d0,d0
		add.w	d1,d0
		moveq	#0,d1
		move.b	$2B(a0),d1
		beq.s	loc_317FA
		cmp.b	#1,d1
		beq.s	loc_317F0
		add.w	d1,d0
		move.w	#$629C,2(a0)
		bra.s	loc_31802
loc_317F0:
		add.w	d1,d0
		move.w	#$6262,2(a0)
		bra.s	loc_31802
loc_317FA:
		add.w	d1,d0
		move.w	#$623C,2(a0)
loc_31802:
		move.b	d0,$1A(a0)
		bra	loc_3274C
loc_3180A:
		bra	loc_32752
loc_3180E:
		subq.b	#1,$1E(a0)
		bpl.s	loc_31858
		moveq	#0,d0
		move.b	$1C(a0),d0
		add.w	d0,d0
		adda.w	0(a1,d0),a1
		move.b	(a1),$1E(a0)
		moveq	#0,d1
		move.b	$1B(a0),d1
		move.b	1(a1,d1),d0
		bpl.s	loc_3183A
		move.b	#0,$1B(a0)
		move.b	1(a1),d0
loc_3183A:
		and.b	#$7F,d0
		move.b	d0,$1A(a0)
		move.b	$22(a0),d1
		and.b	#3,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		addq.b	#1,$1B(a0)
loc_31858:
		rts	
;===============================================================================
; Object 0x60 - Rings - Special Stage
; [ End ]
;===============================================================================