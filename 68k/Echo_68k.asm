; ---------------------------------------------------------------------------
; Echo's 68k component
; ---------------------------------------------------------------------------
    include "Echo/68k/echo.asm"
 
; ---------------------------------------------------------------------------
; Instruments and friends
; ---------------------------------------------------------------------------

Echo_PointerList:
    Echo_ListEntry  Base_Drum   ; $00
    Echo_ListEntry  Snare_Drum  ; $01
    Echo_ListEntry  Closed_hat  ; $02
    Echo_ListEntry  Open_hat    ; $03
    Echo_ListEntry  FM_Bass     ; $04
    Echo_ListEntry  FM_Synth    ; $05
    Echo_ListEntry  FM_Lead     ; $06
    Echo_ListEntry  FM_Soft     ; $07
    Echo_ListEntry  PSG_1       ; $08
    Echo_ListEntry  PSG_2       ; $09
    Echo_ListEntry  PSG_3       ; $0A
    Echo_ListEntry  PSG_4       ; $0B
    dc.l 0
    even                            ; Why do I keep forgetting to put that !!111111~~~~~~
    
Base_Drum: incbin "Echo/Data/inst/1.ewf"
Snare_Drum: incbin "Echo/Data/inst/2.ewf"
Closed_Hat: incbin "Echo/Data/inst/3.ewf"
Open_Hat: incbin "Echo/Data/inst/4.ewf"

FM_Bass: incbin "Echo/Data/inst/bass.eif"
FM_Synth: incbin "Echo/Data/inst/synth.eif"
FM_Lead: incbin "Echo/Data/inst/lead.eif"
FM_Soft: incbin "Echo/Data/inst/soft.eif"

PSG_1: incbin "Echo/Data/inst/psg1.eef"
PSG_2: incbin "Echo/Data/inst/psg2.eef"
PSG_3: incbin "Echo/Data/inst/psg3.eef"
PSG_4: incbin "Echo/Data/inst/psg4.eef"

; ---------------------------------------------------------------------------
; Background Musics
; ---------------------------------------------------------------------------
 ;****************************************************************************
; BGM_Test
; Generic BGM to test events
;****************************************************************************

BGM_Test:
    dc.b    $FF

;****************************************************************************
; BGM_Minion
; "Blast!!"
;****************************************************************************

BGM_Blast:
    incbin  "Echo/Data/blast.esf"
    even
    
; ---------------------------------------------------------------------------
; SFX's
; ---------------------------------------------------------------------------


;****************************************************************************
; SFX_Beep
; Beep SFX
;****************************************************************************

SFX_Beep:
    dc.b    $EA,$1A,$4A,$00,$2A,$00
    dc.b    $0A,2*36,$FE,4
    dc.b    $FF

; ---------------------------------------------------------------------------
; Z80 binary
; ---------------------------------------------------------------------------

Echo_Z80Code: 
		incbin "Echo/Z80/prog-z80.bin"
Echo_Z80Code_End:
		even