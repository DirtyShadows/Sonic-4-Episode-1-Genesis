;=============================================================================== 
; Object 0x68 - Metropolis - Block with Harpon
; [ Begin ]	
;===============================================================================
loc_23348:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_23356(pc,d0),d1
		jmp	loc_23356(pc,d1)
loc_23356:
		dc.w	loc_2335C-loc_23356
		dc.w	loc_233FE-loc_23356
		dc.w	loc_23416-loc_23356
loc_2335C:
		addq.b	#2,$24(a0)
		move.l	#Block_Harpon_Mappings,4(a0) 
		move.w	#$6414,2(a0)
		bsr	loc_23624
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		bsr	loc_2361E
		bne.s	loc_233F8
		move.b	0(a0),0(a1)
		addq.b	#4,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	8(a1),$30(a1)
		move.w	$C(a1),$32(a1)
		move.l	4(a0),4(a1)
		move.w	#$241C,2(a1)
		or.b	#4,1(a1)
		move.b	#$10,$19(a1)
		move.b	#4,$18(a1)
		move.w	($FFFFFE04).w,d0
		lsr.w	#6,d0
		move.w	d0,d1
		and.w	#1,d0
		move.w	d0,$36(a1)
		lsr.w	#1,d1
		add.b	$28(a0),d1
		and.w	#3,d1
		move.b	d1,$25(a1)
		move.b	d1,$1A(a1)
		lea	(loc_23500),a2
		move.b	0(a2,d1),$20(a1)
loc_233F8:
		move.b	#4,$1A(a0)
loc_233FE:
		move.w	#$1B,d1
		move.w	#$10,d2
		move.w	#$11,d3
		move.w	8(a0),d4
		bsr	loc_2362A
		bra	loc_23618
loc_23416:
		bsr	loc_2347E
		moveq	#0,d0
		move.b	$25(a0),d0
		add.w	d0,d0
		move.w	loc_23432(pc,d0),d1
		jsr	loc_23432(pc,d1)
		move.w	$30(a0),d0
		bra	loc_23630
loc_23432:	
		dc.w	loc_2343A-loc_23432
		dc.w	loc_2344C-loc_23432
		dc.w	loc_2345C-loc_23432
		dc.w	loc_2346C-loc_23432
loc_2343A:
		moveq	#0,d0
		move.b	$34(a0),d0
		neg.w	d0
		add.w	$32(a0),d0
		move.w	d0,$C(a0)
		rts
loc_2344C:
		moveq	#0,d0
		move.b	$34(a0),d0
		add.w	$30(a0),d0
		move.w	d0,8(a0)
		rts
loc_2345C:
		moveq	#0,d0
		move.b	$34(a0),d0
		add.w	$32(a0),d0
		move.w	d0,$C(a0)
		rts
loc_2346C:
		moveq	#0,d0
		move.b	$34(a0),d0
		neg.w	d0
		add.w	$30(a0),d0
		move.w	d0,8(a0)
		rts
loc_2347E:
		tst.w	$38(a0)
		beq.s	loc_234A2
		move.b	($FFFFFE05).w,d0
		and.b	#$3F,d0
		bne.s	loc_234FE
		clr.w	$38(a0)
		tst.b	1(a0)
		bpl.s	loc_234A2
		move.w	#$B6,d0
		jsr	Play_Sfx	
loc_234A2:
		tst.w	$36(a0)
		beq.s	loc_234DE
		sub.w	#$800,$34(a0)
		bcc.s	loc_234FE
		move.w	#0,$34(a0)
		move.w	#0,$36(a0)
		move.w	#1,$38(a0)
		addq.b	#1,$25(a0)
		and.b	#3,$25(a0)
		moveq	#0,d0
		move.b	$25(a0),d0
		move.b	d0,$1A(a0)
		move.b	loc_23500(pc,d0),$20(a0)
		rts
loc_234DE:
		add.w	#$800,$34(a0)
		cmp.w	#$2000,$34(a0)
		bcs.s	loc_234FE
		move.w	#$2000,$34(a0)
		move.w	#1,$36(a0)
		move.w	#1,$38(a0)
loc_234FE:
		rts	
;-------------------------------------------------------------------------------
loc_23500:
		dc.b	$84,$A6,$84,$A6	
;-------------------------------------------------------------------------------
Block_Harpon_Mappings: 
		dc.w	loc_2350E-Block_Harpon_Mappings
		dc.w	loc_23518-Block_Harpon_Mappings
		dc.w	loc_23522-Block_Harpon_Mappings
		dc.w	loc_2352C-Block_Harpon_Mappings
		dc.w	loc_23536-Block_Harpon_Mappings
loc_2350E:
		dc.w	$1
		dc.l	$F0031000,$1000FFFC
loc_23518:
		dc.w	$1
		dc.l	$FC0C0004,$2FFF0
loc_23522:
		dc.w	$1
		dc.l	$F0030000,$FFFC
loc_2352C:
		dc.w	$1
		dc.l	$FC0C0804,$802FFF0
loc_23536:
		dc.w	$2
		dc.l	$F0070000,$FFF0,$F0070800,$8000000	
;=============================================================================== 
; Object 0x68 - Metropolis - Block with Harpon
; [ End ]	
;===============================================================================	