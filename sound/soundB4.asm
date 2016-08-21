; =============================================================================================
; Project Name:		sad
; Created:		29th January 2011
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

sad_Header:
	smpsHeaderVoice	sad_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$06

	smpsHeaderDAC	sad_DAC
	smpsHeaderFM	sad_FM1,	smpsPitch00,	$12
	smpsHeaderFM	sad_FM2,	smpsPitch01lo,	$0D
	smpsHeaderFM	sad_FM3,	smpsPitch01lo,	$0A
	smpsHeaderFM	sad_FM4,	smpsPitch01lo,	$0F
	smpsHeaderFM	sad_FM5,	smpsPitch00,	$12
	smpsHeaderPSG	sad_PSG1,	smpsPitch04lo,	$03,	$05
	smpsHeaderPSG	sad_PSG2,	smpsPitch03lo,	$06,	$05
	smpsHeaderPSG	sad_PSG3,	smpsPitch03lo,	$00,	$04

; FM5 Data
sad_FM5:
; FM1 Data
sad_FM1:
; FM2 Data
sad_FM2:
; FM3 Data
sad_FM3:
; FM4 Data
sad_FM4:
; PSG1 Data
sad_PSG1:

; PSG2 Data
sad_PSG2:

; PSG3 Data
sad_PSG3:
	smpsStop

; DAC Data
sad_DAC:
	dc.b		$D8
	smpsStop
sad_Voices:
	dc.b		$00;			Voice 00
	even
