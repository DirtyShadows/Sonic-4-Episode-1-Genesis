; =============================================================================================
; Project Name:		SelectSND
; Created:		5th May 2015
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SelectSND_Header:
	smpsHeaderVoice	SelectSND_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cPSG1, SelectSND_PSG1,	$02, $00
	smpsHeaderSFXChannel cPSG2, SelectSND_PSG2, $02,	$00

; PSG1 Data
SelectSND_PSG1:
	smpsCall	SelectSND_Call01
	smpsStop

; PSG2 Data
SelectSND_PSG2:
	smpsCall	SelectSND_Call02
	smpsStop

SelectSND_Call01:
	smpsPSGvoice	$00
	dc.b		nFs6,	$01,	nB6,	nE7,	nA7,	$02,	nRst,	$03
	smpsReturn

SelectSND_Call02:
	smpsPSGvoice	$00
	dc.b		nFs5,	$01,	nB5,	nE6,	nA6,	$02,	nRst,	$03
	smpsReturn

SelectSND_Voices:
;	dc.b		;			Voice 00 Doesn't use any voices
	even
