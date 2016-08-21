;-------------------------------------------------------------------------------
; some constants and variables of this code and other constants of sonic 2 used in this code (s2_beginning.asm, s2_results.asm, s2_menu.asm, s2_option.asm, s2_end.asm and imported objects of Sonic 2)
;-------------------------------------------------------------------------------


; files
ArtNem_FontStuff				equ	Nem_MenuFont
ArtNem_1P2PWins					equ Nem_1P2PWins
MapEng_MenuBack					equ	Eni_MenuBg

; ===========================================================================
; routines
JmpTo_PlayMusic					equ	PlaySound
WaitForVint						equ	DelayProgram
JmpTo2_Dynamic_Normal			equ	Dynamic_Menu
Anim_SonicMilesBG				equ	Sonic_Miles_Frame_Select
level_select_cheat				equ	Code_Level_Select
continues_cheat					equ	Code_Continues
CheckCheats						equ	Menu_Code_Test
JmpTo_PlaneMapToVRAM			equ	ShowVDPGraphics
PlaneMapToVRAM					equ	ShowVDPGraphics
RunObjects						equ	ObjectsLoad

; ===========================================================================
; constants
Level_Select_Menu_snd			=	$0091
MusID_Options					=	$0091
SndID_ContinueJingle			=	$00BF
Emerald_Snd						=	$00F7
Ring_Snd						=	$00B5
Volume_Down						=	$00E0
Stop_Sound						=	$00E4

PalID_Menu						=	$14
MusID_2PResult					=	$81

GameModeID_Level				=	$0C
GameModeID_SegaScreen			=	$00
GameModeID_SpecialStage			=	$10
GameModeID_2PResults			=	$20
GameModeID_2PLevelSelect		=	$20

button_up						=	0
button_down						=	1
button_left						=	2
button_right					=	3
button_A						=	6
button_A_mask					=	$40
button_B_mask					=	$10
button_C_mask					=	$20
button_start_mask				=	$80

VsRSID_Act						equ	0
VsRSID_Zone						equ	1
VsRSID_Game						equ	2
VsRSID_SS						equ	3
VsRSID_SSZone					equ	4

ObjID_HUD						equ	$90
id								equ	$40

render_flags					equ	1
art_tile						equ	2
mappings						equ	4
x_pixel							equ	8
y_pixel =		2+x_pos
x_pos							equ	8
y_pos							equ	$C
x_vel							equ	$10
y_vel							equ	$12
inertia							equ	$20
priority						equ	$18
width_pixels					equ	$14
mapping_frame					equ	$1A
anim_frame						equ	$1B
anim							equ	$1C
next_anim						equ	$1D
anim_frame_duration				equ	$1E
status							equ	$22
routine							equ	$24
angle							equ	$26
flip_angle						equ	$27
flip_turned						equ	$29
obj_control						equ	$2A
status_secondary				equ	$2B
objoff_30						equ $30
objoff_31						equ	$31

__ = $00
_0 = $10
_1 = $11
_2 = $12
_A = $1E
_B = $1F
_C = $20
_D = $21
_E = $22    
_F = $23
_G = $24
_H = $25
_I = $26
_J = $27
_K = $28
_L = $29
_M = $2A
_N = $2B
_O = $2C
_P = $2D
_Q = $2E
_R = $2F
_S = $30
_T = $31
_U = $32
_V = $33
_W = $34
_X = $35
_Y = $36
_Z = $37
_st = $1A

; ===========================================================================
; variables and flags
VDP_control_port				equ	$C00004
Chunk_Table						equ	$FFFF0000
VDP_Command_Buffer_Slot			equ	$FFFFC8FC
MainCharacter					equ	$FFFFD000
VSResults_HUD					equ	$FFFFD000
VDP_Command_Buffer				equ	$FFFFDC00
Camera_X_pos					equ	$FFFFEE00
Camera_Y_pos					equ	$FFFFEE04
Game_Mode						equ	$FFFFF600
VDP_Reg1_val					equ	$FFFFF60C
Ctrl_1_Press					equ	$FFFFF605
Demo_Time_left					equ	$FFFFF614
Vscroll_Factor					equ	$FFFFF61A
Vint_routine					equ	$FFFFF62A
Plc_Buffer						equ	$FFFFF680
Level_started_flag				equ	$FFFFF711
Vint_runcount					equ	$FFFFFE0C
Current_ZoneAndAct				equ	$FFFFFE10
Current_Zone_2P					equ	$FFFFFE10
Current_Act						equ	$FFFFFE11
Current_Act_2P					equ	$FFFFFE11
Life_count						equ	$FFFFFE12
Current_Special_Stage			equ	$FFFFFE16
Continue_count					equ	$FFFFFE18
Super_Sonic_flag				equ $FFFFFE19
Ring_count						equ	$FFFFFE20
Timer							equ	$FFFFFE22
Timer_minute_word				equ	$FFFFFE22
Timer_second					equ	$FFFFFE24
Timer_frame						equ	$FFFFFE25
Score							equ	$FFFFFE26
Last_star_pole_hit				equ	$FFFFFE30
Emeralds_flag					equ	$FFFFFE57
Game_Over_2P					equ	$FFFFFEC2
Sound_test_sound				equ	$FFFFFF84
Options_menu_box				equ	$FFFFFF8E
Results_Screen_2P				equ	$FFFFFF90
SS_Total_Won					equ	$FFFFFF92
Monitors_Broken					equ	$FFFFFF96
Rings_Collected					equ	$FFFFFF98
Results_Data_2P					equ	$FFFFFFA8
EHZ_Results_2P					equ	$FFFFFFA8
MCZ_Results_2P					equ	$FFFFFFAE
CNZ_Results_2P					equ	$FFFFFFB4
SS_Results_2P					equ	$FFFFFFBA
Level_select_flag				equ	$FFFFFFE0
Slow_Motion_Flag				equ	$FFFFFFE1
Debug_Mode_Flag					equ	$FFFFFFE2
Graphics_Flags					equ	$FFFFFFF8
;Underwater_palette_2 = 			$FFFFF000 ; not sure what it's used for but it's only used when there's water
;Underwater_palette = 		$FFFFFA80 ; main palette for underwater parts of the screen
;Underwater_palette_line4 = 	$FFFFF0E0
; ===========================================================================