;===============================================================================
; Object 0x85 - Spring that you hold down - Casino Night
; [ Begin ]
;===============================================================================	
loc_2678C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_267D6(pc,d0),d1
		jsr	loc_267D6(pc,d1)
		move.w	#$200,d0
		tst.w	($FFFFFFD8).w
		beq.s	loc_267A8
		bra	loc_26CD8
loc_267A8:
		move.w	8(a0),d1
		and.w	#$FF80,d1
		sub.w	($FFFFF7DA).w,d1
		cmp.w	#$280,d1
		bhi	loc_267C0
		bra	loc_26CD8
loc_267C0:
		lea	($FFFFFC00).w,a2
		moveq	#0,d0
		move.b	$23(a0),d0
		beq.s	loc_267D2
		bclr	#7,2(a2,d0)
loc_267D2:
		bra	loc_26CDE
loc_267D6:
		dc.w	loc_267DC-loc_267D6
		dc.w	loc_26896-loc_267D6
		dc.w	loc_26A36-loc_267D6
loc_267DC:
		addq.b	#2,$24(a0)
		move.l	#Diagonal_Pinball_Spring_Mappings,4(a0) 
		move.w	#$422,2(a0)
		tst.b	$28(a0)
		beq.s	loc_26802
		move.l	#Vertical_Pinball_Spring_Mappings,4(a0) 
		move.w	#$402,2(a0)
loc_26802:
		bsr	loc_26CE4
		move.b	#4,1(a0)
		bset	#6,1(a0)
		move.b	#1,$B(a0)
		tst.b	$28(a0)
		beq.s	loc_2685C
		addq.b	#2,$24(a0)
		move.b	#$20,$E(a0)
		move.b	#$18,$19(a0)
		move.w	8(a0),$2E(a0)
		move.w	$C(a0),$34(a0)
		move.w	8(a0),d2
		move.w	$C(a0),d3
		add.w	#0,d3
		move.b	#1,$F(a0)
		lea	$10(a0),a2
		move.w	d2,(a2)+
		move.w	d3,(a2)+
		move.w	#2,(a2)+
		bra	loc_26A36
loc_2685C:
		move.b	#$14,$E(a0)
		move.b	#$14,$19(a0)
		addq.w	#8,$C(a0)
		sub.w	#$18,$C(a0)
		move.w	$C(a0),$34(a0)
		move.w	8(a0),d2
		move.w	$C(a0),d3
		add.w	#$20,d3
		move.b	#1,$F(a0)
		lea	$10(a0),a2
		move.w	d2,(a2)+
		move.w	d3,(a2)+
		move.w	#2,(a2)+
loc_26896:
		move.b	#0,$3A(a0)
		move.w	$34(a0),d0
		add.w	$38(a0),d0
		move.w	d0,$C(a0)
		move.b	#2,$15(a0)
		cmp.w	#$10,$38(a0)
		bcs.s	loc_268BC
		move.b	#3,$15(a0)
loc_268BC:
		move.w	#$1F,d1
		move.w	#$10,d2
		move.w	#$D,d3
		move.w	8(a0),d4
		lea	$36(a0),a2
		lea	($FFFFB000).w,a1
		move.w	($FFFFF602).w,d5
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr.s	loc_26938
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		addq.w	#1,a2
		move.w	($FFFFF606).w,d5
		moveq	#4,d6
		bsr.s	loc_26938
		tst.w	$36(a0)
		beq.s	loc_26926
		tst.w	$38(a0)
		beq.s	loc_26936
		moveq	#0,d0
		cmp.b	#1,$36(a0)
		bne.s	loc_2690C
		or.w	($FFFFF602).w,d0
loc_2690C:
		cmp.b	#1,$37(a0)
		bne.s	loc_26918
		or.w	($FFFFF606).w,d0
loc_26918:
		and.w	#$7000,d0
		bne.s	loc_26936
		move.w	#$202,$36(a0)
		rts
loc_26926:
		move.b	#1,$B(a0)
		subq.w	#4,$38(a0)
		bcc.s	loc_26936
		clr.w	$38(a0)
loc_26936:
		rts
loc_26938:
		move.b	(a2),d0
		bne.s	loc_2698C
