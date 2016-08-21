;=============================================================================== 
; Object 0x03 - Layer Switch (Low / Hi Plane Switch)	
; [ Begin ]
;===============================================================================	
loc_1BB30:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1BB44(pc,d0),d1
		jsr	loc_1BB44(pc,d1)
		jmp	(loc_12D80)
loc_1BB44:
		dc.w	loc_1BB4A-loc_1BB44
		dc.w	loc_1BBF8-loc_1BB44
		dc.w	loc_1BD02-loc_1BB44
loc_1BB4A:
		addq.b	#2,$24(a0)
		move.l	#Layer_Switch_Mappings,4(a0) 
		move.w	#$26BC,2(a0)
		bsr	J_ModifySpriteAttr_2P	
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#5,$18(a0)
		move.b	$28(a0),d0
		btst	#2,d0
		beq.s	loc_1BBC4
		addq.b	#2,$24(a0)
		and.w	#7,d0
		move.b	d0,$1A(a0)
		and.w	#3,d0
		add.w	d0,d0
		move.w	loc_1BBBC(pc,d0),$32(a0)
		move.w	$C(a0),d1
		lea	($FFFFB000).w,a1
		cmp.w	$C(a1),d1
		bcc.s	loc_1BBA8
		move.b	#1,$34(a0)
loc_1BBA8:
		lea	($FFFFB040).w,a1
		cmp.w	$C(a1),d1
		bcc.s	loc_1BBB8
		move.b	#1,$35(a0)
loc_1BBB8:
		bra	loc_1BD02
loc_1BBBC:
		dc.w	$20,$40,$80,$100
loc_1BBC4:
		and.w	#3,d0
		move.b	d0,$1A(a0)
		add.w	d0,d0
		move.w	loc_1BBBC(pc,d0),$32(a0)
		move.w	8(a0),d1
		lea	($FFFFB000).w,a1
		cmp.w	8(a1),d1
		bcc.s	loc_1BBE8
		move.b	#1,$34(a0)
loc_1BBE8:
		lea	($FFFFB040).w,a1
		cmp.w	8(a1),d1
		bcc.s	loc_1BBF8
		move.b	#1,$35(a0)
loc_1BBF8:
		tst.w	($FFFFFE08).w
		bne	loc_1BD00
		move.w	8(a0),d1
		lea	$34(a0),a2
		lea	($FFFFB000).w,a1
		bsr.s	loc_1BC12
		lea	($FFFFB040).w,a1
loc_1BC12:
		tst.b	(a2)+
		bne.s	loc_1BC8C
		cmp.w	8(a1),d1
		bhi	loc_1BD00
		move.b	#1,$FFFFFFFF(a2)
		move.w	$C(a0),d2
		move.w	d2,d3
		move.w	$32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	$C(a1),d4
		cmp.w	d2,d4
		blt	loc_1BD00
		cmp.w	d3,d4
		bge	loc_1BD00
		move.b	$28(a0),d0
		bpl.s	loc_1BC52
		btst	#1,$22(a1)
		bne	loc_1BD00
loc_1BC52:
		btst	#0,1(a0)
		bne.s	loc_1BC78
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
		btst	#3,d0
		beq.s	loc_1BC78
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_1BC78:
		and.w	#$7FFF,2(a1)
		btst	#5,d0
		beq.s	loc_1BD00
		or.w	#$8000,2(a1)
		bra.s	loc_1BD00
loc_1BC8C:
		cmp.w	8(a1),d1
		bls	loc_1BD00
		move.b	#0,$FFFFFFFF(a2)
		move.w	$C(a0),d2
		move.w	d2,d3
		move.w	$32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	$C(a1),d4
		cmp.w	d2,d4
		blt	loc_1BD00
		cmp.w	d3,d4
		bge	loc_1BD00
		move.b	$28(a0),d0
		bpl.s	loc_1BCC8
		btst	#1,$22(a1)
		bne	loc_1BD00
loc_1BCC8:
		btst	#0,1(a0)
		bne.s	loc_1BCEE
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
		btst	#4,d0
		beq.s	loc_1BCEE
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_1BCEE:
		and.w	#$7FFF,2(a1)
		btst	#6,d0
		beq.s	loc_1BD00
		or.w	#$8000,2(a1)
