;=============================================================================== 
; Object 0x0B - Chemical Plant - Open / Close Platforms
; [ Begin ]	
;===============================================================================
loc_1BEF0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1BEFE(pc,d0),d1
		jmp	loc_1BEFE(pc,d1)	
loc_1BEFE:
		dc.w	loc_1BF04-loc_1BEFE
		dc.w	loc_1BF58-loc_1BEFE
		dc.w	loc_1BF66-loc_1BEFE
loc_1BF04:
		addq.b	#2,$24(a0)
		move.l	#Open_Close_Platform_Mappings,4(a0) 
		move.w	#$E3B0,2(a0)
		bsr	loc_1C046
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		and.w	#$F0,d0
		add.w	#$10,d0
		move.w	d0,d1
		subq.w	#1,d0
		move.w	d0,$30(a0)
		move.w	d0,$32(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		and.w	#$F,d0
		addq.w	#1,d0
		lsl.w	#4,d0
		move.b	d0,$36(a0)
loc_1BF58:
		move.b	($FFFFFE0F).w,d0
		add.b	$36(a0),d0
		bne.s	loc_1BF90
		addq.b	#2,$24(a0)
loc_1BF66:
		subq.w	#1,$30(a0)
		bpl.s	loc_1BF84
		move.w	#$7F,$30(a0)
		tst.b	$1C(a0)
		beq.s	loc_1BF7E
		move.w	$32(a0),$30(a0)
loc_1BF7E:
		bchg	#0,$1C(a0)
loc_1BF84:
		lea	(Open_Close_Platform_Animate_Data),a1 
		jsr	animateSprite	
loc_1BF90:
		tst.b	$1A(a0)
		bne.s	loc_1BFAA
		moveq	#0,d1
		move.b	$19(a0),d1
		moveq	#$11,d3
		move.w	8(a0),d4
		bsr	loc_15C6A
		bra	loc_1C040
loc_1BFAA:
		btst	#3,$22(a0)
		beq.s	loc_1BFC2
		lea	($FFFFB000).w,a1
		bclr	#3,$22(a1)
		bclr	#3,$22(a0)
loc_1BFC2:
		bra	loc_1C040
;-------------------------------------------------------------------------------
Open_Close_Platform_Animate_Data: 
		dc.w	loc_1BFCA-Open_Close_Platform_Animate_Data
		dc.w	loc_1BFD2-Open_Close_Platform_Animate_Data
loc_1BFCA:
		dc.b	7,0,1,2,3,4,$FE,$1
loc_1BFD2:
		dc.b	7,4,3,2,1,0,$FE,$1	
;-------------------------------------------------------------------------------	
Open_Close_Platform_Mappings: 
		dc.w	loc_1BFE4-Open_Close_Platform_Mappings
		dc.w	loc_1BFF6-Open_Close_Platform_Mappings
		dc.w	loc_1C008-Open_Close_Platform_Mappings
		dc.w	loc_1C01A-Open_Close_Platform_Mappings
		dc.w	loc_1C02C-Open_Close_Platform_Mappings
loc_1BFE4:
		dc.w	$2
		dc.l	$F00C0000,$FFF0,$F80E0024,$12FFF0
loc_1BFF6:
		dc.w	$2
		dc.l	$E80F0004,$2FFF0,$F80E0024,$12FFF0
loc_1C008:
		dc.w	$2
		dc.l	$F40F0014,$AFFF0,$F80E0024,$12FFF0
loc_1C01A:
		dc.w	$2
		dc.l	$F1004,$1002FFF0,$F80E0024,$12FFF0
loc_1C02C:
		dc.w	$2
		dc.l	$100C1000,$1000FFF0,$F80E0024,$12FFF0	
;=============================================================================== 
; Object 0x0B - Chemical Plant - Open / Close Platforms
; [ End ]	
;=============================================================================== 