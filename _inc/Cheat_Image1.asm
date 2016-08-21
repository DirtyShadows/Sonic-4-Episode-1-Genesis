Cheat1Screen_MusicID		EQU	$8C				; Music to play
Cheat1Screen_NxtScr		EQU	$04				; Screen mode to go to next (Title Screen)
Cheat1Screen_Wait		EQU	$FF				; Time to wait

; ---------------------------------------------------------------------------------------------------------------------
Cheat1Screen:			move.b	#$E4,d0
				jsr	Playsound_special               ; Stop music
				jsr	ClearPLC			; Clear PLCs
				jsr	Pal_FadeFrom			; Fade out previous palette
				move	#$2700,sr
				jsr	SoundDriverLoad

Cheat1Screen_VDP:		lea	($C00004).l,a6			; Setup VDP
				move.w	#$8004,(a6)
				move.w	#$8230,(a6)
				move.w	#$8407,(a6)
				move.w	#$9001,(a6)
				move.w	#$9200,(a6)
				move.w	#$8B03,(a6)
				move.w	#$8720,(a6)
				clr.b	($FFFFF64E).w
				jsr	ClearScreen			; Clear screen
				
Cheat1Screen_Art:		move.l	#$40000000,($C00004).l		; Load art
				lea	(Art_Cheat1Screen).l,a0
				jsr	NemDec
				
Cheat1Screen_Mappings:		lea	($FF0000).l,a1			; Load screen mappings
				lea	(Map_Cheat1Screen).l,a0
				move.w	#0,d0
				jsr	EniDec
				
Cheat1Screen_ShowOnVDP:		lea	($FF0000).l,a1			; Show screen
				move.l	#$40000003,d0
				moveq	#$27,d1
				moveq	#$1B,d2
				jsr	ShowVDPGraphics				
				
Cheat1Screen_Palette:		lea	(Pal_Cheat1Screen).l,a1		; Load palette
				lea	($FFFFFB80).w,a2
				move.b	#$40,d0
Cheat1Screen_PalLoop:		move.l	(a1)+,(a2)+
				tst.w	d0
				beq.s	Cheat1Screen_Music
				sub.w	#1,d0
				bra.s	Cheat1Screen_PalLoop
				
Cheat1Screen_Music:		move.w	#Cheat1Screen_MusicID,d0		; Play music
				jsr	PlaySound
				
Cheat1Screen_SetWait:		move.w	#Cheat1Screen_Wait,($FFFFF614).w	; Wait time
				jsr	Pal_FadeTo			; Fade palette in

; ---------------------------------------------------------------------------------------------------------------------
Cheat1Screen_Loop:		move.b	#2,($FFFFF62A).w		; Function 2 in vInt
				jsr	DelayProgram			; Run delay program
;				tst.w	($FFFFF614).w			; Test wait time
;				beq.s	Cheat1Screen_Next			; is it over? branch
				andi.b	#$80,($FFFFF605).w		; is Start button pressed?
				beq.s	Cheat1Screen_Loop			; if not, loop

Cheat1Screen_Next:
				clr.w	($FFFFF600).w
				move.b	#Cheat1Screen_NxtScr,($FFFFFF94).w ; go to next screen
				rts	
				
; ---------------------------------------------------------------------------------------------------------------------
Art_Cheat1Screen:			incbin	"Cheat1/Tiles.bin"
				even
Map_Cheat1Screen:			incbin	"Cheat1/Maps.bin"
				even
Pal_Cheat1Screen:			incbin	"Cheat1/Palette.bin"
				even