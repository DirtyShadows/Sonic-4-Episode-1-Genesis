;===============================================================================
; Object 0xD2 -> Rotating green platform that appear and disappear
; [ Begin ]
;===============================================================================	
loc_270D8:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_270E6(pc,d0),d1
		jmp	loc_270E6(pc,d1)
loc_270E6:
		dc.w	loc_270EA-loc_270E6
		dc.w	loc_2712E-loc_270E6
loc_270EA:
		addq.b	#2,$24(a0)
		move.l	#Green_Platform_Mappings,4(a0) 
		move.w	#$437C,2(a0)
		bsr	loc_273EA
		or.b	#4,1(a0)
		move.b	#8,$19(a0)
		move.b	#4,$18(a0)
		move.w	8(a0),$30(a0)
		move.w	$C(a0),$32(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsl.w	#4,d0
		move.w	d0,$38(a0)
		bsr	loc_271BC
loc_2712E:
		tst.w	$38(a0)
		beq.s	loc_2713C
		subq.w	#1,$38(a0)
		bra	loc_273E4
loc_2713C:
		subq.w	#1,$3A(a0)
		bpl.s	loc_2719C
		move.w	#$F,$3A(a0)
		addq.b	#1,$1A(a0)
		and.b	#$F,$1A(a0)
		bne.s	loc_2719A
		moveq	#0,d0
		move.b	$28(a0),d0
		lsl.w	#4,d0
		move.w	d0,$38(a0)
		move.b	$22(a0),d0
		and.b	#$18,d0
		beq.s	loc_27192
		bclr	#3,$22(a0)
		beq.s	loc_2717E
		bclr	#3,($FFFFB022).w
		bset	#1,($FFFFB022).w
loc_2717E:
		bclr	#4,$22(a0)
		beq.s	loc_27192
		bclr	#3,($FFFFB062).w
		bset	#1,($FFFFB062).w
loc_27192:
		move.w	$30(a0),8(a0)
		bra.s	loc_271BC
loc_2719A:
		bsr.s	loc_271BC
loc_2719C:
		move.w	$34(a0),d1
		add.w	#$B,d1
		move.w	$36(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	8(a0),d4
		bsr	loc_273F0
		move.w	$30(a0),d0
		bra	loc_273F6
loc_271BC:
		moveq	#0,d0
		move.b	$1A(a0),d0
		add.w	d0,d0
		add.w	d0,d0
		lea	loc_27204(pc,d0),a1
		move.b	(a1)+,d0
		ext.w	d0
		btst	#0,$22(a0)
		beq.s	loc_271D8
		neg.w	d0
loc_271D8:
		add.w	$30(a0),d0
		move.w	d0,8(a0)
		move.b	(a1)+,d0
		ext.w	d0
		add.w	$32(a0),d0
		move.w	d0,$C(a0)
		moveq	#0,d1
		moveq	#0,d2
		moveq	#0,d3
		move.b	(a1)+,d1
		move.b	(a1)+,d2
		move.w	d1,$34(a0)
		move.b	d1,$19(a0)
		move.w	d2,$36(a0)
		rts
;-------------------------------------------------------------------------------
loc_27204:
		dc.b	$D8,$18,8,8,$D8,$10,8,$10,$D8,8,8,$18,$D8,0,8,$20
		dc.b	$E0,0,$10,$20,$E8,$F8,$18,$18,$F0,$F0,$20,$10,$F8,$E8,$28,$8
		dc.b	8,$E8,$28,8,$10,$F0,$20,$10,$18,$F8,$18,$18,$20,0,$10,$20
		dc.b	$28,0,8,$20,$28,8,8,$18,$28,$10,8,$10,$28,$18,8,$8
;-------------------------------------------------------------------------------
Green_Platform_Mappings: 
		dc.w	loc_27264-Green_Platform_Mappings
		dc.w	loc_2726E-Green_Platform_Mappings
		dc.w	loc_27280-Green_Platform_Mappings
		dc.w	loc_2729A-Green_Platform_Mappings
		dc.w	loc_272BC-Green_Platform_Mappings
		dc.w	loc_272E6-Green_Platform_Mappings
		dc.w	loc_27310-Green_Platform_Mappings
		dc.w	loc_2733A-Green_Platform_Mappings
		dc.w	loc_2733A-Green_Platform_Mappings
		dc.w	loc_27364-Green_Platform_Mappings
		dc.w	loc_2738E-Green_Platform_Mappings
		dc.w	loc_273B8-Green_Platform_Mappings
		dc.w	loc_2729A-Green_Platform_Mappings
		dc.w	loc_27280-Green_Platform_Mappings
		dc.w	loc_2726E-Green_Platform_Mappings
		dc.w	loc_27264-Green_Platform_Mappings
loc_27264:
		dc.w	$1
		dc.l	$F8050000,$FFF8
loc_2726E:
		dc.w	$2
		dc.l	$F0050000,$FFF8,$50000,$FFF8
loc_27280:
		dc.w	$3
		dc.l	$E8050000,$FFF8,$F8050000,$FFF8
		dc.l	$8050000,$FFF8
loc_2729A:
		dc.w	$4
		dc.l	$E0050000,$FFF8,$F0050000,$FFF8
		dc.l	$50000,$FFF8,$10050000,$FFF8
loc_272BC:
		dc.w	$5
		dc.l	$E0050000,0,$E0050000,$FFF0
		dc.l	$F0050000,$FFF0,$50000,$FFF0
		dc.l	$10050000,$FFF0
loc_272E6:
		dc.w	$5
		dc.l	$E8050000,8,$E8050000,$FFF8
		dc.l	$E8050000,$FFE8,$F8050000,$FFE8
		dc.l	$8050000,$FFE8
loc_27310:
		dc.w	$5
		dc.l	$F0050000,$10,$F0050000,$0
		dc.l	$F0050000,$FFF0,$F0050000,$FFE0
		dc.l	$50000,$FFE0
loc_2733A:
		dc.w	$5
		dc.l	$F8050000,$18,$F8050000,$8
		dc.l	$F8050000,$FFF8,$F8050000,$FFE8
		dc.l	$F8050000,$FFD8
loc_27364:
		dc.w	$5
		dc.l	$50000,$10,$F0050000,$10
		dc.l	$F0050000,0,$F0050000,$FFF0
		dc.l	$F0050000,$FFE0
loc_2738E:
		dc.w	$5
		dc.l	$8050000,8,$F8050000,$8
		dc.l	$E8050000,8,$E8050000,$FFF8
		dc.l	$E8050000,$FFE8
loc_273B8:
		dc.w	$5
		dc.l	$10050000,0,$50000,$0
		dc.l	$F0050000,0,$E0050000,$0
		dc.l	$E0050000,$FFF0	
;===============================================================================
; Object 0xD2 -> Rotating green platform that appear and disappear
; [ End ]
;===============================================================================
