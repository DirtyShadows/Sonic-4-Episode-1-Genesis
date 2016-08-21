;===============================================================================
; Object 0x53 -> Metropolis Boss - Robotnik Balls And Robotnik from Balls
; [ Begin ]
;===============================================================================
loc_2EE5E:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_2EE6C(pc,d0),d1
		jmp	loc_2EE6C(pc,d1)
loc_2EE6C:
		dc.w	loc_2EE76-loc_2EE6C
		dc.w	loc_2EEF8-loc_2EE6C
		dc.w	loc_2F082-loc_2EE6C
		dc.w	loc_2F0FA-loc_2EE6C
		dc.w	loc_2F1B6-loc_2EE6C
loc_2EE76:
		move.l	a0,a1
		moveq	#6,d3
		moveq	#0,d2
		bra.s	loc_2EE84
loc_2EE7E:	
		bsr	loc_2F474
		bne.s	loc_2EEE8
loc_2EE84:
		move.b	#$20,$19(a1)
		move.l	$34(a0),$34(a1)
		move.b	#$53,(a1)
		move.l	#Mz_Boss_Mappings,4(a1) 
		move.w	#$37C,2(a1)
		or.b	#4,1(a1)
		move.b	#3,$18(a1)
		addq.b	#2,$24(a1)
		move.b	#5,$1A(a1)
		move.b	loc_2EEEA(pc,d2),$28(a1)
		move.b	loc_2EEEA(pc,d2),$3B(a1)
		move.b	loc_2EEF1(pc,d2),$3A(a1)
		move.b	#$40,$29(a1)
		move.b	#$87,$20(a1)
		move.b	#2,$21(a1)
		move.b	#0,$3C(a1)
		addq.w	#1,d2
		dbra	d3,loc_2EE7E
loc_2EEE8:
		rts	
loc_2EEEA:
		dc.b	$24,$6C,$B4,$FC,$48,$90,$D8
loc_2EEF1:
		dc.b	0,1,1,0,1,1,$0	
loc_2EEF8:
		move.l	$34(a0),a1
		move.w	$C(a1),$2A(a0)
		sub.w	#4,$2A(a0)
		move.w	8(a1),$38(a0)
		tst.b	$38(a1)
		beq.s	loc_2EF74
		move.b	#0,$38(a1)
		add.b	#1,$2C(a1)
		addq.b	#2,$24(a0)
		move.b	#$3C,$32(a0)
		move.b	#2,$1C(a0)
		move.w	#$FC00,$12(a0)
		move.w	#$FF80,d1
		move.w	($FFFFB008).w,d0
		sub.w	8(a0),d0
		bpl.s	loc_2EF46
		neg.w	d1
loc_2EF46:
		cmp.w	#$2AF0,8(a0)
		bcc.s	loc_2EF52
		move.w	#$80,d1
loc_2EF52:
		cmp.w	#$2BB0,8(a0)
		bcs.s	loc_2EF5E
		move.w	#$FF80,d1
loc_2EF5E:
		bclr	#0,1(a0)
		tst.w	d1
		bmi.s	loc_2EF6E
		bset	#0,1(a0)
loc_2EF6E:
		move.w	d1,$10(a0)
		bra.s	loc_2EF82
loc_2EF74:
		cmp.b	#2,$21(a0)
		beq.s	loc_2EF82
		move.b	#0,$20(a1)
loc_2EF82:
		bsr	loc_2EF8E
		bsr	loc_2F038
		bra	loc_2F468
loc_2EF8E:
		move.b	$29(a0),d0
		jsr	CalcSine	
		move.w	d0,d3
		moveq	#0,d1
		move.b	$33(a1),d1
		muls.w	d1,d0
		move.w	d0,d5
		move.w	d0,d4
		move.b	$39(a1),d2
		tst.b	$3A(a1)
		beq.s	loc_2EFB4
		move.w	#$10,d2
loc_2EFB4:
		muls.w	d3,d2
		move.w	$38(a0),d6
		move.b	$28(a0),d0
		jsr	CalcSine	
		muls.w	d0,d5
		swap.w	d5
		add.w	d6,d5
		move.w	d5,8(a0)
		muls.w	d1,d4
		swap.w	d4
		move.w	d4,$30(a0)
		move.w	$2A(a0),d6
		move.b	$3B(a0),d0
		tst.b	$3A(a1)
		beq.s	loc_2EFE8
		move.b	$3C(a0),d0
