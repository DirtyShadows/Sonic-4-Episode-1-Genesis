; ===========================================================================
; loc_7D50:
TwoPlayerResults:
	;	bsr.w	Pal_FadeFrom
	;	move	#$2700,sr
	;	move.w	(VDP_Reg1_val).w,d0
	;	andi.b	#$BF,d0
	;	move.w	d0,(VDP_control_port).l
	;	bsr.w	ClearScreen
	;	lea	(VDP_control_port).l,a6
	;	move.w	#$8004,(a6)
	;	move.w	#$8230,(a6)
	;	move.w	#$8407,(a6)
	;	move.w	#$8230,(a6)
	;	move.w	#$8700,(a6)
	;	move.w	#$8C81,(a6)
	;	move.w	#$9001,(a6)

	;	clearRAM Sprite_Table_Input,$400
	;	clearRAM VSRslts_Object_RAM,(VSRslts_Object_RAM_End-VSRslts_Object_RAM)

; ===========================================================================

	;	move.l	#vdpComm($0200,VRAM,WRITE),(VDP_control_port).l
		move.l	#$42000000,($00C00004).l
		lea	(ArtNem_FontStuff).l,a0
		bsr.w	NemDec
	;	move.l	#vdpComm($0E00,VRAM,WRITE),(VDP_control_port).l
		move.l	#$4E000000,($00C00004).l
		lea	(ArtNem_1P2PWins).l,a0
		bsr.w	NemDec
		lea	(Chunk_Table).l,a1
		lea	(MapEng_MenuBack).l,a0
		move.w	#$6000,d0
		bsr.w	EniDec
		lea	(Chunk_Table).l,a1
	;	move.l	#vdpComm($E000,VRAM,WRITE),d0
		move.l	#$60000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		bsr.w	PlaneMapToVRAM

;-------------------------------------------------------------------------------
		move.w	(Results_Screen_2P).w,d0
		add.w	d0,d0
		add.w	d0,d0
		add.w	d0,d0
		lea	TwoPlayerResultsPointers(pc),a2
		movea.l	(a2,d0.w),a0
		movea.l	4(a2,d0.w),a2
		lea	(Chunk_Table).l,a1
		move.w	#0,d0
		bsr.w	EniDec
		jsr	(a2)	; dynamic call! to Setup2PResults_Act, Setup2PResults_Zone, Setup2PResults_Game, Setup2PResults_SpecialAct, or Setup2PResults_SpecialZone, assuming the pointers in TwoPlayerResultsPointers have not been changed
		lea	(Chunk_Table).l,a1
	;	move.l	#vdpComm($C000,VRAM,WRITE),d0
		move.l	#$40000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		bsr.w	PlaneMapToVRAM
		clr.w	(VDP_Command_Buffer).w
		move.l	#VDP_Command_Buffer,(VDP_Command_Buffer_Slot).w
		clr.b	(Level_started_flag).w
		clr.w	($FFFFF7F0).w
;-------------------------------------------------------------------------------
	;	lea	(Sonic_Miles_Frame_Select).l,a2
	;	bsr.w	JmpTo_Dynamic_Normal
		move.w	#$0000,($FFFFF7B8).w	; Inicializa os quadros das animações do menu
		move.w	#$0000,($FFFFF7B9).w	; Inicializa o contador das animações do menu
		bsr.w	Dynamic_Menu
;-------------------------------------------------------------------------------
	;	moveq	#PLCID_Std1,d0
	;	bsr.w	LoadPLC2
		bsr.w	LoadPLC_Character_Main
		moveq	#PalID_Menu,d0
		bsr.w	PalLoad1
		moveq	#0,d0
		move.b	#MusID_2PResult,d0
;		cmp.w	(Level_Music).w,d0
;		beq.s	loc_7E74
;		move.w	d0,(Level_Music).w
		bsr.w	PlayMusic

loc_7E74:
		move.w	#$707,(Demo_Time_left).w
	;	clr.w	(Two_player_mode).w
		clr.l	(Camera_X_pos).w
		clr.l	(Camera_Y_pos).w
		clr.l	(Vscroll_Factor).w
		clr.l	($FFFFF61E).w
		clr.l	($FFFFEEEC).w
		move.b	#ObjID_HUD,(VSResults_HUD+id).w
		move.b	#$16,(Vint_routine).w
		bsr.w	WaitForVint
		move.w	(VDP_Reg1_val).w,d0
		ori.b	#$40,d0
		move.w	d0,(VDP_control_port).l
		bsr.w	Pal_FadeTo

loc_7EB4:
		move.b	#$16,(Vint_routine).w
		bsr.w	WaitForVint
;-------------------------------------------------------------------------------
	;	lea	(Anim_SonicMilesBG).l,a2
	;	bsr.w	JmpTo_Dynamic_Normal
		bsr.w	Dynamic_Menu
