; ---------------------------------------------------------------------------
; Constants
; ---------------------------------------------------------------------------

; VRAM data
vram_fg:	equ $C000	; foreground namespace
vram_bg:	equ $E000	; background namespace
vram_sonic:	equ $F000	; Sonic graphics
vram_sprites:	equ $F800	; sprite table
vram_hscroll:	equ $FC00	; horizontal scroll table

; Game modes
id_Sega:	equ ptr_GM_Sega-GameModeArray	; $00
id_Title:	equ ptr_GM_Title-GameModeArray	; $04
id_Demo:	equ ptr_GM_Demo-GameModeArray	; $08
id_Level:	equ ptr_GM_Level-GameModeArray	; $0C
id_Special:	equ ptr_GM_Special-GameModeArray; $10
id_Continue:	equ ptr_GM_Cont-GameModeArray	; $14
id_Ending:	equ ptr_GM_Ending-GameModeArray	; $18
id_Credits:	equ ptr_GM_Credits-GameModeArray; $1C

; Levels
id_GHZ:		equ 0
id_LZ:		equ 1
id_MZ:		equ 2
id_SLZ:		equ 3
id_SYZ:		equ 4
id_SBZ:		equ 5
id_EndZ:	equ 6
id_ABZ:		equ 7

; Colours
cBlack:		equ $000		; colour black
cWhite:		equ $EEE		; colour white
cBlue:		equ $E00		; colour blue
cGreen:		equ $0E0		; colour green
cRed:		equ $00E		; colour red
cYellow:	equ cGreen+cRed		; colour yellow
cAqua:		equ cGreen+cBlue	; colour aqua
cMagenta:	equ cBlue+cRed		; colour magenta

; Joypad input
btnStart:	equ %10000000 ; Start button	($80)
btnA:		equ %01000000 ; A		($40)
btnC:		equ %00100000 ; C		($20)
btnB:		equ %00010000 ; B		($10)
btnR:		equ %00001000 ; Right		($08)
btnL:		equ %00000100 ; Left		($04)
btnDn:		equ %00000010 ; Down		($02)
btnUp:		equ %00000001 ; Up		($01)
btnDir:		equ %00001111 ; Any direction	($0F)
btnABC:		equ %01110000 ; A, B or C	($70)
bitStart:	equ 7
bitA:		equ 6
bitC:		equ 5
bitB:		equ 4
bitR:		equ 3
bitL:		equ 2
bitDn:		equ 1
bitUp:		equ 0

; Object variables
obRender:	equ 1	; bitfield for x/y flip, display mode
obGfx:		equ 2	; palette line & VRAM setting (2 bytes)
obMap:		equ 4	; mappings address (4 bytes)
obX:		equ 8	; x-axis position (2-4 bytes)
obScreenY:	equ $A	; y-axis position for screen-fixed items (2 bytes)
obY:		equ $C	; y-axis position (2-4 bytes)
obVelX:		equ $10	; x-axis velocity (2 bytes)
obVelY:		equ $12	; y-axis velocity (2 bytes)
obInertia:	equ $14	; potential speed (2 bytes)
obHeight:	equ $16	; height/2
obWidth:	equ width_pixels	; width/2
obPriority:	equ priority	; sprite stack priority -- 0 is front
obActWid:	equ $19	; action width
obFrame:	equ $1A	; current frame displayed
obAniFrame:	equ $1B	; current frame in animation script
obAnim:		equ $1C	; current animation
obNextAni:	equ $1D	; next animation
obTimeFrame:	equ $1E	; time to next frame
obDelayAni:	equ $1F	; time to delay animation
obColType:	equ $20	; collision response type
obColProp:	equ $21	; collision extra property
obStatus:	equ $22	; orientation or mode
obRespawnNo:	equ respawn_index	; respawn list index number
obRoutine:	equ $24	; routine number
ob2ndRout:	equ $25	; secondary routine number
obAngle:	equ $26	; angle
obSubtype:	equ $28	; object subtype
obSolid:	equ ob2ndRout ; solid status flag

; Animation flags
afEnd:		equ $FF	; return to beginning of animation
afBack:		equ $FE	; go back (specified number) bytes
afChange:	equ $FD	; run specified animation
afRoutine:	equ $FC	; increment routine counter
afReset:	equ $FB	; reset animation and 2nd object routine counter
af2ndRoutine:	equ $FA	; increment 2nd routine counter

