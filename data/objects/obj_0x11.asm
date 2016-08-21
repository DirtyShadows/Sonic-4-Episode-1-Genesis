;===============================================================================	
; Object 0x11 - Bridge
; [ Begin ] 
;===============================================================================	
loc_D3AC:
		btst	#6,1(a0)
		bne	loc_D3C4
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_D3CC(pc,d0),d1
		jmp	loc_D3CC(pc,d1)
loc_D3C4:
		move.w	#$180,d0
		bra	displaySprite_Param	
loc_D3CC:
		dc.w	loc_D3D4-loc_D3CC
		dc.w	loc_D4BA-loc_D3CC
		dc.w	loc_D54C-loc_D3CC
		dc.w	loc_D550-loc_D3CC
loc_D3D4:
		addq.b	#2,$24(a0)
		move.l	#GHz_Bridge_Mappings,4(a0) 
		move.w	#$43B6,2(a0)
		move.b	#3,$18(a0)
		cmp.b	#8,($FFFFFE10).w
		bne.s	loc_D406
		addq.b	#4,$24(a0)
		move.l	#HPz_Bridge_Mappings,4(a0) 
		move.w	#$6300,2(a0)
loc_D406:
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#$80,$19(a0)
		move.w	$C(a0),d2
		move.w	d2,$3C(a0)
		move.w	8(a0),d3
		lea	$28(a0),a2
		moveq	#0,d1
		move.b	(a2),d1
		move.w	d1,d0
		lsr.w	#1,d0
		lsl.w	#4,d0
		sub.w	d0,d3
		swap.w	d1
		move.w	#8,d1
		bsr.s	loc_D468
		move.w	$28(a1),d0
		subq.w	#8,d0
		move.w	d0,8(a1)
		move.l	a1,$30(a0)
		swap.w	d1
		subq.w	#8,d1
		bls.s	loc_D466
		move.w	d1,d4
		bsr.s	loc_D468
		move.l	a1,$34(a0)
		move.w	d4,d0
		add.w	d0,d0
		add.w	d4,d0
		move.w	$10(a1,d0),d0
		subq.w	#8,d0
		move.w	d0,8(a1)
loc_D466:
		bra.s	loc_D4BA
loc_D468:
		bsr	S1SingleObjectLoad	
		bne.s	loc_D4B8
		move.b	0(a0),0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	1(a0),1(a1)
		bset	#6,1(a1)
		move.b	#$40,$E(a1)
		move.b	d1,$F(a1)
		subq.b	#1,d1
		lea	$10(a1),a2
loc_D4A8:	
		move.w	d3,(a2)+
		move.w	d2,(a2)+
		move.w	#0,(a2)+
		add.w	#$10,d3
		dbra	d1,loc_D4A8
loc_D4B8:
		rts
loc_D4BA:
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_D4D0
		tst.b	$3E(a0)
		beq.s	loc_D4FC
		subq.b	#4,$3E(a0)
		bra.s	loc_D4F8
loc_D4D0:
		and.b	#$10,d0
		beq.s	loc_D4EC
		move.b	$3F(a0),d0
		sub.b	$3B(a0),d0
		beq.s	loc_D4EC
		bcc.s	loc_D4E8
		addq.b	#1,$3F(a0)
		bra.s	loc_D4EC
loc_D4E8:
		subq.b	#1,$3F(a0)
loc_D4EC:
		cmp.b	#$40,$3E(a0)
		beq.s	loc_D4F8
		addq.b	#4,$3E(a0)
loc_D4F8:
		bsr	loc_D728
loc_D4FC:
		moveq	#0,d1
		move.b	$28(a0),d1
		lsl.w	#3,d1
		move.w	d1,d2
		addq.w	#8,d1
		add.w	d2,d2
		moveq	#8,d3
		move.w	8(a0),d4
		bsr	loc_D5B2
loc_D514:	
		tst.w	($FFFFFFD8).w
		beq.s	loc_D51C
		rts
loc_D51C:
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi.s	loc_D530
		rts
loc_D530:
		move.l	$30(a0),a1
		bsr	delete_A1_Object	
		cmp.b	#8,$28(a0)
		bls.s	loc_D548
		move.l	$34(a0),a1
		bsr	delete_A1_Object	
