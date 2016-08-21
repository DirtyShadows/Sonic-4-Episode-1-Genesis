;===============================================================================
; Object 0x07 - Oil Attributes - Oil Ocean
; [ Begin ]
;===============================================================================	
loc_1FE3C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1FE4A(pc,d0),d1
		jmp	loc_1FE4A(pc,d1)
loc_1FE4A:
		dc.w	loc_1FE4E-loc_1FE4A
		dc.w	loc_1FE70-loc_1FE4A
loc_1FE4E:
		addq.b	#2,$24(a0)
		move.w	#$758,$C(a0)
		move.b	#$20,$19(a0)
		move.w	$C(a0),$30(a0)
		move.b	#$30,$38(a0)
		bset	#7,$22(a0)
loc_1FE70:
		tst.w	($FFFFFE08).w
		bne	loc_1FF04
		lea	($FFFFB000).w,a1
		moveq	#8,d1
		move.b	$22(a0),d0
		and.b	d1,d0
		bne.s	loc_1FE94
		cmp.b	#$30,$38(a0)
		beq.s	loc_1FE9E
		addq.b	#1,$38(a0)
		bra.s	loc_1FE9E
loc_1FE94:
		tst.b	$38(a0)
		beq.s	loc_1FEF2
		subq.b	#1,$38(a0)
loc_1FE9E:
		moveq	#$20,d1
		moveq	#0,d3
		move.b	$38(a0),d3
		moveq	#3,d6
		move.w	8(a1),d4
		move.w	d4,8(a0)
		bsr	loc_1FF0E
		lea	($FFFFB040).w,a1
		moveq	#$10,d1
		move.b	$22(a0),d0
		and.b	d1,d0
		bne.s	loc_1FED0
		cmp.b	#$30,$3A(a0)
		beq.s	loc_1FEDA
		addq.b	#1,$3A(a0)
		bra.s	loc_1FEDA
loc_1FED0:
		tst.b	$3A(a0)
		beq.s	loc_1FEF2
		subq.b	#1,$3A(a0)
loc_1FEDA:
		moveq	#$20,d1
		moveq	#0,d3
		move.b	$3A(a0),d3
		moveq	#4,d6
		move.w	8(a1),d4
		move.w	d4,8(a0)
		bsr	loc_1FF0E
		rts
loc_1FEF2:
		not.b	d1
		and.b	d1,$22(a0)
		move.l	a0,-(sp)
		move.l	a0,a2
		move.l	a1,a0
		bsr	loc_1FF08
		move.l	(sp)+,a0
loc_1FF04:
		rts	
;===============================================================================
; Object 0x7 - Oil Attributes - Oil Ocean
; [ End ]
;===============================================================================