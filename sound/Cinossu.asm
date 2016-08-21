; =============================================================================================
; Project Name:		ScrambledEgg
; Created:		3rd October 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

ScrambledEgg_Header:
	smpsHeaderVoice	ScrambledEgg_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	ScrambledEgg_DAC
	smpsHeaderFM	ScrambledEgg_FM1,	smpsPitch00+$03,	$0C
	smpsHeaderFM	ScrambledEgg_FM2,	smpsPitch03hi+$03,	$0E
	smpsHeaderFM	ScrambledEgg_FM3,	smpsPitch00+$03,	$11
	smpsHeaderFM	ScrambledEgg_FM4,	smpsPitch00+$03,	$11
	smpsHeaderFM	ScrambledEgg_FM5,	smpsPitch00+$03,	$12
	smpsHeaderPSG	ScrambledEgg_PSG1,	smpsPitch00+$03,	$00,	$05
	smpsHeaderPSG	ScrambledEgg_PSG2,	smpsPitch00+$03,	$00,	$05
	smpsHeaderPSG	ScrambledEgg_PSG3,	smpsPitch00,	$00,	$00

; FM1 Data
ScrambledEgg_FM1:
	smpsFMvoice	$01
	dc.b		nRst,	$20,	$20,	$20,	nA2,	$04,	nA2,	nC3
	dc.b		nA2,	$02,	nD3,	$04,	nA2,	$02,	nEb3,	$04
	dc.b		nE3,	$02,	nEb3,	nD3,	nC3
ScrambledEgg_Loop01:
	dc.b		nA2,	$04,	nA2,	nC3,	nA2,	$02,	nD3,	$04
	dc.b		nA2,	$02,	nEb3,	$04,	nA2,	nE3,	nA2,	$04
	dc.b		nA2,	nC3,	nA2,	$02,	nD3,	$04,	nA2,	$02
	dc.b		nEb3,	$04,	nA2,	nG2,	nA2,	$04,	nA2,	nC3
	dc.b		nA2,	$02,	nD3,	$04,	nA2,	$02,	nEb3,	$04
	dc.b		nA2,	nE3,	nA2,	$04,	nA2,	nC3,	nA2,	$02
	dc.b		nD3,	$04,	nA2,	$02,	nEb3,	$04,	nE3,	$02
	dc.b		nEb3,	nD3,	nC3
	smpsLoop	$00,	$04,	ScrambledEgg_Loop01
ScrambledEgg_Loop02:
	dc.b		nA2,	$04,	nA2,	nC3,	nA2,	$02,	nD3,	$04
	dc.b		nA2,	$02,	nEb3,	$04,	nA2,	nE3
	smpsLoop	$00,	$08,	ScrambledEgg_Loop02
	dc.b		nRst,	$20,	$20,	$20,	$10,	nB2,	$02,	nD3
	dc.b		nF3,	nD3,	nE3,	nAb3,	nB2,	nD3
ScrambledEgg_Loop03:
	dc.b		nA2,	$04,	nA2,	nC3,	nA2,	$02,	nD3,	$04
	dc.b		nA2,	$02,	nEb3,	$04,	nA2,	nE3,	nC3,	$04
	dc.b		nC3,	nG3,	nC3,	$02,	nFs3,	$04,	nC3,	$02
	dc.b		nF3,	$04,	nC3,	nE3
	smpsLoop	$00,	$04,	ScrambledEgg_Loop03
	dc.b		nA2,	$04,	nA2,	nC3,	nA2,	$02,	nD3,	$04
	dc.b		nA2,	$02,	nEb3,	$04,	nA2,	nE3,	nA2,	$04
	dc.b		nA2,	nC3,	nA2,	$02,	nD3,	$04,	nA2,	$02
	dc.b		nEb3,	$04,	nA2,	nG2,	nA2,	$04,	nA2,	nC3
	dc.b		nA2,	$02,	nD3,	$04,	nA2,	$02,	nEb3,	$04
	dc.b		nA2,	nE3,	nA2,	$04,	nA2,	nC3,	nA2,	$02
	dc.b		nD3,	$04,	nA2,	$02,	nEb3,	$04,	nE3,	$02
	dc.b		nEb3,	nD3,	nC3
	smpsJump	ScrambledEgg_Loop01

; FM3 Data
ScrambledEgg_FM3:
	smpsFMvoice	$02
	smpsPan		panLeft,	$00
	smpsAlterNote	$FF
	smpsModSet	$08,	$01,	$04,	$04
