;===============================================================================
; Object 0x20 - Boss Fireball - Hill Top
; [ Begin ]
;===============================================================================	
loc_1EE14:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1EE22(pc,d0),d1
		jmp	loc_1EE22(pc,d1)
loc_1EE22:
		dc.w	loc_1EE30-loc_1EE22
		dc.w	loc_1EE92-loc_1EE22
		dc.w	loc_1EEA0-loc_1EE22
		dc.w	loc_1EF3A-loc_1EE22
		dc.w	loc_1EF60-loc_1EE22
		dc.w	loc_1EFEE-loc_1EE22
		dc.w	loc_1F04E-loc_1EE22
loc_1EE30:
		addq.b	#2,$24(a0)
		move.b	#8,$16(a0)
		move.b	#8,$17(a0)
		move.l	#Lava_Bubble_Mappings,4(a0) 
		move.w	#$8416,2(a0)
		bsr	loc_1F110
		or.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.b	#8,$19(a0)
		move.w	$C(a0),$30(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsl.w	#3,d0
		and.w	#$780,d0
		neg.w	d0
		move.w	d0,$10(a0)
		move.w	d0,$12(a0)
		move.b	$28(a0),d0
		and.w	#$F,d0
		lsl.w	#4,d0
		move.w	d0,$32(a0)
		move.w	d0,$34(a0)
loc_1EE92:
		lea	(Fireball_Animate_Data),a1 
		bsr	loc_1F10A
		bra	loc_1F0FE
loc_1EEA0:
		cmp.b	#5,$1E(a0)
		bne.s	loc_1EED0
		bsr	loc_1F104
		bne.s	loc_1EEC2
		bsr.s	loc_1EEDE
		bsr	loc_1F104
		bne.s	loc_1EEC2
		bsr.s	loc_1EEDE
		neg.w	$10(a1)
		bset	#0,1(a1)
loc_1EEC2:
		move.w	#$AE,d0
		jsr	Play_Sfx	
		addq.b	#2,$24(a0)
loc_1EED0:
		lea	(Fireball_Animate_Data),a1 
		bsr	loc_1F10A
		bra	loc_1F0FE
loc_1EEDE:
		move.b	#$20,0(a1)
		move.b	#8,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	$10(a0),$10(a1)
		move.w	$12(a0),$12(a1)
		move.b	#8,$16(a1)
		move.b	#8,$17(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		or.b	#4,1(a1)
		move.b	#3,$18(a1)
		move.b	#8,$19(a1)
		move.b	#$8B,$20(a1)
		move.w	$C(a1),$30(a1)
		rts
loc_1EF3A:
		subq.w	#1,$32(a0)
		bpl.s	loc_1EF52
		move.w	$34(a0),$32(a0)
		move.b	#2,$24(a0)
		move.w	#1,$1C(a0)
loc_1EF52:
		lea	(Fireball_Animate_Data),a1 
		bsr	loc_1F10A
		bra	loc_1F0FE
loc_1EF60:
		subq.b	#1,$1E(a0)
		bpl.s	loc_1EF76
		move.b	#7,$1E(a0)
		addq.b	#1,$1A(a0)
		and.b	#1,$1A(a0)
loc_1EF76:
		bsr	loc_1F116
		add.w	#$18,$12(a0)
		move.w	($FFFFEECE).w,d0
		add.w	#$E0,d0
		cmp.w	$C(a0),d0
		bcc.s	loc_1EF92
		bra	loc_1F0F8
loc_1EF92:
		bclr	#1,1(a0)
		tst.w	$12(a0)
		bmi.s	loc_1EFEA
		bset	#1,1(a0)
		bsr	ObjHitFloor	
		tst.w	d1
		bpl.s	loc_1EFEA
		add.w	d1,$C(a0)
		addq.b	#2,$24(a0)
		move.b	#2,$1C(a0)
		move.b	#4,$1A(a0)
		move.w	#0,$12(a0)
		move.l	#Fireball_Mappings,4(a0) 
		move.w	#$839E,2(a0)
		bsr	loc_1F110
		move.b	#0,$1A(a0)
		move.w	#9,$32(a0)
		move.b	#3,$36(a0)
loc_1EFEA:
		bra	loc_1F0FE
loc_1EFEE:
		subq.w	#1,$32(a0)
		bpl.s	loc_1F040
		move.w	#$7F,$32(a0)
		subq.b	#1,$36(a0)
		bmi.s	loc_1F040
		bsr	loc_1F104
		bne.s	loc_1F040
		moveq	#0,d0
		move.w	#$F,d1
loc_1F00C:	
		move.l	0(a0,d0),0(a1,d0)
		addq.w	#4,d0
		dbra	d1,loc_1F00C
		move.w	#9,$32(a1)
		move.w	#$200,$1C(a1)
		move.w	#$E,d0
		tst.w	$10(a1)
		bpl.s	loc_1F030
		neg.w	d0
loc_1F030:
		add.w	d0,8(a1)
		move.l	a1,-(sp)
		bsr	loc_1ACC8
		move.l	(sp)+,a1
		add.w	d1,$C(a1)
loc_1F040:
		lea	(Fireball_Animate_Data),a1 
		bsr	loc_1F10A
		bra	loc_1F0FE
loc_1F04E:
		bra	loc_1F0F8
;-------------------------------------------------------------------------------	
Fireball_Animate_Data: 
		dc.w	loc_1F058-Fireball_Animate_Data
		dc.w	loc_1F05F-Fireball_Animate_Data
		dc.w	loc_1F062-Fireball_Animate_Data
loc_1F058:
		dc.b	$B,2,3,$FC,4,$FD,$1
loc_1F05F:
		dc.b	$7F,5,$FF
loc_1F062:
		dc.b	5,4,5,2,3,0,1,0,1,2,3,4,5,$FC	
;-------------------------------------------------------------------------------	
Lava_Bubble_Mappings: 
		dc.w	loc_1F07C-Lava_Bubble_Mappings
		dc.w	loc_1F086-Lava_Bubble_Mappings
		dc.w	loc_1F090-Lava_Bubble_Mappings
		dc.w	loc_1F09A-Lava_Bubble_Mappings
		dc.w	loc_1F0A4-Lava_Bubble_Mappings
		dc.w	loc_1F0AE-Lava_Bubble_Mappings
loc_1F07C:
		dc.w	$1
		dc.l	$F8050000,$FFF8
loc_1F086:
		dc.w	$1
		dc.l	$F8050004,$2FFF8
loc_1F090:
		dc.w	$1
		dc.l	$F9050008,$4FFF8
loc_1F09A:
		dc.w	$1
		dc.l	$F6050008,$4FFF8
loc_1F0A4:
		dc.w	$1
		dc.l	$F605000C,$6FFF8
loc_1F0AE:
		dc.w	$0	
;-------------------------------------------------------------------------------	
Fireball_Mappings: 
		dc.w	loc_1F0BC-Fireball_Mappings
		dc.w	loc_1F0C6-Fireball_Mappings
		dc.w	loc_1F0D0-Fireball_Mappings
		dc.w	loc_1F0DA-Fireball_Mappings
		dc.w	loc_1F0E4-Fireball_Mappings
		dc.w	loc_1F0EE-Fireball_Mappings
loc_1F0BC:
		dc.w	$1
		dc.l	$F0070000,$FFF8
loc_1F0C6:
		dc.w	$1
		dc.l	$F0070800,$800FFF8
loc_1F0D0:
		dc.w	$1
		dc.l	$F0070008,$4FFF8
loc_1F0DA:
		dc.w	$1
		dc.l	$F0070808,$804FFF8
loc_1F0E4:
		dc.w	$1
		dc.l	$50010,$8FFF8
loc_1F0EE:
		dc.w	$1
		dc.l	$50810,$808FFF8	
;===============================================================================
; Object 0x20 - Boss Fireball - Hill Top
; [ End ]
;===============================================================================