;=============================================================================== 
; Object 0x22 - Arrow Shooter - Neo Green Hill 
; [ Begin ]	
;===============================================================================
loc_21450:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_2145E(pc,d0),d1
		jmp	loc_2145E(pc,d1)
loc_2145E:
		dc.w	loc_21468-loc_2145E
		dc.w	loc_2149C-loc_2145E
		dc.w	loc_214E6-loc_2145E
		dc.w	loc_21536-loc_2145E
		dc.w	loc_2157A-loc_2145E
loc_21468:
		addq.b	#2,$24(a0)
		move.l	#Arrow_Shooter_Mappings,4(a0) 
		move.w	#$417,2(a0)
		bsr	loc_2163C
		or.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.b	#$10,$19(a0)
		move.b	#1,$1A(a0)
		and.b	#$F,$28(a0)
loc_2149C:
		cmp.b	#2,$1C(a0)
		beq.s	loc_214C2
		moveq	#0,d2
		lea	($FFFFB000).w,a1
		bsr.s	loc_214D0
		lea	($FFFFB040).w,a1
		bsr.s	loc_214D0
		tst.b	d2
		bne.s	loc_214BE
		tst.b	$1C(a0)
		beq.s	loc_214BE
		moveq	#2,d2
loc_214BE:
		move.b	d2,$1C(a0)
loc_214C2:
		lea	(arrow_Shooter_Animate_Data),a1 
		bsr	loc_21636
		bra	loc_21630
loc_214D0:
		move.w	8(a0),d0
		sub.w	8(a1),d0
		bcc.s	loc_214DC
		neg.w	d0
loc_214DC:
		cmp.w	#$40,d0
		bcc.s	loc_214E4
		moveq	#1,d2
loc_214E4:
		rts
loc_214E6:
		bsr	loc_2162A
		bne.s	loc_21524
		move.b	0(a0),0(a1)
		addq.b	#6,$24(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.b	1(a0),1(a1)
		move.b	$22(a0),$22(a1)
		move.w	#$DB,d0
		jsr	Play_Sfx	
loc_21524:
		subq.b	#2,$24(a0)
		lea	(arrow_Shooter_Animate_Data),a1 
		bsr	loc_21636
		bra	loc_21630
loc_21536:
		addq.b	#2,$24(a0)
		move.b	#8,$16(a0)
		move.b	#$10,$17(a0)
		move.b	#4,$18(a0)
		move.b	#$9B,$20(a0)
		move.b	#8,$19(a0)
		move.b	#0,$1A(a0)
		move.w	#$400,$10(a0)
		btst	#0,$22(a0)
		beq.s	loc_21570
		neg.w	$10(a0)
loc_21570:
		move.w	#$AE,d0
		jsr	Play_Sfx	
loc_2157A:
		bsr	loc_21642
		btst	#0,$22(a0)
		bne.s	loc_2159A
		moveq	#$FFFFFFF8,d3
		bsr	loc_1AF1E
		tst.w	d1
		bmi	loc_21596
		bra	loc_21630
loc_21596:
		bra	loc_21624
loc_2159A:
		moveq	#8,d3
		bsr	loc_1AD98
		tst.w	d1
		bmi	loc_21596
		bra	loc_21630	
;-------------------------------------------------------------------------------
Arrow_Shooter_Animate_Data: 
		dc.w	loc_215B0-Arrow_Shooter_Animate_Data
		dc.w	loc_215B3-Arrow_Shooter_Animate_Data
		dc.w	loc_215B7-Arrow_Shooter_Animate_Data
loc_215B0:
		dc.b	$1F,1,$FF
loc_215B3:
		dc.b	3,1,2,$FF
loc_215B7:
		dc.b	7,3,4,$FC,4,3,1,$FD,$0	
;-------------------------------------------------------------------------------	
Arrow_Shooter_Mappings: 
		dc.w	loc_215CA-Arrow_Shooter_Mappings
		dc.w	loc_215D4-Arrow_Shooter_Mappings
		dc.w	loc_215E6-Arrow_Shooter_Mappings
		dc.w	loc_21600-Arrow_Shooter_Mappings
		dc.w	loc_21612-Arrow_Shooter_Mappings
loc_215CA:
		dc.w	$1
		dc.l	$FC0C2000,$2000FFF0
loc_215D4:
		dc.w	$2
		dc.l	$F8092004,$2002FFF0,$F801200B,$20050008
loc_215E6:
		dc.w	$3
		dc.l	$FC00000A,$5FFFC,$F8092004,$2002FFF0
		dc.l	$F801200B,$20050008
loc_21600:
		dc.w	$2
		dc.l	$F8092004,$2002FFF0,$F801200D,$20060008
loc_21612:
		dc.w	$2
		dc.l	$F8092004,$2002FFF0,$F801200F,$20070008	
;=============================================================================== 
; Object 0x22 - Arrow Shooter - Neo Green Hill 
; [ End ]	
;===============================================================================	