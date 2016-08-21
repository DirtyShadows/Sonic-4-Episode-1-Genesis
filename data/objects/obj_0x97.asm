;===============================================================================
; Object 0x97 - Rexon Head - Hill Top
; [ Begin ]
;===============================================================================	
loc_335BA:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_335C8(pc,d0),d1
		jmp	loc_335C8(pc,d1)	
loc_335C8:
		dc.w	loc_335D2-loc_335C8
		dc.w	loc_3363E-loc_335C8
		dc.w	loc_33672-loc_335C8
		dc.w	loc_336AC-loc_335C8
		dc.w	loc_336DE-loc_335C8
loc_335D2:
		bsr	EnemySettings	
		move.b	#8,$19(a0)
		moveq	#$28,d0
		btst	#0,1(a0)
		bne.s	loc_335E8
		moveq	#$FFFFFFE8,d0
loc_335E8:
		add.w	d0,8(a0)
		add.w	#$10,$C(a0)
		move.b	#1,$38(a0)
		move.w	$2C(a0),a1
		lea	$2E(a1),a1
		move.b	#$B,$20(a0)
		moveq	#0,d0
		move.w	$2E(a0),d0
		cmp.w	#8,d0
		beq.s	loc_33624
		move.b	#1,$1A(a0)
		move.b	#$8B,$20(a0)
		move.w	0(a1,d0),$30(a0)
loc_33624:
		move.w	6(a1),$32(a0)
		lsr.w	#1,d0
		move.b	loc_33638(pc,d0),$2A(a0)
		move.b	d0,$39(a0)
		rts 
loc_33638:
		dc.b	$1E,$18,$12,$C,6,$0
loc_3363E:
		bsr	loc_336F6
		subq.b	#1,$2A(a0)
		bmi.s	loc_3364C
		bra	loc_3A8A4
loc_3364C:	
		addq.b	#2,$24(a0)
		move.w	#$FEE0,$10(a0)
		move.w	#$FE00,$12(a0)
		move.w	$2E(a0),d0
		sub.w	#8,d0
		neg.w	d0
		lsr.w	#1,d0
		move.b	loc_33638(pc,d0),$2A(a0)
		bra	loc_3A8A4
loc_33672:
		bsr	loc_336F6
		moveq	#$10,d0
		add.w	d0,$10(a0)
		subq.b	#1,$2A(a0)
		bmi.s	loc_3368A
		bsr	loc_3A904
		bra	loc_3A8A4
loc_3368A:
		addq.b	#2,$24(a0)
		bsr	loc_32964
		move.b	#$20,$2A(a0)
		move.w	$2E(a0),d0
		lsr.w	#1,d0
		move.b	loc_336A8(pc,d0),$2B(a0)
		bra	loc_3A8A4	
loc_336A8:
		dc.b	$24,$20,$1C,$1A
loc_336AC:
		bsr	loc_336F6
		cmp.w	#8,$2E(a0)
		bne.s	loc_336C2
		subq.b	#1,$2A(a0)
		bpl.s	loc_336C2
		bsr	loc_3371C
loc_336C2:
		move.b	$39(a0),d0
		addq.b	#1,d0
		move.b	d0,$39(a0)
		and.b	#3,d0
		bne.s	loc_336DA
		bsr	loc_33774
		bsr	loc_337EE
loc_336DA:
		bra	loc_3A8A4
loc_336DE:
		move.w	($FFFFEECE).w,d0
		add.w	#$E0,d0
		cmp.w	$C(a0),d0
		bcs	loc_3A898
		bsr	loc_3A8FE
		bra	loc_3A8A4
loc_336F6:
		move.w	$32(a0),a1
		cmp.b	#$97,(a1)
		beq.s	loc_33710
		move.b	#8,$24(a0)
		move.w	$2E(a0),d0
		move.w	loc_33712(pc,d0),$10(a0)
loc_33710:
		rts
loc_33712:
		dc.w	$80,$FF00,$100,$FF80,$80
loc_3371C:
		move.b	#$7F,$2A(a0)
		bsr	loc_3A8B6
		bne.s	loc_33772
		move.b	#$98,0(a1)
		move.b	#3,$1A(a1)
		move.b	#$10,$28(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		lea	(SpeedToPos),a2	
		move.l	a2,$2A(a1)
		moveq	#1,d0
		moveq	#$10,d1
		btst	#0,1(a0)
		bne.s	loc_33760
		neg.w	d0
		neg.w	d1
