;===============================================================================
; Object 0x9B - Turtloid rider badnick - Sky Chase
; [ Begin ]
;===============================================================================	
loc_33BF0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_33BFE(pc,d0),d1
		jmp	loc_33BFE(pc,d1)
loc_33BFE:
		dc.w	loc_33C02-loc_33BFE
		dc.w	loc_33C06-loc_33BFE
loc_33C02:
		bra	EnemySettings	
loc_33C06:
		move.w	$2C(a0),a1
		lea	loc_33C16(pc),a2
		bsr	loc_33C1A
		bra	loc_329BE	
loc_33C16:
		dc.b	0,4,$FF,$E8
loc_33C1A:
		move.l	8(a1),8(a0)
		move.l	$C(a1),$C(a0)
		move.w	(a2)+,d0
		add.w	d0,8(a0)
		move.w	(a2)+,d0
		add.w	d0,$C(a0)
;===============================================================================
; Sub Routine Null_Sub_01
; [ Begin ]
;===============================================================================
Null_Sub_01: 
		rts
;===============================================================================
; Sub Routine Null_Sub_01
; [ End ]
;===============================================================================
loc_33C34:
		bsr	loc_3A8B6
		bne.s	loc_33C6A
		move.b	#$9B,0(a1)
		move.b	#2,$1A(a1)
		move.b	#$18,$28(a1)
		move.w	a0,$2C(a1)
		move.w	a1,$2C(a0)
		move.w	8(a0),8(a1)
		addq.w	#4,8(a1)
		move.w	$C(a0),$C(a1)
		sub.w	#$18,$C(a1)
loc_33C6A:
		rts	
;===============================================================================
; Object 0x9B - Turtloid rider badnick - Sky Chase
; [ End ]
;===============================================================================