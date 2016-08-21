;===============================================================================
; Object 0x91 -> Chop Chop badnick - Neo Green Hill
; [ Begin ]
;===============================================================================
loc_32F9A:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_32FA8(pc,d0),d1
		jmp	loc_32FA8(pc,d1)
loc_32FA8:
		dc.w	loc_32FB0-loc_32FA8
		dc.w	loc_32FD2-loc_32FA8
		dc.w	loc_33020-loc_32FA8
		dc.w	loc_33054-loc_32FA8
loc_32FB0:
		bsr	EnemySettings	
		move.w	#$200,$2A(a0)
		move.w	#$50,$2C(a0)
		moveq	#$40,d0
		btst	#0,$22(a0)
		bne.s	loc_32FCC
		neg.w	d0
loc_32FCC:
		move.w	d0,$10(a0)
		rts
loc_32FD2:
		subq.b	#1,$2C(a0)
		bne.s	loc_32FDC
		bsr	loc_33066
loc_32FDC:
		subq.w	#1,$2A(a0)
		bpl.s	loc_32FF8
		move.w	#$200,$2A(a0)
		bchg	#0,$22(a0)
		bchg	#0,1(a0)
		neg.w	$10(a0)
loc_32FF8:
		bsr	loc_3A904
		bsr	loc_32866
		move.w	d2,d4
		move.w	d3,d5
		bsr	loc_330A0
		bne.s	loc_3300E
		bra	loc_3A8A4
loc_3300E:
		addq.b	#2,$24(a0)
		move.b	#$10,$2A(a0)
		clr.w	$10(a0)
		bra	loc_3A8A4
loc_33020:
		subq.b	#1,$2A(a0)
		bmi.s	loc_3302A
		bra	loc_33058
loc_3302A:
		addq.b	#2,$24(a0)
		bsr	loc_32866
		lsr.w	#1,d0
		move.b	loc_33050(pc,d0),$10(a0)
		add.w	#$10,d3
		cmp.w	#$20,d3
		bcs.s	loc_3304C
		lsr.w	#1,d1
		move.b	loc_33052(pc,d1),$13(a0)
loc_3304C:
		bra	loc_33058
loc_33050:
		dc.b	$FE,$2
loc_33052:
		dc.b	$80,$80
loc_33054:
		bsr	loc_3A904
loc_33058:
		lea	(Chop_Chop_Animate_Data),a1 
		bsr	loc_3A8BC
		bra	loc_3A8A4
loc_33066:
		move.w	#$50,$2C(a0)
		bsr	loc_3A89E
		bne.s	loc_3309E
		move.b	#$A,0(a1)
		move.b	#6,$28(a1)
		move.w	8(a0),8(a1)
		moveq	#$14,d0
		btst	#0,1(a0)
		beq.s	loc_33090
		neg.w	d0
loc_33090:
		add.w	d0,8(a1)
		move.w	$C(a0),$C(a1)
		addq.w	#6,$C(a1)
loc_3309E:
		rts
loc_330A0:
		add.w	#$20,d3
		cmp.w	#$40,d3
		bcc.s	loc_330CC
		tst.w	d2
		bmi.s	loc_330B8
		tst.w	$10(a0)
		bpl.s	loc_330CC
		bra	loc_330C0
loc_330B8:
		tst.w	$10(a0)
		bmi.s	loc_330CC
		neg.w	d2
loc_330C0:
		cmp.w	#$20,d2
		bcs.s	loc_330CC
		cmp.w	#$A0,d2
		bcs.s	loc_330D0
loc_330CC:
		moveq	#0,d2
		rts
loc_330D0:
		moveq	#1,d2
		rts
;-------------------------------------------------------------------------------	
Obj_0x91_Ptr: 
		dc.l	Chop_Chop_Mappings	
		dc.w	$253B
		dc.b	4,4,$10,$2
;-------------------------------------------------------------------------------
Chop_Chop_Animate_Data: 
		dc.w	loc_330E0-Chop_Chop_Animate_Data
loc_330E0:
		dc.b	4,0,1,$FF	
;-------------------------------------------------------------------------------
Chop_Chop_Mappings: 
		dc.w	loc_330E8-Chop_Chop_Mappings
		dc.w	loc_330F2-Chop_Chop_Mappings
loc_330E8:
		dc.w	$1
		dc.l	$F40E0000,$FFF0
loc_330F2:
		dc.w	$1
		dc.l	$F40E000C,$6FFF0	
;===============================================================================
; Object 0x91 -> Chop Chop badnick - Neo Green Hill
; [ End ]
;===============================================================================
