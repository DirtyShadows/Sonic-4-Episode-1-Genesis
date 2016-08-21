;===============================================================================
; Object 0xDB - Sonic And Miles In Continue Screen
; [ Begin ]
;===============================================================================	
loc_86B4:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_86C8(pc,d0),d1
		jsr	loc_86C8(pc,d1)
		jmp	displaySprite	
loc_86C8:
		dc.w	loc_86D4-loc_86C8
		dc.w	loc_8704-loc_86C8
		dc.w	loc_872C-loc_86C8
		dc.w	loc_8754-loc_86C8
		dc.w	loc_8784-loc_86C8
		dc.w	loc_87BA-loc_86C8
loc_86D4:
		addq.b	#2,$24(a0)
		move.w	#$9C,8(a0)
		move.w	#$19C,$C(a0)
		move.l	#Sonic_Mappings,4(a0) 
		move.w	#$780,2(a0)
		move.b	#4,1(a0)
		move.b	#2,$18(a0)
		move.b	#$20,$1C(a0)
loc_8704:
		tst.b	($FFFFF605).w
		bmi.s	loc_8716
		jsr	Sonic_Animate	
		jmp	Load_Sonic_Dynamic_PLC	
loc_8716:
		addq.b	#2,$24(a0)
		move.b	#$21,$1C(a0)
		clr.w	$14(a0)
		move.b	#$E0,d0
		bsr	Play_Sfx	
loc_872C:
		cmp.w	#$800,$14(a0)
		bne.s	loc_873C
		move.w	#$1000,$10(a0)
		bra.s	loc_8742
loc_873C:
		add.w	#$20,$14(a0)
loc_8742:
		jsr	SpeedToPos	
		jsr	Sonic_Animate	
		jmp	Load_Sonic_Dynamic_PLC	
loc_8754:
		addq.b	#2,$24(a0)
		move.w	#$B8,8(a0)
		move.w	#$1A0,$C(a0)
		move.l	#Continue_Counter_Mappings,4(a0) 
		move.w	#$500,2(a0)
		move.b	#4,1(a0)
		move.b	#2,$18(a0)
		move.b	#0,$1C(a0)
loc_8784:
		tst.b	($FFFFF605).w
		bmi.s	loc_8796
		lea	(loc_87E2),a1
		jmp	animateSprite	
loc_8796:
		addq.b	#2,$24(a0)
		move.l	#Miles_Mappings,4(a0) ;	loc_739E2
		move.w	#$7A0,2(a0)
		move.b	#0,$1C(a0)
		clr.w	$14(a0)
		move.b	#$E0,d0
		bsr	Play_Sfx	
loc_87BA:
		cmp.w	#$720,$14(a0)
		bne.s	loc_87CA
		move.w	#$1000,$10(a0)
		bra.s	loc_87D0
loc_87CA:
		add.w	#$18,$14(a0)
loc_87D0:
		jsr	SpeedToPos	
		jsr	Miles_Animate	
		jmp	Load_Miles_Dynamic_PLC	
;-------------------------------------------------------------------------------
loc_87E2:
		dc.w	loc_87E4-loc_87E2
loc_87E4:
		dc.b	9,2,3,$FF
;-------------------------------------------------------------------------------
Continue_Counter_Mappings: 
		dc.w	loc_87F4-Continue_Counter_Mappings
		dc.w	loc_87F4-Continue_Counter_Mappings
		dc.w	loc_884E-Continue_Counter_Mappings
		dc.w	loc_8858-Continue_Counter_Mappings
		dc.w	loc_8862-Continue_Counter_Mappings
		dc.w	loc_886C-Continue_Counter_Mappings
loc_87F4:
		dc.w	$B
		dc.l	$F8050090,$48FFC4,$F8050088,$44FFD4
		dc.l	$F8050084,$42FFE4,$F8050094,$4AFFF4
		dc.l	$F8010098,$4C0004,$F8050084,$42000C
		dc.l	$F805009A,$4D001C,$F8050080,$40002C
		dc.l	$38052020,$2010FFE8,$38052020,$20100008
		dc.l	$360501FC,$FEFFF8
loc_884E:
		dc.w	$1
		dc.l	$F00F0000,$FFF0
loc_8858:
		dc.w	$1
		dc.l	$F00F0010,$8FFF0
loc_8862:
		dc.w	$1
		dc.l	$60000,$0
loc_886C:
		dc.w	$1
		dc.l	$60006,$30000	
;===============================================================================
; Object 0xDB - Sonic And Miles In Continue Screen
; [ End ]
;===============================================================================