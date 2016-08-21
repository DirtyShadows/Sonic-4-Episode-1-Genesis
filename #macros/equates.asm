
; Variaveis para selecionar qual letra dos Title Cards devem ser carregadas para
; a VRAM
TC_A                    equ  $0004
TC_B                    equ  $0404
TC_C                    equ  $0804
TC_D                    equ  $0C04
TC_F                    equ  $1004
TC_G                    equ  $1404
TC_H                    equ  $1804
TC_I                    equ  $1C02
TC_J                    equ  $1E04
TC_K                    equ  $2204
TC_L                    equ  $2604
TC_M                    equ  $2A06
TC_P                    equ  $3004
TC_Q                    equ  $3404
TC_R                    equ  $3804
TC_S                    equ  $3C04
TC_T                    equ  $4004
TC_U                    equ  $4404
TC_V                    equ  $4804
TC_W                    equ  $4C06
TC_X                    equ  $5204
TC_Y                    equ  $5604  
TCpt                    equ  $5A02   ; "." 
TC_Break                equ  $FFFF


Start	= $80
ABC	= $70
A	= $40
C	= $20
B	= $10
Right	= $08
Left	= $04
Down	= $02
Up	= $01
Option_Select_Sfx equ $CD 


Level_Layout 			equ $FFFF8000
Level_BG_Layout 		equ $FFFF8080
Block_Table 			equ $FFFF9000
Collision_addr  		equ $FFFFF796
Zone_Id					equ $FFFFFE10	;	Check wich Zone should be activated now
Act_Id					equ $FFFFFE11	;	Check wich Act should be activated now (Act 1, Act 2, Act 3 or Act 4)
Game_Mode_Ram			equ $FFFFFF88	;	Game Mode/Difficulty (Original, Harder or Expert)
PlaylistType			equ	$FFFFFFB0	;	Fixed Playlist Type (A, B or C)
Player_option			equ $FFFFFF76	;	Who you choose on Options? (0-> Sonic, 1-> Tails, 2-> Knuckles)
Current_Character		equ $FFFFFFAB	;	0 -> Sonic, 1 -> Tails, 2 -> Knuckles
Knuckles_Gliding_Flag	equ $FFFFFFF6	;	Address to store Knuckles Gliding information
Unknown_Flag			equ $FFFFFFF7	;	Unknown Flag used on some climb functions on the Knuckles code

; >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Equates section - Names for variables.
; ---------------------------------------------------------------------------
; size variables - you'll get an informational error if you need to change these...
; they are all in units of bytes
Sound_Driver_RAM equ $FFF000
Size_of_DAC_samples =		$2F00
Size_of_SEGA_sound =		$6174
Size_of_Snd_driver_guess =	$F64 ; approximate post-compressed size of the Z80 sound driver

; ---------------------------------------------------------------------------
; RAM variables
RAM_Start		equ $FFFF0000 
Metablock_Table		equ $FFFF0000 
Level_Layout			equ $FFFF8000 
Block_Table			equ $FFFF9000 
Decomp_Buffer			equ $FFFFAA00 
Sprite_Table_Input 		equ $FFFFAC00 ; in custom format before being converted and stored in Sprite_Table/Sprite_Table_2
Object_RAM			equ $FFFFD000 ; through $FFFFD5FF
Sidekick			equ $FFFFD040 ; second object (Tails in a Sonic and Tails game)
Tails_Tails			equ $FFFFD000 ; address of the Tail's Tails object
Sonic_Dust			equ $FFFFD1C0 
Tails_Dust			equ $FFFFD140 

PNT_Buffer			equ $FFFFD000 ; in special stage
Primary_Collision		equ $FFFFD600 
Horiz_Scroll_Buf_2		equ $FFFFD700 ; in special stage
Secondary_Collision		equ $FFFFD900 
Sprite_Table_2		equ $FFFFDD00 ; Sprite attribute table buffer for the bottom split screen in 2-player mode
Horiz_Scroll_Buf		equ $FFFFCC00 
Sonic_Stat_Record_Buf		equ $FFFFCA00
Sonic_Pos_Record_Buf		equ $FFFFCB00
Tails_Pos_Record_Buf		equ $FFFFE600
Ring_Positions		equ $FFFFCE00
Camera_RAM			equ $FFFFF700
;Camera_X_pos			equ $FFFFEE00
;Camera_Y_pos			equ $FFFFEE04
Camera_Max_Y_pos		equ $FFFFE726
Camera_Min_X_pos		equ $FFFFF728
Camera_Max_X_pos		equ $FFFFF72A
Camera_Min_Y_pos		equ $FFFFF72C
Camera_Max_Y_pos_now		equ $FFFFF72E ; was "Camera_max_scroll_spd"...
Sonic_Pos_Record_Index	equ $FFFFF7A8 ; into Sonic_Pos_Record_Buf and Sonic_Stat_Record_Buf
Tails_Pos_Record_Index	equ $FFFFF736 ; into Tails_Pos_Record_Buf
Camera_Y_pos_bias		equ $FFFFF73E ; added to y position for lookup/lookdown, $60 is center
Camera_Y_pos_bias_2P		equ $FFFFEEDA ; for Tails
Dynamic_Resize_Routine	equ $FFFFF742
Tails_Min_X_pos		equ $FFFFEEF8
Tails_Max_X_pos		equ $FFFFEEFA
Tails_Max_Y_pos		equ $FFFFEEFE

