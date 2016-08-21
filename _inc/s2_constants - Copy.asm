;--------------------------------------------------------------------------------------------
; some constants and variables of this code and other constants of sonic 2 used in this code
;--------------------------------------------------------------------------------------------

; files
Nem_LevelIcons					equ	Level_Icons
Eni_MenuBg						equ MapEng_MenuBack
ArtNem_FontStuff				equ	Nem_MenuFont
ArtNem_1P2PWins					equ Nem_1P2PWins
MapEng_MenuBack					equ	Menu_Mappings
MapEng_Options					equ	Eni_MenuBox
MapUnc_Sonic					equ	Map_Sonic
Obj38_MapUnc_1DBE4				equ	Map_obj38
byte_1DBD6						equ	Ani_obj38
ArtUnc_Sonic					equ	Art_Sonic
MapRUnc_Sonic					equ	SonicDynPLC
Load_Sprites					equ ObjPosLoad
; ===========================================================================
; routines
JmpTo_PlayMusic					equ	PlaySound
Play_Sfx						equ	PlaySound_Special	
PlayMusic						equ	PlaySound
JmpTo_PlaySoundStereo			equ	PlaySound_Special
WaitForVint						equ	DelayProgram
JmpTo2_Dynamic_Normal			equ	Dynamic_Menu
Anim_SonicMilesBG				equ	Sonic_Miles_Frame_Select
level_select_cheat				equ	Code_Level_Select
continues_cheat					equ	Code_Continues
CheckCheats						equ	Menu_Code_Test
JmpTo_PlaneMapToVRAM			equ	ShowVDPGraphics
PlaneMapToVRAM					equ	ShowVDPGraphics
Player_ResetAirTimer			equ	ResumeMusic
RunObjects						equ	ObjectsLoad
Sonic_InputAcceleration_Path	equ	Sonic_Move
SingleObjectLoad				equ	SingleObjLoad
S1SingleObjectLoad				equ	SingleObjLoad2
CalcRoomInFront					equ	Sonic_WalkSpeed
AnglePos						equ	Sonic_AnglePos
ObjectMove						equ	SpeedToPos
ObjectMoveAndFall				equ	ObjectFall
KillSonic						equ	KillCharacter
CheckGameOver					equ	GameOver
Sonic_CheckFloor				equ	Sonic_HitFloor
checkleftceilingdist			equ	loc_14FD6
CheckCeilingDist				equ	Sonic_DontRunOnWalls
checkleftwalldist				equ	Sonic_HitWall
CheckRightCeilingDist			equ	sub_14E50
CheckRightWallDist				equ	sub_14EB4
CalcRoomOverHead				equ	sub_14D48
ChkFloorEdge					equ	ObjHitFloor
ChkFloorEdge_Part2				equ	ObjHitFloor2
Sonic_HitFloor2					equ	loc_13772
Sonic_HitCeiling2				equ	loc_13758
Sonic_HitRightWall				equ loc_1373E
ObjCheckFloorDist				equ ObjHitFloor
loc_1B02C						equ	loc_13726
Sonic_HitCeilingAndWalls		equ loc_136E2
Sonic_HitFloorS2				equ	loc_136B4
Sonic_DoLevelCollision			equ	Sonic_Floor
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

; ---------------------------------------------------------------------------
; Controller Buttons
;
; Buttons bit numbers
button_up:                      EQU     0
button_down:                    EQU     1
button_left:                    EQU     2
button_right:                   EQU     3
button_B:                       EQU     4
button_C:                       EQU     5
button_A:                       EQU     6
button_start:                   EQU     7
; Buttons masks (1 << x == pow(2, x))
button_up_mask:                 EQU     1<<button_up    ; $01
button_down_mask:               EQU     1<<button_down  ; $02
button_left_mask:               EQU     1<<button_left  ; $04
button_right_mask:              EQU     1<<button_right ; $08
button_B_mask:                  EQU     1<<button_B     ; $10
button_C_mask:                  EQU     1<<button_C     ; $20
button_A_mask:                  EQU     1<<button_A     ; $40
button_start_mask:              EQU     1<<button_start ; $80


VsRSID_Act						equ	0
VsRSID_Zone						equ	1
VsRSID_Game						equ	2
VsRSID_SS						equ	3
VsRSID_SSZone					equ	4

ObjID_HUD						equ	$90
id2								equ	$40

