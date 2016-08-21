;=============================================================================== 
; Object 0x1E - Chemical Plant - Tube Attributes
; [ Begin ]	
;===============================================================================
loc_1E3B8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1E3D4(pc,d0),d1
		jsr	loc_1E3D4(pc,d1)
		move.b	$2C(a0),d0
		add.b	$36(a0),d0
		beq	loc_1EE0C
		rts
loc_1E3D4:
		dc.w	loc_1E3DE-loc_1E3D4
		dc.w	loc_1E3F2-loc_1E3D4
loc_1E3D8:	
		dc.w	$A0,$100,$120
loc_1E3DE:
		addq.b	#2,$24(a0)
		move.b	$28(a0),d0
		add.w	d0,d0
		and.w	#6,d0
		move.w	loc_1E3D8(pc,d0),$2A(a0)
loc_1E3F2:
		lea	($FFFFB000).w,a1
		lea	$2C(a0),a4
		bsr.s	loc_1E404
		lea	($FFFFB040).w,a1
		lea	$36(a0),a4
loc_1E404:
		moveq	#0,d0
		move.b	(a4),d0
		move.w	loc_1E410(pc,d0),d0
		jmp	loc_1E410(pc,d0)
loc_1E410:
		dc.w	loc_1E418-loc_1E410
		dc.w	loc_1E536-loc_1E410
		dc.w	loc_1E61A-loc_1E410
		dc.w	loc_1E686-loc_1E410
loc_1E418:
		tst.w	($FFFFFE08).w
		bne	loc_1E534
		move.w	$2A(a0),d2
		move.w	8(a1),d0
		sub.w	8(a0),d0
		cmp.w	d2,d0
		bcc	loc_1E534
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		cmp.w	#$80,d1
		bcc	loc_1E534
		cmp.b	#$20,$1C(a1)
		beq	loc_1E534
		moveq	#0,d3
		cmp.w	#$A0,d2
		beq.s	loc_1E464
		moveq	#8,d3
		cmp.w	#$120,d2
		beq.s	loc_1E464
		moveq	#4,d3
		neg.w	d0
		add.w	#$100,d0
loc_1E464:
		cmp.w	#$80,d0
		bcs.s	loc_1E49A
		moveq	#0,d2
		move.b	$28(a0),d0
		lsr.w	#2,d0
		and.w	#$F,d0
		move.b	loc_1E48A(pc,d0),d2
		cmp.b	#2,d2
		bne.s	loc_1E4A4
		move.b	($FFFFFE24).w,d2
		and.b	#1,d2
		bra.s	loc_1E4A4
loc_1E48A:
		dc.b	2,2,2,2,2,2,2,2,2,2,0,2,0,1,2,$1
loc_1E49A:
		moveq	#2,d2
		cmp.w	#$40,d1
		bcc.s	loc_1E4A4
		moveq	#3,d2
loc_1E4A4:
		move.b	d2,1(a4)
		add.w	d3,d2
		add.w	d2,d2
		and.w	#$1E,d2
		lea	loc_1E79C(pc),a2
		adda.w	0(a2,d2),a2
		move.w	(a2)+,4(a4)
		subq.w	#4,4(a4)
		move.w	(a2)+,d4
		add.w	8(a0),d4
		move.w	d4,8(a1)
		move.w	(a2)+,d5
		add.w	$C(a0),d5
		move.w	d5,$C(a1)
		move.l	a2,6(a4)
		move.w	(a2)+,d4
		add.w	8(a0),d4
		move.w	(a2)+,d5
		add.w	$C(a0),d5
		addq.b	#2,(a4)
		move.b	#$81,$2A(a1)
		move.b	#2,$1C(a1)
		move.w	#$800,$14(a1)
		move.w	#0,$10(a1)
		move.w	#0,$12(a1)
		bclr	#5,$22(a0)
		bclr	#5,$22(a1)
		bset	#1,$22(a1)
		move.b	#0,$3C(a1)
		bclr	#7,2(a1)
		move.w	#$800,d2
		bsr	loc_1E71E
		move.w	#$BE,d0
		jsr	Play_Sfx	
loc_1E534:
		rts