;-------------------------------------------------------------------------------
		jsr	(RunObjects).l
		jsr	(BuildSprites).l
		bsr.w	RunPLC_RAM
		tst.l	(Plc_Buffer).w
		bne.s	loc_7EB4
		move.b	(Ctrl_1_Press).w,d0
	;	or.b	(Ctrl_2_Press).w,d0
		andi.b	#button_start_mask,d0
		beq.s	loc_7EB4			; stay on that screen until either player presses start

		jsr		Timeattack_save
		move.b	#GameModeID_SegaScreen,(Game_Mode).w ; => SegaScreen

	;	move.w	(Results_Screen_2P).w,d0 ; were we at the act results screen? (VsRSID_Act)
	;	bne.w	TwoPlayerResultsDone_Zone ; if not, branch
	;	tst.b	(Current_Act).w		; did we just finish act 1?
	;	bne.s	loc_7F3C		; if not, branch
	;	addq.b	#1,(Current_Act).w	; go to the next act
	;	move.b	#1,(Current_Act_2P).w
	;	move.b	#GameModeID_Level,(Game_Mode).w ; => Level (Zone play mode)
	;	move.b	#0,(Last_star_pole_hit).w
	;	move.b	#0,(Last_star_pole_hit_2P).w
	;	moveq	#1,d0
	;	move.w	d0,(Two_player_mode).w
	;	move.w	d0,(Two_player_mode_copy).w
	;	moveq	#0,d0
	;	move.l	d0,(Score).w
	;	move.l	d0,(Score_2P).w
	;	move.l	#5000,(Next_Extra_life_score).w
	;	move.l	#5000,(Next_Extra_life_score_2P).w
		rts
; ===========================================================================
loc_7F3C	; Displays results for the zone
		move.b	#2,(Current_Act_2P).w
		bsr.w	sub_84A4
		lea	(SS_Total_Won).w,a4
		clr.w	(a4)
		bsr.s	sub_7F9A
		bsr.s	sub_7F9A
		move.b	(a4),d1
		sub.b	1(a4),d1
		beq.s	loc_7F66		; if there's a tie, branch
		move.w	#VsRSID_Zone,(Results_Screen_2P).w
		move.b	#GameModeID_2PResults,(Game_Mode).w ; => TwoPlayerResults
		rts
; ===========================================================================
loc_7F66	; There's a tie, play a special stage
		move.b	(Current_Zone_2P).w,d0
		addq.b	#1,d0
		move.b	d0,(Current_Special_Stage).w
		move.w	#VsRSID_SS,(Results_Screen_2P).w
		move.b	#1,($FFFFF7CD).w
		move.b	#GameModeID_SpecialStage,(Game_Mode).w ; => SpecialStage
	;	moveq	#1,d0
	;	move.w	d0,(Two_player_mode).w
	;	move.w	d0,(Two_player_mode_copy).w
		move.b	#0,(Last_star_pole_hit).w
	;	move.b	#0,(Last_star_pole_hit_2P).w
		rts

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_7F9A:
		moveq	#0,d1
		move.b	(a5),d1
		sub.b	1(a5),d1
		beq.s	loc_7FAE
		bcs.s	loc_7FAA
		addq.b	#1,(a4)
		bra.s	loc_7FAE
; ===========================================================================
loc_7FAA
		addq.b	#1,1(a4)
loc_7FAE
		addq.w	#2,a5
		rts
; End of function sub_7F9A

; ===========================================================================

; loc_7FB2:
TwoPlayerResultsDone_Zone:
		subq.w	#1,d0			; were we at the zone results screen? (VsRSID_Zone)
		bne.s	TwoPlayerResultsDone_Game ; if not, branch

; loc_7FB6:
TwoPlayerResultsDone_ZoneOrSpecialStages:
		lea	(Results_Data_2P).w,a4
		moveq	#0,d0
		moveq	#0,d1
		move.w	(a4)+,d0
		add.l	d0,d1
		move.w	(a4)+,d0
		add.l	d0,d1
		addq.w	#2,a4
		move.w	(a4)+,d0
		add.l	d0,d1
		move.w	(a4)+,d0
		add.l	d0,d1
		addq.w	#2,a4
		move.w	(a4)+,d0
		add.l	d0,d1
		move.w	(a4)+,d0
		add.l	d0,d1
		addq.w	#2,a4
		move.w	(a4)+,d0
		add.l	d0,d1
		move.w	(a4)+,d0
		add.l	d0,d1
		swap	d1
		tst.w	d1	; have all levels been completed?
		bne.s	loc_7FF8	; if not, branch
		move.w	#VsRSID_Game,(Results_Screen_2P).w
		move.b	#GameModeID_2PResults,(Game_Mode).w ; => TwoPlayerResults
		rts
; ===========================================================================
loc_7FF8:
		tst.w	(Game_Over_2P).w
		beq.s	loc_8018		; if there's a Game Over, clear the results
		lea	(Results_Data_2P).w,a1
	;	moveq	#bytesToWcnt(Results_Data_2P_End-Results_Data_2P),d0
		moveq	#$B,d0

loc_8004:
		move.w	#-1,(a1)+
		dbf	d0,loc_8004
		move.b	#3,(Life_count).w
	;	move.b	#3,(Life_count_2P).w

loc_8018:
		move.b	#$01,($FFFFFFF7).w	; set level select flag
		move.b	#GameModeID_2PLevelSelect,(Game_Mode).w ; => LevelSelectMenu2P
		rts
; ===========================================================================
; loc_8020:
TwoPlayerResultsDone_Game:
		subq.w	#1,d0	; were we at the game results screen? (VsRSID_Game)
		bne.s	TwoPlayerResultsDone_SpecialStage ; if not, branch
		move.b	#GameModeID_SegaScreen,(Game_Mode).w ; => SegaScreen
		rts
; ===========================================================================
; loc_802C:
TwoPlayerResultsDone_SpecialStage:
		subq.w	#1,d0			; were we at the special stage results screen? (VsRSID_SS)
		bne.w	TwoPlayerResultsDone_SpecialStages ; if not, branch
		cmpi.b	#3,(Current_Zone_2P).w	; do we come from the special stage "zone"?
		beq.s	loc2_8048			; if yes, branch
		move.w	#VsRSID_Zone,(Results_Screen_2P).w ; show zone results after tiebreaker special stage
		move.b	#GameModeID_2PResults,(Game_Mode).w ; => TwoPlayerResults
		rts
