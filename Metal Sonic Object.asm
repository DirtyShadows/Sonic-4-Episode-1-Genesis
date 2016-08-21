; ---------------------------------------------------------------------------
; Object 02 - Metal	Sonic
; ---------------------------------------------------------------------------

Obj02:					; XREF: Obj_Index
		tst.w	($FFFFFE08).w	; is debug mode	being used?
		beq.s	Obj02_Normal	; if not, branch
		jmp	DebugMode
; ===========================================================================

Obj02_Normal:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	Obj02_Index(pc,d0.w),d1
		jmp	Obj02_Index(pc,d1.w)
; ===========================================================================
Obj02_Index:	dc.w Obj02_Main-Obj02_Index
		dc.w Obj02_Control-Obj02_Index
		dc.w Obj02_Hurt-Obj02_Index
		dc.w Obj02_Death-Obj02_Index
		dc.w Obj02_ResetLevel-Obj02_Index
; ===========================================================================

Obj02_Main:				; XREF: Obj02_Index
		addq.b	#2,$24(a0)
		move.b	#$13,$16(a0)
		move.b	#9,$17(a0)
		move.l	#Map_Metal,4(a0)
		move.w	#$780,2(a0)
		move.b	#2,$18(a0)
		move.b	#$18,$19(a0)
		move.b	#4,1(a0)
		move.w	#$600,($FFFFF760).w ; Metal's top speed
		move.w	#$C,($FFFFF762).w ; Metal's acceleration
		move.w	#$80,($FFFFF764).w ; Metal's deceleration

Obj02_Control:				; XREF: Obj02_Index
		tst.w	($FFFFFFFA).w	; is debug cheat enabled?
		beq.s	loc4_12C58	; if not, branch
		btst	#4,($FFFFF605).w ; is button C pressed?
		beq.s	loc4_12C58	; if not, branch
		move.w	#1,($FFFFFE08).w ; change Metal	into a ring/item
		clr.b	($FFFFF7CC).w
		rts	
; ===========================================================================

loc4_12C58:
		tst.b	($FFFFF7CC).w	; are controls locked?
		bne.s	loc4_12C64	; if yes, branch
		move.w	($FFFFF604).w,($FFFFF602).w ; enable joypad control

loc4_12C64:
		btst	#0,($FFFFF7C8).w ; are controls	locked?
		bne.s	loc4_12C7E	; if yes, branch
		moveq	#0,d0
		move.b	$22(a0),d0
		andi.w	#6,d0
		move.w	Obj02_Modes(pc,d0.w),d1
		jsr	Obj02_Modes(pc,d1.w)

loc4_12C7E:
		bsr.s	Metal_Display
		bsr.w	Metal_RecordPos
		bsr.w	Metal_Water
		move.b	($FFFFF768).w,$36(a0)
		move.b	($FFFFF76A).w,$37(a0)
		tst.b	($FFFFF7C7).w
		beq.s	loc4_12CA6
		tst.b	$1C(a0)
		bne.s	loc4_12CA6
		move.b	$1D(a0),$1C(a0)

loc4_12CA6:
		bsr.w	Metal_Animate
		tst.b	($FFFFF7C8).w
		bmi.s	loc4_12CB6
		jsr	TouchResponse

loc4_12CB6:
		bsr.w	Metal_Loops
		bsr.w	LoadMetalDynPLC
		rts	
; ===========================================================================
Obj02_Modes:	dc.w Obj02_MdNormal-Obj02_Modes
		dc.w Obj02_MdJump-Obj02_Modes
		dc.w Obj02_MdRoll-Obj02_Modes
		dc.w Obj02_MdJump2-Obj02_Modes
; ---------------------------------------------------------------------------
; Music	to play	after invincibility wears off
; ---------------------------------------------------------------------------
;MusicList:	incbin	misc\muslist2.bin
;		even
; ===========================================================================

Metal_Display:				; XREF: loc4_12C7E
		move.w	$30(a0),d0
		beq.s	Obj02_Display
		subq.w	#1,$30(a0)
		lsr.w	#3,d0
		bcc.s	Obj02_ChkInvin

Obj02_Display:
		jsr	DisplaySprite

Obj02_ChkInvin:
		tst.b	invincibility_time(a0)	; does Metal have invincibility?
		beq.s	Obj02_ChkShoes	; if not, branch
		tst.w	$32(a0)		; check	time remaining for invinciblity
		beq.s	Obj02_ChkShoes	; if no	time remains, branch
		subq.w	#1,$32(a0)	; subtract 1 from time
		bne.s	Obj02_ChkShoes
		tst.b	($FFFFF7AA).w
		bne.s	Obj02_RmvInvin
		cmpi.w	#$C,($FFFFFE14).w
		bcs.s	Obj02_RmvInvin
		move.w	(Level_Music).w,d0
		jsr	(PlayMusic).l
		
Obj02_RmvInvin:
		bclr	#1,status_secondary(a0)

Obj02_ChkShoes:
		btst	#2,status_secondary(a0)
		beq.s	Obj01_ExitChk
		tst.b	speedshoes_time(a0)	; does Sonic have speed	shoes?
		beq.s	Obj02_ExitChk	; if not, branch
		tst.w	$34(a0)		; check	time remaining
		beq.s	Obj02_ExitChk
		subq.w	#1,$34(a0)	; subtract 1 from time
		bne.s	Obj02_ExitChk
		move.w	#$600,($FFFFF760).w ; restore Sonic's speed
		move.w	#$C,($FFFFF762).w ; restore Sonic's acceleration
		move.w	#$80,($FFFFF764).w ; restore Sonic's deceleration
		move.b	#0,speedshoes_time(a0) ; cancel speed	shoes
		move.w	#$FC,d0
		jmp	(PlayMusic).l	; run music at normal speed
; ===========================================================================

Obj02_ExitChk:
		rts	

; ---------------------------------------------------------------------------
; Subroutine to	record Sonic's previous positions for invincibility stars
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_RecordPos:			; XREF: loc4_12C7E; Obj02_Hurt; Obj02_Death
		move.w	($FFFFF7A8).w,d0
		lea	($FFFFCB00).w,a1
		lea	(a1,d0.w),a1
		move.w	8(a0),(a1)+
		move.w	$C(a0),(a1)+
		addq.b	#4,($FFFFF7A9).w
		rts	
; End of function Metal_RecordPos

; ---------------------------------------------------------------------------
; Subroutine for Metal when he's underwater
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_Water:				; XREF: loc4_12C7E
		cmpi.b	#1,($FFFFFE10).w ; is level LZ?
		beq.s	Obj02_InWater	; if yes, branch

locret_12D80:
		rts	
