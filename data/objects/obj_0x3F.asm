;===============================================================================
; Object 0x3F - Fans - Oil Ocean
; [ Begin ]
;===============================================================================	
loc_263B8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_263C6(pc,d0),d1
		jmp	loc_263C6(pc,d1)
loc_263C6:
		dc.w	loc_263CC-loc_263C6
		dc.w	loc_2640A-loc_263C6
		dc.w	loc_26506-loc_263C6
loc_263CC:
		addq.b	#2,$24(a0)
		move.l	#Vertical_Fan_Mappings,4(a0) 
		move.w	#$6403,2(a0)
		bsr	loc_26786
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		tst.b	$28(a0)
		bpl.s	loc_2640A
		addq.b	#2,$24(a0)
		move.l	#Horizontal_Fan_Mappings,4(a0) 
		bra	loc_26506
loc_2640A:
		btst	#1,$28(a0)
		bne.s	loc_26432
		subq.w	#1,$30(a0)
		bpl.s	loc_26432
		move.w	#0,$34(a0)
		move.w	#$78,$30(a0)
		bchg	#0,$32(a0)
		beq.s	loc_26432
		move.w	#$B4,$30(a0)
loc_26432:
		tst.b	$32(a0)
		beq	loc_26456
		subq.b	#1,$1E(a0)
		bpl.s	loc_26498
		cmp.w	#$400,$34(a0)
		bcc.s	loc_26498
		add.w	#$2A,$34(a0)
		move.b	$34(a0),$1E(a0)
		bra.s	loc_26472
loc_26456:
		lea	($FFFFB000).w,a1
		bsr	loc_2649C
		lea	($FFFFB040).w,a1
		bsr	loc_2649C
		subq.b	#1,$1E(a0)
		bpl.s	loc_26498
		move.b	#0,$1E(a0)
loc_26472:
		addq.b	#1,$1B(a0)
		cmp.b	#6,$1B(a0)
		bcs.s	loc_26484
		move.b	#0,$1B(a0)
loc_26484:
		moveq	#0,d0
		btst	#0,$28(a0)
		beq.s	loc_26490
		moveq	#5,d0
loc_26490:
		add.b	$1B(a0),d0
		move.b	d0,$1A(a0)
loc_26498:
		bra	loc_26780
loc_2649C:
		cmp.b	#4,$24(a1)
		bcc.s	loc_26504
		tst.b	$2A(a1)
		bne.s	loc_26504
		move.w	8(a1),d0
		sub.w	8(a0),d0
		btst	#0,$22(a0)
		bne.s	loc_264BC
		neg.w	d0
loc_264BC:
		add.w	#$50,d0
		cmp.w	#$F0,d0
		bcc.s	loc_26504
		move.w	$C(a1),d1
		add.w	#$60,d1
		sub.w	$C(a0),d1
		bcs.s	loc_26504
		cmp.w	#$70,d1
		bcc.s	loc_26504
		sub.w	#$50,d0
		bcc.s	loc_264E4
		not.w	d0
		add.w	d0,d0
loc_264E4:
		add.w	#$60,d0
		btst	#0,$22(a0)
		bne.s	loc_264F2
		neg.w	d0
loc_264F2:
		neg.b	d0
		asr.w	#4,d0
		btst	#0,$28(a0)
		beq.s	loc_26500
		neg.w	d0
loc_26500:
		add.w	d0,8(a1)
loc_26504:
		rts
loc_26506:
		btst	#1,$28(a0)
		bne.s	loc_2652E
		subq.w	#1,$30(a0)
		bpl.s	loc_2652E
		move.w	#0,$34(a0)
		move.w	#$78,$30(a0)
		bchg	#0,$32(a0)
		beq.s	loc_2652E
		move.w	#$B4,$30(a0)
loc_2652E:
		tst.b	$32(a0)
		beq	loc_26552
		subq.b	#1,$1E(a0)
		bpl.s	loc_26594
		cmp.w	#$400,$34(a0)
		bcc.s	loc_26594
		add.w	#$2A,$34(a0)
		move.b	$34(a0),$1E(a0)
		bra.s	loc_2656E
loc_26552:
		lea	($FFFFB000).w,a1
		bsr	loc_26598
		lea	($FFFFB040).w,a1
		bsr	loc_26598
		subq.b	#1,$1E(a0)
		bpl.s	loc_26594
		move.b	#0,$1E(a0)
loc_2656E:
		addq.b	#1,$1B(a0)
		cmp.b	#6,$1B(a0)
		bcs.s	loc_26580
		move.b	#0,$1B(a0)
loc_26580:
		moveq	#0,d0
		btst	#0,$28(a0)
		beq.s	loc_2658C
		moveq	#5,d0
loc_2658C:
		add.b	$1B(a0),d0
		move.b	d0,$1A(a0)
loc_26594:
		bra	loc_26780