loc_33760:
		move.b	d0,$10(a1)
		add.w	d1,8(a1)
		addq.w	#4,$C(a1)
		move.b	#$80,$13(a1)
loc_33772:
		rts
loc_33774:
		move.b	$2B(a0),d0
		move.b	$38(a0),d1
		add.b	d1,d0
		move.b	d0,$2B(a0)
		sub.b	#$18,d0
		beq.s	loc_33790
		bcs.s	loc_33790
		cmp.b	#$10,d0
		bcs.s	loc_33794
loc_33790:
		neg.b	$38(a0)
loc_33794:
		rts
;-------------------------------------------------------------------------------
loc_33796:	; Called by Object 0x96 - Rexon
		move.b	#6,$24(a0)
		bclr	#0,1(a0)
		tst.w	d0
		beq.s	loc_337AC
		bset	#0,1(a0)
loc_337AC:
		bsr	loc_32964
		lea	$2C(a0),a2
		moveq	#0,d1
		moveq	#4,d6
loc_337B8:	
		bsr	loc_3A89E
		bne.s	loc_337EC
		move.b	#$97,0(a1)
		move.b	1(a0),1(a1)
		move.b	$28(a0),$28(a1)
		move.w	a0,$2C(a1)
		move.w	a1,(a2)+
		move.w	d1,$2E(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		addq.w	#2,d1
		dbra	d6,loc_337B8
loc_337EC:
		rts	
;------------------------------------------------------------------------------- 
loc_337EE:
		move.w	$30(a0),d0
		beq.s	loc_3383A
		move.w	d0,a1
		lea	loc_33892(pc),a2
		moveq	#0,d0
		move.b	$2B(a0),d0
		and.b	#$7F,d0
		move.w	d0,d1
		and.w	#$1F,d0
		add.w	d0,d0
		move.b	0(a2,d0),d2
		ext.w	d2
		move.b	1(a2,d0),d3
		ext.w	d3
		lsr.w	#4,d1
		and.w	#6,d1
		move.w	loc_3383C(pc,d1),d1
		jsr	loc_3383C(pc,d1)
		move.w	8(a0),d4
		add.w	d2,d4
		move.w	d4,8(a1)
		move.b	$D(a0),d5
		add.b	d3,d5
		move.b	d5,$D(a1)
loc_3383A:
		rts 
;-------------------------------------------------------------------------------
loc_3383C:
		dc.w	loc_33844-loc_3383C
		dc.w	loc_33846-loc_3383C
		dc.w	loc_3384C-loc_3383C
		dc.w	loc_33852-loc_3383C
loc_33844:
		rts
loc_33846:
		exg.l	d3,d2
		neg.w	d3
		rts
loc_3384C:
		neg.w	d2
		neg.w	d3
		rts
loc_33852:
		exg.l	d3,d2
		neg.w	d2
		rts
;-------------------------------------------------------------------------------
Obj_0x96_Ptr: 
		dc.l	Rexon_Mappings	
		dc.w	$637E
		dc.b	4,4,$10,$0	
;-------------------------------------------------------------------------------	
Rexon_Mappings: 
		dc.w	loc_3386A-Rexon_Mappings
		dc.w	loc_33874-Rexon_Mappings
		dc.w	loc_3387E-Rexon_Mappings
		dc.w	loc_33888-Rexon_Mappings
loc_3386A:
		dc.w	$1
		dc.l	$FA090000,$FFEC
loc_33874:
		dc.w	$1
		dc.l	$F8050006,$3FFF8
loc_3387E:
		dc.w	$1
		dc.l	$F80D000A,$5FFF0
loc_33888:
		dc.w	$1
		dc.l	$FC000012,$9FFFC	
;-------------------------------------------------------------------------------	
loc_33892:
		dc.b	$F,0,$F,$FF,$F,$FF,$F,$FE,$F,$FD,$F,$FC,$E,$FC,$E,$FB
		dc.b	$E,$FA,$E,$FA,$D,$F9,$D,$F8,$C,$F8,$C,$F7,$C,$F6,$B,$F6
		dc.b	$B,$F5,$A,$F5,$A,$F4,9,$F4,8,$F4,8,$F3,7,$F3,6,$F2
		dc.b	6,$F2,5,$F2,4,$F2,4,$F1,3,$F1,2,$F1,1,$F1,1,$F1	
;===============================================================================
; Object 0x97 - Rexon Head - Hill Top
; [ End ]
;===============================================================================