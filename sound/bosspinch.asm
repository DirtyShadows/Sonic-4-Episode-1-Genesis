; =============================================================================================
; Project Name:		S4_Boss_Pinch_Mode
; Created:		29th December 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

S4_Boss_Pinch_Mode_Header:
	smpsHeaderVoice	S4_Boss_Pinch_Mode_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$05

	smpsHeaderDAC	S4_Boss_Pinch_Mode_DAC
	smpsHeaderFM	S4_Boss_Pinch_Mode_FM1,	smpsPitch02hi,	$14
	smpsHeaderFM	S4_Boss_Pinch_Mode_FM2,	smpsPitch00,	$0C
	smpsHeaderFM	S4_Boss_Pinch_Mode_FM3,	smpsPitch01hi,	$12
	smpsHeaderFM	S4_Boss_Pinch_Mode_FM4,	smpsPitch02hi,	$14
	smpsHeaderFM	S4_Boss_Pinch_Mode_FM5,	smpsPitch01hi,	$12
	smpsHeaderPSG	S4_Boss_Pinch_Mode_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	S4_Boss_Pinch_Mode_PSG2,	smpsPitch03lo,	$04,	$00
	smpsHeaderPSG	S4_Boss_Pinch_Mode_PSG3,	smpsPitch00+$0B,	$00,	$00

; FM1 Data
S4_Boss_Pinch_Mode_FM1:
	smpsPan		panLeft,	$00
	dc.b		nRst,	$10
	smpsFMvoice	$00
	dc.b		nC4,	$04,	nC3,	nF3,	nG3,	nEb4,	nF3,	nG3
	dc.b		nC4,	nD4,	nEb4,	nD4,	nCs4,	$14,	nC4,	$04
	dc.b		nC3,	nF3,	nG3,	nEb4,	nF3,	nG3,	nC4,	nD4
	dc.b		nEb4,	nD4,	nCs4,	$14,	nC3,	$06,	nRst,	$02
	dc.b		nG2,	$04,	nC3,	nRst,	nEb3,	nRst,	nC3,	nEb3
	dc.b		nRst,	nEb3,	nRst,	nD3,	nRst,	nCs3,	nRst,	nC4
	dc.b		nC3,	nF3,	nG3,	nEb4,	nF3,	nG3,	nC4,	nD4
	dc.b		nEb4,	nD4,	nCs4,	$14,	nC4,	$04,	nC3,	nF3
	dc.b		nG3,	nEb4,	nF3,	nG3,	nC4,	nD4,	nEb4,	nD4
	dc.b		nCs4,	$14,	nC3,	$06,	nRst,	$02,	nG2,	$04
	dc.b		nC3,	nRst,	nEb3,	nRst,	nC3,	nEb3,	nRst,	nEb3
	dc.b		nRst,	nD3,	nRst,	nCs3,	nRst,	$24
	smpsPan		panLeft,	$00
S4_Boss_Pinch_Mode_Jump01:
	smpsFMvoice	$00
	dc.b		nC4,	$04,	nC3,	nF3,	nG3,	nEb4,	nF3,	nG3
	dc.b		nC4,	nD4,	nEb4,	nD4,	nCs4,	$14,	nC4,	$04
	dc.b		nC3,	nF3,	nG3,	nEb4,	nF3,	nG3,	nC4,	nD4
	dc.b		nEb4,	nD4,	nCs4,	$14,	nC3,	$06,	nRst,	$02
	dc.b		nG2,	$04,	nC3,	nRst,	nEb3,	nRst,	nC3,	nEb3
	dc.b		nRst,	nEb3,	nRst,	nD3,	nRst,	nCs3,	nRst,	$24
	dc.b		nC4,	$04,	nC3,	nF3,	nG3,	nEb4,	nF3,	nG3
	dc.b		nC4,	nD4,	nEb4,	nD4,	nCs4,	$14,	nC4,	$04
	dc.b		nC3,	nF3,	nG3,	nEb4,	nF3,	nG3,	nC4,	nD4
	dc.b		nEb4,	nD4,	nCs4,	$14,	nC3,	$06,	nRst,	$02
	dc.b		nG2,	$04,	nC3,	nRst,	nEb3,	nRst,	nC3,	nEb3
	dc.b		nRst,	nEb3,	nRst,	nD3,	nRst,	nCs3,	nRst
	smpsJump	S4_Boss_Pinch_Mode_Jump01