; ===========================================================================
loc2_8048:
		tst.b	(Current_Act_2P).w
		beq.s	loc_806C
		cmpi.b	#2,(Current_Act_2P).w
		beq.s	loc_80AC
		bsr.w	sub_84A4
		lea	(SS_Total_Won).w,a4
		clr.w	(a4)
		bsr.s	sub_8094
		bsr.s	sub_8094
		move.b	(a4),d1
		sub.b	1(a4),d1
		bne.s	loc_80AC

loc_806C:
		addq.b	#1,(Current_Act_2P).w
		addq.b	#1,(Current_Special_Stage).w
		move.w	#VsRSID_SS,(Results_Screen_2P).w
		move.b	#1,($FFFFF7CD).w
		move.b	#GameModeID_SpecialStage,(Game_Mode).w ; => SpecialStage
	;	move.w	#1,(Two_player_mode).w
	;	move.w	#0,(Level_Music).w
		rts

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_8094:
		moveq	#0,d1
		move.b	(a5),d1
		sub.b	1(a5),d1
		beq.s	loc_80A8
		bcs.s	loc_80A4
		addq.b	#1,(a4)
		bra.s	loc_80A8
; ===========================================================================
loc_80A4:
		addq.b	#1,1(a4)

loc_80A8:
		addq.w	#2,a5
		rts
; End of function sub_8094

; ===========================================================================

loc_80AC:
		move.w	#VsRSID_SSZone,(Results_Screen_2P).w
		move.b	#GameModeID_2PResults,(Game_Mode).w ; => TwoPlayerResults
		rts
; ===========================================================================
; loc_80BA: BranchTo_loc_7FB6:
TwoPlayerResultsDone_SpecialStages:
		; we were at the special stages results screen (VsRSID_SSZone)
		bra.w	TwoPlayerResultsDone_ZoneOrSpecialStages

; ===========================================================================
; ----------------------------------------------------------------------------
; Object 90 - Score/Rings/Time display (in 2P results)
; ----------------------------------------------------------------------------
; Sprite_80BE:
Obj90: ; (screen-space obj)
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj90_Index(pc,d0.w),d1
		jmp	Obj90_Index(pc,d1.w)
; ===========================================================================
; JmpTbl_80CC: Obj21_States:
Obj90_Index:
		dc.w Obj90_Init-Obj90_Index	; 0
		dc.w Obj90_Main-Obj90_Index	; 2
; ---------------------------------------------------------------------------
; word_80D0:
Obj90_PositionTable: ; x, y
		dc.w $F0, $148
		dc.w $F0, $130
		dc.w $E0, $148
		dc.w $F0, $148
		dc.w $F0, $148
; ===========================================================================
; loc_80E4:
Obj90_Init:
		addq.b	#2,routine(a0) ; => Obj21_Main
		move.w	(Results_Screen_2P).w,d0
		add.w	d0,d0
		add.w	d0,d0
		move.l	Obj90_PositionTable(pc,d0.w),x_pixel(a0) ; and y_pixel(a0)
		move.l	#Obj90_MapUnc_8146,mappings(a0)
	 	move.w	#$70,art_tile(a0)
	;	bsr.w	JmpTo2_Adjust2PArtPointer
		move.b	#0,render_flags(a0)
		move.b	#0,priority(a0)
		moveq	#2,d1				; set to show "TIED"
		move.b	(SS_Total_Won).w,d0		; d0 = SS_Total_Won_1P
		sub.b	(SS_Total_Won+1).w,d0	;    - SS_Total_Won_2P
		beq.s	loc_8128			; if you tie, show "TIED"
	;	bcs.s	loc_8126
		tst.b	(SS_Total_Won).w	; You won one of five?
		beq.s	loc_8126			; if not, show "YOU LOSE"
		moveq	#0,d1				; if yes, show "YOU WIN"
		bra.s	loc_8128
; ---------------------------------------------------------------------------
loc_8126:
		moveq	#1,d1				; set to show "YOU LOSE"

loc_8128:
		move.b	d1,mapping_frame(a0)

; loc_812C:
Obj90_Main:
		andi.w	#$7FF,art_tile(a0)
		btst	#3,(Vint_runcount+3).w
		beq.s	JmpTo4_DisplaySprite
		ori.w	#$2000,art_tile(a0)

JmpTo4_DisplaySprite 
		jmp	(DisplaySprite).l
; ===========================================================================
; --------------------------------------------------------------------------
; sprite mappings
; --------------------------------------------------------------------------
Obj90_MapUnc_8146:	;dc.w word_814C-Obj90_MapUnc_8146; 0 ;	DATA XREF: ROM:000080F6o
					; ROM:00008146o ...
	;	dc.w word_8166-Obj90_MapUnc_8146; 1
	;	dc.w word_8188-Obj90_MapUnc_8146; 2
;word_814C:	dc.w 3			; DATA XREF: ROM:00008146o
	;	dc.w $F80D,    0,    0,	   0; 0
	;	dc.w $F80D,   $C,    6,	 $28; 4
	;	dc.w $F809,  $14,   $A,	 $48; 8
;word_8166:	dc.w 4			; DATA XREF: ROM:00008146o
	;	dc.w $F805,    8,    4,	   0; 0
	;	dc.w $F805,    4,    2,	 $10; 4
	;	dc.w $F80D,   $C,    6,	 $28; 8
	;	dc.w $F809,  $14,   $A,	 $48; 12
