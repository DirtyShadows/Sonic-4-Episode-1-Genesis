;=============================================================================== 
; Object 0x3D - Break to Boost - Oil Ocean
; [ Begin ]	
;===============================================================================	
loc_20BEC:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_20BFA(pc,d0),d1
		jmp	loc_20BFA(pc,d1)
loc_20BFA:
		dc.w	loc_20C02-loc_20BFA
		dc.w	loc_20C42-loc_20BFA
		dc.w	loc_20D58-loc_20BFA
		dc.w	loc_20D6E-loc_20BFA
loc_20C02:
		addq.b	#2,$24(a0)
		move.l	#Break_Boost_Mappings,4(a0) 
		move.w	#$6332,2(a0)
		tst.b	$28(a0)
		beq.s	loc_20C26
		move.w	#$63FF,2(a0)
		move.b	#2,$1A(a0)
loc_20C26:
		bsr	loc_21016
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		bset	#7,$22(a0)
		move.b	#4,$18(a0)
loc_20C42:
		move.b	($FFFFB01C).w,$32(a0)
		move.b	($FFFFB05C).w,$33(a0)
		move.w	($FFFFB012).w,$34(a0)
		move.w	($FFFFB052).w,$36(a0)
		move.w	#$1B,d1
		move.w	#$10,d2
		move.w	#$11,d3
		move.w	8(a0),d4
		bsr	loc_21022
		move.b	$22(a0),d0
		and.b	#$18,d0
		bne.s	loc_20C7C
loc_20C78:	
		bra	loc_21004
loc_20C7C:
		cmp.b	#$18,d0
		bne.s	loc_20CB2
		cmp.b	#2,$32(a0)
		beq.s	loc_20C92
		cmp.b	#2,$33(a0)
		bne.s	loc_20C78
loc_20C92:
		lea	($FFFFB000).w,a1
		move.b	$32(a0),d0
		move.w	$34(a0),d1
		bsr.s	loc_20CCE
		lea	($FFFFB040).w,a1
		move.b	$33(a0),d0
		move.w	$36(a0),d1
		bsr.s	loc_20CCE
		bra	loc_20D20
loc_20CB2:
		move.b	d0,d1
		and.b	#8,d1
		beq.s	loc_20D04
		cmp.b	#2,$32(a0)
		bne.s	loc_20C78
		lea	($FFFFB000).w,a1
		move.w	$34(a0),d1
		bsr.s	loc_20CD4
		bra.s	loc_20D20
loc_20CCE:
		cmp.b	#2,d0
		bne.s	loc_20CF0
loc_20CD4:
		bset	#2,$22(a1)
		move.b	#$E,$16(a1)
		move.b	#7,$17(a1)
		move.b	#2,$1C(a1)
		move.w	d1,$12(a1)
loc_20CF0:
		bset	#1,$22(a1)
		bclr	#3,$22(a1)
		move.b	#2,$24(a1)
		rts
loc_20D04:
		and.b	#$10,d0
		beq	loc_20C78
		cmp.b	#2,$33(a0)
		bne	loc_20C78
		lea	($FFFFB040).w,a1
		move.w	$36(a0),d1
		bsr.s	loc_20CD4
loc_20D20:
		and.b	#$E7,$22(a0)
		bsr	loc_2100A
		bne.s	loc_20D44
		moveq	#0,d0
		move.w	#$A,d1
loc_20D32:	
		move.l	0(a0,d0),0(a1,d0)
		addq.w	#4,d0
		dbra	d1,loc_20D32
		move.b	#6,$24(a1)
loc_20D44:
		lea	(loc_20E68),a4
		addq.b	#1,$1A(a0)
		moveq	#$F,d1
		move.w	#$18,d2
		bsr	loc_2101C
loc_20D58:
		bsr	loc_21028
		add.w	#$18,$12(a0)
		tst.b	1(a0)
		bpl	loc_20FFE
		bra	loc_20FF8
loc_20D6E:
		lea	($FFFFB000).w,a1
		lea	$2C(a0),a4
		bsr.s	loc_20D90
		lea	($FFFFB040).w,a1
		lea	$36(a0),a4
		bsr.s	loc_20D90
		move.b	$2C(a0),d0
		add.b	$36(a0),d0
		beq	loc_21010
		rts
