;===============================================================================
; Object 0x80 - Chain with Hook - Sky Fortress / Vines - Dust Hill
; [ Begin ]
;===============================================================================	
loc_25718:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_25726(pc,d0),d1
		jmp	loc_25726(pc,d1)
loc_25726:
		dc.w	loc_2572A-loc_25726
		dc.w	loc_257C6-loc_25726
loc_2572A:
		addq.b	#2,$24(a0)
		move.l	#Vines_Mappings,4(a0) 
		move.w	#$641E,2(a0)
		move.w	#$B0,$2E(a0)
		cmp.b	#6,($FFFFFE10).w
		bne.s	loc_2576E
		move.l	#Chain_Hook_Mappings,4(a0) 
		move.w	#$23FE,2(a0)
		move.w	#$A0,$2E(a0)
		move.b	$28(a0),d0
		and.b	#$F,d0
		beq.s	loc_2576E
		move.w	#$60,$2E(a0)
loc_2576E:
		bsr	loc_25C02
		move.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#4,$18(a0)
		move.b	#$80,$16(a0)
		bset	#4,1(a0)
		move.w	$C(a0),$3C(a0)
		move.b	$28(a0),d0
		bpl.s	loc_257A2
		move.b	#1,$34(a0)
loc_257A2:
		move.w	#2,$3A(a0)
		and.b	#$70,d0
		beq.s	loc_257C6
		move.w	$2E(a0),d0
		move.w	d0,$38(a0)
		move.b	#1,$36(a0)
		add.w	d0,$C(a0)
		move.b	#6,$1A(a0)
loc_257C6:
		tst.b	$36(a0)
		beq.s	loc_257D4
		tst.w	$30(a0)
		bne.s	loc_257EA
		bra.s	loc_257DA
loc_257D4:
		tst.w	$30(a0)
		beq.s	loc_257EA
loc_257DA:
		move.w	$38(a0),d2
		cmp.w	$2E(a0),d2
		beq.s	loc_2580E
		add.w	$3A(a0),d2
		bra.s	loc_257F4
loc_257EA:
		move.w	$38(a0),d2
		beq.s	loc_2580E
		sub.w	$3A(a0),d2
loc_257F4:
		move.w	d2,$38(a0)
		move.w	$3C(a0),d0
		add.w	d2,d0
		move.w	d0,$C(a0)
		move.w	d2,d0
		beq.s	loc_2580A
		lsr.w	#5,d0
		addq.w	#1,d0
loc_2580A:
		move.b	d0,$1A(a0)
loc_2580E:
		lea	$30(a0),a2
		lea	($FFFFB000).w,a1
		move.w	($FFFFF604).w,d0
		bsr.s	loc_2582C
		lea	($FFFFB040).w,a1
		addq.w	#1,a2
		move.w	($FFFFF606).w,d0
		bsr.s	loc_2582C
		bra	loc_25BFC
loc_2582C:
		tst.b	(a2)
		beq	loc_258BE
		tst.b	1(a1)
		bpl.s	loc_258A2
		cmp.b	#4,$24(a1)
		bcc.s	loc_258A2
		and.b	#$70,d0
		beq	loc_258B0
		clr.b	$2A(a1)
		clr.b	(a2)
		move.b	#$12,2(a2)
		and.w	#$F00,d0
		beq	loc_25862
		move.b	#$3C,2(a2)
loc_25862:
		btst	#$A,d0
		beq.s	loc_2586E
		move.w	#$FE00,$10(a1)
loc_2586E:
		btst	#$B,d0
		beq.s	loc_2587A
		move.w	#$200,$10(a1)
loc_2587A:
		move.w	#$FC80,$12(a1)
		bset	#1,$22(a1)
		tst.b	$34(a0)
		beq.s	loc_258A0
		move.b	$28(a0),d0
		and.w	#$F,d0
		lea	($FFFFF7E0).w,a3
		lea	0(a3,d0),a3
		bclr	#0,(a3)
loc_258A0:
		rts
loc_258A2:
		clr.b	$2A(a1)
		clr.b	(a2)
		move.b	#$3C,2(a2)
		rts
loc_258B0:
		move.w	$C(a0),$C(a1)
		add.w	#$94,$C(a1)
		rts
loc_258BE:
		tst.b	2(a2)
		beq.s	loc_258CC
		subq.b	#1,2(a2)
		bne	loc_25958