loc_26598:
		cmp.b	#4,$24(a1)
		bcc.s	loc_26618
		tst.b	$2A(a1)
		bne.s	loc_26618
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	#$40,d0
		cmp.w	#$80,d0
		bcc.s	loc_26618
		moveq	#0,d1
		move.b	($FFFFFE74).w,d1
		add.w	$C(a1),d1
		add.w	#$60,d1
		sub.w	$C(a0),d1
		bcs.s	loc_26618
		cmp.w	#$90,d1
		bcc.s	loc_26618
		sub.w	#$60,d1
		bcs.s	loc_265DC
		not.w	d1
		add.w	d1,d1
loc_265DC:
		add.w	#$60,d1
		neg.w	d1
		asr.w	#4,d1
		add.w	d1,$C(a1)
		bset	#1,$22(a1)
		move.w	#0,$12(a1)
		move.w	#1,$14(a1)
		tst.b	$27(a1)
		bne.s	loc_26618
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#$7F,$2C(a1)
		move.b	#8,$2D(a1)
loc_26618:
		rts	
;-------------------------------------------------------------------------------
Vertical_Fan_Mappings: 
		dc.w	loc_26630-Vertical_Fan_Mappings
		dc.w	loc_2664A-Vertical_Fan_Mappings
		dc.w	loc_26664-Vertical_Fan_Mappings
		dc.w	loc_2667E-Vertical_Fan_Mappings
		dc.w	loc_26698-Vertical_Fan_Mappings
		dc.w	loc_266B2-Vertical_Fan_Mappings
		dc.w	loc_26698-Vertical_Fan_Mappings
		dc.w	loc_2667E-Vertical_Fan_Mappings
		dc.w	loc_26664-Vertical_Fan_Mappings
		dc.w	loc_2664A-Vertical_Fan_Mappings
		dc.w	loc_26630-Vertical_Fan_Mappings
loc_26630:
		dc.w	$3
		dc.l	$F3020000,$FFF4,$F0050007,$3FFFC
		dc.l	$51007,$1003FFFC
loc_2664A:
		dc.w	$3
		dc.l	$F5021000,$1000FFF4,$F0050007,$3FFFC
		dc.l	$51007,$1003FFFC
loc_26664:
		dc.w	$3
		dc.l	$F0030003,$1FFF4,$F0050007,$3FFFC
		dc.l	$51007,$1003FFFC
loc_2667E:
		dc.w	$3
		dc.l	$F3020000,$FFF4,$F005000B,$5FFFC
		dc.l	$5100B,$1005FFFC
loc_26698:
		dc.w	$3
		dc.l	$F5021000,$1000FFF4,$F005000B,$5FFFC
		dc.l	$5100B,$1005FFFC
loc_266B2:
		dc.w	$3
		dc.l	$F0030003,$1FFF4,$F005000B,$5FFFC
		dc.l	$5100B,$1005FFFC	
;-------------------------------------------------------------------------------
Horizontal_Fan_Mappings: ;loc_266CC:
		dc.w	loc_266E2-Horizontal_Fan_Mappings
		dc.w	loc_266FC-Horizontal_Fan_Mappings
		dc.w	loc_26716-Horizontal_Fan_Mappings
		dc.w	loc_26730-Horizontal_Fan_Mappings
		dc.w	loc_2674A-Horizontal_Fan_Mappings
		dc.w	loc_26764-Horizontal_Fan_Mappings
		dc.w	loc_2674A-Horizontal_Fan_Mappings
		dc.w	loc_26730-Horizontal_Fan_Mappings
		dc.w	loc_26716-Horizontal_Fan_Mappings
		dc.w	loc_266FC-Horizontal_Fan_Mappings
		dc.w	loc_266E2-Horizontal_Fan_Mappings
loc_266E2:
		dc.w	$3
		dc.l	$F408000F,$7FFF3,$FC050016,$BFFF0
		dc.l	$FC050816,$80B0000
loc_266FC:
		dc.w	$3
		dc.l	$F408080F,$807FFF5,$FC050016,$BFFF0
		dc.l	$FC050816,$80B0000
loc_26716:
		dc.w	$3
		dc.l	$F40C0012,$9FFF0,$FC050016,$BFFF0
		dc.l	$FC050816,$80B0000
loc_26730:
		dc.w	$3
		dc.l	$F408000F,$7FFF3,$FC05001A,$DFFF0
		dc.l	$FC05081A,$80D0000
loc_2674A:
		dc.w	$3
		dc.l	$F408080F,$807FFF5,$FC05001A,$DFFF0
		dc.l	$FC05081A,$80D0000
loc_26764:
		dc.w	$3
		dc.l	$F40C0012,$9FFF0,$FC05001A,$DFFF0
		dc.l	$FC05081A,$80D0000	
;-------------------------------------------------------------------------------	
;===============================================================================
; Object 0x3F - Fans - Oil Ocean
; [ End ]
;===============================================================================