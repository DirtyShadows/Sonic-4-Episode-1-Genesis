;===============================================================================
; Object 0xB0 Sonic in Sega Screen
; [ Begin ]
;===============================================================================	
loc_362EA:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_362F8(pc,d0),d1
		jmp	loc_362F8(pc,d1)
loc_362F8:
		dc.w	loc_36304-loc_362F8
		dc.w	loc_36402-loc_362F8
		dc.w	loc_3643A-loc_362F8
		dc.w	loc_364A4-loc_362F8
		dc.w	loc_364DA-loc_362F8
		dc.w	loc_36504-loc_362F8
loc_36304:
		bsr	EnemySettings	
		move.w	#$1E8,8(a0)
		move.w	#$F0,$A(a0)
		move.w	#$B,$2A(a0)
		move.w	#2,($FFFFF662).w
		bset	#0,1(a0)
		bset	#0,$22(a0)
		lea	($FFFFE138).w,a1
		lea	loc_3687A(pc),a2
		moveq	#0,d0
		moveq	#$22,d6
loc_36338:	
		move.b	(a2)+,d0
		add.w	d0,(a1)
		addq.w	#8,a1
		dbra	d6,loc_36338
		lea	loc_363A2(pc),a1
		lea	(Sonic_Sprites),a3 
		lea	($FFFF0000),a5
		moveq	#3,d5
loc_36354:	
		move.l	(a1)+,a2
		move.w	(a2)+,d6
		subq.w	#1,d6
loc_3635A:	
		move.w	(a2)+,d0
		move.w	d0,d1
		and.w	#$FFF,d0
		lsl.w	#5,d0
		lea	0(a3,d0),a4
		and.w	#$F000,d1
		rol.w	#4,d1
		addq.w	#1,d1
		lsl.w	#3,d1
		subq.w	#1,d1
loc_36374:	
		move.l	(a4)+,(a5)+
		dbra	d1,loc_36374
		dbra	d6,loc_3635A
		dbra	d5,loc_36354
		move.w	d7,-(sp)
		moveq	#0,d0
		moveq	#0,d1
		lea	loc_363B2(pc),a6
		moveq	#7,d7
loc_3638E:	
		move.l	(a6)+,a1
		move.l	(a6)+,a2
		move.b	(a6)+,d0
		move.b	(a6)+,d1
		bsr	loc_3A6EE
		dbra	d7,loc_3638E
		move.w	(sp)+,d7
		rts	
loc_363A2:
		dc.l	loc_7181A
		dc.l	loc_71820
		dc.l	loc_71826
		dc.l	loc_7182C	
loc_363B2:	
		dc.l	$FFFF0000,$FFFF0B00
		dc.b	2,$1
		dc.l	$FFFF00C0,$FFFF0E00
		dc.b	3,$3
		dc.l	$FFFF02C0,$FFFF1600
		dc.b	2,$1
		dc.l	$FFFF0380,$FFFF1900
		dc.b	3,$3
		dc.l	$FFFF0580,$FFFF2100
		dc.b	2,$1
		dc.l	$FFFF0640,$FFFF2400
		dc.b	3,$3
		dc.l	$FFFF0840,$FFFF2C00
		dc.b	2,$1
		dc.l	$FFFF0900,$FFFF2F00
		dc.b	3,$3	
loc_36402:
		sub.w	#$20,8(a0)
		subq.w	#1,$2A(a0)
		bmi.s	loc_36420
		bsr	loc_36534
		lea	(loc_366AC),a1
		bsr	loc_3A8BC
		bra	J_DisplaySprite_1	
loc_36420:
		addq.b	#2,$24(a0)
		move.w	#$C,$2A(a0)
		move.b	#1,$2C(a0)
		move.b	#$FF,$2D(a0)
		bra	J_DisplaySprite_1	
loc_3643A:
		tst.w	$2A(a0)
		beq.s	loc_36448
		subq.w	#1,$2A(a0)
		bsr	loc_36534
loc_36448:
		lea	loc_365AC(pc),a1
		bsr	loc_3655C
		bne.s	loc_36454
		rts
loc_36454:
		addq.b	#2,$24(a0)
		bchg	#0,1(a0)
		move.w	#$B,$2A(a0)
		move.w	#4,($FFFFF662).w
		sub.w	#$28,8(a0)
		bchg	#0,1(a0)
		bchg	#0,$22(a0)
		lea	($FFFFE000).w,a1
		moveq	#0,d0
		move.w	#$400,d1
loc_36486:	
		move.l	d0,(a1)+
		dbra	d1,loc_36486
		lea	($FFFFE13C).w,a1
		lea	loc_3687A(pc),a2
		moveq	#0,d0
		moveq	#$22,d6
loc_36498:	
		move.b	(a2)+,d0
		sub.w	d0,(a1)
		addq.w	#8,a1
		dbra	d6,loc_36498
		rts
loc_364A4:
		subq.w	#1,$2A(a0)
		bmi.s	loc_364C2
		add.w	#$20,8(a0)
		bsr	loc_36548
		lea	(loc_366AC),a1
		bsr	loc_3A8BC
		bra	J_DisplaySprite_1	
loc_364C2:
		addq.b	#2,$24(a0)
		move.w	#$C,$2A(a0)
		move.b	#1,$2C(a0)
		move.b	#$FF,$2D(a0)
		rts
loc_364DA:
		tst.w	$2A(a0)
		beq.s	loc_364E8
		subq.w	#1,$2A(a0)
		bsr	loc_36548
loc_364E8:
		lea	loc_36622(pc),a1
		bsr	loc_3655C
		bne.s	loc_364F4
		rts
loc_364F4:
		addq.b	#2,$24(a0)
		st	($FFFFF660).w
		move.b	#$FA,d0
		bsr	J_Play_Sfx_1	
loc_36504:
		rts	
;===============================================================================
; Object 0xB0 Sonic in Sega Screen
; [ End ]
;===============================================================================