loc_2EFE8:
		jsr	CalcSine	
		muls.w	d0,d2
		swap.w	d2
		add.w	d6,d2
		move.w	d2,$C(a0)
		addq.b	#4,$28(a0)
		tst.b	$3A(a1)
		bne.s	loc_2F008
		addq.b	#8,$3B(a0)
		rts
loc_2F008:
		cmp.b	#$FF,$3A(a1)
		beq.s	loc_2F02A
		cmp.b	#$80,$3A(a1)
		bne.s	loc_2F022
		subq.b	#2,$3C(a0)
		bpl.s	loc_2F036
		clr.b	$3C(a0)
loc_2F022:
		move.b	#0,$3A(a1)
		rts
loc_2F02A:
		cmp.b	#$40,$3C(a0)
		bcc.s	loc_2F036
		addq.b	#2,$3C(a0)
loc_2F036:
		rts
loc_2F038:
		move.w	$30(a0),d0
		bmi.s	loc_2F060
		cmp.w	#$C,d0
		blt.s	loc_2F052
		move.b	#3,$1A(a0)
		move.b	#1,$18(a0)
		rts
loc_2F052:
		move.b	#4,$1A(a0)
		move.b	#2,$18(a0)
		rts
loc_2F060:
		cmp.w	#$FFF4,d0
		blt.s	loc_2F074
		move.b	#4,$1A(a0)
		move.b	#6,$18(a0)
		rts
loc_2F074:
		move.b	#5,$1A(a0)
		move.b	#7,$18(a0)
		rts
loc_2F082:
		tst.b	$32(a0)
		bmi.s	loc_2F094
		subq.b	#1,$32(a0)
		bpl.s	loc_2F094
		move.b	#$DA,$20(a0)
loc_2F094:
		bsr	loc_2F49E
		sub.w	#$20,$12(a0)
		cmp.w	#$180,$12(a0)
		blt.s	loc_2F0AC
		move.w	#$180,$12(a0)
loc_2F0AC:
		cmp.w	#$4AC,$C(a0)
		bcs.s	loc_2F0CE
		move.w	#$4AC,$C(a0)
		move.w	#$4AC,$2E(a0)
		move.b	#1,$2C(a0)
		addq.b	#2,$24(a0)
		bsr	loc_2F16A
loc_2F0CE:
		bsr	loc_2F0E0
		lea	(Mz_Boss_Animate_Data),a1 
		bsr	loc_2F480
		bra	loc_2F468
loc_2F0E0:
		cmp.b	#$FE,$21(a0)
		bgt.s	loc_2F0F8
		move.b	#$14,$1A(a0)
		move.b	#6,$1C(a0)
		addq.b	#2,$24(a0)
loc_2F0F8:
		rts
loc_2F0FA:
		tst.b	$32(a0)
		bmi.s	loc_2F10C
		subq.b	#1,$32(a0)
		bpl.s	loc_2F10C
		move.b	#$DA,$20(a0)
loc_2F10C:
		bsr	loc_2F184
		cmp.b	#$B,$1A(a0)
		bne.s	loc_2F0CE
		move.b	$2C(a0),d0
		jsr	CalcSine	
		neg.w	d0
		asr.w	#2,d0
		add.w	$2E(a0),d0
		cmp.w	#$4AC,d0
		bcc.s	loc_2F156
		move.w	d0,$C(a0)
		addq.b	#1,$2C(a0)
		btst	#0,$2C(a0)
		beq	loc_2F468
		moveq	#$FFFFFFFF,d0
		btst	#0,1(a0)
		beq.s	loc_2F14E
		neg.w	d0
loc_2F14E:
		add.w	d0,8(a0)
		bra	loc_2F468
loc_2F156:
		move.w	#$4AC,$C(a0)
		bsr	loc_2F16A
		move.b	#1,$2C(a0)
		bra	loc_2F468