loc_258CC:
		move.w	8(a1),d0
		sub.w	8(a0),d0
		add.w	#$10,d0
		cmp.w	#$20,d0
		bcc	loc_25958
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		sub.w	#$88,d1
		cmp.w	#$18,d1
		bcc	loc_25958
		tst.b	$2A(a1)
		bmi.s	loc_25958
		cmp.b	#4,$24(a1)
		bcc.s	loc_25958
		tst.w	($FFFFFE08).w
		bne.s	loc_25958
		clr.w	$10(a1)
		clr.w	$12(a1)
		clr.w	$14(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		add.w	#$94,$C(a1)
		move.b	#$14,$1C(a1)
		move.b	#1,$2A(a1)
		move.b	#1,(a2)
		tst.b	$34(a0)
		beq.s	loc_25958
		move.b	$28(a0),d0
		and.w	#$F,d0
		lea	($FFFFF7E0).w,a3
		bset	#0,0(a3,d0)
		move.w	#$CD,d0
		jsr	Play_Sfx	
loc_25958:
		rts
;-------------------------------------------------------------------------------	
Vines_Mappings: 
		dc.w	loc_25968-Vines_Mappings
		dc.w	loc_25982-Vines_Mappings
		dc.w	loc_259A4-Vines_Mappings
		dc.w	loc_259CE-Vines_Mappings
		dc.w	loc_25A00-Vines_Mappings
		dc.w	loc_25A3A-Vines_Mappings
		dc.w	loc_25A7C-Vines_Mappings
loc_25968:
		dc.w	$3
		dc.l	$30030000,$FFFC,$50030000,$FFFC
		dc.l	$70090004,$2FFF4
loc_25982:
		dc.w	$4
		dc.l	$10030000,$FFFC,$30030000,$FFFC
		dc.l	$50030000,$FFFC,$70090004,$2FFF4
loc_259A4:
		dc.w	$5
		dc.l	$F0030000,$FFFC,$10030000,$FFFC
		dc.l	$30030000,$FFFC,$50030000,$FFFC
		dc.l	$70090004,$2FFF4
loc_259CE:
		dc.w	$6
		dc.l	$D0030000,$FFFC,$F0030000,$FFFC
		dc.l	$10030000,$FFFC,$30030000,$FFFC
		dc.l	$50030000,$FFFC,$70090004,$2FFF4
loc_25A00:
		dc.w	$7
		dc.l	$B0030000,$FFFC,$D0030000,$FFFC
		dc.l	$F0030000,$FFFC,$10030000,$FFFC
		dc.l	$30030000,$FFFC,$50030000,$FFFC
		dc.l	$70090004,$2FFF4
loc_25A3A:
		dc.w	$8
		dc.l	$90030000,$FFFC,$B0030000,$FFFC
		dc.l	$D0030000,$FFFC,$F0030000,$FFFC
		dc.l	$10030000,$FFFC,$30030000,$FFFC
		dc.l	$50030000,$FFFC,$70090004,$2FFF4
loc_25A7C:
		dc.w	$9
		dc.l	$80010002,$1FFFC,$90030000,$FFFC
		dc.l	$B0030000,$FFFC,$D0030000,$FFFC
		dc.l	$F0030000,$FFFC,$10030000,$FFFC
		dc.l	$30030000,$FFFC,$50030000,$FFFC
		dc.l	$70090004,$2FFF4
;-------------------------------------------------------------------------------
Chain_Hook_Mappings: 
		dc.w	loc_25AD4-Chain_Hook_Mappings
		dc.w	loc_25AE6-Chain_Hook_Mappings
		dc.w	loc_25B00-Chain_Hook_Mappings
		dc.w	loc_25B22-Chain_Hook_Mappings
		dc.w	loc_25B4C-Chain_Hook_Mappings
		dc.w	loc_25B7E-Chain_Hook_Mappings
		dc.w	loc_25BB8-Chain_Hook_Mappings
loc_25AD4:
		dc.w	$2
		dc.l	$40030000,$FFFC,$600B0004,$2FFF4
loc_25AE6:
		dc.w	$3
		dc.l	$20030000,$FFFC,$40030000,$FFFC
		dc.l	$600B0004,$2FFF4
loc_25B00:
		dc.w	$4
		dc.l	$30000,$FFFC,$20030000,$FFFC
		dc.l	$40030000,$FFFC,$600B0004,$2FFF4
loc_25B22:
		dc.w	$5
		dc.l	$E0030000,$FFFC,$30000,$FFFC
		dc.l	$20030000,$FFFC,$40030000,$FFFC
		dc.l	$600B0004,$2FFF4
loc_25B4C:
		dc.w	$6
		dc.l	$C0030000,$FFFC,$E0030000,$FFFC
		dc.l	$30000,$FFFC,$20030000,$FFFC
		dc.l	$40030000,$FFFC,$600B0004,$2FFF4
loc_25B7E:
		dc.w	$7
		dc.l	$A0030000,$FFFC,$C0030000,$FFFC
		dc.l	$E0030000,$FFFC,$30000,$FFFC
		dc.l	$20030000,$FFFC,$40030000,$FFFC
		dc.l	$600B0004,$2FFF4
loc_25BB8:
		dc.w	$8
		dc.l	$80030000,$FFFC,$A0030000,$FFFC
		dc.l	$C0030000,$FFFC,$E0030000,$FFFC
		dc.l	$30000,$FFFC,$20030000,$FFFC
		dc.l	$40030000,$FFFC,$600B0004,$2FFF4	
;-------------------------------------------------------------------------------	
			
;===============================================================================
; Object 0x80 - Chain with Hook - Sky Fortress / Vines - Dust Hill
; [ End ]
;===============================================================================