;word_8188:	dc.w 2			; DATA XREF: ROM:00008146o
	;	dc.w $F80D,  $1A,   $D,	 $18; 0
	;	dc.w $F805,  $22,  $11,	 $38; 4
	;	even

; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

;SME_PQs25:	
		dc.w SME_PYEMP_6-Obj90_MapUnc_8146, SME_PYEMP_20-Obj90_MapUnc_8146	
		dc.w SME_PYEMP_44-Obj90_MapUnc_8146	
SME_PYEMP_6:	dc.b 5	
		dc.b $F8, $D, 0, $C, $38	
		dc.b $F8, 9, 0, $14, $58	
		dc.b $F8, 5, 0, $26, 8	
		dc.b $F8, 5, 0, $2A, $16	
		dc.b $F8, 5, 0, $2E, $23	
SME_PYEMP_20:	dc.b 7	
		dc.b $F8, 5, 0, $26, 8	
		dc.b $F8, 5, 0, $2A, $16	
		dc.b $F8, 5, 0, $2E, $23	
		dc.b $F8, 5, 0, $32, $38	
		dc.b $F8, 5, 0, $2A, $45	
		dc.b $F8, 5, 0, $36, $54	
		dc.b $F8, 5, 0, $3A, $63	
SME_PYEMP_44:	dc.b 2	
		dc.b $F8, $D, 0, $1A, $18	
		dc.b $F8, 5, 0, $22, $38	
		even
; ===========================================================================

; loc_819A:
Setup2PResults_Act:
		lea	($200040).l,a6					; begin of the Time attack SRAM Slot

		moveq	#0,d0
		move.w	($FFFFFE10).w,d0			; ((Act*2^6)"+Level*$100")/2^2
		lsl.b	#6,d0						; Act*2^6
		lsr.w	#2,d0						; /2^2
		lea	(a6,d0.w),a6					; go to Level Time attack Slot

		tst.b	($FFFFFF89).w				; "Play with Super" is turned?
		beq.s	Setup2PResults_tailstest	; if not, branch
		lea	$170(a6),a6						; go to Super Time attack Slot

Setup2PResults_tailstest:
		tst.b	($FFFFFF8B).w				; is Tails?
		beq.s	Setup2PResults_playedtest	; if not, branch
		lea	$2E0(a6),a6						; go to Tails Time attack Slot

Setup2PResults_playedtest:
		tst.b	6(a6)						; did you play the level?
		bne.s	Setup2PResults_Act_Cont		; if yes, branch
		move.l	#$00093B3B,(a6)				; if not, set the recorded time to 09:59:99

Setup2PResults_Act_Cont:
		move.w	#$1F2,d2
		moveq	#0,d0
		bsr.w	sub_8672
		move.w	#$216,d2
		moveq	#0,d1
		move.b	(Current_Act_2P).w,d1
		addq.b	#1,d1
		bsr.w	sub_86B0
		move.w	#$33E,d2
		move.l	(Score).w,d1
		bsr.w	sub_86F6
		move.w	#$352,d2
	;	move.l	(Score_2P).w,d1
		move.l	7(a6),d1
		bsr.w	sub_86F6
		move.w	#$3DA,d2
		moveq	#0,d0
		move.w	(Timer_minute_word).w,d1
		bsr.w	sub_86B0
		move.w	#$3E0,d2
		moveq	#0,d1
		move.b	(Timer_second).w,d1
		bsr.w	sub_86B0
		move.w	#$3E6,d2
		moveq	#0,d1
		move.b	(Timer_frame).w,d1
		mulu.w	#$1B0,d1
		lsr.l	#8,d1
		bsr.w	sub_86B0
		move.w	#$3EE,d2
		moveq	#0,d0
	;	move.w	(Timer_minute_word_2P).w,d1
		move.w	(a6),d1
		bsr.w	sub_86B0
		move.w	#$3F4,d2
		moveq	#0,d1
	;	move.b	(Timer_second_2P).w,d1
		move.b	2(a6),d1
		bsr.w	sub_86B0
		move.w	#$3FA,d2
		moveq	#0,d1
	;	move.b	(Timer_centisecond_2P).w,d1
		move.b	3(a6),d1
		mulu.w	#$1B0,d1
		lsr.l	#8,d1
		bsr.w	sub_86B0
		move.w	#$486,d2
		moveq	#0,d0
		move.w	(Ring_count).w,d1
		bsr.w	sub_86B0
		move.w	#$49A,d2
	;	move.w	(Ring_count_2P).w,d1
		move.w	4(a6),d1
		bsr.w	sub_86B0
		move.w	#$526,d2
		moveq	#0,d0
		move.w	(Rings_Collected).w,d1
		bsr.w	sub_86B0
		move.w	#$53A,d2
	;	move.w	(Rings_Collected_2P).w,d1
		move.w	13(a6),d1
		bsr.w	sub_86B0
		move.w	#$5C6,d2
		moveq	#0,d0
		move.w	(Monitors_Broken).w,d1
		bsr.w	sub_86B0
		move.w	#$5DA,d2
	;	move.w	(Monitors_Broken_2P).w,d1
		move.w	11(a6),d1
		bsr.w	sub_86B0
		bsr.w	sub_8476
		move.w	#$364,d2
		move.w	#$6000,d0
		move.l	(Score).w,d1
	;	sub.l	(Score_2P).w,d1
		sub.l	7(a6),d1
		bsr.w	sub_8652
		move.w	#$404,d2
	;	move.l	(Timer_2P).w,d1
		move.l	(a6),d1
		sub.l	(Timer).w,d1
		bsr.w	sub_8652
		move.w	#$4A4,d2
		moveq	#0,d1
		move.w	(Ring_count).w,d1
	;	sub.w	(Ring_count_2P).w,d1
		sub.w	4(a6),d1
		bsr.w	sub_8652
		move.w	#$544,d2
		moveq	#0,d1
		move.w	(Rings_Collected).w,d1
	;	sub.w	(Rings_Collected_2P).w,d1
		sub.w	13(a6),d1
		bsr.w	sub_8652
		move.w	#$5E4,d2
		moveq	#0,d1
		move.w	(Monitors_Broken).w,d1
	;	sub.w	(Monitors_Broken_2P).w,d1
		sub.w	11(a6),d1
		bsr.w	sub_8652

	; don't show the numbers of TOTAL
	;	move.w	#$706,d2
		moveq	#0,d0
		moveq	#0,d1
		move.b	(a4),d1
	;	bsr.w	sub_86B0
	;	move.w	#$70E,d2
		moveq	#0,d1
		move.b	1(a4),d1
	;	bsr.w	sub_86B0
		move.w	(a4),(SS_Total_Won).w
		rts
