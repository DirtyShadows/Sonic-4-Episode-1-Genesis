;=============================================================================== 
; Object 0x6D - Metropolis - Floor Harpoon
; [ Begin ]	
;===============================================================================	
loc_23548:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_23556(pc,d0),d1
		jmp	loc_23556(pc,d1) 
loc_23556:	
		dc.w	loc_2355A-loc_23556
		dc.w	loc_23594-loc_23556
loc_2355A:
		addq.b	#2,$24(a0)
		move.l	#Block_Harpon_Mappings,4(a0) 
		move.w	#$241C,2(a0)
		bsr	loc_23624
		or.b	#4,1(a0)
		move.b	#4,$19(a0)
		move.b	#4,$18(a0)
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$32(a0)
		move.b	#$84,$20(a0)
loc_23594:
		bsr	loc_235B0
		moveq	#0,d0
		move.b	$34(a0),d0
		neg.w	d0
		add.w	$32(a0),d0
		move.w	d0,$C(a0)
		move.w	$30(a0),d0
		bra	loc_23630
loc_235B0:
		tst.w	$3A(a0)
		beq.s	loc_235BC
		subq.w	#1,$3A(a0)
		rts
loc_235BC:
		tst.w	$38(a0)
		beq.s	loc_235D4
		move.b	($FFFFFE05).w,d0
		sub.b	$28(a0),d0
		and.b	#$7F,d0
		bne.s	loc_23616
		clr.w	$38(a0)
loc_235D4:
		tst.w	$36(a0)
		beq.s	loc_235F6
		sub.w	#$400,$34(a0)
		bcc.s	loc_23616
		move.w	#0,$34(a0)
		move.w	#0,$36(a0)
		move.w	#1,$38(a0)
		rts
loc_235F6:
		add.w	#$400,$34(a0)
		cmp.w	#$2000,$34(a0)
		bcs.s	loc_23616
		move.w	#$2000,$34(a0)
		move.w	#1,$36(a0)
		move.w	#3,$3A(a0)
loc_23616:
		rts
;=============================================================================== 
; Object 0x6D - Metropolis - Floor Harpoon
; [ End ]	
;===============================================================================	