Underwater_palette_2 		equ $FFFFFA00 ; not sure what it's used for but it's only used when there's water
Underwater_palette 		equ $FFFFFA80 ; main palette for underwater parts of the screen
Underwater_palette_line4 	equ $FFFFFAE0

Game_Mode			equ $FFFFF600 ; 1 byte ; see GameModesArray (master level trigger, Mstr_Lvl_Trigger)
Ctrl_1_Logical		equ $FFFFF602 ; 2 bytes
Ctrl_1_Held_Logical		equ $FFFFF602 ; 1 byte
Ctrl_1_Press_Logical		equ $FFFFF603 ; 1 byte
Ctrl_1			equ $FFFFF604 ; 2 bytes
Ctrl_1_Held			equ $FFFFF604 ; 1 byte ; (pressed and held were switched around before)
Ctrl_1_Press			equ $FFFFF605 ; 1 byte
Ctrl_2			equ $FFFFF606 ; 2 bytes
Ctrl_2_Held			equ $FFFFF606 ; 1 byte
Ctrl_2_Press			equ $FFFFF607 ; 1 byte
Demo_Time_left		equ $FFFFF614 ; 2 bytes

Hint_counter_reserve		equ $FFFFF624 ; Must contain a VDP command word, preferably a write to register $0A. Executed every V-INT.
Delay_Time			equ $FFFFF62A ; number of frames to delay the game
RNG_seed			equ $FFFFF636 ; used for random number generation
Game_paused			equ $FFFFF63A
DMA_data_thunk		equ $FFFFF640 ; Used as a RAM holder for the final DMA command word. Data will NOT be preserved across V-INTs, so consider this space reserved.

Water_Level_1			equ $FFFFF646
Water_Level_2			equ $FFFFF648
Water_Level_3			equ $FFFFF64A
Water_routine			equ $FFFFF64D
Water_move			equ $FFFFF64E
Water_on			equ $FFFFF64C ; is set based on Water_flag
New_Water_Level		equ $FFFFF650
Water_change_speed		equ $FFFFF652
Palette_frame_count		equ $FFFFF65E
Super_Sonic_palette		equ $FFFFF65F
Ctrl_2_Logical		equ $FFFFF66A ; 2 bytes
Ctrl_2_Held_Logical		equ $FFFFF66A ; 1 byte
Ctrl_2_Press_Logical		equ $FFFFF66B ; 1 byte
Sonic_Look_delay_counter 	equ $FFFFC903 ; 2 bytes
Tails_Look_delay_counter 	equ $FFFFF66E ; 2 bytes
Super_Sonic_frame_count	equ $FFFFF670
Plc_Buffer			equ $FFFFF680 ; Pattern load queue

Misc_Variables		equ $FFFFF700

; extra variables for the second player (CPU) in 1-player mode
Tails_control_counter		equ $FFFFF702 ; how long until the CPU takes control
Tails_respawn_counter		equ $FFFFF704
Tails_CPU_routine	equ $FFFFF708
Tails_CPU_target_x		equ $FFFFF70A
Tails_CPU_target_y		equ $FFFFF70C
Tails_interact_ID		equ $FFFFF70E ; object ID of last object stood on