; ===========================================================================
; loc_82FA:
Setup2PResults_Zone:
		move.w	#$242,d2
		moveq	#0,d0
		bsr.w	sub_8672
		bsr.w	sub_84A4
		lea	(SS_Total_Won).w,a4
		clr.w	(a4)
		move.w	#$398,d6
		bsr.w	sub_854A
		move.w	#$488,d6
		bsr.w	sub_854A
		move.w	#$618,d6
		bsr.w	sub_854A
		rts
; ===========================================================================
; loc_8328:
Setup2PResults_Game:
		lea	(Results_Data_2P).w,a5
		lea	(SS_Total_Won).w,a4
		clr.w	(a4)
		move.w	#$208,d6
		bsr.w	sub_84C4
		move.w	#$258,d6
		bsr.w	sub_84C4
		move.w	#$2A8,d6
		bsr.w	sub_84C4
		move.w	#$348,d6
		bsr.w	sub_84C4
		move.w	#$398,d6
		bsr.w	sub_84C4
		move.w	#$3E8,d6
		bsr.w	sub_84C4
		move.w	#$488,d6
		bsr.w	sub_84C4
		move.w	#$4D8,d6
		bsr.w	sub_84C4
		move.w	#$528,d6
		bsr.w	sub_84C4
		move.w	#$5C8,d6
		bsr.w	sub_84C4
		move.w	#$618,d6
		bsr.w	sub_84C4
		move.w	#$668,d6
		bsr.w	sub_84C4
		move.w	#$70A,d2
		moveq	#0,d0
		moveq	#0,d1
		move.b	(a4),d1
		bsr.w	sub_86B0
		move.w	#$710,d2
		moveq	#0,d1
		move.b	1(a4),d1
		bsr.w	sub_86B0
		rts
; ===========================================================================
; loc_83B0:
Setup2PResults_SpecialAct:
		move.w	#$266,d2
		moveq	#0,d1
		move.b	(Current_Act_2P).w,d1
		addq.b	#1,d1
		bsr.w	sub_86B0
		move.w	#$4D6,d2
		moveq	#0,d0
		move.w	($FFFFFFA0).w,d1
		bsr.w	sub_86B0
		move.w	#$4E6,d2
		move.w	($FFFFFFA2).w,d1
		bsr.w	sub_86B0
		move.w	#$576,d2
		moveq	#0,d0
		move.w	($FFFFFFA4).w,d1
		bsr.w	sub_86B0
		move.w	#$586,d2
		move.w	($FFFFFFA6).w,d1
		bsr.w	sub_86B0
		move.w	#$616,d2
		moveq	#0,d0
		move.w	($FFFFFFA8).w,d1
		bsr.w	sub_86B0
		move.w	#$626,d2
		move.w	($FFFFFFAA).w,d1
		bsr.w	sub_86B0
		bsr.w	sub_8476
		move.w	#$6000,d0
		move.w	#$4F0,d2
		moveq	#0,d1
		move.w	($FFFFFFA0).w,d1
		sub.w	($FFFFFFA2).w,d1
		bsr.w	sub_8652
		move.w	#$590,d2
		moveq	#0,d1
		move.w	($FFFFFFA4).w,d1
		sub.w	($FFFFFFA6).w,d1
		bsr.w	sub_8652
		move.w	#$630,d2
		moveq	#0,d1
		move.w	($FFFFFFA8).w,d1
		sub.w	($FFFFFFAA).w,d1
		bsr.w	sub_8652
		move.w	(a4),(SS_Total_Won).w
		rts
; ===========================================================================
; loc_8452:
Setup2PResults_SpecialZone:
		bsr.w	sub_84A4
		lea	(SS_Total_Won).w,a4
		clr.w	(a4)
		move.w	#$4D4,d6
		bsr.w	sub_85CE
		move.w	#$574,d6
		bsr.w	sub_85CE
		move.w	#$614,d6
		bsr.w	sub_85CE
		rts

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_8476:
		lea	(EHZ_Results_2P).w,a4
		move.b	(Current_Zone_2P).w,d0
		beq.s	loc_8494
		lea	(MCZ_Results_2P).w,a4
		subq.b	#1,d0
		beq.s	loc_8494
		lea	(CNZ_Results_2P).w,a4
		subq.b	#1,d0
		beq.s	loc_8494
		lea	(SS_Results_2P).w,a4