ScrambledEgg_Loop04:
	dc.b		nA1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$0C,	ScrambledEgg_Loop04
ScrambledEgg_Loop05:
	dc.b		nG1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop05
ScrambledEgg_Loop06:
	dc.b		nG1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop06
	smpsLoop	$01,	$02,	ScrambledEgg_Loop05
ScrambledEgg_Loop07:
	dc.b		nA1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nG1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nA1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nA1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop07
	dc.b		nE1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nG1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nA1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nB1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
ScrambledEgg_Loop08:
	dc.b		nA1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nG1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nA1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nA1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop08
	smpsJump	ScrambledEgg_Loop04

; FM4 Data
ScrambledEgg_FM4:
	smpsFMvoice	$02
	smpsPan		panRight,	$00
	smpsAlterNote	$01
	smpsModSet	$08,	$01,	$04,	$04
ScrambledEgg_Loop09:
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$0C,	ScrambledEgg_Loop09
ScrambledEgg_Loop0A:
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nB1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nD2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop0A
ScrambledEgg_Loop0B:
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nB1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop0B
	dc.b		nA1,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nD2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nD2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
ScrambledEgg_Loop0C:
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nD2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop0C
	smpsJump	ScrambledEgg_Loop09

; FM5 Data
ScrambledEgg_FM5:
	smpsFMvoice	$02
	smpsModSet	$08,	$01,	$03,	$05
ScrambledEgg_Loop0D:
	dc.b		nE2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nF2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nFs2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nF2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$03,	ScrambledEgg_Loop0D
ScrambledEgg_Loop0E:
	dc.b		nE2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop0E
ScrambledEgg_Loop0F:
	dc.b		nFs2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop0F
	smpsLoop	$01,	$02,	ScrambledEgg_Loop0E
ScrambledEgg_Loop10:
	dc.b		nE2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nE2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nFs2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nF2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$10
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop10
	dc.b		nC2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nE2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nF2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nF2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
ScrambledEgg_Loop11:
	dc.b		nE2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nE2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nFs2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nF2,	$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$08
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		$04
	smpsAlterVol	$05
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$FB
	smpsLoop	$00,	$02,	ScrambledEgg_Loop11
	smpsJump	ScrambledEgg_Loop0D

; FM2 Data
ScrambledEgg_FM2:
	smpsFMvoice	$00
	smpsAlterNote	$01
	smpsModSet	$18,	$01,	$04,	$04
ScrambledEgg_Loop12:
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$00,	$02,	ScrambledEgg_Loop12
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$02
	dc.b		nE2
	smpsAlterVol	$FE
	dc.b		nEb2,	nC2,	nD2,	nA1,	nD2,	nC2,	nG1
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$01,	$02,	ScrambledEgg_Loop12
ScrambledEgg_Jump01:
	smpsCall	ScrambledEgg_Call01
	dc.b		nG2,	$02,	nE2,	$0E
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$F2
	smpsJump	ScrambledEgg_Jump01

; PSG1 Data
ScrambledEgg_PSG1:
	smpsModSet	$10,	$01,	$01,	$04
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$00,	$02,	ScrambledEgg_PSG1
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$02
	dc.b		nE2
	smpsAlterVol	$FE
	dc.b		nEb2,	nC2,	nD2,	nA1,	nD2,	nC2,	nG1
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$01,	$02,	ScrambledEgg_PSG1
ScrambledEgg_Jump02:
	smpsCall	ScrambledEgg_Call01
	smpsPSGvoice	$00
	dc.b		nG2,	$02,	nE2,	$0E
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nE2,	$10
	smpsPSGvoice	$05
	smpsAlterVol	$F2
	smpsJump	ScrambledEgg_Jump02

ScrambledEgg_Call01:
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$00,	$02,	ScrambledEgg_Call01
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$02
	dc.b		nE2
	smpsAlterVol	$FE
	dc.b		nEb2,	nC2,	nD2,	nA1,	nD2,	nC2,	nG1
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$01,	$04,	ScrambledEgg_Call01
ScrambledEgg_Loop15:
	smpsAlterVol	$08
ScrambledEgg_Loop13:
	dc.b		nC3,	$02,	nG2,	nC3,	nB2
	smpsAlterVol	$FF
	smpsLoop	$00,	$08,	ScrambledEgg_Loop13
	smpsAlterVol	$08
	dc.b		nC3,	$02,	nG2,	nE2,	nB2
	smpsAlterVol	$FF
