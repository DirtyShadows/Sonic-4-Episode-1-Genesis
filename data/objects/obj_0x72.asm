;=============================================================================== 
; Object 0x72 - Metropolis / Casino Night - Conveyor Belt Attributes
; [ Begin ]	
;=============================================================================== 
loc_246E4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_246F2(pc,d0),d1
		jmp	loc_246F2(pc,d1)
loc_246F2:
		dc.w	loc_246F6-loc_246F2
		dc.w	loc_24728-loc_246F2
loc_246F6:
		addq.b	#2,$24(a0)
		move.w	#$30,$3C(a0)
		move.b	$28(a0),d0
		bpl.s	loc_2470C
		move.w	#$70,$3C(a0)
loc_2470C:
		and.b	#$7F,d0
		lsl.b	#4,d0
		move.b	d0,$38(a0)
		move.w	#2,$36(a0)
		btst	#0,$22(a0)
		beq.s	loc_24728
		neg.w	$36(a0)
loc_24728:
		lea	($FFFFB000).w,a1
		bsr.s	loc_24738
		lea	($FFFFB040).w,a1
		bsr.s	loc_24738
		bra	loc_24774
loc_24738:
		moveq	#0,d2
		move.b	$38(a0),d2
		move.w	d2,d3
		add.w	d3,d3
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	d2,d0
		cmp.w	d3,d0
		bcc.s	loc_24772
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		move.w	$3C(a0),d0
		add.w	d0,d1
		cmp.w	d0,d1
		bcc.s	loc_24772
		btst	#1,$22(a1)
		bne.s	loc_24772
		move.w	$36(a0),d0
		add.w	d0,8(a1)
loc_24772:
		rts
loc_24774:
		jmp	(loc_12D80)
;=============================================================================== 
; Object 0x72 - Metropolis / Casino Night - Conveyor Belt Attributes
; [ End ]	
;=============================================================================== 