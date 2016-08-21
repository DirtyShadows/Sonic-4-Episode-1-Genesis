LevelSel:
				move.b	#$9A,d0
				jsr	Playsound_special               ; Stop music
				jsr	ClearPLC			; Clear PLCs
				move	#$2700,sr
				move.b	#1,($FFFFFF9A).w
				clr.b	($FFFFFFAD).w
				clr.w	($FFFFFE10).w

LevSelScreen_VDP:		lea	($C00004).l,a6			; Setup VDP
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

LevSel_ClrObjRam:
				move.l	d0,(a1)+
				dbf	d1,LevSel_ClrObjRam
				move.b	#0,($FFFFFE30).w ; clear lamppost counter

				
LevSelScreen_Art:		move.l	#$74000002,($C00004).l
				lea	(Art_ASCII),a2
				move.w	#$5A,d0
				jsr	LoadUncArt
				move.l	#$60000001,($C00004).l
				lea	(Nem_Ls).l,a0 ;	load Sonic title screen	patterns
				jsr	NemDec
				move.b	#$01,d0
				jsr	PlaySound

LevSel_Mappings:
				move.l	#$40000003,d5
				lea	(LevSel_ASCII),a1
				move.w	#$6580,d3
				jsr	LoadASCII
				
LevSel_ShowOnVDP:	
				move.w	#-$A,($FFFFF632).w
				move.w	($FFFFF60C).w,d0
				ori.b	#$40,d0
				move.w	d0,($C00004).l
				move.w	#0,($FFFFFB000+$80).w

LevSelScreen_Palette:
				lea	($FFFFFB80).w,a1
				moveq	#0,d0
				move.w	#$1F,d1

LevSel_ClrPallet:
				move.l	d0,(a1)+
				dbf	d1,LevSel_ClrPallet ; fill pallet with 0	(black)
				move.b	#$10,($FFFFD080).w ; load "LEVEL SELECT"	object
				move.b	#$0F,($FFFFD000).w ; load cursor object
				jsr	ObjectsLoad
				jsr	BuildSprites
				moveq	#$16,d0
				jsr	PalLoad1
				moveq	#$19,d0		; load Sonic's pallet
				jsr	PalLoad1
				jsr	Pal_FadeTo
; ---------------------------------------------------------------------------------------------------------------------
LevSelScreen_Loop:		move.b	#2,($FFFFF62A).w		; Function 2 in vInt
				jsr	DelayProgram			; Run delay program
				jsr	ObjectsLoad
				jsr	BuildSprites
				cmpi.b	#1,($FFFFFF9B).w
				beq	LevSel_Enter
				andi.b	#$80,($FFFFF605).w		; is Start button pressed?
				beq.s	LevSelScreen_Loop		; if not, loop
LevSelScreen_Next:
				cmpi.b	#$10,($FFFFD010).w
				beq	LevSelScreen_GoToX
				move.b	#$00,($FFFFD000).w
				lea	($FFFFD0C0).w,a5
				move.b	#$0F,0(a5)
				move.b	#1,$28(a5)
				jmp	LevSelScreen_Loop
				rts

LevSelScreen_GoToX:
				move.b	#$20,($FFFFFF94).w
				rts

LevSel_Enter:
				clr.b	($FFFFFF9B).w
				move.b	#0,($FFFFFF9A).w
				move.b	#$50,($FFFFFF94).w
				move.b	#3,($FFFFFE12).w ; set lives to	3
				moveq	#0,d0
				move.w	d0,($FFFFFE20).w ; clear rings
				move.l	d0,($FFFFFE22).w ; clear time
				move.l	d0,($FFFFFE26).w ; clear score
				move.b	d0,($FFFFFE16).w ; clear special stage number
				move.b	d0,($FFFFFE57).w ; clear emeralds
				move.l	d0,($FFFFFE58).w ; clear emeralds
				move.l	d0,($FFFFFE5C).w ; clear emeralds
				move.b	d0,($FFFFFE18).w ; clear continues
				move.b	#$E0,d0
				jsr	PlaySound_Special           		
				rts

; ---------------------------------------------------------------------------------------------------------------------
