;=============================================================================== 
; Object 0x69 - Metropolis - Screew Nut
; [ Begin ]	
;===============================================================================
loc_23638:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_23646(pc,d0),d1
		jmp	loc_23646(pc,d1)
loc_23646:	
		dc.w	loc_2364E-loc_23646
		dc.w	loc_23690-loc_23646
		dc.w	loc_237B0-loc_23646
		dc.w	loc_236A8-loc_23646
loc_2364E:
		addq.b	#2,$24(a0)
		move.l	#Screw_Nut_Mappings,4(a0) 
		move.w	#$2500,2(a0)
		bsr	loc_23850
		move.b	#4,1(a0)
		move.b	#$20,$19(a0)
		move.b	#$B,$16(a0)
		move.b	#4,$18(a0)
		move.w	$C(a0),$32(a0)
		move.b	$28(a0),d0
		and.w	#$7F,d0
		lsl.w	#3,d0
		move.w	d0,$36(a0)
loc_23690:
		lea	($FFFFB000).w,a1
		lea	$38(a0),a4
		moveq	#3,d6
		bsr.s	loc_236C6
		lea	($FFFFB040).w,a1
		lea	$3C(a0),a4
		moveq	#4,d6
		bsr.s	loc_236C6
loc_236A8:
		and.w	#$7FF,$C(a0)
		move.w	#$2B,d1
		move.w	#$C,d2
		move.w	#$D,d3
		move.w	8(a0),d4
		bsr	loc_23856
		bra	loc_23844
loc_236C6:
		btst	d6,$22(a0)
		bne.s	loc_236CE
		clr.b	(a4)
loc_236CE:
		moveq	#0,d0
		move.b	(a4),d0
		move.w	loc_236DA(pc,d0),d0
		jmp	loc_236DA(pc,d0)
loc_236DA:
		dc.w	loc_236E0-loc_236DA
		dc.w	loc_23700-loc_236DA
		dc.w	loc_23722-loc_236DA
loc_236E0:
		btst	d6,$22(a0)
		bne.s	loc_236E8
		rts
loc_236E8:
		addq.b	#2,(a4)
		move.b	#0,1(a4)
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcc.s	loc_23700
		move.b	#1,1(a4)
loc_23700:
		move.w	8(a1),d0
		sub.w	8(a0),d0
		tst.b	1(a4)
		beq.s	loc_23712
		add.w	#$F,d0
loc_23712:
		cmp.w	#$10,d0
		bcc.s	loc_23720
		move.w	8(a0),8(a1)
		addq.b	#2,(a4)
loc_23720:
		rts
loc_23722:
		move.w	8(a1),d0
		sub.w	8(a0),d0
		bcc.s	loc_23788
		add.w	d0,$34(a0)
		move.w	8(a0),8(a1)
		move.w	$34(a0),d0
		asr.w	#3,d0
		move.w	d0,d1
		asr.w	#1,d0
		and.w	#3,d0
		move.b	d0,$1A(a0)
		neg.w	d1
		add.w	$32(a0),d1
		move.w	d1,$C(a0)
		sub.w	$32(a0),d1
		move.w	$36(a0),d0
		cmp.w	d0,d1
		blt.s	loc_23786
		move.w	d0,d1
		add.w	$32(a0),d1
		move.w	d1,$C(a0)
		lsl.w	#3,d0
		neg.w	d0
		move.w	d0,$34(a0)
		move.b	#0,$1A(a0)
		tst.b	$28(a0)
		bmi.s	loc_23780
		clr.b	(a4)
		rts
loc_23780:
		move.b	#4,$24(a0)
loc_23786:
		rts
loc_23788:
		add.w	d0,$34(a0)
		move.w	8(a0),8(a1)
		move.w	$34(a0),d0
		asr.w	#3,d0
		move.w	d0,d1
		asr.w	#1,d0
		and.w	#3,d0
		move.b	d0,$1A(a0)
		neg.w	d1
		add.w	$32(a0),d1
		move.w	d1,$C(a0)
		rts
loc_237B0:
		bsr	loc_2385C
		add.w	#$38,$12(a0)
		bsr	loc_2384A
		tst.w	d1
		bpl	loc_237D6
		add.w	d1,$C(a0)
		and.w	#$7FF,$C(a0)
		clr.w	$12(a0)
		addq.b	#2,$24(a0)
loc_237D6:
		bra	loc_236A8	
;-------------------------------------------------------------------------------
Screw_Nut_Mappings: 
		dc.w	loc_237E2-Screw_Nut_Mappings
		dc.w	loc_237F4-Screw_Nut_Mappings
		dc.w	loc_2380E-Screw_Nut_Mappings
		dc.w	loc_23828-Screw_Nut_Mappings
loc_237E2:
		dc.w	$2
		dc.l	$F40E0000,$FFE0,$F40E000C,$60000
loc_237F4:
		dc.w	$3
		dc.l	$F40A0003,$1FFE0,$F40E000C,$6FFF8
		dc.l	$F4020809,$8040018
loc_2380E:
		dc.w	$3
		dc.l	$F4060024,$12FFE0,$F40E002A,$15FFF0
		dc.l	$F4060018,$C0010
loc_23828:
		dc.w	$3
		dc.l	$F4020027,$13FFE0,$F40E0018,$CFFE8
		dc.l	$F40A082D,$8160008	
;=============================================================================== 
; Object 0x69 - Metropolis - Screew Nut
; [ End ]	
;===============================================================================	