Level_started_flag		equ $FFFFF711
CNZ_Bumper_routine		equ $FFFFF71A
Dirty_flag			equ $FFFFF745 ; if whole screen needs to redraw
Transforming_Flag equ	$FFFFFFA4
Sonic_top_speed		equ $FFFFF760
Sonic_acceleration		equ $FFFFF762
Sonic_deceleration		equ $FFFFF764
Obj_placement_routine		equ $FFFFF76C
Obj_load_addr_0		equ $FFFFF770
Obj_load_addr_1		equ $FFFFF774
Obj_load_addr_2		equ $FFFFF778
Obj_load_addr_3		equ $FFFFF77C
Demo_button_index		equ $FFFFF790 ; index into button press demo data, for player 1
Demo_press_counter		equ $FFFFF792 ; frames remaining until next button press, for player 1
Demo_button_index_2P		equ $FFFFF732 ; index into button press demo data, for player 2
Demo_press_counter_2P		equ $FFFFF734 ; frames remaining until next button press, for player 2
Collision_addr		equ $FFFFF796
Current_Boss_ID		equ $FFFFF7AA
Control_Locked		equ $FFFFF7CC
Chain_Bonus_counter		equ $FFFFF7D0 ; counts up when you destroy things that give points, resets when you touch the ground
Bonus_Countdown_1		equ $FFFFF7D2 ; level results time bonus or special stage sonic ring bonus
Bonus_Countdown_2		equ $FFFFF7D4 ; level results ring bonus or special stage tails ring bonus
Update_Bonus_score		equ $FFFFF7D6
Camera_X_pos_coarse		equ $FFFFF7DA ; (Camera_X_pos - 128) / 256

Sprite_Table			equ $FFFFF800 ; Sprite attribute table buffer

Normal_palette		equ $FFFFFB00
Normal_palette_line2		equ $FFFFFB20
Normal_palette_line3		equ $FFFFFB40
Normal_palette_line4		equ $FFFFFB60
Second_palette		equ $FFFFFB80
Second_palette_line2		equ $FFFFFBA0
Second_palette_line3		equ $FFFFFBC0
Second_palette_line4		equ $FFFFFBE0

Object_Respawn_Table		equ $FFFFFC00
System_Stack			equ $FFFFFE00
Level_Inactive_flag 		equ $FFFFFE02 ; (2 bytes)
Timer_frames			equ $FFFFFE04 ; (2 bytes)
Debug_object			equ $FFFFFE06
Debug_placement_mode		equ $FFFFFE08
Current_ZoneAndAct		equ $FFFFFE10 ; 2 bytes
Current_Zone			equ $FFFFFE10 ; 1 byte
Current_Act			equ $FFFFFE11 ; 1 byte
Life_count			equ $FFFFFE12 
Current_Special_Stage		equ $FFFFFE16
Continue_count		equ $FFFFFE18
Super_Sonic_flag		equ $FFFFFE19
Time_Over_flag		equ $FFFFFE1A
Extra_life_flags		equ $FFFFFE1B

; If set, the respective HUD element will be updated.
Update_HUD_lives		equ $FFFFFE1C
Update_HUD_rings		equ $FFFFFE1D
Update_HUD_timer		equ $FFFFFE1E
Update_HUD_score		equ $FFFFFE1F

Ring_count			equ $FFFFFE20 ; 2 bytes
Timer				equ $FFFFFE22 ; 4 bytes
Timer_minute_word		equ $FFFFFE22 ; 2 bytes
Timer_minute			equ $FFFFFE23 ; 1 byte
Timer_second			equ $FFFFFE24 ; 1 byte
Timer_centisecond		equ $FFFFFE25 ; 1 byte
Score				equ $FFFFFE26 ; 4 bytes
Last_star_pole_hit		equ $FFFFFE30 ; 1 byte -- max activated starpole ID in this act

Saved_Last_star_pole_hit	equ $FFFFFE31
Saved_x_pos			equ $FFFFFE32
Saved_y_pos			equ $FFFFFE34
Saved_Ring_count		equ $FFFFFE36
Saved_Timer			equ $FFFFFE38
Saved_art_tile		equ $FFFFFE3C
Saved_layer			equ $FFFFFE3E
Saved_Camera_X_pos		equ $FFFFFE40
Saved_Camera_Y_pos		equ $FFFFFE42
Saved_Water_Level		equ $FFFFFE50
Saved_Water_routine		equ $FFFFFE52
Saved_Water_move		equ $FFFFFE53
Saved_Extra_life_flags	equ $FFFFFE54
Saved_Extra_life_flags_2P	equ $FFFFFE55
Saved_Camera_Max_Y_pos	equ $FFFFFE56
Saved_Dynamic_Resize_Routine	equ $FFFFFE58

