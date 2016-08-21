;===============================================================================
; Object 0x01 Sonic
; [ Begin ]
;===============================================================================	
loc_15F80:
		tst.w	($FFFFFE08).w
		beq.s	loc_15F8C
		jmp	debug_Mode	
loc_15F8C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	Sonic_Index(pc,d0),d1 
		jmp	Sonic_Index(pc,d1)	
Sonic_Index: 
		dc.w	Sonic_Main-Sonic_Index	
		dc.w	Sonic_Control-Sonic_Index	
		dc.w	Sonic_Hurt-Sonic_Index	
		dc.w	Sonic_Death-Sonic_Index	
		dc.w	Sonic_ResetLevel-Sonic_Index 
;===============================================================================
; Sub Routine Sonic_Main
; [ Begin ]
;===============================================================================	
Sonic_Main: 
		addq.b	#2,$24(a0)
		move.b	#$13,$16(a0)
		move.b	#9,$17(a0)
		move.l	#Sonic_Mappings,4(a0) 
		move.w	#$780,2(a0)
		bsr	ModifySpriteAttr_2P	
		move.b	#2,$18(a0)
		move.b	#$18,$19(a0)
		move.b	#4,1(a0)
		move.w	#$600,($FFFFF760).w
		move.w	#$C,($FFFFF762).w
		move.w	#$80,($FFFFF764).w
		move.b	#$C,$3E(a0)
		move.b	#$D,$3F(a0)
		move.w	8(a0),($FFFFFE32).w
		move.w	$C(a0),($FFFFFE34).w
		move.w	2(a0),($FFFFFE3C).w
		move.w	$3E(a0),($FFFFFE3E).w
		move.b	#0,$2C(a0)
		move.b	#4,$2D(a0)
		move.b	#0,($FFFFFE19).w
		move.b	#$1E,$28(a0)
		sub.w	#$20,8(a0)
		add.w	#4,$C(a0)
		move.w	#0,($FFFFEED2).w
		move.w	#$3F,d2
loc_1603C:	
		bsr	CopySonicMovesForMiles	
		subq.w	#4,a1
		move.w	#0,(a1)
		dbra	d2,loc_1603C
		add.w	#$20,8(a0)
		sub.w	#4,$C(a0)
;===============================================================================
; Sub Routine Sonic_Control
; [ Begin ]
;===============================================================================	
Sonic_Control: 
;-------------------------------------------------------------------------------
; Remove Comments to Enable Debug Mode	Esrael L. G. Neto
; [ Begin ]
;------------------------------------------------------------------------------- 
;	tst.w	($FFFFFFFA).w
;	beq.s	No_Debug_Mode
;	btst	#4,($FFFFF605).w
;	beq.s	No_Debug_Mode
;	move.w	#1,($FFFFFE08).w
;	clr.b	($FFFFF7CC).w
;	rts
;--------------------------------------------------------------------------------

;No_Debug_Mode:	
;-------------------------------------------------------------------------------
; Remove Comments to Enable Debug Mode	Esrael L. G. Neto
; [ Begin ]
;-------------------------------------------------------------------------------	
		tst.b	($FFFFF7CC).w
		bne.s	loc_16062
		move.w	($FFFFF604).w,($FFFFF602).w
loc_16062:
		btst	#0,$2A(a0)
		bne.s	loc_1607C
		moveq	#0,d0
		move.b	$22(a0),d0
		and.w	#6,d0
		move.w	Sonic_Modes(pc,d0),d1 
		jsr	Sonic_Modes(pc,d1)	
loc_1607C:
		cmp.w	#$FF00,($FFFFEECC).w
		bne.s	loc_1608A
		and.w	#$7FF,$C(a0)
loc_1608A:
		bsr.s	Sonic_Display	
		bsr	CopySonicMovesForMiles	
		bsr	Sonic_Water	
		move.b	($FFFFF768).w,$36(a0)
		move.b	($FFFFF76A).w,$37(a0)
		tst.b	($FFFFF7C7).w
		beq.s	loc_160B2
		tst.b	$1C(a0)
		bne.s	loc_160B2
		move.b	$1D(a0),$1C(a0)
loc_160B2:
		bsr	Sonic_Animate	
		tst.b	$2A(a0)
		bmi.s	loc_160C2
		jsr	TouchResponse	
loc_160C2:
		bra	Load_Sonic_Dynamic_PLC	
Sonic_Modes: 
		dc.w	Sonic_MdNormal-Sonic_Modes	
		dc.w	Sonic_MdJump-Sonic_Modes	
		dc.w	Sonic_MdRoll-Sonic_Modes	
		dc.w	Sonic_MdJump2-Sonic_Modes	
;=============================================================================== 
; Sub Routine Sonic_Display
; [ Begin ]	
;===============================================================================	
Sonic_Display: 
		move.w	$30(a0),d0
		beq.s	loc_160DC
		subq.w	#1,$30(a0)
		lsr.w	#3,d0
		bcc.s	loc_160E2
loc_160DC:
		jsr	displaySprite	
loc_160E2:
		btst	#1,$2B(a0)
		beq.s	loc_16114
		tst.w	$32(a0)
		beq.s	loc_16114
		subq.w	#1,$32(a0)
		bne.s	loc_16114
		tst.b	($FFFFF7AA).w
		bne.s	loc_1610E
		cmp.b	#$C,$28(a0)
		bcs.s	loc_1610E
		move.w	($FFFFFF90).w,d0
		jsr	Play_Music	
loc_1610E:
		bclr	#1,$2B(a0)
loc_16114:
		btst	#2,$2B(a0)
		beq.s	loc_16162
		tst.w	$34(a0)
		beq.s	loc_16162
		subq.w	#1,$34(a0)
		bne.s	loc_16162
		move.w	#$600,($FFFFF760).w
		move.w	#$C,($FFFFF762).w
		move.w	#$80,($FFFFF764).w
		tst.b	($FFFFFE19).w
		beq.s	loc_16152
		move.w	#$A00,($FFFFF760).w
		move.w	#$30,($FFFFF762).w
		move.w	#$100,($FFFFF764).w
loc_16152:
		bclr	#2,$2B(a0)
		move.w	#$FC,d0
		jmp	Play_Music	
loc_16162:
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_Display
; [ End ]	
;===============================================================================
		 
;=============================================================================== 
; Sub Routine CopySonicMovesForMiles
; [ Begin ]	
;===============================================================================	
CopySonicMovesForMiles: 
		move.w	($FFFFEED2).w,d0
		lea	($FFFFE500).w,a1
		lea	0(a1,d0),a1
		move.w	8(a0),(a1)+
		move.w	$C(a0),(a1)+
		addq.b	#4,($FFFFEED3).w
		lea	($FFFFE400).w,a1
		lea	0(a1,d0),a1
		move.w	($FFFFF602).w,(a1)+
		move.w	$22(a0),(a1)+
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine CopySonicMovesForMiles
; [ End ]	
;===============================================================================
			
;=============================================================================== 
; Sub Routine Sonic_Water
; [ Begin ]	
;===============================================================================	
Sonic_Water: 
		tst.b	($FFFFF730).w
		bne.s	Sonic_InLevelWithWater 
loc_16194:	
		rts
;--------------------------------------------------------------------------------

Sonic_InLevelWithWater: 
		move.w	($FFFFF646).w,d0
		cmp.w	$C(a0),d0
		bge.s	Sonic_NotInWater	
		bset	#6,$22(a0)
		bne.s	loc_16194
		move.l	a0,a1
		bsr	ResumeMusic	
		move.b	#$A,($FFFFB340).w
		move.b	#$81,($FFFFB368).w
		move.l	a0,($FFFFB37C).w
		move.w	#$300,($FFFFF760).w
		move.w	#6,($FFFFF762).w
		move.w	#$40,($FFFFF764).w
		tst.b	($FFFFFE19).w
		beq.s	loc_161E8
		move.w	#$500,($FFFFF760).w
		move.w	#$18,($FFFFF762).w
		move.w	#$80,($FFFFF764).w
loc_161E8:
		asr.w	$10(a0)
		asr.w	$12(a0)
		asr.w	$12(a0)
		beq.s	loc_16194
		move.w	#$100,($FFFFB41C).w
		move.w	#$AA,d0
		jmp	Play_Sfx	
