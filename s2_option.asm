VDP_control_port		equ	$C00004
Chunk_Table				equ	$FFFF0000
VDP_Command_Buffer		equ	$FFFFDC00
Game_Mode				equ	$FFFFF600
Ctrl_1_Press			equ	$FFFFF605
Vint_routine			equ	$FFFFF62A
Options_menu_box		equ	$FFFFFF8E
Level_select_flag		equ	$FFFFFFE0

MusID_Options			=	$91

; ===========================================================================
; loc_8BD4:
MenuScreen:
		bsr.w	Pal_FadeFrom
		move	#$2700,sr
		move.w	($FFFFF60C).w,d0
		andi.b	#$BF,d0
		move.w	d0,(VDP_control_port).l
		bsr.w	ClearScreen
		lea	(VDP_control_port).l,a6
		move.w	#$8004,(a6)
		move.w	#$8230,(a6)
		move.w	#$8407,(a6)
		move.w	#$8230,(a6)
		move.w	#$8700,(a6)
		move.w	#$8C81,(a6)
		move.w	#$9001,(a6)

		clearRAM Sprite_Table_Input,$400
		clearRAM Menus_Object_RAM,(Menus_Object_RAM_End-Menus_Object_RAM)

		 load background + graphics of font/LevSelPics
		clr.w	(VDP_Command_Buffer).w
		move.l	#VDP_Command_Buffer,($FFFFDCFC).w
		move.l	#$42000000,(VDP_control_port).l
		lea	(Nem_MenuFont).l,a0
		bsr.w	NemDec
		move.l	#$4E000000,(VDP_control_port).l
		lea	(Nem_MenuBox).l,a0
		bsr.w	NemDec
		move.l	#$52000000,(VDP_control_port).l
		lea	(Nem_LevelIcons).l,a0
		bsr.w	NemDec
		lea		(Chunk_Table),a1
		lea		(Eni_MenuBg),a0
		move.w	#$6000,d0
		bsr.s	EniDec
		lea		(Chunk_Table),a1
		move.l	#$60000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		bsr.w	ShowVDPGraphics	; fullscreen background
		bra.s	MenuScreen_Options

; ---------------------------------------------------------------------------
; Common menu screen subroutine for transferring text to RAM

; ARGUMENTS:
; d0 = starting art tile
; a1 = data source
; a2 = destination
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; sub_8FBE:
MenuScreenTextToRAM:
		moveq	#0,d1
		move.b	(a1)+,d1

MenuScreenTextToRAM_Cont:
		move.b	(a1)+,d0
		move.w	d0,(a2)+
		dbf	d1,MenuScreenTextToRAM_Cont
		rts
; End of function MenuScreenTextToRAM

; ===========================================================================
; loc_8FCC:
MenuScreen_Options:
		lea	(Chunk_Table).l,a1
		lea	(MapEng_Options).l,a0
		move.w	#$70,d0
		bsr.s	EniDec
		lea	($FFFF0160).l,a1
		lea	(MapEng_Options).l,a0
		move.w	#$2070,d0
		bsr.s	EniDec
		clr.b	(Options_menu_box).w
		bsr.w	sub_9186
		addq.b	#1,(Options_menu_box).w
		bsr.w	loc_91F8
		addq.b	#1,(Options_menu_box).w
		bsr.w	loc_91F8
		clr.b	(Options_menu_box).w
		clr.b	(Level_started_flag).w
		clr.w	($FFFFF7F0).w
;-------------------------------------------------------------------------------
	;	lea	(Anim_SonicMilesBG).l,a2
	;	bsr.w	JmpTo2_Dynamic_Normal
		move.w	#$0000,($FFFFF7B8).w	; Inicializa os quadros das animações do menu
		move.w	#$0000,($FFFFF7B9).w	; Inicializa o contador das animações do menu
		bsr.w	Dynamic_Menu