; FM2 Data
S4_Boss_Pinch_Mode_FM2:
	dc.b		nRst,	$10
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	dc.b		nC2,	$04,	$04,	nEb2,	$04,	nC2,	nBb2,	nC3
	dc.b		nRst,	nC2,	nBb2,	nC3,	nBb2,	nCs2,	$08,	$08
	dc.b		$02,	$02,	nC2,	$04,	$04,	nD2,	$04,	nC2
	dc.b		nBb2,	nC3,	nRst,	nC2,	nBb2,	nC3,	nRst,	nCs2
	dc.b		$14,	nC2,	$04,	$04,	nB1,	$04,	nD2,	nEb2
	dc.b		nD2,	$08,	nRst,	$04,	nEb2,	nRst,	nEb2,	nRst
	dc.b		nD2,	nRst,	nCs2,	nRst,	nC2,	nC2,	nEb2,	nC2
	dc.b		nBb2,	nC3,	nRst,	nC2,	nBb2,	nC3,	nBb2,	nCs2
	dc.b		$08,	$08,	$02,	$02,	nC2,	$04,	$04,	nD2
	dc.b		$04,	nC2,	nBb2,	nC3,	nRst,	nC2,	nBb2,	nC3
	dc.b		nRst,	nCs2,	$14,	nC2,	$04,	$04,	nB1,	$04
	dc.b		nD2,	nEb2,	nD2,	$08,	nRst,	$04,	nEb2,	nRst
	dc.b		nEb2,	nRst,	nD2,	nRst,	nCs2,	nRst,	$24
S4_Boss_Pinch_Mode_Jump02:
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	dc.b		nC2,	$04,	$04,	nEb2,	$04,	nC2,	nBb2,	nC3
	dc.b		nRst,	nC2,	nBb2,	nC3,	nBb2,	nCs2,	$08,	$08
	dc.b		$02,	$02,	nC2,	$04,	$04,	nD2,	$04,	nC2
	dc.b		nBb2,	nC3,	nRst,	nC2,	nBb2,	nC3,	nRst,	nCs2
	dc.b		$14,	nC2,	$04,	$04,	nB1,	$04,	nD2,	nEb2
	dc.b		nD2,	$08,	nRst,	$04,	nEb2,	nRst,	nEb2,	nRst
	dc.b		nD2,	nRst,	nCs2,	nRst,	$24,	nC2,	$04,	$04
	dc.b		nEb2,	$04,	nC2,	nBb2,	nC3,	nRst,	nC2,	nBb2
	dc.b		nC3,	nBb2,	nCs2,	$08,	$08,	$02,	$02,	nC2
	dc.b		$04,	$04,	nD2,	$04,	nC2,	nBb2,	nC3,	nRst
	dc.b		nC2,	nBb2,	nC3,	nRst,	nCs2,	$14,	nC2,	$04
	dc.b		$04,	nB1,	$04,	nD2,	nEb2,	nD2,	$08,	nRst
	dc.b		$04,	nEb2,	nRst,	nEb2,	nRst,	nD2,	nRst,	nCs2
	dc.b		nRst
	smpsJump	S4_Boss_Pinch_Mode_Jump02

; FM3 Data
S4_Boss_Pinch_Mode_FM3:
	dc.b		nRst,	$7F,	$11
	smpsPan		panRight,	$00
	smpsFMvoice	$02
	dc.b		nG3,	$08
	smpsPan		panCentre,	$00
	dc.b		nE3,	$04,	nG3,	nRst,	nC4,	nRst,	nG3,	nC4
	dc.b		nRst,	nAb3,	nRst,	nA3,	nRst,	nBb3,	nRst,	$7F
	dc.b		$05,	nG3,	$08,	nE3,	$04,	nG3,	nRst,	nC4
	dc.b		nRst,	nG3,	nC4,	nRst,	nAb3,	nRst,	nA3,	nRst
	dc.b		nBb3,	nRst,	$7F,	$25