ScrambledEgg_Loop14:
	dc.b		nC3,	$02,	nFs2,	nE2,	nB2
	smpsAlterVol	$FF
	smpsLoop	$00,	$07,	ScrambledEgg_Loop14
	smpsLoop	$01,	$02,	ScrambledEgg_Loop15
ScrambledEgg_Loop16:
	dc.b		nA2,	$04,	nG2,	$02,	nA2,	$01,	nG2,	nFs2
	dc.b		$02,	nE2,	nEb2,	nFs2,	nE2,	nC2,	nD2,	nB1
	dc.b		nAb1,	nB1,	nA1,	nE1,	nA1,	nB1,	nC2,	nD2
	dc.b		$06,	nC2,	$04,	nD2,	nC2,	$02,	nB1,	nA1
	dc.b		nB1,	nC2,	nG1,	nE1,	nF1,	nG1,	nA1,	nB1
	dc.b		nC2,	nCs2,	nD2,	nC2,	nD2,	nEb2,	nE2,	nD2
	dc.b		$04,	nC2,	$02,	nD2,	nE2,	$04,	nF2,	nE2
	dc.b		$02,	nEb2,	nD2,	nC2,	nD2,	nC2,	nB1,	nAb1
	dc.b		nA1,	nC2,	nA1,	$04
	smpsLoop	$00,	$02,	ScrambledEgg_Loop16
	dc.b		nC2,	$02,	nC2,	nB1,	nC2
	smpsAlterVol	$03
	dc.b		nC2
	smpsAlterVol	$FD
	dc.b		nC2,	nB1,	nC2
	smpsAlterVol	$03
	dc.b		nC2
	smpsAlterVol	$FD
	dc.b		nC2,	nB1,	nC2
	smpsAlterVol	$03
	dc.b		nC2
	smpsAlterVol	$FD
	dc.b		nC2,	nB1,	nC2,	nE2,	$06,	nE2,	$02
	smpsAlterVol	$03
	dc.b		nE2
	smpsAlterVol	$FD
	dc.b		nRst,	$16,	nF2,	$02,	nF2,	nE2,	nF2
	smpsAlterVol	$03
	dc.b		nF2
	smpsAlterVol	$FD
	dc.b		nF2,	nE2,	nF2
	smpsAlterVol	$03
	dc.b		nF2
	smpsAlterVol	$FD
	dc.b		nF2,	nE2,	nF2
	smpsAlterVol	$03
	dc.b		nF2
	smpsAlterVol	$FD
	dc.b		nF2,	nE2,	nF2,	nB1,	$06,	nB1,	$02
	smpsAlterVol	$03
	dc.b		nB1
	smpsAlterVol	$FD
	dc.b		nRst,	$06,	nB3,	$02,	nA3,	nAb3,	nF3,	nC4
	dc.b		nB3,	nAb3,	nE4
ScrambledEgg_Loop17:
	dc.b		nD3,	$06,	nC3,	$02
	smpsAlterVol	$03
	dc.b		nC3
	smpsAlterVol	$FD
	dc.b		nRst,	nD3,	$06,	nC3,	$02
	smpsAlterVol	$03
	dc.b		nC3
	smpsAlterVol	$FD
	dc.b		nRst,	nD3,	$02,	nD3,	nC3
	smpsAlterVol	$03
	dc.b		nC3
	smpsAlterVol	$FD
	dc.b		nD3,	$06,	nC3,	$02
	smpsAlterVol	$03
	dc.b		nC3
	smpsAlterVol	$FD
	dc.b		nRst,	nD3,	$08,	nE3,	$02,	nE3,	nD3,	nD3
	dc.b		nC3,	nC3
	smpsLoop	$00,	$04,	ScrambledEgg_Loop17
	smpsReturn

; PSG2 Data
ScrambledEgg_PSG2:
	smpsAlterNote	$FF
	smpsModSet	$10,	$01,	$01,	$04
	dc.b		nRst,	$02
	smpsAlterVol	$03