loc_1E536:
		subq.b	#1,2(a4)
		bpl.s	loc_1E57A
		move.l	6(a4),a2
		move.w	(a2)+,d4
		add.w	8(a0),d4
		move.w	d4,8(a1)
		move.w	(a2)+,d5
		add.w	$C(a0),d5
		move.w	d5,$C(a1)
		tst.b	1(a4)
		bpl.s	loc_1E55C
		subq.w	#8,a2
loc_1E55C:
		move.l	a2,6(a4)
		subq.w	#4,4(a4)
		beq.s	loc_1E5A0
		move.w	(a2)+,d4
		add.w	8(a0),d4
		move.w	(a2)+,d5
		add.w	$C(a0),d5
		move.w	#$800,d2
		bra	loc_1E71E
loc_1E57A:
		move.l	8(a1),d2
		move.l	$C(a1),d3
		move.w	$10(a1),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	$12(a1),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d2,8(a1)
		move.l	d3,$C(a1)
		rts
loc_1E5A0:
		cmp.b	#4,1(a4)
		bcc.s	loc_1E5C2
		move.b	$28(a0),d0
		and.w	#$FC,d0
		add.b	1(a4),d0
		move.b	#4,1(a4)
		move.b	loc_1E5DA(pc,d0),d0
		bne	loc_1E6AE
loc_1E5C2:
		and.w	#$7FF,$C(a1)
		move.b	#6,(a4)
		clr.b	$2A(a1)
		move.w	#$BC,d0
		jmp	Play_Sfx	
loc_1E5DA:
		dc.b	2,1,0,0,$FF,3,0,0,4,$FE,0,0,$FD,$FC,0,$0
		dc.b	$FB,$FB,0,0,7,6,0,0,$F9,$FA,0,0,8,9,0,$0
		dc.b	$F8,$F7,0,0,$B,$A,0,0,$C,0,0,0,$F5,$F6,0,$0
		dc.b	$F4,0,0,0,0,$D,0,0,$F3,$E,0,0,0,$F2,0,$0
loc_1E61A:
		subq.b	#1,2(a4)
		bpl.s	loc_1E64E
		move.l	6(a4),a2
		move.w	(a2)+,d4
		move.w	d4,8(a1)
		move.w	(a2)+,d5
		move.w	d5,$C(a1)
		tst.b	1(a4)
		bpl.s	loc_1E638
		subq.w	#8,a2
loc_1E638:
		move.l	a2,6(a4)
		subq.w	#4,4(a4)
		beq.s	loc_1E674
		move.w	(a2)+,d4
		move.w	(a2)+,d5
		move.w	#$800,d2
		bra	loc_1E71E
loc_1E64E:
		move.l	8(a1),d2
		move.l	$C(a1),d3
		move.w	$10(a1),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	$12(a1),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d2,8(a1)
		move.l	d3,$C(a1)
		rts
loc_1E674:
		and.w	#$7FF,$C(a1)
		clr.b	(a4)
		move.w	#$BC,d0
		jmp	Play_Sfx	
loc_1E686:
		move.w	$2A(a0),d2
		move.w	8(a1),d0
		sub.w	8(a0),d0
		cmp.w	d2,d0
		bcc	loc_1E6AA
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		cmp.w	#$80,d1
		bcc	loc_1E6AA
		rts
loc_1E6AA:
		clr.b	(a4)
		rts
loc_1E6AE:
		bpl.s	loc_1E6E0
		neg.b	d0
		move.b	#$FC,1(a4)
		add.w	d0,d0
		lea	(loc_1ECA4),a2
		adda.w	0(a2,d0),a2
		move.w	(a2)+,d0
		subq.w	#4,d0
		move.w	d0,4(a4)
		lea	0(a2,d0),a2
		move.w	(a2)+,d4
		move.w	d4,8(a1)
		move.w	(a2)+,d5
		move.w	d5,$C(a1)
		subq.w	#8,a2
		bra.s	loc_1E700
loc_1E6E0:
		add.w	d0,d0
		lea	(loc_1ECA4),a2
		adda.w	0(a2,d0),a2
		move.w	(a2)+,4(a4)
		subq.w	#4,4(a4)
		move.w	(a2)+,d4
		move.w	d4,8(a1)
		move.w	(a2)+,d5
		move.w	d5,$C(a1)