S4_Boss_Pinch_Mode_Jump03:
	smpsPan		panRight,	$00
	smpsFMvoice	$02
	dc.b		nG3,	$08
	smpsPan		panCentre,	$00
	dc.b		nE3,	$04,	nG3,	nRst,	nC4,	nRst,	nG3,	nC4
	dc.b		nRst,	nAb3,	nRst,	nA3,	nRst,	nBb3,	nRst,	$7F
	dc.b		$25
	smpsPan		panRight,	$00
	dc.b		nG3,	$08
	smpsPan		panCentre,	$00
	dc.b		nE3,	$04,	nG3,	nRst,	nC4,	nRst,	nG3,	nC4
	dc.b		nRst,	nAb3,	nRst,	nA3,	nRst,	nBb3,	nRst,	$7F
	dc.b		$05
	smpsJump	S4_Boss_Pinch_Mode_Jump03

; FM4 Data
S4_Boss_Pinch_Mode_FM4:
	smpsPan		panRight,	$00
	dc.b		nRst,	$10
	smpsFMvoice	$00
	dc.b		nC3,	$04,	nC2,	nF2,	nG2,	nEb3,	nF2,	nG2
	dc.b		nC3,	nD3,	nEb3,	nD3,	nCs3,	$14,	nC3,	$04
	dc.b		nC2,	nF2,	nG2,	nEb3,	nF2,	nG2,	nC3,	nD3
	dc.b		nEb3,	nD3,	nCs3,	$14,	nC2,	$06,	nRst,	$02
	dc.b		nG1,	$04,	nC2,	nRst,	nEb2,	nRst,	nC2,	nEb2
	dc.b		nRst,	nEb2,	nRst,	nD2,	nRst,	nCs2,	nRst,	nC3
	dc.b		nC2,	nF2,	nG2,	nEb3,	nF2,	nG2,	nC3,	nD3
	dc.b		nEb3,	nD3,	nCs3,	$14,	nC3,	$04,	nC2,	nF2
	dc.b		nG2,	nEb3,	nF2,	nG2,	nC3,	nD3,	nEb3,	nD3
	dc.b		nCs3,	$14,	nC2,	$06,	nRst,	$02,	nG1,	$04
	dc.b		nC2,	nRst,	nEb2,	nRst,	nC2,	nEb2,	nRst,	nEb2
	dc.b		nRst,	nD2,	nRst,	nCs2,	nRst,	$24
	smpsPan		panRight,	$00
S4_Boss_Pinch_Mode_Jump04:
	smpsFMvoice	$00
	dc.b		nC3,	$04,	nC2,	nF2,	nG2,	nEb3,	nF2,	nG2
	dc.b		nC3,	nD3,	nEb3,	nD3,	nCs3,	$14,	nC3,	$04
	dc.b		nC2,	nF2,	nG2,	nEb3,	nF2,	nG2,	nC3,	nD3
	dc.b		nEb3,	nD3,	nCs3,	$14,	nC2,	$06,	nRst,	$02
	dc.b		nG1,	$04,	nC2,	nRst,	nEb2,	nRst,	nC2,	nEb2
	dc.b		nRst,	nEb2,	nRst,	nD2,	nRst,	nCs2,	nRst,	$24
	dc.b		nC3,	$04,	nC2,	nF2,	nG2,	nEb3,	nF2,	nG2
	dc.b		nC3,	nD3,	nEb3,	nD3,	nCs3,	$14,	nC3,	$04
	dc.b		nC2,	nF2,	nG2,	nEb3,	nF2,	nG2,	nC3,	nD3
	dc.b		nEb3,	nD3,	nCs3,	$14,	nC2,	$06,	nRst,	$02
	dc.b		nG1,	$04,	nC2,	nRst,	nEb2,	nRst,	nC2,	nEb2
	dc.b		nRst,	nEb2,	nRst,	nD2,	nRst,	nCs2,	nRst
	smpsJump	S4_Boss_Pinch_Mode_Jump04

; FM5 Data
S4_Boss_Pinch_Mode_FM5:
	dc.b		nRst,	$7F,	$11
	smpsPan		panLeft,	$00
	smpsFMvoice	$02
	dc.b		nG2,	$08
	smpsPan		panCentre,	$00
	dc.b		nE2,	$04,	nG2,	nRst,	nC3,	nRst,	nG2,	nC3
	dc.b		nRst,	nAb2,	nRst,	nA2,	nRst,	nBb2,	nRst,	$7F
	dc.b		$05,	nG2,	$08,	nE2,	$04,	nG2,	nRst,	nC3
	dc.b		nRst,	nG2,	nC3,	nRst,	nAb2,	nRst,	nA2,	nRst
	dc.b		nBb2,	nRst,	$7F,	$25
