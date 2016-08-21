;=============================================================================== 
; Object 0x33 - Oil Ocean - Touch to Boost Up
; [ Begin ]	
;=============================================================================== 
loc_1F910:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1F91E(pc,d0),d1
		jmp	loc_1F91E(pc,d1)
loc_1F91E:
		dc.w	loc_1F924-loc_1F91E
		dc.w	loc_1F9AC-loc_1F91E
		dc.w	loc_1FBB6-loc_1F91E
loc_1F924:
		addq.b	#2,$24(a0)
		move.l	#Touch_Booster_Mappings,4(a0)	
		move.w	#$632C,2(a0)
		move.b	#4,1(a0)
		move.b	#3,$18(a0)
		move.b	#$18,$19(a0)
		move.w	$C(a0),$30(a0)
		addq.b	#2,$25(a0)
		move.w	#$78,$36(a0)
		tst.b	$28(a0)
		beq.s	loc_1F964
		move.b	#4,$25(a0)
loc_1F964:
		bsr	loc_1FC4E
		bne.s	loc_1F9AC
		move.b	0(a0),0(a1)
		move.b	#4,$24(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		sub.w	#$10,$C(a1)
		move.l	#Touch_Booster_Mappings_01,4(a1) ;	loc_1FC0C
		move.w	#$62E2,2(a1)
		move.b	#4,1(a1)
		move.b	#4,$18(a1)
		move.b	#$10,$19(a1)
		move.l	a0,$3C(a1)
loc_1F9AC:
		move.w	8(a0),-(sp)
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_1F9D8(pc,d0),d1
		jsr	loc_1F9D8(pc,d1)
		move.w	(sp)+,d4
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		moveq	#8,d2
		move.w	d2,d3
		addq.w	#1,d3
		bsr	loc_1FC54
		bra	loc_1FC48
loc_1F9D8:
		dc.w	loc_1F9E2-loc_1F9D8
		dc.w	loc_1FA06-loc_1F9D8
		dc.w	loc_1FA42-loc_1F9D8
		dc.w	loc_1FB3C-loc_1F9D8
		dc.w	loc_1FBB4-loc_1F9D8
loc_1F9E2:
		subq.w	#1,$36(a0)
		bpl.s	loc_1FA04
		move.w	#$78,$36(a0)
		move.l	#$FFF69800,$32(a0)
		addq.b	#2,$25(a0)
		move.w	#$D4,d0
		jsr	Play_Sfx_Ex	
loc_1FA04:
		rts
loc_1FA06:
		move.l	$C(a0),d1
		add.l	$32(a0),d1
		move.l	d1,$C(a0)
		add.l	#$3800,$32(a0)
		swap.w	d1
		cmp.w	$30(a0),d1
		bcs.s	loc_1FA40
		move.l	$32(a0),d0
		cmp.l	#$10000,d0
		bcc.s	loc_1FA32
		subq.b	#2,$25(a0)
loc_1FA32:
		lsr.l	#2,d0
		neg.l	d0
		move.l	d0,$32(a0)
		move.w	$30(a0),$C(a0)
loc_1FA40:
		rts
loc_1FA42:
		move.w	8(a0),d2
		move.w	d2,d3
		sub.w	#$10,d2
		add.w	#$10,d3
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_1FABA
		cmp.b	#$18,d0
		beq.s	loc_1FABC
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		bsr.s	loc_1FA6E
		lea	($FFFFB040).w,a1
		addq.b	#1,d6
loc_1FA6E:
		btst	d6,$22(a0)
		beq.s	loc_1FABA
		move.w	8(a1),d0
		cmp.w	d2,d0
		bcs.s	loc_1FABA
		cmp.w	d3,d0
		bcc.s	loc_1FABA
		move.b	#1,$2A(a1)
		move.w	#0,$14(a1)
		move.w	#0,$10(a1)
		move.w	#0,$12(a1)
		bclr	#5,$22(a1)
		bclr	#7,2(a1)
		move.l	#$FFF69800,$32(a0)
		addq.b	#2,$25(a0)
		move.w	#$D4,d0
		jsr	Play_Sfx_Ex	
