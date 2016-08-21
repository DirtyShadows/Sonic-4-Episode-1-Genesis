;=============================================================================== 
; Object 0x6C - Moving platforms - clockwise
; [ Begin ]	
;===============================================================================	
loc_23DDC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_23E04(pc,d0),d1
		jsr	loc_23E04(pc,d1)
		move.w	$30(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_23E00
		bra	loc_24130
loc_23E00:
		bra	loc_24136
loc_23E04:
		dc.w	loc_23E08-loc_23E04
		dc.w	loc_23F10-loc_23E04
loc_23E08:
		move.b	$28(a0),d0
		bmi	loc_23EBA
		addq.b	#2,$24(a0)
		move.l	#Mz_Moving_Platforms_Mappings,4(a0) 
		move.w	#$63F9,2(a0)
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		bsr	loc_24142
		move.b	#0,$1A(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		move.w	d0,d1
		lsr.w	#3,d0
		and.w	#$1E,d0
		lea	Mz_Moving_Platforms_Move_Data(pc),a2 
		adda.w	0(a2,d0),a2
		move.w	(a2)+,$38(a0)
		move.l	a2,$3C(a0)
		and.w	#$F,d1
		lsl.w	#2,d1
		move.b	d1,$38(a0)
		move.b	#4,$3A(a0)
		btst	#0,$22(a0)
		beq.s	loc_23E9A
		neg.b	$3A(a0)
		moveq	#0,d1
		move.b	$38(a0),d1
		add.b	$3A(a0),d1
		cmp.b	$39(a0),d1
		bcs.s	loc_23E96
		move.b	d1,d0
		moveq	#0,d1
		tst.b	d0
		bpl.s	loc_23E96
		move.b	$39(a0),d1
		subq.b	#4,d1
loc_23E96:
		move.b	d1,$38(a0)
loc_23E9A:
		move.w	0(a2,d1),d0
		add.w	$30(a0),d0
		move.w	d0,$34(a0)
		move.w	2(a2,d1),d0
		add.w	$32(a0),d0
		move.w	d0,$36(a0)
		bsr	loc_23F82
		bra	loc_23F10
loc_23EBA:
		and.w	#$7F,d0
		add.w	d0,d0
		lea	(Mz_Moving_Platforms_Move_Data_01),a2 
		adda.w	0(a2,d0),a2
		move.w	(a2)+,d1
		move.l	a0,a1
		move.w	8(a0),d2
		move.w	$C(a0),d3
		bra.s	loc_23EDE
loc_23ED8:	
		bsr	loc_2413C
		bne.s	loc_23F08
loc_23EDE:
		move.b	#$6C,0(a1)
		move.w	(a2)+,d0
		add.w	d2,d0
		move.w	d0,8(a1)
		move.w	(a2)+,d0
		add.w	d3,d0
		move.w	d0,$C(a1)
		move.w	d2,$30(a1)
		move.w	d3,$32(a1)
		move.w	(a2)+,d0
		move.b	d0,$28(a1)
		move.b	$22(a0),$22(a1)
loc_23F08:
		dbra	d1,loc_23ED8
		addq.l	#4,sp
		rts
loc_23F10:
		move.w	8(a0),-(sp)
		bsr	loc_23F26
		moveq	#0,d1
		move.b	$19(a0),d1
		moveq	#8,d3
		move.w	(sp)+,d4
		bra	loc_24148
loc_23F26:
		move.w	8(a0),d0
		cmp.w	$34(a0),d0
		bne.s	loc_23F7C
		move.w	$C(a0),d0
		cmp.w	$36(a0),d0
		bne.s	loc_23F7C
		moveq	#0,d1
		move.b	$38(a0),d1
		add.b	$3A(a0),d1
		cmp.b	$39(a0),d1
		bcs.s	loc_23F58
		move.b	d1,d0
		moveq	#0,d1
		tst.b	d0
		bpl.s	loc_23F58
		move.b	$39(a0),d1
		subq.b	#4,d1
loc_23F58:
		move.b	d1,$38(a0)
		move.l	$3C(a0),a1
		move.w	0(a1,d1),d0
		add.w	$30(a0),d0
		move.w	d0,$34(a0)
		move.w	2(a1,d1),d0
		add.w	$32(a0),d0
		move.w	d0,$36(a0)
		bsr	loc_23F82
loc_23F7C:
		bsr	loc_2414E
		rts
loc_23F82:
		moveq	#0,d0
		move.w	#$FF00,d2
		move.w	8(a0),d0
		sub.w	$34(a0),d0
		bcc.s	loc_23F96
		neg.w	d0
		neg.w	d2
loc_23F96:
		moveq	#0,d1
		move.w	#$FF00,d3
		move.w	$C(a0),d1
		sub.w	$36(a0),d1
		bcc.s	loc_23FAA
		neg.w	d1
		neg.w	d3
loc_23FAA:
		cmp.w	d0,d1
		bcs.s	loc_23FD4
		move.w	8(a0),d0
		sub.w	$34(a0),d0
		beq.s	loc_23FC0
		ext.l	d0
		asl.l	#8,d0
		divs.w	d1,d0
		neg.w	d0
loc_23FC0:
		move.w	d0,$10(a0)
		move.w	d3,$12(a0)
		swap.w	d0
		move.w	d0,$A(a0)
		clr.w	$E(a0)
		rts
loc_23FD4:
		move.w	$C(a0),d1
		sub.w	$36(a0),d1
		beq.s	loc_23FE6
		ext.l	d1
		asl.l	#8,d1
		divs.w	d0,d1
		neg.w	d1
loc_23FE6:
		move.w	d1,$12(a0)
		move.w	d2,$10(a0)
		swap.w	d1
		move.w	d1,$E(a0)
		clr.w	$A(a0)
		rts
;-------------------------------------------------------------------------------
Mz_Moving_Platforms_Move_Data: 
		dc.w	loc_24000-Mz_Moving_Platforms_Move_Data
		dc.w	loc_2402A-Mz_Moving_Platforms_Move_Data
		dc.w	loc_24054-Mz_Moving_Platforms_Move_Data
loc_24000:
		dc.w	$28
		dc.b	0,0,0,0,$FF,$EA,0,$A,$FF,$E0,0,$20,$FF,$E0,0,$E0
		dc.b	$FF,$EA,0,$F6,0,0,1,0,0,$16,0,$F6,0,$20,0,$E0
		dc.b	0,$20,0,$20,0,$16,0,$A
loc_2402A:
		dc.w	$28
		dc.b	0,0,0,0,$FF,$EA,0,$A,$FF,$E0,0,$20,$FF,$E0,1,$60
		dc.b	$FF,$EA,1,$76,0,0,1,$80,0,$16,1,$76,0,$20,1,$60
		dc.b	0,$20,0,$20,0,$16,0,$A
loc_24054:
		dc.w	$28
		dc.b	0,0,0,0,$FF,$EA,0,$A,$FF,$E0,0,$20,$FF,$E0,1,$E0
		dc.b	$FF,$EA,1,$F6,0,0,2,0,0,$16,1,$F6,0,$20,1,$E0
		dc.b	0,$20,0,$20,0,$16,0,$A
;-------------------------------------------------------------------------------
Mz_Moving_Platforms_Move_Data_01: 
		dc.w	loc_24084-Mz_Moving_Platforms_Move_Data_01
		dc.w	loc_240B6-Mz_Moving_Platforms_Move_Data_01
		dc.w	loc_240E8-Mz_Moving_Platforms_Move_Data_01
loc_24084:
		dc.w	$7
		dc.b	0,0,0,0,0,1,$FF,$E0,0,$3A,0,3,$FF,$E0,0,$80
		dc.b	0,3,$FF,$E0,0,$C6,0,3,0,0,1,0,0,6,0,$20
		dc.b	0,$C6,0,8,0,$20,0,$80,0,8,0,$20,0,$3A,0,$8
loc_240B6:
		dc.w	$7
		dc.b	0,0,0,0,0,$11,$FF,$E0,0,$5A,0,$13,$FF,$E0,0,$C0
		dc.b	0,$13,$FF,$E0,1,$26,0,$13,0,0,1,$80,0,$16,0,$20
		dc.b	1,$26,0,$18,0,$20,0,$C0,0,$18,0,$20,0,$5A,0,$18
loc_240E8:
		dc.w	$7
		dc.b	0,0,0,0,0,$21,$FF,$E0,0,$7A,0,$23,$FF,$E0,1,$0
		dc.b	0,$23,$FF,$E0,1,$86,0,$23,0,0,2,0,0,$26,0,$20
		dc.b	1,$86,0,$28,0,$20,1,0,0,$28,0,$20,0,$7A,0,$28
;-------------------------------------------------------------------------------	
Mz_Moving_Platforms_Mappings: 
		dc.w	loc_2411C-Mz_Moving_Platforms_Mappings
loc_2411C:
		dc.w	$2
		dc.l	$F8050000,$FFF0,$F8050800,$8000000	
;=============================================================================== 
; Object 0x6C - Moving platforms - clockwise
; [ End ]	
;===============================================================================	