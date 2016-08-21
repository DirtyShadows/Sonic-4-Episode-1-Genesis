;===============================================================================
; Object 0x95 - Sol Badnick - Hill Top
; [ Begin ]
;===============================================================================	
loc_332E8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_332F6(pc,d0),d1
		jmp	loc_332F6(pc,d1)
loc_332F6:
		dc.w	loc_33300-loc_332F6
		dc.w	loc_333C6-loc_332F6
		dc.w	loc_3340E-loc_332F6
		dc.w	loc_33426-loc_332F6
		dc.w	loc_334A2-loc_332F6
loc_33300:
		move.l	#Sol_Mappings,4(a0) 
		move.w	#0,2(a0)
		bsr	loc_3A8E6
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.b	#$B,$20(a0)
		move.b	#$C,$19(a0)
		move.w	#$FFC0,$10(a0)
		moveq	#0,d2
		lea	$37(a0),a2
		move.l	a2,a3
		addq.w	#1,a2
		moveq	#3,d1
loc_3333C:	
		bsr	loc_3A8B6
		bne.s	loc_33398
		addq.b	#1,(a3)
		move.w	a1,d5
		sub.w	#$B000,d5
		lsr.w	#6,d5
		and.w	#$7F,d5
		move.b	d5,(a2)+
		move.b	0(a0),0(a1)
		move.b	#6,$24(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		or.b	#4,1(a1)
		move.b	#4,$18(a1)
		move.b	#8,$19(a1)
		move.b	#3,$1A(a1)
		move.b	#$98,$20(a1)
		move.b	d2,$26(a1)
		add.b	#$40,d2
		move.l	a0,$3C(a1)
		dbra	d1,loc_3333C
loc_33398:
		moveq	#1,d0
		btst	#0,$22(a0)
		beq.s	loc_333A4
		neg.w	d0
loc_333A4:
		move.b	d0,$36(a0)
		move.b	$28(a0),$24(a0)
		addq.b	#2,$24(a0)
		move.w	#$FFC0,$10(a0)
		btst	#0,$22(a0)
		beq.s	loc_333C4
		neg.w	$10(a0)
loc_333C4:
		rts
loc_333C6:
		move.w	($FFFFB008).w,d0
		sub.w	8(a0),d0
		bcc.s	loc_333D2
		neg.w	d0
loc_333D2:
		cmp.w	#$A0,d0
		bcc.s	loc_333F6
		move.w	($FFFFB00C).w,d0
		sub.w	$C(a0),d0
		bcc.s	loc_333E4
		neg.w	d0
loc_333E4:
		cmp.w	#$50,d0
		bcc.s	loc_333F6
		tst.w	($FFFFFE08).w
		bne.s	loc_333F6
		move.b	#1,$1C(a0)
loc_333F6:
		bsr	loc_3A904
		lea	(Sol_Animate_Data),a1	
		bsr	loc_3A8BC
		and.b	#3,$1A(a0)
		bra	loc_3A8A4
loc_3340E:
		bsr	loc_3A904
		lea	(Sol_Animate_Data_01),a1 
		bsr	loc_3A8BC
		and.b	#3,$1A(a0)
		bra	loc_3A8A4
loc_33426:
		lea	(Sol_Animate_Data_01),a1 
		bsr	loc_3A8BC
		move.l	$3C(a0),a1
		cmp.b	#$95,0(a1)
		bne	loc_3A898
		cmp.b	#2,$1A(a1)
		bne.s	loc_33478
		cmp.b	#$40,$26(a0)
		bne.s	loc_33478
		addq.b	#2,$24(a0)
		move.b	#0,$1C(a0)
		subq.b	#1,$37(a1)
		bne.s	loc_33462
		addq.b	#2,$24(a1)
loc_33462:
		move.w	#$FE00,$10(a0)
		btst	#0,$22(a1)
		beq.s	loc_33474
		neg.w	$10(a0)
loc_33474:
		bra	loc_3A892
loc_33478:
		move.b	$26(a0),d0
		jsr	CalcSine	
		asr.w	#4,d1
		add.w	8(a1),d1
		move.w	d1,8(a0)
		asr.w	#4,d0
		add.w	$C(a1),d0
		move.w	d0,$C(a0)
		move.b	$36(a1),d0
		add.b	d0,$26(a0)
		bra	loc_3A892
loc_334A2:
		bsr	loc_3A904
		tst.b	1(a0)
		bpl	loc_3A898
		lea	(Sol_Animate_Data_01),a1 
		bsr	loc_3A8BC
		bra	loc_3A892
;-------------------------------------------------------------------------------
Sol_Animate_Data: 
		dc.w	loc_334C0-Sol_Animate_Data
		dc.w	loc_334C4-Sol_Animate_Data
loc_334C0:
		dc.b	$F,0,$FF,$0
loc_334C4:
		dc.b	$F,1,2,$FE,1,$0	
;------------------------------------------------------------------------------- 
Sol_Animate_Data_01: 
		dc.w	loc_334CC-Sol_Animate_Data_01
loc_334CC:
		dc.b	5,3,4,$FF	
;-------------------------------------------------------------------------------
Sol_Mappings: 
		dc.w	loc_334DA-Sol_Mappings
		dc.w	loc_334E4-Sol_Mappings
		dc.w	loc_334EE-Sol_Mappings
		dc.w	loc_334F8-Sol_Mappings
		dc.w	loc_33502-Sol_Mappings
loc_334DA:
		dc.w	$1
		dc.l	$F80503DE,$1EFFFF8
loc_334E4:
		dc.w	$1
		dc.l	$F80503DE,$1EFFFF8
loc_334EE:
		dc.w	$1
		dc.l	$F80503DE,$1EFFFF8
loc_334F8:
		dc.w	$1
		dc.l	$F80583AE,$81D7FFF8
loc_33502:
		dc.w	$1
		dc.l	$F8058BAE,$89D7FFF8	
;===============================================================================
; Object 0x95 - Sol Badnick - Hill Top
; [ End ]
;===============================================================================