; Variables (v) and Flags (f)

v_regbuffer:	= $FFFFFC00		; stores registers d0-a7 during an error event ($40 bytes)
v_spbuffer:	= $FFFFFC40		; stores most recent sp address (4 bytes)
v_pcbuffer      = $FFFFFC44     	; stores PC on error (4 bytes)
v_errortype:	= $FFFFFC48		; error type


v_256x256:	=   $FF0000		; 256x256 tile mappings ($A400 bytes)


Kos_decomp_buffer =  $FFFF9C00  	; $1000 bytes	; each module in a KosM archive is decompressed here and then DMAed to VRAM

v_spritequeue:	= $FFFFAC00		; sprite display queue, in order of priority ($400 bytes)
v_16x16:	= $FFFFB000		; 16x16 tile mappings
v_sgfx_buffer:	= $FFFFC800		; buffered Sonic graphics ($18 cells) ($300 bytes)     +++(only $100 now)
v_vdp_buffer_slot = $FFFFC8FC    	; (2 bytes)
v_ngfx_buffer:	= $FFFFC900		; Nemesis graphics decompression buffer ($200 bytes)
v_tracksonic:	= $FFFFCB00		; position tracking data for Sonic ($100 bytes)
v_scrolltable:	= $FFFFCC00		; scrolling table data ($400 bytes)
		; $CF80 to $D000 seems to be unsused , it only needs $380 bytes to cover the whole screen

v_objspace:	= $FFFFD000		; object variable space ($40 bytes per object) ($2000 bytes)
v_player:	= v_objspace		; object variable space for Sonic ($40 bytes)
;v_shieldobj:    = v_objspace+$180
;v_dustobj:      = v_objspace+$1C0
;v_homingattackobj = v_objspace+$300
v_lvlobjspace:	= $FFFFD800		; level object variable space ($1800 bytes)

v_lvllayout:	= $FFFFF000		; layout is read from rom now, this contains pointers to the location of level layouts on ROM now 			; level and background layouts ($400 bytes)
v_screenposy_last   = $FFFFFC10   	; S3K Object manager
v_screenposx_coarse = $FFFFFC14   	;         ''
v_screenposy_coarse = $FFFFFC18   	;         ''
v_objstate:	= $FFFFC900		; object state list ($300 bytes)

v_variables        = v_objstate+$300
;v_statspeed        = v_variables+$0     ;  speed stat
;v_stataccel        = v_variables+$1     ;  acceleration stat
;v_statjump         = v_variables+$2     ;  jump stat
;v_brokenmonitors1  = v_variables+$3     ;  which monitors are broken in current act, first byte
;v_brokenmonitors2  = v_variables+$4     ;  which monitors are broken in current act, second byte
;v_brokenmonitors3  = v_variables+$5     ;  which monitors are broken in current act, third byte
;v_actflags         = v_variables+$6     ;  flags in the current act to be saved to sram
;v_levselpage       = v_variables+$7     ;  which page of the pause menu is selected
;v_a_ability        = v_variables+$8     ; ability assigned to button A
;v_b_ability        = v_variables+$9     ; ability assigned to button B
;v_c_ability        = v_variables+$A     ; ability assigned to button C
;v_equippedshoes    = v_variables+$B
;v_equippeditem1    = v_variables+$C
;v_equippeditem2    = v_variables+$D
;v_equippedemerald  = v_variables+$E

;v_activeeffects = v_variables+$F		; number of currently active effects
;ItemEffects     = v_variables+$10      	; current active effects (byte)& empty byte & time left (word), 16 slots ($40 bytes)
; --------------------------------------------------------------------------
; Inventory items and abilities
;v_inventory     = v_variables+$40

;v_inv_items     = v_inventory+$0
;v_inv_shield    = v_inv_items+$0                                      
;v_inv_invinc    = v_inv_items+$1
;v_inv_shoes     = v_inv_items+$2
;v_inv_key       = v_inv_items+$3
;v_inv_test      = v_inv_items+$4
;v_inv_bomb      = v_inv_items+$5
;v_inv_eshield   = v_inv_items+$6     	; electric shields
;v_inv_fshield   = v_inv_items+$7     	; fire shields

