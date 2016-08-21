;=============================================================================== 
; Object 0x40 - Diagonal Springs - Dust Hill / Chemical Plant / Neo Green Hill 
; [ Begin ]	
;===============================================================================	
loc_22130:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_22142(pc,d0),d1
		jsr	loc_22142(pc,d1)
		bra	loc_223DC
loc_22142:
		dc.w	loc_2214C-loc_22142
		dc.w	loc_22188-loc_22142
loc_22146:
		dc.w	$FC00,$F600,$F800
loc_2214C:
		addq.b	#2,$24(a0)
		move.l	#Diagonal_Spring_Mappings,4(a0) 
		move.w	#$440,2(a0)
		bsr	loc_223E8
		or.b	#4,1(a0)
		move.b	#$1C,$19(a0)
		move.b	#4,$18(a0)
		bset	#7,$22(a0)
		move.b	$28(a0),d0
		and.w	#2,d0
		move.w	loc_22146(pc,d0),$30(a0)
loc_22188:
		lea	(Diagonal_Spring_Animate_Data),a1 
		bsr	loc_223E2
		move.w	#$27,d1
		move.w	#8,d2
		move.w	8(a0),d4
		lea	loc_22358(pc),a2
		tst.b	$1A(a0)
		beq.s	loc_221AC
		lea	loc_22380(pc),a2
loc_221AC:
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_223EE
		btst	#3,$22(a0)
		beq.s	loc_221C4
		bsr.s	loc_221DE
loc_221C4:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_223EE
		btst	#4,$22(a0)
		beq.s	loc_221DC
		bsr.s	loc_221DE
loc_221DC:
		rts
loc_221DE:
		btst	#0,$22(a0)
		bne.s	loc_221F6
		move.w	8(a0),d0
		sub.w	#$10,d0
		cmp.w	8(a1),d0
		bcs.s	loc_22206
		rts
loc_221F6:
		move.w	8(a0),d0
		add.w	#$10,d0
		cmp.w	8(a1),d0
		bcc.s	loc_22206
		rts
loc_22206:
		cmp.b	#1,$1C(a0)
		beq.s	loc_22216
		move.w	#$100,$1C(a0)
		rts
loc_22216:
		tst.b	$1A(a0)
		beq.s	loc_2221E
		rts
loc_2221E:
		move.w	8(a0),d0
		sub.w	#$1C,d0
		sub.w	8(a1),d0
		neg.w	d0
		btst	#0,$22(a0)
		beq.s	loc_2223A
		not.w	d0
		add.w	#$27,d0
loc_2223A:
		tst.w	d0
		bpl.s	loc_22240
		moveq	#0,d0
loc_22240:
		lea	(loc_22310),a3
		move.b	0(a3,d0),d0
		move.w	#$FC00,$12(a1)
		sub.b	d0,$12(a1)
		bset	#0,$22(a1)
		btst	#0,$22(a0)
		bne.s	loc_2226A
		bclr	#0,$22(a1)
		neg.b	d0
loc_2226A:
		move.w	$10(a1),d1
		bpl.s	loc_22272
		neg.w	d1
loc_22272:
		cmp.w	#$400,d1
		bcs.s	loc_2227C
		sub.b	d0,$10(a1)
loc_2227C:
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#$10,$1C(a1)
		move.b	#2,$24(a1)
		move.b	#0,$39(a1)
		move.b	$28(a0),d0
		btst	#0,d0
		beq.s	loc_222DE
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#1,$2C(a1)
		move.b	#8,$2D(a1)
		btst	#1,d0
		bne.s	loc_222CE
		move.b	#3,$2C(a1)
loc_222CE:
		btst	#0,$22(a1)
		beq.s	loc_222DE
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_222DE:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_222F4
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_222F4:
		cmp.b	#8,d0
		bne.s	loc_22306
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_22306:
		move.w	#$CC,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------
loc_22310:	
		dc.b	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$0
		dc.b	0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,$1
		dc.b	1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,$2
		dc.b	3,3,3,3,3,3,4,4,0,0,0,0,0,0,0,$0
		dc.b	0,0,0,0,0,0,0,$0
loc_22358:	
		dc.b	8,8,8,8,8,8,8,9,$A,$B,$C,$D,$E,$F,$10,$10
		dc.b	$11,$12,$13,$14,$14,$15,$15,$16,$17,$18,$18,$18,$18,$18,$18,$18
		dc.b	$18,$18,$18,$18,$18,$18,$18,$18	
loc_22380:
		dc.b	8,8,8,8,8,8,8,9,$A,$B,$C,$C,$C,$C,$D,$D
		dc.b	$D,$D,$D,$D,$E,$E,$F,$F,$10,$10,$10,$10,$F,$F,$E,$E
		dc.b	$D,$D,$D,$D,$D,$D,$D,$D	
;-------------------------------------------------------------------------------
Diagonal_Spring_Animate_Data: 
		dc.w	loc_223AC-Diagonal_Spring_Animate_Data
		dc.w	loc_223AF-Diagonal_Spring_Animate_Data
loc_223AC:
		dc.b	$F,0,$FF
loc_223AF:
		dc.b	3,1,0,$FD,$0	
;-------------------------------------------------------------------------------	
Diagonal_Spring_Mappings: 
		dc.w	loc_223B8-Diagonal_Spring_Mappings
		dc.w	loc_223CA-Diagonal_Spring_Mappings
loc_223B8:
		dc.w	$2
		dc.l	$E8090000,$FFE4,$E80D0006,$3FFFC
loc_223CA:
		dc.w	$2
		dc.l	$E809000E,$7FFE4,$E80D0014,$AFFFC	
;=============================================================================== 
; Object 0x41 - Diagonal Springs - Dust Hill / Chemical Plant / Neo Green Hill 
; [ End ]
;===============================================================================	