ScrambledEgg_Loop18:
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$00,	$02,	ScrambledEgg_Loop18
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$02
	dc.b		nE2
	smpsAlterVol	$FE
	dc.b		nEb2,	nC2,	nD2,	nA1,	nD2,	nC2,	nG1
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$01,	$02,	ScrambledEgg_Loop18
ScrambledEgg_Loop19:
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$00,	$02,	ScrambledEgg_Loop19
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$02
	dc.b		nE2
	smpsAlterVol	$FE
	dc.b		nEb2,	nC2,	nD2,	nA1,	nD2,	nC2,	nG1
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$01,	$03,	ScrambledEgg_Loop19
ScrambledEgg_Loop1A:
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	smpsLoop	$00,	$02,	ScrambledEgg_Loop1A
	dc.b		nC2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nD2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nEb2,	$02
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nE2,	$02
	smpsAlterVol	$02
	dc.b		nE2
	smpsAlterVol	$FE
	dc.b		nEb2,	nC2,	nD2,	nA1,	nD2,	nC2,	nG1
	smpsAlterVol	$FD
ScrambledEgg_Loop1D:
	smpsAlterVol	$08
ScrambledEgg_Loop1B:
	dc.b		nB1,	$02,	nC2,	nE2,	nG2
	smpsAlterVol	$FF
	smpsLoop	$00,	$08,	ScrambledEgg_Loop1B
	smpsAlterVol	$08
	dc.b		nFs1,	$02,	nA1,	nC2,	nE2
	smpsAlterVol	$FF
ScrambledEgg_Loop1C:
	dc.b		nFs2,	$02,	nA1,	nC2,	nE2
	smpsAlterVol	$FF
	smpsLoop	$00,	$07,	ScrambledEgg_Loop1C
	smpsLoop	$01,	$02,	ScrambledEgg_Loop1D
	dc.b		nRst,	$02
	smpsAlterVol	$03
	dc.b		nA2,	$04,	nG2,	$02,	nA2,	$01,	nG2,	nFs2
	dc.b		$02,	nE2,	nEb2,	nFs2,	nE2,	nC2,	nD2,	nB1
	dc.b		nAb1,	nB1,	nA1,	nE1,	nA1,	nB1,	nC2,	nD2
	dc.b		$06,	nC2,	$04,	nD2,	nC2,	$02,	nB1,	nA1
	dc.b		nB1,	nC2,	nG1,	nE1,	nF1,	nG1,	nA1,	nB1
	dc.b		nC2,	nCs2,	nD2,	nC2,	nD2,	nEb2,	nE2,	nD2
	dc.b		$04,	nC2,	$02,	nD2,	nE2,	$04,	nF2,	nE2
	dc.b		$02,	nEb2,	nD2,	nC2,	nD2,	nC2,	nB1,	nAb1
	dc.b		nA1,	nC2,	nA1,	$02
	smpsAlterVol	$FD
	dc.b		nC2,	$04,	nBb1,	$02,	nC2,	$01,	nBb1,	nA1
	dc.b		$02,	nG1,	nFs1,	nA1,	nG1,	nEb1,	nF1,	nD1
	dc.b		nB0,	nD1,	nC1,	nG0,	nC1,	nD1,	nEb1,	nF1
	dc.b		$06,	nEb1,	$04,	nF1,	nEb1,	$02,	nD1,	nC1
	dc.b		nD1,	nEb1,	nBb0,	nG0,	nAb0,	nBb0,	nC1,	nD1
	dc.b		nEb1,	nE1,	nF1,	nEb1,	nF1,	nFs1,	nG1,	nF1
	dc.b		$04,	nEb1,	$02,	nF1,	nG1,	$04,	nAb1,	nG1
	dc.b		$02,	nFs1,	nF1,	nEb1,	nF1,	nEb1,	nD1,	nB0
	dc.b		nC1,	nEb1,	nC1,	$04,	nE1,	$02,	nE1,	nD1
	dc.b		nE1
	smpsAlterVol	$03
	dc.b		nE1
	smpsAlterVol	$FD
	dc.b		nE1,	nD1,	nE1
	smpsAlterVol	$03
	dc.b		nE1
	smpsAlterVol	$FD
	dc.b		nE1,	nD1,	nE1
	smpsAlterVol	$03
	dc.b		nE1
	smpsAlterVol	$FD
	dc.b		nE1,	nD1,	nE1,	nG1,	$06,	nG1,	$02
	smpsAlterVol	$03
	dc.b		nG1
	smpsAlterVol	$FD
	dc.b		nRst,	$16,	nA1,	$02,	nA1,	nAb1,	nA1
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nA1,	nAb1,	nA1
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nA1,	nAb1,	nA1
	smpsAlterVol	$03
	dc.b		nA1
	smpsAlterVol	$FD
	dc.b		nA1,	nAb1,	nA1,	nD1,	$06,	nD1,	$02
	smpsAlterVol	$03
	dc.b		nD1
	smpsAlterVol	$FD
	dc.b		nRst,	$06,	nAb2,	$02,	nF2,	nE2,	nD2,	nB2
	dc.b		nAb2,	nE2,	nB2