;v_shoe_items    = v_inventory+$20
;v_shoe_default  = v_shoe_items+$0
;v_shoe_runners  = v_shoe_items+$1
;v_shoe_spring   = v_shoe_items+$2
;v_shoe_spikeproof = v_shoe_items+$3

;v_item_items    = v_inventory+$40
;v_item_goggles  = v_item_items+$0
;v_item_itemsaver = v_item_items+$1
;v_item_speedbracelet = v_item_items+$2

;v_abil_items    = v_inventory+$60
;v_abil_none     = v_abil_items+$0
;v_abil_spindash = v_abil_items+$1
;v_abil_jumpdash = v_abil_items+$2
;v_abil_homing   = v_abil_items+$3
;v_abil_doublejump1 = v_abil_items+$4
;v_abil_doublejump2 = v_abil_items+$5
;v_abil_lightdash = v_abil_items+$6
;v_abil_down     = v_abil_items+$7
;v_abil_peelout  = v_abil_items+$8
;v_abil_walljump = v_abil_items+$9
;v_abil_insta    = v_abil_items+$A        ; instashield
; --------------------------------------------------------------------------

Kos_decomp_queue_count =	$FFFFF460  ; word 		; the number of pieces of data on the queue. Sign bit set indicates a decompression is in progress
Kos_decomp_stored_registers =	$FFFFF462  ; $28 bytes 		; allows decompression to be spread over multiple frames
Kos_decomp_stored_SR =		$FFFFF48A  ; word
Kos_decomp_bookmark =		$FFFFF48C  ; long 		; the address within the Kosinski queue processor at which processing is to be resumed
Kos_description_field =		$FFFFF490  ; word 		; used by the Kosinski queue processor the same way the stack is used by the normal Kosinski decompression routine
Kos_decomp_queue =		$FFFFF492  ; $20 bytes 		; 2 longwords per entry, first is source location and second is decompression location
Kos_decomp_source =		$FFFFF492  ; long 		; the compressed data location for the first entry in the queue
Kos_decomp_destination =	$FFFFF496  ; long 		; the decompression location for the first entry in the queue
Kos_modules_left =		$FFFFF4B0  ; byte 		; the number of modules left to decompresses. Sign bit set indicates a module is being decompressed/has been decompressed
Kos_last_module_size =		$FFFFF4B2  ; word 		; the uncompressed size of the last module in words. All other modules are $800 words
Kos_module_queue =		$FFFFF4B4  ; $18 bytes 		; 6 bytes per entry, first longword is source location and next word is VRAM destination
Kos_module_source =		$FFFFF4B4  ; long 		; the compressed data location for the first module in the queue
Kos_module_destination =	$FFFFF4CC  ; word 		; the VRAM destination for the first module in the queue

;v_worldmap_X	= $FFFFF49E		; current level's left boundary position in world map squares (1 byte)
;v_worldmap_Y	= $FFFFF49F		; current level's top boundary position in world map squares  (1 byte)
;v_worldmap		= $FFFFF4A0		; $160 bytes, 1 bit for each square of the 80x35 map that has been visited		

v_gamemode:		= $FFFFF600		; game mode (00=Sega			; 04=Title			; 08=Demo			; 0C=Level			; 10=SS			; 14=Cont			; 18=End			; 1C=Credit			; +8C=PreLevel)
v_jpadhold2:	= $FFFFF602		; joypad input - held, duplicate
v_jpadpress2:	= $FFFFF603		; joypad input - pressed, duplicate
v_jpadhold1:	= $FFFFF604		; joypad input - held
v_jpadpress1:	= $FFFFF605		; joypad input - pressed

v_vdp_buffer1:	= $FFFFF60C		; VDP instruction buffer (2 bytes)

v_demolength:	= $FFFFF614		; the length of a demo in frames (2 bytes)
v_scrposy_dup:	= $FFFFF616		; screen position y (duplicate) (2 bytes)
v_bgposy_dup:	= $FFFFF618		; background position y (duplicate) (2 bytes)

v_scrposx_dup:	= $FFFFF61A		; screen position x (duplicate) (2 bytes)
v_bgposx_dup:	= $FFFFF61C		; background position x (duplicate) (2 bytes)