loc_20D90:
		moveq	#0,d0
		move.b	(a4),d0
		move.w	loc_20D9C(pc,d0),d0
		jmp	loc_20D9C(pc,d0)
loc_20D9C:
		dc.w	loc_20DA0-loc_20D9C
		dc.w	loc_20E42-loc_20D9C
loc_20DA0:
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	#$10,d0
		cmp.w	#$20,d0
		bcc	loc_20E40
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		tst.b	$28(a0)
		beq.s	loc_20DC6
		add.w	#$10,d1
loc_20DC6:
		cmp.w	#$10,d1
		bcc	loc_20E40
		addq.b	#2,(a4)
		move.b	#$81,$2A(a1)
		move.b	#2,$1C(a1)
		move.w	#$800,$14(a1)
		tst.b	$28(a0)
		beq.s	loc_20DFC
		move.w	8(a0),8(a1)
		move.w	#0,$10(a1)
		move.w	#$F800,$12(a1)
		bra.s	loc_20E0E
loc_20DFC:
		move.w	$C(a0),$C(a1)
		move.w	#$800,$10(a1)
		move.w	#0,$12(a1)
loc_20E0E:
		bclr	#5,$22(a0)
		bclr	#5,$22(a1)
		bset	#1,$22(a1)
		bset	#3,$22(a1)
		move.w	a0,d0
		sub.w	#$B000,d0
		lsr.w	#6,d0
		and.w	#$7F,d0
		move.b	d0,$3D(a1)
		move.w	#$BE,d0
		jsr	Play_Sfx	
loc_20E40:
		rts
loc_20E42:
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
;-------------------------------------------------------------------------------	
loc_20E68:	
		dc.w	$FC00,$FC00,$FE00,$FC00,$200,$FC00,$400,$FC00
		dc.w	$FC40,$FE00,$FE40,$FE00,$1C0,$FE00,$3C0,$FE00
		dc.w	$FC80,$200,$FE80,$200,$180,$200,$380,$200
		dc.w	$FCC0,$400,$FEC0,$400,$140,$400,$340,$400	
;-------------------------------------------------------------------------------
Break_Boost_Mappings: 
		dc.w	loc_20EB0-Break_Boost_Mappings
		dc.w	loc_20ED2-Break_Boost_Mappings
		dc.w	loc_20F54-Break_Boost_Mappings
		dc.w	loc_20F76-Break_Boost_Mappings
loc_20EB0:
		dc.w	$4
		dc.l	$F0030000,$FFF0,$F0030000,$FFF8
		dc.l	$F0030000,0,$F0030000,$8
loc_20ED2:
		dc.w	$10
		dc.l	$F0000000,$FFF0,$F0000000,$FFF8
		dc.l	$F0000000,0,$F0000000,$8
		dc.l	$F8000001,$FFF0,$F8000001,$FFF8
		dc.l	$F8000001,0,$F8000001,$8
		dc.l	2,$1FFF0,2,$1FFF8
		dc.l	2,$10000,2,$10008
		dc.l	$8000003,$1FFF0,$8000003,$1FFF8
		dc.l	$8000003,$10000,$8000003,$10008
loc_20F54:
		dc.w	$4
		dc.l	$F00C0000,$FFF0,$F80C0000,$FFF0
		dc.l	$C0000,$FFF0,$80C0000,$FFF0
loc_20F76:
		dc.w	$10
		dc.l	$F0000000,$FFF0,$F0000001,$FFF8
		dc.l	$F0000002,$10000,$F0000003,$10008
		dc.l	$F8000000,$FFF0,$F8000001,$FFF8
		dc.l	$F8000002,$10000,$F8000003,$10008
		dc.l	0,$FFF0,1,$FFF8
		dc.l	2,$10000,3,$10008
		dc.l	$8000000,$FFF0,$8000001,$FFF8
		dc.l	$8000002,$10000,$8000003,$10008	
;=============================================================================== 
; Object 0x3D - Break to Boost - Oil Ocean
; [ End ]	
;===============================================================================	