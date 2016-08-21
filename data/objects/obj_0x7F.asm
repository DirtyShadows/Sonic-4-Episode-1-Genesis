;===============================================================================
; Object 0x7F - Vines used as Switch to Activate Bridges - Dust Hill
; [ Begin ]
;===============================================================================	
loc_25580:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_2558E(pc,d0),d1
		jmp	loc_2558E(pc,d1)
loc_2558E:
		dc.w	loc_25592-loc_2558E
		dc.w	loc_255BA-loc_2558E
loc_25592:
		addq.b	#2,$24(a0)
		move.l	#Vines_Switch_Mappings,4(a0) 
		move.w	#$640E,2(a0)
		bsr	loc_25712
		move.b	#4,1(a0)
		move.b	#8,$19(a0)
		move.b	#4,$18(a0)
loc_255BA:
		lea	$30(a0),a2
		lea	($FFFFB000).w,a1
		move.w	($FFFFF604).w,d0
		bsr.s	loc_255D8
		lea	($FFFFB040).w,a1
		addq.w	#1,a2
		move.w	($FFFFF606).w,d0
		bsr.s	loc_255D8
		bra	loc_2570C
loc_255D8:
		tst.b	(a2)
		beq.s	loc_2562C
		and.b	#$70,d0
		beq	loc_256D2
		clr.b	$2A(a1)
		clr.b	(a2)
		move.b	#$12,2(a2)
		and.w	#$F00,d0
		beq.s	loc_255FC
		move.b	#$3C,2(a2)
loc_255FC:
		move.w	#$FD00,$12(a1)
		move.b	$28(a0),d0
		and.w	#$F,d0
		lea	($FFFFF7E0).w,a3
		lea	0(a3,d0),a3
		bclr	#0,(a3)
		move.b	#0,$1A(a0)
		tst.w	$30(a0)
		beq.s	loc_25628
		move.b	#1,$1A(a0)
loc_25628:
		bra	loc_256D2
loc_2562C:
		tst.b	2(a2)
		beq.s	loc_2563A
		subq.b	#1,2(a2)
		bne	loc_256D2
loc_2563A:
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	#$C,d0
		cmp.w	#$18,d0
		bcc	loc_256D2
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		sub.w	#$28,d1
		cmp.w	#$10,d1
		bcc	loc_256D2
		tst.b	$2A(a1)
		bmi.s	loc_256D2
		cmp.b	#4,$24(a1)
		bcc.s	loc_256D2
		tst.w	($FFFFFE08).w
		bne.s	loc_256D2
		clr.w	$10(a1)
		clr.w	$12(a1)
		clr.w	$14(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$30,$C(a1)
		move.b	#$14,$1C(a1)
		move.b	#1,$2A(a1)
		move.b	#1,(a2)
		move.b	$28(a0),d0
		and.w	#$F,d0
		lea	($FFFFF7E0).w,a3
		bset	#0,0(a3,d0)
		move.w	#$CD,d0
		jsr	Play_Sfx	
		move.b	#0,$1A(a0)
		tst.w	$30(a0)
		beq.s	loc_256D2
		move.b	#1,$1A(a0)
loc_256D2:
		rts	
;-------------------------------------------------------------------------------
Vines_Switch_Mappings: 
		dc.w	loc_256D8-Vines_Switch_Mappings
		dc.w	loc_256F2-Vines_Switch_Mappings
loc_256D8:
		dc.w	$3
		dc.l	$D0070000,$FFF8,$F0070000,$FFF8
		dc.l	$10070008,$4FFF8
loc_256F2:
		dc.w	$3
		dc.l	$D4070000,$FFF8,$F4070000,$FFF8
		dc.l	$14070008,$4FFF8	
;===============================================================================
; Object 0x7F - Vines used as Switch to Activate Bridges - Dust Hill
; [ End ]
;===============================================================================