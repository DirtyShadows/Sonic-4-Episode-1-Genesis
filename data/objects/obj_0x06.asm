;===============================================================================
; Object 0x06 - Green Hill / Metropolis - Spiral Loopings Attributes,...	
; [ Begin ]
;===============================================================================
loc_1D310:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1D340(pc,d0),d1
		jsr	loc_1D340(pc,d1)
		tst.w	($FFFFFFD8).w
		beq.s	loc_1D326
		rts
loc_1D326:
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_1D33A
		rts
loc_1D33A:
		jmp	deleteObject	
loc_1D340:
		dc.w	loc_1D346-loc_1D340
		dc.w	loc_1D35E-loc_1D340
		dc.w	loc_1D654-loc_1D340
loc_1D346:
		addq.b	#2,$24(a0)
		move.b	#$D0,$19(a0)
		tst.b	$28(a0)
		bpl.s	loc_1D35E
		addq.b	#2,$24(a0)
		bra	loc_1D654
loc_1D35E:
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		bsr.s	loc_1D36C
		lea	($FFFFB040).w,a1
		addq.b	#1,d6
loc_1D36C:
		btst	d6,$22(a0)
		bne	loc_1D40C
		btst	#1,$22(a1)
		bne	loc_1D40A
		btst	#3,$22(a1)
		bne.s	loc_1D3CC
		move.w	8(a1),d0
		sub.w	8(a0),d0
		tst.w	$10(a1)
		bmi.s	loc_1D3A2
		cmp.w	#$FF40,d0
		bgt.s	loc_1D40A
		cmp.w	#$FF30,d0
		blt.s	loc_1D40A
		bra.s	loc_1D3AE
loc_1D3A2:
		cmp.w	#$C0,d0
		blt.s	loc_1D40A
		cmp.w	#$D0,d0
		bgt.s	loc_1D40A
loc_1D3AE:
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		sub.w	#$10,d1
		cmp.w	#$30,d1
		bcc.s	loc_1D40A
		tst.b	$2A(a1)
		bne.s	loc_1D40A
		bsr	loc_15E4C
		rts
loc_1D3CC:
		move.w	8(a1),d0
		sub.w	8(a0),d0
		tst.w	$10(a1)
		bmi.s	loc_1D3E8
		cmp.w	#$FF50,d0
		bgt.s	loc_1D40A
		cmp.w	#$FF40,d0
		blt.s	loc_1D40A
		bra.s	loc_1D3F4
loc_1D3E8:
		cmp.w	#$B0,d0
		blt.s	loc_1D40A
		cmp.w	#$C0,d0
		bgt.s	loc_1D40A
loc_1D3F4:
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		sub.w	#$10,d1
		cmp.w	#$30,d1
		bcc.s	loc_1D40A
		bsr	loc_15E4C
loc_1D40A:
		rts
loc_1D40C:
		move.w	$14(a1),d0
		bpl.s	loc_1D414
		neg.w	d0
loc_1D414:
		cmp.w	#$600,d0
		bcs.s	loc_1D436
		btst	#1,$22(a1)
		bne.s	loc_1D436
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	#$D0,d0
		bmi.s	loc_1D436
		cmp.w	#$1A0,d0
		bcs.s	loc_1D44E
loc_1D436:
		bclr	#3,$22(a1)
		bclr	d6,$22(a0)
		move.b	#0,$2C(a1)
		move.b	#4,$2D(a1)
		rts
loc_1D44E:
		btst	#3,$22(a1)
		beq.s	loc_1D40A
		move.b	Spiral_Data_2(pc,d0),d1 
		ext.w	d1
		move.w	$C(a0),d2
		add.w	d1,d2
		moveq	#0,d1
		move.b	$16(a1),d1
		sub.w	#$13,d1
		sub.w	d1,d2
		move.w	d2,$C(a1)
		lsr.w	#3,d0
		and.w	#$3F,d0
		move.b	Spiral_Data(pc,d0),$27(a1) 
		rts
Spiral_Data: 
		dc.b	0,0,1,1,$16,$16,$16,$16,$2C,$2C,$2C,$2C,$42,$42,$42,$42
		dc.b	$58,$58,$58,$58,$6E,$6E,$6E,$6E,$84,$84,$84,$84,$9A,$9A,$9A,$9A
		dc.b	$B0,$B0,$B0,$B0,$C6,$C6,$C6,$C6,$DC,$DC,$DC,$DC,$F2,$F2,$F2,$F2
		dc.b	1,1,0,$0
