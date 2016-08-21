;===============================================================================
; Object 0x19 - Rotating Platforms - Sky Fortress / Oil Ocean...
; [ Begin ]
;===============================================================================	
loc_1DE34:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1DE42(pc,d0),d1
		jmp	loc_1DE42(pc,d1)
loc_1DE42:
		dc.w	loc_1DE4E-loc_1DE42
		dc.w	loc_1DED4-loc_1DE42
loc_1DE46:
		dc.b	$20,0,$18,1,$40,2,$20,$3
loc_1DE4E:
		addq.b	#2,$24(a0)
		move.l	#Rotating_Platforms_Mappings,4(a0) 
		move.w	#$63A0,2(a0)
		cmp.b	#$A,($FFFFFE10).w
		bne.s	loc_1DE6E
		move.w	#$62F4,2(a0)
loc_1DE6E:
		cmp.b	#6,($FFFFFE10).w
		bne.s	loc_1DE7C
		move.w	#$A46D,2(a0)
loc_1DE7C:
		bsr	loc_1E0B4
		move.b	#4,1(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsr.w	#3,d0
		and.w	#$1E,d0
		lea	loc_1DE46(pc,d0),a2
		move.b	(a2)+,$19(a0)
		move.b	(a2)+,$1A(a0)
		move.b	#4,$18(a0)
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$32(a0)
		and.b	#$F,$28(a0)
		cmp.b	#3,$28(a0)
		bne.s	loc_1DEC6
		btst	#0,$22(a0)
		bne.s	loc_1DECE
loc_1DEC6:
		cmp.b	#7,$28(a0)
		bne.s	loc_1DED4
loc_1DECE:
		sub.w	#$C0,$C(a0)
loc_1DED4:
		move.w	8(a0),-(sp)
		bsr	loc_1DF04
		moveq	#0,d1
		move.b	$19(a0),d1
		move.w	#$11,d3
		move.w	(sp)+,d4
		bsr	loc_1E0BA
		move.w	$30(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_1E0AE
		bra	loc_1E0A8
loc_1DF04:
		moveq	#0,d0
		move.b	$28(a0),d0
		and.w	#$F,d0
		add.w	d0,d0
		move.w	loc_1DF18(pc,d0),d1
		jmp	loc_1DF18(pc,d1)
loc_1DF18:
		dc.w	loc_1DF38-loc_1DF18
		dc.w	loc_1DF42-loc_1DF18
		dc.w	loc_1DF62-loc_1DF18
		dc.w	loc_1DF82-loc_1DF18
		dc.w	loc_1DF92-loc_1DF18
		dc.w	loc_1DFB2-loc_1DF18
		dc.w	loc_1DFB4-loc_1DF18
		dc.w	loc_1DFB4-loc_1DF18
		dc.w	loc_1DFD0-loc_1DF18
		dc.w	loc_1DFD0-loc_1DF18
		dc.w	loc_1DFD0-loc_1DF18
		dc.w	loc_1DFD0-loc_1DF18
		dc.w	loc_1E00A-loc_1DF18
		dc.w	loc_1E00A-loc_1DF18
		dc.w	loc_1E00A-loc_1DF18
		dc.w	loc_1E00A-loc_1DF18
loc_1DF38:
		move.b	($FFFFFE68).w,d0
		move.w	#$40,d1
		bra.s	loc_1DF4A
loc_1DF42:
		move.b	($FFFFFE6C).w,d0
		move.w	#$60,d1
loc_1DF4A:
		btst	#0,$22(a0)
		beq.s	loc_1DF56
		neg.w	d0
		add.w	d1,d0
loc_1DF56:
		move.w	$30(a0),d1
		sub.w	d0,d1
		move.w	d1,8(a0)
		rts
loc_1DF62:
		move.b	($FFFFFE7C).w,d0
		move.w	#$80,d1
		btst	#0,$22(a0)
		beq.s	loc_1DF76
		neg.w	d0
		add.w	d1,d0
loc_1DF76:
		move.w	$32(a0),d1
		sub.w	d0,d1
		move.w	d1,$C(a0)
		rts
loc_1DF82:
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_1DF90
		addq.b	#1,$28(a0)
loc_1DF90:
		rts
loc_1DF92:
		bsr	loc_1E0C0
		moveq	#8,d1
		move.w	$32(a0),d0
		sub.w	#$60,d0
		cmp.w	$C(a0),d0
		bcc.s	loc_1DFA8
		neg.w	d1
loc_1DFA8:
		add.w	d1,$12(a0)
		bne.s	loc_1DFB2
		addq.b	#1,$28(a0)
loc_1DFB2:
		rts
loc_1DFB4:
		bsr	loc_1E0C0
		moveq	#8,d1
		move.w	$32(a0),d0
		sub.w	#$60,d0
		cmp.w	$C(a0),d0
		bcc.s	loc_1DFCA
		neg.w	d1
loc_1DFCA:
		add.w	d1,$12(a0)
		rts
loc_1DFD0:
		move.b	($FFFFFE98).w,d1
		sub.b	#$40,d1
		ext.w	d1
		move.b	($FFFFFE9C).w,d2
		sub.b	#$40,d2
		ext.w	d2
		btst	#2,d0
		beq.s	loc_1DFEE
		neg.w	d1
		neg.w	d2
loc_1DFEE:
		btst	#1,d0
		beq.s	loc_1DFF8
		neg.w	d1
		exg.l	d2,d1
loc_1DFF8:
		add.w	$30(a0),d1
		move.w	d1,8(a0)
		add.w	$32(a0),d2
		move.w	d2,$C(a0)
		rts
loc_1E00A:
		move.b	($FFFFFE98).w,d1
		sub.b	#$40,d1
		ext.w	d1
		move.b	($FFFFFE9C).w,d2
		sub.b	#$40,d2
		ext.w	d2
		btst	#2,d0
		beq.s	loc_1E028
		neg.w	d1
		neg.w	d2
loc_1E028:
		btst	#1,d0
		beq.s	loc_1E032
		neg.w	d1
		exg.l	d2,d1
loc_1E032:
		neg.w	d1
		add.w	$30(a0),d1
		move.w	d1,8(a0)
		add.w	$32(a0),d2
		move.w	d2,$C(a0)
		rts	
;-------------------------------------------------------------------------------
Rotating_Platforms_Mappings: 
		dc.w	loc_1E04E-Rotating_Platforms_Mappings
		dc.w	loc_1E060-Rotating_Platforms_Mappings
		dc.w	loc_1E072-Rotating_Platforms_Mappings
		dc.w	loc_1E094-Rotating_Platforms_Mappings
loc_1E04E:
		dc.w	$2
		dc.l	$F00F0000,$FFE0,$F00F0800,$8000000
loc_1E060:
		dc.w	$2
		dc.l	$F00B0000,$FFE8,$F00B0800,$8000000
loc_1E072:
		dc.w	$4
		dc.l	$F00E0000,$FFC0,$F00E000C,$6FFE0
		dc.l	$F00E080C,$8060000,$F00E0800,$8000020
loc_1E094:
		dc.w	$2
		dc.l	$F00E0000,$FFE0,$F00E0800,$8000000	
;===============================================================================
; Object 0x19 - Three Rotating Platforms - Sky Fortress / Oil Ocean...
; [ End ]
;===============================================================================