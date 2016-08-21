;===============================================================================
; Object 0x
; [ Begin ]
;===============================================================================	
loc_1FF14:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1FF26(pc,d0),d1
		jsr	loc_1FF26(pc,d1)
		bra	loc_20AEC
loc_1FF26:
		dc.w	loc_1FF2C-loc_1FF26
		dc.w	loc_1FFA2-loc_1FF26
		dc.w	loc_20096-loc_1FF26
loc_1FF2C:
		addq.b	#2,$24(a0)
		move.l	#Spring_Push_Boost_Mappings,4(a0) 
		move.w	#$43C5,2(a0)
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		move.b	$28(a0),d0
		lsr.w	#3,d0
		and.w	#$E,d0
		move.w	loc_1FF62(pc,d0),d0
		jmp	loc_1FF62(pc,d0)
loc_1FF62:
		dc.w	loc_1FF8A-loc_1FF62
		dc.w	loc_1FF66-loc_1FF62
loc_1FF66:
		move.b	#4,$24(a0)
		move.b	#1,$1C(a0)
		move.b	#$A,$1A(a0)
		move.w	#$43C5,2(a0)
		move.b	#$14,$19(a0)
		move.w	8(a0),$34(a0)
loc_1FF8A:
		move.b	$28(a0),d0
		and.w	#2,d0
		move.w	loc_1FF9E(pc,d0),$30(a0)
		bsr	loc_20AF2
		rts 
loc_1FF9E:
		dc.w	$F000,$F600
loc_1FFA2:
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_1FFB8
		tst.b	$32(a0)
		beq.s	loc_1FFC4
		subq.b	#1,$32(a0)
		bra.s	loc_1FFC4
loc_1FFB8:
		cmp.b	#9,$32(a0)
		beq.s	loc_1FFE2
		addq.b	#1,$32(a0)
loc_1FFC4:
		moveq	#0,d3
		move.b	$32(a0),d3
		move.b	d3,$1A(a0)
		add.w	d3,d3
		move.w	#$1B,d1
		move.w	#$14,d2
		move.w	8(a0),d4
		bsr	loc_20B04
		rts
loc_1FFE2:
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		bsr.s	loc_1FFF0
		lea	($FFFFB040).w,a1
		moveq	#4,d6
loc_1FFF0:
		bclr	d6,$22(a0)
		beq	loc_20094
		move.w	$30(a0),$12(a1)
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#$10,$1C(a1)
		move.b	#2,$24(a1)
		move.b	$28(a0),d0
		bpl.s	loc_20022
		move.w	#0,$10(a1)
loc_20022:
		btst	#0,d0
		beq.s	loc_20062
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#0,$2C(a1)
		move.b	#4,$2D(a1)
		btst	#1,d0
		bne.s	loc_20052
		move.b	#1,$2C(a1)
loc_20052:
		btst	#0,$22(a1)
		beq.s	loc_20062
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_20062:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_20078
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_20078:
		cmp.b	#8,d0
		bne.s	loc_2008A
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_2008A:
		move.w	#$CC,d0
		jmp	Play_Sfx	
loc_20094:
		rts
loc_20096:
		move.b	#0,$36(a0)
		move.w	#$1F,d1
		move.w	#$C,d2
		move.w	#$D,d3
		move.w	8(a0),d4
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_20AFE
		cmp.w	#1,d4
		bne.s	loc_200DC
		move.b	$22(a0),d1
		move.w	8(a0),d2
		sub.w	8(a1),d2
		bcs.s	loc_200D2
		eor.b	#1,d1
loc_200D2:
		and.b	#1,d1
		bne.s	loc_200DC
		bsr	loc_20158
loc_200DC:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_20AFE
		cmp.w	#1,d4
		bne.s	loc_2010A
		move.b	$22(a0),d1
		move.w	8(a0),d2
		sub.w	8(a1),d2
		bcs.s	loc_20102
		eor.b	#1,d1
loc_20102:
		and.b	#1,d1
		bne.s	loc_2010A
		bsr.s	loc_20158
