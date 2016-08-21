;=============================================================================== 
; Object 0x0D - End Panel 
; [ Begin ]
;===============================================================================
loc_15280:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_152A0(pc,d0),d1
		jsr	loc_152A0(pc,d1)
		lea	(End_Panel_Animate_Data),a1 
		bsr	animateSprite	
		bsr	loc_15578
		bra	MarkObjGone	
loc_152A0:
		dc.w	loc_152A4-loc_152A0
		dc.w	loc_1530E-loc_152A0
loc_152A4:
		tst.w	($FFFFFFD8).w
		beq.s	loc_152D0
		move.l	#End_Panel_Mappings_2P,4(a0) 
		move.w	#$5E8,2(a0)
		move.b	#$FF,($FFFFFFCA).w
		moveq	#0,d1
		move.w	#$1020,d1
		move.w	#$FF80,d4
		moveq	#0,d5
		bsr	loc_155A8
		bra.s	loc_152F4
loc_152D0:
		cmp.w	#$401,($FFFFFE10).w
		beq.s	loc_152E6
		tst.b	($FFFFFE11).w
		beq.s	loc_152E6
		move.w	#0,8(a0)
		rts
loc_152E6:
		move.l	#End_Panel_Mappings,4(a0) 
		move.w	#$434,2(a0)
loc_152F4:
		addq.b	#2,$24(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#4,1(a0)
		move.b	#$18,$19(a0)
		move.b	#4,$18(a0)
loc_1530E:
		tst.b	($FFFFFE1E).w
		beq.s	loc_1535C
		lea	($FFFFB000).w,a1
		move.w	8(a1),d0
		sub.w	8(a0),d0
		bcs.s	loc_1535C
		cmp.w	#$20,d0
		bcc.s	loc_1535C
		move.w	#$CF,d0
		jsr	Play_Music	
		clr.b	($FFFFFE1E).w
		move.w	#1,$1C(a0)
		move.w	#0,$30(a0)
		move.w	($FFFFEECA).w,($FFFFEEC8).w
		move.b	#2,$25(a0)
		tst.b	$36(a0)
		bne.s	loc_153AE
		move.b	#3,$36(a0)
		bra.s	loc_153AE
loc_1535C:
		tst.w	($FFFFFFD8).w
		beq.s	loc_153AE
		tst.b	($FFFFFECA).w
		beq.s	loc_153AE
		lea	($FFFFB040).w,a1
		move.w	8(a1),d0
		sub.w	8(a0),d0
		bcs.s	loc_153AE
		cmp.w	#$20,d0
		bcc.s	loc_153AE
		move.w	#$CF,d0
		jsr	Play_Music	
		clr.b	($FFFFFECA).w
		move.w	#1,$1C(a0)
		move.w	#0,$30(a0)
		move.w	($FFFFEEFA).w,($FFFFEEF8).w
		move.b	#2,$25(a0)
		tst.b	$36(a0)
		bne.s	loc_153AE
		move.b	#4,$36(a0)
loc_153AE:
		moveq	#0,d0
		move.b	$25(a0),d0
		move.w	loc_153BC(pc,d0),d1
		jmp	loc_153BC(pc,d1)
loc_153BC:	
		dc.w	loc_153C4-loc_153BC
		dc.w	loc_153C6-loc_153BC
		dc.w	loc_15476-loc_153BC
		dc.w	loc_15540-loc_153BC
loc_153C4:
		rts
loc_153C6:
		subq.w	#1,$30(a0)
		bpl.s	loc_153F6
		move.w	#$3C,$30(a0)
		addq.b	#1,$1C(a0)
		cmp.b	#3,$1C(a0)
		bne.s	loc_153F6
		move.b	#4,$25(a0)
		move.b	$36(a0),$1C(a0)
		tst.w	($FFFFFFD8).w
		beq.s	loc_153F6
		move.b	#6,$25(a0)
loc_153F6:
		subq.w	#1,$32(a0)
		bpl.s	loc_15464
		move.w	#$B,$32(a0)
		moveq	#0,d0
		move.b	$34(a0),d0
		addq.b	#2,$34(a0)
		and.b	#$E,$34(a0)
		lea	loc_15466(pc,d0),a2
		bsr	SingleObjectLoad	
		bne.s	loc_15464
		move.b	#$25,0(a1)
		move.b	#6,$24(a1)
		move.b	(a2)+,d0
		ext.w	d0
		add.w	8(a0),d0
		move.w	d0,8(a1)
		move.b	(a2)+,d0
		ext.w	d0
		add.w	$C(a0),d0
		move.w	d0,$C(a1)
		move.l	#Rings_Mappings,4(a1) 
		move.w	#$26BC,2(a1)
		bsr	Modify_A1_SpriteAttr_2P 
		move.b	#4,1(a1)
		move.b	#2,$18(a1)
		move.b	#8,$19(a1)
