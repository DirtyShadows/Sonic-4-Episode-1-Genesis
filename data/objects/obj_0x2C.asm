;=============================================================================== 
; Object 0x2C - Leaves - Neo Green Hill
; [ Begin ]	
;===============================================================================	
loc_21EBC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_21ECA(pc,d0),d1
		jmp	loc_21ECA(pc,d1)
loc_21ECA:
		dc.w	loc_21ED4-loc_21ECA
		dc.w	loc_21F0A-loc_21ECA
		dc.w	loc_22058-loc_21ECA
loc_21ED0:
		dc.b	$D6,$D4,$D5,$0
loc_21ED4:
		addq.b	#2,$24(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		move.b	loc_21ED0(pc,d0),$20(a0)
		move.l	#Lava_Attributes_Mappings,4(a0) 
		move.w	#$8680,2(a0)
		move.b	#$84,1(a0)
		move.b	#$80,$19(a0)
		move.b	#4,$18(a0)
		move.b	$28(a0),$1A(a0)
loc_21F0A:
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_22116
		tst.w	($FFFFFE08).w
		beq.s	loc_21F28
		bsr	loc_22110
loc_21F28:
		move.b	$21(a0),d0
		beq.s	loc_21F84
		move.w	$2E(a0),d0
		beq.s	loc_21F3E
		add.b	($FFFFFE05).w,d0
		and.w	#$F,d0
		bne.s	loc_21F5A
loc_21F3E:
		lea	($FFFFB000).w,a2
		bclr	#0,$21(a0)
		beq.s	loc_21F7E
		bsr.s	loc_21F8A
		tst.w	$2E(a0)
		bne.s	loc_21F7E
		move.w	($FFFFFE04).w,$2E(a0)
		bra.s	loc_21F7E
loc_21F5A:
		add.w	#8,d0
		and.w	#$F,d0
		bne.s	loc_21F7E
		lea	($FFFFB040).w,a2
		bclr	#1,$21(a0)
		beq.s	loc_21F7E
		bsr.s	loc_21F8A
		tst.w	$2E(a0)
		bne.s	loc_21F7E
		move.w	($FFFFFE04).w,$2E(a0)
loc_21F7E:
		clr.b	$21(a0)
		rts
loc_21F84:
		clr.w	$2E(a0)
		rts
loc_21F8A:
		move.w	$10(a2),d0
		bpl.s	loc_21F92
		neg.w	d0
loc_21F92:
		cmp.w	#$200,d0
		bcc.s	loc_21FA6
		move.w	$12(a2),d0
		bpl.s	loc_21FA0
		neg.w	d0
loc_21FA0:
		cmp.w	#$200,d0
		bcs.s	loc_21F84
loc_21FA6:
		lea	(loc_22048),a3
		moveq	#3,d6
loc_21FAE:	
		bsr	loc_2211C
		bne	loc_2203A
		move.b	#$2C,0(a1)
		move.b	#4,$24(a1)
		move.w	8(a2),8(a1)
		move.w	$C(a2),$C(a1)
		bsr	loc_22122
		and.w	#$F,d0
		subq.w	#8,d0
		add.w	d0,8(a1)
		swap.w	d0
		and.w	#$F,d0
		subq.w	#8,d0
		add.w	d0,$C(a1)
		move.w	(a3)+,$10(a1)
		move.w	(a3)+,$12(a1)
		btst	#0,$22(a2)
		beq.s	loc_21FFC
		neg.w	$10(a1)
loc_21FFC:
		move.w	8(a1),$30(a1)
		move.w	$C(a1),$34(a1)
		and.b	#1,d0
		move.b	d0,$1A(a1)
		move.l	#Leaves_Mappings,4(a1) 
		move.w	#$E410,2(a1)
		move.b	#$84,1(a1)
		move.b	#8,$19(a1)
		move.b	#1,$18(a1)
		move.b	#4,$38(a1)
		move.b	d1,$26(a0)
loc_2203A:
		dbra	d6,loc_21FAE
		move.w	#$E5,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------	
loc_22048:	
		dc.w	$FF80,$FF80,$C0,$FFC0,$FF40,$40,$80,$80
;-------------------------------------------------------------------------------	
loc_22058:
		move.b	$38(a0),d0
		add.b	d0,$26(a0)
		add.b	($FFFFFE0F).w,d0
		and.w	#$1F,d0
		bne.s	loc_22076
		add.b	d7,d0
		and.b	#1,d0
		beq.s	loc_22076
		neg.b	$38(a0)
loc_22076:
		move.l	$30(a0),d2
		move.l	$34(a0),d3
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	$12(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d2,$30(a0)
		move.l	d3,$34(a0)
		swap.w	d2
		and.w	#3,d3
		addq.w	#4,d3
		add.w	d3,$12(a0)
		move.b	$26(a0),d0
		bsr	loc_22128
		asr.w	#6,d0
		add.w	$30(a0),d0
		move.w	d0,8(a0)
		asr.w	#6,d1
		add.w	$34(a0),d1
		move.w	d1,$C(a0)
		subq.b	#1,$1E(a0)
		bpl.s	loc_220D4
		move.b	#$B,$1E(a0)
		bchg	#1,$1A(a0)
loc_220D4:
		tst.b	1(a0)
		bpl	loc_22116
		bra	loc_22110	
;-------------------------------------------------------------------------------
Leaves_Mappings: 
		dc.w	loc_220E8-Leaves_Mappings
		dc.w	loc_220F2-Leaves_Mappings
		dc.w	loc_220FC-Leaves_Mappings
		dc.w	loc_22106-Leaves_Mappings
loc_220E8:
		dc.w	$1
		dc.l	$FC000000,$FFFC
loc_220F2:
		dc.w	$1
		dc.l	$FC040001,$FFF8
loc_220FC:
		dc.w	$1
		dc.l	$FC040003,$1FFF8
loc_22106:
		dc.w	$1
		dc.l	$FC040005,$2FFF8	
;=============================================================================== 
; Object 0x2C - Leaves - Neo Green Hill 
; [ End ]	
;===============================================================================	