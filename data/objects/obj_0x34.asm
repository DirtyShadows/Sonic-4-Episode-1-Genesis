;===============================================================================
; Object 0x34 Title Cards
; [ Begin ]
;===============================================================================	
loc_10C08:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_10C16(pc,d0),d1
		jmp	loc_10C16(pc,d1)
loc_10C16:
		dc.w	loc_10C2E-loc_10C16
		dc.w	loc_10CE2-loc_10C16
		dc.w	loc_10D18-loc_10C16
		dc.w	loc_10D66-loc_10C16
		dc.w	loc_10D9C-loc_10C16
		dc.w	loc_10DA8-loc_10C16
		dc.w	loc_10DAE-loc_10C16
		dc.w	loc_10E02-loc_10C16
		dc.w	loc_10E44-loc_10C16
		dc.w	loc_10EA6-loc_10C16
		dc.w	loc_10EBE-loc_10C16
		dc.w	loc_10ED8-loc_10C16
loc_10C2E:
		lea	(a0),a1
		lea	loc_10C94(pc),a2
		moveq	#5,d1
loc_10C36:	
		move.b	#$34,0(a1)
		move.b	(a2)+,$24(a1)
		move.l	#Title_Cards_Mappings,4(a1) 
		move.b	(a2)+,$1A(a1)
		move.b	(a2)+,$19(a1)
		move.b	(a2)+,$1E(a1)
		move.w	(a2),8(a1)
		move.w	(a2)+,$32(a1)
		move.w	(a2)+,$30(a1)
		move.w	(a2)+,$A(a1)
		move.b	#0,1(a1)
		lea	$40(a1),a1
		dbra	d1,loc_10C36
		move.w	#$26,($FFFFD1B4).w
		clr.w	($FFFFF616).w
		move.w	#$FF20,($FFFFF61E).w
		lea	($FFFFE000).w,a1
		moveq	#0,d0
		move.w	#$FF,d1
loc_10C8C:	
		move.l	d0,(a1)+
		dbra	d1,loc_10C8C
		rts
loc_10C94:
		dc.w	$800,$801B,$240,$120,$B8,$A11,$401C,$28
		dc.w	$148,$D0,$C12,$181C,$68,$188,$D0,$200
		dc.w	0,0,0,0,$415,$4808,$2A8,$168
		dc.w	$120,$616,$815,$80,$F0,$F0
loc_10CD0:	
		subq.b	#1,$1E(a0)
		bne.s	loc_10CDE
		move.b	#1,$1E(a0)
		rts
loc_10CDE:
		addq.w	#4,sp
		rts
loc_10CE2:
		moveq	#$10,d0
		moveq	#8,d1
;		tst.w	($FFFFFFD8).w
		sne	d6
		jmp	loc_10CF2
		moveq	#$20,d0
		moveq	#7,d1
loc_10CF2:
		move.w	$34(a0),d2
		cmp.w	d0,d2
		beq.s	loc_10D16
		lsl.w	d1,d2
		move.w	#$C000,d0
		add.w	d2,d0
		move.w	d0,$36(a0)
		tst.b	d6
		beq.s	loc_10D12
		add.w	#$A000,d2
		move.w	d2,$38(a0)
loc_10D12:
		addq.w	#1,$34(a0)
loc_10D16:
		rts
loc_10D18:
		jsr	loc_10CD0(pc)
		move.w	$34(a0),d0
		bmi	loc_10DDC
		add.w	d0,d0
		move.w	#$500,d1
;		tst.w	($FFFFFFD8).w
		sne	d6
;		bne.s	loc_10D34
		add.w	d1,d1
loc_10D34:
		move.w	#$C000,d2
		add.w	d0,d2
		add.w	d1,d2
		move.w	d2,$36(a0)
		tst.b	d6
		beq.s	loc_10D4E
		add.w	#$A000,d1
		add.w	d0,d1
		move.w	d1,$38(a0)
loc_10D4E:
		subq.w	#2,$34(a0)
		move.w	$34(a0),$3A(a0)
		cmp.w	#6,$34(a0)
		seq	$34(a0)
		bra	loc_10DDC
loc_10D66:
		jsr	loc_10CD0(pc)
		tst.w	$34(a0)
		bmi	loc_10DDC
		move.w	#$C000,$36(a0)
;		tst.w	($FFFFFFD8).w
		jmp	loc_10D84
		move.w	#$A000,$38(a0)
loc_10D84:
		addq.w	#2,$34(a0)
		move.w	$34(a0),$3A(a0)
		cmp.w	#$E,$34(a0)
		seq	$34(a0)
		bra	loc_10DDC
loc_10D9C:
		jsr	loc_10CD0(pc)
		move.b	($FFFFFE10).w,$1A(a0)
		bra.s	loc_10DDC
loc_10DA8:
		jsr	loc_10CD0(pc)
		bra.s	loc_10DDC