loc_8494:
		moveq	#0,d0
		move.b	(Current_Act_2P).w,d0
		add.w	d0,d0
		lea	(a4,d0.w),a4
		clr.w	(a4)
		rts
; End of function sub_8476


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_84A4:
		lea	(EHZ_Results_2P).w,a5
		move.b	(Current_Zone_2P).w,d0
		beq.s	locret_84C2	; rts
		lea	(MCZ_Results_2P).w,a5
		subq.b	#1,d0
		beq.s	locret_84C2	; rts
		lea	(CNZ_Results_2P).w,a5
		subq.b	#1,d0
		beq.s	locret_84C2	; rts
		lea	(SS_Results_2P).w,a5

locret_84C2
		rts
; End of function sub_84A4


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_84C4:
		move.w	(a5),d0
		bmi.s	loc_84FC
		move.w	d6,d2
		moveq	#0,d0
		moveq	#0,d1
		move.b	(a5),d1
		bsr.w	sub_86B0
		addq.w	#8,d6
		move.w	d6,d2
		moveq	#0,d1
		move.b	1(a5),d1
		bsr.w	sub_86B0
		addi.w	#$12,d6
		move.w	d6,d2
		move.w	#$6000,d0
		moveq	#0,d1
		move.b	(a5),d1
		sub.b	1(a5),d1
		bsr.w	sub_8652
		addq.w	#2,a5
		rts
; ===========================================================================
loc_84FC:
		addq.w	#4,d6
		not.w	d0
		bne.s	loc_8522
		lea	(Text2P_NoGame).l,a1
		move.w	d6,d2
		bsr.w	loc_8698
		addi.w	#$16,d6
		move.w	d6,d2
		lea	(Text2P_Blank).l,a1
		bsr.w	loc_8698
		addq.w	#2,a5
		rts
; ===========================================================================
loc_8522:
		moveq	#0,d0
		lea	(Text2P_GameOver).l,a1
		move.w	d6,d2
		bsr.w	loc_8698
		addi.w	#$16,d6
		move.w	d6,d2
		move.w	#$6000,d0
		moveq	#0,d1
		move.b	(a5),d1
		sub.b	1(a5),d1
		bsr.w	sub_8652
		addq.w	#2,a5
		rts
; End of function sub_84C4


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_854A:
		move.w	(a5),d0
		bmi.s	loc_8582
		move.w	d6,d2
		moveq	#0,d0
		moveq	#0,d1
		move.b	(a5),d1
		bsr.w	sub_86B0
		addq.w	#8,d6
		move.w	d6,d2
		moveq	#0,d1
		move.b	1(a5),d1
		bsr.w	sub_86B0
		addi.w	#$C,d6
		move.w	d6,d2
		move.w	#$6000,d0
		moveq	#0,d1
		move.b	(a5),d1
		sub.b	1(a5),d1
		bsr.w	sub_8652
		addq.w	#2,a5
		rts
; ===========================================================================

loc_8582:
		not.w	d0
		bne.s	loc_85A6
		lea	(Text2P_NoGame).l,a1
		move.w	d6,d2
		bsr.w	loc_8698
		addi.w	#$14,d6
		move.w	d6,d2
		lea	(Text2P_Blank).l,a1
		bsr.w	loc_8698
		addq.w	#2,a5
		rts
; ===========================================================================

loc_85A6:
		moveq	#0,d0
		lea	(Text2P_GameOver).l,a1
		move.w	d6,d2
		bsr.w	loc_8698
		addi.w	#$14,d6
		move.w	d6,d2
		move.w	#$6000,d0
		moveq	#0,d1
		move.b	(a5),d1
		sub.b	1(a5),d1
		bsr.w	sub_8652
		addq.w	#2,a5
		rts
; End of function sub_854A


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_85CE:
		move.w	(a5),d0
		bmi.s	loc_8608
		move.w	d6,d2
		moveq	#0,d0
		moveq	#0,d1
		move.b	(a5),d1
		bsr.w	sub_86B0
		addi.w	#$C,d6
		move.w	d6,d2
		moveq	#0,d1
		move.b	1(a5),d1
		bsr.w	sub_86B0
		addi.w	#$10,d6
		move.w	d6,d2
		move.w	#$6000,d0
		moveq	#0,d1
		move.b	(a5),d1
		sub.b	1(a5),d1
		bsr.w	sub_8652
		addq.w	#2,a5
		rts
; ===========================================================================
loc_8608:
		not.w	d0
		bne.s	loc_862C
		lea	(Text2P_NoGame).l,a1
		move.w	d6,d2
		addq.w	#4,d2
		bsr.w	loc_8698
		addi.w	#$14,d6
		move.w	d6,d2
		lea	(Text2P_Blank).l,a1
		bsr.w	loc_8698
		addq.w	#2,a5
		rts
; ===========================================================================

loc_862C:
		moveq	#0,d0
		lea	(Text2P_GameOver).l,a1
		move.w	d6,d2
		bsr.w	loc_8698
		addi.w	#$14,d6
		move.w	d6,d2
		move.w	#$6000,d0
		moveq	#0,d1
		move.b	(a5),d1
		sub.b	1(a5),d1
		bsr.w	sub_8652
		addq.w	#2,a5
		rts