;-------------------------------------------------------------------------------
		moveq	#$14,d0
		bsr.w	PalLoad1
		move.b	#MusID_Options,d0
		bsr.w	JmpTo_PlayMusic
	;	clr.w	(Two_player_mode).w
		clr.l	(Camera_X_pos).w
		clr.l	(Camera_Y_pos).w
	;	clr.w	(Correct_cheat_entries).w
	;	clr.w	(Correct_cheat_entries_2).w
		move.b	#$16,(Vint_routine).w
		bsr.w	WaitForVint
		move.w	(VDP_Reg1_val).w,d0
		ori.b	#$40,d0
		move.w	d0,(VDP_control_port).l
		bsr.w	Pal_FadeTo
; loc_9060:
OptionScreen_Main:
		move.b	#$16,(Vint_routine).w
		bsr.w	WaitForVint
		move	#$2700,sr
		bsr.w	loc_91F8
		bsr.w	OptionScreen_Controls
		bsr.w	sub_9186
		move	#$2300,sr
	;	lea	(Sonic_Miles_Frame_Select).l,a2
		bsr.w	JmpTo2_Dynamic_Normal
		move.b	(Ctrl_1_Press).w,d0
	;	or.b	(Ctrl_2_Press).w,d0
		andi.b	#button_start_mask,d0	; is Start button pressed?
		bne.s	OptionScreen_Select		; if yes, branch
		bra.s	OptionScreen_Main
; ===========================================================================
; loc_909A:
OptionScreen_Select:
		move.b	(Options_menu_box).w,d0
		bne.s	OptionScreen_Select_Not1P
		cmpi.b	#2,($FFFFFF8B).w		; is Knuckles in Player Select
		beq.s	Knuckles_not_playable	; if yes, branch
		; Start a single player game
		moveq	#0,d0
	;	move.w	d0,(Two_player_mode).w
	;	move.w	d0,(Two_player_mode_copy).w
		move.w	d0,(Current_ZoneAndAct).w	; green_hill_zone_act_1
		move.w	d0,($FFFFFE20).w	; clear rings
		move.l	d0,($FFFFFE22).w	; clear time
		move.l	d0,($FFFFFE26).w	; clear score
		move.b	#3,($FFFFFE12).w	; set lives to 3
		move.b	#GameModeID_Level,(Game_Mode).w ; => Level (Zone play mode)
		rts


Knuckles_not_playable:
		move.b	#$B4,d0
		bsr.w	PlaySound_Special	; play bumper sound
		bra.s	OptionScreen_Main
; ===========================================================================
; loc_90B6:
OptionScreen_Select_Not1P:
		subq.b	#1,d0
		bne.s	OptionScreen_Select_Other
		; Start a 2P VS game
	;	moveq	#1,d0
	;	move.w	d0,(Two_player_mode).w
	;	move.w	d0,(Two_player_mode_copy).w
	;	move.b	#GameModeID_2PLevelSelect,(Game_Mode).w ; => LevelSelectMenu2P
	;	move.b	#0,(Current_Zone_2P).w
	;	move.w	#0,(Player_mode).w
	;	rts
		bra.s	OptionScreen_Main
; ===========================================================================
; loc_90D8:
OptionScreen_Select_Other:
		cmpi.b	#2,($FFFFFF8B).w					; is Knuckles in Player Select
		bne.s	OptionScreen_Select_Other_Knuckles	; if not, branch
		clr.b	($FFFFFF8B).w						; set the Player Select to Sonic

		; When pressing START on the sound test option, return to the SEGA screen
OptionScreen_Select_Other_Knuckles:
		move.b	#GameModeID_SegaScreen,(Game_Mode).w ; => SegaScreen
		rts

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

;sub_90E0:
OptionScreen_Controls:
		moveq	#0,d2
		move.b	(Options_menu_box).w,d2
		move.b	(Ctrl_1_Press).w,d0		; Ctrl_1_Press
	;	or.b	(Ctrl_2_Press).w,d0
		btst	#button_up,d0			; is up pressed?
		beq.s	Option_Controls_Down	; if not, branch
		subq.b	#1,d2					; move up 1 selection
		bcc.s	Option_Controls_Down
		move.b	#2,d2

