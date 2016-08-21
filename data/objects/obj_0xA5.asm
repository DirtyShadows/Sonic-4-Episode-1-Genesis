;===============================================================================
; Object 0xA5 - Lander badnick - Chemical Plant
; [ Begin ]
;===============================================================================	
loc_34C5C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_34C6A(pc,d0),d1
		jmp	loc_34C6A(pc,d1)
loc_34C6A:
		dc.w	loc_34C70-loc_34C6A
		dc.w	loc_34C82-loc_34C6A
		dc.w	loc_34CD4-loc_34C6A
loc_34C70:
		bsr	EnemySettings	
		move.w	#$FFC0,$10(a0)
		move.w	#$80,$2A(a0)
		rts
loc_34C82:
		tst.b	$2B(a0)
		beq.s	loc_34C90
		subq.b	#1,$2B(a0)
		bra	loc_34C9E
loc_34C90:
		bsr	loc_32866
		add.w	#$60,d2
		cmp.w	#$C0,d2
		bcs.s	loc_34CC0
loc_34C9E:
		subq.b	#1,$2A(a0)
		bne.s	loc_34CAE
		move.w	#$80,$2A(a0)
		neg.w	$10(a0)
loc_34CAE:
		bsr	loc_3A904
		lea	(Horizontal_Lander_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_34CC0:
		addq.b	#2,$24(a0)
		move.b	#$28,$2B(a0)
		move.b	#2,$1A(a0)
		bra	loc_3A8A4
loc_34CD4:
		subq.b	#1,$2B(a0)
		bmi.s	loc_34CEA
		cmp.b	#$14,$2B(a0)
		bne.s	loc_34CE6
		bsr	loc_34D94
loc_34CE6:
		bra	loc_3A8A4
loc_34CEA:
		subq.b	#2,$24(a0)
		move.b	#$40,$2B(a0)
		bra	loc_3A8A4	
;===============================================================================
; Object 0xA5 - Lander badnick - Chemical Plant
; [ End ]
;===============================================================================