loc_2F16A:
		move.w	($FFFFB008).w,d0
		sub.w	8(a0),d0
		bpl.s	loc_2F17C
		bclr	#0,1(a0)
		rts
loc_2F17C:
		bset	#0,1(a0)
		rts
loc_2F184:
		cmp.b	#4,($FFFFB024).w
		beq.s	loc_2F194
		cmp.b	#4,($FFFFB064).w
		bne.s	loc_2F1A0
loc_2F194:
		move.b	#$14,$1A(a0)
		move.b	#6,$1C(a0)
loc_2F1A0:
		cmp.b	#$FE,$21(a0)
		bgt.s	loc_2F1B4
		move.b	#$14,$1A(a0)
		move.b	#6,$1C(a0)
loc_2F1B4:
		rts
loc_2F1B6:
		move.b	#$C4,d0
		bsr	loc_2F47A
		move.l	$34(a0),a1
		sub.b	#1,$2C(a1)
		bra	loc_2F46E
loc_2F1CC:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_2F1DA(pc,d0),d0
		jmp	loc_2F1DA(pc,d0)
loc_2F1DA:
		dc.w	loc_2F1DE-loc_2F1DA
		dc.w	loc_2F24A-loc_2F1DA
loc_2F1DE:
		move.l	#Mz_Boss_Mappings,4(a0) 
		move.w	#$37C,2(a0)
		or.b	#4,1(a0)
		move.b	#5,$18(a0)
		move.b	#$12,$1A(a0)
		addq.b	#2,$25(a0)
		move.l	$34(a0),a1
		move.b	#$50,$19(a0)
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		add.w	#7,$C(a0)
		sub.w	#4,8(a0)
		move.w	#$FC00,d0
		btst	#0,1(a1)
		beq.s	loc_2F238
		neg.w	d0
		add.w	#8,8(a0)
loc_2F238:
		move.w	d0,$10(a0)
		move.b	#$99,$20(a0)
		move.b	#$EA,d0
		bsr	loc_2F47A
loc_2F24A:
		bsr	loc_2F4A4
		cmp.w	#$2AB0,8(a0)
		bcs	loc_2F46E
		cmp.w	#$2BF0,8(a0)
		bcc	loc_2F46E
		bra	loc_2F468
loc_2F266:
		move.l	$34(a0),a1
		cmp.b	#$54,(a1)
		bne	loc_2F46E
		move.w	8(a1),8(a0)
		move.w	$C(a1),$C(a0)
		bclr	#0,1(a0)
		btst	#0,1(a1)
		beq	loc_2F468
		bset	#0,1(a0)
		bra	loc_2F468
;-------------------------------------------------------------------------------
Mz_Boss_Animate_Data: 
		dc.w	loc_2F2A8-Mz_Boss_Animate_Data
		dc.w	loc_2F2AB-Mz_Boss_Animate_Data
		dc.w	loc_2F2AF-Mz_Boss_Animate_Data
		dc.w	loc_2F2C4-Mz_Boss_Animate_Data
		dc.w	loc_2F2C8-Mz_Boss_Animate_Data
		dc.w	loc_2F2D3-Mz_Boss_Animate_Data
		dc.w	loc_2F2DE-Mz_Boss_Animate_Data
		dc.w	loc_2F2E1-Mz_Boss_Animate_Data
loc_2F2A8:
		dc.b	$F,2,$FF
loc_2F2AB:
		dc.b	1,0,1,$FF
loc_2F2AF:
		dc.b	3,5,5,5,5,5,5,5,5,6,7,6,7,6,7,$8
		dc.b	9,$A,$B,$FE,$1
loc_2F2C4:
		dc.b	7,$C,$D,$FF
loc_2F2C8:
		dc.b	7,$E,$F,$E,$F,$E,$F,$E,$F,$FD,$3
loc_2F2D3:
		dc.b	7,$10,$10,$10,$10,$10,$10,$10,$10,$FD,$3
loc_2F2DE:
		dc.b	1,$14,$FC
loc_2F2E1:
		dc.b	7,$11,$FF	