loc_1FABA:
		rts
loc_1FABC:
		lea	($FFFFB000).w,a1
		move.w	8(a1),d0
		cmp.w	d2,d0
		bcs.s	loc_1FB3A
		cmp.w	d3,d0
		bcc.s	loc_1FB3A
		lea	($FFFFB040).w,a2
		move.w	8(a2),d0
		cmp.w	d2,d0
		bcs.s	loc_1FB3A
		cmp.w	d3,d0
		bcc.s	loc_1FB3A
		move.b	#1,$2A(a1)
		move.w	#0,$14(a1)
		move.w	#0,$10(a1)
		move.w	#0,$12(a1)
		bclr	#5,$22(a1)
		bclr	#7,2(a1)
		move.b	#1,$2A(a2)
		move.w	#0,$14(a2)
		move.w	#0,$10(a2)
		move.w	#0,$12(a2)
		bclr	#5,$22(a2)
		bclr	#7,2(a2)
		move.l	#$FFF69800,$32(a0)
		addq.b	#2,$25(a0)
		move.w	#$D4,d0
		jsr	Play_Sfx_Ex	
loc_1FB3A:
		rts
loc_1FB3C:
		move.l	$C(a0),d1
		add.l	$32(a0),d1
		move.l	d1,$C(a0)
		add.l	#$3800,$32(a0)
		swap.w	d1
		move.w	$30(a0),d0
		sub.w	#$7D,d0
		cmp.w	d0,d1
		bne.s	loc_1FBB2
		addq.b	#2,$25(a0)
		lea	($FFFFB000).w,a1
		move.b	$22(a0),d0
		and.b	#8,d0
		bsr.s	loc_1FB7C
		lea	($FFFFB040).w,a1
		move.b	$22(a0),d0
		and.b	#$10,d0
loc_1FB7C:
		beq.s	loc_1FBB2
		move.w	8(a0),8(a1)
		move.b	#2,$1C(a1)
		move.w	#$800,$14(a1)
		bset	#1,$22(a1)
		move.w	#$F000,$12(a1)
		bclr	#3,$22(a1)
		move.b	#0,$2A(a1)
		move.w	#$CC,d0
		jsr	Play_Sfx_Ex	
loc_1FBB2:
		rts
loc_1FBB4:
		rts
loc_1FBB6:
		move.l	$3C(a0),a1
		move.w	$C(a0),d0
		sub.w	$C(a1),d0
		cmp.w	#$14,d0
		blt.s	loc_1FBDE
		move.b	#$9B,$20(a0)
		lea	(Touch_Booster_Animate_Data),a1 
		jsr	animateSprite	
		bra	loc_1FC48
loc_1FBDE:
		move.b	#0,$20(a0)
		move.b	#0,$1B(a0)
		rts
;-------------------------------------------------------------------------------
Touch_Booster_Animate_Data: 
		dc.w	loc_1FBEE-Touch_Booster_Animate_Data
loc_1FBEE:
		dc.b	2,2,0,2,0,2,0,1,$FF,$0
;-------------------------------------------------------------------------------	
Touch_Booster_Mappings: 
		dc.w	loc_1FBFA-Touch_Booster_Mappings
loc_1FBFA:
		dc.w	$2
		dc.l	$F8090000,$FFE8,$F8090800,$8000000	
;-------------------------------------------------------------------------------	
Touch_Booster_Mappings_01: ;	loc_1FC0C:	
		dc.w	loc_1FC12-Touch_Booster_Mappings_01
		dc.w	loc_1FC24-Touch_Booster_Mappings_01
		dc.w	loc_1FC36-Touch_Booster_Mappings_01
loc_1FC12:
		dc.w	$2
		dc.l	$F8060000,$FFF0,$F8060800,$8000000
loc_1FC24:
		dc.w	$2
		dc.l	$F0070006,$3FFF0,$F0070806,$8030000
loc_1FC36:
		dc.w	$2
		dc.l	$5000E,$7FFF0,$5080E,$8070000
;=============================================================================== 
; Object 0x33 - Oil Ocean - Touch to Boost Up
; [ End ]	
;=============================================================================== 