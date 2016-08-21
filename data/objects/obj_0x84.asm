;===============================================================================
; Object 0x84 - Auto Spin - Hill Top / Hidden Palace / Casino Night
; [ Begin ]
;=============================================================================== 
loc_1CFAA:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1CFBE(pc,d0),d1
		jsr	loc_1CFBE(pc,d1)
		jmp	(loc_12D80)
loc_1CFBE:
		dc.w	loc_1CFC4-loc_1CFBE
		dc.w	loc_1D072-loc_1CFBE
		dc.w	loc_1D13C-loc_1CFBE
loc_1CFC4:
		addq.b	#2,$24(a0)
		move.l	#Layer_Switch_Mappings,4(a0) 
		move.w	#$6BC,2(a0)
		bsr	loc_1D302
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#5,$18(a0)
		move.b	$28(a0),d0
		btst	#2,d0
		beq.s	loc_1D03E
		addq.b	#2,$24(a0)
		and.w	#7,d0
		move.b	d0,$1A(a0)
		and.w	#3,d0
		add.w	d0,d0
		move.w	loc_1D036(pc,d0),$32(a0)
		move.w	$C(a0),d1
		lea	($FFFFB000).w,a1
		cmp.w	$C(a1),d1
		bcc.s	loc_1D022
		move.b	#1,$34(a0)
loc_1D022:
		lea	($FFFFB040).w,a1
		cmp.w	$C(a1),d1
		bcc.s	loc_1D032
		move.b	#1,$35(a0)
loc_1D032:
		bra	loc_1D13C
loc_1D036:
		dc.w	$20,$40,$80,$100
loc_1D03E:
		and.w	#3,d0
		move.b	d0,$1A(a0)
		add.w	d0,d0
		move.w	loc_1D036(pc,d0),$32(a0)
		move.w	8(a0),d1
		lea	($FFFFB000).w,a1
		cmp.w	8(a1),d1
		bcc.s	loc_1D062
		move.b	#1,$34(a0)
loc_1D062:
		lea	($FFFFB040).w,a1
		cmp.w	8(a1),d1
		bcc.s	loc_1D072
		move.b	#1,$35(a0)
loc_1D072:
		tst.w	($FFFFFE08).w
		bne.s	loc_1D0CA
		move.w	8(a0),d1
		lea	$34(a0),a2
		lea	($FFFFB000).w,a1
		bsr.s	loc_1D08A
		lea	($FFFFB040).w,a1
loc_1D08A:
		tst.b	(a2)+
		bne.s	loc_1D0CC
		cmp.w	8(a1),d1
		bhi.s	loc_1D0CA
		move.b	#1,$FFFFFFFF(a2)
		move.w	$C(a0),d2
		move.w	d2,d3
		move.w	$32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	$C(a1),d4
		cmp.w	d2,d4
		bcs.s	loc_1D0CA
		cmp.w	d3,d4
		bcc.s	loc_1D0CA
		btst	#0,1(a0)
		bne.s	loc_1D0C4
		move.b	#1,$39(a1)
		bra.s	loc_1D10A
loc_1D0C4:
		move.b	#0,$39(a1)
loc_1D0CA:
		rts
loc_1D0CC:
		cmp.w	8(a1),d1
		bls.s	loc_1D0CA
		move.b	#0,$FFFFFFFF(a2)
		move.w	$C(a0),d2
		move.w	d2,d3
		move.w	$32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	$C(a1),d4
		cmp.w	d2,d4
		bcs.s	loc_1D0CA
		cmp.w	d3,d4
		bcc.s	loc_1D0CA
		btst	#0,1(a0)
		beq.s	loc_1D102
		move.b	#1,$39(a1)
		bra.s	loc_1D10A
loc_1D102:
		move.b	#0,$39(a1)
		rts
loc_1D10A:
		btst	#2,$22(a1)
		beq.s	loc_1D114
		rts
loc_1D114:
		bset	#2,$22(a1)
		move.b	#$E,$16(a1)
		move.b	#7,$17(a1)
		move.b	#2,$1C(a1)
		addq.w	#5,$C(a1)
		move.w	#$BE,d0
		jsr	Play_Sfx	
		rts
loc_1D13C:
		tst.w	($FFFFFE08).w
		bne.s	loc_1D196
		move.w	$C(a0),d1
		lea	$34(a0),a2
		lea	($FFFFB000).w,a1
		bsr.s	loc_1D154
		lea	($FFFFB040).w,a1
loc_1D154:
		tst.b	(a2)+
		bne.s	loc_1D198
		cmp.w	$C(a1),d1
		bhi.s	loc_1D196
		move.b	#1,$FFFFFFFF(a2)
		move.w	8(a0),d2
		move.w	d2,d3
		move.w	$32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	8(a1),d4
		cmp.w	d2,d4
		bcs.s	loc_1D196
		cmp.w	d3,d4
		bcc.s	loc_1D196
		btst	#0,1(a0)
		bne.s	loc_1D190
		move.b	#1,$39(a1)
		bra	loc_1D10A
loc_1D190:
		move.b	#0,$39(a1)
loc_1D196:
		rts
loc_1D198:
		cmp.w	$C(a1),d1
		bls.s	loc_1D196
		move.b	#0,$FFFFFFFF(a2)
		move.w	8(a0),d2
		move.w	d2,d3
		move.w	$32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	8(a1),d4
		cmp.w	d2,d4
		bcs.s	loc_1D196
		cmp.w	d3,d4
		bcc.s	loc_1D196
		btst	#0,1(a0)
		beq.s	loc_1D1D0
		move.b	#1,$39(a1)
		bra	loc_1D10A
loc_1D1D0:
		move.b	#0,$39(a1)
		rts	
;===============================================================================
; Object 0x84 - Auto Spin - Hill Top / Hidden Palace / Casino Night
; [ End ]
;===============================================================================