;===============================================================================	
Sonic_NotInWater: 
		bclr	#6,$22(a0)
		beq.s	loc_16194
		move.l	a0,a1
		bsr	ResumeMusic	
		move.w	#$600,($FFFFF760).w
		move.w	#$C,($FFFFF762).w
		move.w	#$80,($FFFFF764).w
		tst.b	($FFFFFE19).w
		beq.s	loc_1623E
		move.w	#$A00,($FFFFF760).w
		move.w	#$30,($FFFFF762).w
		move.w	#$100,($FFFFF764).w
loc_1623E:
		cmp.b	#4,$24(a0)
		beq.s	loc_1624A
		asl.w	$12(a0)
loc_1624A:
		tst.w	$12(a0)
		beq	loc_16194
		move.w	#$100,($FFFFB41C).w
		move.l	a0,a1
		bsr	ResumeMusic	
		cmp.w	#$F000,$12(a0)
		bgt.s	loc_1626C
		move.w	#$F000,$12(a0)
loc_1626C:
		move.w	#$AA,d0
		jmp	Play_Sfx	
;=============================================================================== 
; Sub Routine Sonic_Water
; [ End ]	
;===============================================================================	

;=============================================================================== 
; Sub Routine Sonic_MdNormal
; [ Begin ]	
;=============================================================================== 
Sonic_MdNormal: 
		move.b	($FFFFF603).w,d0
		and.b	#$70,d0
		bne.s	loc_162C0
		cmp.b	#$A,$1C(a0)
		beq.s	loc_162E6
		cmp.b	#$B,$1C(a0)
		beq.s	loc_162E6
		cmp.b	#5,$1C(a0)
		bne.s	loc_162C0
		cmp.b	#$1E,$1B(a0)
		bcs.s	loc_162C0
		move.b	($FFFFF602).w,d0
		and.b	#$7F,d0
		beq.s	loc_162E6
		move.b	#$A,$1C(a0)
		cmp.b	#$AC,$1B(a0)
		bcs.s	loc_162E6
		move.b	#$B,$1C(a0)
		bra.s	loc_162E6
loc_162C0:
		bsr	Sonic_Spindash	
		bsr	Sonic_Jump	
		bsr	Sonic_SlopeResist	
		bsr	Sonic_Move	
		bsr	Sonic_Roll	
		bsr	Sonic_LevelBoundaries	
		jsr	SpeedToPos	
		bsr	Sonic_Miles_AnglePos	
		bsr	Sonic_SlopeRepel	
loc_162E6:
		move.w	$14(a0),d0
		bpl.s	loc_162EE
		neg.w	d0
loc_162EE:
		cmp.w	#$800,d0
		bcc.s	loc_162FE
		bsr	loc_1ABA4
		tst.w	d1
		bmi	Kill_Sonic	
loc_162FE:
		rts 
;=============================================================================== 
; Sub Routine Sonic_MdNormal
; [ End ]	
;===============================================================================
	
;=============================================================================== 
; Sub Routine Sonic_MdJump
; [ Begin ]	
;=============================================================================== 
Sonic_MdJump: 
		bsr	Sonic_JumpHeight	
		bsr	Sonic_ChgJumpDir	
		bsr	Sonic_LevelBoundaries	
		jsr	ObjectFall	
		btst	#6,$22(a0)
		beq.s	loc_16320
		sub.w	#$28,$12(a0)
loc_16320:
		bsr	Sonic_JumpAngle	
		bsr	Sonic_Floor	
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_MdJump
; [ End ]	
;===============================================================================	
		
;=============================================================================== 
; Sub Routine Sonic_MdRoll
; [ Begin ]	
;===============================================================================	
Sonic_MdRoll: 
		tst.b	$39(a0)
		bne.s	loc_16334
		bsr	Sonic_Jump	
loc_16334:
		bsr	Sonic_RollRepel	
		bsr	Sonic_RollSpeed	
		bsr	Sonic_LevelBoundaries	
		jsr	SpeedToPos	
		bsr	Sonic_Miles_AnglePos	
		bsr	Sonic_SlopeRepel	
		move.w	$14(a0),d0
		bpl.s	loc_16356
		neg.w	d0
loc_16356:
		cmp.w	#$800,d0
		bcc.s	loc_16366
		bsr	loc_1ABA4
		tst.w	d1
		bmi	Kill_Sonic	
loc_16366:
		rts	
;=============================================================================== 
; Sub Routine Sonic_MdRoll
; [ End ]	
;===============================================================================
		 
;=============================================================================== 
; Sub Routine Sonic_MdJump2
; [ Begin ]	
;===============================================================================	
Sonic_MdJump2: 
		bsr	Sonic_JumpHeight	
		bsr	Sonic_ChgJumpDir	
		bsr	Sonic_LevelBoundaries	
		jsr	ObjectFall	
		btst	#6,$22(a0)
		beq.s	loc_16388
		sub.w	#$28,$12(a0)
loc_16388:
		bsr	Sonic_JumpAngle	
		bsr	Sonic_Floor	
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_MdJump2
; [ End ]	
;===============================================================================
		 
;=============================================================================== 
; Sub Routine Sonic_Move
; [ Begin ]	
;===============================================================================	
Sonic_Move: 
		move.w	($FFFFF760).w,d6
		move.w	($FFFFF762).w,d5
		move.w	($FFFFF764).w,d4
		tst.b	$2B(a0)
		bmi	loc_1660A
		tst.w	$2E(a0)
		bne	loc_165D2
		btst	#2,($FFFFF602).w
		beq.s	loc_163BA
		bsr	loc_1669A
loc_163BA:
		btst	#3,($FFFFF602).w
		beq.s	loc_163C6
		bsr	loc_16720
