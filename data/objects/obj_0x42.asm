;=============================================================================== 
; Object 0x42 - Metropolis - Steam Vent 
; [ Begin ]	
;===============================================================================	
loc_223F4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_22402(pc,d0),d1
		jmp	loc_22402(pc,d1)
loc_22402:	
		dc.w	loc_22408-loc_22402
		dc.w	loc_22448-loc_22402
		dc.w	loc_225FA-loc_22402
loc_22408:
		addq.b	#2,$24(a0)
		move.l	#Steam_Vent_Mappings,4(a0) 
		move.w	#$6000,2(a0)
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		bsr	loc_226D4
		move.b	#7,$1A(a0)
		move.w	$C(a0),$34(a0)
		move.w	#$10,$36(a0)
		add.w	#$10,$C(a0)
loc_22448:
		move.w	#$1B,d1
		move.w	#$10,d2
		move.w	#$10,d3
		move.w	8(a0),d4
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_226DA
		btst	#3,$22(a0)
		beq.s	loc_22472
		bsr	loc_2254E
loc_22472:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_226DA
		btst	#4,$22(a0)
		beq.s	loc_2248C
		bsr	loc_2254E
loc_2248C:
		move.b	$25(a0),d0
		bne.s	loc_224A4
		subq.w	#1,$32(a0)
		bpl.s	loc_22508
		move.w	#$7F,$32(a0)
		addq.b	#2,$25(a0)
		bra.s	loc_22508
loc_224A4:
		subq.b	#2,d0
		bne.s	loc_224D6
		subq.w	#8,$36(a0)
		bne.s	loc_224C8
		addq.b	#2,$25(a0)
		bsr.s	loc_2250C
		add.w	#$28,8(a1)
		bsr.s	loc_2250C
		sub.w	#$28,8(a1)
		bset	#0,1(a1)
loc_224C8:
		move.w	$36(a0),d0
		add.w	$34(a0),d0
		move.w	d0,$C(a0)
		bra.s	loc_22508
loc_224D6:
		subq.b	#2,d0
		bne.s	loc_224EC
		subq.w	#1,$32(a0)
		bpl.s	loc_22508
		move.w	#$7F,$32(a0)
		addq.b	#2,$25(a0)
		bra.s	loc_22508
loc_224EC:
		addq.w	#8,$36(a0)
		cmp.w	#$10,$36(a0)
		bne.s	loc_224FC
		clr.b	$25(a0)
loc_224FC:
		move.w	$36(a0),d0
		add.w	$34(a0),d0
		move.w	d0,$C(a0)
loc_22508:
		bra	loc_226CE
loc_2250C:
		bsr	loc_226C8
		bne.s	loc_2254C
		move.b	0(a0),0(a1)
		addq.b	#4,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$34(a0),$C(a1)
		move.b	#7,$1E(a1)
		move.l	4(a0),4(a1)
		move.w	#$2405,2(a1)
		or.b	#4,1(a1)
		move.b	#$18,$19(a1)
		move.b	#4,$18(a1)
loc_2254C:
		rts
loc_2254E:
		cmp.b	#2,$25(a0)
		beq.s	loc_22558
		rts
loc_22558:
		move.w	#$F600,$12(a1)
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#$10,$1C(a1)
		move.b	#2,$24(a1)
		move.b	#0,$39(a1)
		move.b	$28(a0),d0
		bpl.s	loc_22588
		move.w	#0,$10(a1)
loc_22588:
		btst	#0,d0
		beq.s	loc_225C8
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#0,$2C(a1)
		move.b	#4,$2D(a1)
		btst	#1,d0
		bne.s	loc_225B8
		move.b	#1,$2C(a1)
loc_225B8:
		btst	#0,$22(a1)
		beq.s	loc_225C8
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_225C8:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_225DE
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_225DE:
		cmp.b	#8,d0
		bne.s	loc_225F0
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_225F0:
		move.w	#$CC,d0
		jmp	Play_Sfx	
loc_225FA:
		subq.b	#1,$1E(a0)
		bpl.s	loc_22628
		move.b	#7,$1E(a0)
		move.b	#0,$20(a0)
		addq.b	#1,$1A(a0)
		cmp.b	#3,$1A(a0)
		bne.s	loc_2261E
		move.b	#$A6,$20(a0)
loc_2261E:
		cmp.b	#7,$1A(a0)
		beq	loc_226C2
loc_22628:
		bra	loc_226BC
;-------------------------------------------------------------------------------
Steam_Vent_Mappings: 
		dc.w	loc_2263C-Steam_Vent_Mappings
		dc.w	loc_22646-Steam_Vent_Mappings
		dc.w	loc_22650-Steam_Vent_Mappings
		dc.w	loc_2265A-Steam_Vent_Mappings
		dc.w	loc_2266C-Steam_Vent_Mappings
		dc.w	loc_2267E-Steam_Vent_Mappings
		dc.w	loc_22698-Steam_Vent_Mappings
		dc.w	loc_226AA-Steam_Vent_Mappings
loc_2263C:
		dc.w	$1
		dc.l	$FF000000,$FFE8
loc_22646:
		dc.w	$1
		dc.l	$FF040001,$FFE8
loc_22650:
		dc.w	$1
		dc.l	$FC050003,$1FFEC
loc_2265A:
		dc.w	$2
		dc.l	$FC050007,$3FFF8,$FC050003,$1FFF0
loc_2266C:
		dc.w	$2
		dc.l	$FC051007,$10030000,$FC01100B,$1005FFF8
loc_2267E:
		dc.w	$3
		dc.l	$FC01000D,$6000C,$FC01000B,$50004
		dc.l	$FC01180D,$1806FFFC
loc_22698:
		dc.w	$2
		dc.l	$FC01000D,$60010,$FC01180D,$18060008
loc_226AA:
		dc.w	$2
		dc.l	$F0070015,$AFFF0,$F007001D,$E0000	
;=============================================================================== 
; Object 0x42 - Metropolis - Steam Vent 
; [ End ]	
;===============================================================================	