loc_2010A:
		tst.b	$36(a0)
		bne.s	loc_20156
		move.w	$34(a0),d0
		cmp.w	8(a0),d0
		beq.s	loc_20156
		bcc.s	loc_20138
		subq.b	#4,$1A(a0)
		subq.w	#4,8(a0)
		cmp.w	8(a0),d0
		bcs.s	loc_20152
		move.b	#$A,$1A(a0)
		move.w	$34(a0),8(a0)
		bra.s	loc_20152
loc_20138:
		subq.b	#4,$1A(a0)
		addq.w	#4,8(a0)
		cmp.w	8(a0),d0
		bcc.s	loc_20152
		move.b	#$A,$1A(a0)
		move.w	$34(a0),8(a0)
loc_20152:
		bsr	loc_201EC
loc_20156:
		rts
loc_20158:
		btst	#0,$22(a0)
		beq.s	loc_20194
		btst	#0,$22(a1)
		bne	loc_201EA
		tst.w	d0
		bne	loc_2017A
		tst.w	$14(a1)
		beq.s	loc_201EA
		bpl.s	loc_201E4
		bra.s	loc_201EA
loc_2017A:
		move.w	$34(a0),d0
		add.w	#$12,d0
		cmp.w	8(a0),d0
		beq.s	loc_201E4
		addq.w	#1,8(a0)
		moveq	#1,d0
		move.w	#$40,d1
		bra.s	loc_201C2
loc_20194:
		btst	#0,$22(a1)
		beq.s	loc_201EA
		tst.w	d0
		bne	loc_201AA
		tst.w	$14(a1)
		bmi.s	loc_201E4
		bra.s	loc_201EA
loc_201AA:
		move.w	$34(a0),d0
		sub.w	#$12,d0
		cmp.w	8(a0),d0
		beq.s	loc_201E4
		subq.w	#1,8(a0)
		moveq	#$FFFFFFFF,d0
		move.w	#$FFC0,d1
loc_201C2:
		add.w	d0,8(a1)
		move.w	d1,$14(a1)
		move.w	#0,$10(a1)
		move.w	$34(a0),d0
		sub.w	8(a0),d0
		bcc.s	loc_201DC
		neg.w	d0
loc_201DC:
		add.w	#$A,d0
		move.b	d0,$1A(a0)
loc_201E4:
		move.b	#1,$36(a0)
loc_201EA:
		rts
loc_201EC:
		move.b	$22(a0),d0
		and.b	#$60,d0
		beq	loc_202EC
		lea	($FFFFB000).w,a1
		moveq	#5,d6
		bsr.s	loc_20206
		lea	($FFFFB040).w,a1
		moveq	#6,d6
loc_20206:
		bclr	d6,$22(a0)
		beq	loc_202EC
		move.w	$34(a0),d0
		sub.w	8(a0),d0
		bcc.s	loc_2021A
		neg.w	d0
loc_2021A:
		add.w	#$A,d0
		lsl.w	#7,d0
		neg.w	d0
		move.w	d0,$10(a1)
		subq.w	#4,8(a1)
		bset	#0,$22(a1)
		btst	#0,$22(a0)
		bne.s	loc_20248
		bclr	#0,$22(a1)
		add.w	#8,8(a1)
		neg.w	$10(a1)
loc_20248:
		move.w	#$F,$2E(a1)
		move.w	$10(a1),$14(a1)
		btst	#2,$22(a1)
		bne.s	loc_20262
		move.b	#0,$1C(a1)
loc_20262:
		move.b	$28(a0),d0
		bpl.s	loc_2026E
		move.w	#0,$12(a1)
loc_2026E:
		btst	#0,d0
		beq.s	loc_202AE
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#1,$2C(a1)
		move.b	#8,$2D(a1)
		btst	#1,d0
		bne.s	loc_2029E
		move.b	#3,$2C(a1)
loc_2029E:
		btst	#0,$22(a1)
		beq.s	loc_202AE
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_202AE:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_202C4
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_202C4:
		cmp.b	#8,d0
		bne.s	loc_202D6
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_202D6:
		bclr	#5,$22(a1)
		move.b	#1,$1D(a1)
		move.w	#$CC,d0
		jmp	Play_Sfx	
loc_202EC:
		rts 
;-------------------------------------------------------------------------------
Unused_Obj_Conf: 
		dc.w	Unused_Obj_Conf_01-Unused_Obj_Conf	
		dc.w	Unused_Obj_Conf_02-Unused_Obj_Conf	
