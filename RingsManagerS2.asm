; =============== S U B	R O U T	I N E =======================================


RingsManager:					  ; ...
		moveq	#0,d0
		move.b	($FFFFF710).w,d0
		move.w	off_31323A(pc,d0.w),d0
		jmp	off_31323A(pc,d0.w)
; End of function RingsManager

; ---------------------------------------------------------------------------
off_31323A:	dc.w loc_31323E-off_31323A,loc_313282-off_31323A; 0 ; ...
; ---------------------------------------------------------------------------

loc_31323E:					  ; ...
		addq.b	#2,($FFFFF710).w
		bsr.w	sub_313432
		lea	($FFFFE800).w,a1
		move.w	($FFFFEE00).w,d4
		subq.w	#8,d4
		bhi.s	loc_31325A
		moveq	#1,d4
		bra.s	loc_31325A
; ---------------------------------------------------------------------------

loc_313256:					  ; ...
		lea	6(a1),a1

loc_31325A:					  ; ...
		cmp.w	2(a1),d4
		bhi.s	loc_313256
		move.w	a1,($FFFFF712).w
		move.w	a1,($FFFFF716).w
		add.w	#$150,d4
		bra.s	loc_313272
; ---------------------------------------------------------------------------

loc_31326E:					  ; ...
		lea	6(a1),a1

loc_313272:					  ; ...
		cmp.w	2(a1),d4
		bhi.s	loc_31326E
		move.w	a1,($FFFFF714).w
		move.w	a1,($FFFFF718).w
		rts
; ---------------------------------------------------------------------------

loc_313282:					  ; ...
		lea	($FFFFEF80).w,a2
		move.w	(a2)+,d1
		subq.w	#1,d1
		bcs.s	loc_3132B8

loc_31328C:					  ; ...
		move.w	(a2)+,d0
		beq.s	loc_31328C
		move.w	d0,a1
		subq.b	#1,(a1)
		bne.s	loc_3132B4
		move.b	#6,(a1)
		addq.b	#1,1(a1)
		cmp.b	#8,1(a1)
		bne.s	loc_3132B4
		move.w	#$FFFF,(a1)
		move.w	#0,-2(a2)
		subq.w	#1,($FFFFEF80).w

loc_3132B4:					  ; ...
		dbf	d1,loc_31328C

loc_3132B8:					  ; ...
		move.w	($FFFFF712).w,a1
		move.w	($FFFFEE00).w,d4
		subq.w	#8,d4
		bhi.s	loc_3132CC
		moveq	#1,d4
		bra.s	loc_3132CC
; ---------------------------------------------------------------------------

loc_3132C8:					  ; ...
		lea	6(a1),a1

loc_3132CC:					  ; ...
		cmp.w	2(a1),d4
		bhi.s	loc_3132C8
		bra.s	loc_3132D6
; ---------------------------------------------------------------------------

loc_3132D4:					  ; ...
		subq.w	#6,a1

loc_3132D6:					  ; ...
		cmp.w	-4(a1),d4
		bls.s	loc_3132D4
		move.w	a1,($FFFFF712).w
		move.w	($FFFFF714).w,a2
		add.w	#$150,d4
		bra.s	loc_3132EE
; ---------------------------------------------------------------------------

loc_3132EA:					  ; ...
		lea	6(a2),a2

loc_3132EE:					  ; ...
		cmp.w	2(a2),d4
		bhi.s	loc_3132EA
		bra.s	loc_3132F8
; ---------------------------------------------------------------------------

loc_3132F6:					  ; ...
		subq.w	#6,a2

loc_3132F8:					  ; ...
		cmp.w	-4(a2),d4
		bls.s	loc_3132F6
		move.w	a2,($FFFFF714).w
		move.w	a1,($FFFFF716).w
		move.w	a2,($FFFFF718).w
		rts

; =============== S U B	R O U T	I N E =======================================


sub_31330C:					  ; ...
		move.w	($FFFFF712).w,a1
		move.w	($FFFFF714).w,a2
		cmp.l	a1,a2
		beq.w	return_3133AA
		cmp.w	#$5A,$30(a0)
		bcc.w	return_3133AA
		move.w	8(a0),d2
		move.w	$C(a0),d3
		sub.w	#8,d2
		moveq	#0,d5
		move.b	$16(a0),d5
		subq.b	#3,d5
		sub.w	d5,d3
		cmp.b	#$9C,$1A(a0)
		bne.s	loc_313348
		add.w	#$C,d3
		moveq	#$A,d5

loc_313348:					  ; ...
		move.w	#6,d1
		move.w	#$C,d6
		move.w	#$10,d4
		add.w	d5,d5

loc_313356:					  ; ...
		tst.w	(a1)
		bne.w	loc_3133A0
		move.w	2(a1),d0
		sub.w	d1,d0
		sub.w	d2,d0
		bcc.s	loc_31336E
		add.w	d6,d0
		bcs.s	loc_313374
		bra.w	loc_3133A0
; ---------------------------------------------------------------------------

loc_31336E:					  ; ...
		cmp.w	d4,d0
		bhi.w	loc_3133A0

loc_313374:					  ; ...
		move.w	4(a1),d0
		sub.w	d1,d0
		sub.w	d3,d0
		bcc.s	loc_313386
		add.w	d6,d0
		bcs.s	loc_31338C
		bra.w	loc_3133A0
; ---------------------------------------------------------------------------

loc_313386:					  ; ...
		cmp.w	d5,d0
		bhi.w	loc_3133A0

loc_31338C:					  ; ...
		move.w	#$604,(a1)
		bsr.s	sub_3133AC
		lea	($FFFFEF82).w,a3

