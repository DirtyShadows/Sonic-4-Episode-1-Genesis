SoundTest:
				move.b	#$E4,d0
				jsr	Playsound_special               ; Stop music
				jsr	ClearPLC			; Clear PLCs
				move	#$2700,sr
				move.b	#1,($FFFFFFBA).w

SoundTestScreen_VDP:		lea	($C00004).l,a6			; Setup VDP
				move.w	#$8004,(a6)
				move.w	#$8230,(a6)
				move.w	#$8407,(a6)
				move.w	#$9001,(a6)
				move.w	#$9200,(a6)
				move.w	#$8B03,(a6)
				move.w	#$8720,(a6)
				clr.b	($FFFFF64E).w
				jsr	ClearScreen			; Clear screen
				lea	($FFFFD000).w,a1
				moveq	#0,d0
				move.w	#$7FF,d1

SoundTest_ClrObjRam:
				move.l	d0,(a1)+
				dbf	d1,SoundTest_ClrObjRam
				
SoundTestScreen_Art:		move.l	#$74000002,($C00004).l
				lea	(Art_ASCII),a2
				move.w	#$5A,d0
				jsr	LoadUncArt
SoundTestScreen_Palette:
				lea	($FFFFFB80).w,a1
				moveq	#0,d0
				move.w	#$1F,d1

SoundTest_ClrPallet:
				move.l	d0,(a1)+
				dbf	d1,SoundTest_ClrPallet ; fill pallet with 0	(black)
				moveq	#$16,d0
				jsr	PalLoad1
				jsr	Pal_FadeTo
	
SoundTestScreen_LoadObj:
				move.b	#$10,($FFFFD080).w ; load "SONIC TEAM PRESENTS"	object
				jsr	ObjectsLoad
				jsr	BuildSprites
				moveq	#$19,d0		; load Sonic's pallet
				jsr	PalLoad2				
; ---------------------------------------------------------------------------------------------------------------------
SoundTestScreen_Loop:		move.b	#2,($FFFFF62A).w		; Function 2 in vInt
				jsr	DelayProgram			; Run delay program
				jsr	ObjectsLoad
				jsr	BuildSprites
				andi.b	#$80,($FFFFF605).w		; is Start button pressed?
				beq.s	SoundTestScreen_Loop		; if not, loop
SoundTestScreen_Next:
				move.b	#0,($FFFFFFBA).w
				move.b	#4,($FFFFFF94).w
				rts
; ---------------------------------------------------------------------------------------------------------------------