id equ                      0 ; object ID (if you change this, change insn1op and insn2op in s2.macrosetup.asm, if you still use them)
render_flags equ		  1 ; bitfield ; bit 7 = onscreen flag, bit 0 = x mirror, bit 1 = y mirror, bit 2 = coordinate system
art_tile equ		  2 ; and 3 ; start of sprite's art
mappings equ		  4 ; and 5 and 6 and 7
x_pos equ			  8 ; and 9 ... some objects use $A and $B as well when extra precision is required (see ObjectMove) ... for screen-space objects this is called x_pixel instead
x_sub equ			 $A
y_pos equ			 $C ; and $D ... some objects use $E and $F as well when extra precision is required ... screen-space objects use y_pixel instead
y_sub equ			 $E
priority equ		$18 ; 0 = front
width_pixels equ		$14
mapping_frame equ		$1A
; ---------------------------------------------------------------------------
; conventions followed by most objects:
x_vel equ			$10 ; and $11 ; horizontal velocity
y_vel equ			$12 ; and $13 ; vertical velocity
y_radius equ		$16 ; collision width / 2
x_radius equ		$17 ; collision height / 2
anim_frame equ		$1B
anim equ			$1C
next_anim equ		$1D
anim_frame_duration equ	$1E
status equ		$22 ; note: exact meaning depends on the object... for sonic/tails: bit 0: leftfacing. bit 1: inair. bit 2: spinning. bit 3: onobject. bit 4: rolljumping. bit 5: pushing. bit 6: underwater.
routine equ		$24
routine_secondary equ	$25
angle equ			$26 ; angle about the zequ0 axis (360 degrees equ 256)
; ---------------------------------------------------------------------------
; conventions followed by many objects but NOT sonic/tails:
collision_flags equ	$20
collision_property equ	$21
respawn_index equ		$23
subtype equ		$28
; ---------------------------------------------------------------------------
; conventions specific to sonic/tails (Obj01, Obj02, and ObjDB):
; note: $1F, $20, and $21 are unused and available
inertia equ		$20 ; and $15 ; directionless representation of speed... not updated in the air
flip_angle equ		$31 ; angle about the xequ0 axis (360 degrees equ 256) (twist/tumble)
air_left equ		$28
flip_turned equ		$35 ; 0 for normal, 1 to invert flipping (it's a 180 degree rotation about the axis of Sonic's spine, so he stays in the same position but looks turned around)
obj_control equ		$2A ; 0 for normal, 1 for hanging or for resting on a flipper, $81 for going through CNZ/OOZ/MTZ tubes or stopped in CNZ cages or stoppers or flying if Tails
status_secondary equ	$2B
flips_remaining equ	$33 ; number of flip revolutions remaining
flip_speed equ		$34 ; number of flip revolutions per frame / 256
move_lock equ		$2E ; and $2F ; horizontal control lock, counts down to 0
invulnerable_time equ	$30 ; and $31 ; time remaining until you stop blinking
invincibility_time equ	$32 ; and $33 ; remaining
speedshoes_time equ	$34 ; and $35 ; remaining
next_tilt equ		$36 ; angle on ground in front of sprite
tilt equ			$37 ; angle on ground
stick_to_convex equ	$38 ; 0 for normal, 1 to make Sonic stick to convex surfaces like the rotating discs in Sonic 1 and 3 (unused in Sonic 2 but fully functional)
spindash_flag equ		$39 ; 0 for normal, 1 for charging a spindash or forced rolling
spindash_counter equ	$3A ; and $3B
jumping equ		$3C
interact equ		$3D ; RAM address of the last object Sonic stood on, minus $FFFFB000 and divided by $40
layer equ			$3E ; collision plane, track switching...
layer_plus equ		$3F ; always same as layer+1 ?? used for collision somehow
; ---------------------------------------------------------------------------
; conventions followed by several objects but NOT sonic/tails:
y_pixel equ		2+x_pos ; and 3+x_pos ; y coordinate for objects using screen-space coordinate system
x_pixel equ		x_pos ; and 1+x_pos ; x coordinate for objects using screen-space coordinate system
parent equ		$3E ; and $3F ; address of object that owns or spawned this one, if applicable
NumberOfZones equ $20
; TODO: $2C is often parent instead (see LoadChildObject); consider defining parent2 = $2C and changing some objoff_2Cs to that
; ---------------------------------------------------------------------------
; conventions followed by some/most bosses:
boss_subtype		= $A
boss_invulnerable_time	= $14
boss_sine_count		= $1A	; mapping_frame
boss_routine		= $26	; angle
boss_defeated		= $2C
boss_hitcount2		= $32
boss_hurt_sonic		= $38	; flag set by collision response routine when sonic has just been hurt (by boss?)
; ---------------------------------------------------------------------------
; when childsprites are activated (i.e. bit #6 of render_flags set)
mainspr_mapframe	= $B
mainspr_width		= $E
mainspr_childsprites 	= $F	; amount of child sprites
mainspr_height		= $14
sub2_x_pos		= $10	; x_vel
sub2_y_pos		= $12	; y_vel
sub2_mapframe		= $15
sub3_x_pos		= $16	; y_radius
sub3_y_pos		= $18	; priority
sub3_mapframe		= $1B	; anim_frame
sub4_x_pos		= $1C	; anim
sub4_y_pos		= $1E	; anim_frame_duration
sub4_mapframe		= $21	; collision_property
sub5_x_pos		= $22	; status
sub5_y_pos		= $24	; routine
sub5_mapframe		= $27
sub6_x_pos		= $28	; subtype
sub6_y_pos		= $2A
sub6_mapframe		= $2D
sub7_x_pos		= $2E
sub7_y_pos		= $30
sub7_mapframe		= $33
sub8_x_pos		= $34
sub8_y_pos		= $36
sub8_mapframe		= $39
sub9_x_pos		= $3A
sub9_y_pos		= $3C
sub9_mapframe		= $3F
next_subspr		= $6

; ---------------------------------------------------------------------------
; unknown or inconsistently used offsets that are not applicable to sonic/tails:
; (provided because rearrangement of the above values sometimes requires making space in here too)
objoff_A equ		2+x_pos ; note: x_pos can be 4 bytes, but sometimes the last 2 bytes of x_pos are used for other unrelated things
objoff_B equ		3+x_pos
objoff_E equ		2+y_pos
objoff_F equ		3+y_pos
objoff_14 equ		$14
objoff_15 equ		$15
objoff_1F equ		$1F
objoff_27 equ		$27
objoff_28 equ		$28 ; overlaps subtype, but a few objects use it for other things anyway
objoff_29 equ $29
objoff_2A equ $2A
objoff_2B equ $2B
objoff_2C equ $2C
objoff_2D equ $2D
objoff_2E equ $2E
objoff_2F equ $2F
objoff_30 equ $30
objoff_31 equ $31
objoff_32 equ $32
objoff_33 equ $33
objoff_34 equ $34
objoff_35 equ $35
objoff_36 equ $36
objoff_37 equ $37
objoff_38 equ $38
objoff_39 equ $39
objoff_3A equ $3A
objoff_3B equ $3B
objoff_3C equ $3C
objoff_3D equ $3D
objoff_3E equ $3E
objoff_3F equ $3F
; ---------------------------------------------------------------------------
; property of all objects:
object_size =           $40 ; the size of an object
next_object =           object_size

SRAM_access_flag =		$A130F1

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
VDP_Command_Buffer				equ	$FFFFC800
Camera_X_pos					equ	$FFFFF700
Camera_Y_pos					equ	$FFFFF704
Camera_BG_X_pos					equ	$FFFFF708 ; word
Camera_BG_Y_pos 				equ $FFFFF70C	; word
Camera_BG2_X_pos 				equ $FFFFF710	; word
Camera_BG2_Y_pos 				equ $FFFFF714	; word
Camera_BG3_X_pos 				equ $FFFFF718	; word
Camera_BG3_Y_pos 				equ $FFFFF71C	; word
Game_Mode						equ	$FFFFF600
VDP_Reg1_val					equ	$FFFFF60C
Ctrl_1_Press					equ	$FFFFF605
Demo_Time_left					equ	$FFFFF614
Vscroll_Factor					equ	$FFFFF61A
Vint_routine					equ	$FFFFF62A
Plc_Buffer						equ	$FFFFF680
Level_started_flag				equ	$FFFFF711
Reverse_gravity_flag 			equ	$FFFFFF94
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
Saved_x_pos						equ	 $FFFFFE32
Saved_y_pos						equ	 $FFFFFE34
Saved_Ring_count				equ	 $FFFFFE36
Saved_Timer						equ	 $FFFFFE38
Saved_art_tile					equ	 $FFFFFE3C
Saved_layer						equ	 $FFFFFE3E
Emeralds_flag					equ	$FFFFFE57
Game_Over_2P					equ	$FFFFFEC2
LevSel_HoldTimer				equ	$FFFFFF80
;Level_select_zone				equ	$FFFFFF81
Sound_test_sound				equ	$FFFFFF84
Options_menu_box				equ	$FFFFFF74
Results_Screen_2P				equ	$FFFFFF90
SS_Total_Won					equ	$FFFFFF92
Monitors_Broken					equ	$FFFFFF96
Rings_Collected					equ	$FFFFFF98
Results_Data_2P					equ	$FFFFFFA8
EHZ_Results_2P					equ	$FFFFFFA8
MCZ_Results_2P					equ	$FFFFFFAE
CNZ_Results_2P					equ	$FFFFFFB4
SS_Results_2P					equ	$FFFFFFBA
Level_select_flag				equ	$FFFFFFD0
Slow_Motion_Flag				equ	$FFFFFFD1
Correct_cheat_entries			equ	$FFFFFFD4 
Correct_cheat_entries_2 		equ	$FFFFFFD6 ; for 14 continues or 7 emeralds codes
Debug_Mode_Flag					equ	$FFFFFFDA
Graphics_Flags					equ	$FFFFFFF8

; ===========================================================================