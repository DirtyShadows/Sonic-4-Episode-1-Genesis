;===============================================================================
; Object 0x9F - Shellcracker - Metropolis
; [ Begin ]
;===============================================================================	
loc_341C4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_341D2(pc,d0),d1
		jmp	loc_341D2(pc,d1)
loc_341D2:
		dc.w	loc_341DA-loc_341D2
		dc.w	loc_34206-loc_341D2
		dc.w	loc_3427C-loc_341D2
		dc.w	loc_342B4-loc_341D2
loc_341DA:
		bsr	EnemySettings	
		btst	#0,1(a0)
		beq.s	loc_341EC
		bset	#0,$22(a0)
loc_341EC:
		move.w	#$FFC0,$10(a0)
		move.b	#$C,$16(a0)
		move.b	#$18,$17(a0)
		move.w	#$140,$2A(a0)
		rts
loc_34206:
		bsr	loc_32866
		tst.w	d0
		beq.s	loc_34216
		btst	#0,1(a0)
		beq.s	loc_34220
loc_34216:
		add.w	#$60,d2
		cmp.w	#$C0,d2
		bcs.s	loc_34266
loc_34220:
		bsr	loc_3A904
		jsr	ObjHitFloor	
		cmp.w	#$FFF8,d1
		blt.s	loc_3424E
		cmp.w	#$C,d1
		bge.s	loc_3424E
		add.w	d1,$C(a0)
		subq.w	#1,$2A(a0)
		bmi.s	loc_34252
		lea	(Shellcracker_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_3424E:
		neg.w	$10(a0)
loc_34252:
		addq.b	#2,$24(a0)
		move.b	#0,$1A(a0)
		move.w	#$3B,$2A(a0)
		bra	loc_3A8A4
loc_34266:
		move.b	#6,$24(a0)
		move.b	#0,$1A(a0)
		move.w	#8,$2A(a0)
		bra	loc_3A8A4
loc_3427C:
		tst.b	1(a0)
		bpl.s	loc_3429C
		bsr	loc_32866
		tst.w	d0
		beq.s	loc_34292
		btst	#0,1(a0)
		beq.s	loc_3429C
loc_34292:
		add.w	#$60,d2
		cmp.w	#$C0,d2
		bcs.s	loc_34266
loc_3429C:
		subq.w	#1,$2A(a0)
		bmi.s	loc_342A6
		bra	loc_3A8A4
loc_342A6:
		subq.b	#2,$24(a0)
		move.w	#$140,$2A(a0)
		bra	loc_3A8A4
loc_342B4:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_342C6(pc,d0),d1
		jsr	loc_342C6(pc,d1)
		bra	loc_3A8A4
loc_342C6:	
		dc.w	loc_342CC-loc_342C6
		dc.w	loc_342E2-loc_342C6
		dc.w	loc_342F6-loc_342C6
loc_342CC:
		subq.w	#1,$2A(a0)
		bmi.s	loc_342D4
		rts
loc_342D4:
		addq.b	#2,$25(a0)
		move.b	#3,$1A(a0)
		bra	loc_3444A
loc_342E2:
		tst.b	$2C(a0)
		bne.s	loc_342EA
		rts
loc_342EA:
		addq.b	#2,$25(a0)
		move.w	#$20,$2A(a0)
		rts
loc_342F6:
		subq.w	#1,$2A(a0)
		bmi.s	loc_342FE
		rts
loc_342FE:
		clr.b	$25(a0)
		clr.b	$2C(a0)
		move.b	#2,$24(a0)
		move.w	#$140,$2A(a0)
		rts	
;===============================================================================
; Object 0x9F - Shellcracker - Metropolis
; [ End ]
;===============================================================================