v_hbla_hreg:	= $FFFFF624		; VDP H.interrupt register buffer (8Axx) (2 bytes)
v_hbla_line:	= $FFFFF625		; screen line where water starts and palette is changed by HBlank
v_pfade_start:	= $FFFFF626		; palette fading - start position in bytes
v_pfade_size:	= $FFFFF627		; palette fading - number of colours
v_vbla_routine:	= $FFFFF62A		; VBlank - routine counter
v_spritecount:	= $FFFFF62C		; number of sprites on-screen
v_pcyc_num:	= $FFFFF632		; palette cycling - current reference number (2 bytes)
v_pcyc_time:	= $FFFFF634		; palette cycling - time until the next change (2 bytes)
v_random:	= $FFFFF636		; pseudo random number buffer (4 bytes)
f_pause:	= $FFFFF63A		; flag set to pause the game (2 bytes)
v_vdp_buffer2:	= $FFFFF640		; VDP instruction buffer (2 bytes)
f_hbla_pal:	= $FFFFF644		; flag set to change palette during HBlank (0000 = no			; 0001 = change) (2 bytes)
v_waterpos1:	= $FFFFF646		; water height, actual (2 bytes)
v_waterpos2:	= $FFFFF648		; water height, ignoring sway (2 bytes)
v_waterpos3:	= $FFFFF64A		; water height, next target (2 bytes)
f_water:	= $FFFFF64C		; flag set for water
v_wtr_routine:	= $FFFFF64D		; water event - routine counter
f_wtr_state:	= $FFFFF64E		; water palette state when water is above/below the screen (00 = partly/all dry			; 01 = all underwater)

v_pal_buffer:	= $FFFFF650		; palette data buffer (used for palette cycling) ($30 bytes)
v_plc_buffer:	= $FFFFF680		; pattern load cues buffer (maximum $10 PLCs) ($60 bytes)
v_ptrnemcode:	= $FFFFF6E0		; pointer for nemesis decompression code ($1502 or $150C) (4 bytes)

f_plc_execute:	= $FFFFF6F8		; flag set for pattern load cue execution (2 bytes)

v_screenposx:	= $FFFFF700		; screen position x (2 bytes)   (Plane A)
v_screenposy:	= $FFFFF704		; screen position y (2 bytes)   (Plane A)

v_bgposx:	= $FFFFF708		; background position x (2 bytes)   (Plane B)
v_bgposy:	= $FFFFF70C		; background position y (2 bytes)   (Plane B)

v_limitleft1:	= $FFFFF720		; left level boundary (2 bytes)
v_limitright1:	= $FFFFF722		; right level boundary (2 bytes)
v_limittop1:	= $FFFFF724		; top level boundary (2 bytes)
v_limitbtm1:	= $FFFFF726		; bottom level boundary (2 bytes)
v_limitleft2:	= $FFFFF728		; left level boundary (2 bytes)
v_limitright2:	= $FFFFF72A		; right level boundary (2 bytes)
v_limittop2:	= $FFFFF72C		; top level boundary (2 bytes)
v_limitbtm2:	= $FFFFF72E		; bottom level boundary (2 bytes)

v_limitleft3:	= $FFFFF732		; left level boundary, at the end of an act (2 bytes)

v_scrshiftx:	= $FFFFF73A		; screen shift as Sonic moves horizontally

v_lookshift:	= $FFFFF73E		; screen shift when Sonic looks up/down (2 bytes)
v_dle_routine:	= $FFFFF742		; dynamic level event - routine counter
f_nobgscroll:	= $FFFFF744		; flag set to cancel background scrolling

v_bgscroll1:	= $FFFFF754		; background scrolling variable 1
v_bgscroll2:	= $FFFFF756		; background scrolling variable 2
v_bgscroll3:	= $FFFFF758		; background scrolling variable 3
f_bgscrollvert:	= $FFFFF75C		; flag for vertical background scrolling
v_sonspeedmax:	= $FFFFF760		; Sonic's maximum speed (2 bytes)
v_sonspeedacc:	= $FFFFF762		; Sonic's acceleration (2 bytes)
v_sonspeeddec:	= $FFFFF764		; Sonic's deceleration (2 bytes)
v_sonframenum:	= $FFFFF766		; frame to display for Sonic
f_sonframechg:	= $FFFFF767		; flag set to update Sonic's sprite frame
v_anglebuffer:	= $FFFFF768		; angle of collision block that Sonic or object is standing on