; Background music
bgm_GHZ:	equ ((Music81-MusicIndex)/4)+$81
bgm_LZ:		equ ((Music82-MusicIndex)/4)+$81
bgm_MZ:		equ ((Music83-MusicIndex)/4)+$81
bgm_SLZ:	equ ((Music84-MusicIndex)/4)+$81
bgm_SYZ:	equ ((Music85-MusicIndex)/4)+$81
bgm_SBZ:	equ ((Music86-MusicIndex)/4)+$81
bgm_Invincible:	equ ((Music87-MusicIndex)/4)+$81
bgm_ExtraLife:	equ ((Music88-MusicIndex)/4)+$81
bgm_SS:		equ ((Music89-MusicIndex)/4)+$81
bgm_Title:	equ ((Music8A-MusicIndex)/4)+$81
bgm_Ending:	equ ((Music8B-MusicIndex)/4)+$81
bgm_Boss:	equ ((Music8C-MusicIndex)/4)+$81
bgm_FZ:		equ ((Music8D-MusicIndex)/4)+$81
bgm_GotThrough:	equ ((Music23-MusicIndex)/4)+$23
bgm_GameOver:	equ ((Music8F-MusicIndex)/4)+$81
bgm_Continue:	equ ((Music90-MusicIndex)/4)+$81
bgm_Credits:	equ ((Music91-MusicIndex)/4)+$81
bgm_Drowning:	equ ((Music92-MusicIndex)/4)+$81
bgm_Emerald:	equ ((Music93-MusicIndex)/4)+$81

; Sound effects
sfx_Jump:	equ ((SoundA0-SoundIndex)/4)+$A0
sfx_Lamppost:	equ ((SoundA1-SoundIndex)/4)+$A0
sfx_A2:		equ ((SoundA2-SoundIndex)/4)+$A0
sfx_Death:	equ ((SoundA3-SoundIndex)/4)+$A0
sfx_Skid:	equ ((SoundA4-SoundIndex)/4)+$A0
sfx_A5:		equ ((SoundA5-SoundIndex)/4)+$A0
sfx_HitSpikes:	equ ((SoundA6-SoundIndex)/4)+$A0
sfx_Push:	equ ((SoundA7-SoundIndex)/4)+$A0
sfx_SSGoal:	equ ((SoundA8-SoundIndex)/4)+$A0
sfx_SSItem:	equ ((SoundA9-SoundIndex)/4)+$A0
sfx_Splash:	equ ((SoundAA-SoundIndex)/4)+$A0
sfx_AB:		equ ((SoundAB-SoundIndex)/4)+$A0
sfx_HitBoss:	equ ((SoundAC-SoundIndex)/4)+$A0
sfx_Bubble:	equ ((SoundAD-SoundIndex)/4)+$A0
sfx_Fireball:	equ ((SoundAE-SoundIndex)/4)+$A0
sfx_Shield:	equ ((SoundAF-SoundIndex)/4)+$A0
sfx_Saw:	equ ((SoundB0-SoundIndex)/4)+$A0
sfx_Electric:	equ ((SoundB1-SoundIndex)/4)+$A0
sfx_Drown:	equ ((SoundB2-SoundIndex)/4)+$A0
sfx_Flamethrower:equ ((SoundB3-SoundIndex)/4)+$A0
sfx_Bumper:	equ ((SoundB4-SoundIndex)/4)+$A0
sfx_Ring:	equ ((SoundB5-SoundIndex)/4)+$A0
sfx_SpikesMove:	equ ((SoundB6-SoundIndex)/4)+$A0
sfx_Rumbling:	equ ((SoundB7-SoundIndex)/4)+$A0
sfx_B8:		equ ((SoundB8-SoundIndex)/4)+$A0
sfx_Collapse:	equ ((SoundB9-SoundIndex)/4)+$A0
sfx_SSGlass:	equ ((SoundBA-SoundIndex)/4)+$A0
sfx_Door:	equ ((SoundBB-SoundIndex)/4)+$A0
sfx_Teleport:	equ ((SoundBC-SoundIndex)/4)+$A0
sfx_ChainStomp:	equ ((SoundBD-SoundIndex)/4)+$A0
sfx_Roll:	equ ((SoundBE-SoundIndex)/4)+$A0
sfx_Continue:	equ ((SoundBF-SoundIndex)/4)+$A0
sfx_Basaran:	equ ((SoundC0-SoundIndex)/4)+$A0
sfx_BreakItem:	equ ((SoundC1-SoundIndex)/4)+$A0
sfx_Warning:	equ ((SoundC2-SoundIndex)/4)+$A0
sfx_GiantRing:	equ ((SoundC3-SoundIndex)/4)+$A0
sfx_Bomb:	equ ((SoundC4-SoundIndex)/4)+$A0
sfx_Cash:	equ ((SoundC5-SoundIndex)/4)+$A0
sfx_RingLoss:	equ ((SoundC6-SoundIndex)/4)+$A0
sfx_ChainRise:	equ ((SoundC7-SoundIndex)/4)+$A0
sfx_Burning:	equ ((SoundC8-SoundIndex)/4)+$A0
sfx_Bonus:	equ ((SoundC9-SoundIndex)/4)+$A0
sfx_EnterSS:	equ ((SoundCA-SoundIndex)/4)+$A0
sfx_WallSmash:	equ ((SoundCB-SoundIndex)/4)+$A0
sfx_Spring:	equ ((SoundCC-SoundIndex)/4)+$A0
sfx_Switch:	equ ((SoundCD-SoundIndex)/4)+$A0
sfx_RingLeft:	equ ((SoundCE-SoundIndex)/4)+$A0
sfx_Signpost:	equ ((SoundCF-SoundIndex)/4)+$A0
sfx_Waterfall:	equ $D0