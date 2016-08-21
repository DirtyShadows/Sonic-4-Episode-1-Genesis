;===============================================================================
; Object 0xAA - Grabber Sub - Chemical Plant
; [ Begin ]
;===============================================================================	
loc_351D8: 
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_351E6(pc,d0),d1
		jmp	loc_351E6(pc,d1)
loc_351E6:
		dc.w	loc_351EA-loc_351E6
		dc.w	loc_351F4-loc_351E6
loc_351EA:
		bsr	EnemySettings	
		subq.w	#8,$C(a0)
		rts
loc_351F4:
		move.w	$2C(a0),a1
		cmp.b	#$A7,(a1)
		bne	loc_3A898
		move.w	$C(a1),d0
		sub.w	$C(a0),d0
		bmi.s	loc_35210
		lsr.w	#4,d0
		move.b	d0,$1A(a0)
loc_35210:
		bra	loc_3A892	
;===============================================================================
; Object 0xAA - Grabber Sub - Chemical Plant
; [ End ]
;===============================================================================