loc_163C6:
		move.b	$26(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		bne	loc_165D2
		tst.w	$14(a0)
		bne	loc_165D2
		bclr	#5,$22(a0)
		move.b	#5,$1C(a0)
		btst	#3,$22(a0)
		beq	loc_164C4
		moveq	#0,d0
		move.b	$3D(a0),d0
		lsl.w	#6,d0
		lea	($FFFFB000).w,a1
		lea	0(a1,d0),a1	
		tst.b	$22(a1)
		bmi	loc_165B4
		moveq	#0,d1
		move.b	$19(a1),d1
		move.w	d1,d2
		add.w	d2,d2
		subq.w	#2,d2
		add.w	8(a0),d1
		sub.w	8(a1),d1
		tst.b	($FFFFFE19).w
		bne	loc_16436
		cmp.w	#2,d1
		blt.s	loc_16486
		cmp.w	d2,d1
		bge.s	loc_16448
		bra	loc_165B4
loc_16436:
		cmp.w	#2,d1
		blt	loc_165A6
		cmp.w	d2,d1
		bge	loc_16596
		bra	loc_165B4
loc_16448:
		btst	#0,$22(a0)
		bne.s	loc_16468
		move.b	#6,$1C(a0)
		addq.w	#6,d2
		cmp.w	d2,d1
		blt	loc_165D2
		move.b	#$C,$1C(a0)
		bra	loc_165D2
loc_16468:
		move.b	#$1D,$1C(a0)
		addq.w	#6,d2
		cmp.w	d2,d1
		blt	loc_165D2
		move.b	#$1E,$1C(a0)
		bclr	#0,$22(a0)
		bra	loc_165D2
loc_16486:
		btst	#0,$22(a0)
		beq.s	loc_164A6
		move.b	#6,$1C(a0)
		cmp.w	#$FFFC,d1
		bge	loc_165D2
		move.b	#$C,$1C(a0)
		bra	loc_165D2
loc_164A6:
		move.b	#$1D,$1C(a0)
		cmp.w	#$FFFC,d1
		bge	loc_165D2
		move.b	#$1E,$1C(a0)
		bset	#0,$22(a0)
		bra	loc_165D2
loc_164C4:
		jsr	Sonic_HitFloor	
		cmp.w	#$C,d1
		blt	loc_165B4
		tst.b	($FFFFFE19).w
		bne	loc_1658E
		cmp.b	#3,$36(a0)
		bne.s	loc_16538
		btst	#0,$22(a0)
		bne.s	loc_1650E
		move.b	#6,$1C(a0)
		move.w	8(a0),d3
		subq.w	#6,d3
		jsr	Sonic_HitFloor_A0	
		cmp.w	#$C,d1
		blt	loc_165D2
		move.b	#$C,$1C(a0)
		bra	loc_165D2
loc_1650E:
		move.b	#$1D,$1C(a0)
		move.w	8(a0),d3
		subq.w	#6,d3
		jsr	Sonic_HitFloor_A0	
		cmp.w	#$C,d1
		blt	loc_165D2
		move.b	#$1E,$1C(a0)
		bclr	#0,$22(a0)
		bra	loc_165D2
loc_16538:
		cmp.b	#3,$37(a0)
		bne.s	loc_165B4
		btst	#0,$22(a0)
		beq.s	loc_16568
		move.b	#6,$1C(a0)
		move.w	8(a0),d3
		addq.w	#6,d3
		jsr	Sonic_HitFloor_A0	
		cmp.w	#$C,d1
		blt.s	loc_165D2
		move.b	#$C,$1C(a0)
		bra.s	loc_165D2
loc_16568:
		move.b	#$1D,$1C(a0)
		move.w	8(a0),d3
		addq.w	#6,d3
		jsr	Sonic_HitFloor_A0	
		cmp.w	#$C,d1
		blt.s	loc_165D2
		move.b	#$1E,$1C(a0)
		bset	#0,$22(a0)
		bra.s	loc_165D2
loc_1658E:
		cmp.b	#3,$36(a0)
		bne.s	loc_1659E
loc_16596:
		bclr	#0,$22(a0)
		bra.s	loc_165AC
loc_1659E:
		cmp.b	#3,$37(a0)
		bne.s	loc_165B4
loc_165A6:
		bset	#0,$22(a0)
loc_165AC:
		move.b	#6,$1C(a0)
		bra.s	loc_165D2
loc_165B4:
		btst	#0,($FFFFF602).w
		beq.s	loc_165C4
		move.b	#7,$1C(a0)
		bra.s	loc_165D2
loc_165C4:
		btst	#1,($FFFFF602).w
		beq.s	loc_165D2
		move.b	#8,$1C(a0)
loc_165D2:
		tst.b	($FFFFFE19).w
		beq	loc_165DE
		move.w	#$C,d5
loc_165DE:
		move.b	($FFFFF602).w,d0
		and.b	#$C,d0
		bne.s	loc_1660A
		move.w	$14(a0),d0
		beq.s	loc_1660A
		bmi.s	loc_165FE
		sub.w	d5,d0
		bcc.s	loc_165F8
		move.w	#0,d0
loc_165F8:
		move.w	d0,$14(a0)
		bra.s	loc_1660A
loc_165FE:
		add.w	d5,d0
		bcc.s	loc_16606
		move.w	#0,d0
loc_16606:
		move.w	d0,$14(a0)
loc_1660A:
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	$14(a0),d1
		asr.l	#8,d1
		move.w	d1,$10(a0)
		muls.w	$14(a0),d0
		asr.l	#8,d0
		move.w	d0,$12(a0)
loc_16628:	
		move.b	$26(a0),d0
		add.b	#$40,d0
		bmi.s	loc_16698
		move.b	#$40,d1
		tst.w	$14(a0)
		beq.s	loc_16698
		bmi.s	loc_16640
		neg.w	d1
loc_16640:
		move.b	$26(a0),d0
		add.b	d1,d0
		move.w	d0,-(sp)
		bsr	Sonic_WalkSpeed	
		move.w	(sp)+,d0
		tst.w	d1
		bpl.s	loc_16698
		asl.w	#8,d1
		add.b	#$20,d0
		and.b	#$C0,d0
		beq.s	loc_16694
		cmp.b	#$40,d0
		beq.s	loc_16682
		cmp.b	#$80,d0
		beq.s	loc_1667C
		add.w	d1,$10(a0)
		bset	#5,$22(a0)
		move.w	#0,$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_1667C:
		sub.w	d1,$12(a0)
		rts
;--------------------------------------------------------------------------------

loc_16682:
		sub.w	d1,$10(a0)
		bset	#5,$22(a0)
		move.w	#0,$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_16694:
		add.w	d1,$12(a0)
loc_16698:
		rts
;--------------------------------------------------------------------------------

loc_1669A:
		move.w	$14(a0),d0
		beq.s	loc_166A2
		bpl.s	loc_166D4
loc_166A2:
		bset	#0,$22(a0)
		bne.s	loc_166B6
		bclr	#5,$22(a0)
		move.b	#1,$1D(a0)
loc_166B6:
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc_166C8
		add.w	d5,d0
		cmp.w	d1,d0
		ble.s	loc_166C8
		move.w	d1,d0
loc_166C8:
		move.w	d0,$14(a0)
		move.b	#0,$1C(a0)
		rts
;--------------------------------------------------------------------------------

loc_166D4:
		sub.w	d4,d0
		bcc.s	loc_166DC
		move.w	#$FF80,d0
loc_166DC:
		move.w	d0,$14(a0)
		move.b	$26(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		bne.s	loc_1671E
		cmp.w	#$400,d0
		blt.s	loc_1671E
		move.b	#$D,$1C(a0)
		bclr	#0,$22(a0)
		move.w	#$A4,d0
		jsr	Play_Sfx	
		cmp.b	#$C,$28(a0)
		bcs.s	loc_1671E
		move.b	#6,($FFFFB424).w
		move.b	#$15,($FFFFB41A).w
loc_1671E:
		rts
;--------------------------------------------------------------------------------

loc_16720:
		move.w	$14(a0),d0
		bmi.s	loc_16754
		bclr	#0,$22(a0)
		beq.s	loc_1673A
		bclr	#5,$22(a0)
		move.b	#1,$1D(a0)
loc_1673A:
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	loc_16748
		sub.w	d5,d0
		cmp.w	d6,d0
		bge.s	loc_16748
		move.w	d6,d0
loc_16748:
		move.w	d0,$14(a0)
		move.b	#0,$1C(a0)
		rts
;--------------------------------------------------------------------------------

loc_16754:
		add.w	d4,d0
		bcc.s	loc_1675C
		move.w	#$80,d0
loc_1675C:
		move.w	d0,$14(a0)
		move.b	$26(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		bne.s	loc_1679E
		cmp.w	#$FC00,d0
		bgt.s	loc_1679E
		move.b	#$D,$1C(a0)
		bset	#0,$22(a0)
		move.w	#$A4,d0
		jsr	Play_Sfx	
		cmp.b	#$C,$28(a0)
		bcs.s	loc_1679E
		move.b	#6,($FFFFB424).w
		move.b	#$15,($FFFFB41A).w
loc_1679E:
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_MoveRight
; [ End ]	
;===============================================================================	
			
;=============================================================================== 
; Sub Routine Sonic_RollSpeed
; [ Begin ]	
;===============================================================================	
Sonic_RollSpeed: 
		move.w	($FFFFF760).w,d6
		asl.w	#1,d6
		move.w	($FFFFF762).w,d5
		asr.w	#1,d5
		move.w	#$20,d4
		tst.b	$2B(a0)
		bmi	loc_16834
		tst.w	$2E(a0)
		bne.s	loc_167D6
		btst	#2,($FFFFF602).w
		beq.s	loc_167CA
		bsr	loc_1686A
loc_167CA:
		btst	#3,($FFFFF602).w
		beq.s	loc_167D6
		bsr	loc_1688E
loc_167D6:
		move.w	$14(a0),d0
		beq.s	loc_167F8
		bmi.s	loc_167EC
		sub.w	d5,d0
		bcc.s	loc_167E6
		move.w	#0,d0
loc_167E6:
		move.w	d0,$14(a0)
		bra.s	loc_167F8
loc_167EC:
		add.w	d5,d0
		bcc.s	loc_167F4
		move.w	#0,d0
loc_167F4:
		move.w	d0,$14(a0)
loc_167F8:
		tst.w	$14(a0)
		bne.s	loc_16834
		tst.b	$39(a0)
		bne.s	loc_16822
		bclr	#2,$22(a0)
		move.b	#$13,$16(a0)
		move.b	#9,$17(a0)
		move.b	#5,$1C(a0)
		subq.w	#5,$C(a0)
		bra.s	loc_16834
loc_16822:
		move.w	#$400,$14(a0)
		btst	#0,$22(a0)
		beq.s	loc_16834
		neg.w	$14(a0)
loc_16834:
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	$14(a0),d0
		asr.l	#8,d0
		move.w	d0,$12(a0)
		muls.w	$14(a0),d1
		asr.l	#8,d1
		cmp.w	#$1000,d1
		ble.s	loc_16858
		move.w	#$1000,d1
loc_16858:
		cmp.w	#$F000,d1
		bge.s	loc_16862
		move.w	#$F000,d1
loc_16862:
		move.w	d1,$10(a0)
		bra	loc_16628
loc_1686A:
		move.w	$14(a0),d0
		beq.s	loc_16872
		bpl.s	loc_16880
loc_16872:
		bset	#0,$22(a0)
		move.b	#2,$1C(a0)
		rts
;--------------------------------------------------------------------------------

loc_16880:
		sub.w	d4,d0
		bcc.s	loc_16888
		move.w	#$FF80,d0
loc_16888:
		move.w	d0,$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_1688E:
		move.w	$14(a0),d0
		bmi.s	loc_168A2
		bclr	#0,$22(a0)
		move.b	#2,$1C(a0)
		rts
;--------------------------------------------------------------------------------

loc_168A2:
		add.w	d4,d0
		bcc.s	loc_168AA
		move.w	#$80,d0
loc_168AA:
		move.w	d0,$14(a0)
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_RollRight
; [ End ]	
;===============================================================================
			
;=============================================================================== 
; Sub Routine Sonic_ChgJumpDir
; [ Begin ]	
;===============================================================================	
Sonic_ChgJumpDir: 
		move.w	($FFFFF760).w,d6
		move.w	($FFFFF762).w,d5
		asl.w	#1,d5
		btst	#4,$22(a0)
		bne.s	loc_168FA
		move.w	$10(a0),d0
		btst	#2,($FFFFF602).w
		beq.s	loc_168E0
		bset	#0,$22(a0)
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc_168E0
		move.w	d1,d0
loc_168E0:
		btst	#3,($FFFFF602).w
		beq.s	loc_168F6
		bclr	#0,$22(a0)
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	loc_168F6
		move.w	d6,d0
loc_168F6:
		move.w	d0,$10(a0)
loc_168FA:
		cmp.w	#$60,($FFFFEED8).w
		beq.s	loc_1690C
		bcc.s	loc_16908
		addq.w	#4,($FFFFEED8).w
loc_16908:
		subq.w	#2,($FFFFEED8).w
loc_1690C:
		cmp.w	#$FC00,$12(a0)
		bcs.s	loc_1693A
		move.w	$10(a0),d0
		move.w	d0,d1
		asr.w	#5,d1
		beq.s	loc_1693A
		bmi.s	loc_1692E
		sub.w	d1,d0
		bcc.s	loc_16928
		move.w	#0,d0
loc_16928:
		move.w	d0,$10(a0)
		rts
;--------------------------------------------------------------------------------

loc_1692E:
		sub.w	d1,d0
		bcs.s	loc_16936
		move.w	#0,d0
loc_16936:
		move.w	d0,$10(a0)
loc_1693A:
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_LevelBoundaries
; [ Begin ]	
;===============================================================================	
Sonic_LevelBoundaries: 
		move.l	8(a0),d1
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d1
		swap.w	d1
		move.w	($FFFFEEC8).w,d0
		add.w	#$10,d0
		cmp.w	d1,d0
		bhi.s	loc_16982
		move.w	($FFFFEECA).w,d0
		add.w	#$128,d0
		tst.b	($FFFFF7AA).w
		bne.s	loc_1696A
		add.w	#$40,d0
loc_1696A:
		cmp.w	d1,d0
		bls.s	loc_16982
loc_1696E:	
		move.w	($FFFFEECE).w,d0
		add.w	#$E0,d0
		cmp.w	$C(a0),d0
		blt.s	loc_1697E
		rts
;--------------------------------------------------------------------------------

loc_1697E:
		bra	Kill_Sonic	
loc_16982:
		move.w	d0,8(a0)
		move.w	#0,$A(a0)
		move.w	#0,$10(a0)
		move.w	#0,$14(a0)
		bra.s	loc_1696E
;=============================================================================== 
; Sub Routine Sonic_Roll
; [ Begin ]	
;===============================================================================	
Sonic_Roll: 
		tst.b	$2B(a0)
		bmi.s	loc_169C0
		move.w	$14(a0),d0
		bpl.s	loc_169A8
		neg.w	d0
loc_169A8:
		cmp.w	#$80,d0
		bcs.s	loc_169C0
		move.b	($FFFFF602).w,d0
		and.b	#$C,d0
		bne.s	loc_169C0
		btst	#1,($FFFFF602).w
		bne.s	loc_169C2
loc_169C0:
		rts
;--------------------------------------------------------------------------------

loc_169C2:
		btst	#2,$22(a0)
		beq.s	loc_169CC
		rts
;--------------------------------------------------------------------------------

loc_169CC:
		bset	#2,$22(a0)
		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.b	#2,$1C(a0)
		addq.w	#5,$C(a0)
		move.w	#$BE,d0
		jsr	Play_Sfx	
		tst.w	$14(a0)
		bne.s	loc_169FE
		move.w	#$200,$14(a0)
loc_169FE:
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_Jump
; [ Begin ]	
;===============================================================================	
Sonic_Jump: 
		move.b	($FFFFF603).w,d0
		and.b	#$70,d0
		beq	loc_16AAE
		moveq	#0,d0
		move.b	$26(a0),d0
		add.b	#$80,d0
		bsr	loc_1AAA2
		cmp.w	#6,d1
		blt	loc_16AAE
		move.w	#$680,d2
		tst.b	($FFFFFE19).w
		beq.s	loc_16A30
		move.w	#$800,d2
loc_16A30:
		btst	#6,$22(a0)
		beq.s	loc_16A3C
		move.w	#$380,d2
loc_16A3C:
		moveq	#0,d0
		move.b	$26(a0),d0
		sub.b	#$40,d0
		jsr	CalcSine	
		muls.w	d2,d1
		asr.l	#8,d1
		add.w	d1,$10(a0)
		muls.w	d2,d0
		asr.l	#8,d0
		add.w	d0,$12(a0)
		bset	#1,$22(a0)
		bclr	#5,$22(a0)
		addq.l	#4,sp
		move.b	#1,$3C(a0)
		clr.b	$38(a0)
		move.w	#$A0,d0
		jsr	Play_Sfx	
		move.b	#$13,$16(a0)
		move.b	#9,$17(a0)
		btst	#2,$22(a0)
		bne.s	loc_16AB0
		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.b	#2,$1C(a0)
		bset	#2,$22(a0)
		addq.w	#5,$C(a0)
loc_16AAE:
		rts
;--------------------------------------------------------------------------------

loc_16AB0:
		bset	#4,$22(a0)
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_Jump
; [ End ]	
;===============================================================================	

;=============================================================================== 
; Sub Routine Sonic_JumpHeight
; [ Begin ]	
;===============================================================================	
Sonic_JumpHeight: 
		tst.b	$3C(a0)
		beq.s	loc_16AE4
		move.w	#$FC00,d1
		btst	#6,$22(a0)
		beq.s	loc_16ACE
		move.w	#$FE00,d1
loc_16ACE:
		cmp.w	$12(a0),d1
		ble.s	loc_16AE2
		move.b	($FFFFF602).w,d0
		and.b	#$70,d0
		bne.s	loc_16AE2
		move.w	d1,$12(a0)
loc_16AE2:
		rts
;--------------------------------------------------------------------------------

loc_16AE4:
		tst.b	$39(a0)
		bne.s	loc_16AF8
		cmp.w	#$F040,$12(a0)
		bge.s	loc_16AF8
		move.w	#$F040,$12(a0)
loc_16AF8:
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_Spindash
; [ Begin ]	
;===============================================================================	
Sonic_Spindash: 
		tst.b	$39(a0)
		bne.s	loc_16B42
		cmp.b	#8,$1C(a0)
		bne.s	loc_16B40
		move.b	($FFFFF603).w,d0
		and.b	#$70,d0
		beq	loc_16B40
		move.b	#9,$1C(a0)
		move.w	#$E0,d0
		jsr	Play_Sfx	
		addq.l	#4,sp
		move.b	#1,$39(a0)
		move.w	#0,$3A(a0)
		cmp.b	#$C,$28(a0)
		bcs.s	loc_16B40
		move.b	#2,($FFFFB41C).w
loc_16B40:
		rts	
loc_16B42:
		move.b	($FFFFF602).w,d0
		btst	#1,d0
		bne	loc_16BD2
		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.b	#2,$1C(a0)
		addq.w	#5,$C(a0)
		move.b	#0,$39(a0)
		move.w	#$2000,($FFFFEED0).w
		moveq	#0,d0
		move.b	$3A(a0),d0
		add.w	d0,d0
		move.w	loc_16BAE(pc,d0),$14(a0)
		tst.b	($FFFFFE19).w
		beq.s	loc_16B8A
		move.w	loc_16BC0(pc,d0),$14(a0)
loc_16B8A:
		btst	#0,$22(a0)
		beq.s	loc_16B96
		neg.w	$14(a0)
loc_16B96:
		bset	#2,$22(a0)
		move.b	#0,($FFFFB41C).w
		move.w	#$BC,d0
		jsr	Play_Sfx	
		bra.s	loc_16C1A	
loc_16BAE:	
		dc.w	$800,$880,$900,$980,$A00,$A80,$B00,$B80
		dc.w	$C00
loc_16BC0:
		dc.w	$B00,$B80,$C00,$C80,$D00,$D80,$E00,$E80
		dc.w	$F00
loc_16BD2:
		tst.w	$3A(a0)
		beq.s	loc_16BEA
		move.w	$3A(a0),d0
		lsr.w	#5,d0
		sub.w	d0,$3A(a0)
		bcc.s	loc_16BEA
		move.w	#0,$3A(a0)
loc_16BEA:
		move.b	($FFFFF603).w,d0
		and.b	#$70,d0
		beq	loc_16C1A
		move.w	#$900,$1C(a0)
		move.w	#$E0,d0
		jsr	Play_Sfx	
		add.w	#$200,$3A(a0)
		cmp.w	#$800,$3A(a0)
		bcs.s	loc_16C1A
		move.w	#$800,$3A(a0)
loc_16C1A:
		addq.l	#4,sp
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_Spindash
; [ End ]	
;===============================================================================
		
;=============================================================================== 
; Sub Routine Sonic_SlopeResist
; [ Begin ]	
;===============================================================================	
Sonic_SlopeResist: 
		move.b	$26(a0),d0
		add.b	#$60,d0
		cmp.b	#$C0,d0
		bcc.s	loc_16C52
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	#$20,d0
		asr.l	#8,d0
		tst.w	$14(a0)
		beq.s	loc_16C52
		bmi.s	loc_16C4E
		tst.w	d0
		beq.s	loc_16C4C
		add.w	d0,$14(a0)
loc_16C4C:
		rts
;--------------------------------------------------------------------------------

loc_16C4E:
		add.w	d0,$14(a0)
loc_16C52:
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_SlopeResist
; [ End ]	
;=============================================================================== 
		
;=============================================================================== 
; Sub Routine Sonic_RollRepel
; [ Begin ]	
;===============================================================================	
Sonic_RollRepel: 
		move.b	$26(a0),d0
		add.b	#$60,d0
		cmp.b	#$C0,d0
		bcc.s	loc_16C8E
		move.b	$26(a0),d0
		jsr	CalcSine	
		muls.w	#$50,d0
		asr.l	#8,d0
		tst.w	$14(a0)
		bmi.s	loc_16C84
		tst.w	d0
		bpl.s	loc_16C7E
		asr.l	#2,d0
loc_16C7E:
		add.w	d0,$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_16C84:
		tst.w	d0
		bmi.s	loc_16C8A
		asr.l	#2,d0
loc_16C8A:
		add.w	d0,$14(a0)
loc_16C8E:
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_SlopeRepel
; [ Begin ]	
;===============================================================================	
Sonic_SlopeRepel: 
		nop
		tst.b	$38(a0)
		bne.s	loc_16CCA
		tst.w	$2E(a0)
		bne.s	loc_16CCC
		move.b	$26(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		beq.s	loc_16CCA
		move.w	$14(a0),d0
		bpl.s	loc_16CB4
		neg.w	d0
loc_16CB4:
		cmp.w	#$280,d0
		bcc.s	loc_16CCA
		clr.w	$14(a0)
		bset	#1,$22(a0)
		move.w	#$1E,$2E(a0)
loc_16CCA:
		rts
;--------------------------------------------------------------------------------

loc_16CCC:
		subq.w	#1,$2E(a0)
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_SlopeRepel
; [ End ]	
;===============================================================================	

;=============================================================================== 
; Sub Routine Sonic_JumpAngle
; [ Begin ]	
;===============================================================================	
Sonic_JumpAngle: 
		move.b	$26(a0),d0
		beq.s	loc_16CEC
		bpl.s	loc_16CE2
		addq.b	#2,d0
		bcc.s	loc_16CE0
		moveq	#0,d0
loc_16CE0:
		bra.s	loc_16CE8
loc_16CE2:
		subq.b	#2,d0
		bcc.s	loc_16CE8
		moveq	#0,d0
loc_16CE8:
		move.b	d0,$26(a0)
loc_16CEC:
		move.b	$27(a0),d0
		beq.s	loc_16D30
		tst.w	$14(a0)
		bmi.s	loc_16D10
loc_16CF8:	
		move.b	$2D(a0),d1
		add.b	d1,d0
		bcc.s	loc_16D0E
		subq.b	#1,$2C(a0)
		bcc.s	loc_16D0E
		move.b	#0,$2C(a0)
		moveq	#0,d0
loc_16D0E:
		bra.s	loc_16D2C
loc_16D10:
		tst.b	$29(a0)
		bne.s	loc_16CF8
		move.b	$2D(a0),d1
		sub.b	d1,d0
		bcc.s	loc_16D2C
		subq.b	#1,$2C(a0)
		bcc.s	loc_16D2C
		move.b	#0,$2C(a0)
		moveq	#0,d0
loc_16D2C:
		move.b	d0,$27(a0)
loc_16D30:
		rts	
;=============================================================================== 
; Sub Routine Sonic_JumpAngle
; [ End ]	
;=============================================================================== 

;=============================================================================== 
; Sub Routine Sonic_Floor
; [ Begin ]	
;=============================================================================== 
Sonic_Floor: 
		move.l	#$FFFFD000,($FFFFF796).w
		cmp.b	#$C,$3E(a0)
		beq.s	loc_16D4A
		move.l	#$FFFFD600,($FFFFF796).w
loc_16D4A:
		move.b	$3F(a0),d5
		move.w	$10(a0),d1
		move.w	$12(a0),d2
		jsr	CalcAngle	
		sub.b	#$20,d0
		and.b	#$C0,d0
		cmp.b	#$40,d0
		beq	loc_16E14
		cmp.b	#$80,d0
		beq	loc_16E70
		cmp.b	#$C0,d0
		beq	loc_16ECC
		bsr	loc_1AEF6
		tst.w	d1
		bpl.s	loc_16D8E
		sub.w	d1,8(a0)
		move.w	#0,$10(a0)
loc_16D8E:
		bsr	loc_1AD74
		tst.w	d1
		bpl.s	loc_16DA0
		add.w	d1,8(a0)
		move.w	#0,$10(a0)
loc_16DA0:
		bsr	loc_1AAE6
		tst.w	d1
		bpl.s	loc_16E12
		move.b	$12(a0),d2
		addq.b	#8,d2
		neg.b	d2
		cmp.b	d2,d1
		bge.s	loc_16DB8
		cmp.b	d2,d0
		blt.s	loc_16E12
loc_16DB8:
		add.w	d1,$C(a0)
		move.b	d3,$26(a0)
		bsr	loc_16F28
		move.b	d3,d0
		add.b	#$20,d0
		and.b	#$40,d0
		bne.s	loc_16DF0
		move.b	d3,d0
		add.b	#$10,d0
		and.b	#$20,d0
		beq.s	loc_16DE2
		asr.w	$12(a0)
		bra.s	loc_16E04
loc_16DE2:
		move.w	#0,$12(a0)
		move.w	$10(a0),$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_16DF0:
		move.w	#0,$10(a0)
		cmp.w	#$FC0,$12(a0)
		ble.s	loc_16E04
		move.w	#$FC0,$12(a0)
loc_16E04:
		move.w	$12(a0),$14(a0)
		tst.b	d3
		bpl.s	loc_16E12
		neg.w	$14(a0)
loc_16E12:
		rts
;--------------------------------------------------------------------------------

loc_16E14:
		bsr	loc_1AEF6
		tst.w	d1
		bpl.s	loc_16E2E
		sub.w	d1,8(a0)
		move.w	#0,$10(a0)
		move.w	$12(a0),$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_16E2E:
		bsr	Sonic_DontRunOnWalls	
		tst.w	d1
		bpl.s	loc_16E48
		sub.w	d1,$C(a0)
		tst.w	$12(a0)
		bpl.s	loc_16E46
		move.w	#0,$12(a0)
loc_16E46:
		rts
;--------------------------------------------------------------------------------

loc_16E48:
		tst.w	$12(a0)
		bmi.s	loc_16E6E
		bsr	loc_1AAE6
		tst.w	d1
		bpl.s	loc_16E6E
		add.w	d1,$C(a0)
		move.b	d3,$26(a0)
		bsr	loc_16F28
		move.w	#0,$12(a0)
		move.w	$10(a0),$14(a0)
loc_16E6E:
		rts
;--------------------------------------------------------------------------------

loc_16E70:
		bsr	loc_1AEF6
		tst.w	d1
		bpl.s	loc_16E82
		sub.w	d1,8(a0)
		move.w	#0,$10(a0)
loc_16E82:
		bsr	loc_1AD74
		tst.w	d1
		bpl.s	loc_16E94
		add.w	d1,8(a0)
		move.w	#0,$10(a0)
loc_16E94:
		bsr	Sonic_DontRunOnWalls	
		tst.w	d1
		bpl.s	loc_16ECA
		sub.w	d1,$C(a0)
		move.b	d3,d0
		add.b	#$20,d0
		and.b	#$40,d0
		bne.s	loc_16EB4
		move.w	#0,$12(a0)
		rts
;--------------------------------------------------------------------------------

loc_16EB4:
		move.b	d3,$26(a0)
		bsr	loc_16F28
		move.w	$12(a0),$14(a0)
		tst.b	d3
		bpl.s	loc_16ECA
		neg.w	$14(a0)
loc_16ECA:
		rts
;--------------------------------------------------------------------------------

loc_16ECC:
		bsr	loc_1AD74
		tst.w	d1
		bpl.s	loc_16EE6
		add.w	d1,8(a0)
		move.w	#0,$10(a0)
		move.w	$12(a0),$14(a0)
		rts
;--------------------------------------------------------------------------------

loc_16EE6:
		bsr	Sonic_DontRunOnWalls	
		tst.w	d1
		bpl.s	loc_16F00
		sub.w	d1,$C(a0)
		tst.w	$12(a0)
		bpl.s	loc_16EFE
		move.w	#0,$12(a0)
loc_16EFE:
		rts
;--------------------------------------------------------------------------------

loc_16F00:
		tst.w	$12(a0)
		bmi.s	loc_16F26
		bsr	loc_1AAE6
		tst.w	d1
		bpl.s	loc_16F26
		add.w	d1,$C(a0)
		move.b	d3,$26(a0)
		bsr	loc_16F28
		move.w	#0,$12(a0)
		move.w	$10(a0),$14(a0)
loc_16F26:
		rts
;--------------------------------------------------------------------------------

loc_16F28:
		tst.b	$39(a0)
		bne.s	loc_16F58	
		move.b	#0,$1C(a0)
;===============================================================================
; Sub Routine loc_16F34
; [ Begin ]
;===============================================================================
loc_16F34:
		btst	#2,$22(a0)
		beq.s	loc_16F58
		bclr	#2,$22(a0)
		move.b	#$13,$16(a0)
		move.b	#9,$17(a0)
		move.b	#0,$1C(a0)
		subq.w	#5,$C(a0)
loc_16F58:
		bclr	#1,$22(a0)
		bclr	#5,$22(a0)
		bclr	#4,$22(a0)
		move.b	#0,$3C(a0)
		move.w	#0,($FFFFF7D0).w
		move.b	#0,$27(a0)
		move.b	#0,$29(a0)
		move.b	#0,$2C(a0)
		cmp.b	#$14,$1C(a0)
		bne.s	loc_16F96
		move.b	#0,$1C(a0)
loc_16F96:
		rts
;--------------------------------------------------------------------------------

;===============================================================================
; Sub Routine loc_16F34
; [ End ]
;===============================================================================

;===============================================================================
; Sub Routine Sonic_Hurt
; [ Begin ]
;===============================================================================
Sonic_Hurt: 
		tst.b	$25(a0)
		bmi	loc_1701A
		jsr	SpeedToPos	
		add.w	#$30,$12(a0)
		btst	#6,$22(a0)
		beq.s	loc_16FBA
		sub.w	#$20,$12(a0)
loc_16FBA:
		bsr	Sonic_HurtStop	
		bsr	Sonic_LevelBoundaries	
		bsr	CopySonicMovesForMiles	
		bsr	Sonic_Animate	
		bsr	Load_Sonic_Dynamic_PLC	
		jmp	displaySprite	
;===============================================================================
; Sub Routine Sonic_Hurt
; [ End ]
;===============================================================================
		
;=============================================================================== 
; Sub Routine Sonic_HurtStop
; [ Begin ]	
;===============================================================================	
Sonic_HurtStop: 
		move.w	($FFFFEECE).w,d0
		add.w	#$E0,d0
		cmp.w	$C(a0),d0
		blt	Kill_Sonic	
		bsr	Sonic_Floor	
		btst	#1,$22(a0)
		bne.s	loc_17018
		moveq	#0,d0
		move.w	d0,$12(a0)
		move.w	d0,$10(a0)
		move.w	d0,$14(a0)
		move.b	d0,$2A(a0)
		move.b	#0,$1C(a0)
		subq.b	#2,$24(a0)
		move.w	#$78,$30(a0)
		move.b	#0,$39(a0)
loc_17018:
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_HurtStop
; [ End ]	
;===============================================================================	
loc_1701A:
		subq.b	#2,$24(a0)
		move.b	#0,$25(a0)
		bsr	CopySonicMovesForMiles	
		bsr	Sonic_Animate	
		bsr	Load_Sonic_Dynamic_PLC	
		jmp	displaySprite	
;=============================================================================== 
; Sub Routine Sonic_Death
; [ Begin ]	
;===============================================================================	
Sonic_Death: 
		bsr	Sonic_GameOver	
		jsr	ObjectFall	
		bsr	CopySonicMovesForMiles	
		bsr	Sonic_Animate	
		bsr	Load_Sonic_Dynamic_PLC	
		jmp	displaySprite	
		
;=============================================================================== 
; Sub Routine Sonic_Death
; [ End ]	
;===============================================================================
			
;=============================================================================== 
; Sub Routine Sonic_GameOver
; [ Begin ]	
;===============================================================================	
Sonic_GameOver: 
		move.b	#0,$39(a0)
		move.w	($FFFFEECE).w,d0
		add.w	#$100,d0
		cmp.w	$C(a0),d0
		bge	loc_17144
		move.b	#8,$24(a0)
		move.w	#$3C,$3A(a0)
		addq.b	#1,($FFFFFE1C).w
		subq.b	#1,($FFFFFE12).w
		bne.s	loc_170BA
		move.w	#0,$3A(a0)
		move.b	#$39,($FFFFB080).w
		move.b	#$39,($FFFFB0C0).w
		move.b	#1,($FFFFB0DA).w
		move.w	a0,($FFFFB0BE).w
loc_1709A:	
		clr.b	($FFFFFE1E).w
		clr.b	($FFFFFECA).w
		move.b	#8,$24(a0)
		move.w	#$9B,d0
		jsr	Play_Music	
		moveq	#3,d0
		jmp	LoadPLC	
loc_170BA:
		tst.b	($FFFFFE1A).w
		beq.s	loc_170E4
		move.w	#0,$3A(a0)
		move.b	#$39,($FFFFB080).w
		move.b	#$39,($FFFFB0C0).w
		move.b	#2,($FFFFB09A).w
		move.b	#3,($FFFFB0DA).w
		move.w	a0,($FFFFB0BE).w
		bra.s	loc_1709A
loc_170E4:
		tst.w	($FFFFFFD8).w
		beq.s	loc_17144
		move.b	#2,$24(a0)
		move.w	($FFFFFE32).w,8(a0)
		move.w	($FFFFFE34).w,$C(a0)
		move.w	($FFFFFE3C).w,2(a0)
		move.w	($FFFFFE3E).w,$3E(a0)
		move.w	($FFFFFE36).w,($FFFFFE20).w
		move.b	($FFFFFE54).w,($FFFFFE1B).w
		move.b	#0,$2A(a0)
		move.b	#0,$1C(a0)
		move.w	#0,$10(a0)
		move.w	#0,$12(a0)
		move.w	#0,$14(a0)
		move.b	#2,$22(a0)
		move.w	#0,$2E(a0)
		move.w	#0,$3A(a0)
loc_17144:
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_GameOver
; [ End ]	
;=============================================================================== 

;=============================================================================== 
; Sub Routine Sonic_ResetLevel
; [ End ]	
;=============================================================================== 
Sonic_ResetLevel: 
		tst.w	$3A(a0)
		beq.s	loc_17158
		subq.w	#1,$3A(a0)
		bne.s	loc_17158
		move.w	#1,($FFFFFE02).w
loc_17158:
		rts
;--------------------------------------------------------------------------------

;=============================================================================== 
; Sub Routine Sonic_ResetLevel
; [ End ]	
;===============================================================================	
		
;=============================================================================== 
; Sub Routine Sonic_Animate
; [ Begin ]	
;===============================================================================	
Sonic_Animate: 
		lea	(loc_17422),a1
		tst.b	($FFFFFE19).w
		beq.s	loc_1716C
		lea	(loc_175D0),a1
loc_1716C:
		moveq	#0,d0
		move.b	$1C(a0),d0
		cmp.b	$1D(a0),d0
		beq.s	loc_1718E
		move.b	d0,$1D(a0)
		move.b	#0,$1B(a0)
		move.b	#0,$1E(a0)
		bclr	#5,$22(a0)
loc_1718E:
		add.w	d0,d0
		add.w	0(a1,d0),a1
		move.b	(a1),d0
		bmi.s	loc_171FE
		move.b	$22(a0),d1
		and.b	#1,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		subq.b	#1,$1E(a0)
		bpl.s	loc_171CC
		move.b	d0,$1E(a0)
loc_171B4:	
		moveq	#0,d1
		move.b	$1B(a0),d1
		move.b	1(a1,d1),d0
		cmp.b	#$F0,d0
		bcc.s	loc_171CE
loc_171C4:	
		move.b	d0,$1A(a0)
		addq.b	#1,$1B(a0)
loc_171CC:
		rts
;--------------------------------------------------------------------------------

loc_171CE:
		addq.b	#1,d0
		bne.s	loc_171DE
		move.b	#0,$1B(a0)
		move.b	1(a1),d0
		bra.s	loc_171C4
loc_171DE:
		addq.b	#1,d0
		bne.s	loc_171F2
		move.b	2(a1,d1),d0
		sub.b	d0,$1B(a0)
		sub.b	d0,d1
		move.b	1(a1,d1),d0
		bra.s	loc_171C4
loc_171F2:
		addq.b	#1,d0
		bne.s	loc_171FC
		move.b	2(a1,d1),$1C(a0)
loc_171FC:
		rts
;--------------------------------------------------------------------------------

loc_171FE:
		addq.b	#1,d0
		bne	loc_17390
		moveq	#0,d0
		move.b	$27(a0),d0
		bne	loc_1732A
		moveq	#0,d1
		move.b	$26(a0),d0
		bmi.s	loc_1721A
		beq.s	loc_1721A
		subq.b	#1,d0
loc_1721A:
		move.b	$22(a0),d2
		and.b	#1,d2
		bne.s	loc_17226
		not.b	d0
loc_17226:
		add.b	#$10,d0
		bpl.s	loc_1722E
		moveq	#3,d1
loc_1722E:
		and.b	#$FC,1(a0)
		eor.b	d1,d2
		or.b	d2,1(a0)
		btst	#5,$22(a0)
		bne	loc_173DC
		lsr.b	#4,d0
		and.b	#6,d0
		move.w	$14(a0),d2
		bpl.s	loc_17252
		neg.w	d2
loc_17252:
		tst.b	$2B(a0)
		bpl	loc_1725C
		add.w	d2,d2
loc_1725C:
		tst.b	($FFFFFE19).w
		bne.s	loc_172B8
		lea	(loc_17470),a1
		cmp.w	#$600,d2
		bcc.s	loc_17276
		lea	(loc_17466),a1
		add.b	d0,d0
loc_17276:
		add.b	d0,d0
		move.b	d0,d3
		moveq	#0,d1
		move.b	$1B(a0),d1
		move.b	1(a1,d1),d0
		cmp.b	#$FF,d0
		bne.s	loc_17294
		move.b	#0,$1B(a0)
		move.b	1(a1),d0
loc_17294:
		move.b	d0,$1A(a0)
		add.b	d3,$1A(a0)
		subq.b	#1,$1E(a0)
		bpl.s	loc_172B6
		neg.w	d2
		add.w	#$800,d2
		bpl.s	loc_172AC
		moveq	#0,d2
loc_172AC:
		lsr.w	#8,d2
		move.b	d2,$1E(a0)
		addq.b	#1,$1B(a0)
loc_172B6:
		rts
;--------------------------------------------------------------------------------

loc_172B8:
		lea	(loc_1761A),a1
		cmp.w	#$800,d2
		bcc.s	loc_172D0
		lea	(loc_17610),a1
		add.b	d0,d0
		add.b	d0,d0
		bra.s	loc_172D2
loc_172D0:
		lsr.b	#1,d0
loc_172D2:
		move.b	d0,d3
		moveq	#0,d1
		move.b	$1B(a0),d1
		move.b	1(a1,d1),d0
		cmp.b	#$FF,d0
		bne.s	loc_172EE
		move.b	#0,$1B(a0)
		move.b	1(a1),d0
loc_172EE:
		move.b	d0,$1A(a0)
		add.b	d3,$1A(a0)
		move.b	($FFFFFE05).w,d1
		and.b	#3,d1
		bne.s	loc_1730E
		cmp.b	#$B5,$1A(a0)
		bcc.s	loc_1730E
		add.b	#$20,$1A(a0)
loc_1730E:
		subq.b	#1,$1E(a0)
		bpl.s	loc_17328
		neg.w	d2
		add.w	#$800,d2
		bpl.s	loc_1731E
		moveq	#0,d2
loc_1731E:
		lsr.w	#8,d2
		move.b	d2,$1E(a0)
		addq.b	#1,$1B(a0)
loc_17328:
		rts
;--------------------------------------------------------------------------------

loc_1732A:
		move.b	$27(a0),d0
		moveq	#0,d1
		move.b	$22(a0),d2
		and.b	#1,d2
		bne.s	loc_17358
		and.b	#$FC,1(a0)
		add.b	#$B,d0
		divu.w	#$16,d0
		add.b	#$5F,d0
		move.b	d0,$1A(a0)
		move.b	#0,$1E(a0)
		rts
;--------------------------------------------------------------------------------

loc_17358:
		and.b	#$FC,1(a0)
		tst.b	$29(a0)
		beq.s	loc_17370
		or.b	#1,1(a0)
		add.b	#$B,d0
		bra.s	loc_1737C
loc_17370:
		or.b	#3,1(a0)
		neg.b	d0
		add.b	#$8F,d0
loc_1737C:
		divu.w	#$16,d0
		add.b	#$5F,d0
		move.b	d0,$1A(a0)
		move.b	#0,$1E(a0)
		rts
;--------------------------------------------------------------------------------

loc_17390:
		subq.b	#1,$1E(a0)
		bpl	loc_171CC
		addq.b	#1,d0
		bne.s	loc_173DC
		move.w	$14(a0),d2
		bpl.s	loc_173A4
		neg.w	d2
loc_173A4:
		lea	(loc_17484),a1
		cmp.w	#$600,d2
		bcc.s	loc_173B6
		lea	(loc_1747A),a1
loc_173B6:
		neg.w	d2
		add.w	#$400,d2
		bpl.s	loc_173C0
		moveq	#0,d2
loc_173C0:
		lsr.w	#8,d2
		move.b	d2,$1E(a0)
		move.b	$22(a0),d1
		and.b	#1,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		bra	loc_171B4
loc_173DC:
		subq.b	#1,$1E(a0)
		bpl	loc_171CC
		move.w	$14(a0),d2
		bmi.s	loc_173EC
		neg.w	d2
loc_173EC:
		add.w	#$800,d2
		bpl.s	loc_173F4
		moveq	#0,d2
loc_173F4:
		lsr.w	#6,d2
		move.b	d2,$1E(a0)
		lea	(loc_1748E),a1
		tst.b	($FFFFFE19).w
		beq.s	loc_1740C
		lea	(loc_17624),a1
loc_1740C:
		move.b	$22(a0),d1
		and.b	#1,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		bra	loc_171B4	
;-------------------------------------------------------------------------------
loc_17422:	
		dc.w	loc_17466-loc_17422
		dc.w	loc_17470-loc_17422
		dc.w	loc_1747A-loc_17422
		dc.w	loc_17484-loc_17422
		dc.w	loc_1748E-loc_17422
		dc.w	loc_17498-loc_17422
		dc.w	loc_1754E-loc_17422
		dc.w	loc_17554-loc_17422
		dc.w	loc_17559-loc_17422
		dc.w	loc_1755E-loc_17422
		dc.w	loc_1756A-loc_17422
		dc.w	loc_1756E-loc_17422
		dc.w	loc_17572-loc_17422
		dc.w	loc_17578-loc_17422
		dc.w	loc_1757F-loc_17422
		dc.w	loc_17583-loc_17422
		dc.w	loc_1758A-loc_17422
		dc.w	loc_1758E-loc_17422
		dc.w	loc_17592-loc_17422
		dc.w	loc_17598-loc_17422
		dc.w	loc_1759D-loc_17422
		dc.w	loc_175A1-loc_17422
		dc.w	loc_175A8-loc_17422
		dc.w	loc_175AB-loc_17422
		dc.w	loc_175AE-loc_17422
		dc.w	loc_175B1-loc_17422
		dc.w	loc_175B1-loc_17422
		dc.w	loc_175B4-loc_17422
		dc.w	loc_175B8-loc_17422
		dc.w	loc_175BC-loc_17422
		dc.w	loc_175C0-loc_17422
		dc.w	loc_17641-loc_17422
		dc.w	loc_175C8-loc_17422
		dc.w	loc_175CC-loc_17422
loc_17466:
		dc.b	$FF,$F,$10,$11,$12,$13,$14,$D,$E,$FF
loc_17470:
		dc.b	$FF,$2D,$2E,$2F,$30,$FF,$FF,$FF,$FF,$FF
loc_1747A:
		dc.b	$FE,$3D,$41,$3E,$41,$3F,$41,$40,$41,$FF
loc_17484:
		dc.b	$FE,$3D,$41,$3E,$41,$3F,$41,$40,$41,$FF
loc_1748E:
		dc.b	$FD,$48,$49,$4A,$4B,$FF,$FF,$FF,$FF,$FF
loc_17498:
		dc.b	5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,$1
		dc.b	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,$2
		dc.b	3,3,3,3,3,4,4,4,5,5,5,4,4,4,5,$5
		dc.b	5,4,4,4,5,5,5,4,4,4,5,5,5,6,6,$6
		dc.b	6,6,6,6,6,6,6,4,4,4,5,5,5,4,4,$4
		dc.b	5,5,5,4,4,4,5,5,5,4,4,4,5,5,5,$6
		dc.b	6,6,6,6,6,6,6,6,6,4,4,4,5,5,5,$4
		dc.b	4,4,5,5,5,4,4,4,5,5,5,4,4,4,5,$5
		dc.b	5,6,6,6,6,6,6,6,6,6,6,4,4,4,5,$5
		dc.b	5,4,4,4,5,5,5,4,4,4,5,5,5,4,4,$4
		dc.b	5,5,5,6,6,6,6,6,6,6,6,6,6,7,8,$8
		dc.b	8,9,9,9,$FE,$6
loc_1754E:
		dc.b	9,$CC,$CD,$CE,$CD,$FF
loc_17554:
		dc.b	5,$B,$C,$FE,$1
loc_17559:
		dc.b	5,$4C,$4D,$FE,$1
loc_1755E:
		dc.b	0,$42,$43,$42,$44,$42,$45,$42,$46,$42,$47,$FF
loc_1756A:
		dc.b	1,2,$FD,$0
loc_1756E:
		dc.b	3,$A,$FD,$0
loc_17572:
		dc.b	3,$C8,$C9,$CA,$CB,$FF
loc_17578:
		dc.b	5,$D2,$D3,$D4,$D5,$FD,$0
loc_1757F:
		dc.b	7,$54,$59,$FF
loc_17583:
		dc.b	7,$54,$55,$56,$57,$58,$FF
loc_1758A:
		dc.b	$2F,$5B,$FD,$0
loc_1758E:
		dc.b	1,$50,$51,$FF
loc_17592:
		dc.b	$F,$43,$43,$43,$FE,$1
loc_17598:
		dc.b	$F,$43,$44,$FE,$1
loc_1759D:
		dc.b	$13,$6B,$6C,$FF
loc_175A1:
		dc.b	$B,$5A,$5A,$11,$12,$FD,$0
loc_175A8:
		dc.b	$20,$5E,$FF
loc_175AB:
		dc.b	$20,$5D,$FF
loc_175AE:
		dc.b	$20,$5C,$FF
loc_175B1:
		dc.b	$40,$4E,$FF
loc_175B4:
		dc.b	9,$4E,$4F,$FF
loc_175B8:
		dc.b	$77,0,$FD,$0
loc_175BC:
		dc.b	$13,$D0,$D1,$FF
loc_175C0:
		dc.b	3,$CF,$C8,$C9,$CA,$CB,$FE,$4
loc_175C8:
		dc.b	9,8,9,$FF
loc_175CC:	
		dc.b	3,7,$FD,$0
;-------------------------------------------------------------------------------
loc_175D0:
		dc.w	loc_17610-loc_175D0
		dc.w	loc_1761A-loc_175D0
		dc.w	loc_1747A-loc_175D0
		dc.w	loc_17484-loc_175D0
		dc.w	loc_17624-loc_175D0
		dc.w	loc_1762E-loc_175D0
		dc.w	loc_17634-loc_175D0
		dc.w	loc_17554-loc_175D0
		dc.w	loc_1763E-loc_175D0
		dc.w	loc_1755E-loc_175D0
		dc.w	loc_1756A-loc_175D0
		dc.w	loc_1756E-loc_175D0
		dc.w	loc_17572-loc_175D0
		dc.w	loc_17578-loc_175D0
		dc.w	loc_1757F-loc_175D0
		dc.w	loc_17583-loc_175D0
		dc.w	loc_1758A-loc_175D0
		dc.w	loc_1758E-loc_175D0
		dc.w	loc_17592-loc_175D0
		dc.w	loc_17598-loc_175D0
		dc.w	loc_1759D-loc_175D0
		dc.w	loc_175A1-loc_175D0
		dc.w	loc_175A8-loc_175D0
		dc.w	loc_175AB-loc_175D0
		dc.w	loc_175AE-loc_175D0
		dc.w	loc_175B1-loc_175D0
		dc.w	loc_175B1-loc_175D0
		dc.w	loc_175B4-loc_175D0
		dc.w	loc_175B8-loc_175D0
		dc.w	loc_175BC-loc_175D0
		dc.w	loc_175C0-loc_175D0
		dc.w	loc_17641-loc_175D0
loc_17610:
		dc.b	$FF,$77,$78,$79,$7A,$7B,$7C,$75,$76,$FF
loc_1761A:
		dc.b	$FF,$B5,$B9,$FF,$FF,$FF,$FF,$FF,$FF,$FF
loc_17624:
		dc.b	$FD,$BD,$BE,$BF,$C0,$FF,$FF,$FF,$FF,$FF
loc_1762E:
		dc.b	7,$72,$73,$74,$73,$FF
loc_17634:
		dc.b	9,$C2,$C3,$C4,$C3,$C5,$C6,$C7,$C6,$FF
loc_1763E:
		dc.b	5,$C1,$FF
loc_17641:
		dc.b	2,$6D,$6D,$6E,$6E,$6F,$70,$71,$70,$71,$70,$71,$70,$71,$FD,$0
		dc.b	$0	; Filler
;-------------------------------------------------------------------------------	
Load_Sonic_Dynamic_PLC: 
		moveq	#0,d0
		move.b	$1A(a0),d0
		cmp.b	($FFFFF766).w,d0
		beq.s	loc_176A4
		move.b	d0,($FFFFF766).w
		lea	(Sonic_Dyn_Script),a2	
		add.w	d0,d0
		add.w	0(a2,d0),a2
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	loc_176A4
		move.w	#$F000,d4
loc_17678:	
		moveq	#0,d1
		move.w	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		and.w	#$F0,d3
		add.w	#$10,d3
		and.w	#$FFF,d1
		lsl.l	#5,d1
		add.l	#Sonic_Sprites,d1	
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	dMA_68KtoVRAM	
		dbra	d5,loc_17678
loc_176A4:
		rts
;--------------------------------------------------------------------------------

		nop	; Filler	
Kill_Sonic: 
		jmp	Kill_Player	
;-------------------------------------------------------------------------------
		dc.w	$0	; Filler	
;===============================================================================
; Object 0x01 Sonic
; [ End ]
;===============================================================================
