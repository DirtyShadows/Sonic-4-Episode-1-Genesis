;===============================================================================
; Object 0x86 - Flippers - Casino Night
; [ Begin ]
;===============================================================================
loc_26CF0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_26D02(pc,d0),d1
		jsr	loc_26D02(pc,d1)
		bra	loc_270B4
loc_26D02:
		dc.w	loc_26D08-loc_26D02
		dc.w	loc_26D44-loc_26D02
		dc.w	loc_26EC2-loc_26D02
loc_26D08:
		addq.b	#2,$24(a0)
		move.l	#Flippers_Mappings,4(a0) 
		move.w	#$43B2,2(a0)
		bsr	loc_270C0
		or.b	#4,1(a0)
		move.b	#$18,$19(a0)
		move.b	#4,$18(a0)
		tst.b	$28(a0)
		beq.s	loc_26D44
		addq.b	#2,$24(a0)
		move.b	#2,$1C(a0)
		bra	loc_26EC2
loc_26D44:
		tst.w	($FFFFFE08).w
		bne.s	loc_26DB8
		lea	(loc_26F76),a2
		move.b	$1A(a0),d0
		beq.s	loc_26D66
		lea	(loc_26F9A),a2
		subq.b	#1,d0
		beq.s	loc_26D66
		lea	(loc_26FBE),a2
loc_26D66:
		move.w	#$23,d1
		move.w	#6,d2
		move.w	8(a0),d4
		bsr	loc_270D2
		lea	$36(a0),a3
		lea	($FFFFB000).w,a1
		move.w	($FFFFF602).w,d5
		moveq	#3,d6
		bsr.s	loc_26DBA
		addq.w	#1,a3
		lea	($FFFFB040).w,a1
		move.w	($FFFFF606).w,d5
		moveq	#4,d6
		bsr.s	loc_26DBA
		tst.b	$38(a0)
		beq.s	loc_26DAE
		clr.b	$38(a0)
		bsr	loc_26E40
		subq.w	#1,a3
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		bsr	loc_26E40
loc_26DAE:
		lea	(Flippers_Animate_Data),a1 
		bra	loc_270BA
loc_26DB8:
		rts
loc_26DBA:
		move.b	(a3),d0
		bne.s	loc_26DEC
		btst	d6,$22(a0)
		beq.s	loc_26DB8
		move.b	#1,$2A(a1)
		move.b	#$E,$16(a1)
		move.b	#7,$17(a1)
		move.b	#2,$1C(a1)
		bset	#2,$22(a1)
		bne.s	loc_26DE8
		addq.w	#5,$C(a1)
loc_26DE8:
		addq.b	#1,(a3)
		rts
loc_26DEC:
		and.w	#$70,d5
		bne.s	loc_26E38
		btst	d6,$22(a0)
		bne.s	loc_26E04
		move.b	#0,$2A(a1)
		move.b	#0,(a3)
		rts
loc_26E04:
		moveq	#0,d1
		move.b	$1A(a0),d1
		subq.w	#1,d1
		bset	#0,$22(a1)
		btst	#0,$22(a0)
		bne.s	loc_26E22
		neg.w	d1
		bclr	#0,$22(a1)
loc_26E22:
		add.w	d1,8(a1)
		lsl.w	#8,d1
		move.w	d1,$10(a1)
		move.w	d1,$14(a1)
		move.w	#0,$12(a1)
		rts
loc_26E38:
		move.b	#1,$38(a0)
		rts
loc_26E40:
		bclr	d6,$22(a0)
		beq	loc_26DB8
		move.w	8(a1),d0
		sub.w	8(a0),d0
		btst	#0,$22(a0)
		beq.s	loc_26E5A
		neg.w	d0
loc_26E5A:
		add.w	#$23,d0
		move.w	d0,d2
		cmp.w	#$40,d2
		bcs.s	loc_26E6A
		move.w	#$40,d2
loc_26E6A:
		lsl.w	#5,d2
		add.w	#$800,d2
		neg.w	d2
		asr.w	#2,d0
		add.w	#$40,d0
		bsr	loc_270C6
		muls.w	d2,d0
		muls.w	d2,d1
		asr.l	#8,d0
		asr.l	#8,d1
		move.w	d0,$12(a1)
		btst	#0,$22(a0)
		beq.s	loc_26E92
		neg.w	d1
loc_26E92:
		move.w	d1,$10(a1)
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#2,$24(a1)
		move.b	#0,$2A(a1)
		move.b	#1,$1C(a0)
		move.b	#0,(a3)
		move.w	#$E3,d0
		jmp	Play_Sfx	
