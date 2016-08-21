;===============================================================================
; Object 0xA7 - Grabber badnick - Chemical Plant
; [ Begin ]
;=============================================================================== 
loc_34F2C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_34F3A(pc,d0),d1
		jmp	loc_34F3A(pc,d1)
loc_34F3A:
		dc.w	loc_34F3E-loc_34F3A
		dc.w	loc_34F7E-loc_34F3A
loc_34F3E:
		bsr	EnemySettings	
		move.w	#$FFC0,d0
		btst	#0,1(a0)
		beq.s	loc_34F50
		neg.w	d0
loc_34F50:
		move.w	d0,$10(a0)
		move.w	#$FF,$2A(a0)
		move.b	#2,$2D(a0)
		lea	(Load_Object_0xA9),a2	
		bsr	loc_32970
		lea	(Load_Object_0xA8),a2	
		bsr	loc_32970
		lea	(Load_Object_0xAA),a2	
		bra	loc_32970
loc_34F7E:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_34FB8(pc,d0),d1
		jsr	loc_34FB8(pc,d1)
		bsr	loc_3A904
		moveq	#0,d0
		moveq	#$10,d1
		move.w	$3C(a0),a1
		bsr	loc_32996
		move.w	$3E(a0),a1
		move.w	8(a0),8(a1)
		move.w	$3A(a0),a1
		move.w	8(a0),8(a1)
		lea	$3A(a0),a2
		bra	loc_352F4
loc_34FB8:
		dc.w	loc_34FC4-loc_34FB8
		dc.w	loc_3500C-loc_34FB8
		dc.w	loc_35026-loc_34FB8
		dc.w	loc_350B0-loc_34FB8
		dc.w	loc_350CA-loc_34FB8
		dc.w	loc_350D4-loc_34FB8
loc_34FC4:
		bsr	loc_32866
		add.w	#$40,d2
		cmp.w	#$80,d2
		bcc.s	loc_34FD8
		cmp.w	#$FF80,d3
		bhi.s	loc_34FF6
loc_34FD8:
		subq.w	#1,$2A(a0)
		bpl.s	loc_34FF4
		move.w	#$FF,$2A(a0)
		neg.w	$10(a0)
		bchg	#0,1(a0)
		bchg	#0,$22(a0)
loc_34FF4:
		rts
loc_34FF6:
		addq.b	#2,$25(a0)
		move.w	$10(a0),$2E(a0)
		clr.w	$10(a0)
		move.b	#$10,$2C(a0)
		rts
loc_3500C:
		subq.b	#1,$2C(a0)
		bmi.s	loc_35014
		rts
loc_35014:
		addq.b	#2,$25(a0)
		move.w	#$200,$12(a0)
		move.b	#$40,$2C(a0)
		rts
loc_35026:
		tst.b	$30(a0)
		bne.s	loc_35060
		subq.b	#1,$2C(a0)
		beq.s	loc_35048
		cmp.b	#$20,$2C(a0)
		bne.s	loc_3503E
		neg.w	$12(a0)
loc_3503E:
		lea	(loc_35386),a1
		bra	loc_3A8BC
loc_35048:
		move.b	#0,$25(a0)
		clr.w	$12(a0)
		move.w	$2E(a0),$10(a0)
		move.b	#0,$1A(a0)
		rts
loc_35060:
		addq.b	#2,$25(a0)
		move.w	$32(a0),a1
		move.b	#$81,$2A(a1)
		clr.w	$10(a1)
		clr.w	$12(a1)
		move.b	#$E,$1C(a1)
		move.b	#1,$1A(a0)
		tst.w	$12(a0)
		bmi.s	loc_3509C
		neg.w	$12(a0)
		move.b	$2C(a0),d0
		sub.b	#$40,d0
		neg.w	d0
		addq.b	#1,d0
		move.b	d0,$2C(a0)
loc_3509C:
		move.b	#1,$2A(a0)
		move.b	#$10,$2B(a0)
		move.b	#$20,$37(a0)
		rts
loc_350B0:
		bsr	loc_352AC
		bsr	loc_3522E
		subq.b	#1,$2C(a0)
		beq.s	loc_350C0
		rts
loc_350C0:
		addq.b	#2,$25(a0)
		clr.w	$12(a0)
		rts
loc_350CA:
		bsr	loc_352AC
		bra	loc_3522E
		rts
loc_350D4:
		bra	loc_352AC	
;===============================================================================
; Object 0xA7 - Grabber badnick - Chemical Plant
; [ End ]
;===============================================================================