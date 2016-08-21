Splash2:			move.b	#$E0,d0
			jsr	PlayMusic				  ; Stop the music
			jsr	ClearPLC			; Clear the PLC
			jsr	Pal_MakeFlash			; Fade out
			move	#$2700,sr

Splash2_SetupVDP:	lea	($C00004).l,a6			; Setup teh VDP
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

Splash2_ClrObjRam:
			move.l	d0,(a1)+
			dbf	d1,Splash2_ClrObjRam
				
Splash2_Art:		move.l	#$40000000,($C00004).l		; VRAM $0000
			lea	(Art_Splash2).l,a0		; Image's tiles
			jsr	NemDec				; Decompress
;Here, you may add the art used for your objects
;		   move.l	#$54C00000,($C00004).l
;		   lea	(Nem_ObjSplash2).l,a0
;		   jsr	NemDec
				
Splash2_Mappings:
			lea	($FF0000).l,a1			; Load screen mappings
			lea	(Map_Splash2).l,a0
			move.w	#0,d0
			jsr	EniDec
				
Splash2_ShowOnVDP:	lea	($FF0000).l,a1			; Show screen
			move.l	#$40000003,d0			; Location
			moveq	#$27,d1
			moveq	#$1B,d2
			jsr	ShowVDPGraphics				

Splash2_Palette:
		lea	(Pal_Splash2).l,a1
		lea	($FFFFFB80).w,a2
		moveq	#$1F,d0
	loop3:	move.l	(a1)+,(a2)+
		dbf	d0,loop3
				
Splash2_Music:		move.w	#$46,d0		; Play music
			jsr	PlaySound
; The own palette for your object.
;			moveq	#$19,d0		; load Sonic's pallet
;			jsr	PalLoad2				
Splash2_LoadObj:
			jsr	Pal_MakeFlash
			jsr	Pal_Fadeto
;Set the object's ID on $FFFFB000
			;move.b	#$00,($FFFFB000).w ; load your object
			jsr	RunObjects
			jsr	BuildSprites
; ---------------------------------------------------------------------------------------------------------------------
Splash2_Loop:		move.b	#2,(Delay_Time).w		; Function 2 in vInt
		move.w	#760,(Demo_Time_left).w	; run Sonic Team Screen for 300 frames		
		jsr	RunObjects
		jsr	BuildSprites
		bra.w Sega2_WaitEnd2

Sega2_WaitEnd2:	
		move.b	#2,(Delay_Time).w
		jsr	DelayProgram
		sub.w	#1,(Demo_Time_left).w	; add 1 to frame counter
		cmp.w	#360,(Demo_Time_left).w	; is the frame 360?
		beq.w	Sega2_GotoTitle
		andi.b	#$80,(Ctrl_1_Press).w ; is	Start button pressed?
		beq.w	Sega2_WaitEnd2	; if not, branch

Sega2_GotoTitle:
		clr.w	(Demo_Time_left).w	; clear frame counter
		move.b	#$4,(Game_Mode).w	; go to title screen
		rts
		
Pal_Splash2:		incbin	"STPAL.BIN"
			even
Art_Splash2:		incbin	"STTILES.BIN"
			even
Map_Splash2:		incbin	"STMAP.BIN"
			even
SplashScreen3:
	jsr		ssrgscreen
	even