;-------------------------------------------------------------------------------
Mz_Boss_Mappings: 
		dc.w	loc_2F30E-Mz_Boss_Mappings
		dc.w	loc_2F318-Mz_Boss_Mappings
		dc.w	loc_2F322-Mz_Boss_Mappings
		dc.w	loc_2F34C-Mz_Boss_Mappings
		dc.w	loc_2F356-Mz_Boss_Mappings
		dc.w	loc_2F360-Mz_Boss_Mappings
		dc.w	loc_2F36A-Mz_Boss_Mappings
		dc.w	loc_2F374-Mz_Boss_Mappings
		dc.w	loc_2F37E-Mz_Boss_Mappings
		dc.w	loc_2F388-Mz_Boss_Mappings
		dc.w	loc_2F392-Mz_Boss_Mappings
		dc.w	loc_2F39C-Mz_Boss_Mappings
		dc.w	loc_2F3BE-Mz_Boss_Mappings
		dc.w	loc_2F3D0-Mz_Boss_Mappings
		dc.w	loc_2F3E2-Mz_Boss_Mappings
		dc.w	loc_2F3F4-Mz_Boss_Mappings
		dc.w	loc_2F406-Mz_Boss_Mappings
		dc.w	loc_2F418-Mz_Boss_Mappings
		dc.w	loc_2F42A-Mz_Boss_Mappings
		dc.w	loc_2F43C-Mz_Boss_Mappings
		dc.w	loc_2F446-Mz_Boss_Mappings
loc_2F30E:
		dc.w	$1
		dc.l	$501E4,$F2001C
loc_2F318:
		dc.w	$1
		dc.l	$501E8,$F4001C
loc_2F322:
		dc.w	$5
		dc.l	$D80501A4,$D20002,$E80501A8,$D40010
		dc.l	$F80F218C,$20C6FFF0,$F807219C,$20CE0010
		dc.l	$F8022003,$2001FFE8
loc_2F34C:
		dc.w	$1
		dc.l	$F40A200E,$2007FFF4
loc_2F356:
		dc.w	$1
		dc.l	$F40A206F,$2037FFF4
loc_2F360:
		dc.w	$1
		dc.l	$F8052078,$203CFFF8
loc_2F36A:
		dc.w	$1
		dc.l	$F4062017,$200BFFF8
loc_2F374:
		dc.w	$1
		dc.l	$F809201D,$200EFFF4
loc_2F37E:
		dc.w	$1
		dc.l	$F4062023,$2011FFF8
loc_2F388:
		dc.w	$1
		dc.l	$F40A0029,$14FFF4
loc_2F392:
		dc.w	$1
		dc.l	$F00F0032,$19FFF0
loc_2F39C:
		dc.w	$4
		dc.l	$E80A0042,$21FFE8,$E80A004B,$250000
		dc.l	$A0054,$2AFFE8,$A005D,$2E0000
loc_2F3BE:
		dc.w	$2
		dc.l	$E80D01B4,$DAFFF0,$E80501AC,$D6FFE0
loc_2F3D0:
		dc.w	$2
		dc.l	$E80D01BC,$DEFFF0,$E80501AC,$D6FFE0
loc_2F3E2:
		dc.w	$2
		dc.l	$E80D01C4,$E2FFF0,$E80501B0,$D8FFE0
loc_2F3F4:
		dc.w	$2
		dc.l	$E80D01CC,$E6FFF0,$E80501B0,$D8FFE0
loc_2F406:
		dc.w	$2
		dc.l	$E80D01D4,$EAFFF0,$E80501B0,$D8FFE0
loc_2F418:
		dc.w	$2
		dc.l	$E80D01DC,$EEFFF0,$E80501B0,$D8FFE0
loc_2F42A:
		dc.w	$2
		dc.l	$F80D2006,$2003FFE0,$F80D2806,$28030000
loc_2F43C:
		dc.w	$1
		dc.l	$F8022000,$2000FFE0
loc_2F446:
		dc.w	$4
		dc.l	$E80A0066,$33FFE8,$E80A0866,$8330000
		dc.l	$A1066,$1033FFE8,$A1866,$18330000	
;===============================================================================
; Object 0x53 -> Metropolis Boss - Robotnik Balls And Robotnik from Balls
; [ End ]
;===============================================================================
