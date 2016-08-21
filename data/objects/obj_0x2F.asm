;=============================================================================== 
; Object 0x2F - Hill Top - Breakable Floor
; [ Begin ]	
;===============================================================================
loc_1F11C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1F12A(pc,d0),d1
		jmp	loc_1F12A(pc,d1)
loc_1F12A:
		dc.w	loc_1F13A-loc_1F12A
		dc.w	loc_1F184-loc_1F12A
		dc.w	loc_1F2F8-loc_1F12A
loc_1F130:
		dc.b	$24,0,$20,2,$18,4,$10,6,8,$8
loc_1F13A:
		addq.b	#2,$24(a0)
		move.l	#Breakable_Floor_Mappings,4(a0) 
		move.w	#$C000,2(a0)
		bsr	loc_1F6E0
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		and.w	#$1E,d0
		lea	loc_1F130(pc,d0),a2
		move.b	(a2)+,$16(a0)
		move.b	(a2)+,$1A(a0)
		move.b	#$20,$16(a0)
		bset	#4,1(a0)
loc_1F184:
		move.w	($FFFFF7D0).w,$38(a0)
		move.b	($FFFFB01C).w,$32(a0)
		move.b	($FFFFB05C).w,$33(a0)
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		bsr	loc_1F6EC
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_1F1C0
loc_1F1BC:	
		bra	loc_1F6DA
loc_1F1C0:
		cmp.b	#$18,d0
		bne.s	loc_1F224
		cmp.b	#2,$32(a0)
		bne.s	loc_1F1DC
		tst.b	$28(a0)
		bmi.s	loc_1F20C
		cmp.b	#$E,($FFFFB03E).w
		beq.s	loc_1F20C
loc_1F1DC:
		move.b	#$C,($FFFFB03E).w
		move.b	#$D,($FFFFB03F).w
		cmp.b	#2,$33(a0)
		bne.s	loc_1F1FE
		tst.b	$28(a0)
		bmi.s	loc_1F20C
		cmp.b	#$E,($FFFFB07E).w
		beq.s	loc_1F20C
loc_1F1FE:
		move.b	#$C,($FFFFB07E).w
		move.b	#$D,($FFFFB07F).w
		bra.s	loc_1F1BC
loc_1F20C:
		lea	($FFFFB000).w,a1
		move.b	$32(a0),d0
		bsr.s	loc_1F25A
		lea	($FFFFB040).w,a1
		move.b	$33(a0),d0
		bsr.s	loc_1F25A
		bra	loc_1F2C0
loc_1F224:
		move.b	d0,d1
		and.b	#8,d1
		beq.s	loc_1F28C
		cmp.b	#2,$32(a0)
		bne.s	loc_1F242
		tst.b	$28(a0)
		bmi.s	loc_1F252
		cmp.b	#$E,($FFFFB03E).w
		beq.s	loc_1F252
loc_1F242:
		move.b	#$C,($FFFFB03E).w
		move.b	#$D,($FFFFB03F).w
		bra	loc_1F1BC
loc_1F252:
		lea	($FFFFB000).w,a1
		bsr.s	loc_1F260
		bra.s	loc_1F2C0
loc_1F25A:
		cmp.b	#2,d0
		bne.s	loc_1F278
loc_1F260:
		bset	#2,$22(a1)
		move.b	#$E,$16(a1)
		move.b	#7,$17(a1)
		move.b	#2,$1C(a1)
loc_1F278:
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#2,$24(a1)
		rts
loc_1F28C:
		and.b	#$10,d0
		beq	loc_1F1BC
		cmp.b	#2,$33(a0)
		bne.s	loc_1F2AA
		tst.b	$28(a0)
		bmi.s	loc_1F2BA
		cmp.b	#$E,($FFFFB07E).w
		beq.s	loc_1F2BA
loc_1F2AA:
		move.b	#$C,($FFFFB07E).w
		move.b	#$D,($FFFFB07F).w
		bra	loc_1F1BC
loc_1F2BA:
		lea	($FFFFB040).w,a1
		bsr.s	loc_1F260
loc_1F2C0:
		move.w	$38(a0),($FFFFF7D0).w
		and.b	#$E7,$22(a0)
		lea	(loc_1F30E),a4
		moveq	#0,d0
		move.b	$1A(a0),d0
		addq.b	#1,$1A(a0)
		move.l	d0,d1
		add.w	d0,d0
		add.w	d0,d0
		lea	0(a4,d0),a4
		neg.w	d1
		add.w	#9,d1
		move.w	#$18,d2
		bsr	loc_1F6E6
		bsr	loc_1F4C4
loc_1F2F8:
		bsr	loc_1F6F2
		add.w	#$18,$12(a0)
		tst.b	1(a0)
		bpl	loc_1F6CE
		bra	loc_1F6C8	
loc_1F30E:
		dc.w	$FF00,$F800,$100,$F800,$FF20,$F900,$E0,$F900
		dc.w	$FF40,$FA00,$C0,$FA00,$FF60,$FB00,$A0,$FB00
		dc.w	$FF80,$FC00,$80,$FC00	
;=============================================================================== 
; Object 0x2F - Hill Top - Breakable Floor
; [ End ]	
;=============================================================================== 