v_opl_routine:	= $FFFFF76C		; ObjPosLoad - routine counter
v_opl_screen:	= $FFFFF76E		; ObjPosLoad - screen variable
v_screenposx_last = v_opl_screen
v_opl_data:	= $FFFFF770		; ObjPosLoad - data buffer ($10 bytes)
Obj_load_addr_right = v_opl_data
Obj_load_addr_left  = v_opl_data+4
Obj_respawn_index_right = v_opl_data+8
Obj_respawn_index_left  = v_opl_data+$0C

v_ssangle:	= $FFFFF780		; Special Stage angle (2 bytes)
v_ssrotate:	= $FFFFF782		; Special Stage rotation speed (2 bytes)
v_btnpushtime1:	= $FFFFF790		; button push duration - in level (2 bytes)
v_btnpushtime2:	= $FFFFF792		; button push duration - in demo (2 bytes)
v_palchgspeed:	= $FFFFF794		; palette fade/transition speed (0 is fastest) (2 bytes)
v_collindex:	= $FFFFF796		; ROM address for collision index of current level (4 bytes)
v_palss_num:	= $FFFFF79A		; palette cycling in Special Stage - reference number (2 bytes)
v_palss_time:	= $FFFFF79C		; palette cycling in Special Stage - time until next change (2 bytes)

v_obj31ypos:	= $FFFFF7A4		; y-position of object 31 (MZ stomper) (2 bytes)
v_bossstatus:	= $FFFFF7A7		; status of boss and prison capsule (01 = boss defeated			; 02 = prison opened)
v_trackpos:	= $FFFFF7A8		; position tracking reference number (2 bytes)
v_trackbyte:	= $FFFFF7A9		; low byte for position tracking
f_lockscreen:	= $FFFFF7AA		; flag set to lock screen during bosses
v_256loop1:	= $FFFFF7AC		; 256x256 level tile which contains a loop (GHZ/SLZ)
v_256loop2:	= $FFFFF7AD		; 256x256 level tile which contains a loop (GHZ/SLZ)
v_256roll1:	= $FFFFF7AE		; 256x256 level tile which contains a roll tunnel (GHZ)
v_256roll2:	= $FFFFF7AF		; 256x256 level tile which contains a roll tunnel (GHZ)
v_lani0_frame:	= $FFFFF7B0		; level graphics animation 0 - current frame
v_lani0_time:	= $FFFFF7B1		; level graphics animation 0 - time until next frame
v_lani1_frame:	= $FFFFF7B2		; level graphics animation 1 - current frame
v_lani1_time:	= $FFFFF7B3		; level graphics animation 1 - time until next frame
v_lani2_frame:	= $FFFFF7B4		; level graphics animation 2 - current frame
v_lani2_time:	= $FFFFF7B5		; level graphics animation 2 - time until next frame
v_lani3_frame:	= $FFFFF7B6		; level graphics animation 3 - current frame
v_lani3_time:	= $FFFFF7B7		; level graphics animation 3 - time until next frame
v_lani4_frame:	= $FFFFF7B8		; level graphics animation 4 - current frame
v_lani4_time:	= $FFFFF7B9		; level graphics animation 4 - time until next frame
v_lani5_frame:	= $FFFFF7BA		; level graphics animation 5 - current frame
v_lani5_time:	= $FFFFF7BB		; level graphics animation 5 - time until next frame
v_gfxbigring:	= $FFFFF7BE		; settings for giant ring graphics loading (2 bytes)
f_conveyrev:	= $FFFFF7C0		; flag set to reverse conveyor belts in LZ/SBZ
v_obj63:	= $FFFFF7C1		; object 63 (LZ/SBZ platforms) variables (6 bytes)
f_wtunnelmode:	= $FFFFF7C7		; LZ water tunnel mode
f_lockmulti:	= $FFFFF7C8		; flag set to lock controls, lock Sonic's position & animation
f_wtunnelallow:	= $FFFFF7C9		; LZ water tunnels (00 = enabled			; 01 = disabled)
f_jumponly:	= $FFFFF7CA		; flag set to lock controls apart from jumping         if $FF, Obj01_Modes routines are not run. Sonic freezes and other objects can control his moving manually. This is used in SBZ transporters for example. If this flag is $01, the above applies and the TouchResponse isn't run. Sonic doesn't react to rings or harmful objects anymore.
v_obj6B:	= $FFFFF7CB		; object 6B (SBZ stomper) variable
f_lockctrl:	= $FFFFF7CC		; flag set to lock controls during ending sequence     if clear, v_jpadhold1(what buttons are pressed) is sent to v_jpadhold2(what buttons the sonic object sees), if set you can send your own buttons to v_jpadhold2
f_bigring:	= $FFFFF7CD		; flag set when Sonic collects the giant ring
v_itembonus:	= $FFFFF7D0		; item bonus from broken enemies, blocks etc. (2 bytes)
v_timebonus:	= $FFFFF7D2		; time bonus at the end of an act (2 bytes)
v_ringbonus:	= $FFFFF7D4		; ring bonus at the end of an act (2 bytes)
f_endactbonus:	= $FFFFF7D6		; time/ring bonus update flag at the end of an act
v_sonicend:	= $FFFFF7D7		; routine counter for Sonic in the ending sequence
f_switch:	= $FFFFF7E0		; flags set when Sonic stands on a switch ($10 bytes)