loc_2693C:	
		tst.w	($FFFFFE08).w
		bne.s	loc_2698A
		tst.w	$12(a1)
		bmi.s	loc_2698A
		bsr	loc_26CEA
		btst	d6,$22(a0)
		beq.s	loc_2698A
		move.b	#$81,$2A(a1)
		move.w	8(a0),8(a1)
		move.w	#0,$10(a1)
		move.w	#0,$12(a1)
		move.w	#0,$14(a1)
		bset	#2,$22(a1)
		move.b	#$E,$16(a1)
		move.b	#7,$17(a1)
		move.b	#2,$1C(a1)
		addq.b	#1,(a2)
loc_2698A:
		rts
loc_2698C:
		subq.b	#1,d0
		bne.s	loc_269EC
		and.w	#$7000,d5
		beq.s	loc_269DE
		tst.b	$3A(a0)
		bne.s	loc_269DE
		move.b	#1,$3A(a0)
		subq.b	#1,$32(a0)
		bpl.s	loc_269BA
		move.b	#3,$32(a0)
		cmp.w	#$20,$38(a0)
		beq.s	loc_269BA
		addq.w	#1,$38(a0)
loc_269BA:
		subq.b	#1,$33(a0)
		bpl.s	loc_269D8
		move.w	$38(a0),d0
		sub.w	#$20,d0
		neg.w	d0
		lsr.w	#1,d0
		move.b	d0,$33(a0)
		bchg	#2,$B(a0)
		bra.s	loc_269DE
loc_269D8:
		move.b	#1,$B(a0)
loc_269DE:
		move.w	$C(a0),d0
		sub.w	#$1E,d0
		move.w	d0,$C(a1)
		rts
loc_269EC:
		move.b	#0,(a2)
		bclr	d6,$22(a0)
		beq	loc_2693C
		move.w	$38(a0),d0
		add.w	#$10,d0
		lsl.w	#7,d0
		neg.w	d0
		move.w	d0,$12(a1)
		move.w	#0,$10(a1)
		move.w	#$800,$14(a1)
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#2,$24(a1)
		move.b	#0,$2A(a1)
		move.w	#$E2,d0
		jmp	Play_Sfx	
loc_26A36:
		move.b	#0,$3A(a0)
		move.w	$38(a0),d1
		lsr.w	#1,d1
		move.w	$2E(a0),d0
		sub.w	d1,d0
		move.w	d0,8(a0)
		move.w	$34(a0),d0
		add.w	d1,d0
		move.w	d0,$C(a0)
		move.b	#2,$15(a0)
		cmp.w	#$10,$38(a0)
		bcs.s	loc_26A6A
		move.b	#3,$15(a0)
loc_26A6A:
		move.w	#$23,d1
		move.w	#8,d2
		move.w	#5,d3
		move.w	8(a0),d4
		lea	$36(a0),a2
		lea	($FFFFB000).w,a1
		move.w	($FFFFF602).w,d5
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr.s	loc_26AE6
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		addq.w	#1,a2
		move.w	($FFFFF606).w,d5
		moveq	#4,d6
		bsr.s	loc_26AE6
		tst.w	$36(a0)
		beq.s	loc_26AD4
		tst.w	$38(a0)
		beq.s	loc_26AE4
		moveq	#0,d0
		cmp.b	#1,$36(a0)
		bne.s	loc_26ABA
		or.w	($FFFFF602).w,d0
loc_26ABA:
		cmp.b	#1,$37(a0)
		bne.s	loc_26AC6
		or.w	($FFFFF606).w,d0
loc_26AC6:
		and.w	#$7000,d0
		bne.s	loc_26AE4
		move.w	#$202,$36(a0)
		rts
loc_26AD4:
		move.b	#1,$B(a0)
		subq.w	#4,$38(a0)
		bcc.s	loc_26AE4
		clr.w	$38(a0)
loc_26AE4:
		rts
loc_26AE6:
		move.b	(a2),d0
		bne.s	loc_26B5A
		tst.w	($FFFFFE08).w
		bne.s	loc_26B58
		tst.w	$12(a1)
		bmi.s	loc_26B58
		bsr	loc_26CEA
		btst	d6,$22(a0)
		bne.s	loc_26B0E
		move.b	d6,d0
		addq.b	#2,d0
		btst	d0,$22(a0)
		beq.s	loc_26B58
		bset	d6,$22(a0)
loc_26B0E:
		move.b	#$81,$2A(a1)
		move.w	8(a0),8(a1)
		add.w	#$13,8(a1)
		move.w	$C(a0),$C(a1)
		sub.w	#$13,$C(a1)
		move.w	#0,$10(a1)
		move.w	#0,$12(a1)
		move.w	#0,$14(a1)
		bset	#2,$22(a1)
		move.b	#$E,$16(a1)
		move.b	#7,$17(a1)
		move.b	#2,$1C(a1)
		addq.b	#1,(a2)
