;=============================================================================== 
; Object 0x7D - Hidden Bonus at end of levels - Sonic 1 Leftover
; [ Begin ]
;===============================================================================	
loc_1B4A8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1B4B6(pc,d0),d1
		jmp	loc_1B4B6(pc,d1)
loc_1B4B6:
		dc.w	loc_1B4BA-loc_1B4B6
		dc.w	loc_1B55E-loc_1B4B6
loc_1B4BA:
		moveq	#$10,d2
		move.w	d2,d3
		add.w	d3,d3
		lea	($FFFFB000).w,a1
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	d2,d0
		cmp.w	d3,d0
		bcc.s	loc_1B53C
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		add.w	d2,d1
		cmp.w	d3,d1
		bcc.s	loc_1B53C
		tst.w	($FFFFFE08).w
		bne.s	loc_1B53C
		tst.b	($FFFFF7CD).w
		bne.s	loc_1B53C
		addq.b	#2,$24(a0)
		move.l	#Hidden_Bonus_Mappings,4(a0) 
		move.w	#$84B6,2(a0)
		bsr	ModifySpriteAttr_2P	
		or.b	#4,1(a0)
		move.b	#0,$18(a0)
		move.b	#$10,$19(a0)
		move.b	$28(a0),$1A(a0)
		move.w	#$77,$30(a0)
		move.w	#$C9,d0
		jsr	Play_Sfx	
		moveq	#0,d0
		move.b	$28(a0),d0
		add.w	d0,d0
		move.w	Hidden_Bonus_Points(pc,d0),d0 
		jsr	add_Points	
loc_1B53C:
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_1B550
		rts
loc_1B550:
		jmp	deleteObject	
Hidden_Bonus_Points: 
		dc.w	0,$3E8,$64,$1
loc_1B55E:
		subq.w	#1,$30(a0)
		bmi.s	loc_1B57C
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_1B57C
		jmp	displaySprite	
loc_1B57C:
		jmp	deleteObject	
;-------------------------------------------------------------------------------	
Hidden_Bonus_Mappings: 
		dc.w	loc_1B58A-Hidden_Bonus_Mappings
		dc.w	loc_1B58C-Hidden_Bonus_Mappings
		dc.w	loc_1B596-Hidden_Bonus_Mappings
		dc.w	loc_1B5A0-Hidden_Bonus_Mappings
loc_1B58A:
		dc.w	$0
loc_1B58C:
		dc.w	$1
		dc.l	$F40E0000,$FFF0
loc_1B596:
		dc.w	$1
		dc.l	$F40E000C,$6FFF0
loc_1B5A0:
		dc.w	$1
		dc.l	$F40E0018,$CFFF0	
;=============================================================================== 
; Object 0x7D - Hidden Bonus at end of levels - Sonic 1 Leftover
; [ End ]
;===============================================================================	