; End of function sub_85CE


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_8652:
		lea	(Text2P_Tied).l,a1
		beq.s	loc_8670
		bcs.s	loc_8666
		lea	(Text2P_1P).l,a1
		addq.b	#1,(a4)
		bra.s	loc_8670
; ===========================================================================
loc_8666:
		lea	(Text2P_2P).l,a1
		addq.b	#1,1(a4)

loc_8670:
		bra.s	loc_8698
; End of function sub_8652


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_8672:
	;	lea	(Text2P_EmeraldHill).l,a1
	;	move.b	(Current_Zone_2P).w,d1
	;	beq.s	loc_8698
	;	lea	(Text2P_MysticCave).l,a1
	;	subq.b	#1,d1
	;	beq.s	loc_8698
	;	lea	(Text2P_CasinoNight).l,a1
	;	subq.b	#1,d1
	;	beq.s	loc_8698
	;	lea	(Text2P_SpecialStage).l,a1

		lea		(Text2P_ScrapBrain).l,a1	; load Scrap Brain text
		cmpi.w	#$103,($FFFFFE10).w			; check if level is	SBZ 3
		beq.s	loc_8698					; if yes, brach

		lea		(Text2P_FinalZone).l,a1		; load Final Zone text
		cmpi.w	#$502,($FFFFFE10).w			; check if level is	FZ
		beq.s	loc_8698					; if yes, brach

		lea		(Text2P_GreenHill).l,a1		; load Green Hill text
		cmpi.b	#0,($FFFFFE10).w			; check if level is	GHZ
		beq.s	loc_8698					; if yes, brach

		lea		(Text2P_Labyrinth).l,a1		; load Labyrinth text
		cmpi.b	#1,($FFFFFE10).w			; check if level is	LZ
		beq.s	loc_8698					; if yes, brach

		lea		(Text2P_Marble).l,a1		; load Marble text
		cmpi.b	#2,($FFFFFE10).w			; check if level is	MZ
		beq.s	loc_8698					; if yes, brach

		lea		(Text2P_StarLight).l,a1		; load Star Light text
		cmpi.b	#3,($FFFFFE10).w			; check if level is	SLZ
		beq.s	loc_8698					; if yes, brach

		lea		(Text2P_SpringYard).l,a1	; load Spring Yard text
		cmpi.b	#4,($FFFFFE10).w			; check if level is	SYZ
		beq.s	loc_8698					; if yes, brach

		lea		(Text2P_ScrapBrain).l,a1	; load ScrapBrain text
		cmpi.b	#5,($FFFFFE10).w			; check if level is	SBZ
	;	beq.s	loc_8698					; if yes, brach


loc_8698:
		lea	(Chunk_Table).l,a2
		lea	(a2,d2.w),a2
		moveq	#0,d1
		move.b	(a1)+,d1

loc_86A6:
		move.b	(a1)+,d0
		move.w	d0,(a2)+
		dbf	d1,loc_86A6
		rts
; End of function sub_8672


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_86B0:
		lea	(Chunk_Table).l,a2
		lea	(a2,d2.w),a2
		lea	(word_86F0).l,a3
		moveq	#0,d2
		moveq	#2,d5

loc_86C4:
		moveq	#0,d3
		move.w	(a3)+,d4

loc_86C8:
		sub.w	d4,d1
		bcs.s	loc_86D0
		addq.w	#1,d3
		bra.s	loc_86C8
; ---------------------------------------------------------------------------
loc_86D0:
		add.w	d4,d1
		tst.w	d5
		beq.s	loc_86E0
		tst.w	d3
		beq.s	loc_86DC
		moveq	#1,d2

loc_86DC:
		tst.w	d2
		beq.s	loc_86E8

loc_86E0:
		addi.b	#$10,d3
		move.b	d3,d0
		move.w	d0,(a2)

loc_86E8:
		addq.w	#2,a2
		dbf	d5,loc_86C4
		rts
; End of function sub_86B0

; ===========================================================================
word_86F0:
		dc.w   100
		dc.w	10	; 1
		dc.w	 1	; 2

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_86F6:
		lea	(Chunk_Table).l,a2
		lea	(a2,d2.w),a2
		lea	(dword_8732).l,a3
		moveq	#0,d2
		moveq	#5,d5

loc_870A:
		moveq	#0,d3
		move.l	(a3)+,d4

loc_870E:
		sub.l	d4,d1
		bcs.s	loc_8716
		addq.w	#1,d3
		bra.s	loc_870E
; ===========================================================================
loc_8716:
		add.l	d4,d1
		tst.w	d3
		beq.s	loc_871E
		moveq	#1,d2

loc_871E:
		tst.w	d2
		beq.s	loc_872A
		addi.b	#$10,d3
		move.b	d3,d0
		move.w	d0,(a2)

loc_872A:
		addq.w	#2,a2
		dbf	d5,loc_870A
		rts
; End of function sub_86F6

; ===========================================================================
dword_8732:
		dc.l 100000
		dc.l  10000
		dc.l   1000
		dc.l    100
		dc.l     10
		dc.l      1

		; set the character set for menu text
	;	charset '@',"\27\30\31\32\33\34\35\36\37\38\39\40\41\42\43\44\45\46\47\48\49\50\51\52\53\54\55"
	;	charset '0',"\16\17\18\19\20\21\22\23\24\25"
	;	charset '*',$1A
	;	charset ':',$1C
	;	charset '.',$1D
	;	charset ' ',0

		; Menu text
;menutxt	macro	text
	;	dc.b	strlen(text)-1
	;	dc.b	text
	;	endm