loc_26EC2:
		move.w	#$13,d1
		move.w	#$18,d2
		move.w	#$19,d3
		move.w	8(a0),d4
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_270CC
		btst	#5,$22(a0)
		beq.s	loc_26EEA
		bsr.s	loc_26F0C
loc_26EEA:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_270CC
		btst	#6,$22(a0)
		beq.s	loc_26F02
		bsr.s	loc_26F0C
loc_26F02:
		lea	(Flippers_Animate_Data),a1 
		bra	loc_270BA
loc_26F0C:
		move.w	#$300,$1C(a0)
		move.w	#$F000,$10(a1)
		addq.w	#8,8(a1)
		bset	#0,$22(a1)
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcc.s	loc_26F42
		bclr	#0,$22(a1)
		sub.w	#$10,8(a1)
		neg.w	$10(a1)
		move.w	#$400,$1C(a0)
loc_26F42:
		move.w	#$F,$2E(a1)
		move.w	$10(a1),$14(a1)
		move.b	#$E,$16(a1)
		move.b	#7,$17(a1)
		move.b	#2,$1C(a1)
		bset	#2,$22(a1)
		bne.s	loc_26F6C
		addq.w	#5,$C(a1)
loc_26F6C:
		move.w	#$E3,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------
loc_26F76:
		dc.b	7,7,7,7,7,7,7,8,9,$A,$B,$A,9,8,7,$6
		dc.b	5,4,3,2,1,0,$FF,$FE,$FD,$FC,$FB,$FA,$F9,$F8,$F7,$F6
		dc.b	$F5,$F4,$F3,$F2
;-------------------------------------------------------------------------------
loc_26F9A:
		dc.b	6,6,6,6,6,6,7,8,9,9,9,9,9,9,8,$8
		dc.b	8,8,8,8,7,7,7,7,6,6,6,6,5,5,4,$4
		dc.b	4,4,4,$4
;-------------------------------------------------------------------------------	
loc_26FBE:
		dc.b	5,5,5,5,5,6,7,8,9,$A,$B,$B,$C,$C,$D,$D
		dc.b	$E,$E,$F,$F,$10,$10,$11,$11,$12,$12,$11,$11,$10,$10,$10,$10
		dc.b	$10,$10,$10,$10	
;-------------------------------------------------------------------------------
Flippers_Animate_Data: 
		dc.w	loc_26FEC-Flippers_Animate_Data
		dc.w	loc_26FEF-Flippers_Animate_Data
		dc.w	loc_26FF5-Flippers_Animate_Data
		dc.w	loc_26FF8-Flippers_Animate_Data
		dc.w	loc_27001-Flippers_Animate_Data
loc_26FEC:
		dc.b	$F,0,$FF
loc_26FEF:
		dc.b	3,1,2,1,$FD,$0
loc_26FF5:
		dc.b	$F,4,$FF
loc_26FF8:
		dc.b	0,5,4,3,3,3,3,$FD,$2
loc_27001:
		dc.b	0,3,4,5,5,5,5,$FD,$2	
;-------------------------------------------------------------------------------	
Flippers_Mappings: 
		dc.w	loc_27016-Flippers_Mappings
		dc.w	loc_27030-Flippers_Mappings
		dc.w	loc_27042-Flippers_Mappings
		dc.w	loc_2705C-Flippers_Mappings
		dc.w	loc_27076-Flippers_Mappings
		dc.w	loc_27098-Flippers_Mappings
loc_27016:
		dc.w	$3
		dc.l	$F70B000C,$6FFE7,$FE010018,$CFFFF
		dc.l	$105001A,$D0007
loc_27030:
		dc.w	$2
		dc.l	$F80D0000,$FFE8,$F8050008,$40008
loc_27042:
		dc.w	$3
		dc.l	$E90B100C,$1006FFE7,$F2011018,$100CFFFF
		dc.l	$EF05101A,$100D0007
loc_2705C:
		dc.w	$3
		dc.l	$E7090024,$12FFF1,$F709002A,$15FFEF
		dc.l	$7050030,$18FFEF
loc_27076:
		dc.w	$4
		dc.l	$E803001E,$FFFF8,$E803081E,$80F0000
		dc.l	$8010022,$11FFF8,$8010822,$8110000
loc_27098:
		dc.w	$3
		dc.l	$E7090824,$812FFF7,$F709082A,$815FFF9
		dc.l	$7050830,$8180001	
;===============================================================================
; Object 0x86 - Flippers - Casino Night
; [ End ]
;===============================================================================