v_sprites:	= $FFFFF800		; sprite table ($200 bytes)
v_pal0_wat:	= $FFFFFA00		; duplicate palette data - underwater ($80 bytes)
v_pal0_dry:	= $FFFFFA80		; duplicate palette data - main ($80 bytes)
v_pal1_wat:	= $FFFFFB00		; palette data - underwater ($80 bytes)
v_pal1_dry:	= $FFFFFB80		; palette data - main ($80 bytes)



v_actstates	= $FFFFFC00		; 4 bytes of saved data per act ($A0 bytes, will expand when more zones added)


; stack goes from FE00 backwards, seems like leaving $100 bytes for it would be safe????

f_restart:	= $FFFFFE02		; restart level flag (2 bytes)
v_framecount:	= $FFFFFE04		; frame counter (adds 1 every frame) (2 bytes)
v_framebyte:	= v_framecount+1	; low byte for frame counter
v_debugitem:	= $FFFFFE06		; debug item currently selected (NOT the object number of the item)
v_debuguse:	= $FFFFFE08		; debug mode use & routine counter (when Sonic is a ring/item) (2 bytes)
v_debugxspeed:	= $FFFFFE0A		; debug mode - horizontal speed
v_debugyspeed:	= $FFFFFE0B		; debug mode - vertical speed
v_vbla_count:	= $FFFFFE0C		; vertical interrupt counter (adds 1 every VBlank) (4 bytes)
v_vbla_word:	= v_vbla_count+2 	; low word for vertical interrupt counter (2 bytes)
v_vbla_byte:	= v_vbla_word+1		; low byte for vertical interrupt counter
v_zone:		= $FFFFFE10		; current zone number
v_act:		= $FFFFFE11		; current act number
v_lives:	= $FFFFFE12		; number of lives
v_air:		= $FFFFFE14		; air remaining while underwater (2 bytes)
v_airbyte:	= v_air+1		; low byte for air
v_lastspecial:	= $FFFFFE16		; last special stage number
v_continues:	= $FFFFFE18		; number of continues
f_timeover:	= $FFFFFE1A		; time over flag
v_lifecount:	= $FFFFFE1B		; lives counter value (for actual number, see "v_lives")
f_lifecount:	= $FFFFFE1C		; lives counter update flag
f_ringcount:	= $FFFFFE1D		; ring counter update flag
f_timecount:	= $FFFFFE1E		; time counter update flag
f_scorecount:	= $FFFFFE1F		; score counter update flag
v_rings:	= $FFFFFE20		; rings (2 bytes)
v_ringbyte:	= v_rings+1		; low byte for rings
v_time:		= $FFFFFE22		; time (4 bytes)
v_timemin:	= $FFFFFE23		; time - minutes
v_timesec:	= $FFFFFE24		; time - seconds
v_timecent:	= $FFFFFE25		; time - centiseconds
v_score:	= $FFFFFE26		; score (4 bytes)
v_shield:	= $FFFFFE2A		; shield status (00 = no			; 01 = yes)
v_invinc:	= $FFFFFE2B		; invinciblity status (00 = no			; 01 = yes) bit 7 set when instashield active
v_shoes:	= $FFFFFE2C		; speed shoes status (00 = no			; 01 = yes)
v_lastlamp:	= $FFFFFE30		; number of the last lamppost you hit ($FF means switching between acts)
v_lamp_xpos:	= v_lastlamp+2		; x-axis for Sonic to respawn at lamppost (2 bytes)
v_lamp_ypos:	= v_lastlamp+4		; y-axis for Sonic to respawn at lamppost (2 bytes)
v_lamp_rings:	= v_lastlamp+6		; rings stored at lamppost (2 bytes)
v_lamp_time:	= v_lastlamp+8		; time stored at lamppost (2 bytes)
v_lamp_dle:	= v_lastlamp+$C		; dynamic level event routine counter at lamppost
v_lamp_limitbtm:= v_lastlamp+$E		; level bottom boundary at lamppost (2 bytes)
v_lamp_scrx:	= v_lastlamp+$10 	; x-axis screen at lamppost (2 bytes)
v_lamp_scry:	= v_lastlamp+$12 	; y-axis screen at lamppost (2 bytes)