; ===========================================================================

Obj02_InWater:
		move.w	($FFFFF646).w,d0
		cmp.w	$C(a0),d0	; is Metal above the water?
		bge.s	Obj02_OutWater	; if yes, branch
		bset	#6,$22(a0)
		bne.s	locret_12D80
		bsr.w	ResumeMusic
		move.b	#$A,($FFFFD340).w ; load bubbles object	from Metal's mouth
		move.b	#$81,($FFFFD368).w
		move.w	#$300,($FFFFF760).w ; change Metal's top speed
		move.w	#6,($FFFFF762).w ; change Metal's acceleration
		move.w	#$40,($FFFFF764).w ; change Metal's deceleration
		asr	$10(a0)
		asr	$12(a0)
		asr	$12(a0)
		beq.s	locret_12D80
		move.b	#8,($FFFFD300).w ; load	splash object
		move.w	#$6C,d0
		jmp	(PlaySound_Special).l ;	play splash sound
; ===========================================================================

Obj02_OutWater:
		bclr	#6,$22(a0)
		beq.s	locret_12D80
		bsr.w	ResumeMusic
		move.w	#$600,($FFFFF760).w ; restore Metal's speed
		move.w	#$C,($FFFFF762).w ; restore Metal's acceleration
		move.w	#$80,($FFFFF764).w ; restore Metal's deceleration
		asl	$12(a0)
		beq.w	locret_12D80
		move.b	#8,($FFFFD300).w ; load	splash object
		cmpi.w	#-$1000,$12(a0)
		bgt.s	loc4_12E0E
		move.w	#-$1000,$12(a0)	; set maximum speed on leaving water

loc4_12E0E:
		move.w	#$57,d0
		jmp	(PlaySound_Special).l ;	play splash sound
; End of function Metal_Water

; ===========================================================================
; ---------------------------------------------------------------------------
; Modes	for controlling	Metal
; ---------------------------------------------------------------------------

Obj02_MdNormal:				; XREF: Obj02_Modes
		bsr.w	Metal_Jump
		bsr.w	Metal_SlopeResist
		bsr.w	Metal_Move
		bsr.w	Metal_Roll
		bsr.w	Metal_LevelBound
		jsr	SpeedToPos
		bsr.w	Metal_AnglePos
		bsr.w	Metal_SlopeRepel
		rts	
; ===========================================================================

Obj02_MdJump:				; XREF: Obj02_Modes
		bsr.w	Metal_JumpHeight
		bsr.w	Metal_ChgJumpDir
		bsr.w	Metal_LevelBound
		jsr	ObjectFall
		btst	#6,$22(a0)
		beq.s	loc4_12E5C
		subi.w	#$28,$12(a0)

loc4_12E5C:
		bsr.w	Metal_JumpAngle
		bsr.w	Metal_Floor
		rts	
; ===========================================================================

Obj02_MdRoll:				; XREF: Obj02_Modes
		bsr.w	Metal_Jump
		bsr.w	Metal_RollRepel
		bsr.w	Metal_RollSpeed
		bsr.w	Metal_LevelBound
		jsr	SpeedToPos
		bsr.w	Metal_AnglePos
		bsr.w	Metal_SlopeRepel
		rts	
; ===========================================================================

Obj02_MdJump2:				; XREF: Obj02_Modes
		bsr.w	Metal_JumpHeight
		bsr.w	Metal_ChgJumpDir
		bsr.w	Metal_LevelBound
		jsr	ObjectFall
		btst	#6,$22(a0)
		beq.s	loc4_12EA6
		subi.w	#$28,$12(a0)

loc4_12EA6:
		bsr.w	Metal_JumpAngle
		bsr.w	Metal_Floor
		rts	
; ---------------------------------------------------------------------------
; Subroutine to	make Metal walk/run
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_Move:				; XREF: Obj02_MdNormal
		move.w	($FFFFF760).w,d6
		move.w	($FFFFF762).w,d5
		move.w	($FFFFF764).w,d4
		tst.b	($FFFFF7CA).w
		bne.w	loc4_12FEE
		tst.w	$3E(a0)
		bne.w	Obj02_ResetScr
		btst	#2,($FFFFF602).w ; is left being pressed?
		beq.s	Obj02_NotLeft	; if not, branch
		bsr.w	Metal_MoveLeft

Obj02_NotLeft:
		btst	#3,($FFFFF602).w ; is right being pressed?
		beq.s	Obj02_NotRight	; if not, branch
		bsr.w	Metal_MoveRight

