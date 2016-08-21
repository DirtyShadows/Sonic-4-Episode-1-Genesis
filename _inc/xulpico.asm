Xulpico:			move.b	#$E4,d0
			jsr	PlaySound_Special              	; Stop the music
			jsr	ClearPLC			; Clear the PLC
			jsr	Pal_FadeFrom			; Fade out
			move	#$2700,sr

Xulpico_SetupVDP:	lea	($C00004).l,a6			; Setup teh VDP
			move.w	#$8004,(a6)			; Mode register 1 setting
			move.w	#$8230,(a6)			; Map Plane A setting
			move.w	#$8407,(a6)			; Map Plane B setting
			move.w	#$9001,(a6)			; Plane size setting
			move.w	#$9200,(a6)			; Window vertical position
			move.w	#$8B03,(a6)			; Mode register 3 setting
			move.w	#$8720,(a6)			; Backdrop color setting
			clr.b	($FFFFF64E).w
			jsr	ClearScreen			; Clear the actual screen
			lea	($FFFFD000).w,a1		; Clear $FFD000-$FFD7FF
			moveq	#0,d0
			move.w	#$7FF,d1

Xulpico_ClrObjRam:
			move.l	d0,(a1)+
			dbf	d1,Xulpico_ClrObjRam
				
Xulpico_Art:		move.l	#$40000000,($C00004).l		; Load art
			lea	(Art_Xulpico).l,a0
			jsr	NemDec
			move.l	#$54C00000,($C00004).l
			lea	(Nem_XulSpr).l,a0
			jsr	NemDec
				
Xulpico_Mappings:
			lea	($FF0000).l,a1			; Load screen mappings
			lea	(Map_Xulpico).l,a0
			move.w	#0,d0
			jsr	EniDec
				
Xulpico_ShowOnVDP:	lea	($FF0000).l,a1			; Show screen
			move.l	#$60000003,d0			; Location
			moveq	#$27,d1
			moveq	#$1B,d2
			jsr	ShowVDPGraphics				

			move.l	#$40000003,d5
			lea	(Xulpico_ASCII),a1
			move.w	#$580,d3
			jsr	LoadASCII
				
Xulpico_Palette:	
			lea	(Pal_Xulpico).l,a1		; Load palette
			lea	($FFFFFB80).w,a2
			move.b	#$40,d0
Xulpico_PalLoop:		move.l	(a1)+,(a2)+
			tst.w	d0
			beq.s	Xulpico_Music
			sub.w	#1,d0
			bra.s	Xulpico_PalLoop
				
Xulpico_Music:		move.w	#$97,d0		; Play music
			jsr	PlaySound
			moveq	#$19,d0		; load Sonic's pallet
			jsr	PalLoad1			
Xulpico_LoadObj:	
			jsr	Pal_Fadeto
			move.b	#$10,($FFFFD000).w ; load your object
			jsr	ObjectsLoad
			jsr	BuildSprites
; ---------------------------------------------------------------------------------------------------------------------
Xulpico_Loop:		move.b	#2,($FFFFF62A).w		; Function 2 in vInt
			jsr	DelayProgram			; Run delay program
			jsr	ObjectsLoad
			jsr	BuildSprites
			andi.b	#$80,($FFFFF605).w		; is Start button pressed?
			beq.s	Xulpico_Loop			; if not, loop
;			jmp	Xulpico_Loop
Xulpico_Next:
			move.b	#4,($FFFFF600).w ; go to next screen
			rts