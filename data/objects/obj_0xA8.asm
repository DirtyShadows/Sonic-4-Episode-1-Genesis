;===============================================================================
; Object 0xA8 - Grabber Sub - Chemical Plant
; [ Begin ]
;===============================================================================
loc_350D8:	
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_350E6(pc,d0),d1
		jmp	loc_350E6(pc,d1)
loc_350E6:
		dc.w	loc_350EE-loc_350E6
		dc.w	loc_350FA-loc_350E6
		dc.w	loc_3515A-loc_350E6
		dc.w	loc_35194-loc_350E6
loc_350EE:
		bsr	EnemySettings	
		move.b	#3,$1A(a0)
		rts
loc_350FA:
		move.w	$2C(a0),a1
		cmp.b	#$A7,(a1)
		bne	loc_3A898
		bsr	loc_329DC
		move.w	$2C(a0),a1
		move.b	$1A(a1),d0
		addq.b	#3,d0
		move.b	d0,$1A(a0)
		move.b	$21(a0),d0
		beq.s	loc_3514A
		clr.b	$21(a0)
		cmp.b	#4,$25(a1)
		bne.s	loc_3514A
		and.b	#3,d0
		beq.s	loc_3514A
		clr.b	$20(a0)
		addq.b	#2,$24(a0)
		add.w	d0,d0
		st	$30(a1)
		move.w	loc_3514E-2(pc,d0),$32(a1)
		move.w	loc_35152(pc,d0),$34(a1)
loc_3514A:
		bra	loc_3A892	
loc_3514E:
		dc.w	$B000,$B040
loc_35152:
		dc.w	$B000,$F604,$F606,$F604	
loc_3515A:
		move.w	$2C(a0),a1
		move.w	$32(a1),d0
		beq.s	loc_3518C
		move.w	d0,a2
		cmp.b	#$A7,(a1)
		bne.s	loc_3517C
		move.w	8(a0),8(a2)
		move.w	$C(a0),$C(a2)
		bra	loc_3A892
loc_3517C:
		move.b	#0,$2A(a2)
		bset	#1,$22(a2)
		bra	loc_3A898
loc_3518C:
		addq.b	#2,$24(a0)
		bra	loc_3A892
loc_35194:	
		move.w	$2C(a0),a1
		cmp.b	#$A7,(a1)
		bne	loc_3A898
		bra	loc_3A892	
			
;===============================================================================
; Object 0xA8 - Grabber Sub - Chemical Plant
; [ End ]
;===============================================================================