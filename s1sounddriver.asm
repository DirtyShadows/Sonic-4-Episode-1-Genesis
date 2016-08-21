; ---------------------------------------------------------------------------
; Subroutine to	load the sound driver
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SoundDriverLoad:            ; XREF: GameClrRAM; TitleScreen
LoadZ80drv:
	if Useoldsounddriver = 0
		move.w #$100,(Z80_Bus_Request).l ; stop the Z80
		move.w #$100,(Z80_Reset).l ; reset the Z80
		lea (MegaPCM).l,a0
		lea (Z80_RAM).l,a1
		jsr   (KosDec).l
		lea (DAC_Table).l,a0
;		move.w #(MegaPCM_End-DAC_Table)-1,d1 ; This was the original opcode
		move.w #(MegaPCM_EndOfTable-DAC_Table)-1,d1		; Changed to this because
														; the sound driver is now 
														; Kosiniski Compressed
    @Load:    move.b    (a0)+,(a1)+
        dbf    d1,@Load
		moveq #0,d1
		move.w d1,(Z80_Reset).l
		nop 
		nop 
		nop 
		nop 
		move.w #$100,(Z80_Reset).l ; reset the Z80 
		move.w d1,(Z80_Bus_Request).l ; start the Z80 
		rts 
; End of function SoundDriverLoad
	else
		nop
		move.w	#$100,(z80_bus_request).l
		resetZ80
		lea		(RomEndLoc).l,a0
		move.l	(a0),d0
		addq.l	#1,d0
		movea.l	d0,a0
		lea	($A00000).l,a1
		jsr   (KosDec).l
; 		lea	(DriverResetData).l,a0
;		lea	($A01C8A).l,a1									; z80 ram start of variables (A01C00 in older version)
;		move.w	#DriverResetDataEnd-DriverResetData,d0
 
;DriverResetDataLoadLoop:
;		move.b	(a0)+,(a1)+
;		dbf	d0,DriverResetDataLoadLoop
	btst	#0,($C00005).l	; check video mode
		sne		($A01C02).l          					; set PAL mode flag 

		resetZ80a
		nop
		nop	
		nop	
		nop	
		resetZ80
		startZ80
		rts
; End of function SoundDriverLoad
 
DriverResetData:
		dc.b	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DriverResetDataEnd:
        endif
;End of function SoundDriverLoad
; ---------------------------------------------------------------------------
; Subroutines to control Mega PCM
; ---------------------------------------------------------------------------

;Z80_RAM			equ	$A00000
MegaPCM_InputFlag	equ	$1FFC  
MegaPCM_Mode		equ	$1FFD
MegaPCM_DAC_Number_2	equ	$1FFE
MegaPCM_DAC_Number	equ	$1FFF

; ---------------------------------------------------------------------------
PlaySample:
	lea	Z80_RAM,a3
	stopz80
	move.b	#1,MegaPCM_InputFlag(a3)
	move.b	d0,MegaPCM_DAC_Number(a3)
	startZ80
	rts

; ---------------------------------------------------------------------------
PlaySample_2:
	lea	Z80_RAM,a3
	stopZ80
	move.b	#1,MegaPCM_InputFlag(a3)
	move.b	d0,MegaPCM_DAC_Number_2(a3)
	startZ80
	rts

; ---------------------------------------------------------------------------
Set_MegaPCM_Mode:
	lea	Z80_RAM,a3
	stopZ80
	move.b	#1,MegaPCM_InputFlag(a3)
	move.b	d0,MegaPCM_Mode(a3)
	startZ80
	rts