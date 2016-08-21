;===============================================================================
; Object 0xA9 - Grabber Sub - Chemical Plant
; [ Begin ]
;===============================================================================	
loc_351A4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_351B2(pc,d0),d1
		jmp	loc_351B2(pc,d1)
loc_351B2:
		dc.w	loc_351B6-loc_351B2
		dc.w	loc_351C8-loc_351B2
loc_351B6:
		bsr	EnemySettings	
		move.b	#2,$1A(a0)
		sub.w	#$C,$C(a0)
		rts
loc_351C8:
		move.w	$2C(a0),a1
		cmp.b	#$A7,(a1)
		bne	loc_3A898
		bra	loc_3A892	
;===============================================================================
; Object 0xA9 - Grabber Sub - Chemical Plant
; [ End ]
;===============================================================================