Option_Controls_Down:
		btst	#button_down,d0			; is down pressed?
		beq.s	Option_Controls_Refresh	; if not, branch
		addq.b	#1,d2					; move down 1 selection
		cmpi.b	#3,d2
		blo.s	Option_Controls_Refresh
		moveq	#0,d2

Option_Controls_Refresh:
		move.b	d2,(Options_menu_box).w
		lsl.w	#2,d2
		move.b	OptionScreen_Choices(pc,d2.w),d3 ; number of choices for the option
		movea.l	OptionScreen_Choices(pc,d2.w),a1 ; location where the choice is stored (in RAM)
		move.w	(a1),d2
		btst	#button_left,d0				; is left pressed?
		beq.s	Option_Controls_Right		; if not, branch
		subq.b	#1,d2						; subtract 1 from sound test
		bcc.s	Option_Controls_Right
		move.b	d3,d2

Option_Controls_Right:
		btst	#button_right,d0			; is right pressed?
		beq.s	Option_Controls_Button_A	; if not, branch
		addq.b	#1,d2						; add 1 to sound test
		cmp.b	d3,d2
		bls.s	Option_Controls_Button_A
		moveq	#0,d2

Option_Controls_Button_A:
		btst	#button_A,d0				; is button A pressed?
		beq.s	Option_Controls_Refresh2	; if not, branch
		addi.b	#$10,d2						; add $10 to sound test
		cmp.b	d3,d2
		bls.s	Option_Controls_Refresh2
		moveq	#0,d2

Option_Controls_Refresh2:
		move.w	d2,(a1)
		cmpi.b	#2,(Options_menu_box).w
		bne.s	Option_Controls_NoMove	; rts
		andi.w	#button_B_mask+button_C_mask,d0	; B or C pressed?
		beq.s	Option_Controls_NoMove	; if not, branch
		move.w	(Sound_test_sound).w,d0	; get sound selected
		addi.w	#$80,d0					; add $80 to sound selected
		bsr.w	JmpTo_PlayMusic
		lea	(Code_Level_Select).l,a0	; load Level Select Code
		lea	(Code_Continues).l,a2		; load Continues Code
		lea	(Level_select_flag).w,a1	; load the RAM address of Level Select
		moveq	#0,d2	; flag to tell the routine to enable the continues cheat and the Level Select cheat
		bsr.w	CheckCheats

Option_Controls_NoMove:
		rts
; End of function OptionScreen_Controls

; ===========================================================================
; word_917A:
OptionScreen_Choices:
		dc.l (3-1)<<24|($FFFF8A&$FFFFFF)
		dc.l (2-1)<<24|($FFFFBE&$FFFFFF)
		dc.l ($FF)<<24|($FFFF84&$FFFFFF)

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_9186:
		bsr.w	loc_9268
		moveq	#0,d1
		move.b	(Options_menu_box).w,d1
		lsl.w	#3,d1
		lea	(OptScrBoxData).l,a3
		lea	(a3,d1.w),a3
		move.w	#$6000,d0
		lea	($FFFF0030).l,a2
		movea.l	(a3)+,a1
		bsr.w	MenuScreenTextToRAM
		lea	($FFFF00B6).l,a2
		moveq	#0,d1
		cmpi.b	#2,(Options_menu_box).w
		beq.s	loc_9186
		move.b	(Options_menu_box).w,d1
		lsl.w	#2,d1
		lea	OptionScreen_Choices(pc),a1
		movea.l	(a1,d1.w),a1
		move.w	(a1),d1
		lsl.w	#2,d1

loc_9186:
		movea.l	(a4,d1.w),a1
		bsr.w	MenuScreenTextToRAM
		cmpi.b	#2,(Options_menu_box).w
		bne.s	loc2_9186
		lea	($FFFF00C2).l,a2
		bsr.w	loc_9296

