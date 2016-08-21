; =============================================================================================
; Project Name:		60
; Created:		28th May 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Jmp_Header:
	smpsHeaderVoice     SndA0_Jump_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG1, SndA0_Jump_PSG1,	$F4, $00

; PSG1 Data
SndA0_Jump_PSG1:
	smpsPSGvoice        $00
	dc.b	nF2, $05
	smpsModSet          $02, $01, $F9, $65
	dc.b	nC3, $16
	smpsStop

; Song seems to not use any FM voices
SndA0_Jump_Voices: