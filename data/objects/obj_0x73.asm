;=============================================================================== 
; Object 0x73 - Dust Hill - Rotating Rings - Sonic can walk through
; [ Begin ]	
;===============================================================================
loc_2477C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_2478A(pc,d0),d1
		jmp	loc_2478A(pc,d1)
loc_2478A:
		dc.w	loc_24790-loc_2478A
		dc.w	loc_2487E-loc_2478A
		dc.w	loc_24926-loc_2478A
loc_24790:
		addq.b	#2,$24(a0)
		move.l	#Rotating_Rings_Mappings,4(a0) 
		move.w	#$26BC,2(a0)
		bsr	loc_24962
		move.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.b	#8,$19(a0)
		move.w	8(a0),$3A(a0)
		move.w	$C(a0),$38(a0)
		move.b	#0,$20(a0)
		bset	#7,$22(a0)
		move.b	$28(a0),d1
		and.b	#$F0,d1
		ext.w	d1
		asl.w	#3,d1
		move.w	d1,$3E(a0)
		move.b	$22(a0),d0
		ror.b	#2,d0
		and.b	#$C0,d0
		move.b	d0,$26(a0)
		lea	$29(a0),a2
		move.b	$28(a0),d1
		and.w	#7,d1
		move.b	#0,(a2)+
		move.w	d1,d3
		lsl.w	#4,d3
		move.b	d3,$3C(a0)
		subq.w	#1,d1
		bcs.s	loc_24870
		btst	#3,$28(a0)
		beq.s	loc_24816
		subq.w	#1,d1
		bcs.s	loc_24870
loc_24816:
		bsr	loc_24956
		bne.s	loc_24870
		addq.b	#1,$29(a0)
		move.w	a1,d5
		sub.w	#$B000,d5
		lsr.w	#6,d5
		and.w	#$7F,d5
		move.b	d5,(a2)+
		move.b	#4,$24(a1)
		move.b	0(a0),0(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	1(a0),1(a1)
		move.b	$18(a0),$18(a1)
		move.b	$19(a0),$19(a1)
		move.b	$20(a0),$20(a1)
		move.b	$22(a0),$22(a1)
		sub.b	#$10,d3
		move.b	d3,$3C(a1)
		dbra	d1,loc_24816
loc_24870:
		move.w	a0,d5
		sub.w	#$B000,d5
		lsr.w	#6,d5
		and.w	#$7F,d5
		move.b	d5,(a2)+
loc_2487E:
		move.w	8(a0),-(sp)
		bsr	loc_2489C
		move.w	#8,d1
		move.w	#8,d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	(sp)+,d4
		bsr	loc_24968
		bra	loc_248EE
loc_2489C:
		move.w	$3E(a0),d0
		add.w	d0,$26(a0)
		move.b	$26(a0),d0
		jsr	CalcSine	
		move.w	$38(a0),d2
		move.w	$3A(a0),d3
		lea	$29(a0),a2	
		moveq	#0,d6
		move.b	(a2)+,d6
loc_248BE:	
		moveq	#0,d4
		move.b	(a2)+,d4
		lsl.w	#6,d4
		add.l	#$FFFFB000,d4
		move.l	d4,a1	
		moveq	#0,d4
		move.b	$3C(a1),d4
		move.l	d4,d5
		muls.w	d0,d4
		asr.l	#8,d4
		muls.w	d1,d5
		asr.l	#8,d5
		add.w	d2,d4
		add.w	d3,d5
		move.w	d4,$C(a1)
		move.w	d5,8(a1)
		dbra	d6,loc_248BE
		rts
loc_248EE:
		move.w	$3A(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_24906
		bra	loc_24950
loc_24906:
		moveq	#0,d2
		lea	$29(a0),a2
		move.b	(a2)+,d2
loc_2490E:	
		moveq	#0,d0
		move.b	(a2)+,d0
		lsl.w	#6,d0
		add.l	#$FFFFB000,d0
		move.l	d0,a1
		bsr	loc_2495C
		dbra	d2,loc_2490E
		rts
loc_24926:
		move.w	#8,d1
		move.w	#8,d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	$36(a0),d4
		bsr	loc_24968
		move.w	8(a0),$36(a0)
		bra	loc_24950
;-------------------------------------------------------------------------------
Rotating_Rings_Mappings: 
		dc.w	loc_24946-Rotating_Rings_Mappings
loc_24946:
		dc.w	$1
		dc.l	$F8050000,$FFF8	
;=============================================================================== 
; Object 0x73 - Dust Hill - Rotating Rings - Sonic can walk through
; [ End ]	
;===============================================================================	
	
