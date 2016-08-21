; ===========================================================================
		move.b	#Stop_Sound,d0
		bsr.w	PlaySound			; stop music
		bsr.w	Pal_FadeFrom
		move	#$2700,sr
		move.w	($FFFFF60C).w,d0
		andi.b	#$BF,d0
		move.w	d0,($00C00004).l
		bsr.w	ClearScreen
		lea		($00C00004).l,a6
		move.w	#$8004,(a6)
		move.w	#$8230,(a6)
		move.w	#$8407,(a6)
		move.w	#$8230,(a6)
		move.w	#$8700,(a6)
		move.w	#$8C81,(a6)
		move.w	#$9001,(a6)

; ===========================================================================

	;	clearRAM Sprite_Table_Input,$400
	;	lea		($FFFFAC00).w,a1
	;	moveq	#$00,d0
	;	move.w	#$00FF,d1

;Offset_0x026ACA:
	;	move.l	d0,(a1)+
	;	dbra	d1,Offset_0x026ACA

	;----------------------------------------------------------------------

	;	clearRAM Menus_Object_RAM,(Menus_Object_RAM_End-Menus_Object_RAM)
	;	lea		($FFFFB000).w,a1
	;	moveq	#$00,d0
	;	move.w	#$07FF,d1

;Offset_0x026ADA:
	;	move.l	d0,(a1)+
	;	dbra	d1,Offset_0x026ADA

	;----------------------------------------------------------------------

		; clear the RAM ($FFFFAC00-EFFF)
		lea	($FFFFAC00).w,a1
		moveq	#$00,d0
		move.w	#$07FF*2+$FF,d1
		; $7FF = Menus_Object_RAM //// $7FF = Object RAM //// $FF = Sprite_Table_Input

MenuScreen_ClrObjRam:
		move.l	d0,(a1)+
		dbf		d1,MenuScreen_ClrObjRam

; ===========================================================================

		cmpi.b	#2,($FFFFFFF7).w	; is result screen?
		beq.w	TwoPlayerResults	; if yes, branch
		; result screen has an own system to load background + graphics

		; load background + graphics of font/LevSelPics
		clr.w	($FFFFDC00).w
		move.l	#$FFFFDC00,($FFFFDCFC).w
		move.l	#$42000000,($00C00004).l
		lea		(Nem_MenuFont).l,a0
		bsr.w	NemDec
		move.l	#$4E000000,($00C00004).l
		lea		(Nem_MenuBox).l,a0
		bsr.w	NemDec
		move.l	#$52000000,($00C00004).l
		lea		(Nem_LevelIcons).l,a0
		bsr.w	NemDec
;-------------------------------------------------------------------------------
; Carrega o Mapeamento do Fundo Sonic/Miles
;-------------------------------------------------------------------------------
		lea		($FFFF0000),a1
		lea		(Eni_MenuBg),a0
		move.w	#$6000,d0
		bsr.w	EniDec
		lea		($FFFF0000),a1
		move.l	#$60000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		bsr.w	ShowVDPGraphics	; fullscreen background

; ===========================================================================

		tst.b	($FFFFFFF7).w		; is menu option?
		beq.w	MenuScreen_Options	; if yes, branch
		cmpi.b	#1,($FFFFFFF7).w	; is level select?
		beq.w	Level_Select_Menu	; if yes, branch