loc_10DAE:
		jsr	loc_10CD0(pc)
		move.b	($FFFFFE10).w,d0
		cmp.b	#$10,d0
		beq.s	loc_10DFE
		cmp.b	#6,d0
		beq.s	loc_10DFE
		cmp.b	#$E,d0
		beq.s	loc_10DFE
		move.b	($FFFFFE11).w,d1
		add.b	#$12,d1
		cmp.b	#5,d0
		bne.s	loc_10DD8
		moveq	#$14,d1
loc_10DD8:
		move.b	d1,$1A(a0)
loc_10DDC:
		moveq	#$10,d0
		move.w	8(a0),d1
		cmp.w	$30(a0),d1
		beq.s	loc_10DF8
		bhi.s	loc_10DEC
		neg.w	d0
loc_10DEC:
		sub.w	d0,8(a0)
		cmp.w	#$200,8(a0)
		bhi.s	loc_10DFC
loc_10DF8:
		bra	displaySprite	
loc_10DFC:
		rts
loc_10DFE:
		bra	deleteObject	
loc_10E02:
		move.w	$34(a0),d0
		bpl.s	loc_10E14
		move.b	#$10,$FFFFFFE4(a0)
		clr.w	$FFFFFFF4(a0)
		bra.s	loc_10DFE
loc_10E14:
		add.w	d0,d0
		move.w	#$C000,$36(a0)
		add.w	d0,$36(a0)
;		tst.w	($FFFFFFD8).w
		jmp	loc_10E30
		move.w	#$A000,$38(a0)
		add.w	d0,$38(a0)
loc_10E30:
		subq.w	#4,$34(a0)
		cmp.w	#$FFFE,$34(a0)
		bne.s	loc_10E40
		clr.w	$34(a0)
loc_10E40:
		bra	loc_10E84
loc_10E44:
		move.w	$34(a0),d0
		cmp.w	#$28,d0
		bne.s	loc_10E56
		move.b	#$12,$FFFFFFE4(a0)
		bra.s	loc_10DFE
loc_10E56:
		add.w	d0,d0
		move.w	#$500,d1
;		tst.w	($FFFFFFD8).w
		sne	d6
;		bne.s	loc_10E66
		add.w	d1,d1
loc_10E66:
		move.w	#$C000,d2
		add.w	d0,d2
		add.w	d1,d2
		move.w	d2,$36(a0)
		tst.b	d6
		beq.s	loc_10E80
		add.w	#$A000,d1
		add.w	d0,d1
		move.w	d1,$38(a0)
loc_10E80:
		addq.w	#4,$34(a0)
loc_10E84:
		moveq	#$20,d0
		move.w	8(a0),d1
		cmp.w	$32(a0),d1
		beq.s	loc_10EA4
		bhi.s	loc_10E94
		neg.w	d0
loc_10E94:
		sub.w	d0,8(a0)
		cmp.w	#$200,8(a0)
		bhi.s	loc_10EA4
		bra	displaySprite	
loc_10EA4:
		rts
loc_10EA6:
		move.l	a0,-(sp)
		move.l	d7,-(sp)
		bsr	Background_Scroll_Layer 
		move.l	(sp)+,d7
		move.l	(sp)+,a0
		add.b	#2,$24(a0)
		move.w	#$F0,$34(a0)
loc_10EBE:
		move.w	$34(a0),d0
		sub.w	#$20,d0
		cmp.w	#$FFD0,d0
		beq	loc_10DFE
		move.w	d0,$34(a0)
		move.w	d0,$36(a0)
		rts
loc_10ED8:
		tst.w	$1E(a0)
		beq.s	loc_10EE4
		subq.w	#1,$1E(a0)
		bra.s	loc_10F00
loc_10EE4:
		moveq	#$20,d0
		move.w	8(a0),d1
		cmp.w	$32(a0),d1
		beq.s	loc_10F04
		bhi.s	loc_10EF4
		neg.w	d0
loc_10EF4:
		sub.w	d0,8(a0)
		cmp.w	#$200,8(a0)
		bhi.s	loc_10F04
loc_10F00:
		bra	displaySprite	
loc_10F04:
		cmpa.w	#$D080,a0
		bne.s	loc_10F1E
		moveq	#2,d0
		bsr	J_LoadPLC_02	
		moveq	#0,d0
		move.b	($FFFFFE10).w,d0
		move.b	Flickies_Select_Array(pc,d0),d0 
		bsr	J_LoadPLC_02	
loc_10F1E:
		bra	deleteObject	
Flickies_Select_Array: 
		dc.b	$32,$32,$32,$32,$34,$34,$34,$34,$36,$36,$37,$33,$39,$3A,$35,$3B
		dc.b	$38,$38	
;===============================================================================
; Object 0x34 Title Cards
; [ End ]
;===============================================================================