S4_Boss_Pinch_Mode_Jump05:
	smpsPan		panLeft,	$00
	smpsFMvoice	$02
	dc.b		nG2,	$08
	smpsPan		panCentre,	$00
	dc.b		nE2,	$04,	nG2,	nRst,	nC3,	nRst,	nG2,	nC3
	dc.b		nRst,	nAb2,	nRst,	nA2,	nRst,	nBb2,	nRst,	$7F
	dc.b		$25
	smpsPan		panLeft,	$00
	dc.b		nG2,	$08
	smpsPan		panCentre,	$00
	dc.b		nE2,	$04,	nG2,	nRst,	nC3,	nRst,	nG2,	nC3
	dc.b		nRst,	nAb2,	nRst,	nA2,	nRst,	nBb2,	nRst,	$7F
	dc.b		$05
	smpsJump	S4_Boss_Pinch_Mode_Jump05

; PSG1 Data
S4_Boss_Pinch_Mode_PSG1:
	smpsPSGvoice	$00
	dc.b		nFs5,	$02,	nCs5,	nFs4,	nF5,	nC5,	nF4,	nE5
	dc.b		nCs5,	nRst,	$32,	nG5,	$02,	nCs5,	nG4,	nFs5
	dc.b		nC5,	nFs4,	nF5,	nRst,	$32,	nG5,	$02,	nCs5
	dc.b		nG4,	nFs5,	nC5,	nFs4,	nF5,	nRst,	$72,	nG5
	dc.b		$02,	nCs5,	nG4,	nFs5,	nC5,	nFs4,	nF5,	nRst
	dc.b		$32,	nG5,	$02,	nCs5,	nG4,	nFs5,	nC5,	nFs4
	dc.b		nF5,	nRst,	$40,	nC6,	$02,	nG5,	nC5,	nB5
	dc.b		nFs5,	nB4,	nBb5,	nF5,	nFs5,	nCs5,	nFs4,	nF5
	dc.b		nC5,	nF4,	nE5,	nCs5
S4_Boss_Pinch_Mode_Jump06:
	dc.b		nRst,	$32
	smpsPSGvoice	$00
	dc.b		nG5,	$02,	nCs5,	nG4,	nFs5,	nC5,	nFs4,	nF5
	dc.b		nRst,	$32,	nG5,	$02,	nCs5,	nG4,	nFs5,	nC5
	dc.b		nFs4,	nF5,	nRst,	$40,	nC6,	$02,	nG5,	nC5
	dc.b		nB5,	nFs5,	nB4,	nBb5,	nF5,	nFs5,	nCs5,	nFs4
	dc.b		nF5,	nC5,	nF4,	nE5,	nCs5,	nRst,	$32,	nG5
	dc.b		$02,	nCs5,	nG4,	nFs5,	nC5,	nFs4,	nF5,	nRst
	dc.b		$32,	nG5,	$02,	nCs5,	nG4,	nFs5,	nC5,	nFs4
	dc.b		nF5,	nRst,	$40
	smpsJump	S4_Boss_Pinch_Mode_Jump06

; PSG2 Data
S4_Boss_Pinch_Mode_PSG2:
	dc.b		nRst,	$10
	smpsPSGvoice	$00
	dc.b		nC5,	$14,	nG4,	$08,	nC5,	$04,	nBb4,	$08
	dc.b		nA4,	$04,	nAb4,	$14,	nC5,	nG4,	$08,	nC5
	dc.b		$04,	nBb4,	$08,	nA4,	$04,	nAb4,	$14,	nRst
	dc.b		$40,	nC5,	$14,	nG4,	$08,	nC5,	$04,	nBb4
	dc.b		$08,	nA4,	$04,	nAb4,	$14,	nC5,	nG4,	$08
	dc.b		nC5,	$04,	nBb4,	$08,	nA4,	$04,	nAb4,	$14
	dc.b		nRst,	$60