loc_D548:
		bra	deleteObject	
loc_D54C:
		bra	displaySprite	
loc_D550:
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_D566
		tst.b	$3E(a0)
		beq.s	loc_D592
		subq.b	#4,$3E(a0)
		bra.s	loc_D58E
loc_D566:
		and.b	#$10,d0
		beq.s	loc_D582
		move.b	$3F(a0),d0
		sub.b	$3B(a0),d0
		beq.s	loc_D582
		bcc.s	loc_D57E
		addq.b	#1,$3F(a0)
		bra.s	loc_D582
loc_D57E:
		subq.b	#1,$3F(a0)
loc_D582:
		cmp.b	#$40,$3E(a0)
		beq.s	loc_D58E
		addq.b	#4,$3E(a0)
loc_D58E:
		bsr	loc_D728
loc_D592:
		moveq	#0,d1
		move.b	$28(a0),d1
		lsl.w	#3,d1
		move.w	d1,d2
		addq.w	#8,d1
		add.w	d2,d2
		moveq	#8,d3
		move.w	8(a0),d4
		bsr	loc_D5B2
		bsr	loc_D652
		bra	loc_D514
loc_D5B2:
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		moveq	#$3B,d5
		movem.l D1-D4,-(sp)
		bsr.s	loc_D5CC
		movem.l (sp)+,d1-D4
		lea	($FFFFB000).w,a1
		subq.b	#1,d6
		moveq	#$3F,d5
loc_D5CC:
		btst	d6,$22(a0)
		beq.s	loc_D630
		btst	#1,$22(a1)
		bne.s	loc_D5EC
		moveq	#0,d0
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	d1,d0
		bmi.s	loc_D5EC
		cmp.w	d2,d0
		bcs.s	loc_D5FA
loc_D5EC:
		bclr	#3,$22(a1)
		bclr	d6,$22(a0)
		moveq	#0,d4
		rts
loc_D5FA:
		lsr.w	#4,d0
		move.b	d0,0(a0,d5)
		move.l	$30(a0),a2
		cmp.w	#8,d0
		bcs.s	loc_D612
		move.l	$34(a0),a2
		sub.w	#8,d0
loc_D612:
		add.w	d0,d0
		move.w	d0,d1
		add.w	d0,d0
		add.w	d1,d0
		move.w	$12(a2,d0),d0
		subq.w	#8,d0
		moveq	#0,d1
		move.b	$16(a1),d1
		sub.w	d1,d0
		move.w	d0,$C(a1)
		moveq	#0,d4
		rts
loc_D630:
		move.w	d1,-(sp)
		bsr	loc_D9C8
		move.w	(sp)+,d1
		btst	d6,$22(a0)
		beq.s	loc_D650
		moveq	#0,d0
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	d1,d0
		lsr.w	#4,d0
		move.b	d0,0(a0,d5)
loc_D650:
		rts
loc_D652:
		moveq	#0,d0
		tst.w	($FFFFB010).w
		bne.s	loc_D664
		move.b	($FFFFFE0F).w,d0
		and.w	#$1C,d0
		lsr.w	#1,d0
loc_D664:
		moveq	#0,d2
		move.b	loc_D691(pc,d0),d2
		swap.w	d2
		move.b	loc_D690(pc,d0),d2
		moveq	#0,d0
		tst.w	($FFFFB050).w
		bne.s	loc_D682
		move.b	($FFFFFE0F).w,d0
		and.w	#$1C,d0
		lsr.w	#1,d0
loc_D682:
		moveq	#0,d6
		move.b	loc_D691(pc,d0),d6
		swap.w	d6
		move.b	loc_D690(pc,d0),d6
		bra.s	loc_D6A0
loc_D690:	
		dc.b	$1
loc_D691:
		dc.b	2,1,2,1,2,1,2,0,1,0,0,0,0,0,$1	
loc_D6A0:
		moveq	#$FFFFFFFE,d3
		moveq	#$FFFFFFFE,d4
		move.b	$22(a0),d0
		and.b	#8,d0
		beq.s	loc_D6B2
		move.b	$3F(a0),d3
loc_D6B2:
		move.b	$22(a0),d0
		and.b	#$10,d0
		beq.s	loc_D6C0
		move.b	$3B(a0),d4
