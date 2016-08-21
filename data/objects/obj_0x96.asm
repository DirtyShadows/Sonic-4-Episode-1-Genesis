;===============================================================================
; Object 0x96 - Rexon Body - Hill Top
; [ Begin ]
;===============================================================================	
loc_3350C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3351A(pc,d0),d1
		jmp	loc_3351A(pc,d1) 
loc_3351A:
		dc.w	loc_33522-loc_3351A
		dc.w	loc_3353A-loc_3351A
		dc.w	loc_33586-loc_3351A
		dc.w	loc_335B4-loc_3351A
loc_33522:
		bsr	EnemySettings	
		move.b	#2,$1A(a0)
		move.w	#$FFE0,$10(a0)
		move.b	#$80,$2A(a0)
		rts
loc_3353A:
		bsr	loc_32866
		add.w	#$60,d2
		cmp.w	#$100,d2
		bcc.s	loc_3354C
		bsr	loc_33796
loc_3354C:
		move.w	8(a0),-(sp)
		bsr	loc_3356A
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#$11,d3
		move.w	(sp)+,d4
		bsr	loc_3A8F8
		bra	loc_3A8A4
loc_3356A:
		subq.b	#1,$2A(a0)
		bpl.s	loc_33580
		move.b	#$80,$2A(a0)
		neg.w	$10(a0)
		bchg	#0,1(a0)
loc_33580:
		bsr	loc_3A904
		rts
loc_33586:
		bsr	loc_32866
		add.w	#$60,d2
		cmp.w	#$100,d2
		bcc.s	loc_33598
		bsr	loc_33796
loc_33598:
		bsr	loc_335A0
		bra	loc_3A8A4
loc_335A0:
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#8,d3
		move.w	8(a0),d4
		bra	loc_3A8F8
loc_335B4:
		bsr.s	loc_335A0
		bra	loc_3A8A4	
;===============================================================================
; Object 0x96 - Rexon Body - Hill Top
; [ End ]
;===============================================================================