S4_Boss_Pinch_Mode_Jump07:
	smpsPSGvoice	$00
	dc.b		nC5,	$14,	nG4,	$08,	nC5,	$04,	nBb4,	$08
	dc.b		nA4,	$04,	nAb4,	$14,	nC5,	nG4,	$08,	nC5
	dc.b		$04,	nBb4,	$08,	nA4,	$04,	nAb4,	$14,	nRst
	dc.b		$60,	nC5,	$14,	nG4,	$08,	nC5,	$04,	nBb4
	dc.b		$08,	nA4,	$04,	nAb4,	$14,	nC5,	nG4,	$08
	dc.b		nC5,	$04,	nBb4,	$08,	nA4,	$04,	nAb4,	$14
	dc.b		nRst,	$40
	smpsJump	S4_Boss_Pinch_Mode_Jump07

; PSG3 Data
S4_Boss_Pinch_Mode_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$10
	smpsPSGvoice	$02
	dc.b		nAb6,	$04,	$02,	$04,	$02,	$04,	$04,	$06
	dc.b		$02,	$04,	$04,	$04,	$02,	$02,	$04,	$02
	dc.b		$02,	$02,	$02,	$04,	$04,	$04,	$02,	$04
	dc.b		$02,	$04,	$04,	$06,	$02,	$04,	$04,	$04
	dc.b		$02,	$02,	$04,	$02,	$02,	$02,	$02,	$04
	dc.b		$04,	$08,	$04,	$02,	$04,	$02,	$04,	$08
	dc.b		nRst,	$04,	nAb6,	$08,	$08,	$08,	$04,	$04
	dc.b		$02,	$04,	$02,	$04,	$04,	$06,	$02,	$04
	dc.b		$04,	$04,	$02,	$02,	$04,	$02,	$02,	$02
	dc.b		$02,	$04,	$04,	$04,	$02,	$04,	$02,	$04
	dc.b		$04,	$06,	$02,	$04,	$04,	$04,	$02,	$02
	dc.b		$04,	$02,	$02,	$02,	$02,	$04,	$04,	$08
	dc.b		$04,	$02,	$04,	$02,	$04,	$08,	nRst,	$04
	dc.b		nAb6,	$08,	$08,	$08,	$04,	nRst,	$20
	smpsPSGform	$E7
S4_Boss_Pinch_Mode_Jump08:
	smpsPSGvoice	$02
	dc.b		nAb6,	$04,	$02,	$04,	$02,	$04,	$04,	$06
	dc.b		$02,	$04,	$04,	$04,	$02,	$02,	$04,	$02
	dc.b		$02,	$02,	$02,	$04,	$04,	$04,	$02,	$04
	dc.b		$02,	$04,	$04,	$06,	$02,	$04,	$04,	$04
	dc.b		$02,	$02,	$04,	$02,	$02,	$02,	$02,	$04
	dc.b		$04,	$08,	$04,	$02,	$04,	$02,	$04,	$08
	dc.b		nRst,	$04,	nAb6,	$08,	$08,	$08,	$04,	nRst
	dc.b		$20,	nAb6,	$04,	$02,	$04,	$02,	$04,	$04
	dc.b		$06,	$02,	$04,	$04,	$04,	$02,	$02,	$04
	dc.b		$02,	$02,	$02,	$02,	$04,	$04,	$04,	$02
	dc.b		$04,	$02,	$04,	$04,	$06,	$02,	$04,	$04
	dc.b		$04,	$02,	$02,	$04,	$02,	$02,	$02,	$02
	dc.b		$04,	$04,	$08,	$04,	$02,	$04,	$02,	$04
	dc.b		$08,	nRst,	$04,	nAb6,	$08,	$08,	$08,	$04
	smpsJump	S4_Boss_Pinch_Mode_Jump08