Obj02_NotRight:
		move.b	$26(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0		; is Metal on a	slope?
		bne.w	Obj02_ResetScr	; if yes, branch
		tst.w	$14(a0)		; is Metal moving?
		bne.w	Obj02_ResetScr	; if yes, branch
		bclr	#5,$22(a0)
		move.b	#5,$1C(a0)	; use "standing" animation
		btst	#3,$22(a0)
		beq.s	Metal_Balance
		moveq	#0,d0
		move.b	$3D(a0),d0
		lsl.w	#6,d0
		lea	($FFFFB000).w,a1
		lea	(a1,d0.w),a1
		tst.b	$22(a1)
		bmi.s	Metal_LookUp
		moveq	#0,d1
		move.b	$19(a1),d1
		move.w	d1,d2
		add.w	d2,d2
		subq.w	#4,d2
		add.w	8(a0),d1
		sub.w	8(a1),d1
		cmpi.w	#4,d1
		blt.s	loc4_12F6A
		cmp.w	d2,d1
		bge.s	loc4_12F5A
		bra.s	Metal_LookUp
; ===========================================================================

Metal_Balance:
		jsr	ObjHitFloor
		cmpi.w	#$C,d1
		blt.s	Metal_LookUp
		cmpi.b	#3,$36(a0)
		bne.s	loc4_12F62

loc4_12F5A:
		bclr	#0,$22(a0)
		bra.s	loc4_12F70
; ===========================================================================

loc4_12F62:
		cmpi.b	#3,$37(a0)
		bne.s	Metal_LookUp

loc4_12F6A:
		bset	#0,$22(a0)

loc4_12F70:
		move.b	#6,$1C(a0)	; use "balancing" animation
		bra.s	Obj02_ResetScr
; ===========================================================================

Metal_LookUp:
		btst	#0,($FFFFF602).w ; is up being pressed?
		beq.s	Metal_Duck	; if not, branch
		move.b	#7,$1C(a0)	; use "looking up" animation
		cmpi.w	#$C8,($FFFFF73E).w
		beq.s	loc4_12FC2
		addq.w	#2,($FFFFF73E).w
		bra.s	loc4_12FC2
; ===========================================================================

Metal_Duck:
		btst	#1,($FFFFF602).w ; is down being pressed?
		beq.s	Obj02_ResetScr	; if not, branch
		move.b	#8,$1C(a0)	; use "ducking"	animation
		cmpi.w	#8,($FFFFF73E).w
		beq.s	loc4_12FC2
		subq.w	#2,($FFFFF73E).w
		bra.s	loc4_12FC2
; ===========================================================================

Obj02_ResetScr:
		cmpi.w	#$60,($FFFFF73E).w ; is	screen in its default position?
		beq.s	loc4_12FC2	; if yes, branch
		bcc.s	loc4_12FBE
		addq.w	#4,($FFFFF73E).w ; move	screen back to default

loc4_12FBE:
		subq.w	#2,($FFFFF73E).w ; move	screen back to default

loc4_12FC2:
		move.b	($FFFFF602).w,d0
		andi.b	#$C,d0		; is left/right	pressed?
		bne.s	loc4_12FEE	; if yes, branch
		move.w	$14(a0),d0
		beq.s	loc4_12FEE
		bmi.s	loc4_12FE2
		sub.w	d5,d0
		bcc.s	loc4_12FDC
		move.w	#0,d0

loc4_12FDC:
		move.w	d0,$14(a0)
		bra.s	loc4_12FEE
; ===========================================================================

loc4_12FE2:
		add.w	d5,d0
		bcc.s	loc4_12FEA
		move.w	#0,d0

loc4_12FEA:
		move.w	d0,$14(a0)

loc4_12FEE:
		move.b	$26(a0),d0
		jsr	(CalcSine).l
		muls.w	$14(a0),d1
		asr.l	#8,d1
		move.w	d1,$10(a0)
		muls.w	$14(a0),d0
		asr.l	#8,d0
		move.w	d0,$12(a0)

loc4_1300C:
		move.b	$26(a0),d0
		addi.b	#$40,d0
		bmi.s	locret_1307C
		move.b	#$40,d1
		tst.w	$14(a0)
		beq.s	locret_1307C
		bmi.s	loc4_13024
		neg.w	d1

loc4_13024:
		move.b	$26(a0),d0
		add.b	d1,d0
		move.w	d0,-(sp)
		bsr.w	Metal_WalkSpeed
		move.w	(sp)+,d0
		tst.w	d1
		bpl.s	locret_1307C
		asl.w	#8,d1
		addi.b	#$20,d0
		andi.b	#$C0,d0
		beq.s	loc4_13078
		cmpi.b	#$40,d0
		beq.s	loc4_13066
		cmpi.b	#$80,d0
		beq.s	loc4_13060
		add.w	d1,$10(a0)
		bset	#5,$22(a0)
		move.w	#0,$14(a0)
		rts	
; ===========================================================================

loc4_13060:
		sub.w	d1,$12(a0)
		rts	
; ===========================================================================

loc4_13066:
		sub.w	d1,$10(a0)
		bset	#5,$22(a0)
		move.w	#0,$14(a0)
		rts	
; ===========================================================================

loc4_13078:
		add.w	d1,$12(a0)

locret_1307C:
		rts	
; End of function Metal_Move


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_MoveLeft:				; XREF: Metal_Move
		move.w	$14(a0),d0
		beq.s	loc4_13086
		bpl.s	loc4_130B2

loc4_13086:
		bset	#0,$22(a0)
		bne.s	loc4_1309A
		bclr	#5,$22(a0)
		move.b	#1,$1D(a0)

loc4_1309A:
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc4_130A6
		move.w	d1,d0

loc4_130A6:
		move.w	d0,$14(a0)
		move.b	#0,$1C(a0)	; use walking animation
		rts	
; ===========================================================================

loc4_130B2:				; XREF: Metal_MoveLeft
		sub.w	d4,d0
		bcc.s	loc4_130BA
		move.w	#-$80,d0

loc4_130BA:
		move.w	d0,$14(a0)
		move.b	$26(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0
		bne.s	locret_130E8
		cmpi.w	#$400,d0
		blt.s	locret_130E8
		move.b	#$D,$1C(a0)	; use "stopping" animation
		bclr	#0,$22(a0)
		move.w	#$36,d0
		jsr	(PlaySound_Special).l ;	play stopping sound

locret_130E8:
		rts	
; End of function Metal_MoveLeft


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_MoveRight:			; XREF: Metal_Move
		move.w	$14(a0),d0
		bmi.s	loc4_13118
		bclr	#0,$22(a0)
		beq.s	loc4_13104
		bclr	#5,$22(a0)
		move.b	#1,$1D(a0)

loc4_13104:
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	loc4_1310C
		move.w	d6,d0

loc4_1310C:
		move.w	d0,$14(a0)
		move.b	#0,$1C(a0)	; use walking animation
		rts	
; ===========================================================================

loc4_13118:				; XREF: Metal_MoveRight
		add.w	d4,d0
		bcc.s	loc4_13120
		move.w	#$80,d0

loc4_13120:
		move.w	d0,$14(a0)
		move.b	$26(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0
		bne.s	locret_1314E
		cmpi.w	#-$400,d0
		bgt.s	locret_1314E
		move.b	#$D,$1C(a0)	; use "stopping" animation
		bset	#0,$22(a0)
		move.w	#$36,d0
		jsr	(PlaySound_Special).l ;	play stopping sound

locret_1314E:
		rts	
; End of function Metal_MoveRight

; ---------------------------------------------------------------------------
; Subroutine to	change Metal's speed as he rolls
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_RollSpeed:			; XREF: Obj02_MdRoll
		move.w	($FFFFF760).w,d6
		asl.w	#1,d6
		move.w	($FFFFF762).w,d5
		asr.w	#1,d5
		move.w	($FFFFF764).w,d4
		asr.w	#2,d4
		tst.b	($FFFFF7CA).w
		bne.w	loc4_131CC
		tst.w	$3E(a0)
		bne.s	loc4_13188
		btst	#2,($FFFFF602).w ; is left being pressed?
		beq.s	loc4_1317C	; if not, branch
		bsr.w	Metal_RollLeft

loc4_1317C:
		btst	#3,($FFFFF602).w ; is right being pressed?
		beq.s	loc4_13188	; if not, branch
		bsr.w	Metal_RollRight

loc4_13188:
		move.w	$14(a0),d0
		beq.s	loc4_131AA
		bmi.s	loc4_1319E
		sub.w	d5,d0
		bcc.s	loc4_13198
		move.w	#0,d0

loc4_13198:
		move.w	d0,$14(a0)
		bra.s	loc4_131AA
; ===========================================================================

loc4_1319E:				; XREF: Metal_RollSpeed
		add.w	d5,d0
		bcc.s	loc4_131A6
		move.w	#0,d0

loc4_131A6:
		move.w	d0,$14(a0)

loc4_131AA:
		tst.w	$14(a0)		; is Metal moving?
		bne.s	loc4_131CC	; if yes, branch
		bclr	#2,$22(a0)
		move.b	#$13,$16(a0)
		move.b	#9,$17(a0)
		move.b	#5,$1C(a0)	; use "standing" animation
		subq.w	#5,$C(a0)

loc4_131CC:
		move.b	$26(a0),d0
		jsr	(CalcSine).l
		muls.w	$14(a0),d0
		asr.l	#8,d0
		move.w	d0,$12(a0)
		muls.w	$14(a0),d1
		asr.l	#8,d1
		cmpi.w	#$1000,d1
		ble.s	loc4_131F0
		move.w	#$1000,d1

loc4_131F0:
		cmpi.w	#-$1000,d1
		bge.s	loc4_131FA
		move.w	#-$1000,d1

loc4_131FA:
		move.w	d1,$10(a0)
		bra.w	loc4_1300C
; End of function Metal_RollSpeed


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_RollLeft:				; XREF: Metal_RollSpeed
		move.w	$14(a0),d0
		beq.s	loc4_1320A
		bpl.s	loc4_13218

loc4_1320A:
		bset	#0,$22(a0)
		move.b	#2,$1C(a0)	; use "rolling"	animation
		rts	
; ===========================================================================

loc4_13218:
		sub.w	d4,d0
		bcc.s	loc4_13220
		move.w	#-$80,d0

loc4_13220:
		move.w	d0,$14(a0)
		rts	
; End of function Metal_RollLeft


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_RollRight:			; XREF: Metal_RollSpeed
		move.w	$14(a0),d0
		bmi.s	loc4_1323A
		bclr	#0,$22(a0)
		move.b	#2,$1C(a0)	; use "rolling"	animation
		rts	
; ===========================================================================

loc4_1323A:
		add.w	d4,d0
		bcc.s	loc4_13242
		move.w	#$80,d0

loc4_13242:
		move.w	d0,$14(a0)
		rts	
; End of function Metal_RollRight

; ---------------------------------------------------------------------------
; Subroutine to	change Metal's direction while jumping
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_ChgJumpDir:			; XREF: Obj02_MdJump; Obj02_MdJump2
		move.w	($FFFFF760).w,d6
		move.w	($FFFFF762).w,d5
		asl.w	#1,d5
		btst	#4,$22(a0)
		bne.s	Obj02_ResetScr2
		move.w	$10(a0),d0
		btst	#2,($FFFFF602).w ; is left being pressed?
		beq.s	loc4_13278	; if not, branch
		bset	#0,$22(a0)
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc4_13278
		move.w	d1,d0

loc4_13278:
		btst	#3,($FFFFF602).w ; is right being pressed?
		beq.s	Obj02_JumpMove	; if not, branch
		bclr	#0,$22(a0)
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	Obj02_JumpMove
		move.w	d6,d0

Obj02_JumpMove:
		move.w	d0,$10(a0)	; change Metal's horizontal speed

Obj02_ResetScr2:
		cmpi.w	#$60,($FFFFF73E).w ; is	the screen in its default position?
		beq.s	loc4_132A4	; if yes, branch
		bcc.s	loc4_132A0
		addq.w	#4,($FFFFF73E).w

loc4_132A0:
		subq.w	#2,($FFFFF73E).w

loc4_132A4:
		cmpi.w	#-$400,$12(a0)	; is Metal moving faster than -$400 upwards?
		bcs.s	locret_132D2	; if yes, branch
		move.w	$10(a0),d0
		move.w	d0,d1
		asr.w	#5,d1
		beq.s	locret_132D2
		bmi.s	loc4_132C6
		sub.w	d1,d0
		bcc.s	loc4_132C0
		move.w	#0,d0

loc4_132C0:
		move.w	d0,$10(a0)
		rts	
; ===========================================================================

loc4_132C6:
		sub.w	d1,d0
		bcs.s	loc4_132CE
		move.w	#0,d0

loc4_132CE:
		move.w	d0,$10(a0)

locret_132D2:
		rts	
; End of function Metal_ChgJumpDir

; ===========================================================================
; ---------------------------------------------------------------------------
; Unused subroutine to squash Metal
; ---------------------------------------------------------------------------
		move.b	$26(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0
		bne.s	locret_13302
		bsr.w	Metal_DontRunOnWalls
		tst.w	d1
		bpl.s	locret_13302
		move.w	#0,$14(a0)	; stop Metal moving
		move.w	#0,$10(a0)
		move.w	#0,$12(a0)
		move.b	#$B,$1C(a0)	; use "warping"	animation

locret_13302:
		rts	
; ---------------------------------------------------------------------------
; Subroutine to	prevent	Metal leaving the boundaries of	a level
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_LevelBound:			; XREF: Obj02_MdNormal; et al
		move.l	8(a0),d1
		move.w	$10(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d1
		swap	d1
		move.w	($FFFFF728).w,d0
		addi.w	#$10,d0
		cmp.w	d1,d0		; has Metal touched the	side boundary?
		bhi.s	Boundary_Sides	; if yes, branch
		move.w	($FFFFF72A).w,d0
		addi.w	#$128,d0
		tst.b	($FFFFF7AA).w
		bne.s	loc4_13332
		addi.w	#$40,d0

loc4_13332:
		cmp.w	d1,d0		; has Metal touched the	side boundary?
		bls.s	Boundary_Sides	; if yes, branch

loc4_13336:
		move.w	($FFFFF72E).w,d0
		addi.w	#$E0,d0
		cmp.w	$C(a0),d0	; has Metal touched the	bottom boundary?
		blt.s	Boundary_Bottom	; if yes, branch
		rts	
; ===========================================================================

Boundary_Bottom:
		cmpi.w	#$501,($FFFFFE10).w ; is level SBZ2 ?
		bne.w	KillMetal	; if not, kill Metal
		cmpi.w	#$2000,($FFFFB008).w
		bcs.w	KillMetal
		clr.b	($FFFFFE30).w	; clear	lamppost counter
		move.w	#1,($FFFFFE02).w ; restart the level
		move.w	#$103,($FFFFFE10).w ; set level	to SBZ3	(LZ4)
		rts	
; ===========================================================================

Boundary_Sides:
		move.w	d0,8(a0)
		move.w	#0,$A(a0)
		move.w	#0,$10(a0)	; stop Metal moving
		move.w	#0,$14(a0)
		bra.s	loc4_13336
; End of function Metal_LevelBound

; ---------------------------------------------------------------------------
; Subroutine allowing Metal to roll when he's moving
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_Roll:				; XREF: Obj02_MdNormal
		tst.b	($FFFFF7CA).w
		bne.s	Obj02_NoRoll
		move.w	$14(a0),d0
		bpl.s	loc4_13392
		neg.w	d0

loc4_13392:
		cmpi.w	#$80,d0		; is Metal moving at $80 speed or faster?
		bcs.s	Obj02_NoRoll	; if not, branch
		move.b	($FFFFF602).w,d0
		andi.b	#$C,d0		; is left/right	being pressed?
		bne.s	Obj02_NoRoll	; if yes, branch
		btst	#1,($FFFFF602).w ; is down being pressed?
		bne.s	Obj02_ChkRoll	; if yes, branch

Obj02_NoRoll:
		rts	
; ===========================================================================

Obj02_ChkRoll:
		btst	#2,$22(a0)	; is Metal already rolling?
		beq.s	Obj02_DoRoll	; if not, branch
		rts	
; ===========================================================================

Obj02_DoRoll:
		bset	#2,$22(a0)
		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.b	#2,$1C(a0)	; use "rolling"	animation
		addq.w	#5,$C(a0)
		move.w	#$3C,d0
		jsr	(PlaySound_Special).l ;	play rolling sound
		tst.w	$14(a0)
		bne.s	locret_133E8
		move.w	#$200,$14(a0)

locret_133E8:
		rts	
; End of function Metal_Roll

; ---------------------------------------------------------------------------
; Subroutine allowing Metal to jump
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_Jump:				; XREF: Obj02_MdNormal; Obj02_MdRoll
		move.b	($FFFFF603).w,d0
		andi.b	#$70,d0		; is A,	B or C pressed?
		beq.w	locret_1348E	; if not, branch
		moveq	#0,d0
		move.b	$26(a0),d0
		addi.b	#$80,d0
		bsr.w	sub_14D48
		cmpi.w	#6,d1
		blt.w	locret_1348E
		move.w	#$680,d2
		btst	#6,$22(a0)
		beq.s	loc4_1341C
		move.w	#$380,d2

loc4_1341C:
		moveq	#0,d0
		move.b	$26(a0),d0
		subi.b	#$40,d0
		jsr	(CalcSine).l
		muls.w	d2,d1
		asr.l	#8,d1
		add.w	d1,$10(a0)	; make Metal jump
		muls.w	d2,d0
		asr.l	#8,d0
		add.w	d0,$12(a0)	; make Metal jump
		bset	#1,$22(a0)
		bclr	#5,$22(a0)
		addq.l	#4,sp
		move.b	#1,$3C(a0)
		clr.b	$38(a0)
		move.w	#$62,d0
		jsr	(PlaySound_Special).l ;	play jumping sound
		move.b	#$13,$16(a0)
		move.b	#9,$17(a0)
		btst	#2,$22(a0)
		bne.s	loc4_13490
		move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.b	#2,$1C(a0)	; use "jumping"	animation
		bset	#2,$22(a0)
		addq.w	#5,$C(a0)

locret_1348E:
		rts	
; ===========================================================================

loc4_13490:
		bset	#4,$22(a0)
		rts	
; End of function Metal_Jump


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_JumpHeight:			; XREF: Obj02_MdJump; Obj02_MdJump2
		tst.b	$3C(a0)
		beq.s	loc4_134C4
		move.w	#-$400,d1
		btst	#6,$22(a0)
		beq.s	loc4_134AE
		move.w	#-$200,d1

loc4_134AE:
		cmp.w	$12(a0),d1
		ble.s	locret_134C2
		move.b	($FFFFF602).w,d0
		andi.b	#$70,d0		; is A,	B or C pressed?
		bne.s	locret_134C2	; if yes, branch
		move.w	d1,$12(a0)

locret_134C2:
		rts	
; ===========================================================================

loc4_134C4:
		cmpi.w	#-$FC0,$12(a0)
		bge.s	locret_134D2
		move.w	#-$FC0,$12(a0)

locret_134D2:
		rts	
; End of function Metal_JumpHeight

; ---------------------------------------------------------------------------
; Subroutine to	slow Metal walking up a	slope
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_SlopeResist:			; XREF: Obj02_MdNormal
		move.b	$26(a0),d0
		addi.b	#$60,d0
		cmpi.b	#$C0,d0
		bcc.s	locret_13508
		move.b	$26(a0),d0
		jsr	(CalcSine).l
		muls.w	#$20,d0
		asr.l	#8,d0
		tst.w	$14(a0)
		beq.s	locret_13508
		bmi.s	loc4_13504
		tst.w	d0
		beq.s	locret_13502
		add.w	d0,$14(a0)	; change Metal's inertia

locret_13502:
		rts	
; ===========================================================================

loc4_13504:
		add.w	d0,$14(a0)

locret_13508:
		rts	
; End of function Metal_SlopeResist

; ---------------------------------------------------------------------------
; Subroutine to	push Metal down	a slope	while he's rolling
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_RollRepel:			; XREF: Obj02_MdRoll
		move.b	$26(a0),d0
		addi.b	#$60,d0
		cmpi.b	#-$40,d0
		bcc.s	locret_13544
		move.b	$26(a0),d0
		jsr	(CalcSine).l
		muls.w	#$50,d0
		asr.l	#8,d0
		tst.w	$14(a0)
		bmi.s	loc4_1353A
		tst.w	d0
		bpl.s	loc4_13534
		asr.l	#2,d0

loc4_13534:
		add.w	d0,$14(a0)
		rts	
; ===========================================================================

loc4_1353A:
		tst.w	d0
		bmi.s	loc4_13540
		asr.l	#2,d0

loc4_13540:
		add.w	d0,$14(a0)

locret_13544:
		rts	
; End of function Metal_RollRepel

; ---------------------------------------------------------------------------
; Subroutine to	push Metal down	a slope
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_SlopeRepel:			; XREF: Obj02_MdNormal; Obj02_MdRoll
		nop	
		tst.b	$38(a0)
		bne.s	locret_13580
		tst.w	$3E(a0)
		bne.s	loc4_13582
		move.b	$26(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0
		beq.s	locret_13580
		move.w	$14(a0),d0
		bpl.s	loc4_1356A
		neg.w	d0

loc4_1356A:
		cmpi.w	#$280,d0
		bcc.s	locret_13580
		clr.w	$14(a0)
		bset	#1,$22(a0)
		move.w	#$1E,$3E(a0)

locret_13580:
		rts	
; ===========================================================================

loc4_13582:
		subq.w	#1,$3E(a0)
		rts	
; End of function Metal_SlopeRepel

; ---------------------------------------------------------------------------
; Subroutine to	return Metal's angle to 0 as he jumps
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_JumpAngle:			; XREF: Obj02_MdJump; Obj02_MdJump2
		move.b	$26(a0),d0	; get Metal's angle
		beq.s	locret_135A2	; if already 0,	branch
		bpl.s	loc4_13598	; if higher than 0, branch

		addq.b	#2,d0		; increase angle
		bcc.s	loc4_13596
		moveq	#0,d0

loc4_13596:
		bra.s	loc4_1359E
; ===========================================================================

loc4_13598:
		subq.b	#2,d0		; decrease angle
		bcc.s	loc4_1359E
		moveq	#0,d0

loc4_1359E:
		move.b	d0,$26(a0)

locret_135A2:
		rts	
; End of function Metal_JumpAngle

; ---------------------------------------------------------------------------
; Subroutine for Metal to interact with	the floor after	jumping/falling
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_Floor:				; XREF: Obj02_MdJump; Obj02_MdJump2
		move.w	$10(a0),d1
		move.w	$12(a0),d2
		jsr	(CalcAngle).l
		move.b	d0,($FFFFFFEC).w
		subi.b	#$20,d0
		move.b	d0,($FFFFFFED).w
		andi.b	#$C0,d0
		move.b	d0,($FFFFFFEE).w
		cmpi.b	#$40,d0
		beq.w	loc4_13680
		cmpi.b	#$80,d0
		beq.w	loc4_136E2
		cmpi.b	#-$40,d0
		beq.w	loc4_1373E
		bsr.w	Metal_HitWall
		tst.w	d1
		bpl.s	loc4_135F0
		sub.w	d1,8(a0)
		move.w	#0,$10(a0)

loc4_135F0:
		bsr.w	sub_14EB4
		tst.w	d1
		bpl.s	loc4_13602
		add.w	d1,8(a0)
		move.w	#0,$10(a0)

loc4_13602:
		bsr.w	Metal_HitFloor
		move.b	d1,($FFFFFFEF).w
		tst.w	d1
		bpl.s	locret_1367E
		move.b	$12(a0),d2
		addq.b	#8,d2
		neg.b	d2
		cmp.b	d2,d1
		bge.s	loc4_1361E
		cmp.b	d2,d0
		blt.s	locret_1367E

loc4_1361E:
		add.w	d1,$C(a0)
		move.b	d3,$26(a0)
		bsr.w	Metal_ResetOnFloor
		move.b	#0,$1C(a0)
		move.b	d3,d0
		addi.b	#$20,d0
		andi.b	#$40,d0
		bne.s	loc4_1365C
		move.b	d3,d0
		addi.b	#$10,d0
		andi.b	#$20,d0
		beq.s	loc4_1364E
		asr	$12(a0)
		bra.s	loc4_13670
; ===========================================================================

loc4_1364E:
		move.w	#0,$12(a0)
		move.w	$10(a0),$14(a0)
		rts	
; ===========================================================================

loc4_1365C:
		move.w	#0,$10(a0)
		cmpi.w	#$FC0,$12(a0)
		ble.s	loc4_13670
		move.w	#$FC0,$12(a0)

loc4_13670:
		move.w	$12(a0),$14(a0)
		tst.b	d3
		bpl.s	locret_1367E
		neg.w	$14(a0)

locret_1367E:
		rts	
; ===========================================================================

loc4_13680:
		bsr.w	Metal_HitWall
		tst.w	d1
		bpl.s	loc4_1369A
		sub.w	d1,8(a0)
		move.w	#0,$10(a0)
		move.w	$12(a0),$14(a0)
		rts	
; ===========================================================================

loc4_1369A:
		bsr.w	Metal_DontRunOnWalls
		tst.w	d1
		bpl.s	loc4_136B4
		sub.w	d1,$C(a0)
		tst.w	$12(a0)
		bpl.s	locret_136B2
		move.w	#0,$12(a0)

locret_136B2:
		rts	
; ===========================================================================

loc4_136B4:
		tst.w	$12(a0)
		bmi.s	locret_136E0
		bsr.w	Metal_HitFloor
		tst.w	d1
		bpl.s	locret_136E0
		add.w	d1,$C(a0)
		move.b	d3,$26(a0)
		bsr.w	Metal_ResetOnFloor
		move.b	#0,$1C(a0)
		move.w	#0,$12(a0)
		move.w	$10(a0),$14(a0)

locret_136E0:
		rts	
; ===========================================================================

loc4_136E2:
		bsr.w	Metal_HitWall
		tst.w	d1
		bpl.s	loc4_136F4
		sub.w	d1,8(a0)
		move.w	#0,$10(a0)

loc4_136F4:
		bsr.w	sub_14EB4
		tst.w	d1
		bpl.s	loc4_13706
		add.w	d1,8(a0)
		move.w	#0,$10(a0)

loc4_13706:
		bsr.w	Metal_DontRunOnWalls
		tst.w	d1
		bpl.s	locret_1373C
		sub.w	d1,$C(a0)
		move.b	d3,d0
		addi.b	#$20,d0
		andi.b	#$40,d0
		bne.s	loc4_13726
		move.w	#0,$12(a0)
		rts	
; ===========================================================================

loc4_13726:
		move.b	d3,$26(a0)
		bsr.w	Metal_ResetOnFloor
		move.w	$12(a0),$14(a0)
		tst.b	d3
		bpl.s	locret_1373C
		neg.w	$14(a0)

locret_1373C:
		rts	
; ===========================================================================

loc4_1373E:
		bsr.w	sub_14EB4
		tst.w	d1
		bpl.s	loc4_13758
		add.w	d1,8(a0)
		move.w	#0,$10(a0)
		move.w	$12(a0),$14(a0)
		rts	
; ===========================================================================

loc4_13758:
		bsr.w	Metal_DontRunOnWalls
		tst.w	d1
		bpl.s	loc4_13772
		sub.w	d1,$C(a0)
		tst.w	$12(a0)
		bpl.s	locret_13770
		move.w	#0,$12(a0)

locret_13770:
		rts	
; ===========================================================================

loc4_13772:
		tst.w	$12(a0)
		bmi.s	locret_1379E
		bsr.w	Metal_HitFloor
		tst.w	d1
		bpl.s	locret_1379E
		add.w	d1,$C(a0)
		move.b	d3,$26(a0)
		bsr.w	Metal_ResetOnFloor
		move.b	#0,$1C(a0)
		move.w	#0,$12(a0)
		move.w	$10(a0),$14(a0)

locret_1379E:
		rts	
; End of function Metal_Floor

; ---------------------------------------------------------------------------
; Subroutine to	reset Metal's mode when he lands on the floor
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_ResetOnFloor:			; XREF: PlatformObject; et al
		btst	#4,$22(a0)
		beq.s	loc4_137AE
		nop	
		nop	
		nop	

loc4_137AE:
		bclr	#5,$22(a0)
		bclr	#1,$22(a0)
		bclr	#4,$22(a0)
		btst	#2,$22(a0)
		beq.s	loc4_137E4
		bclr	#2,$22(a0)
		move.b	#$13,$16(a0)
		move.b	#9,$17(a0)
		move.b	#0,$1C(a0)	; use running/walking animation
		subq.w	#5,$C(a0)

loc4_137E4:
		move.b	#0,$3C(a0)
		move.w	#0,($FFFFF7D0).w
		rts	
; End of function Metal_ResetOnFloor

; ===========================================================================
; ---------------------------------------------------------------------------
; Metal	when he	gets hurt
; ---------------------------------------------------------------------------

Obj02_Hurt:				; XREF: Obj02_Index
		jsr	SpeedToPos
		addi.w	#$30,$12(a0)
		btst	#6,$22(a0)
		beq.s	loc4_1380C
		subi.w	#$20,$12(a0)

loc4_1380C:
		bsr.w	Metal_HurtStop
		bsr.w	Metal_LevelBound
		bsr.w	Metal_RecordPos
		bsr.w	Metal_Animate
		bsr.w	LoadMetalDynPLC
		jmp	DisplaySprite

; ---------------------------------------------------------------------------
; Subroutine to	stop Metal falling after he's been hurt
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_HurtStop:				; XREF: Obj02_Hurt
		move.w	($FFFFF72E).w,d0
		addi.w	#$E0,d0
		cmp.w	$C(a0),d0
		bcs.w	KillMetal
		bsr.w	Metal_Floor
		btst	#1,$22(a0)
		bne.s	locret_13860
		moveq	#0,d0
		move.w	d0,$12(a0)
		move.w	d0,$10(a0)
		move.w	d0,$14(a0)
		move.b	#0,$1C(a0)
		subq.b	#2,$24(a0)
		move.w	#$78,$30(a0)

locret_13860:
		rts	
; End of function Metal_HurtStop

; ===========================================================================
; ---------------------------------------------------------------------------
; Metal	when he	dies
; ---------------------------------------------------------------------------

Obj02_Death:				; XREF: Obj02_Index
		jsr	GameOver_JMP
		jsr	ObjectFall
		bsr.w	Metal_RecordPos
		bsr.w	Metal_Animate
		bsr.w	LoadMetalDynPLC
		jmp	DisplaySprite

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


GameOver_JMP:				; XREF: Obj02_Death
		jmp	GameOver
		rts
; ===========================================================================
; End of function GameOver_JMP

; ===========================================================================
; ---------------------------------------------------------------------------
; Metal	when the level is restarted
; ---------------------------------------------------------------------------

Obj02_ResetLevel:			; XREF: Obj02_Index
		tst.w	$3A(a0)
		beq.s	locret_13914
		subq.w	#1,$3A(a0)	; subtract 1 from time delay
		bne.s	locret_13914
		move.w	#1,($FFFFFE02).w ; restart the level

locret_13914:
		rts	

; ---------------------------------------------------------------------------
; Subroutine to	make Metal run around loops (GHZ/SLZ)
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_Loops:				; XREF: Obj02_Control
		move.w	$C(a0),d0
		lsr.w	#1,d0
		andi.w	#$380,d0
		move.b	8(a0),d1
		andi.w	#$7F,d1
		add.w	d1,d0
		lea	($FFFFA400).w,a1
		move.b	(a1,d0.w),d1	; d1 is	the 256x256 tile Metal is currently on
		cmp.b	($FFFFF7AE).w,d1
		beq.w	Obj02_ChkRoll
		cmp.b	($FFFFF7AF).w,d1
		beq.w	Obj02_ChkRoll
		cmp.b	($FFFFF7AC).w,d1
		beq.s	loc4_13976
		cmp.b	($FFFFF7AD).w,d1
		beq.s	loc4_13966
		bclr	#6,1(a0)
		rts	
; ===========================================================================

loc4_13966:
		btst	#1,$22(a0)
		beq.s	loc4_13976
		bclr	#6,1(a0)	; send Metal to	high plane
		rts	
; ===========================================================================

loc4_13976:
		move.w	8(a0),d2
		cmpi.b	#$2C,d2
		bcc.s	loc4_13988
		bclr	#6,1(a0)	; send Metal to	high plane
		rts	
; ===========================================================================

loc4_13988:
		cmpi.b	#-$20,d2
		bcs.s	loc4_13996
		bset	#6,1(a0)	; send Metal to	low plane
		rts	
; ===========================================================================

loc4_13996:
		btst	#6,1(a0)
		bne.s	loc4_139B2
		move.b	$26(a0),d1
		beq.s	locret_139C2
		cmpi.b	#-$80,d1
		bhi.s	locret_139C2
		bset	#6,1(a0)	; send Metal to	low plane
		rts	
; ===========================================================================

loc4_139B2:
		move.b	$26(a0),d1
		cmpi.b	#-$80,d1
		bls.s	locret_139C2
		bclr	#6,1(a0)	; send Metal to	high plane

locret_139C2:
		rts	
; End of function Metal_Loops

; ---------------------------------------------------------------------------
; Subroutine to	animate	Metal's sprites
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Metal_Animate:				; XREF: Obj02_Control; et al
		lea	(MetalAniData).l,a1
		moveq	#0,d0
		move.b	$1C(a0),d0
		cmp.b	$1D(a0),d0	; is animation set to restart?
		beq.s	MSAnim_Do	; if not, branch
		move.b	d0,$1D(a0)	; set to "no restart"
		move.b	#0,$1B(a0)	; reset	animation
		move.b	#0,$1E(a0)	; reset	frame duration

MSAnim_Do:
		add.w	d0,d0
		adda.w	(a1,d0.w),a1	; jump to appropriate animation	script
		move.b	(a1),d0
		bmi.s	MSAnim_WalkRun	; if animation is walk/run/roll/jump, branch
		move.b	$22(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,1(a0)
		or.b	d1,1(a0)
		subq.b	#1,$1E(a0)	; subtract 1 from frame	duration
		bpl.s	MSAnim_Delay	; if time remains, branch
		move.b	d0,$1E(a0)	; load frame duration

MSAnim_Do2:
		moveq	#0,d1
		move.b	$1B(a0),d1	; load current frame number
		move.b	1(a1,d1.w),d0	; read sprite number from script
		bmi.s	MSAnim_End_FF	; if animation is complete, branch

MSAnim_Next:
		move.b	d0,$1A(a0)	; load sprite number
		addq.b	#1,$1B(a0)	; next frame number

MSAnim_Delay:
		rts	
; ===========================================================================

MSAnim_End_FF:
		addq.b	#1,d0		; is the end flag = $FF	?
		bne.s	MSAnim_End_FE	; if not, branch
		move.b	#0,$1B(a0)	; restart the animation
		move.b	1(a1),d0	; read sprite number
		bra.s	MSAnim_Next
; ===========================================================================

MSAnim_End_FE:
		addq.b	#1,d0		; is the end flag = $FE	?
		bne.s	MSAnim_End_FD	; if not, branch
		move.b	2(a1,d1.w),d0	; read the next	byte in	the script
		sub.b	d0,$1B(a0)	; jump back d0 bytes in	the script
		sub.b	d0,d1
		move.b	1(a1,d1.w),d0	; read sprite number
		bra.s	MSAnim_Next
; ===========================================================================

MSAnim_End_FD:
		addq.b	#1,d0		; is the end flag = $FD	?
		bne.s	MSAnim_End	; if not, branch
		move.b	2(a1,d1.w),$1C(a0) ; read next byte, run that animation

MSAnim_End:
		rts	
; ===========================================================================

MSAnim_WalkRun:				; XREF: MSAnim_Do
		subq.b	#1,$1E(a0)	; subtract 1 from frame	duration
		bpl.s	MSAnim_Delay	; if time remains, branch
		addq.b	#1,d0		; is animation walking/running?
		bne.w	MSAnim_RollJump	; if not, branch
		moveq	#0,d1
		move.b	$26(a0),d0	; get Metal's angle
		move.b	$22(a0),d2
		andi.b	#1,d2		; is Metal mirrored horizontally?
		bne.s	loc4_13A70	; if yes, branch
		not.b	d0		; reverse angle

loc4_13A70:
		addi.b	#$10,d0		; add $10 to angle
		bpl.s	loc4_13A78	; if angle is $0-$7F, branch
		moveq	#3,d1

loc4_13A78:
		andi.b	#$FC,1(a0)
		eor.b	d1,d2
		or.b	d2,1(a0)
		btst	#5,$22(a0)
		bne.w	MSAnim_Push
		lsr.b	#4,d0		; divide angle by $10
		andi.b	#6,d0		; angle	must be	0, 2, 4	or 6
		move.w	$14(a0),d2	; get Metal's speed
		bpl.s	loc4_13A9C
		neg.w	d2

loc4_13A9C:
		lea	(MSonAni_Run).l,a1 ; use	running	animation
		cmpi.w	#$600,d2	; is Metal at running speed?
		bcc.s	loc4_13AB4	; if yes, branch
		lea	(MSonAni_Walk).l,a1 ; use walking animation
		move.b	d0,d1
		lsr.b	#1,d1
		add.b	d1,d0

loc4_13AB4:
		add.b	d0,d0
		move.b	d0,d3
		neg.w	d2
		addi.w	#$800,d2
		bpl.s	loc4_13AC2
		moveq	#0,d2

loc4_13AC2:
		lsr.w	#8,d2
		move.b	d2,$1E(a0)	; modify frame duration
		bsr.w	MSAnim_Do2
		add.b	d3,$1A(a0)	; modify frame number
		rts	
; ===========================================================================

MSAnim_RollJump:				; XREF: MSAnim_WalkRun
		addq.b	#1,d0		; is animation rolling/jumping?
		bne.s	MSAnim_Push	; if not, branch
		move.w	$14(a0),d2	; get Metal's speed
		bpl.s	loc4_13ADE
		neg.w	d2

loc4_13ADE:
		lea	(MSonAni_Roll2).l,a1 ; use fast animation
		cmpi.w	#$600,d2	; is Metal moving fast?
		bcc.s	loc4_13AF0	; if yes, branch
		lea	(MSonAni_Roll).l,a1 ; use slower	animation

loc4_13AF0:
		neg.w	d2
		addi.w	#$400,d2
		bpl.s	loc4_13AFA
		moveq	#0,d2

loc4_13AFA:
		lsr.w	#8,d2
		move.b	d2,$1E(a0)	; modify frame duration
		move.b	$22(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,1(a0)
		or.b	d1,1(a0)
		bra.w	MSAnim_Do2
; ===========================================================================

MSAnim_Push:				; XREF: MSAnim_RollJump
		move.w	$14(a0),d2	; get Metal's speed
		bmi.s	loc4_13B1E
		neg.w	d2

loc4_13B1E:
		addi.w	#$800,d2
		bpl.s	loc4_13B26
		moveq	#0,d2

loc4_13B26:
		lsr.w	#6,d2
		move.b	d2,$1E(a0)	; modify frame duration
		lea	(MSonAni_Push).l,a1
		move.b	$22(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,1(a0)
		or.b	d1,1(a0)
		bra.w	MSAnim_Do2
; End of function Metal_Animate

; ===========================================================================
MetalAniData:
	include	"_anim\Metal.asm"

; ---------------------------------------------------------------------------
; Metal	pattern	loading	subroutine
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


LoadMetalDynPLC:			; XREF: Obj02_Control; et al
		moveq	#0,d0
		move.b	$1A(a0),d0	; load frame number
		cmp.b	($FFFFF766).w,d0
		beq.s	locret_13C96
		move.b	d0,($FFFFF766).w
		lea	(MetalSonicDynPLC).l,a2
		add.w	d0,d0
		adda.w	(a2,d0.w),a2
		moveq	#0,d1
		move.b	(a2)+,d1	; read "number of entries" value
		subq.b	#1,d1
		bmi.s	locret_13C96
		lea	($FFFFC800).w,a3
		move.b	#1,($FFFFF767).w

SPLC_ReadEntry:
		moveq	#0,d2
		move.b	(a2)+,d2
		move.w	d2,d0
		lsr.b	#4,d0
		lsl.w	#8,d2
		move.b	(a2)+,d2
		lsl.w	#5,d2
		lea	(Art_MetalSonic).l,a1
		adda.l	d2,a1

SPLC_LoadTile:
		movem.l	(a1)+,d2-d6/a4-a6
		movem.l	d2-d6/a4-a6,(a3)
		lea	$20(a3),a3	; next tile
		dbf	d0,SPLC_LoadTile ; repeat for number of	tiles

		dbf	d1,SPLC_ReadEntry ; repeat for number of entries

locret_13C96:
		rts	
; End of function LoadMetalDynPLC

; ===========================================================================