v_lamp_wtrpos:	= v_lastlamp+$20 	; water position at lamppost (2 bytes)
v_lamp_wtrrout:	= v_lastlamp+$22 	; water routine at lamppost
v_lamp_wtrstat:	= v_lastlamp+$23 	; water state at lamppost
v_lamp_lives:	= v_lastlamp+$24 	; lives counter at lamppost
v_emeralds:		= $FFFFFE57		; number of chaos emeralds
v_emldlist:		= $FFFFFE58		; which individual emeralds you have (00 = no			; 01 = yes) (6 bytes)
v_oscillate:	= $FFFFFE5E		; values which oscillate - for swinging platforms, et al ($42 bytes)
v_ani0_time:	= $FFFFFEC0		; synchronised sprite animation 0 - time until next frame (used for synchronised animations)
v_ani0_frame:	= $FFFFFEC1		; synchronised sprite animation 0 - current frame
v_ani1_time:	= $FFFFFEC2		; synchronised sprite animation 1 - time until next frame
v_ani1_frame:	= $FFFFFEC3		; synchronised sprite animation 1 - current frame
v_ani2_time:	= $FFFFFEC4		; synchronised sprite animation 2 - time until next frame
v_ani2_frame:	= $FFFFFEC5		; synchronised sprite animation 2 - current frame
v_ani3_time:	= $FFFFFEC6		; synchronised sprite animation 3 - time until next frame
v_ani3_frame:	= $FFFFFEC7		; synchronised sprite animation 3 - current frame
v_ani3_buf:		= $FFFFFEC8		; synchronised sprite animation 3 - info buffer (2 bytes)
v_limittopdb:	= $FFFFFEF0		; level upper boundary, buffered for debug mode (2 bytes)
v_limitbtmdb:	= $FFFFFEF2		; level bottom boundary, buffered for debug mode (2 bytes)

; boss animation array from ported sonic 2 bosses
Boss_AnimationArray:= $FFFFFEF4	; up to $10 bytes			; 2 bytes per entry
unk_F750:       = $FFFFFF04
Boss_X_pos:		= $FFFFFF04   	; Boss_MoveObject reads a long, but all other places in the game use only the high word
Boss_Y_pos:		= $FFFFFF08	; same here
Boss_X_vel:		= $FFFFFF0C
Boss_Y_vel:		= $FFFFFF0E
unk_F75C:		= $FFFFFF3E	; used by mtz boss, only seems to use 2 bytes

			; ^^^ can use values between here vvv not FF30 on though, vblank uses it


;v_monitorlocations: = $FFFFFF40    	; array of monitor x positions ($30 bytes)

;v_wassfxspindash: = $FFFFFF70   	; +++ is 1 if the last sound played was the spin dash
;v_timersfxspindash: = $FFFFFF71 	; +++ timer for spin dash rev
;v_pitchsfxspindash: = $FFFFFF72 	; +++ spindash sfx pitch increase
v_vscrolldelay  = $FFFFFF73 
v_hscrolldelay: = $FFFFFF74     	; +++ something to do with the spin dash and horizontal scrolling
f_dontstopmusic: = $FFFFFF76    	; +++ let music continue from last act
v_popuptimer	= $FFFFFF77			; how long the popup timer can be onscreen

			; ^^^ can use values between here vvv

