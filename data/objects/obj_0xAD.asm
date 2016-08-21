;===============================================================================
; Object 0xAD - Clucker Platform - Sky Fortress
; [ Begin ]	
;===============================================================================
loc_3558E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_3559C(pc,d0),d1
		jmp	loc_3559C(pc,d1)
loc_3559C:
		dc.w	loc_355A0-loc_3559C
		dc.w	loc_355AC-loc_3559C
loc_355A0:
		bsr	EnemySettings	
		move.b	#$C,$1A(a0)
		rts
loc_355AC:
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#8,d3
		move.w	8(a0),d4
		bsr	loc_3A8F8
		bra	loc_3A8A4
;===============================================================================
; Object 0xAD - Clucker Platform - Sky Fortress
; [ End ]
;===============================================================================	