;===============================================================================
; Object 0xD9 - Invisible Object that Sonic can hang - Sky Fortress 
; [ Begin ]
;===============================================================================	
loc_2834C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_2835A(pc,d0),d1
		jmp	loc_2835A(pc,d1)
loc_2835A:
		dc.w	loc_2835E-loc_2835A
		dc.w	loc_28374-loc_2835A
loc_2835E:
		addq.b	#2,$24(a0)
		move.b	#4,1(a0)
		move.b	#$18,$19(a0)
		move.b	#4,$18(a0)
loc_28374:
		lea	$30(a0),a2
		lea	($FFFFB000).w,a1
		move.w	($FFFFF604).w,d0
		bsr.s	loc_28392
		lea	($FFFFB040).w,a1
		addq.w	#1,a2
		move.w	($FFFFF606).w,d0
		bsr.s	loc_28392
		bra	loc_2842C
loc_28392:
		tst.b	(a2)
		beq.s	loc_283C0
		and.b	#$70,d0
		beq	loc_28428
		clr.b	$2A(a1)
		clr.b	(a2)
		move.b	#$12,2(a2)
		and.w	#$F00,d0
		beq.s	loc_283B6
		move.b	#$3C,2(a2)
loc_283B6:
		move.w	#$FD00,$12(a1)
		bra	loc_28428
loc_283C0:
		tst.b	2(a2)
		beq.s	loc_283CE
		subq.b	#1,2(a2)
		bne	loc_28428
loc_283CE:
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	#$18,d0
		cmp.w	#$30,d0
		bcc	loc_28428
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		cmp.w	#$10,d1
		bcc	loc_28428
		tst.b	$2A(a1)
		bmi.s	loc_28428
		cmp.b	#6,$24(a1)
		bcc.s	loc_28428
		tst.w	($FFFFFE08).w
		bne.s	loc_28428
		clr.w	$10(a1)
		clr.w	$12(a1)
		clr.w	$14(a1)
		move.w	$C(a0),$C(a1)
		move.b	#$14,$1C(a1)
		move.b	#1,$2A(a1)
		move.b	#1,(a2)
loc_28428:
		rts	
;===============================================================================
; Object 0xD9 - Invisible Object that Sonic can hang - Sky Fortress
; [ End ]
;===============================================================================