v_levseldelay:	= $FFFFFF80			; level select - time until change when up/down is held (2 bytes)
v_levselitem:	= $FFFFFF82			; level select - item selected (2 bytes)
v_levselsound:	= $FFFFFF84			; level select - sound selected (2 bytes)
v_levelselnofade  = $FFFFFF86   	; +++ pause menu, don't fade when redrawing text
;v_airjumpcount:    = $FFFFFF88    	; +++ times jumped in the air, for double jump
;v_jumpdashcount:   = $FFFFFF89    	; +++ times jump dashed
;f_supersonic       = $FFFFFF8A    	; +++ has sonic turned Super Sonic?
;v_supersonicpal    = $FFFFFF8B    	; +++ has super sonic palette value
;v_supersonicpalframe  = $FFFFFF8C 	; +++ has super sonic palette frame (2 bytes)
;v_supersonicpaltimer  = $FFFFFF8E 	; +++ has super sonic palette timer
;v_supersonicframecount = $FFFFFF8F	; +++ frame counter for ring countdown
v_lastmusic        = $FFFFFF90    	; save music to be restored after drowning countdown etc.
;v_homingdistance   = $FFFFFF92    	; distance between closest object and sonic (2 bytes)
;v_homingtarget     = $FFFFFF94    	; object number that is closest to sonic
;v_homingtimer      = $FFFFFF95    	; frames that sonic can home on an object for (light dash only ATM)
;v_justwalljumped   = $FFFFFF96    	; if just wall jumped, don't run double jump code
;v_Deform_Temp_Value = $FFFFFF98		; GHZ uses this to save last frame's ripple data rom location (2 bytes)
;H_int_jump      = $FFFFFF9A     	; 6 bytes 			; contains an instruction to jump to the H-int handler
;H_int_addr      = $FFFFFFA0     	; long
;v_teleportin	= $FFFFFFA4			; set when sonic needs to beam into the new level

			; ^^^ can use values between here vvv

;v_lamp_xspeed:   = $FFFFFFB2    	; +++ saved x speed when moving between acts     (2 bytes)
;v_lamp_yspeed:   = $FFFFFFB4    	; +++ saved y speed when moving between acts     (2 bytes)
;v_lamp_inertia:  = $FFFFFFB6    	; +++ saved inertia when moving between acts     (2 bytes)
;v_lamp_anim:     = $FFFFFFB8    	; +++ saved animation when moving between acts   (2 byte)
;v_lamp_roll:     = $FFFFFFBA    	; +++ saved rolling when moving between acts     (1 byte)
;v_lamp_dir:      = $FFFFFFBB    	; +++ saved direction when moving between acts   (1 byte)
;v_drumkit        = $FFFFFFBC    	; +++ drumkit used by current song
;v_currentsong:   = $FFFFFFBD    	; +++ the music currently playing
;v_musicpitch:    = $FFFFFFBE    	; +++ adjust music pitch by this amount
;v_palmuscounter  = $FFFFFFBF    	; +++ counts up to 5 then runs UpdateMusic twice
v_scorecopy:	= $FFFFFFC0		; score, duplicate (4 bytes)
v_scorelife:	= $FFFFFFC0		; points required for an extra life (4 bytes) (JP1 only)
;f_levselcheat:	= $FFFFFFE0		; level select cheat flag
;f_slomocheat:	= $FFFFFFE1		; slow motion & frame advance cheat flag
;Slow_Motion_Flag      equ $FFFFFFE1
;f_debugcheat:	= $FFFFFFE2		; debug mode cheat flag
;Debug_Mode_Flag       equ $FFFFFFE2
;f_creditscheat:	= $FFFFFFE3		; hidden credits & press start cheat flag
v_title_dcount:	= $FFFFFFE4		; number of times the d-pad is pressed on title screen (2 bytes)
v_title_ccount:	= $FFFFFFE6		; number of times C is pressed on title screen (2 bytes)

			; ^^^ can use values between here vvv

