;===============================================================================
; Object 0xD4 - Blue Boxes - Casino Night
; [ Begin ]
;===============================================================================
loc_27488:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_27496(pc,d0),d1
		jmp	loc_27496(pc,d1)
loc_27496:
		dc.w	loc_2749A-loc_27496
		dc.w	loc_2750A-loc_27496
loc_2749A:
		addq.b	#2,$24(a0)
		move.l	#Blue_Box_Mappings,4(a0) 
		move.w	#$436C,2(a0)
		bsr	loc_2758C
		move.b	#4,1(a0)
		move.b	#$20,$19(a0)
		move.b	#4,$18(a0)
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$32(a0)
		move.w	#$8000,$A(a0)
		move.w	#$8000,$E(a0)
		tst.b	$28(a0)
		bne.s	loc_274F6
		sub.w	#$60,8(a0)
		btst	#0,$22(a0)
		beq.s	loc_2750A
		add.w	#$C0,8(a0)
		bra.s	loc_2750A
loc_274F6:
		sub.w	#$60,$C(a0)
		btst	#1,$22(a0)
		beq.s	loc_2750A
		add.w	#$C0,$C(a0)
loc_2750A:
		move.w	8(a0),-(sp)
		moveq	#0,d0
		move.b	$28(a0),d0
		move.w	loc_2753A(pc,d0),d1
		jsr	loc_2753A(pc,d1)
		bsr	loc_2759E
		move.w	#$2B,d1
		move.w	#$20,d2
		move.w	#$21,d3
		move.w	(sp)+,d4
		bsr	loc_27592
		move.w	$30(a0),d0
		bra	loc_27598
loc_2753A:
		dc.w	loc_2753E-loc_2753A
		dc.w	loc_27552-loc_2753A
loc_2753E:
		moveq	#4,d1
		move.w	$30(a0),d0
		cmp.w	8(a0),d0
		bhi.s	loc_2754C
		neg.w	d1
loc_2754C:
		add.w	d1,$10(a0)
		rts
loc_27552:
		moveq	#4,d1
		move.w	$32(a0),d0
		cmp.w	$C(a0),d0
		bhi.s	loc_27560
		neg.w	d1
loc_27560:
		add.w	d1,$12(a0)
		rts	
;-------------------------------------------------------------------------------
Blue_Box_Mappings: 
		dc.w	loc_27568-Blue_Box_Mappings
loc_27568:
		dc.w	$4
		dc.l	$E00F0000,$FFE0,$E00F0800,$8000000
		dc.l	$F1000,$1000FFE0,$F1800,$18000000	
;===============================================================================
; Object 0xD4 - Blue Boxes - Casino Night
; [ End ]
;===============================================================================