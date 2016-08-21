;===============================================================================
; Object 0xD5 - Elevator - Casino Night
; [ Begin ]
;===============================================================================	
loc_275A4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_275B2(pc,d0),d1
		jmp	loc_275B2(pc,d1)
loc_275B2:
		dc.w	loc_275B6-loc_275B2
		dc.w	loc_27604-loc_275B2
loc_275B6:
		addq.b	#2,$24(a0)
		move.l	#CNz_Elevator_Mappings,4(a0) 
		move.w	#$4384,2(a0)
		bsr	loc_276F6
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		move.w	$C(a0),$32(a0)
		move.w	#$8000,$E(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsl.w	#2,d0
		sub.w	d0,$C(a0)
		btst	#0,$22(a0)
		beq.s	loc_27604
		add.w	d0,d0
		add.w	d0,$C(a0)
loc_27604:
		bsr	loc_27702
		move.w	$34(a0),d0
		move.w	loc_27630(pc,d0),d1
		jsr	loc_27630(pc,d1)
		cmp.w	#6,$34(a0)
		bcc.s	loc_2762C
		move.w	#$10,d1
		move.w	#9,d3
		move.w	8(a0),d4
		bsr	loc_276FC
loc_2762C:
		bra	loc_276F0
loc_27630:
		dc.w	loc_27638-loc_27630
		dc.w	loc_27652-loc_27630
		dc.w	loc_2768A-loc_27630
		dc.w	loc_276A4-loc_27630
loc_27638:
		move.b	$22(a0),d0
		and.w	#$18,d0
		beq.s	loc_27650
		move.w	#$D6,d0
		jsr	Play_Sfx	
		addq.w	#2,$34(a0)
loc_27650:
		rts
loc_27652:
		moveq	#8,d1
		move.w	$32(a0),d0
		cmp.w	$C(a0),d0
		bcc.s	loc_27660
		neg.w	d1
loc_27660:
		add.w	d1,$12(a0)
		bne.s	loc_27688
		addq.w	#2,$34(a0)
		move.w	d0,$C(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsl.w	#2,d0
		sub.w	d0,$C(a0)
		btst	#0,$22(a0)
		bne.s	loc_27688
		add.w	d0,d0
		add.w	d0,$C(a0)
loc_27688:
		rts
loc_2768A:
		move.b	$22(a0),d0
		and.w	#$18,d0
		bne.s	loc_276A2
		move.w	#$D6,d0
		jsr	Play_Sfx	
		addq.w	#2,$34(a0)
loc_276A2:
		rts
loc_276A4:
		moveq	#8,d1
		move.w	$32(a0),d0
		cmp.w	$C(a0),d0
		bcc.s	loc_276B2
		neg.w	d1
loc_276B2:
		add.w	d1,$12(a0)
		bne.s	loc_276DA
		clr.w	$34(a0)
		move.w	d0,$C(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsl.w	#2,d0
		sub.w	d0,$C(a0)
		btst	#0,$22(a0)
		beq.s	loc_276DA
		add.w	d0,d0
		add.w	d0,$C(a0)
loc_276DA:
		rts 
;-------------------------------------------------------------------------------
CNz_Elevator_Mappings: 
		dc.w	loc_276DE-CNz_Elevator_Mappings
loc_276DE:
		dc.w	$2
		dc.l	$F8050000,$FFF0,$F8050800,$8000000	
;===============================================================================
; Object 0xD5 - Elevator - Casino Night
; [ End ]
;===============================================================================