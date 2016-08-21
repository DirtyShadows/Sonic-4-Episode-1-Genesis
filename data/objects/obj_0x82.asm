;===============================================================================
; Object 0x82 -> Pillar that falls when you stand on it - Neo Green Hill
; [ Begin ]
;===============================================================================
loc_25E98:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_25EA6(pc,d0),d1
		jmp	loc_25EA6(pc,d1)
loc_25EA6:
		dc.w	loc_25EB2-loc_25EA6
		dc.w	loc_25F1A-loc_25EA6
loc_25EAA:
		dc.b	$20,8,$1C,$30,$10,$10,$10,$10
loc_25EB2:
		addq.b	#2,$24(a0)
		move.l	#Falling_Pillar_Mappings,4(a0) 
		move.w	#0,2(a0)
		bsr	loc_260E6
		move.b	#4,1(a0)
		move.b	#3,$18(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsr.w	#3,d0
		and.w	#$E,d0
		lea	loc_25EAA(pc,d0),a2
		move.b	(a2)+,$19(a0)
		move.b	(a2),$16(a0)
		lsr.w	#1,d0
		move.b	d0,$1A(a0)
		move.w	8(a0),$34(a0)
		move.w	$C(a0),$30(a0)
		move.b	$28(a0),d0
		and.b	#$F,d0
		beq.s	loc_25F14
		cmp.b	#7,d0
		beq.s	loc_25F14
		move.b	#1,$38(a0)
loc_25F14:
		and.b	#$F,$28(a0)
loc_25F1A:
		move.w	8(a0),-(sp)
		moveq	#0,d0
		move.b	$28(a0),d0
		add.w	d0,d0
		move.w	loc_25F60(pc,d0),d1
		jsr	loc_25F60(pc,d1)
		move.w	(sp)+,d4
		tst.b	1(a0)
		bpl.s	loc_25F58
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		bsr	loc_260F2
		swap.w	d6
		move.b	d6,$3F(a0)
		bsr	loc_2603A
loc_25F58:
		move.w	$34(a0),d0
		bra	loc_260F8
loc_25F60:
		dc.w	loc_25F70-loc_25F60
		dc.w	loc_25F72-loc_25F60
		dc.w	loc_25F9A-loc_25F60
		dc.w	loc_25F72-loc_25F60
		dc.w	loc_25FBE-loc_25F60
		dc.w	loc_25FE0-loc_25F60
		dc.w	loc_25F9A-loc_25F60
		dc.w	loc_25FF4-loc_25F60
loc_25F70:
		rts
loc_25F72:
		tst.w	$36(a0)
		bne.s	loc_25F8A
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_25F88
		move.w	#$1E,$36(a0)
loc_25F88:
		rts
loc_25F8A:
		subq.w	#1,$36(a0)
		bne.s	loc_25F88
		addq.b	#1,$28(a0)
		clr.b	$38(a0)
		rts
loc_25F9A:
		bsr	loc_260FE
		add.w	#8,$12(a0)
		bsr	loc_260E0
		tst.w	d1
		bpl	loc_25FBC
		addq.w	#1,d1
		add.w	d1,$C(a0)
		clr.w	$12(a0)
		clr.b	$28(a0)
loc_25FBC:
		rts
loc_25FBE:
		bsr	loc_260FE
		sub.w	#8,$12(a0)
		bsr	loc_260EC
		tst.w	d1
		bpl	loc_25FDE
		sub.w	d1,$C(a0)
		clr.w	$12(a0)
		clr.b	$28(a0)
loc_25FDE:
		rts
loc_25FE0:
		move.b	$3F(a0),d0
		and.b	#3,d0
		beq.s	loc_25FF2
		addq.b	#1,$28(a0)
		clr.b	$38(a0)
loc_25FF2:
		rts
loc_25FF4:
		move.w	($FFFFF646).w,d0
		sub.w	$C(a0),d0
		beq.s	loc_26038
		bcc.s	loc_2601C
		cmp.w	#$FFFE,d0
		bge.s	loc_26008
		moveq	#$FFFFFFFE,d0
loc_26008:
		add.w	d0,$C(a0)
		bsr	loc_260EC
		tst.w	d1
		bpl	loc_2601A
		sub.w	d1,$C(a0)
loc_2601A:
		rts
loc_2601C:
		cmp.w	#2,d0
		ble.s	loc_26024
		moveq	#2,d0
loc_26024:
		add.w	d0,$C(a0)
		bsr	loc_260E0
		tst.w	d1
		bpl	loc_26038
		addq.w	#1,d1
		add.w	d1,$C(a0)
loc_26038:
		rts
loc_2603A:
		tst.b	$38(a0)
		beq.s	loc_2607C
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_26056
		tst.b	$3E(a0)
		beq.s	loc_2607C
		subq.b	#4,$3E(a0)
		bra.s	loc_26062
loc_26056:
		cmp.b	#$40,$3E(a0)
		beq.s	loc_2607C
		addq.b	#4,$3E(a0)
loc_26062:
		move.b	$3E(a0),d0
		jsr	CalcSine	
		move.w	#$400,d1
		muls.w	d1,d0
		swap.w	d0
		add.w	$30(a0),d0
		move.w	d0,$C(a0)
loc_2607C:
		rts
;-------------------------------------------------------------------------------
Falling_Pillar_Mappings: 
		dc.w	loc_26082-Falling_Pillar_Mappings
		dc.w	loc_26094-Falling_Pillar_Mappings
loc_26082:
		dc.w	$2
		dc.l	$F80D6055,$602AFFE0,$F80D6055,$602A0000
loc_26094:
		dc.w	$9
		dc.l	$D005205D,$202EFFE0,$D005285D,$282E0010
		dc.l	$D00D2061,$2030FFF0,$E00D2069,$2034FFF0
		dc.l	$F00D2069,$2034FFF0,$D2071,$2038FFF0
		dc.l	$100D2069,$2034FFF0,$200D2079,$203CFFF0
		dc.l	$30042081,$2040FFF0	
;===============================================================================
; Object 0x82 -> Pillar that falls when you stand on it - Neo Green Hill
; [ End ]
;===============================================================================