loc_313396:					  ; ...
		tst.w	(a3)+
		bne.s	loc_313396
		move.w	a1,-(a3)
		addq.w	#1,($FFFFEF80).w

loc_3133A0:					  ; ...
		lea	6(a1),a1
		cmp.l	a1,a2
		bne.w	loc_313356

return_3133AA:					  ; ...
		rts
; End of function sub_31330C


; =============== S U B	R O U T	I N E =======================================


sub_3133AC:					  ; ...
		subq.w	#1,($FFFFFF40).w
		bra.w	CollectRing
; End of function sub_3133AC


; =============== S U B	R O U T	I N E =======================================


sub_3133B4:					  ; ...
		move.w	($FFFFF712).w,a0
		move.w	($FFFFF714).w,a4
		cmp.l	a0,a4
		bne.s	loc_3133C2
		rts
; ---------------------------------------------------------------------------

loc_3133C2:					  ; ...
		lea	($FFFFEE00).w,a3

loc_3133C6:					  ; ...
		tst.w	(a0)
		bmi.w	loc_313426
		move.w	2(a0),d3
		sub.w	(a3),d3
		add.w	#$80,d3
		move.w	4(a0),d2
		sub.w	4(a3),d2
		and.w	#$7FF,d2
		add.w	#8,d2
		bmi.s	loc_313426
		cmp.w	#$F0,d2
		bge.s	loc_313426
		add.w	#$78,d2
		lea	(word_3134F8).l,a1
		moveq	#0,d1
		move.b	1(a0),d1
		bne.s	loc_313404
		move.b	($FFFFFEA3).w,d1

loc_313404:					  ; ...
		add.w	d1,d1
		add.w	(a1,d1.w),a1
		move.b	(a1)+,d0
		ext.w	d0
		add.w	d2,d0
		move.w	d0,(a2)+
		move.b	(a1)+,(a2)+
		addq.b	#1,d5
		move.b	d5,(a2)+
		move.w	(a1)+,d0
		add.w	#$26BC,d0
		move.w	d0,(a2)+
		move.w	(a1)+,d0
		add.w	d3,d0
		move.w	d0,(a2)+

loc_313426:					  ; ...
		lea	6(a0),a0
		cmp.l	a0,a4
		bne.w	loc_3133C6
		rts
; End of function sub_3133B4


; =============== S U B	R O U T	I N E =======================================


sub_313432:					  ; ...
		lea	($FFFFE800).w,a1
		moveq	#0,d0
		move.w	#$17F,d1

loc_31343C:					  ; ...
		move.l	d0,(a1)+
		dbf	d1,loc_31343C
		lea	($FFFFEF80).w,a1
		move.w	#$F,d1

loc_31344A:					  ; ...
		move.l	d0,(a1)+
		dbf	d1,loc_31344A
		moveq	#0,d5
		moveq	#0,d0
		move.w	($FFFFFE10).w,d0
		ror.b	#1,d0
		lsr.w	#6,d0
		lea	(Off_Rings).l,a1
		move.w	(a1,d0.w),d0
		lea	(a1,d0.w),a1
		lea	($FFFFE806).w,a2

loc_31346E:					  ; ...
		move.w	(a1)+,d2
		bmi.s	loc_3134B6
		move.w	(a1)+,d3
		bmi.s	loc_313496
		move.w	d3,d0
		rol.w	#4,d0
		and.w	#7,d0
		and.w	#$FFF,d3

loc_313482:					  ; ...
		move.w	#0,(a2)+
		move.w	d2,(a2)+
		move.w	d3,(a2)+
		add.w	#$18,d2
		addq.w	#1,d5
		dbf	d0,loc_313482
		bra.s	loc_31346E
; ---------------------------------------------------------------------------

loc_313496:					  ; ...
		move.w	d3,d0
		rol.w	#4,d0
		and.w	#7,d0
		and.w	#$FFF,d3

loc_3134A2:					  ; ...
		move.w	#0,(a2)+
		move.w	d2,(a2)+
		move.w	d3,(a2)+
		add.w	#$18,d3
		addq.w	#1,d5
		dbf	d0,loc_3134A2
		bra.s	loc_31346E
; ---------------------------------------------------------------------------

loc_3134B6:					  ; ...
		move.w	d5,($FFFFFF40).w
		move.w	#0,($FFFFFF42).w
		moveq	#$FFFFFFFF,d0
		move.l	d0,(a2)+
		lea	($FFFFE802).w,a1
		move.w	#$FE,d3

loc_3134CC:					  ; ...
		move.w	d3,d4
		lea	6(a1),a2
		move.w	(a1),d0

loc_3134D4:					  ; ...
		tst.w	(a2)
		beq.s	loc_3134E6
		cmp.w	(a2),d0
		bls.s	loc_3134E6
		move.l	(a1),d1
		move.l	(a2),d0
		move.l	d0,(a1)
		move.l	d1,(a2)
		swap	d0

loc_3134E6:					  ; ...
		lea	6(a2),a2
		dbf	d4,loc_3134D4
		lea	6(a1),a1
		dbf	d3,loc_3134CC
		rts
; End of function sub_313432

; ---------------------------------------------------------------------------
word_3134F8:	dc.w	$10,   $16,   $1C,   $22,   $28; 0 ; ...
		dc.w	$2E,   $34,   $3A, -$7FB,     0; 5
		dc.w	 -8, -$7FB,	4,    -8, -$7FF; 10
		dc.w	  8,	-4, -$7FB,  $804,    -8; 15
		dc.w  -$7FB,	$A,    -8, -$7FB, $180A; 20
		dc.w	 -8, -$7FB,  $80A,    -8, -$7FB; 25
		dc.w  $100A,	-8		  ; 30