loc2_9186:
		lea	(Chunk_Table).l,a1
		move.l	(a3)+,d0
		moveq	#$15,d1
		moveq	#7,d2
		bra.w	JmpTo_PlaneMapToVRAM
; ===========================================================================

loc_91F8:
		bsr.w	loc_9268
		moveq	#0,d1
		move.b	(Options_menu_box).w,d1
		lsl.w	#3,d1
		lea	(OptScrBoxData).l,a3
		lea	(a3,d1.w),a3
		moveq	#0,d0
		lea	($FFFF0190).l,a2
		movea.l	(a3)+,a1
		bsr.w	MenuScreenTextToRAM
		lea	($FFFF0216).l,a2
		moveq	#0,d1
		cmpi.b	#2,(Options_menu_box).w
		beq.s	loc2_91F8
		move.b	(Options_menu_box).w,d1
		lsl.w	#2,d1
		lea	OptionScreen_Choices(pc),a1
		movea.l	(a1,d1.w),a1
		move.w	(a1),d1
		lsl.w	#2,d1

loc2_91F8
		movea.l	(a4,d1.w),a1
		bsr.w	MenuScreenTextToRAM
		cmpi.b	#2,(Options_menu_box).w
		bne.s	loc3_91F8
		lea	($FFFF0222).l,a2
		bsr.w	loc_9296

loc3_91F8
		lea	($FFFF0160).l,a1
		move.l	(a3)+,d0
		moveq	#$15,d1
		moveq	#7,d2
		bra.w	JmpTo_PlaneMapToVRAM
; ===========================================================================

loc_9268:
		lea	(off_92D2).l,a4
		tst.b	(Graphics_Flags).w
		bpl.s	loc2_9268
		lea	(off_92DE).l,a4

loc2_9268:
		tst.b	(Options_menu_box).w
		beq.s	loc3_9268
		lea	(off_92EA).l,a4

loc3_9268:
		cmpi.b	#2,(Options_menu_box).w
		bne.s	loc4_9268		; rts
		lea	(off_92F2).l,a4

loc4_9268:
		rts
; ===========================================================================

loc_9296:
		move.w	(Sound_test_sound).w,d1
		move.b	d1,d2
		lsr.b	#4,d1
		bsr.s	loc2_9296
		move.b	d2,d1

loc2_9296:
		andi.w	#$F,d1
		cmpi.b	#$A,d1
		blo.s	loc3_9296
		addi.b	#4,d1

loc3_9296:
		addi.b	#$10,d1
		move.b	d1,d0
		move.w	d0,(a2)+
		rts
; ===========================================================================
; off_92BA:
OptScrBoxData:

; macro to declare the data for an options screen box
;boxData macro txtlabel,vramAddr
;		dc.l txtlabel, vdpComm(vramAddr,VRAM,WRITE)
;	    endm

;		boxData	TextOptScr_PlayerSelect,$C192
;		boxData	TextOptScr_VsModeItems,$C592
;		boxData	TextOptScr_SoundTest,$C992

;off_92D2:
	;	dc.l TextOptScr_SonicAndMiles
	;	dc.l TextOptScr_SonicAlone
	;	dc.l TextOptScr_MilesAlone
;off_92DE:
	;	dc.l TextOptScr_SonicAndTails
	;	dc.l TextOptScr_SonicAlone
	;	dc.l TextOptScr_TailsAlone
;off_92EA:
	;	dc.l TextOptScr_AllKindsItems
	;	dc.l TextOptScr_TeleportOnly
;off_92F2:
	;	dc.l TextOptScr_0

		dc.l TextOptScr_PlayerSelect
		dc.w $4192
		dc.w 3
		dc.l TextOptScr_VsModeItems
		dc.w $4592
		dc.w 3
		dc.l TextOptScr_SoundTest
		dc.w $4992
		dc.w 3

