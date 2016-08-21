Splash:            move.b    #$E4,d0
            jsr    PlayMusic                  ; Stop the music
            jsr    ClearPLC            ; Clear the PLC
            jsr    Pal_FadeFrom            ; Fade out
            move    #$2700,sr

Splash_SetupVDP:    lea    ($C00004).l,a6            ; Setup teh VDP
            move.w    #$8004,(a6)            ; Mode register 1 setting
            move.w    #$8230,(a6)            ; Map Plane A setting
            move.w    #$8407,(a6)            ; Map Plane B setting
            move.w    #$9001,(a6)            ; Plane size setting
            move.w    #$9200,(a6)            ; Window vertical position
            move.w    #$8B03,(a6)            ; Mode register 3 setting
            move.w    #$8720,(a6)            ; Backdrop color setting
            clr.b    ($FFFFF64E).w
            jsr    ClearScreen            ; Clear the actual screen
            lea    ($FFFFD000).w,a1        ; Clear $FFD000-$FFD7FF
            moveq    #0,d0
            move.w    #$7FF,d1

Splash_ClrObjRam:
            move.l    d0,(a1)+
            dbf    d1,Splash_ClrObjRam
                
Splash_Art:        move.l    #$40000000,($C00004).l        ; VRAM $0000
            lea    (Art_Splash).l,a0        ; Image's tiles
            jsr    NemDec                ; Decompress
;Here, you may add the art used for your objects
;           move.l    #$54C00000,($C00004).l
;           lea    (Nem_ObjSplash).l,a0
;           jsr    NemDec
                
Splash_Mappings:
            lea    ($FF0000).l,a1            ; Load screen mappings
            lea    (Map_Splash).l,a0
            move.w    #0,d0
            jsr    EniDec
                
Splash_ShowOnVDP:    lea    ($FF0000).l,a1            ; Show screen
            move.l    #$40000003,d0            ; Location
            moveq    #$27,d1
            moveq    #$1B,d2
            jsr    ShowVDPGraphics                

Splash_Palette:
      lea   (Pal_Splash).l,a1
      lea   ($FFFFFB80).w,a2
      moveq   #$1F,d0
   loop2:   move.l   (a1)+,(a2)+
      dbf   d0,loop2
                
Splash_Music:        move.w    #$C5,d0        ; Play music
            jsr    PlaySound
; The own palette for your object.
;            moveq    #$19,d0        ; load Sonic's pallet
;            jsr    PalLoad2                
Splash_LoadObj:    
            jsr    Pal_Fadeto
;Set the object's ID on $FFFFB000
            ;move.b    #$00,($FFFFB000).w ; load your object
            jsr    RunObjects
            jsr    BuildSprites
; ---------------------------------------------------------------------------------------------------------------------
Splash_Loop:        move.b    #2,(Delay_Time).w       ; Function 2 in vInt
		move.w	#760,(Demo_Time_left).w	; run Sonic Team Screen for 300 frames	
        ;    jsr    DelayProgram            ; Run delay program
            jsr    RunObjects
            jsr    BuildSprites
			bra.w Sega2_WaitEnd
			
Sega2_WaitEnd:	
		move.b	#2,(Delay_Time).w
		jsr	DelayProgram
		sub.w	#1,(Demo_Time_left).w	; add 1 to frame counter
		cmp.w	#360,(Demo_Time_left).w	; is the frame 360?
		beq.w	Sega2_GotoTitle1
		andi.b	#$80,(Ctrl_1_Press).w ; is	Start button pressed?
		beq.w	Sega2_WaitEnd	; if not, branch

Sega2_GotoTitle1:
			clr.w	(Demo_Time_left).w	; clear frame counter
            jsr	Splashscreen3 ; go to next screen
            rts

Pal_Splash:		incbin	"PALETTEFILE.BIN"
			even
Art_Splash:		incbin	"TILESFILE.BIN"
			even
Map_Splash:		incbin	"MAPSFILE.BIN"
			even
Splashscreen2:
		include _inc\splash2.asm
		even
		