loc_1E700:
		move.l	a2,6(a4)
		move.w	(a2)+,d4
		move.w	(a2)+,d5
		move.w	#$800,d2
		bsr	loc_1E71E
		move.w	#$BE,d0
		jsr	Play_Sfx	
		addq.b	#2,(a4)
		rts
loc_1E71E:
		moveq	#0,d0
		move.w	d2,d3
		move.w	d4,d0
		sub.w	8(a1),d0
		bge.s	loc_1E72E
		neg.w	d0
		neg.w	d2
loc_1E72E:
		moveq	#0,d1
		move.w	d5,d1
		sub.w	$C(a1),d1
		bge.s	loc_1E73C
		neg.w	d1
		neg.w	d3
loc_1E73C:
		cmp.w	d0,d1
		bcs.s	loc_1E76E
		moveq	#0,d1
		move.w	d5,d1
		sub.w	$C(a1),d1
		swap.w	d1
		divs.w	d3,d1
		moveq	#0,d0
		move.w	d4,d0
		sub.w	8(a1),d0
		beq.s	loc_1E75A
		swap.w	d0
		divs.w	d1,d0
loc_1E75A:
		move.w	d0,$10(a1)
		move.w	d3,$12(a1)
		tst.w	d1
		bpl.s	loc_1E768
		neg.w	d1
loc_1E768:
		move.w	d1,2(a4)
		rts
loc_1E76E:
		moveq	#0,d0
		move.w	d4,d0
		sub.w	8(a1),d0
		swap.w	d0
		divs.w	d2,d0
		moveq	#0,d1
		move.w	d5,d1
		sub.w	$C(a1),d1
		beq.s	loc_1E788
		swap.w	d1
		divs.w	d0,d1
loc_1E788:
		move.w	d1,$12(a1)
		move.w	d2,$10(a1)
		tst.w	d0
		bpl.s	loc_1E796
		neg.w	d0
loc_1E796:
		move.w	d0,2(a4)
		rts	
;------------------------------------------------------------------------------- 
loc_1E79C:	
		dc.w	loc_1E7B4-loc_1E79C
		dc.w	loc_1E82A-loc_1E79C
		dc.w	loc_1E888-loc_1E79C
		dc.w	loc_1E8FE-loc_1E79C
		dc.w	loc_1E95C-loc_1E79C
		dc.w	loc_1E9CE-loc_1E79C
		dc.w	loc_1EA2C-loc_1E79C
		dc.w	loc_1EA9E-loc_1E79C
		dc.w	loc_1EAFC-loc_1E79C
		dc.w	loc_1EB72-loc_1E79C
		dc.w	loc_1EBD0-loc_1E79C
		dc.w	loc_1EC46-loc_1E79C
loc_1E7B4:
		dc.b	0,$74,0,$90,0,$10,0,$90,0,$70,0,$40,0,$70,0,$35
		dc.b	0,$6F,0,$28,0,$6A,0,$1E,0,$62,0,$15,0,$58,0,$11
		dc.b	0,$4A,0,$10,0,$40,0,$11,0,$35,0,$15,0,$27,0,$1E
		dc.b	0,$1E,0,$28,0,$15,0,$35,0,$11,0,$40,0,$10,0,$50
		dc.b	0,$10,0,$5E,0,$12,0,$68,0,$18,0,$6D,0,$24,0,$70
		dc.b	0,$30,0,$6D,0,$3D,0,$68,0,$48,0,$5E,0,$4E,0,$50
		dc.b	0,$50,0,$30,0,$50,0,$22,0,$52,0,$17,0,$5A,0,$11
		dc.b	0,$63,0,$10,0,$70
loc_1E82A:
		dc.b	0,$5C,0,$90,0,$10,0,$90,0,$70,0,$40,0,$70,0,$2E
		dc.b	0,$6E,0,$1D,0,$62,0,$13,0,$53,0,$10,0,$40,0,$13
		dc.b	0,$2D,0,$1D,0,$1E,0,$2E,0,$13,0,$40,0,$10,0,$58
		dc.b	0,$10,0,$64,0,$14,0,$6C,0,$1A,0,$70,0,$28,0,$6C
		dc.b	0,$36,0,$64,0,$3C,0,$58,0,$40,0,$4B,0,$3D,0,$40
		dc.b	0,$38,0,$36,0,$32,0,$28,0,$30,0,$10,0,$30