ScrambledEgg_Loop1E:
	dc.b		nA2,	$02,	nA1,	nC2,	nG2,	nA1,	nD2,	nA2
	dc.b		nA1,	nC2,	nG2,	nA1,	nD2,	nA2,	nA1,	nG2
	dc.b		nA1,	nA2,	$02,	nC2,	nE2,	nG2,	nC2,	nE2
	dc.b		nA2,	nC2,	nA2,	nC2,	nC3,	nC2,	nA2,	nC2
	dc.b		nG2,	nC2
	smpsLoop	$00,	$04,	ScrambledEgg_Loop1E
	smpsPSGvoice	$00
	dc.b		nC2,	$02,	nA1,	$0E
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nA1,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nA1,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nA1,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nA1,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nA1,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nA1,	$10
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nA1,	$10
	smpsPSGvoice	$05
	smpsAlterVol	$F2
	dc.b		nRst,	$02
	smpsAlterVol	$03
	smpsJump	ScrambledEgg_Loop19

; PSG3 Data
ScrambledEgg_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$20,	$20,	$20
	smpsCall	ScrambledEgg_Call02
ScrambledEgg_Loop1F:
	smpsCall	ScrambledEgg_Call03
	smpsLoop	$00,	$38,	ScrambledEgg_Loop1F
	smpsCall	ScrambledEgg_Call02
	smpsLoop	$01,	$03,	ScrambledEgg_Loop1F
	smpsCall	ScrambledEgg_Call04
	smpsCall	ScrambledEgg_Call05
ScrambledEgg_Loop20:
	smpsCall	ScrambledEgg_Call03
	smpsLoop	$00,	$38,	ScrambledEgg_Loop20
	smpsCall	ScrambledEgg_Call02
	smpsCall	ScrambledEgg_Call04
	smpsCall	ScrambledEgg_Call05
	smpsJump	ScrambledEgg_Loop1F

ScrambledEgg_Call03:
	smpsPSGvoice	$02
	dc.b		nA5,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsReturn

ScrambledEgg_Call04:
	smpsPSGvoice	$00
ScrambledEgg_Loop21:
	dc.b		nA5,	$04
	smpsAlterVol	$01
	smpsLoop	$00,	$10,	ScrambledEgg_Loop21
	smpsAlterVol	$F0
	smpsReturn

ScrambledEgg_Call02:
	smpsPSGvoice	$02
	dc.b		nA5,	$02
	smpsPSGvoice	$01
	dc.b		$02,	$02,	$02
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		$02,	$02
	smpsPSGvoice	$02
	dc.b		$02,	$02
	smpsPSGvoice	$01
	dc.b		$02,	$02,	$02
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		$02,	$02,	$02
	smpsReturn

ScrambledEgg_Call05:
	smpsPSGvoice	$02
	dc.b		nA5,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$02,	$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$02,	$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$02,	$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$02,	$02
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		$02,	$02,	$02
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		$02,	$02,	$02
	smpsReturn

; DAC Data
ScrambledEgg_DAC:
	dc.b		nRst,	$40,	dKick,	$08,	$08,	$08,	$08,	dKick
	dc.b		$02,	dSnare,	dSnare,	dSnare,	dKick,	dSnare,	dSnare,	dSnare
	dc.b		dKick,	dSnare,	$02,	$02,	$02,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$01,	$01
