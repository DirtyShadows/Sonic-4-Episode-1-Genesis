;===============================================================================
; Object 0x63
; [ Begin ]
;===============================================================================	
loc_3058E:
		move.l	$38(a0),a1
		cmpa.l	#$FFFFB000,a1
		bne.s	loc_305A6
		move.l	#$FFFFB000,a1
		bsr.s	loc_305B6
		bra	loc_30CCC
loc_305A6:
		move.l	#$FFFFB040,a1
		bsr.s	loc_305B6
		bsr	loc_306A4
		bra	loc_30CCC
loc_305B6:
		cmp.b	#2,$24(a1)
		beq	loc_305F2
		bsr	loc_301F8
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	$34(a1),d1
		muls.w	#$CC,d1
		swap.w	d1
		add.w	($FFFFF73E).w,d1
		move.w	d1,8(a0)
		muls.w	$34(a1),d0
		asr.l	#8,d0
		add.w	($FFFFF740).w,d0
		move.w	d0,$C(a0)
		bra	loc_30604
loc_305F2:
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		move.b	$26(a1),$26(a0)
loc_30604:
		moveq	#0,d0
		move.b	$26(a0),d0
		sub.b	#$10,d0
		lsr.b	#5,d0
		move.b	d0,d1
		lsl.w	#3,d0
		lea	loc_30664(pc),a2
		adda.w	d0,a2
		move.w	(a2)+,2(a0)
		move.w	(a2)+,d0
		add.w	d0,8(a0)
		move.w	(a2)+,d0
		add.w	d0,$C(a0)
		move.b	(a2)+,$1A(a0)
		move.b	1(a0),d0
		and.b	#$FC,d0
		or.b	(a2)+,d0
		move.b	d0,1(a0)
		tst.b	$26(a0)
		bpl.s	loc_30662
		cmp.b	#3,d1
		beq.s	loc_3064E
		cmp.b	#7,d1
		bne.s	loc_30654
loc_3064E:
		add.b	#3,$1A(a0)
loc_30654:
		move.w	($FFFFF740).w,d1
		sub.w	$C(a0),d1
		add.w	d1,d1
		add.w	d1,$C(a0)
loc_30662:
		rts
;-------------------------------------------------------------------------------	
loc_30664:
		dc.w	$6262,$14,$14,$101,$623C,0,$18,$0
		dc.w	$6262,$FFEC,$14,$100,$629C,$FFEC,0,$200
		dc.w	$6262,$FFEC,$FFEC,$700,$623C,0,$FFE8,$900
		dc.w	$6262,$14,$FFEC,$701,$629C,$14,0,$201	
;-------------------------------------------------------------------------------	
loc_306A4:
		cmp.b	#1,$1C(a1)
		bne.s	loc_306CA
		move.b	$22(a1),d1
		and.w	#3,d1
		cmp.b	#2,d1
		bcc.s	loc_306CA
		move.b	loc_306CC(pc,d1),d0
		ext.w	d0
		add.w	d0,8(a0)
		sub.w	#4,$C(a0)
loc_306CA:
		rts	
loc_306CC:	
		dc.b	4,$FC	
;-------------------------------------------------------------------------------
loc_306CE:
		dc.w	loc_306D8-loc_306CE
		dc.w	loc_306DE-loc_306CE
		dc.w	loc_306E8-loc_306CE
		dc.w	loc_306EE-loc_306CE
		dc.w	loc_306F2-loc_306CE
loc_306D8:
		dc.b	3,0,1,2,3,$FF
loc_306DE:
		dc.b	3,4,5,6,7,8,9,$A,$B,$FF
loc_306E8:
		dc.b	3,$C,$D,$E,$F,$FF
loc_306EE:
		dc.b	1,$10,$11,$FF
loc_306F2:
		dc.b	3,0,4,$C,4,0,4,$C,4,$FF	
			
;===============================================================================
; Object 0x63
; [ End ]
;===============================================================================