loc_1E888:
		dc.b	0,$74,0,$10,0,$70,0,$11,0,$63,0,$17,0,$5A,0,$22
		dc.b	0,$52,0,$30,0,$50,0,$50,0,$50,0,$5E,0,$4E,0,$68
		dc.b	0,$48,0,$6D,0,$3D,0,$70,0,$30,0,$6D,0,$24,0,$68
		dc.b	0,$18,0,$5E,0,$12,0,$50,0,$10,0,$40,0,$10,0,$35
		dc.b	0,$11,0,$28,0,$15,0,$1E,0,$1E,0,$15,0,$27,0,$11
		dc.b	0,$35,0,$10,0,$40,0,$11,0,$4A,0,$15,0,$58,0,$1E
		dc.b	0,$62,0,$28,0,$6A,0,$35,0,$6F,0,$40,0,$70,0,$90
		dc.b	0,$70,0,$90,0,$10
loc_1E8FE:
		dc.b	0,$5C,0,$10,0,$30,0,$28,0,$30,0,$36,0,$32,0,$40
		dc.b	0,$38,0,$4B,0,$3D,0,$58,0,$40,0,$64,0,$3C,0,$6C
		dc.b	0,$36,0,$70,0,$28,0,$6C,0,$1A,0,$64,0,$14,0,$58
		dc.b	0,$10,0,$40,0,$10,0,$2E,0,$13,0,$1D,0,$1E,0,$13
		dc.b	0,$2D,0,$10,0,$40,0,$13,0,$53,0,$1D,0,$62,0,$2E
		dc.b	0,$6E,0,$40,0,$70,0,$90,0,$70,0,$90,0,$10
loc_1E95C:
		dc.b	0,$70,0,$10,0,$10,0,$10,0,$70,0,$C0,0,$70,0,$CA
		dc.b	0,$6F,0,$D4,0,$6C,0,$DB,0,$68,0,$E3,0,$62,0,$E8
		dc.b	0,$5A,0,$ED,0,$52,0,$EF,0,$48,0,$F0,0,$40,0,$EF
		dc.b	0,$36,0,$ED,0,$2E,0,$E8,0,$26,0,$E3,0,$1E,0,$DB
		dc.b	0,$17,0,$D4,0,$14,0,$CA,0,$12,0,$C0,0,$10,0,$B7
		dc.b	0,$11,0,$AF,0,$12,0,$A6,0,$17,0,$9E,0,$1E,0,$97
		dc.b	0,$26,0,$93,0,$2E,0,$91,0,$36,0,$90,0,$40,0,$90
		dc.b	0,$70
loc_1E9CE:
		dc.b	0,$5C,0,$10,0,$10,0,$10,0,$70,0,$C0,0,$70,0,$D2
		dc.b	0,$6E,0,$E3,0,$62,0,$ED,0,$53,0,$F0,0,$40,0,$ED
		dc.b	0,$2D,0,$E3,0,$1E,0,$D2,0,$13,0,$C0,0,$10,0,$A8
		dc.b	0,$10,0,$9C,0,$14,0,$94,0,$1A,0,$90,0,$28,0,$94
		dc.b	0,$36,0,$9C,0,$3C,0,$A8,0,$40,0,$B5,0,$3D,0,$C0
		dc.b	0,$38,0,$CA,0,$32,0,$D8,0,$30,0,$F0,0,$30
loc_1EA2C:
		dc.b	0,$70,0,$90,0,$70,0,$90,0,$40,0,$91,0,$36,0,$93
		dc.b	0,$2E,0,$97,0,$26,0,$9E,0,$1E,0,$A6,0,$17,0,$AF
		dc.b	0,$12,0,$B7,0,$11,0,$C0,0,$10,0,$CA,0,$12,0,$D4
		dc.b	0,$14,0,$DB,0,$17,0,$E3,0,$1E,0,$E8,0,$26,0,$ED
		dc.b	0,$2E,0,$EF,0,$36,0,$F0,0,$40,0,$EF,0,$48,0,$ED
		dc.b	0,$52,0,$E8,0,$5A,0,$E3,0,$62,0,$DB,0,$68,0,$D4
		dc.b	0,$6C,0,$CA,0,$6F,0,$C0,0,$70,0,$10,0,$70,0,$10
		dc.b	0,$10
