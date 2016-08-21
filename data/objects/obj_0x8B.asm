;===============================================================================
; Object 0x8B - Sky Fortress Palette Cycling Switch
; [ Begin ]
;===============================================================================	
loc_1D1D8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1D1EC(pc,d0),d1
		jsr	loc_1D1EC(pc,d1)
		jmp	(loc_12D80)
loc_1D1EC:
		dc.w	loc_1D1F8-loc_1D1EC
		dc.w	loc_1D258-loc_1D1EC
loc_1D1F0:
		dc.w	$20,$40,$80,$100
loc_1D1F8:
		addq.b	#2,$24(a0)
		move.l	#Layer_Switch_Mappings,4(a0) 
		move.w	#$6BC,2(a0)
		bsr	loc_1D302
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#5,$18(a0)
		move.b	$28(a0),d0
		and.w	#3,d0
		move.b	d0,$1A(a0)
		add.w	d0,d0
		move.w	loc_1D1F0(pc,d0),$32(a0)
		move.w	8(a0),d1
		lea	($FFFFB000).w,a1
		cmp.w	8(a1),d1
		bcc.s	loc_1D248
		move.b	#1,$34(a0)
loc_1D248:
		lea	($FFFFB040).w,a1
		cmp.w	8(a1),d1
		bcc.s	loc_1D258
		move.b	#1,$35(a0)
loc_1D258:
		tst.w	($FFFFFE08).w
		bne.s	loc_1D2B0
		move.w	8(a0),d1
		lea	$34(a0),a2
		lea	($FFFFB000).w,a1
		bsr.s	loc_1D270
		lea	($FFFFB040).w,a1
loc_1D270:
		tst.b	(a2)+
		bne.s	loc_1D2B2
		cmp.w	8(a1),d1
		bhi.s	loc_1D2B0
		move.b	#1,$FFFFFFFF(a2)
		move.w	$C(a0),d2
		move.w	d2,d3
		move.w	$32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	$C(a1),d4
		cmp.w	d2,d4
		bcs.s	loc_1D2B0
		cmp.w	d3,d4
		bcc.s	loc_1D2B0
		btst	#0,1(a0)
		bne.s	loc_1D2AA
		move.b	#1,($FFFFF72E).w
		rts
loc_1D2AA:
		move.b	#0,($FFFFF72E).w
loc_1D2B0:
		rts
loc_1D2B2:
		cmp.w	8(a1),d1
		bls.s	loc_1D2B0
		move.b	#0,$FFFFFFFF(a2)
		move.w	$C(a0),d2
		move.w	d2,d3
		move.w	$32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	$C(a1),d4
		cmp.w	d2,d4
		bcs.s	loc_1D2B0
		cmp.w	d3,d4
		bcc.s	loc_1D2B0
		btst	#0,1(a0)
		beq.s	loc_1D2E8
		move.b	#1,($FFFFF72E).w
		rts
loc_1D2E8:
		move.b	#0,($FFFFF72E).w
		rts	
;===============================================================================
; Object 0x8B - Sky Fortress Palette Cycling Switch
; [ End ]
;===============================================================================