; DAC Data
S4_Boss_Pinch_Mode_DAC:
	smpsPan		panCentre,	$00
	dc.b		dSnareS1,	$02,	$02,	$02,	$02,	$02,	nRst,	$02
	dc.b		dSnareS1,	dSnareS1,	dKickS1,	$04,	$04,	dSnareS1,	$08,	dKickS1
	dc.b		$04,	$04,	dSnareS1,	$08,	dKickS1,	$04,	$04,	dSnareS1
	dc.b		$04,	dKickS1,	$08,	$04,	dSnareS1,	$04,	$02,	$02
	dc.b		dKickS1,	$04,	$04,	dSnareS1,	$08,	dKickS1,	$04,	$04
	dc.b		dSnareS1,	$08,	dKickS1,	$04,	$04,	dSnareS1,	$04,	dKickS1
	dc.b		$08,	$04,	dSnareS1,	$04,	$02,	nRst,	$02,	dKickS1
	dc.b		$04,	$10,	dKickS1,	$02,	$02,	dSnareS1,	$08,	dKickS1
	dc.b		dKickS1,	dKickS1,	$04,	dSnareS1,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	dKickS1,	$04,	$04,	dSnareS1,	$08,	dKickS1
	dc.b		$04,	$04,	dSnareS1,	$08,	dKickS1,	$04,	$04,	dSnareS1
	dc.b		$04,	dKickS1,	$08,	$04,	dSnareS1,	$04,	$02,	$02
	dc.b		dKickS1,	$04,	$04,	dSnareS1,	$08,	dKickS1,	$04,	$04
	dc.b		dSnareS1,	$08,	dKickS1,	$04,	$04,	dSnareS1,	$04,	dKickS1
	dc.b		$08,	$04,	dSnareS1,	$04,	$02,	nRst,	$02,	dKickS1
	dc.b		$04,	$10,	dKickS1,	$02,	$02,	dSnareS1,	$08,	dKickS1
	dc.b		dKickS1,	dKickS1,	$04,	dSnareS1,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	nRst,	$10,	dSnareS1,	$02,	nRst,	dSnareS1
	dc.b		nRst,	dSnareS1,	dSnareS1,	dSnareS1,	dSnareS1
S4_Boss_Pinch_Mode_Jump09:
	smpsPan		panCentre,	$00
	dc.b		dKickS1,	$04,	$04,	dSnareS1,	$08,	dKickS1,	$04,	$04
	dc.b		dSnareS1,	$08,	dKickS1,	$04,	$04,	dSnareS1,	$04,	dKickS1
	dc.b		$08,	$04,	dSnareS1,	$04,	$02,	$02,	dKickS1,	$04
	dc.b		$04,	dSnareS1,	$08,	dKickS1,	$04,	$04,	dSnareS1,	$08
	dc.b		dKickS1,	$04,	$04,	dSnareS1,	$04,	dKickS1,	$08,	$04
	dc.b		dSnareS1,	$04,	$02,	nRst,	$02,	dKickS1,	$04,	$10
	dc.b		dKickS1,	$02,	$02,	dSnareS1,	$08,	dKickS1,	dKickS1,	dKickS1
	dc.b		$04,	dSnareS1,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		nRst,	$10,	dSnareS1,	$02,	nRst,	dSnareS1,	nRst,	dSnareS1
	dc.b		dSnareS1,	dSnareS1,	dSnareS1,	dKickS1,	$04,	$04,	dSnareS1,	$08
	dc.b		dKickS1,	$04,	$04,	dSnareS1,	$08,	dKickS1,	$04,	$04
	dc.b		dSnareS1,	$04,	dKickS1,	$08,	$04,	dSnareS1,	$04,	$02
	dc.b		$02,	dKickS1,	$04,	$04,	dSnareS1,	$08,	dKickS1,	$04
	dc.b		$04,	dSnareS1,	$08,	dKickS1,	$04,	$04,	dSnareS1,	$04
	dc.b		dKickS1,	$08,	$04,	dSnareS1,	$04,	$02,	nRst,	$02
	dc.b		dKickS1,	$04,	$10,	dKickS1,	$02,	$02,	dSnareS1,	$08
	dc.b		dKickS1,	dKickS1,	dKickS1,	$04,	dSnareS1,	$02,	$02,	$02
	dc.b		$02,	$02,	$02
	smpsJump	S4_Boss_Pinch_Mode_Jump09

S4_Boss_Pinch_Mode_Voices:
	dc.b		$35,$00,$01,$00,$00,$1F,$1F,$1F,$1E,$08,$0C,$08,$08,$08,$1C,$0C
	dc.b		$04,$06,$06,$06,$06,$90,$80,$80,$78;			Voice 00
	dc.b		$3A,$33,$70,$0A,$01,$5F,$5F,$97,$DF,$0E,$0D,$10,$07,$03,$03,$04
	dc.b		$05,$20,$3B,$3C,$19,$21,$1B,$1E,$00;			Voice 01
	dc.b		$3D,$01,$02,$02,$02,$10,$50,$50,$50,$07,$08,$08,$08,$01,$00,$00
	dc.b		$00,$20,$17,$17,$17,$1C,$88,$88,$88;			Voice 02
	even
