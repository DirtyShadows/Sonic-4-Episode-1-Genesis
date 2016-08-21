; SSRG Splash Screen by HCKTROX and DeoxysKyogre

SSRGScreen:			move.b	#$E4,d0
				jsr	Playsound_special               ; Stop music
				jsr	ClearPLC			; Clear PLCs
				jsr	Pal_FadeFrom			; Fade out previous palette
				move	#$2700,sr
				jsr	SoundDriverLoad

SSRGScreen_VDP:			lea	($C00004).l,a6			; Setup VDP
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

SSRG_ClrObjRam:
				move.l	d0,(a1)+
				dbf	d1,SSRG_ClrObjRam
			
SSRGScreen_Art:			move.l	#$40000000,($C00004).l		; Load art
				lea	(Art_SSRG).l,a0
				jsr	NemDec
				
SSRGScreen_Mappings:		lea	($FF0000).l,a1			; Load screen mappings
				lea	(Map_SSRG).l,a0
				move.w	#0,d0
				jsr	EniDec
				
SSRGScreen_ShowOnVDP:		lea	($FF0000).l,a1			; Show screen
				move.l	#$40000003,d0
				moveq	#$27,d1
				moveq	#$1B,d2
				jsr	ShowVDPGraphics				
				
SSRGScreen_Palette:		lea	(Pal_SSRG).l,a1		; Load palette
				lea	($FFFFFB80).w,a2
				move.b	#$40,d0
SSRGScreen_PalLoop:		move.l	(a1)+,(a2)+
				tst.w	d0
				beq.s	SSRGScreen_Music
				sub.w	#1,d0
				bra.s	SSRGScreen_PalLoop
				
SSRGScreen_Music:		move.w	#$0E,d0				; Play music
				jsr	PlaySound
				jsr	Pal_FadeTo			; Fade palette in

; ---------------------------------------------------------------------------------------------------------------------
SSRGScreen_Loop:		move.b	#2,(Delay_Time).w		; Function 2 in vInt
		move.w	#760,(Demo_Time_left).w	; run Sonic Team Screen for 300 frames		
		jsr	RunObjects
		jsr	BuildSprites
		bra.w Sega2_WaitEnd3

Sega2_WaitEnd3:	
		move.b	#2,(Delay_Time).w
		jsr	DelayProgram
		sub.w	#1,(Demo_Time_left).w	; add 1 to frame counter
		cmp.w	#360,(Demo_Time_left).w	; is the frame 360?
		beq.w	Sega3_GotoTitle
		andi.b	#$80,(Ctrl_1_Press).w ; is	Start button pressed?
		beq.w	Sega2_WaitEnd3	; if not, branch

Sega3_GotoTitle:
		clr.w	(Demo_Time_left).w	; clear frame counter
		jsr	SRScreen	; go to title screen
		rts
		
Pal_SSRG:		incbin	"SSRGPAL.BIN"
			even
Art_SSRG:		incbin	"SSRG.BIN"
			even
Map_SSRG:		incbin	"SSRGMAP.BIN"
			even
; ---------------------------------------------------------------------------------------------------------------------