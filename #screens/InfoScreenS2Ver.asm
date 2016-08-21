
; ===============================================================
; Info Screen
; ===============================================================

KosOutput	equ	$FF0000
HScrollBuff	equ	Horiz_Scroll_Buf	; $380	Hscroll Buffer
ObjectsRAM	equ	Object_RAM	; $1000	Objects RAM
PalActive	equ	Normal_palette	; $80	Active palette buffer
PalTarget	equ	Second_palette	; $80	Target palette
PLCBuffer	equ	$FFFFF680	; $60	PLC buffer

GameMode	equ	$FFFFF600	; b
;Joypad		equ	$FFFFF604
VScroll		equ	$FFFFF616	; l	VScroll (A/B)
PalFadePos	equ	$FFFFF626	; b
PalFadeLen	equ	$FFFFF627	; b
VBlankSub	equ	$FFFFF62A	; b
WaterState	equ	Water_move	; b


; VRAM Offsets

_VRAM_PlaneA	equ	$C000
_VRAM_PlaneB	equ	$E000
_VRAM_Font	equ	$840
_VRAM_Font_T	equ	(_VRAM_Font/$20)

; VRAM flags

_pal0		equ	0	; palette select
_pal1		equ	1<<13	;
_pal2		equ	2<<13	;
_pal3		equ	3<<13	;

; Send data to VRAM via DMA
MOVvram	macro	src,len,dest
	move.l	#$94000000+(((\len>>1)&$FF00)<<8)+$9300+((\len>>1)&$FF),(a6)
	move.l	#$96000000+(((\src>>1)&$FF00)<<8)+$9500+((\src>>1)&$FF),(a6)
	move.w	#$9700+((((\src>>1)&$FF0000)>>16)&$7F),(a6)
	move.w	#$4000+(\dest&$3FFF),(a6)
	move.w	#$80+((\dest&$C000)>>14),(a6)
	endm

; ===============================================================
InfoScreen:
	moveq	#$FFFFFFE4,d0
	jsr	PlaySound_Special	; stop music
	jsr	ClearPLC		; clear pattern load cues
	jsr	Pal_FadeFrom		; fade out pallete
	move	#$2700,sr		; disable interrupts

	; Setup VDP registers
	lea	VDP_Ctrl,a6
	move.w	#$8004,(a6)		; Disable HInt
	move.w	#$8134,(a6)		; Disable DISPLAY
	move.w	#$8200+(_VRAM_PlaneA/$400),(a6)
	move.w	#$8400+(_VRAM_PlaneB/$2000),(a6)
	move.w	#$8700,(a6)     	; Backdrop color
	move.w	#$8B00,(a6)		; HScroll mode = 'full'

	 ; Clear stuff
	moveq	#0,d0
	move.b	d0,WaterState
	move.l	d0,VScroll
	jsr	ClearScreen

	; Load font
	lea	Art_MenuFont,a0
	lea	KosOutput,a1
	jsr	KosDec
	MOVvram	KosOutput,$20*$74,_VRAM_Font	; Menu font

	; Load palette
	lea	PalActive,a0
	move.w	#$000,2(a0)
	move.w	#$EEE,$E(a0)
	move.w	#$000,$22(a0)
	move.w	#$0EE,$2E(a0)

	; Play music
	moveq	#0,d0
	jsr	Set_MegaPCM_Mode
	moveq	#$FFFFFF87,d0
	jsr	PlaySample
	
	; Enable DISPLAY
	move.w	#$8174,VDP_Ctrl

; ===============================================================

_MoveSpeed = $40
                                                         
	lea	VDP_Ctrl,a6
	lea	-4(a6),a5
	lea	InfoScreen_Data,a0
	vram	_VRAM_PlaneA,d7		; d7 = VRAM Req Base
	moveq	#28,d6			; d6 = Row number
	moveq	#6,d5			; d5 = Row counter  (was 15)
	move.b	#0,GameMode
	bra.s	InfoScreen_DrawString

InfoScreen_Loop:
	move.b	#2,VBlankSub
	jsr	DelayProgram

	tst.w	d5			; Strings over?
	beq.s	InfoScreen_Quit

	; Scroll screen
	move.l	VScroll,d0
	move.l	d0,d1
	swap	d1			; d1 = Old pos
	addi.l	#_MoveSpeed<<8,d0
	move.l	d0,VScroll
	swap	d0			; d0 = New pos
	eor.w	d1,d0
	andi.w	#$10,d0
	beq.s	InfoScreen_Loop		; if row didn't change, branch

	; Draw new string
InfoScreen_DrawString:
	bsr.s	InfoScreen_CalcStringPos	; d0 = VRAM addr
	pea	InfoScreen_Loop
	move.b	(a0)+,d1
	beq.s	InfoScreen_ClearString
	bmi.s	InfoScreen_ClearString_End
	moveq	#0,d3				; d3 = pattern
	subq.b	#1,d1
	beq	Menu_DrawText
	move.w	#_pal1,d3
	bra	Menu_DrawText