loc_26B58:
		rts
loc_26B5A:
		subq.b	#1,d0
		bne.s	loc_26BC6
		and.w	#$7000,d5
		beq.s	loc_26BAC
		tst.b	$3A(a0)
		bne.s	loc_26BAC
		move.b	#1,$3A(a0)
		subq.b	#1,$32(a0)
		bpl.s	loc_26B88
		move.b	#3,$32(a0)
		cmp.w	#$1C,$38(a0)
		beq.s	loc_26B88
		addq.w	#1,$38(a0)
loc_26B88:
		subq.b	#1,$33(a0)
		bpl.s	loc_26BA6
		move.w	$38(a0),d0
		sub.w	#$1C,d0
		neg.w	d0
		lsr.w	#1,d0
		move.b	d0,$33(a0)
		bchg	#2,$B(a0)
		bra.s	loc_26BAC
loc_26BA6:
		move.b	#1,$B(a0)
loc_26BAC:
		move.w	8(a0),d0
		add.w	#$13,d0
		move.w	d0,8(a1)
		move.w	$C(a0),d0
		sub.w	#$13,d0
		move.w	d0,$C(a1)
		rts
loc_26BC6:
		move.b	#0,(a2)
		bclr	d6,$22(a0)
		beq	loc_26B58
		move.w	$38(a0),d0
		add.w	#4,d0
		lsl.w	#7,d0
		move.w	d0,$10(a1)
		neg.w	d0
		move.w	d0,$12(a1)
		move.w	#$800,$14(a1)
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		tst.b	$28(a0)
		bpl.s	loc_26C16
		neg.w	d0
		move.w	d0,$14(a1)
		bclr	#0,$22(a1)
		bclr	#1,$22(a1)
		move.b	#$E0,$26(a1)
loc_26C16:
		move.b	#2,$24(a1)
		move.b	#0,$2A(a1)
		move.w	#$E2,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------	
Diagonal_Pinball_Spring_Mappings: 
		dc.w	loc_26C38-Diagonal_Pinball_Spring_Mappings
		dc.w	loc_26C5A-Diagonal_Pinball_Spring_Mappings
		dc.w	loc_26C64-Diagonal_Pinball_Spring_Mappings
		dc.w	loc_26C7E-Diagonal_Pinball_Spring_Mappings
		dc.w	loc_26C90-Diagonal_Pinball_Spring_Mappings
		dc.w	loc_26C90-Diagonal_Pinball_Spring_Mappings
loc_26C38:
		dc.w	$4
		dc.l	$D8090000,$FFF4,$E8090006,$3FFF4
		dc.l	$F8090006,$3FFF4,$809000C,$6FFF4
loc_26C5A:
		dc.w	$1
		dc.l	$F0090000,$FFF4
loc_26C64:
		dc.w	$3
		dc.l	$E0090006,$3FFF4,$F0090006,$3FFF4
		dc.l	$9000C,$6FFF4
loc_26C7E:
		dc.w	$2
		dc.l	$F0090006,$3FFF4,$9000C,$6FFF4
loc_26C90:
		dc.w	$1
		dc.l	$F0092000,$2000FFF4 
;-------------------------------------------------------------------------------
Vertical_Pinball_Spring_Mappings: 
		dc.w	loc_26CA6-Vertical_Pinball_Spring_Mappings
		dc.w	loc_26CB8-Vertical_Pinball_Spring_Mappings
		dc.w	loc_26CC2-Vertical_Pinball_Spring_Mappings
		dc.w	loc_26CC2-Vertical_Pinball_Spring_Mappings
		dc.w	loc_26CCC-Vertical_Pinball_Spring_Mappings
		dc.w	loc_26CCC-Vertical_Pinball_Spring_Mappings
loc_26CA6:
		dc.w	$2
		dc.l	$F00F0000,$FFF0,$F0010,$8FFE0
loc_26CB8:
		dc.w	$1
		dc.l	$F00F0000,$FFF0
loc_26CC2:
		dc.w	$1
		dc.l	$F0010,$8FFE0
loc_26CCC:
		dc.w	$1
		dc.l	$F00F2000,$2000FFF0	
;===============================================================================
; Object 0x85 - Spring that you hold down - Casino Night
; [ End ]
;===============================================================================