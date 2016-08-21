;===============================================================================
; Object 0xA1 - Slicer - Metropolis
; [ Begin ]
;===============================================================================	
loc_3456C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3457A(pc,d0),d1
		jmp	loc_3457A(pc,d1)
loc_3457A:
		dc.w	loc_34584-loc_3457A
		dc.w	loc_345A8-loc_3457A
		dc.w	loc_3460E-loc_3457A
		dc.w	loc_3462A-loc_3457A
		dc.w	loc_34646-loc_3457A
loc_34584:
		bsr	EnemySettings	
		move.w	#$FFC0,d0
		btst	#0,1(a0)
		beq.s	loc_34596
		neg.w	d0
loc_34596:
		move.w	d0,$10(a0)
		move.b	#$10,$16(a0)
		move.b	#$10,$17(a0)
		rts
loc_345A8:
		bsr	loc_32866
		tst.w	d0
		bne.s	loc_345C4
		add.w	#$80,d2
		cmp.w	#$100,d2
		bcc.s	loc_345C4
		add.w	#$40,d3
		cmp.w	#$80,d3
		bcs.s	loc_345FA
loc_345C4:
		bsr	loc_3A904
		jsr	ObjHitFloor	
		cmp.w	#$FFF8,d1
		blt.s	loc_345EC
		cmp.w	#$C,d1
		bge.s	loc_345EC
		add.w	d1,$C(a0)
		lea	(Slicer_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_345EC:
		addq.b	#2,$24(a0)
		move.b	#$3B,$2A(a0)
		bra	loc_3A8A4
loc_345FA:
		addq.b	#4,$24(a0)
		move.b	#3,$1A(a0)
		move.b	#8,$2A(a0)
		bra	loc_3A8A4
loc_3460E:
		subq.b	#1,$2A(a0)
		bmi.s	loc_34618
		bra	loc_3A8A4
loc_34618:
		subq.b	#2,$24(a0)
		neg.w	$10(a0)
		bchg	#0,$22(a0)
		bra	loc_3A8A4
loc_3462A:
		subq.b	#1,$2A(a0)
		bmi.s	loc_34634
		bra	loc_3A8A4
loc_34634:
		addq.b	#2,$24(a0)
		move.b	#4,$1A(a0)
		bsr	loc_346F4
		bra	loc_3A8A4
loc_34646:
		bra	loc_3A8A4	
;===============================================================================
; Object 0xA1 - Slicer - Metropolis
; [ End ]
;===============================================================================