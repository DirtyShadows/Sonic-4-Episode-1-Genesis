BasicSelChar:
			move.b	#$E4,d0
			jsr	PlaySound_Special              	; Stop music
			jsr	ClearPLC			; Clear PLCs
			clr.b	($FFFFFF9C).w
			jsr	Pal_FadeFrom			; Fade out previous palette
			move	#$2700,sr

selchar_VDP:		lea	($C00004).l,a6			; Setup VDP
			move.w	#$8004,(a6)
			move.w	#$8230,(a6)
			move.w	#$8407,(a6)
			move.w	#$9001,(a6)
			move.w	#$9200,(a6)
			move.w	#$8B03,(a6)
			move.w	#$8720,(a6)
			clr.b	($FFFFF64E).w
			jsr	ClearScreen			; Clear screen
			lea	($FFFFD000).w,a1		; Clear $FFD000-$FFD7FF
			moveq	#0,d0
			move.w	#$7FF,d1

selchar_ClrObjRam:
			move.l	d0,(a1)+
			dbf	d1,selchar_ClrObjRam
				
selchar_Art:
			move.l	#$74000002,($C00004).l		;Localizacion en VRAM a usar
			lea	(Art_ASCII),a2			;Poner arte en memoria xd
			move.w	#$5A,d0				;Cantidad de bytes (hex) / $20
			jsr	LoadUncArt			;Cargar el arte a VRAM				

selchar_Mappings:
			move.l	#$40000003,d5
			lea	(SELCHAR_ASCII),a1
			move.w	#$6580,d3
			jsr	LoadASCII
				
selchar_ShowOnVDP:	
			move.w	#-$A,($FFFFF632).w
			move.w	($FFFFF60C).w,d0
			ori.b	#$40,d0
			move.w	d0,($C00004).l
			move.w	#0,($FFFFFB000+$80).w
				
selchar_Palette:
			lea	($FFFFFB80).w,a1
			moveq	#0,d0
			move.w	#$1F,d1

selchar_ClrPallet:
			move.l	d0,(a1)+
			dbf	d1,selchar_ClrPallet ; fill pallet with 0	(black)

selchar_LoadObj:	
			move.b	#$10,($FFFFD080).w ; load "SONIC TEAM PRESENTS"	object
			jsr	ObjectsLoad
			jsr	BuildSprites
			moveq	#$19,d0		; load Sonic's pallet
			jsr	PalLoad2				
			moveq	#$16,d0
			jsr	PalLoad2
;			jsr	Pal_FadeTo
; ---------------------------------------------------------------------------------------------------------------------
selchar_Loop:		move.b	#2,($FFFFF62A).w		; Function 2 in vInt
			jsr	DelayProgram			; Run delay program
			jsr	ObjectsLoad
			jsr	BuildSprites

			btst	#6,($FFFFF605).w 		; is button A pressed?
			bne.s	Selchar_Next			; if yes, branch

			andi.b	#$80,($FFFFF605).w		; is Start button pressed?
			beq.s	selchar_Loop			; if not, loop
;			jmp	selchar_Loop
selchar_Next:
			move.b	#$0C,($FFFFFF94).w ; go to next screen
			rts