Spiral_Data_2: 
		dc.b	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
		dc.b	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$1F,$1F
		dc.b	$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1E,$1E,$1E
		dc.b	$1E,$1E,$1E,$1E,$1E,$1E,$1D,$1D,$1D,$1D,$1D,$1C,$1C,$1C,$1C,$1B
		dc.b	$1B,$1B,$1B,$1A,$1A,$1A,$19,$19,$19,$18,$18,$18,$17,$17,$16,$16
		dc.b	$15,$15,$14,$14,$13,$12,$12,$11,$10,$10,$F,$E,$E,$D,$C,$C
		dc.b	$B,$A,$A,9,8,8,7,6,6,5,4,4,3,2,2,$1
		dc.b	0,$FF,$FE,$FE,$FD,$FC,$FC,$FB,$FA,$F9,$F9,$F8,$F7,$F7,$F6,$F6
		dc.b	$F5,$F5,$F4,$F4,$F3,$F2,$F2,$F1,$F1,$F0,$F0,$EF,$EF,$EE,$EE,$ED
		dc.b	$ED,$ED,$EC,$EB,$EB,$EA,$EA,$E9,$E9,$E8,$E8,$E7,$E7,$E6,$E6,$E5
		dc.b	$E5,$E4,$E4,$E4,$E3,$E3,$E2,$E2,$E2,$E1,$E1,$E1,$E0,$E0,$E0,$DF
		dc.b	$DF,$DF,$DF,$DE,$DE,$DE,$DD,$DD,$DD,$DD,$DD,$DD,$DD,$DD,$DC,$DC
		dc.b	$DC,$DC,$DC,$DC,$DC,$DC,$DC,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB
		dc.b	$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB
		dc.b	$DB,$DB,$DB,$DB,$DC,$DC,$DC,$DC,$DC,$DC,$DC,$DD,$DD,$DD,$DD,$DD
		dc.b	$DD,$DD,$DD,$DE,$DE,$DE,$DF,$DF,$DF,$DF,$E0,$E0,$E0,$E1,$E1,$E1
		dc.b	$E2,$E2,$E2,$E3,$E3,$E4,$E4,$E4,$E5,$E5,$E6,$E6,$E7,$E7,$E8,$E8
		dc.b	$E9,$E9,$EA,$EA,$EB,$EB,$EC,$ED,$ED,$EE,$EE,$EF,$F0,$F0,$F1,$F2
		dc.b	$F2,$F3,$F4,$F5,$F5,$F6,$F7,$F8,$F9,$F9,$FA,$FB,$FC,$FD,$FE,$FF
		dc.b	0,1,2,3,4,5,6,7,8,8,9,$A,$A,$B,$C,$D
		dc.b	$D,$E,$E,$F,$F,$10,$10,$11,$11,$12,$12,$13,$13,$14,$14,$15
		dc.b	$15,$16,$16,$17,$17,$18,$18,$18,$19,$19,$19,$19,$1A,$1A,$1A,$1A
		dc.b	$1B,$1B,$1B,$1B,$1C,$1C,$1C,$1C,$1C,$1C,$1D,$1D,$1D,$1D,$1D,$1D
		dc.b	$1D,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F
		dc.b	$1F,$1F,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
		dc.b	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20	
loc_1D654:
		lea	($FFFFB000).w,a1
		lea	($FFFFF7B2).w,a2
		moveq	#3,d6
		bsr.s	loc_1D66A
		lea	($FFFFB040).w,a1
		lea	($FFFFF7B3).w,a2
		addq.b	#1,d6
loc_1D66A:
		btst	d6,$22(a0)
		bne	loc_1D6D8
		move.w	8(a1),d0
		sub.w	8(a0),d0
		cmp.w	#$FF40,d0
		blt.s	loc_1D6D6
		cmp.w	#$C0,d0
		bge.s	loc_1D6D6
		move.w	$C(a0),d0
		add.w	#$3C,d0
		move.w	$C(a1),d2
		move.b	$16(a1),d1
		ext.w	d1
		add.w	d2,d1
		addq.w	#4,d1
		sub.w	d1,d0
		bhi.s	loc_1D6D6
		cmp.w	#$FFF0,d0
		bcs.s	loc_1D6D6
		cmp.b	#6,$24(a1)
		bcc.s	loc_1D6D6
		add.w	d0,d2
		addq.w	#3,d2
		move.w	d2,$C(a1)
		move.b	#1,$29(a1)
		bsr	loc_15E4C
		move.w	#1,$1C(a1)
		move.b	#0,(a2)
		tst.w	$14(a1)
		bne.s	loc_1D6D6
		move.w	#1,$14(a1)
loc_1D6D6:
		rts
loc_1D6D8:
		btst	#1,$22(a1)
		bne.s	loc_1D712
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	#$C0,d0
		bmi.s	loc_1D6F4
		cmp.w	#$180,d0
		bcs.s	loc_1D72C
loc_1D6F4:
		bclr	#3,$22(a1)
		bclr	d6,$22(a0)
		move.b	#0,$2C(a1)
		move.b	#4,$2D(a1)
		bset	#1,$22(a1)
		rts
loc_1D712:
		move.b	(a2),d0
		add.b	#$20,d0
		cmp.b	#$40,d0
		bcc.s	loc_1D724
		asr.w	$12(a1)
		bra.s	loc_1D6F4
loc_1D724:
		move.w	#0,$12(a1)
		bra.s	loc_1D6F4
loc_1D72C:
		btst	#3,$22(a1)
		beq.s	loc_1D6D6
		move.b	(a2),d0
		bsr	J_CalcSine	
		muls.w	#$2800,d1
		swap.w	d1
		move.w	$C(a0),d2
		add.w	d1,d2
		moveq	#0,d1
		move.b	$16(a1),d1
		sub.w	#$13,d1
		sub.w	d1,d2
		move.w	d2,$C(a1)
		move.b	(a2),d0
		move.b	d0,$27(a1)
		addq.b	#4,(a2)
		tst.w	$14(a1)
		bne.s	loc_1D76A
		move.w	#1,$14(a1)
loc_1D76A:
		rts	
;===============================================================================
; Object 0x06 - Green Hill / Metropolis - Spiral Loopings Attributes,...	
; [ End ]
;===============================================================================