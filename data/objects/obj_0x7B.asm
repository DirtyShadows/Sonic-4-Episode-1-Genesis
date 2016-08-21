;=============================================================================== 
; Object 0x7B - Chemical Plant - Spring Over Tubes 
; [ Begin ]	
;===============================================================================
loc_25338:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_25368(pc,d0),d1
		jsr	loc_25368(pc,d1)
		tst.w	($FFFFFFD8).w
		beq.s	loc_25350
		bra	loc_25560
loc_25350:
		move.w	8(a0),d0
		and.w	#$FF80,d0
		sub.w	($FFFFF7DA).w,d0
		cmp.w	#$280,d0
		bhi	loc_25566
		bra	loc_25560
loc_25368:
		dc.w	loc_25370-loc_25368
		dc.w	loc_253A6-loc_25368
loc_2536C:
		dc.w	$F000,$F580
loc_25370:
		addq.b	#2,$24(a0)
		move.l	#Spring_Tubes_Mappings,4(a0) 
		move.w	#$3E0,2(a0)
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#1,$18(a0)
		move.b	$28(a0),d0
		and.w	#2,d0
		move.w	loc_2536C(pc,d0),$30(a0)
		bsr	loc_25572
loc_253A6:
		cmp.b	#1,$1A(a0)
		beq.s	loc_253F0
		move.w	#$1B,d1
		move.w	#8,d2
		move.w	#$10,d3
		move.w	8(a0),d4
		lea	($FFFFB000).w,a1
		moveq	#3,d6
		movem.l D1-D4,-(sp)
		bsr	loc_25578
		btst	#3,$22(a0)
		beq.s	loc_253D8
		bsr	loc_25460
loc_253D8:
		movem.l (sp)+,d1-D4
		lea	($FFFFB040).w,a1
		moveq	#4,d6
		bsr	loc_25578
		btst	#4,$22(a0)
		beq.s	loc_253F0
		bsr.s	loc_25460
loc_253F0:
		move.w	8(a0),d4
		move.w	d4,d5
		sub.w	#$10,d4
		add.w	#$10,d5
		move.w	$C(a0),d2
		move.w	d2,d3
		add.w	#$30,d3
		move.w	($FFFFB008).w,d0
		cmp.w	d4,d0
		bcs.s	loc_2542E
		cmp.w	d5,d0
		bcc.s	loc_2542E
		move.w	($FFFFB00C).w,d0
		cmp.w	d2,d0
		bcs.s	loc_2542E
		cmp.w	d3,d0
		bcc.s	loc_2542E
		cmp.b	#2,$1D(a0)
		beq.s	loc_2542E
		move.b	#2,$1C(a0)
loc_2542E:
		move.w	($FFFFB048).w,d0
		cmp.w	d4,d0
		bcs.s	loc_25454
		cmp.w	d5,d0
		bcc.s	loc_25454
		move.w	($FFFFB04C).w,d0
		cmp.w	d2,d0
		bcs.s	loc_25454
		cmp.w	d3,d0
		bcc.s	loc_25454
		cmp.b	#3,$1D(a0)
		beq.s	loc_25454
		move.b	#3,$1C(a0)
loc_25454:
		lea	(Spring_Tube_Animate_Data),a1 
		bra	loc_2556C
		rts
loc_25460:
		move.w	#$100,$1C(a0)
		addq.w	#4,$C(a1)
		move.w	$30(a0),$12(a1)
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#$10,$1C(a1)
		move.b	#2,$24(a1)
		move.b	$28(a0),d0
		bpl.s	loc_25494
		move.w	#0,$10(a1)
loc_25494:
		btst	#0,d0
		beq.s	loc_254D4
		move.w	#1,$14(a1)
		move.b	#1,$27(a1)
		move.b	#0,$1C(a1)
		move.b	#0,$2C(a1)
		move.b	#4,$2D(a1)
		btst	#1,d0
		bne.s	loc_254C4
		move.b	#1,$2C(a1)
loc_254C4:
		btst	#0,$22(a1)
		beq.s	loc_254D4
		neg.b	$27(a1)
		neg.w	$14(a1)
loc_254D4:
		and.b	#$C,d0
		cmp.b	#4,d0
		bne.s	loc_254EA
		move.b	#$C,$3E(a1)
		move.b	#$D,$3F(a1)
loc_254EA:
		cmp.b	#8,d0
		bne.s	loc_254FC
		move.b	#$E,$3E(a1)
		move.b	#$F,$3F(a1)
loc_254FC:
		move.w	#$CC,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------
Spring_Tube_Animate_Data: 
		dc.w	loc_2550E-Spring_Tube_Animate_Data
		dc.w	loc_25511-Spring_Tube_Animate_Data
		dc.w	loc_25515-Spring_Tube_Animate_Data
		dc.w	loc_25515-Spring_Tube_Animate_Data
loc_2550E:
		dc.b	$F,0,$FF
loc_25511:
		dc.b	0,3,$FD,$0
loc_25515:
		dc.b	5,1,2,2,2,4,$FD,0,$0	
;-------------------------------------------------------------------------------
Spring_Tubes_Mappings: 
		dc.w	loc_25528-Spring_Tubes_Mappings
		dc.w	loc_25532-Spring_Tubes_Mappings
		dc.w	loc_25544-Spring_Tubes_Mappings
		dc.w	loc_25556-Spring_Tubes_Mappings
		dc.w	loc_25532-Spring_Tubes_Mappings
loc_25528:
		dc.w	$1
		dc.l	$F00D0000,$FFF0
loc_25532:
		dc.w	$2
		dc.l	$E0070008,$4FFF0,$E0070808,$8040000
loc_25544:
		dc.w	$2
		dc.l	$E0070010,$8FFF0,$E0070810,$8080000
loc_25556:
		dc.w	$1
		dc.l	$F00D0018,$CFFF0	
;=============================================================================== 
; Object 0x7B - Chemical Plant - Spring Over Tubes 
; [ End ]	
;===============================================================================	