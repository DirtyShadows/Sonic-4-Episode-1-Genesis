;===============================================================================
; Object 0xD8 - Green Bumper - Disappears after some hits - Casino Night
; [ Begin ]
;=============================================================================== 
loc_280CC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_280DA(pc,d0),d1
		jmp	loc_280DA(pc,d1)
loc_280DA:
		dc.w	loc_280E0-loc_280DA
		dc.w	loc_2811C-loc_280DA
		dc.w	loc_282A4-loc_280DA
loc_280E0:
		addq.b	#2,$24(a0)
		move.l	#Green_Bumper_Mappings,4(a0) 
		move.w	#$43E6,2(a0)
		bsr	loc_28344
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#1,$18(a0)
		move.b	#$D7,$20(a0)
		move.b	$28(a0),d0
		rol.b	#2,d0
		and.b	#3,d0
		move.b	d0,$1C(a0)
loc_2811C:
		move.b	$21(a0),d0
		bne	loc_2812A
		tst.w	$30(a0)
		beq.s	loc_28160
loc_2812A:
		lea	$30(a0),a4
		tst.b	(a4)
		beq.s	loc_28136
		subq.b	#1,(a4)
		bra.s	loc_28144
loc_28136:
		lea	($FFFFB000).w,a1
		bclr	#0,$21(a0)
		beq.s	loc_28144
		bsr.s	loc_2816E
loc_28144:
		addq.w	#1,a4
		tst.b	(a4)
		beq.s	loc_2814E
		subq.b	#1,(a4)
		bra.s	loc_2815C
loc_2814E:
		lea	($FFFFB040).w,a1
		bclr	#1,$21(a0)
		beq.s	loc_2815C
		bsr.s	loc_2816E
loc_2815C:
		clr.b	$21(a0)
loc_28160:
		lea	(Green_Bumper_Animate_Data),a1 
		bsr	loc_2833E
		bra	loc_28338
loc_2816E:
		move.b	$1A(a0),d0
		subq.b	#3,d0
		beq.s	loc_2817C
		bcc.s	loc_2819A
		addq.b	#3,d0
		bne.s	loc_2819A
loc_2817C:
		move.b	#3,$1C(a0)
		move.w	#$F900,$12(a1)
		move.w	$C(a0),d2
		sub.w	$C(a1),d2
		bpl.s	loc_28196
		neg.w	$12(a1)
loc_28196:
		bra	loc_28226
loc_2819A:
		subq.b	#1,d0
		bne.s	loc_2820C
		move.b	#4,$1C(a0)
		move.w	#$20,d3
		btst	#0,$22(a0)
		bne.s	loc_281B4
		move.w	#$60,d3
loc_281B4:
		move.w	$10(a1),d1
		move.w	$12(a1),d2
		jsr	CalcAngle	
		sub.w	d3,d0
		move.w	d0,d1
		bpl.s	loc_281CA
		neg.w	d1
loc_281CA:
		neg.w	d0
		add.w	d3,d0
		cmp.b	#$40,d1
		bcc.s	loc_281DE
		cmp.b	#$38,d1
		bcs.s	loc_281F0
		move.w	d3,d0
		bra.s	loc_281F0
loc_281DE:
		sub.w	#$80,d1
		neg.w	d1
		cmp.b	#$38,d1
		bcs.s	loc_281F0
		move.w	d3,d0
		add.w	#$80,d0
loc_281F0:
		jsr	CalcSine	
		muls.w	#$F900,d1
		asr.l	#8,d1
		move.w	d1,$10(a1)
		muls.w	#$F900,d0
		asr.l	#8,d0
		move.w	d0,$12(a1)
		bra.s	loc_28226
loc_2820C:
		move.b	#5,$1C(a0)
		move.w	#$F900,$10(a1)
		move.w	8(a0),d2
		sub.w	8(a1),d2
		bpl.s	loc_28226
		neg.w	$10(a1)
loc_28226:
		bset	#1,$22(a1)
		bclr	#4,$22(a1)
		bclr	#5,$22(a1)
		clr.b	$3C(a1)
		move.w	#$D8,d0
		jsr	Play_Sfx	
		move.w	a1,a3
		moveq	#4,d3
		moveq	#1,d0
		sub.w	#$2000,2(a0)
		bcc.s	loc_2827C
		add.w	#$2000,2(a0)
		move.b	#4,$24(a0)
		lea	($FFFFE700).w,a1
		move.b	$28(a0),d1
		and.w	#$3F,d1
		lea	0(a1,d1),a1
		addq.b	#1,(a1)
		cmp.b	#3,(a1)
		bcs.s	loc_2827C
		moveq	#2,d3
		moveq	#$32,d0
loc_2827C:
		jsr	addPoints_1	
		bsr	loc_28332
		bne.s	loc_2829E
		move.b	#$29,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	d3,$1A(a1)
loc_2829E:
		move.b	#4,(a4)
		rts
loc_282A4:
		lea	(Green_Bumper_Animate_Data),a1 
		bsr	loc_2833E
		cmp.b	#3,$1C(a0)
		bcs	loc_2832C
		bra	loc_28338	
;-------------------------------------------------------------------------------
Green_Bumper_Animate_Data: 
		dc.w	loc_282C8-Green_Bumper_Animate_Data
		dc.w	loc_282CB-Green_Bumper_Animate_Data
		dc.w	loc_282CE-Green_Bumper_Animate_Data
		dc.w	loc_282D1-Green_Bumper_Animate_Data
		dc.w	loc_282D7-Green_Bumper_Animate_Data
		dc.w	loc_282DD-Green_Bumper_Animate_Data
loc_282C8:
		dc.b	$F,0,$FF
loc_282CB:
		dc.b	$F,1,$FF
loc_282CE:
		dc.b	$F,2,$FF
loc_282D1:
		dc.b	3,3,0,3,$FD,$0
loc_282D7:
		dc.b	3,4,1,4,$FD,$1
loc_282DD:
		dc.b	3,5,2,5,$FD,2,$0	
;-------------------------------------------------------------------------------	
Green_Bumper_Mappings: 
		dc.w	loc_282F0-Green_Bumper_Mappings
		dc.w	loc_282FA-Green_Bumper_Mappings
		dc.w	loc_28304-Green_Bumper_Mappings
		dc.w	loc_2830E-Green_Bumper_Mappings
		dc.w	loc_28318-Green_Bumper_Mappings
		dc.w	loc_28322-Green_Bumper_Mappings
loc_282F0:
		dc.w	$1
		dc.l	$F80D0000,$FFF0
loc_282FA:
		dc.w	$1
		dc.l	$F00B0008,$4FFF4
loc_28304:
		dc.w	$1
		dc.l	$F0070014,$AFFF8
loc_2830E:
		dc.w	$1
		dc.l	$FA0D0000,$FFF0
loc_28318:
		dc.w	$1
		dc.l	$F20B0008,$4FFF2
loc_28322:
		dc.w	$1
		dc.l	$F0070014,$AFFF6	
;===============================================================================
; Object 0xD8 - Green Bumper - Disappears after some hits - Casino Night
; [ End ]
;===============================================================================