loc_1EA9E:
		dc.b	0,$5C,0,$F0,0,$30,0,$D8,0,$30,0,$CA,0,$32,0,$C0
		dc.b	0,$38,0,$B5,0,$3D,0,$A8,0,$40,0,$9C,0,$3C,0,$94
		dc.b	0,$36,0,$90,0,$28,0,$94,0,$1A,0,$9C,0,$14,0,$A8
		dc.b	0,$10,0,$C0,0,$10,0,$D2,0,$13,0,$E3,0,$1E,0,$ED
		dc.b	0,$2D,0,$F0,0,$40,0,$ED,0,$53,0,$E3,0,$62,0,$D2
		dc.b	0,$6E,0,$C0,0,$70,0,$10,0,$70,0,$10,0,$10
loc_1EAFC:
		dc.b	0,$74,1,$10,0,$10,1,$10,0,$70,0,$40,0,$70,0,$35
		dc.b	0,$6F,0,$28,0,$6A,0,$1E,0,$62,0,$15,0,$58,0,$11
		dc.b	0,$4A,0,$10,0,$40,0,$11,0,$35,0,$15,0,$27,0,$1E
		dc.b	0,$1E,0,$28,0,$15,0,$35,0,$11,0,$40,0,$10,0,$50
		dc.b	0,$10,0,$5E,0,$12,0,$68,0,$18,0,$6D,0,$24,0,$70
		dc.b	0,$30,0,$6D,0,$3D,0,$68,0,$48,0,$5E,0,$4E,0,$50
		dc.b	0,$50,0,$30,0,$50,0,$22,0,$52,0,$17,0,$5A,0,$11
		dc.b	0,$63,0,$10,0,$70
loc_1EB72:
		dc.b	0,$5C,1,$10,0,$10,1,$10,0,$70,0,$40,0,$70,0,$2E
		dc.b	0,$6E,0,$1D,0,$62,0,$13,0,$53,0,$10,0,$40,0,$13
		dc.b	0,$2D,0,$1D,0,$1E,0,$2E,0,$13,0,$40,0,$10,0,$58
		dc.b	0,$10,0,$64,0,$14,0,$6C,0,$1A,0,$70,0,$28,0,$6C
		dc.b	0,$36,0,$64,0,$3C,0,$58,0,$40,0,$4B,0,$3D,0,$40
		dc.b	0,$38,0,$36,0,$32,0,$28,0,$30,0,$10,0,$30
loc_1EBD0:
		dc.b	0,$74,0,$10,0,$70,0,$11,0,$63,0,$17,0,$5A,0,$22
		dc.b	0,$52,0,$30,0,$50,0,$50,0,$50,0,$5E,0,$4E,0,$68
		dc.b	0,$48,0,$6D,0,$3D,0,$70,0,$30,0,$6D,0,$24,0,$68
		dc.b	0,$18,0,$5E,0,$12,0,$50,0,$10,0,$40,0,$10,0,$35
		dc.b	0,$11,0,$28,0,$15,0,$1E,0,$1E,0,$15,0,$27,0,$11
		dc.b	0,$35,0,$10,0,$40,0,$11,0,$4A,0,$15,0,$58,0,$1E
		dc.b	0,$62,0,$28,0,$6A,0,$35,0,$6F,0,$40,0,$70,1,$10
		dc.b	0,$70,1,$10,0,$10
loc_1EC46:
		dc.b	0,$5C,0,$10,0,$30,0,$28,0,$30,0,$36,0,$32,0,$40
		dc.b	0,$38,0,$4B,0,$3D,0,$58,0,$40,0,$64,0,$3C,0,$6C
		dc.b	0,$36,0,$70,0,$28,0,$6C,0,$1A,0,$64,0,$14,0,$58
		dc.b	0,$10,0,$40,0,$10,0,$2E,0,$13,0,$1D,0,$1E,0,$13
		dc.b	0,$2D,0,$10,0,$40,0,$13,0,$53,0,$1D,0,$62,0,$2E
		dc.b	0,$6E,0,$40,0,$70,1,$10,0,$70,1,$10,0,$10	
