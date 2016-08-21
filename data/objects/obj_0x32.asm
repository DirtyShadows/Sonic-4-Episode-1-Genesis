;=============================================================================== 
; Object 0x32 - Rock - Hill Top / Tunel Obstacle - Chemical Plant
; [ Begin ]	
;=============================================================================== 
loc_1F336:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_1F344(pc,d0),d1
		jmp	loc_1F344(pc,d1)
loc_1F344:
		dc.w	loc_1F34A-loc_1F344
		dc.w	loc_1F39E-loc_1F344
		dc.w	loc_1F486-loc_1F344
loc_1F34A:
		addq.b	#2,$24(a0)
		move.l	#HTz_Rock_Mappings,4(a0) 
		move.w	#$43B2,2(a0)
		move.b	#$18,$19(a0)
		move.l	#loc_1F49C,$3C(a0)
		cmp.b	#$D,($FFFFFE10).w
		bne.s	loc_1F38E
		move.l	#CPz_Tunel_Obstacle_Mappings,4(a0) 
		move.w	#$6430,2(a0)
		move.b	#$10,$19(a0)
		move.l	#loc_1F4B4,$3C(a0)
loc_1F38E:
		bsr	loc_1F6E0
		move.b	#4,1(a0)
		move.b	#4,$18(a0)
loc_1F39E:
		move.w	($FFFFF7D0).w,$38(a0)
		move.b	($FFFFB01C).w,$32(a0)
		move.b	($FFFFB05C).w,$33(a0)
		moveq	#0,d1
		move.b	$19(a0),d1
		add.w	#$B,d1
		move.w	#$10,d2
		move.w	#$11,d3
		move.w	8(a0),d4
		bsr	loc_1F6EC
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_1F3D8
loc_1F3D4:	
		bra	loc_1F6DA
loc_1F3D8:
		cmp.b	#$18,d0
		bne.s	loc_1F406
		cmp.b	#2,$32(a0)
		beq.s	loc_1F3EE
		cmp.b	#2,$33(a0)
		bne.s	loc_1F3D4
loc_1F3EE:
		lea	($FFFFB000).w,a1
		move.b	$32(a0),d0
		bsr.s	loc_1F41E
		lea	($FFFFB040).w,a1
		move.b	$33(a0),d0
		bsr.s	loc_1F41E
		bra	loc_1F46E
loc_1F406:
		move.b	d0,d1
		and.b	#8,d1
		beq.s	loc_1F456
		cmp.b	#2,$32(a0)
		bne.s	loc_1F3D4
		lea	($FFFFB000).w,a1
		bsr.s	loc_1F424
		bra.s	loc_1F46E
loc_1F41E:
		cmp.b	#2,d0
		bne.s	loc_1F442
loc_1F424:
		bset	#2,$22(a1)
		move.b	#$E,$16(a1)
		move.b	#7,$17(a1)
		move.b	#2,$1C(a1)
		move.w	#$FD00,$12(a1)
loc_1F442:
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#2,$24(a1)
		rts
loc_1F456:
		and.b	#$10,d0
		beq	loc_1F3D4
		cmp.b	#2,$33(a0)
		bne	loc_1F3D4
		lea	($FFFFB040).w,a1
		bsr.s	loc_1F424
loc_1F46E:
		move.w	$38(a0),($FFFFF7D0).w
		and.b	#$E7,$22(a0)
		move.l	$3C(a0),a4
		bsr	loc_1F6E6
		bsr	loc_1F4C4
loc_1F486:
		bsr	loc_1F6F2
		add.w	#$18,$12(a0)
		tst.b	1(a0)
		bpl	loc_1F6CE
		bra	loc_1F6C8
loc_1F49C:
		dc.w	$FE00,$FE00,0,$FD80,$200,$FE00,$FE40,$FE40
		dc.w	0,$FE00,$1C0,$FE40
loc_1F4B4:	
		dc.w	$FF00,$FE00,$100,$FE00,$FF40,$FE40,$C0,$FE40
