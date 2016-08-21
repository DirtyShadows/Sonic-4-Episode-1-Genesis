;===============================================================================
; Object 0x92 - Spiker - Hill Top 
; [ Begin ]
;===============================================================================	
loc_330FC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3310A(pc,d0),d1
		jmp	loc_3310A(pc,d1)
loc_3310A:
		dc.w	loc_33112-loc_3310A
		dc.w	loc_3312A-loc_3310A
		dc.w	loc_33154-loc_3310A
		dc.w	loc_3317A-loc_3310A
loc_33112:
		bsr	EnemySettings	
		move.b	#$40,$2A(a0)
		move.w	#$80,$10(a0)
		bchg	#0,$22(a0)
		rts
loc_3312A:
		bsr	loc_33228
		subq.b	#1,$2A(a0)
		bmi.s	loc_33146
		bsr	loc_3A904
		lea	(Spiker_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_33146:
		addq.b	#2,$24(a0)
		move.b	#$10,$2A(a0)
		bra	loc_3A8A4
loc_33154:
		bsr	loc_33228
		subq.b	#1,$2A(a0)
		bmi.s	loc_33162
		bra	loc_3A8A4
loc_33162:
		subq.b	#2,$24(a0)
		move.b	#$40,$2A(a0)
		neg.w	$10(a0)
		bchg	#0,$22(a0)
		bra	loc_3A8A4
loc_3317A:
		move.b	$2E(a0),d0
		cmp.b	#8,d0
		beq.s	loc_3318E
		subq.b	#1,d0
		move.b	d0,$2E(a0)
		bra	loc_3A8A4
loc_3318E:
		bsr	loc_3A8B6
		bne.s	loc_331C6
		st	$2B(a0)
		move.b	#$93,0(a1)	; Call Object 0x93
		move.b	$28(a0),$28(a1)
		move.w	a0,$2C(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	#4,$1A(a1)
		move.b	#2,$1A(a0)
		move.b	#1,$1C(a0)
loc_331C6:
		move.b	$2F(a0),$24(a0)
		bra	loc_3A8A4	
;===============================================================================
; Object 0x92 - Spiker - Hill
; [ End ]
;===============================================================================