loc_15464:
		rts	
loc_15466:
		dc.b	$E8,$F0,8,8,$F0,0,$18,$F8,0,$F8,$10,0,$E8,8,$18,$10	
loc_15476:
		tst.w	($FFFFFE08).w
		bne	loc_15514
		btst	#1,($FFFFB022).w
		bne.s	loc_15492
		move.b	#1,($FFFFF7CC).w
		move.w	#$800,($FFFFF602).w
loc_15492:
		tst.b	($FFFFB000).w
		beq.s	loc_154A8
		move.w	($FFFFB008).w,d0
		move.w	($FFFFEECA).w,d1
		add.w	#$128,d1
		cmp.w	d1,d0
		bcs.s	loc_15514
loc_154A8:
		move.b	#0,$25(a0)
Load_Level_Results: 
		lea	($FFFFB000).w,a1
		bclr	#1,$2B(a1)
		clr.b	($FFFFFE1E).w
		bsr	SingleObjectLoad	
		bne.s	loc_154C6
		move.b	#$3A,(a1)
loc_154C6:
		moveq	#$26,d0
		jsr	LoadPLC2	
		move.b	#1,($FFFFF7D6).w
		moveq	#0,d0
		move.b	($FFFFFE23).w,d0
		mulu.w	#$3C,d0
		moveq	#0,d1
		move.b	($FFFFFE24).w,d1
		add.w	d1,d0
		divu.w	#$F,d0
		moveq	#$14,d1
		cmp.w	d1,d0
		bcs.s	loc_154F2
		move.w	d1,d0
loc_154F2:
		add.w	d0,d0
		move.w	loc_15516(pc,d0),($FFFFF7D2).w
		move.w	($FFFFFE20).w,d0
		mulu.w	#$A,d0
		move.w	d0,($FFFFF7D4).w
		clr.w	($FFFFFF8E).w
		move.w	#$9A,d0
		jsr	Play_Sfx	
loc_15514:
		rts
loc_15516:
		dc.w	$1388,$1388,$3E8,$1F4,$190,$190,$12C,$12C
		dc.w	$C8,$C8,$C8,$C8,$64,$64,$64,$64
		dc.w	$32,$32,$32,$32,$0
loc_15540:
		subq.w	#1,$30(a0)
		bpl.s	loc_15576
		tst.b	($FFFFFE1A).w
		bne.s	loc_15576
		tst.b	($FFFFFECC).w
		bne.s	loc_15576
		tst.b	($FFFFFE1E).w
		bne.s	loc_15576
		tst.b	($FFFFFECA).w
		bne.s	loc_15576
		move.b	#0,($FFFFFE30).w
		move.b	#0,($FFFFFEE0).w
		move.b	#$18,($FFFFF600).w
		move.w	#0,($FFFFFF10).w
loc_15576:
		rts	
loc_15578:
		tst.w	($FFFFFFD8).w
		beq.s	loc_155D0
		moveq	#0,d0
		move.b	$1A(a0),d0
		cmp.b	($FFFFFFCA).w,d0
		beq.s	loc_155D0
		move.b	d0,($FFFFFFCA).w
		lea	(End_Panel_Dyn_Script),a2 
		add.w	d0,d0
		adda.w	0(a2,d0),a2
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	loc_155D0
		move.w	#$BD00,d4
loc_155A4:	
		moveq	#0,d1
		move.w	(a2)+,d1
loc_155A8:	
		move.w	d1,d3
		lsr.w	#8,d3
		and.w	#$F0,d3
		add.w	#$10,d3
		and.w	#$FFF,d1
		lsl.l	#5,d1
		add.l	#End_Panel_Spr,d1	
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	dMA_68KtoVRAM	
		dbra	d5,loc_155A4
loc_155D0:
		rts	
;-------------------------------------------------------------------------------
End_Panel_Animate_Data: 
		dc.w	loc_155DC-End_Panel_Animate_Data
		dc.w	loc_155DF-End_Panel_Animate_Data
		dc.w	loc_155ED-End_Panel_Animate_Data
		dc.w	loc_155FB-End_Panel_Animate_Data
		dc.w	loc_155FE-End_Panel_Animate_Data
