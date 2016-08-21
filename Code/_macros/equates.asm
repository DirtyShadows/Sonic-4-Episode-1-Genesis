Start	equ $80
ABC	equ $70
A	equ $40
C	equ $20
B	equ $10
Right	equ $08
Left	equ $04
Down	equ $02
Up	equ $01
Option_Select_Sfx equ $CD 


Level_Layout 			equ $FFFF8000
Level_BG_Layout 		equ $FFFF8080
Block_Table 			equ $FFFF9000
Primary_Collision 		equ $FFFFB600
Secondary_Collision 	equ $FFFFB900
Collision_addr  		equ $FFFFF796
Zone_Id					equ $FFFFFE10	;	Check wich Zone should be activated now
Act_Id					equ $FFFFFE11	;	Check wich Act should be activated now (Act 1, Act 2, Act 3 or Act 4)
Game_Mode_Ram			equ $FFFFFF88	;	Game Mode/Difficulty (Original, Harder or Expert)
PlaylistType			equ	$FFFFFFB0	;	Fixed Playlist Type (A, B or C)
Player_option			equ $FFFFFFAA	;	Who you choose on Options? (0-> Sonic, 1-> Tails, 2-> Knuckles)
Current_Character		equ $FFFFFFAB	;	0 -> Sonic, 1 -> Tails, 2 -> Knuckles
Knuckles_Gliding_Flag	equ $FFFFFFF6	;	Address to store Knuckles Gliding information
Unknown_Flag			equ $FFFFFFF7	;	Unknown Flag used on some climb functions on the Knuckles code

; ---------------------------------------------------------------------------
; Object Status Table offsets (for everything between Object_RAM and Primary_Collision)
; ---------------------------------------------------------------------------
; universally followed object conventions:
render_flags equ		  1 ; bitfield ; bit 7 equ onscreen flag, bit 0 equ x mirror, bit 1 equ y mirror, bit 2 equ coordinate system
art_tile equ		  2 ; and 3 ; start of sprite's art
mappings equ		  4 ; and 5 and 6 and 7
x_pos equ			  8 ; and 9 ... some objects use $A and $B as well when extra precision is required (see ObjectMove) ... for screen-space objects this is called x_pixel instead
y_pos equ			 $C ; and $D ... some objects use $E and $F as well when extra precision is required ... screen-space objects use y_pixel instead
priority equ		$18 ; 0 equ front
width_pixels equ		$14
mapping_frame equ		$1A
; ---------------------------------------------------------------------------
; CONCHETUMARE
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
inertia equ		$14 ; and $15 ; directionless representation of speed... not updated in the air
flip_angle equ		$27 ; angle about the xequ0 axis (360 degrees equ 256) (twist/tumble)
air_left equ		$28
flip_turned equ		$29 ; 0 for normal, 1 to invert flipping (it's a 180 degree rotation about the axis of Sonic's spine, so he stays in the same position but looks turned around)
obj_control equ		$2A ; 0 for normal, 1 for hanging or for resting on a flipper, $81 for going through CNZ/OOZ/MTZ tubes or stopped in CNZ cages or stoppers or flying if Tails
status_secondary equ	$2B
flips_remaining equ	$2C ; number of flip revolutions remaining
flip_speed equ		$2D ; number of flip revolutions per frame / 256
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

double_jump_flag equ 		$21				;	If the double jump flag is in the register, activates double jump actions (like Fly, climb, swim, etc)
layer equ			$4E ; collision plane, track switching...
layer_plus equ		$4F ; always same as layer+1 ?? used for collision somehow
; ---------------------------------------------------------------------------
; VDP addressses
VDP_data_port equ			$C00000 ; (8equr/w, 16equr/w)
VDP_control_port equ		$C00004 ; (8equr/w, 16equr/w)