off_92D2:
		dc.l TextOptScr_Sonic
		dc.l TextOptScr_Miles
		dc.l TextOptScr_Knuckles
off_92DE:
		dc.l TextOptScr_Sonic
		dc.l TextOptScr_Tails
		dc.l TextOptScr_Knuckles
off_92EA:
		dc.l TextOptScr_AllKindsItems
		dc.l TextOptScr_TeleportOnly
off_92F2:
		dc.l TextOptScr_0
; ===========================================================================
; ===========================================================================
; loc_9746:
;CheckCheats:	; This is called from 2 places: the options screen and the level select screen
	;	move.w	(Correct_cheat_entries).w,d0	; Get the number of correct sound IDs entered so far
	;	adda.w	d0,a0				; Skip to the next entry
	;	move.w	(Sound_test_sound).w,d0		; Get the current sound test sound
	;	cmp.b	(a0),d0				; Compare it to the cheat
	;	bne.s	+				; If they're different, branch
	;	addq.w	#1,(Correct_cheat_entries).w	; Add 1 to the number of correct entries
	;	tst.b	1(a0)				; Is the next entry 0?
	;	bne.s	++				; If not, branch
	;	move.w	#$101,(a1)			; Enable the cheat
	;	move.b	#SndID_Ring,d0			; Play the ring sound
	;	bsr.w	JmpTo_PlaySound
;+
	;	move.w	#0,(Correct_cheat_entries).w	; Clear the number of correct entries
;+
	;	move.w	(Correct_cheat_entries_2).w,d0	; Do the same procedure with the other cheat
	;	adda.w	d0,a2
	;	move.w	(Sound_test_sound).w,d0
	;	cmp.b	(a2),d0
	;	bne.s	++
	;	addq.w	#1,(Correct_cheat_entries_2).w
	;	tst.b	1(a2)
	;	bne.s	+++	; rts
	;	tst.w	d2				; Test this to determine which cheat to enable
	;	bne.s	+				; If not 0, branch
	;	move.b	#$F,(Continue_count).w		; Give 15 continues
		; The next line causes the bug where the OOZ music plays until reset.
		; Remove "&$7F" to fix the bug.
	;	move.b	#SndID_ContinueJingle&$7F,d0	; Play the continue jingle
	;	bsr.w	PlaySound
	;	bra.s	++
; ===========================================================================
;+
	;	move.w	#7,(Got_Emerald).w		; Give 7 emeralds to the player
	;	move.b	#MusID_Emerald,d0		; Play the emerald jingle
	;	bsr.w	PlaySound
;+
	;	move.w	#0,(Correct_cheat_entries_2).w	; Clear the number of correct entries
;+
	;	rts
; ===========================================================================
;level_select_cheat:	dc.b $19, $65,   9, $17,   0
;continues_cheat:	dc.b   1,   1,   2,   4,   0	; byte_97B7
;debug_cheat:		dc.b   1,   9,   9,   2,   1,   1,   2,   4,   0
;super_sonic_cheat:	dc.b   4,   1,   2,   6,   0	; byte_97C5

		; options screen menu text
;_0 = $10