loc_1F4C4:
		bsr	loc_1F6D4
		bne.s	loc_1F50C
		move.b	#$29,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	($FFFFF7D0).w,d2
		addq.w	#2,($FFFFF7D0).w
		cmp.w	#6,d2
		bcs.s	loc_1F4EC
		moveq	#6,d2
loc_1F4EC:
		moveq	#0,d0
		move.w	Break_Obstacle_Points(pc,d2),d0 
		cmp.w	#$20,($FFFFF7D0).w
		bcs.s	loc_1F500
		move.w	#$3E8,d0
		moveq	#$A,d2
loc_1F500:
		jsr	add_Points	
		lsr.w	#1,d2
		move.b	d2,$1A(a1)
loc_1F50C:
		rts
;-------------------------------------------------------------------------------	
Break_Obstacle_Points: 
		dc.w	$A,$14,$32,$64
;-------------------------------------------------------------------------------	
Breakable_Floor_Mappings: 
		dc.w	loc_1F52A-Breakable_Floor_Mappings
		dc.w	loc_1F574-Breakable_Floor_Mappings
		dc.w	loc_1F5C6-Breakable_Floor_Mappings
		dc.w	loc_1F5C6-Breakable_Floor_Mappings
		dc.w	loc_1F608-Breakable_Floor_Mappings
		dc.w	loc_1F608-Breakable_Floor_Mappings
		dc.w	loc_1F63A-Breakable_Floor_Mappings
		dc.w	loc_1F63A-Breakable_Floor_Mappings
		dc.w	loc_1F65C-Breakable_Floor_Mappings
		dc.w	loc_1F65C-Breakable_Floor_Mappings
loc_1F52A:
		dc.w	$9
		dc.l	$D80D0012,$9FFF0,$E805004A,$25FFF0
		dc.l	$E805004A,$250000,$F805004E,$27FFF0
		dc.l	$F805004E,$270000,$8050052,$29FFF0
		dc.l	$8050052,$290000,$18050052,$29FFF0
		dc.l	$18050052,$290000
loc_1F574:
		dc.w	$A
		dc.l	$D8050012,$9FFF0,$D8050016,$B0000
		dc.l	$E805004A,$25FFF0,$E805004A,$250000
		dc.l	$F805004E,$27FFF0,$F805004E,$270000
		dc.l	$8050052,$29FFF0,$8050052,$290000
		dc.l	$18050052,$29FFF0,$18050052,$290000
loc_1F5C6:
		dc.w	$8
		dc.l	$E005004A,$25FFF0,$E005004A,$250000
		dc.l	$F005004E,$27FFF0,$F005004E,$270000
		dc.l	$50052,$29FFF0,$50052,$290000
		dc.l	$10050052,$29FFF0,$10050052,$290000
loc_1F608:
		dc.w	$6
		dc.l	$E805004E,$27FFF0,$E805004E,$270000
		dc.l	$F8050052,$29FFF0,$F8050052,$290000
		dc.l	$8050052,$29FFF0,$8050052,$290000
loc_1F63A:
		dc.w	$4
		dc.l	$F0050052,$29FFF0,$F0050052,$290000
		dc.l	$50052,$29FFF0,$50052,$290000
loc_1F65C:
		dc.w	$2
		dc.l	$F8050052,$29FFF0,$F8050052,$290000	
;-------------------------------------------------------------------------------	
HTz_Rock_Mappings: 
		dc.w	loc_1F670-HTz_Rock_Mappings
loc_1F670:	
		dc.w	$6
		dc.l	$F0050000,$FFE8,$F0050004,$2FFF8
		dc.l	$F0050008,$40008,$5000C,$6FFE8
		dc.l	$50010,$8FFF8,$50010,$80008
;-------------------------------------------------------------------------------	
CPz_Tunel_Obstacle_Mappings: 
		dc.w	loc_1F6A4-CPz_Tunel_Obstacle_Mappings
loc_1F6A4:
		dc.w	$4
		dc.l	$F0050000,$FFF0,$F0050800,$8000000
		dc.l	$50000,$FFF0,$50800,$8000000	
;=============================================================================== 
; Object 0x32 - Rock - Hill Top / Tunel Obstacle - Chemical Plant
; [ End ]	
;=============================================================================== 