loc_D6C0:
		move.l	$30(a0),a1
		lea	$45(a1),a2
		lea	$15(a1),a1
		moveq	#0,d1
		move.b	$28(a0),d1
		subq.b	#1,d1
		moveq	#0,d5
loc_D6D6:	
		moveq	#0,d0
		subq.w	#1,d3
		cmp.b	d3,d5
		bne.s	loc_D6E0
		move.w	d2,d0
loc_D6E0:
		addq.w	#2,d3
		cmp.b	d3,d5
		bne.s	loc_D6E8
		move.w	d2,d0
loc_D6E8:
		subq.w	#1,d3
		subq.w	#1,d4
		cmp.b	d4,d5
		bne.s	loc_D6F2
		move.w	d6,d0
loc_D6F2:
		addq.w	#2,d4
		cmp.b	d4,d5
		bne.s	loc_D6FA
		move.w	d6,d0
loc_D6FA:
		subq.w	#1,d4
		cmp.b	d3,d5
		bne.s	loc_D706
		swap.w	d2
		move.w	d2,d0
		swap.w	d2
loc_D706:
		cmp.b	d4,d5
		bne.s	loc_D710
		swap.w	d6
		move.w	d6,d0
		swap.w	d6
loc_D710:
		move.b	d0,(a1)
		addq.w	#1,d5
		addq.w	#6,a1
		cmpa.w	a2,a1
		bne.s	loc_D722
		move.l	$34(a0),a1
		lea	$15(a1),a1
loc_D722:
		dbra	d1,loc_D6D6
		rts	
loc_D728:
		move.b	$3E(a0),d0
		bsr	loc_D9CE
		move.w	d0,d4
		lea	(loc_D868),a4
		moveq	#0,d0
		move.b	$28(a0),d0
		lsl.w	#4,d0
		moveq	#0,d3
		move.b	$3F(a0),d3
		move.w	d3,d2
		add.w	d0,d3
		moveq	#0,d5
		lea	(loc_D7D8-$80),a5
		move.b	0(a5,d3),d5
		and.w	#$F,d3
		lsl.w	#4,d3
		lea	0(a4,d3),a3
		move.l	$30(a0),a1
		lea	$42(a1),a2
		lea	$12(a1),a1
loc_D76C:	
		moveq	#0,d0
		move.b	(a3)+,d0
		addq.w	#1,d0
		mulu.w	d5,d0
		mulu.w	d4,d0
		swap.w	d0
		add.w	$3C(a0),d0
		move.w	d0,(a1)
		addq.w	#6,a1
		cmpa.w	a2,a1
		bne.s	loc_D78C
		move.l	$34(a0),a1
		lea	$12(a1),a1
loc_D78C:
		dbra	d2,loc_D76C
		moveq	#0,d0
		move.b	$28(a0),d0
		moveq	#0,d3
		move.b	$3F(a0),d3
		addq.b	#1,d3
		sub.b	d0,d3
		neg.b	d3
		bmi.s	loc_D7D6
		move.w	d3,d2
		lsl.w	#4,d3
		lea	0(a4,d3),a3
		adda.w	d2,a3
		subq.w	#1,d2
		bcs.s	loc_D7D6
loc_D7B2:	
		moveq	#0,d0
		move.b	-(a3),d0
		addq.w	#1,d0
		mulu.w	d5,d0
		mulu.w	d4,d0
		swap.w	d0
		add.w	$3C(a0),d0
		move.w	d0,(a1)
		addq.w	#6,a1
		cmpa.w	a2,a1
		bne.s	loc_D7D2
		move.l	$34(a0),a1
		lea	$12(a1),a1
loc_D7D2:
		dbra	d2,loc_D7B2
loc_D7D6:
		rts	