;TextOptScr_PlayerSelect:	dc.b	$10,_st,__,_P,_L,_A,_Y,_E,_R,__,_S,_E,_L,_E,_C,_T,__,_st	; byte_97CA:
;TextOptScr_SonicAndMiles:	dc.b	$E,_S,_O,_N,_I,_C,__,_A,_N,_D,__,_M,_I,_L,_E,_S	; byte_97DC:
;TextOptScr_SonicAndTails:	dc.b	$E,_S,_O,_N,_I,_C,__,_A,_N,_D,__,_T,_A,_I,_L,_S	; byte_97EC:
;TextOptScr_SonicAlone:		dc.b	$E,__,__,_S,_O,_N,_I,_C,__,_A,_L,_O,_N,_E,__,__	; byte_97FC:
;TextOptScr_MilesAlone:		dc.b	$E,__,__,_M,_I,_L,_E,_S,__,_A,_L,_O,_N,_E,__,__	; byte_980C:
;TextOptScr_TailsAlone:		dc.b	$E,__,__,_T,_A,_I,_L,_S,__,_A,_L,_O,_N,_E,__,__	; byte_981C:
;TextOptScr_VsModeItems:		dc.b	$10,_st,__,_V,_S,__,_M,_O,_D,_E,__,_I,_T,_E,_M,_S,__,_st	; byte_982C:
;TextOptScr_AllKindsItems:	dc.b	$E,_A,_L,_L,__,_K,_I,_N,_D,_S,__,_I,_T,_E,_M,_S	; byte_983E:
;TextOptScr_TeleportOnly:	dc.b	$E,__,_T,_E,_L,_E,_P,_O,_R,_T,__,_O,_N,_L,_Y,__	; byte_984E:
;TextOptScr_SoundTest:		dc.b	$10,_st,__,__,_S,_O,_U,_N,_D,__,_T,_E,_S,_T,__,__,__,_st	; byte_985E:
;TextOptScr_0:				dc.b	$10,__,__,__,__,__,__,__,_0,__,__,__,__,__,__,__,__,__	; byte_9870:

TextOptScr_PlayerSelect:	dc.b	$10,_st,__,_P,_L,_A,_Y,_E,_R,__,_S,_E,_L,_E,_C,_T,__,_st
TextOptScr_Sonic:			dc.b	$E,__,__,__,__,_S,_O,_N,_I,_C,__,__,__,__,__,__
TextOptScr_Miles:			dc.b	$E,__,__,__,__,_M,_I,_L,_E,_S,__,__,__,__,__,__
TextOptScr_Tails:			dc.b	$E,__,__,__,__,_T,_A,_I,_L,_S,__,__,__,__,__,__
TextOptScr_Knuckles:		dc.b	$E,__,__,__,__,_K,_N,_U,_C,_K,_L,_E,_S,__,__,__
TextOptScr_VsModeItems:		dc.b	$10,_st,__,__,_I,_N,__,_M,_O,_N,_I,_T,_O,_R,_S,__,__,_st
TextOptScr_AllKindsItems:	dc.b	$E,_A,_L,_L,__,_K,_I,_N,_D,_S,__,_I,_T,_E,_M,_S
TextOptScr_TeleportOnly:	dc.b	$E,_I,_T,_E,_M,__,_S,__,_O,_N,_L,_Y,__,__,__,__
TextOptScr_SoundTest:		dc.b	$10,_st,__,__,_S,_O,_U,_N,_D,__,_T,_E,_S,_T,__,__,__,_st
TextOptScr_0:				dc.b	$10,__,__,__,__,__,__,__,_0,__,__,__,__,__,__,__,__,__

; level select picture palettes
; byte_9880:
;Pal_LevelIcons:	BINCLUDE "art/palettes/Level Select Icons.bin"

; 2-player level select screen mappings (Enigma compressed)
; byte_9A60:
;MapEng_LevSel2P:	BINCLUDE "mappings/misc/Level Select 2P.bin"

; options screen mappings (Enigma compressed)
; byte_9AB2:
MapEng_Options:	incbin mapeni\OptionsScreen.bin

; level select screen mappings (Enigma compressed)
; byte_9ADE:
;MapEng_LevSel:	BINCLUDE "mappings/misc/Level Select.bin"

; 1P and 2P level select icon mappings (Enigma compressed)
; byte_9C32:
;MapEng_LevSelIcon:	BINCLUDE "mappings/misc/Level Select Icons.bin"


; ===========================================================================
;JmpTo_PlaySound:
;		jmp	(PlaySound).l
; ===========================================================================

;JmpTo_PlayMusic:
;		jmp	(PlayMusic).l
; ===========================================================================
; loc_9C70:
;JmpTo_PlaneMapToVRAM
;		jmp	(PlaneMapToVRAM).l
; End of function sub_9186