loc_155DC:
		dc.b	$F,2,$FF
loc_155DF:
		dc.b	1,2,3,4,5,1,3,4,5,0,3,4,5,$FF
loc_155ED:
		dc.b	1,2,3,4,5,1,3,4,5,0,3,4,5,$FF
loc_155FB:
		dc.b	$F,0,$FF
loc_155FE:
		dc.b	$F,1,$FF,$0	
;-------------------------------------------------------------------------------
End_Panel_Mappings: 
		dc.w	loc_1560E-End_Panel_Mappings
		dc.w	loc_15628-End_Panel_Mappings
		dc.w	loc_1564A-End_Panel_Mappings
		dc.w	loc_15664-End_Panel_Mappings
		dc.w	loc_15676-End_Panel_Mappings
		dc.w	loc_15688-End_Panel_Mappings
loc_1560E:
		dc.w	$3
		dc.l	$F00B0022,$11FFE8,$F00B002E,$170000
		dc.l	$10010020,$10FFFC
loc_15628:
		dc.w	$4
		dc.l	$F003003A,$1DFFE8,$F00F003E,$1FFFF0
		dc.l	$F003083A,$81D0010,$10010020,$10FFFC
loc_1564A:
		dc.w	$3
		dc.l	$F00B0000,$FFE8,$F00B0800,$8000000
		dc.l	$10010020,$10FFFC
loc_15664:
		dc.w	$2
		dc.l	$F00F000C,$6FFF0,$10010020,$10FFFC
loc_15676:
		dc.w	$2
		dc.l	$F003001C,$EFFFC,$10010020,$10FFFC
loc_15688:
		dc.w	$2
		dc.l	$F00F080C,$806FFF0,$10010020,$10FFFC
;-------------------------------------------------------------------------------
End_Panel_Mappings_2P: 
		dc.w	loc_156A6-End_Panel_Mappings_2P
		dc.w	loc_156C0-End_Panel_Mappings_2P
		dc.w	loc_156E2-End_Panel_Mappings_2P
		dc.w	loc_156FC-End_Panel_Mappings_2P
		dc.w	loc_1570E-End_Panel_Mappings_2P
		dc.w	loc_15720-End_Panel_Mappings_2P
loc_156A6:
		dc.w	$3
		dc.l	$F00B0000,$FFE8,$F00B000C,$60000
		dc.l	$10010214,$10AFFFC
loc_156C0:
		dc.w	$4
		dc.l	$F0030000,$FFE8,$F00F0004,$2FFF0
		dc.l	$F0030814,$80A0010,$10010214,$10AFFFC
loc_156E2:
		dc.w	$3
		dc.l	$F00B0000,$FFE8,$F00B0800,$8000000
		dc.l	$10010214,$10AFFFC
loc_156FC:
		dc.w	$2
		dc.l	$F00F0000,$FFF0,$10010214,$10AFFFC
loc_1570E:
		dc.w	$2
		dc.l	$F0030000,$FFFC,$10010214,$10AFFFC
loc_15720:
		dc.w	$2
		dc.l	$F00F0800,$800FFF0,$10010214,$10AFFFC
;-------------------------------------------------------------------------------	
End_Panel_Dyn_Script: ;	loc_15732
		dc.w	End_Panel_Sonic_Dyn-End_Panel_Dyn_Script	
		dc.w	End_Panel_Miles_Dyn-End_Panel_Dyn_Script	
		dc.w	End_Panel_Robotnik_Dyn-End_Panel_Dyn_Script	
		dc.w	End_Panel_Spinnig_Char_Dyn-End_Panel_Dyn_Script 
		dc.w	End_Panel_Post_Dyn-End_Panel_Dyn_Script	
		dc.w	End_Panel_Spinnig_Char_Dyn-End_Panel_Dyn_Script 
End_Panel_Sonic_Dyn: 
		dc.w	$2
		dc.w	$B022,$B02E
End_Panel_Miles_Dyn: 
		dc.w	$3
		dc.w	$303A,$F03E,$303A
End_Panel_Robotnik_Dyn: 
		dc.w	$2
		dc.w	$B000,$B000
End_Panel_Spinnig_Char_Dyn: 
		dc.w	$1
		dc.w	$F00C
End_Panel_Post_Dyn: 
		dc.w	$1
		dc.w	$301C	
;=============================================================================== 
; Object 0x0D - End Panel 
; [ End ]
;===============================================================================	