loc_D7D8:
		dc.b	2,4,6,8,8,6,4,2,0,0,0,0,0,0,0,$0
		dc.b	2,4,6,8,$A,8,6,4,2,0,0,0,0,0,0,$0
		dc.b	2,4,6,8,$A,$A,8,6,4,2,0,0,0,0,0,$0
		dc.b	2,4,6,8,$A,$C,$A,8,6,4,2,0,0,0,0,$0
		dc.b	2,4,6,8,$A,$C,$C,$A,8,6,4,2,0,0,0,$0
		dc.b	2,4,6,8,$A,$C,$E,$C,$A,8,6,4,2,0,0,$0
		dc.b	2,4,6,8,$A,$C,$E,$E,$C,$A,8,6,4,2,0,$0
		dc.b	2,4,6,8,$A,$C,$E,$10,$E,$C,$A,8,6,4,2,$0
		dc.b	2,4,6,8,$A,$C,$E,$10,$10,$E,$C,$A,8,6,4,$2
loc_D868:
		dc.b	$FF,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$0
		dc.b	$B5,$FF,0,0,0,0,0,0,0,0,0,0,0,0,0,$0
		dc.b	$7E,$DB,$FF,0,0,0,0,0,0,0,0,0,0,0,0,$0
		dc.b	$61,$B5,$EC,$FF,0,0,0,0,0,0,0,0,0,0,0,$0
		dc.b	$4A,$93,$CD,$F3,$FF,0,0,0,0,0,0,0,0,0,0,$0
		dc.b	$3E,$7E,$B0,$DB,$F6,$FF,0,0,0,0,0,0,0,0,0,$0
		dc.b	$38,$6D,$9D,$C5,$E4,$F8,$FF,0,0,0,0,0,0,0,0,$0
		dc.b	$31,$61,$8E,$B5,$D4,$EC,$FB,$FF,0,0,0,0,0,0,0,$0
		dc.b	$2B,$56,$7E,$A2,$C1,$DB,$EE,$FB,$FF,0,0,0,0,0,0,$0
		dc.b	$25,$4A,$73,$93,$B0,$CD,$E1,$F3,$FC,$FF,0,0,0,0,0,$0
		dc.b	$1F,$44,$67,$88,$A7,$BD,$D4,$E7,$F4,$FD,$FF,0,0,0,0,$0
		dc.b	$1F,$3E,$5C,$7E,$98,$B0,$C9,$DB,$EA,$F6,$FD,$FF,0,0,0,$0
		dc.b	$19,$38,$56,$73,$8E,$A7,$BD,$D1,$E1,$EE,$F8,$FE,$FF,0,0,$0
		dc.b	$19,$38,$50,$6D,$83,$9D,$B0,$C5,$D8,$E4,$F1,$F8,$FE,$FF,0,$0
		dc.b	$19,$31,$4A,$67,$7E,$93,$A7,$BD,$CD,$DB,$E7,$F3,$F9,$FE,$FF,$0
		dc.b	$19,$31,$4A,$61,$78,$8E,$A2,$B5,$C5,$D4,$E1,$EC,$F4,$FB,$FE,$FF
;-------------------------------------------------------------------------------
HPz_Bridge_Mappings: 
		dc.w	loc_D974-HPz_Bridge_Mappings
		dc.w	loc_D97E-HPz_Bridge_Mappings
		dc.w	loc_D988-HPz_Bridge_Mappings
		dc.w	loc_D992-HPz_Bridge_Mappings
		dc.w	loc_D99C-HPz_Bridge_Mappings
		dc.w	loc_D9A6-HPz_Bridge_Mappings
loc_D974:
		dc.w	$1
		dc.l	$F8050000,$FFF8
loc_D97E:
		dc.w	$1
		dc.l	$F8050004,$2FFF8
loc_D988:
		dc.w	$1
		dc.l	$F8050008,$4FFF8
loc_D992:
		dc.w	$1
		dc.l	$F402000C,$6FFFC
loc_D99C:
		dc.w	$1
		dc.l	$F402000F,$7FFFC
loc_D9A6:
		dc.w	$1
		dc.l	$F4020012,$9FFFC
;-------------------------------------------------------------------------------
GHz_Bridge_Mappings: 
		dc.w	loc_D9B4-GHz_Bridge_Mappings
		dc.w	loc_D9BE-GHz_Bridge_Mappings
loc_D9B4:
		dc.w	$1
		dc.l	$F8050004,$2FFF8
loc_D9BE:
		dc.w	$1
		dc.l	$F8050000,$FFF8	
;===============================================================================	
; Object 0x11 - Bridge
; [ End ] 
;===============================================================================	