f_demo:			= $FFFFFFF0		; demo mode flag (0 = no			; 1 = yes			; $8001 = ending) (2 bytes)
v_demonum:		= $FFFFFFF2		; demo level number (not the same as the level number) (2 bytes)
v_creditsnum:	= $FFFFFFF4		; credits index number (2 bytes)
v_layer:        = $FFFFFFF6     	; The bit in the 16x16 entries in the 128x128 block mappings to check for top solidity. Is either $C (for the default collision layer), or $E (for the alternate collision layer).
v_layerplus     = $FFFFFFF7     	; The bit in the 16x16 entries in the 128x128 block mappings to check for left/right/bottom solidity. Is either $D (for the default collision layer), or $F (for the alternate collision layer).
v_megadrive:	= $FFFFFFF8		; Megadrive machine type
f_debugmode:	= $FFFFFFFA		; debug mode flag (sometimes 2 bytes)
v_init:			= $FFFFFFFC		; 'init' text string (4 bytes)

; ===========================================================================
; Pause Menu Memory Locations (only used when in menu, otherwise the 256x256 tiles go here)
; ===========================================================================

;v_menufg        =   $FFFF0000
;v_menubg        =   $FFFF08C0
;v_sndtsttilemap =   $FFFF1180
;v_sndtsttemp    =   $FFFF1A40

;v_vucounter     = $FFFF1FEE     	; amount on vu meter (10 1 byte slots)


;v_menuslots     = $FFFF1FFA     	; number of slots on equip screen (or debug screen)
;v_menuequipslot = $FFFF1FFB     	; which slot is being selected (1 byte)
;v_menupagestate = $FFFF1FFC     	; 00-select page, 01-select slot, 02-select inv item (1 byte)
;FirstDrawnItem  = $FFFF1FFD     	; when inventory scrolls, which number in inv array is at the top of the list (1 byte)
;NumberOfItems   = $FFFF1FFE     	; total number of items currently held in the inventory (2 bytes)
;CurrentInventoryArray  = $FFFF2000 	; all inventory items to draw (?? bytes)


;v_menu_fgX		= $FFFF3000
;v_menu_bgX		= $FFFF3002
;v_menu_fgY		= $FFFF3004
;v_menu_bgY		= $FFFF3006

;v_mapbuffer =   $FFFF3010			; map screen graphics are buffered here before sending to VRAM

;v_mappointerobj	= $FFFFD400			; $40 bytes, 'you are here' object on map screen

;	if DynamicSpecialStageWalls=1	;Mercury Dynamic Special Stage Walls
v_ssangleprev:	= $FFFFF784	; previous Special Stage angle (1 byte)
;	endc	;	;Mercury Dynamic Special Stage Walls

; ---------------------------------------------------------------------------
; The high word of d6 after a SolidObject call is a bitfield
; with the following meaning:
p1_touch_side_bit   = 0
p2_touch_side_bit   = p1_touch_side_bit + 1

p1_touch_side       = 1<<p1_touch_side_bit
p2_touch_side       = 1<<p2_touch_side_bit

touch_side_mask     = p1_touch_side|p2_touch_side

p1_touch_bottom_bit = p1_touch_side_bit + pushing_bit_delta
p2_touch_bottom_bit = p1_touch_bottom_bit + 1

p1_touch_bottom     = 1<<p1_touch_bottom_bit
p2_touch_bottom     = 1<<p2_touch_bottom_bit

touch_bottom_mask   = p1_touch_bottom|p2_touch_bottom

p1_touch_top_bit   = p1_touch_bottom_bit + pushing_bit_delta
p2_touch_top_bit   = p1_touch_top_bit + 1

p1_touch_top       = 1<<p1_touch_top_bit
p2_touch_top       = 1<<p2_touch_top_bit

touch_top_mask     = p1_touch_top|p2_touch_top

; ---------------------------------------------------------------------------
; Bits 3-6 of an object's status after a SolidObject call is a
; bitfield with the following meaning:
p1_standing_bit   = 3
p2_standing_bit   = p1_standing_bit + 1

p1_standing       = 1<<p1_standing_bit
p2_standing       = 1<<p2_standing_bit

pushing_bit_delta = 2
p1_pushing_bit    = p1_standing_bit + pushing_bit_delta
p2_pushing_bit    = p1_pushing_bit + 1

p1_pushing        = 1<<p1_pushing_bit
p2_pushing        = 1<<p2_pushing_bit


standing_mask     = p1_standing|p2_standing
pushing_mask      = p1_pushing|p2_pushing