InfoScreen_Quit:
	tst.b	Joypad|Press
	bpl.s	InfoScreen_Loop

	st.b	NonNoobPalette
	sf.b	DisablePalCycle
	rts

; ===============================================================

InfoScreen_ClearString_End:
	subq.w	#1,a0
	tst.w	d5
	beq.s	InfoScreen_ClearString
	subq.w	#1,d5

InfoScreen_ClearString:
	moveq	#0,d2		; d2 = fill pattern
	moveq	#1,d3		; d3 = number of rows
                                                                  
.InfoScreen0	move.l	d0,(a6)
	moveq	#38/2-1,d1	; d1 = number of chars in row / 2

.InfoScreen1	move.l	d2,(a5)
	dbf	d1,.InfoScreen1
	
	addi.l	#$80<<16,d0
	dbf	d3,.InfoScreen0
	rts

; ===============================================================

InfoScreen_CalcStringPos:
  	move.l	d6,d0		; d0 = Row
	addq.b	#2,d6
	andi.b	#$1F,d6
	lsl.w	#7,d0		; d0 = Row * $80
	addq.w	#2,d0		; +1 tile
	swap	d0
	add.l	d7,d0		; d0 = VRAM offset
	rts


; ---------------------------------------------------------------
; Subroutine to draw text on screen
; ---------------------------------------------------------------
; INPUT:
;	d0 = VRAM addr
;	d3 = Pattern base
;	a0 = Text
; ---------------------------------------------------------------

Menu_DrawText:
	lea	VDP_Ctrl,a6
	lea	-4(a6),a5
	moveq	#1,d1		; d1 = tile switcher
	swap	d1

.Menu1:	lea	(a0),a1		; a1 = copy of text
	move.l	d0,(a6)

.Menu2:	moveq	#0,d2
	move.b	(a1)+,d2	; d2 = char
	beq.s	.Menu4
	cmpi.b	#' ',d2		; is char space?
	bls.s	.Menu3
	add.w	d2,d2
	add.w	d3,d2
	add.w	d1,d2
	move.w	d2,(a5)		; display char
	bra.s	.Menu2

.Menu3:	moveq	#0,d2
	move.w	d2,(a5)		; display space
	bra.s	.Menu2

.Menu4:	addi.l	#$80<<16,d0	; next row
	swap	d1
	tst.w	d1
	bne.s	.Menu1
	lea	(a1),a0		; skip char array (useful ^_^)
	rts


; ===============================================================
; ---------------------------------------------------------------
; Info screen data array
; ----------------------------------------------------------------

InfoScreen_Data:

	dc.b	2,'       SONIC 4 MEGADRIVE EDITION      ',0
	dc.b	0
	dc.b	0
	dc.b	2,'              CREATED BY              ',0
	dc.b	1,'              THERETROGUY             ',0
	dc.b	0
	dc.b	2,'       LEVELS AND PROGRAMMING BY      ',0
	dc.b	1,'              THERETROGUY             ',0
	dc.b	0
	dc.b	2,'       DIGITAL SOUND POWERED BY       ',0
	dc.b	1,'               MEGA PCM               ',0
	dc.b	1,'                 AND                  ',0
	dc.b	1,'   MEGA PCM: TWO CHANNEL COMING SOON  ',0
	dc.b	0
	dc.b	2,'          DIGITAL TRACKS USED         ',0
	dc.b	1,'       MAX PAYNE - BATTLE THEME       ',0
	dc.b	1,'   SONIC RUSH ADVENTURE - BIG SWELL   ',0
	dc.b	1,'        BENNY HILL - MAIN THEME       ',0
	dc.b	1,'    PANTY AND STOCKING - CHAMPION     ',0
	dc.b	0
	dc.b	2,'       OTHER VOICES AND SFX FROM      ',0
	dc.b	1,"    SONIC ADVENTURE: DIRECTOR'S CUT   ",0
	dc.b	0
	dc.b	2,'        ... EXCEPT FOR PINGAS         ',0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	1,'THE HACK HAS BEEN DEVELOPED IN 3      ',0
	dc.b	1,'YEARS, EXCEPT FOR THE FOLLOWING PRE-  ',0
	dc.b	1,'EXISTING CONTENT:                     ',0
	dc.b	0
	dc.b	1,'FEW CUSTOM TOOLS                      ',0
	dc.b	1,'SYZ 2 BOSS (PHASE 1 ONLY)             ',0
	dc.b	1,'CREDITS SCREEN                        ',0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	1,"      YOU'VE UNLOCKED A SECRET:      ",0
	dc.b	0
	dc.b	2,'          NON-NOOB PALETTES          ',0
	dc.b	0
	dc.b	1,'      WOULD YOU LIKE TO REPLAY?      ',0


	dc.b	-1	; End of screen
	even

Art_MenuFont:
	binclude	"gfx\MenuFont.4bpp.kos"
	even