;-------------------------------------------------------------------------------	
loc_1ECA4:
		dc.w	loc_1ECC2-loc_1ECA4
		dc.w	loc_1ECC2-loc_1ECA4
		dc.w	loc_1ECD8-loc_1ECA4
		dc.w	loc_1ED02-loc_1ECA4
		dc.w	loc_1ED18-loc_1ECA4
		dc.w	loc_1ED2E-loc_1ECA4
		dc.w	loc_1ED44-loc_1ECA4
		dc.w	loc_1ED56-loc_1ECA4
		dc.w	loc_1ED70-loc_1ECA4
		dc.w	loc_1ED8A-loc_1ECA4
		dc.w	loc_1ED9C-loc_1ECA4
		dc.w	loc_1EDAE-loc_1ECA4
		dc.w	loc_1EDC8-loc_1ECA4
		dc.w	loc_1EDDE-loc_1ECA4
		dc.w	loc_1EDEC-loc_1ECA4
loc_1ECC2:
		dc.b	0,$14,7,$90,3,$B0,7,$10,3,$B0,7,$10,6,$B0,$A,$90
		dc.b	6,$B0,$A,$90,6,$70
loc_1ECD8:
		dc.b	0,$28,7,$90,3,$F0,7,$90,4,$B0,$A,0,4,$B0,$C,$10
		dc.b	4,$B0,$C,$10,3,$30,$D,$90,3,$30,$D,$90,1,$B0,$F,$10
		dc.b	1,$B0,$F,$10,2,$B0,$F,$90,2,$B0
loc_1ED02:
		dc.b	0,$14,$A,$F0,6,$30,$E,$90,6,$30,$E,$90,6,$B0,$F,$90
		dc.b	6,$B0,$F,$90,6,$70
loc_1ED18:
		dc.b	0,$14,$F,$90,2,$F0,$F,$90,4,$B0,$F,$10,4,$B0,$F,$10
		dc.b	6,$30,$F,$90,6,$30
loc_1ED2E:
		dc.b	0,$14,$14,$10,5,$30,$11,$90,5,$30,$11,$90,6,$B0,$14,$10
		dc.b	6,$B0,$14,$10,5,$70
loc_1ED44:
		dc.b	0,$10,$1A,$F0,5,$30,$1B,$90,5,$30,$1B,$90,3,$30,$1E,$10
		dc.b	3,$30
loc_1ED56:
		dc.b	0,$18,$1A,$90,5,$70,$1A,$90,5,$B0,$1C,$10,5,$B0,$1C,$10
		dc.b	4,$30,$1E,$10,4,$30,$1E,$10,3,$70
loc_1ED70:
		dc.b	0,$18,$24,$90,3,$70,$24,$90,3,$D0,$23,$90,3,$D0,$23,$90
		dc.b	5,$D0,$25,$10,5,$D0,$25,$10,5,$70
loc_1ED8A:
		dc.b	0,$10,$24,$F0,3,$30,$25,$90,3,$30,$25,$90,5,$30,$25,$70
		dc.b	5,$30
loc_1ED9C:
		dc.b	0,$10,3,$10,3,$30,2,$90,3,$30,2,$90,2,$30,4,$90
		dc.b	2,$30
loc_1EDAE:
		dc.b	0,$18,3,$10,3,$70,3,$10,3,$B0,4,$10,3,$B0,4,$10
		dc.b	2,$B0,4,$90,2,$B0,4,$90,2,$70
loc_1EDC8:
		dc.b	0,$14,4,$90,6,$F0,4,$90,7,$30,6,$90,7,$30,8,$90
		dc.b	7,$30,8,$90,6,$F0
loc_1EDDE:
		dc.b	0,$C,$B,$F0,3,$30,$D,$90,3,$30,$D,$90,2,$F0
loc_1EDEC:
		dc.b	0,$1C,$D,$90,2,$B0,$C,$90,2,$B0,$C,$90,0,$B0,$E,$80
		dc.b	0,$B0,$11,$10,0,$B0,$11,$10,2,$30,$10,$F0,2,$30	
;=============================================================================== 
; Object 0x1E - Chemical Plant - Tube Attributes
; [ End ]	
;=============================================================================== 