Unused_Obj_Conf_01: 
		dc.b	0,0,1,2,3,4,5,6,7,8,9,9,9,9,9,$9
		dc.b	9,9,8,7,6,5,4,3,2,1,0,0,0,0,0,$0
		dc.b	0,$FF
Unused_Obj_Conf_02: 
		dc.b	0,$A,$B,$C,$D,$E,$F,$10,$11,$12,$13,$13,$13,$13,$13,$13
		dc.b	$13,$13,$12,$11,$10,$F,$E,$D,$C,$B,$A,$A,$A,$A,$A,$A
		dc.b	$A,$FF
;-------------------------------------------------------------------------------	
Spring_Push_Boost_Mappings: 
		dc.w	loc_20370-Spring_Push_Boost_Mappings
		dc.w	loc_2039A-Spring_Push_Boost_Mappings
		dc.w	loc_203C4-Spring_Push_Boost_Mappings
		dc.w	loc_203EE-Spring_Push_Boost_Mappings
		dc.w	loc_20418-Spring_Push_Boost_Mappings
		dc.w	loc_20442-Spring_Push_Boost_Mappings
		dc.w	loc_2046C-Spring_Push_Boost_Mappings
		dc.w	loc_20496-Spring_Push_Boost_Mappings
		dc.w	loc_204C0-Spring_Push_Boost_Mappings
		dc.w	loc_204EA-Spring_Push_Boost_Mappings
		dc.w	loc_20514-Spring_Push_Boost_Mappings
		dc.w	loc_2053E-Spring_Push_Boost_Mappings
		dc.w	loc_20568-Spring_Push_Boost_Mappings
		dc.w	loc_20592-Spring_Push_Boost_Mappings
		dc.w	loc_205BC-Spring_Push_Boost_Mappings
		dc.w	loc_205E6-Spring_Push_Boost_Mappings
		dc.w	loc_20610-Spring_Push_Boost_Mappings
		dc.w	loc_2063A-Spring_Push_Boost_Mappings
		dc.w	loc_20664-Spring_Push_Boost_Mappings
		dc.w	loc_2068E-Spring_Push_Boost_Mappings
		dc.w	loc_206B8-Spring_Push_Boost_Mappings
		dc.w	loc_206E2-Spring_Push_Boost_Mappings
		dc.w	loc_2070C-Spring_Push_Boost_Mappings
		dc.w	loc_20736-Spring_Push_Boost_Mappings
		dc.w	loc_20760-Spring_Push_Boost_Mappings
		dc.w	loc_2078A-Spring_Push_Boost_Mappings
		dc.w	loc_207B4-Spring_Push_Boost_Mappings
		dc.w	loc_207DE-Spring_Push_Boost_Mappings
		dc.w	loc_20808-Spring_Push_Boost_Mappings
loc_20370:
		dc.w	$5
		dc.l	$EC0C3000,$3000FFF0,$C083004,$3002FFF4
		dc.l	$4081007,$1003FFF4,$FC08300A,$3005FFF4
		dc.l	$F404100D,$1006FFF8
loc_2039A:
		dc.w	$5
		dc.l	$EE0C3000,$3000FFF0,$C083004,$3002FFF4
		dc.l	$4081007,$1003FFF4,$FC08300A,$3005FFF4
		dc.l	$F604100D,$1006FFF8
loc_203C4:
		dc.w	$5
		dc.l	$F00C3000,$3000FFF0,$C083004,$3002FFF4
		dc.l	$4081007,$1003FFF4,$FE08300A,$3005FFF4
		dc.l	$F804100D,$1006FFF8
loc_203EE:
		dc.w	$5
		dc.l	$F20C3000,$3000FFF0,$C083004,$3002FFF4
		dc.l	$6081007,$1003FFF4,$8300A,$3005FFF4
		dc.l	$FA04100D,$1006FFF8
loc_20418:
		dc.w	$5
		dc.l	$F40C3000,$3000FFF0,$C083004,$3002FFF4
		dc.l	$6081007,$1003FFF4,$8300A,$3005FFF4
		dc.l	$FC04100D,$1006FFF8
