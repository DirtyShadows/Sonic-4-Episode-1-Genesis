;=============================================================================== 
; Object 0x47 - Switch - Metropolis / Oil Ocean / Dust Hill
; [ Begin ]	
;===============================================================================	
loc_20B10:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_20B1E(pc,d0),d1
		jmp	loc_20B1E(pc,d1)	
loc_20B1E:
		dc.w	loc_20B22-loc_20B1E
		dc.w	loc_20B4E-loc_20B1E
loc_20B22:
		addq.b	#2,$24(a0)
		move.l	#Switch_Mappings,4(a0) 
		move.w	#$424,2(a0)
		bsr	loc_20BDE
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		addq.w	#4,$C(a0)
loc_20B4E:
		tst.b	1(a0)
		bpl.s	loc_20BAE
		move.w	#$1B,d1
		move.w	#4,d2
		move.w	#5,d3
		move.w	8(a0),d4
		bsr	loc_20BE4
		move.b	#0,$1A(a0)
		move.b	$28(a0),d0
		and.w	#$F,d0
		lea	($FFFFF7E0).w,a3
		lea	0(a3,d0),a3
		moveq	#0,d3
		btst	#6,$28(a0)
		beq.s	loc_20B8A
		moveq	#7,d3
loc_20B8A:
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_20B98
		bclr	d3,(a3)
		bra.s	loc_20BAE
loc_20B98:
		tst.b	(a3)
		bne.s	loc_20BA6
		move.w	#$CD,d0
		jsr	Play_Sfx	
loc_20BA6:
		bset	d3,(a3)
		move.b	#1,$1A(a0)
loc_20BAE:
		bra	loc_20BD8
;-------------------------------------------------------------------------------	
Switch_Mappings: 
		dc.w	loc_20BB8-Switch_Mappings
		dc.w	loc_20BC2-Switch_Mappings
		dc.w	loc_20BCC-Switch_Mappings
loc_20BB8:
		dc.w	$1
		dc.l	$F40D0000,$FFF0
loc_20BC2:
		dc.w	$1
		dc.l	$F40D0008,$4FFF0
loc_20BCC:
		dc.w	$1
		dc.l	$F80D0000,$FFF0
;=============================================================================== 
; Object 0x47 - Switch - Metropolis / Oil Ocean / Dust Hill
; [ End ]	
;===============================================================================	