;Text2P_EmeraldHill:	menutxt	"EMERALD HILL"	; byte_874A:
;Text2P_MysticCave:	menutxt	" MYSTIC CAVE"	; byte_8757:
;Text2P_CasinoNight:	menutxt	"CASINO NIGHT"	; byte_8764:
;Text2P_SpecialStage:	menutxt	"SPECIAL STAGE"	; byte_8771:
;Text2P_Special:		menutxt	"   SPECIAL  "	; byte_877F:
;Text2P_Zone:		menutxt	"ZONE "		; byte_878C:
;Text2P_Stage:		menutxt	"STAGE"		; byte_8792:
;Text2P_GameOver:	menutxt	"GAME OVER"	; byte_8798:
;Text2P_TimeOver:	menutxt	"TIME OVER"
;Text2P_NoGame:		menutxt	"NO GAME"	; byte_87AC:
;Text2P_Tied:		menutxt	"TIED"		; byte_87B4:
;Text2P_1P:		menutxt	" 1P"		; byte_87B9:
;Text2P_2P:		menutxt	" 2P"		; byte_87BD:
;Text2P_Blank:		menutxt	"    "		; byte_87C1:


; ---------------------------------------------------------------------------
; Result Sceen - text
;	dc.b	number of letters, letters
; to align the text, use $B in number of letters
; ---------------------------------------------------------------------------

Text2P_GreenHill		dc.b	$B,_M,_A,_G,_I,_C,__,_F,_O,_R,_E,_S,_T	; GreenHill
Text2P_Labyrinth		dc.b	$B,__,__,__,_L,_A,_B,_Y,_R,_I,_N,_T,_H	; Labyrinth
Text2P_Marble			dc.b	$B,__,__,__,__,_H,_O,_T,__,_T,_R,_A,_P	; Marble
Text2P_StarLight		dc.b	$B,__,__,__,_F,_A,_S,_T,__,_R,_A,_C,_E	; StarLight
Text2P_SpringYard		dc.b	$B,__,__,__,_L,_O,_S,_T,__,_C,_I,_T,_Y	; SpringYard
Text2P_ScrapBrain		dc.b	$B,__,_S,_C,_R,_A,_P,__,_B,_R,_A,_I,_N	; ScrapBrain
Text2P_FinalZone		dc.b	$B,__,__,_F,_I,_N,_A,_L,__,_Z,_O,_N,_E	; FinalZone

;Text2P_EmeraldHill:		dc.b	$C,_E,_M,_E,_R,_A,_L,_D,__,_H,_I,_L,_L,__	; byte_874A:
;Text2P_MysticCave:		dc.b	$C,__,_M,_Y,_S,_T,_I,_C,__,_C,_A,_V,_E,__	; byte_8757:
;Text2P_CasinoNight:		dc.b	$C,_C,_A,_S,_I,_N,_O,__,_N,_I,_G,_H,_T,__	; byte_8764:
Text2P_SpecialStage:	dc.b	$D,_S,_P,_E,_C,_I,_A,_L,__,_S,_T,_A,_G,_E,__	; byte_8771:
Text2P_Special:			dc.b	$C,__,__,__,_S,_P,_E,_C,_I,_A,_L,__,__,__	; byte_877F:
Text2P_Zone:			dc.b	$4,_Z,_O,_N,_E,__	; byte_878C:
Text2P_Stage:			dc.b	$4,_S,_T,_A,_G,_E	; byte_8792:
Text2P_GameOver:		dc.b	$8,_G,_A,_M,_E,__,_O,_V,_E,_R	; byte_8798:
Text2P_TimeOver:		dc.b	$8,_T,_I,_M,_E,__,_O,_V,_E,_R
Text2P_NoGame:			dc.b	$6,_N,_O,__,_G,_A,_M,_E	; byte_87AC:
Text2P_Tied:			dc.b	$3,_T,_I,_E,_D		; byte_87B4:
Text2P_1P:				dc.b	$2,_Y,_O,_U		; byte_87B9:
Text2P_2P:				dc.b	$3,_L,_O,_S,_E		; byte_87BD:
Text2P_Blank:			dc.b	$3,__,__,__,__		; byte_87C1:
		even
;	charset ; reset character set

; off_87DC:
TwoPlayerResultsPointers:
VsResultsScreen_Act:	dc.l Map_2PActResults, Setup2PResults_Act
VsResultsScreen_Zone:	dc.l Map_2PZoneResults, Setup2PResults_Zone
VsResultsScreen_Game:	dc.l Map_2PGameResults, Setup2PResults_Game
VsResultsScreen_SS:	dc.l Map_2PSpecialStageActResults, Setup2PResults_SpecialAct
VsResultsScreen_SSZone:	dc.l Map_2PSpecialStageZoneResults, Setup2PResults_SpecialZone

; 2P single act results screen (enigma compressed)
; byte_8804:
;Map_2PActResults:	incbin "2P Act Results.bin"

; 2P zone results screen (enigma compressed)
; byte_88CE:
;Map_2PZoneResults:	incbin "2P Zone Results.bin"

; 2P game results screen (after all 4 zones) (enigma compressed)
; byte_8960:
;Map_2PGameResults:	incbin "2P Game Results.bin"

; 2P special stage act results screen (enigma compressed)
; byte_8AA4:
;Map_2PSpecialStageActResults:	incbin "2P Special Stage Act Results.bin"

; 2P special stage zone results screen (enigma compressed)
; byte_8B30:
;Map_2PSpecialStageZoneResults:	incbin "2P Special Stage Zone Results.bin"

;	even