loc_20442:
		dc.w	$5
		dc.l	$F60C3000,$3000FFF0,$C083004,$3002FFF4
		dc.l	$6081007,$1003FFF4,$208300A,$3005FFF4
		dc.l	$FE04100D,$1006FFF8
loc_2046C:
		dc.w	$5
		dc.l	$F80C3000,$3000FFF0,$C083004,$3002FFF4
		dc.l	$8081007,$1003FFF4,$408300A,$3005FFF4
		dc.l	$4100D,$1006FFF8
loc_20496:
		dc.w	$5
		dc.l	$FA0C3000,$3000FFF0,$C083004,$3002FFF4
		dc.l	$8081007,$1003FFF4,$408300A,$3005FFF4
		dc.l	$204100D,$1006FFF8
loc_204C0:
		dc.w	$5
		dc.l	$FC0C3000,$3000FFF0,$C083004,$3002FFF4
		dc.l	$8081007,$1003FFF4,$608300A,$3005FFF4
		dc.l	$404100D,$1006FFF8
loc_204EA:
		dc.w	$5
		dc.l	$FE0C3000,$3000FFF0,$C083004,$3002FFF4
		dc.l	$A081007,$1003FFF4,$808300A,$3005FFF4
		dc.l	$604100D,$1006FFF8
loc_20514:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFEC
		dc.l	$F4020016,$BFFF4,$F4022019,$200CFFFC
		dc.l	$F801001C,$E0004
loc_2053E:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFED
		dc.l	$F4020016,$BFFF5,$F4022019,$200CFFFD
		dc.l	$F801001C,$E0004
loc_20568:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFEE
		dc.l	$F4020016,$BFFF6,$F4022019,$200CFFFE
		dc.l	$F801001C,$E0004
loc_20592:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFEF
		dc.l	$F4020016,$BFFF7,$F4022019,$200CFFFF
		dc.l	$F801001C,$E0004
loc_205BC:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFF0
		dc.l	$F4020016,$BFFF8,$F4022019,$200CFFFE
		dc.l	$F801001C,$E0004
loc_205E6:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFF1
		dc.l	$F4020016,$BFFF9,$F4022019,$200CFFFF
		dc.l	$F801001C,$E0004
loc_20610:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFF2
		dc.l	$F4020016,$BFFF8,$F4022019,$200CFFFE
		dc.l	$F801001C,$E0004
loc_2063A:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFF3
		dc.l	$F4020016,$BFFF9,$F4022019,$200CFFFF
		dc.l	$F801001C,$E0004
loc_20664:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFF4
		dc.l	$F4020016,$BFFFA,$F4022019,$200C0000
		dc.l	$F801001C,$E0004
loc_2068E:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFF5
		dc.l	$F4020016,$BFFFB,$F4022019,$200C0001
		dc.l	$F801001C,$E0004
loc_206B8:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFF6
		dc.l	$F4020016,$BFFFC,$F4022019,$200C0000
		dc.l	$F801001C,$E0004
loc_206E2:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFF7
		dc.l	$F4020016,$BFFFD,$F4022019,$200C0001
		dc.l	$F801001C,$E0004
loc_2070C:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFF8
		dc.l	$F4020016,$BFFFC,$F4022019,$200C0000
		dc.l	$F801001C,$E0004
loc_20736:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFF9
		dc.l	$F4020016,$BFFFD,$F4022019,$200C0001
		dc.l	$F801001C,$E0004
loc_20760:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFFA
		dc.l	$F4020016,$BFFFE,$F4022019,$200C0002
		dc.l	$F801001C,$E0004
loc_2078A:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFFB
		dc.l	$F4020016,$BFFFF,$F4022019,$200C0003
		dc.l	$F801001C,$E0004
loc_207B4:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFFC
		dc.l	$F4020016,$B0000,$F4022019,$200C0002
		dc.l	$F801001C,$E0004
loc_207DE:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFFD
		dc.l	$F4020016,$B0001,$F4022019,$200C0003
		dc.l	$F801001C,$E0004
loc_20808:
		dc.w	$5
		dc.l	$F003200F,$2007000C,$F4022013,$2009FFFE
		dc.l	$F4020016,$B0000,$F4022019,$200C0002
		dc.l	$F801001C,$E0004	
;===============================================================================
; Object 0x
; [ End ]
;===============================================================================