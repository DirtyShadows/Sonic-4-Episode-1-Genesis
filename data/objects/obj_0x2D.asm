;=============================================================================== 
; Object 0x2D - Metropolis / Hill Top / Chemical Plant - Automatic Door. 
; [ Begin ]
;===============================================================================	
loc_F3B6:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_F3C4(pc,d0),d1
		jmp	loc_F3C4(pc,d1)
loc_F3C4:
		dc.w	loc_F3C8-loc_F3C4
		dc.w	loc_F47A-loc_F3C4
loc_F3C8:
		addq.b	#2,$24(a0)
		move.l	#Automatic_Door_Mappings,4(a0) 
		move.w	#$2426,2(a0)
		move.b	#8,$19(a0)
		cmp.b	#4,($FFFFFE10).w
		beq.s	loc_F3F0
		cmp.b	#5,($FFFFFE10).w
		bne.s	loc_F3FC
loc_F3F0:
		move.w	#$6000,2(a0)
		move.b	#$C,$19(a0)
loc_F3FC:
		cmp.b	#$D,($FFFFFE10).w
		bne.s	loc_F410
		move.w	#$2394,2(a0)
		move.b	#8,$19(a0)
loc_F410:
		cmp.b	#$E,($FFFFFE10).w
		bne.s	loc_F424
		move.w	#$2328,2(a0)
		move.b	#8,$19(a0)
loc_F424:
		cmp.b	#$F,($FFFFFE10).w
		bne.s	loc_F438
		move.w	#$23F8,2(a0)
		move.b	#8,$19(a0)
loc_F438:
		bsr	ModifySpriteAttr_2P	
		or.b	#4,1(a0)
		move.b	#4,$18(a0)
		move.w	$C(a0),$32(a0)
		move.b	$28(a0),$1A(a0)
		move.w	8(a0),d2
		move.w	d2,d3
		sub.w	#$200,d2
		add.w	#$18,d3
		btst	#0,$22(a0)
		beq.s	loc_F472
		sub.w	#$FE18,d2
		add.w	#$1E8,d3
loc_F472:
		move.w	d2,$38(a0)
		move.w	d3,$3A(a0)
loc_F47A:
		btst	#0,$22(a0)
		bne.s	loc_F496
		move.w	$38(a0),d2
		move.w	8(a0),d3
		tst.b	$25(a0)
		beq.s	loc_F4A8
		move.w	$3A(a0),d3
		bra.s	loc_F4A8
loc_F496:
		move.w	8(a0),d2
		move.w	$3A(a0),d3
		tst.b	$25(a0)
		beq.s	loc_F4A8
		move.w	$38(a0),d2
loc_F4A8:
		move.w	$32(a0),d4
		move.w	d4,d5
		sub.w	#$20,d4
		add.w	#$20,d5
		move.b	#0,$25(a0)
		lea	($FFFFB000).w,a1
		bsr.s	loc_F510
		lea	($FFFFB040).w,a1
		bsr.s	loc_F510
		tst.b	$25(a0)
		beq.s	loc_F4DC
		cmp.w	#$40,$30(a0)
		beq.s	loc_F4F2
		addq.w	#8,$30(a0)
		bra.s	loc_F4E6
loc_F4DC:
		tst.w	$30(a0)
		beq.s	loc_F4F2
		subq.w	#8,$30(a0)
loc_F4E6:
		move.w	$32(a0),d0
		sub.w	$30(a0),d0
		move.w	d0,$C(a0)
loc_F4F2:
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		move.w	#$20,d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		bsr	SolidObject	
		bra	MarkObjGone	
loc_F510:
		move.w	8(a1),d0
		cmp.w	d2,d0
		blt	loc_F53C
		cmp.w	d3,d0
		bcc	loc_F53C
		move.w	$C(a1),d0
		cmp.w	d4,d0
		bcs	loc_F53C
		cmp.w	d5,d0
		bcc	loc_F53C
		tst.b	$2A(a1)
		bmi.s	loc_F53C
		move.b	#2,$25(a0)
loc_F53C:
		rts
;-------------------------------------------------------------------------------
Automatic_Door_Mappings: 
		dc.w	loc_F546-Automatic_Door_Mappings
		dc.w	loc_F568-Automatic_Door_Mappings
		dc.w	loc_F57A-Automatic_Door_Mappings
		dc.w	loc_F58C-Automatic_Door_Mappings
loc_F546:
		dc.w	$4
		dc.l	$E0050000,$FFF8,$F0050000,$FFF8
		dc.l	$50000,$FFF8,$10050000,$FFF8
loc_F568:
		dc.w	$2
		dc.l	$E00B005F,$2FFFF4,$B005F,$2FFFF4
loc_F57A:
		dc.w	$2
		dc.l	$E0070000,$FFF8,$70000,$FFF8
loc_F58C:
		dc.w	$2
		dc.l	$E0070000,$FFF8,$70000,$FFF8	
;=============================================================================== 
; Object 0x2D - Metropolis / Hill Top / Chemical Plant - Automatic Door. 
; [ End ]
;===============================================================================	