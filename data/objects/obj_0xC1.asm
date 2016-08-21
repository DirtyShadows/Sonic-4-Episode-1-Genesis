;===============================================================================
; Object 0xC1 - Wall that Break when you hang - Sky Fortress
; [ Begin ]
;===============================================================================	
loc_37F88:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_37F96(pc,d0),d1
		jmp	loc_37F96(pc,d1)
loc_37F96:
		dc.w	loc_37F9C-loc_37F96
		dc.w	loc_37FB2-loc_37F96
		dc.w	loc_38086-loc_37F96
loc_37F9C:
		move.w	#$88,d0
		bsr	EnemySettings_01	
		moveq	#0,d0
		move.b	$28(a0),d0
		mulu.w	#$3C,d0
		move.w	d0,$30(a0)
loc_37FB2:
		tst.b	$32(a0)
		beq.s	loc_3801C
		tst.w	$30(a0)
		beq.s	loc_37FC4
		subq.w	#1,$30(a0)
		beq.s	loc_3800A
loc_37FC4:
		lea	($FFFFB000).w,a1
		move.w	$C(a0),d0
		sub.w	#$18,d0
		btst	#0,($FFFFF604).w
		beq.s	loc_37FE6
		subq.w	#1,$C(a1)
		cmp.w	$C(a1),d0
		bcs.s	loc_37FE6
		move.w	d0,$C(a1)
loc_37FE6:
		add.w	#$30,d0
		btst	#1,($FFFFF604).w
		beq.s	loc_38000
		addq.w	#1,$C(a1)
		cmp.w	$C(a1),d0
		bcc.s	loc_38000
		move.w	d0,$C(a1)
loc_38000:
		move.b	($FFFFF603).w,d0
		and.w	#$70,d0
		beq.s	loc_38072
loc_3800A:
		clr.b	$20(a0)
		clr.b	($FFFFB02A).w
		clr.b	($FFFFF7C9).w
		clr.b	$32(a0)
		bra.s	loc_38076
loc_3801C:
		tst.b	$21(a0)
		beq.s	loc_38072
		lea	($FFFFB000).w,a1
		move.w	8(a0),d0
		sub.w	#$14,d0
		cmp.w	8(a1),d0
		bcc.s	loc_38072
		clr.b	$21(a0)
		cmp.b	#4,$24(a1)
		bcc.s	loc_38072
		clr.w	$10(a1)
		clr.w	$12(a1)
		move.w	8(a0),d0
		sub.w	#$14,d0
		move.w	d0,8(a1)
		bset	#0,$22(a1)
		move.b	#$11,$1C(a1)
		move.b	#1,($FFFFB02A).w
		move.b	#1,($FFFFF7C9).w
		move.b	#1,$32(a0)
loc_38072:
		bra	loc_3A8A4
loc_38076:
		lea	(loc_380C0),a4
		lea	(loc_380BC),a2
		bsr	loc_380D0
loc_38086:
		tst.b	$3F(a0)
		beq.s	loc_38092
		subq.b	#1,$3F(a0)
		bra.s	loc_380A6
loc_38092:
		bsr	loc_3A904
		add.w	#8,$12(a0)
		lea	(Breakable_Wall_Animate_Data),a1 
		bsr	loc_3A8BC
loc_380A6:
		tst.b	1(a0)
		bpl	loc_3A898
		bra	loc_3A892	
;-------------------------------------------------------------------------------
Breakable_Wall_Animate_Data: 
		dc.w	loc_380B4-Breakable_Wall_Animate_Data
loc_380B4:
		dc.b	3,2,3,4,5,1,$FF,$0
;-------------------------------------------------------------------------------	
loc_380BC:
		dc.b	0,4,$18,$20
loc_380C0:
		dc.w	$FFF0,$FFF0,$FFF0,$10,$FFD0,$FFF0,$FFD0,$10
;-------------------------------------------------------------------------------
loc_380D0:
		move.w	8(a0),d2
		move.w	$C(a0),d3
		move.b	$18(a0),d4
		subq.b	#1,d4
		moveq	#3,d1
		move.l	a0,a1
		bra.s	loc_380EA
loc_380E4:	
		bsr	loc_3A8B6
		bne.s	loc_38148
loc_380EA:
		move.b	#4,$24(a1)
		move.b	0(a0),0(a1)
		move.l	4(a0),4(a1)
		move.w	2(a0),2(a1)
		move.b	#$84,1(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		move.w	(a4)+,d0
		add.w	d2,d0
		move.w	d0,8(a1)
		move.w	(a4)+,d0
		add.w	d3,d0
		move.w	d0,$C(a1)
		move.b	d4,$18(a1)
		move.b	#$10,$19(a1)
		move.b	#1,$1A(a1)
		move.w	#$FC00,$10(a1)
		move.w	#0,$12(a1)
		move.b	(a2)+,$3F(a1)
		dbra	d1,loc_380E4
loc_38148:
		move.w	#$CB,d0
		jmp	Play_Sfx	
;-------------------------------------------------------------------------------
Obj_0xC1_Ptr: 
		dc.l	Breakable_Wall_Mappings 
		dc.w	$E48C
		dc.b	4,4,$40,$E1
;-------------------------------------------------------------------------------	
Breakable_Wall_Mappings: 
		dc.w	loc_38168-Breakable_Wall_Mappings
		dc.w	loc_381AA-Breakable_Wall_Mappings
		dc.w	loc_381BC-Breakable_Wall_Mappings
		dc.w	loc_381CE-Breakable_Wall_Mappings
		dc.w	loc_381E0-Breakable_Wall_Mappings
		dc.w	loc_381F2-Breakable_Wall_Mappings
loc_38168:
		dc.w	$8
		dc.l	$E0070000,$FFE0,$E0070800,$800FFF0
		dc.l	$70000,$FFE0,$70800,$800FFF0
		dc.l	$E0070000,$FFC0,$E0070800,$800FFD0
		dc.l	$70000,$FFC0,$70800,$800FFD0
loc_381AA:
		dc.w	$2
		dc.l	$F0070000,$FFF0,$F0070800,$8000000
loc_381BC:
		dc.w	$2
		dc.l	$F0050008,$4FFF8,$51008,$1004FFF8
loc_381CE:
		dc.w	$2
		dc.l	$F001000C,$6FFFC,$1100C,$1006FFFC
loc_381E0:
		dc.w	$2
		dc.l	$F001080C,$806FFFC,$1180C,$1806FFFC
loc_381F2:
		dc.w	$2
		dc.l	$F0050808,$804FFF8,$51808,$1804FFF8	
;===============================================================================
; Object 0xC1 - Wall that Break when you hang - Sky Fortress
; [ End ]
;===============================================================================