Logspike_anim_counter		equ $FFFFFEA0
Logspike_anim_frame		equ $FFFFFEA1
Rings_anim_counter		equ $FFFFFEA2
Rings_anim_frame		equ $FFFFFEA3
Unknown_anim_counter		equ $FFFFFEA4 ; I think this was $FFFFFEC4 in the alpha
Unknown_anim_frame		equ $FFFFFEA5
Ring_spill_anim_counter	equ $FFFFFEA6 ; scattered rings
Ring_spill_anim_frame		equ $FFFFFEA7
Ring_spill_anim_accum		equ $FFFFFEA8

; values for the second player (some of these only apply to 2-player games)
Tails_top_speed		equ $FFFFFEC0 ; Tails_max_vel
Tails_acceleration		equ $FFFFFEC2
Tails_deceleration		equ $FFFFFEC4
Life_count_2P			equ $FFFFFEC6
Extra_life_flags_2P		equ $FFFFFEC7
Update_HUD_lives_2P		equ $FFFFFEC8
Update_HUD_rings_2P		equ $FFFFFEC9
Update_HUD_timer_2P		equ $FFFFFECA
Update_HUD_score_2P		equ $FFFFFECB ; mostly unused
Time_Over_flag_2P		equ $FFFFFECC
Ring_count_2P			equ $FFFFFED0
Timer_2P			equ $FFFFFED2 ; 4 bytes
Timer_minute_word_2P		equ $FFFFFED2 ; 2 bytes
Timer_minute_2P		equ $FFFFFED3 ; 1 byte
Timer_second_2P		equ $FFFFFED4 ; 1 byte
Timer_centisecond_2P		equ $FFFFFED5 ; 1 byte
Score_2P			equ $FFFFFED6
Last_star_pole_hit_2P		equ $FFFFFEE0

Saved_Last_star_pole_hit_2P	equ $FFFFFEE1
Saved_x_pos_2P		equ $FFFFFEE2
Saved_y_pos_2P		equ $FFFFFEE4
Saved_Ring_count_2P		equ $FFFFFEE6
Saved_Timer_2P		equ $FFFFFEE8
Saved_art_tile_2P		equ $FFFFFEEC
Saved_layer_2P		equ $FFFFFEEE

Two_player_items		equ $FFFFFF74
Level_select_zone		equ $FFFFFF82
Sound_test_sound		equ $FFFFFF84
Title_screen_option		equ $FFFFFF86
Two_player_mode_copy		equ $FFFFFF8A
Level_Music			equ $FFFFFF90
Got_Emerald			equ $FFFFFFB0
Emerald_count			equ $FFFFFFB1
Got_Emeralds_array		equ $FFFFFFB2 ; 7 bytes
Next_Extra_life_score		equ $FFFFFFC0
Next_Extra_life_score_2P	equ $FFFFFFC4
Level_Has_Signpost		equ $FFFFFFC8 ; 1 byte ; 1 = signpost, 0 = boss or nothing
Correct_cheat_entries		equ $FFFFFFD4
Correct_cheat_entries_2	equ $FFFFFFD6 ; for 14 continues or 7 emeralds codes
Two_player_mode		equ $FFFFFF88 ; flag (0 for main game)

; Values in these variables are passed to the sound driver during V-INT.
; They use a playlist index, not a sound test index.
Music_Pause   = Sound_Driver_RAM+$003
Music_to_play = Sound_Driver_RAM+$00A
SFX_to_play   = Sound_Driver_RAM+$00B ; normal
SFX_to_play_2 = Sound_Driver_RAM+$00C ; alternating stereo
Music_to_play_2	= Sound_Driver_RAM+$00C ; alternate (higher priority?) slot

Demo_mode_flag		equ $FFFFFFF0 ; 1 if a demo is playing (2 bytes)
Demo_number			equ $FFFFFFF2 ; which demo will play next (2 bytes)
Graphics_Flags		equ $FFFFFFF8 ; misc. bitfield
Checksum_fourcc		equ $FFFFFFFC ; (4 bytes)

; ---------------------------------------------------------------------------
; VDP addressses
VDP_data_port =			$C00000 ; (8=r/w, 16=r/w)

; ---------------------------------------------------------------------------
; Z80 addresses
Z80_RAM =			$A00000 ; start of Z80 RAM
Z80_RAM_End =			$A02000 ; end of non-reserved Z80 RAM
Z80_Version =			$A10001
Z80_Port_1_Data =		$A10002
Z80_Port_1_Control =		$A10008
Z80_Port_2_Control =		$A1000A
Z80_Expansion_Control =		$A1000C
Z80_Bus_Request =		$A11100
Z80_Reset =			$A11200

Security_Addr =			$A14000
