;=============================================================================== 
; Object 0x6B - Metropolis Platforms / Chemical Plant - Block
; [ Begin ]	
;===============================================================================	
loc_23B20:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_23B2E(pc,d0),d1
		jmp	loc_23B2E(pc,d1)
loc_23B2E:
		dc.w	loc_23B3A-loc_23B2E
		dc.w	loc_23BBC-loc_23B2E
loc_23B32:	
		dc.b	$20,$C,1,0,$10,$10,0,$0
loc_23B3A:
		addq.b	#2,$24(a0)
		move.l	#Mz_Platform_Mappings,4(a0) 
		move.w	#$6000,2(a0)
		cmp.b	#$D,($FFFFFE10).w
		bne.s	loc_23B62
		move.l	#CPz_Block_Mappings,4(a0) 
		move.w	#$6418,2(a0)
loc_23B62:
		bsr	loc_23DC4
		move.b	#4,1(a0)
		move.b	#3,$18(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsr.w	#2,d0
		and.w	#$1C,d0
		lea	loc_23B32(pc,d0),a2
		move.b	(a2)+,$19(a0)
		move.b	(a2)+,$16(a0)
		move.b	(a2)+,$1A(a0)
		move.w	8(a0),$34(a0)
		move.w	$C(a0),$30(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		and.w	#$F,d0
		subq.w	#8,d0
		bcs.s	loc_23BBC
		lsl.w	#2,d0
		lea	($FFFFFE8A).w,a2
		lea	0(a2,d0),a2
		tst.w	(a2)
		bpl.s	loc_23BBC
		bchg	#0,$22(a0)
loc_23BBC:
		move.w	8(a0),-(sp)
		moveq	#0,d0
		move.b	$28(a0),d0
		and.w	#$F,d0
		add.w	d0,d0
		move.w	loc_23BFC(pc,d0),d1
		jsr	loc_23BFC(pc,d1)
		move.w	(sp)+,d4
		tst.b	1(a0)
		bpl.s	loc_23BF4
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		bsr	loc_23DCA
loc_23BF4:
		move.w	$34(a0),d0
		bra	loc_23DD0
loc_23BFC:
		dc.w	loc_23C14-loc_23BFC
		dc.w	loc_23C16-loc_23BFC
		dc.w	loc_23C22-loc_23BFC
		dc.w	loc_23C44-loc_23BFC
		dc.w	loc_23C50-loc_23BFC
		dc.w	loc_23C72-loc_23BFC
		dc.w	loc_23C90-loc_23BFC
		dc.w	loc_23CBE-loc_23BFC
		dc.w	loc_23CF6-loc_23BFC
		dc.w	loc_23D08-loc_23BFC
		dc.w	loc_23D18-loc_23BFC
		dc.w	loc_23D28-loc_23BFC
loc_23C14:
		rts
loc_23C16:
		move.w	#$40,d1
		moveq	#0,d0
		move.b	($FFFFFE68).w,d0
		bra.s	loc_23C2C
loc_23C22:
		move.w	#$80,d1
		moveq	#0,d0
		move.b	($FFFFFE7C).w,d0
loc_23C2C:
		btst	#0,$22(a0)
		beq.s	loc_23C38
		neg.w	d0
		add.w	d1,d0
loc_23C38:
		move.w	$34(a0),d1
		sub.w	d0,d1
		move.w	d1,8(a0)
		rts
loc_23C44:
		move.w	#$40,d1
		moveq	#0,d0
		move.b	($FFFFFE68).w,d0
		bra.s	loc_23C5A
loc_23C50:
		move.w	#$80,d1
		moveq	#0,d0
		move.b	($FFFFFE7C).w,d0
loc_23C5A:
		btst	#0,$22(a0)
		beq.s	loc_23C66
		neg.w	d0
		add.w	d1,d0
loc_23C66:
		move.w	$30(a0),d1
		sub.w	d0,d1
		move.w	d1,$C(a0)
		rts
loc_23C72:
		move.b	($FFFFFE60).w,d0
		lsr.w	#1,d0
		add.w	$30(a0),d0
		move.w	d0,$C(a0)
		move.b	$22(a0),d1
		and.b	#$18,d1
		beq.s	loc_23C8E
		addq.b	#1,$28(a0)
loc_23C8E:
		rts
loc_23C90:
		move.l	$C(a0),d3
		move.w	$12(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d3,$C(a0)
		add.w	#8,$12(a0)
		move.w	($FFFFEECE).w,d0
		add.w	#$E0,d0
		cmp.w	$C(a0),d0
		bcc.s	loc_23CBC
		move.b	#0,$28(a0)
loc_23CBC:
		rts
loc_23CBE:
		tst.b	$38(a0)
		bne.s	loc_23CD4
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_23CF4
		move.b	#1,$38(a0)
loc_23CD4:
		bsr	loc_23DD6
		moveq	#8,d1
		move.w	$30(a0),d0
		add.w	#$70,d0
		cmp.w	$C(a0),d0
		bcc.s	loc_23CEA
		neg.w	d1
loc_23CEA:
		add.w	d1,$12(a0)
		bne.s	loc_23CF4
		clr.b	$28(a0)
loc_23CF4:
		rts
loc_23CF6:
		move.w	#$10,d1
		moveq	#0,d0
		move.b	($FFFFFE88).w,d0
		lsr.w	#1,d0
		move.w	($FFFFFE8A).w,d3
		bra.s	loc_23D36
loc_23D08:
		move.w	#$30,d1
		moveq	#0,d0
		move.b	($FFFFFE8C).w,d0
		move.w	($FFFFFE8E).w,d3
		bra.s	loc_23D36
loc_23D18:
		move.w	#$50,d1
		moveq	#0,d0
		move.b	($FFFFFE90).w,d0
		move.w	($FFFFFE92).w,d3
		bra.s	loc_23D36
loc_23D28:
		move.w	#$70,d1
		moveq	#0,d0
		move.b	($FFFFFE94).w,d0
		move.w	($FFFFFE96).w,d3
loc_23D36:
		tst.w	d3
		bne.s	loc_23D44
		addq.b	#1,$22(a0)
		and.b	#3,$22(a0)
loc_23D44:
		move.b	$22(a0),d2
		and.b	#3,d2
		bne.s	loc_23D64
		sub.w	d1,d0
		add.w	$34(a0),d0
		move.w	d0,8(a0)
		neg.w	d1
		add.w	$30(a0),d1
		move.w	d1,$C(a0)
		rts
loc_23D64:
		subq.b	#1,d2
		bne.s	loc_23D82
		subq.w	#1,d1
		sub.w	d1,d0
		neg.w	d0
		add.w	$30(a0),d0
		move.w	d0,$C(a0)
		addq.w	#1,d1
		add.w	$34(a0),d1
		move.w	d1,8(a0)
		rts
loc_23D82:
		subq.b	#1,d2
		bne.s	loc_23DA0
		subq.w	#1,d1
		sub.w	d1,d0
		neg.w	d0
		add.w	$34(a0),d0
		move.w	d0,8(a0)
		addq.w	#1,d1
		add.w	$30(a0),d1
		move.w	d1,$C(a0)
		rts
loc_23DA0:
		sub.w	d1,d0
		add.w	$30(a0),d0
		move.w	d0,$C(a0)
		neg.w	d1
		add.w	$34(a0),d1
		move.w	d1,8(a0)
		rts
;-------------------------------------------------------------------------------
CPz_Block_Mappings: 
		dc.w	loc_23DB8-CPz_Block_Mappings
loc_23DB8:
		dc.w	$1
		dc.l	$F00F0000,$FFF0	
;=============================================================================== 
; Object 0x6B - Metropolis Platforms / Chemical Plant - Block
; [ End ]	
;===============================================================================	