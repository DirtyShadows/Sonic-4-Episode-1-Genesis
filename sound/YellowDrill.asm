; =============================================================================================
; Project Name:		Drill_SC
; Created:		2nd January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Drill_SC_Header:
	smpsHeaderVoice	Drill_SC_Voices
	smpsHeaderChan	$01,	$00
	smpsHeaderTempo	$02,	$04

	smpsHeaderDAC	Drill_SC_DAC

; DAC Data
Drill_SC_DAC:
	smpsCall	Drill_SC_Call01
Drill_SC_Jump01:
	smpsCall	Drill_SC_Call02
	smpsJump	Drill_SC_Jump01

Drill_SC_Call01:
	dc.b		$D8,	$02,	$D9,	$D8,	$D9,	$D8,	$08,	$D9
	dc.b		$DA,	$D8,	$D8,	$D9,	$DA,	$D8,	$D8,	$D9
	dc.b		$DA,	$D8,	$D8,	$D9,	$DA
	smpsReturn

Drill_SC_Call02:
	dc.b		$D8,	$08,	$D8,	$D9,	$DA,	$D8,	$D8,	$D9
	dc.b		$DA,	$D8,	$D8,	$D9,	$DA,	$D8,	$D8,	$D9
	dc.b		$DA
	smpsReturn

Drill_SC_Voices:
;	dc.b		;			Voice 00
	even