ScrambledEgg_Loop22:
	dc.b		dKick,	$04,	dSnare,	dKick,	$02,	dKick,	dSnare,	$04
	dc.b		dKick,	$02,	dKick,	dSnare,	$04,	dKick,	$04,	dSnare
	dc.b		dKick,	$04,	dSnare,	dKick,	$02,	dKick,	dSnare,	$04
	dc.b		dKick,	$02,	dKick,	dSnare,	$04,	dKick,	$04,	dSnare
	dc.b		$02,	dSnare,	dKick,	$04,	dSnare,	dKick,	$02,	dKick
	dc.b		dSnare,	$04,	dKick,	$02,	dKick,	dSnare,	$04,	dKick
	dc.b		$04,	dSnare,	dKick,	$04,	dSnare,	dKick,	$02,	dKick
	dc.b		dSnare,	$04,	dKick,	$02,	dKick,	dSnare,	$04,	dKick
	dc.b		$02,	dSnare,	dSnare,	dSnare,	dKick,	$04,	dSnare,	dKick
	dc.b		$02,	dKick,	dSnare,	$04,	dKick,	$02,	dKick,	dSnare
	dc.b		$04,	dKick,	$04,	dSnare,	dKick,	$04,	dSnare,	dKick
	dc.b		$02,	dKick,	dSnare,	$04,	dKick,	$02,	dKick,	dSnare
	dc.b		$04,	dKick,	$04,	dSnare,	$02,	dSnare,	dKick,	$04
	dc.b		dSnare,	dKick,	$02,	dKick,	dSnare,	$04,	dKick,	$02
	dc.b		dKick,	dSnare,	$04,	dKick,	$04,	dSnare,	dKick,	$02
	dc.b		dSnare,	dSnare,	dSnare,	dKick,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		dSnare,	$02,	$02,	$02,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$01
	smpsLoop	$00,	$03,	ScrambledEgg_Loop22
	dc.b		dKick,	$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	$02,	dSnare,	dKick,	$04,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	$02,	dSnare,	dKick,	$04
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	$02,	dSnare,	dKick
	dc.b		$04,	dSnare,	dKick,	$02,	dKick,	dSnare,	dSnare,	dKick
	dc.b		dSnare,	dSnare,	dSnare,	dKick,	dSnare,	$02,	$02,	$02
	dc.b		$01,	$01,	$01,	$01,	$01,	$01,	$01,	$01
	dc.b		dKick,	$04,	dSnare,	dKick,	$02,	dKick,	dSnare,	$04
	dc.b		dKick,	$02,	dKick,	dSnare,	$04,	dKick,	$04,	dSnare
	dc.b		dKick,	$04,	dSnare,	dKick,	$02,	dKick,	dSnare,	$04
	dc.b		dKick,	$02,	dKick,	dSnare,	$04,	dKick,	$04,	dSnare
	dc.b		$02,	dSnare,	dKick,	$04,	dSnare,	dKick,	$02,	dKick
	dc.b		dSnare,	$04,	dKick,	$02,	dKick,	dSnare,	$04,	dKick
	dc.b		$04,	dSnare,	dKick,	$04,	dSnare,	dKick,	$02,	dKick
	dc.b		dSnare,	$04,	dKick,	$02,	dKick,	dSnare,	$04,	dKick
	dc.b		$02,	dSnare,	dSnare,	dSnare,	dKick,	$04,	dSnare,	dKick
	dc.b		$02,	dKick,	dSnare,	$04,	dKick,	$02,	dKick,	dSnare
	dc.b		$04,	dKick,	$04,	dSnare,	dKick,	$04,	dSnare,	dKick
	dc.b		$02,	dKick,	dSnare,	$04,	dKick,	$02,	dKick,	dSnare
	dc.b		$04,	dKick,	$04,	dSnare,	$02,	dSnare,	dKick,	$04
	dc.b		dSnare,	dKick,	$02,	dKick,	dSnare,	$04,	dKick,	$02
	dc.b		dKick,	dSnare,	$04,	dKick,	$04,	dSnare,	dKick,	$02
	dc.b		dSnare,	dSnare,	dSnare,	dKick,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		dSnare,	$02,	$02,	$02,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$01,	dKick,	$04,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	$02,	dSnare,	dKick
	dc.b		$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		$02,	dSnare,	dKick,	$04,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	$02,	dSnare,	dKick,	$04,	dSnare,	dKick,	$02
	dc.b		dKick,	dSnare,	dSnare,	dKick,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		dSnare,	$02,	$02,	$02,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$01
	smpsJump	ScrambledEgg_Loop22

ScrambledEgg_Voices:
	dc.b		$3C,$01,$02,$0F,$04,$8D,$52,$9F,$1F,$09,$00,$00,$0D,$00,$00,$00
	dc.b		$00,$23,$08,$02,$F7,$15,$80,$1D,$87;			Voice 00
	dc.b		$31,$34,$35,$30,$31,$DF,$DF,$9F,$9F,$0C,$07,$0C,$09,$07,$07,$07
	dc.b		$08,$2F,$1F,$1F,$2F,$17,$32,$14,$80;			Voice 01
	dc.b		$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$00,$00,$00,$00,$01,$00
	dc.b		$01,$0F,$3F,$0F,$3F,$16,$80,$17,$80;			Voice 02
	dc.b		$00;			Voice 03
	even