loc_1BD00:
		rts
loc_1BD02:
		tst.w	($FFFFFE08).w
		bne	loc_1BE0A
		move.w	$C(a0),d1
		lea	$34(a0),a2
		lea	($FFFFB000).w,a1
		bsr.s	loc_1BD1C
		lea	($FFFFB040).w,a1
loc_1BD1C:
		tst.b	(a2)+
		bne.s	loc_1BD96
		cmp.w	$C(a1),d1
		bhi	loc_1BE0A
		move.b	#1,$FFFFFFFF(a2)
		move.w	8(a0),d2
		move.w	d2,d3
		move.w	$32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	8(a1),d4
		cmp.w	d2,d4
		blt	loc_1BE0A
		cmp.w	d3,d4
		bge	loc_1BE0A
		move.b	$28(a0),d0
		bpl.s	loc_1BD5C
		btst	#1,$22(a1)
		bne	loc_1BE0A
loc_1BD5C:
		btst	#0,1(a0)
		bne.s	loc_1BD82
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
		btst	#3,d0
		beq.s	loc_1BD82
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_1BD82:
		and.w	#$7FFF,2(a1)
		btst	#5,d0
		beq.s	loc_1BE0A
		or.w	#$8000,2(a1)
		bra.s	loc_1BE0A
loc_1BD96:
		cmp.w	$C(a1),d1
		bls	loc_1BE0A
		move.b	#0,$FFFFFFFF(a2)
		move.w	8(a0),d2
		move.w	d2,d3
		move.w	$32(a0),d4
		sub.w	d4,d2
		add.w	d4,d3
		move.w	8(a1),d4
		cmp.w	d2,d4
		blt	loc_1BE0A
		cmp.w	d3,d4
		bge	loc_1BE0A
		move.b	$28(a0),d0
		bpl.s	loc_1BDD2
		btst	#1,$22(a1)
		bne	loc_1BE0A
loc_1BDD2:
		btst	#0,1(a0)
		bne.s	loc_1BDF8
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
		btst	#4,d0
		beq.s	loc_1BDF8
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_1BDF8:
		and.w	#$7FFF,2(a1)
		btst	#6,d0
		beq.s	loc_1BE0A
		or.w	#$8000,2(a1)
loc_1BE0A:
		rts	
Layer_Switch_Mappings: 
		dc.w	loc_1BE1C-Layer_Switch_Mappings
		dc.w	loc_1BE3E-Layer_Switch_Mappings
		dc.w	loc_1BE60-Layer_Switch_Mappings
		dc.w	loc_1BE60-Layer_Switch_Mappings
		dc.w	loc_1BE82-Layer_Switch_Mappings
		dc.w	loc_1BEA4-Layer_Switch_Mappings
		dc.w	loc_1BEC6-Layer_Switch_Mappings
		dc.w	loc_1BEC6-Layer_Switch_Mappings
loc_1BE1C:
		dc.w	$4
		dc.l	$E0050000,$FFF8,$F0050000,$FFF8
		dc.l	$50000,$FFF8,$10050000,$FFF8
loc_1BE3E:
		dc.w	$4
		dc.l	$C0050000,$FFF8,$E0050000,$FFF8
		dc.l	$50000,$FFF8,$30050000,$FFF8
loc_1BE60:
		dc.w	$4
		dc.l	$80050000,$FFF8,$E0050000,$FFF8
		dc.l	$50000,$FFF8,$70050000,$FFF8
loc_1BE82:
		dc.w	$4
		dc.l	$F8050000,$FFE0,$F8050000,$FFF0
		dc.l	$F8050000,0,$F8050000,$10
loc_1BEA4:
		dc.w	$4
		dc.l	$F8050000,$FFC0,$F8050000,$FFE0
		dc.l	$F8050000,0,$F8050000,$30
loc_1BEC6:
		dc.w	$4
		dc.l	$F8050000,$FF80,$F8050000,$FFE0
		dc.l	$F8050000,0,$F8050000,$70	
;=============================================================================== 
; Object 0x03 - Layer Switch (Low / Hi Plane Switch)	
; [ End ]
;===============================================================================	