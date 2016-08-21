; =============================================================================================
; Project Name:		DX
; Created:		9th February 2011
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

DX_Header:
	smpsHeaderVoice	DX_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$04

	smpsHeaderDAC	DX_DAC
	smpsHeaderFM	DX_FM1,	smpsPitch00,	$13
	smpsHeaderFM	DX_FM2,	smpsPitch00,	$0E
	smpsHeaderFM	DX_FM3,	smpsPitch00,	$17
	smpsHeaderFM	DX_FM4,	smpsPitch00,	$17
	smpsHeaderFM	DX_FM5,	smpsPitch00,	$1B
	smpsHeaderPSG	DX_PSG1,	smpsPitch03lo,	$06,	$00
	smpsHeaderPSG	DX_PSG2,	smpsPitch03lo,	$06,	$00
	smpsHeaderPSG	DX_PSG3,	smpsPitch02hi+$0B,	$06,	$00
DX_Jump01:
	smpsPan		panCentre,	$00
	smpsModSet	$01,	$01,	$01,	$08
	smpsFMvoice	$03
	dc.b		nC4,	$60,	nC5,	$18,	nG4,	nBb4,	$12,	nEb4
	dc.b		nBb3,	$0C,	nC4,	$60,	nC5,	$18,	nG4,	nBb4
	dc.b		$12,	nEb4,	nEb5,	$0C,	nC4,	$60,	$18,	nG4
	dc.b		nC5,	$12,	nEb5,	nG5,	$0C,	$30,	nF5,	nEb5
	dc.b		nG4,	$04,	nF4,	nEb4,	nF4,	nEb4,	nD4,	nEb4
	dc.b		nD4,	nC4,	nBb3,	nG3,	nBb3,	nC4,	$60,	nRst
	dc.b		nRst,	nRst
	smpsFMvoice	$00
	dc.b		nG4,	$48,	$0C,	nC4,	nEb4,	$30,	$0C,	nD4
	dc.b		nEb4,	nBb4,	nA4,	$30,	nG4,	smpsNoAttack,	nG4,	$2E
	dc.b		nRst,	$32,	$60,	nC4,	$30,	$18,	nG4,	$0C
	dc.b		nEb4,	nBb4,	$30,	nC5,	nA4,	$60,	nG4,	$30
	dc.b		nC4,	nEb4,	$18,	nD4,	nBb3,	nA3,	$0C,	nBb3
	dc.b		nC4,	$30,	nG4,	smpsNoAttack,	nG4,	$2E,	nRst,	$32
	dc.b		nEb4,	$60,	$0C,	nD4,	nEb4,	nG4,	nBb4,	$18
	dc.b		nA4,	$0C,	nF4,	nG4,	$18,	nF4,	$30,	nBb4
	dc.b		$12,	nA4,	$06,	smpsNoAttack,	$60,	nA4,	$60,	nC6
	dc.b		$18,	nG5,	nBb5,	$14,	nA5,	$10,	nC5,	$0C
	dc.b		nEb5,	$2E,	nRst,	$32,	nRst,	$60
	smpsFMvoice	$05
	smpsAlterPitch	$F4
	dc.b		nAb4,	$30,	nC5,	nEb4,	$60,	nFs4,	$30,	nBb3
	dc.b		nCs4,	$60,	nAb4,	$30,	nEb4,	nAb4,	nEb5,	nFs5
	dc.b		nFs4,	smpsNoAttack,	nFs4,	$60
	smpsAlterPitch	$0C
	dc.b		nC4,	$60,	nC3,	nC4,	$30,	nG3,	nG4,	$60
	dc.b		nEb4,	$30,	nBb4,	nG4,	$60,	nC4,	$30,	nG3
	dc.b		nG4,	nF4,	nEb4,	$60,	nF4,	$30,	nD4,	nG4
	dc.b		$60,	smpsNoAttack,	$30,	nEb5,	$18,	nD5
	smpsJump	DX_Jump01
	smpsPan		panCentre,	$00
	smpsModSet	$01,	$01,	$01,	$02
	smpsFMvoice	$01
DX_Jump02:
	dc.b		nC2,	$60,	smpsNoAttack,	$48,	$0C,	nD2,	nEb2,	$60
	dc.b		smpsNoAttack,	nEb2,	nF2,	nF2,	$48,	$0C,	nFs2,	nG2
	dc.b		$60,	$30,	$04,	nF2,	nEb2,	nF2,	nEb2,	nD2
	dc.b		nEb2,	nD2,	nC2,	nBb1,	nG1,	nBb1,	nC2,	$08
	dc.b		$04,	nG1,	$0C,	nBb1,	nC2,	$08,	$04,	nRst
	dc.b		$30,	nRst,	$08,	nC2,	$04,	nRst,	$0C,	nC2
	dc.b		nRst,	nBb1,	$04,	nBb1,	$08,	nBb1,	nRst,	$04
	dc.b		$0C,	nG1,	$08,	nBb1,	$04,	nC2,	$08,	$04
	dc.b		nG1,	$0C,	nBb1,	nC2,	$08,	$04,	nRst,	$30
	dc.b		nRst,	$08,	nC2,	$04,	nRst,	$0C,	nC2,	nRst
	dc.b		nBb1,	$04,	nRst,	$08,	nBb1,	nRst,	$04,	nG1
	dc.b		nRst,	nG1,	$10
DX_Loop01:
	dc.b		nC2,	$08,	$04,	nG1,	$0C,	nBb1,	nC2,	$08
	dc.b		$04,	nRst,	$30,	nRst,	$08,	nC2,	$04,	nRst
	dc.b		$0C,	nC2,	nRst,	nBb1,	$04,	nRst,	$08,	nBb1
	dc.b		nRst,	$04,	$0C,	nG1,	$08,	nBb1,	$04
	smpsLoop	$00,	$08,	DX_Loop01
DX_Loop02:
	dc.b		nC2,	$08,	$04,	nG1,	$0C,	nBb1,	nC2,	$08
	dc.b		$04,	nRst,	$30,	nRst,	$08,	nC2,	$04,	nRst
	dc.b		$0C,	nC2,	nRst,	nBb1,	$04,	nRst,	$08,	nBb1
	dc.b		nRst,	$04,	$0C,	nG1,	$08,	nBb1,	$04
	smpsLoop	$00,	$02,	DX_Loop02
	dc.b		nAb1,	$08,	nEb2,	$04,	nAb2,	$08,	nEb2,	$04
	dc.b		nAb1,	$08,	$04,	nRst,	$08,	$26,	nRst,	$0A
	dc.b		$04,	nAb2,	$16,	nRst,	$0E,	$04,	nEb2,	nAb2
	dc.b		nCs3,	$0C,	nC3,	nAb2,	nEb2,	$08,	nAb2,	$04
	dc.b		nFs1,	$08,	nCs2,	$04,	nFs2,	$08,	nCs2,	$04
	dc.b		nFs1,	$08,	$04,	nRst,	$08,	$04,	$22,	nRst
	dc.b		$0A,	$04,	nFs2,	nRst,	nFs1,	nRst,	$08,	$04
	dc.b		$0C,	nF1,	$08,	nFs1,	$04,	nRst,	$08,	$04
	dc.b		nFs1,	nCs2,	nFs2,	nB2,	$08,	nBb2,	$04,	nB2
	dc.b		$08,	nBb2,	$04,	nAb1,	$08,	nEb2,	$04,	nAb2
	dc.b		$08,	nEb2,	$04,	nAb1,	$08,	$04,	nRst,	$08
	dc.b		$26,	nRst,	$0A,	$04,	nAb2,	$16,	nRst,	$0E
	dc.b		$04,	nEb2,	nAb2,	nCs3,	nC3,	nCs3,	nAb3,	nEb3
	dc.b		nBb2,	nFs2,	nF2,	nFs2,	nEb2,	nBb2,	nEb2,	nFs1
	dc.b		$08,	nCs2,	$04,	nFs2,	$08,	nCs2,	$04,	nFs1
	dc.b		$08,	$04,	nRst,	$08,	$04,	$22,	nRst,	$0A
	dc.b		$04,	nFs2,	nRst,	nFs1,	nRst,	$08,	$04,	$0C
	dc.b		nF1,	$08,	nFs1,	$04,	nRst,	$08,	$04,	nFs1
	dc.b		nCs2,	nFs2,	nB2,	$08,	nBb2,	$04,	nB2,	$08
	dc.b		nBb2,	$04,	nC1,	$08,	$04,	nC1,	nRst,	$08
	dc.b		$0C,	nD1,	$08,	nEb1,	$04,	nRst,	$08,	nC1
	dc.b		$0C,	$04,	$08,	nD1,	$04,	nEb1,	$0C,	nC1
	dc.b		$08,	$04,	nC1,	nRst,	$08,	$0C,	nD1,	$08
	dc.b		nEb1,	$04,	nRst,	$08,	nC1,	$0C,	$04,	$08
	dc.b		nD1,	$04,	nEb1,	$0C,	nC1,	$08,	$04,	nC1
	dc.b		nRst,	$08,	$0C,	nD1,	$08,	nEb1,	$04,	nRst
	dc.b		$08,	nC1,	$0C,	$04,	$08,	nD1,	$04,	nEb1
	dc.b		$0C,	nC1,	$08,	$04,	nC1,	nRst,	$08,	$0C
	dc.b		nD1,	$08,	nEb1,	$04,	nRst,	$08,	nC1,	$0C
	dc.b		$04,	$08,	nD1,	$04,	nEb1,	$0C,	nC1,	$08
	dc.b		$04,	nC1,	nRst,	$08,	$0C,	nD1,	$08,	nEb1
	dc.b		$04,	nRst,	$08,	nC1,	$0C,	$04,	$08,	nD1
	dc.b		$04,	nEb1,	$0C,	nC1,	$08,	$04,	nC1,	nRst
	dc.b		$08,	$0C,	nD1,	$08,	nEb1,	$04,	nRst,	$08
	dc.b		nC1,	$0C,	$04,	$08,	nD1,	$04,	nEb1,	$0C
	dc.b		nC1,	$08,	$04,	nC1,	nRst,	$08,	$0C,	nD1
	dc.b		$08,	nEb1,	$04,	nRst,	$08,	nC1,	$0C,	$04
	dc.b		$08,	nD1,	$04,	nEb1,	$0C,	nC1,	$08,	$04
	dc.b		nC1,	nRst,	$08,	$0C,	nD1,	$08,	nEb1,	$04
	dc.b		nRst,	$08,	nC1,	$0C,	$04,	$08,	nD1,	$04
	dc.b		nEb1,	$0C,	nC1,	$08,	$04,	nC1,	nRst,	$08
	dc.b		$0C,	nD1,	$08,	nEb1,	$04,	nRst,	$08,	nC1
	dc.b		$0C,	$04,	$08,	nD1,	$04,	nEb1,	$0C,	nC1
	dc.b		$08,	$04,	nC1,	nRst,	$08,	$0C,	nD1,	$08
	dc.b		nEb1,	$04,	nRst,	$08,	nC1,	$0C,	$04,	$08
	dc.b		nD1,	$04,	nEb1,	$0C,	nC1,	$08,	$04,	nC1
	dc.b		nRst,	$08,	$0C,	nD1,	$08,	nEb1,	$04,	nRst
	dc.b		$08,	nC1,	$0C,	$04,	$08,	nD1,	$04,	nEb1
	dc.b		$0C,	nC1,	$08,	$04,	nC1,	nRst,	$08,	$0C
	dc.b		nD1,	$08,	nEb1,	$04,	nG1,	$0C,	nRst,	nG1
	dc.b		$18
	smpsJump	DX_Jump02
	smpsPan		panLeft,	$00
	smpsModSet	$01,	$01,	$01,	$07
DX_Jump03:
	smpsFMvoice	$02
DX_Loop03:
	dc.b		nC4,	$08,	$04,	nBb3,	$08,	nC4,	$04,	nRst
	dc.b		$08,	$04,	nBb3,	$08,	nC4,	$04,	nRst,	$08
	dc.b		$04,	nG3,	nBb3,	nC4,	nEb4,	$08,	$04,	nD4
	dc.b		$08,	nBb3,	$04,	nC4,	$08,	$04,	nBb3,	$08
	dc.b		nC4,	$04,	nRst,	$08,	$04,	nBb3,	$08,	nC4
	dc.b		$04,	nRst,	$08,	$04,	nG3,	nBb3,	nC4,	nG4
	dc.b		$08,	$10
	smpsLoop	$00,	$03,	DX_Loop03
	dc.b		nC4,	$08,	$04,	nBb3,	$08,	nC4,	$04,	nRst
	dc.b		$08,	$04,	nBb3,	$08,	nC4,	$04,	nRst,	$08
	dc.b		$04,	nG3,	nBb3,	nC4,	nEb4,	$08,	$04,	nD4
	dc.b		$08,	nBb3,	$04,	nC4,	$08,	$04,	nBb3,	$08
	dc.b		nC4,	$04,	nRst,	$08,	$04,	nBb3,	$08,	nC4
	dc.b		$04,	nG4,	nF4,	nG4,	nF4,	nEb4,	nF4,	nEb4
	dc.b		nD4,	nEb4,	nD4,	nC4,	nBb3
DX_Loop04:
	dc.b		nG3,	$0C,	nG4,	nG3,	$08,	nF4,	$0C,	nG3
	dc.b		$04,	nEb4,	$0C,	nG3,	$08,	nD4,	$0C,	nG3
	dc.b		$04,	nEb4,	nRst,	$08,	nG3,	$04,	nRst,	$08
	dc.b		nC4,	nD4,	$04,	nEb4,	$08,	nG4,	$04,	nRst
	dc.b		$08,	nG3,	$04,	nC4,	$08,	nD4,	$04,	nEb4
	dc.b		$08,	nG4,	$04,	nRst,	$08,	nBb4,	$10,	nG3
	dc.b		$0C,	nG4,	nG3,	$08,	nF4,	$0C,	nG3,	$04
	dc.b		nEb4,	$0C,	nG3,	$08,	nD4,	$0C,	nG3,	$04
	dc.b		nEb4,	nRst,	$08,	nC4,	nG3,	$04,	nG4,	$08
	dc.b		nF4,	$04,	nEb4,	$08,	nD4,	$04,	nRst,	$08
	dc.b		nEb4,	$04,	nF4,	$08,	nEb4,	$04,	nF4,	nRst
	dc.b		$08,	nG4,	nBb4,	$04,	nG4,	nRst,	$08
	smpsLoop	$00,	$05,	DX_Loop04
	dc.b		nG3,	$0C,	nG4,	nG3,	$08,	nF4,	$0C,	nG3
	dc.b		$04,	nEb4,	$0C,	nG3,	$08,	nD4,	$0C,	nG3
	dc.b		$04,	nEb4,	nRst,	$08,	nG3,	$04,	nRst,	$08
	dc.b		nC4,	nD4,	$04,	nEb4,	$08,	nG4,	$04,	nRst
	dc.b		$08,	nG3,	$04,	nC4,	$08,	nD4,	$04,	nEb4
	dc.b		$08,	nG4,	$04,	nRst,	$08,	nBb4,	$10,	nG3
	dc.b		$0C,	nG4,	nG3,	$08,	nF4,	$0C,	nG3,	$04
	dc.b		nEb4,	$0C,	nG3,	$08,	nD4,	$0C,	nG3,	$04
	dc.b		nEb4,	nRst,	$08,	nC4,	nG3,	$04,	nG4,	$08
	dc.b		nF4,	$04,	nEb4,	$08,	nD4,	$04,	nRst,	$08
	dc.b		nEb4,	$04,	nF4,	$08,	nEb4,	$04,	nF4,	nRst
	dc.b		$08,	nG4,	nBb4,	$04,	nG4,	nRst,	$08
	smpsFMvoice	$05
	dc.b		nRst,	$60,	nRst,	$18,	nC5,	$04,	nAb4,	nEb4
	dc.b		nAb4,	nEb4,	nC4,	nEb4,	nC4,	nAb3,	nC4,	nAb3
	dc.b		nEb3,	nAb2,	$18,	nRst,	$60,	nFs4,	$04,	nCs4
	dc.b		nBb3,	nFs3,	nBb3,	nCs4,	nFs4,	nBb3,	nFs3,	nCs3
	dc.b		nFs3,	nBb3,	nFs3,	nCs3,	nBb2,	nFs2,	$24,	nRst
	dc.b		$60,	nRst,	$18,	nC5,	$04,	nAb4,	nEb4,	nAb4
	dc.b		nEb4,	nC4,	nEb4,	nC4,	nAb3,	nC4,	nAb3,	nEb3
	dc.b		nAb2,	$18,	nRst,	$60,	nFs4,	$04,	nCs4,	nBb3
	dc.b		nFs3,	nBb3,	nCs4,	nFs4,	nBb3,	nFs3,	nCs3,	nFs3
	dc.b		nBb3,	nFs3,	nCs3,	nBb2,	nFs2,	$24
	smpsAlterVol	$FA
	dc.b		nC3,	$60,	smpsNoAttack,	nC3,	nC4,	$48,	$08,	$04
	dc.b		nRst,	$08,	$04,	nRst,	$08,	nBb3,	$04,	$22
	dc.b		smpsNoAttack,	$1A,	$08,	$04,	nRst,	$08,	$04,	nRst
	dc.b		$08,	nAb3,	$04,	$22,	smpsNoAttack,	$1A,	$08,	$04
	dc.b		nRst,	$08,	$04,	nRst,	$08,	nG3,	$04,	$24
	dc.b		$0C,	nF3,	nEb3,	nD3,	nC4,	$48,	$08,	$04
	dc.b		$08,	$04,	nRst,	$08,	nD4,	$04,	$22,	smpsNoAttack
	dc.b		$1A,	$08,	$04,	nRst,	$08,	$04,	nRst,	$08
	dc.b		nEb4,	$04,	$2E,	smpsNoAttack,	$0E,	$08,	$04,	nRst
	dc.b		$08,	$04,	nRst,	$08,	nF4,	$04,	$24,	nBb4
	dc.b		$30,	nG4,	$60,	nC4,	$18,	nC4,	nEb4,	$18
	dc.b		nD4
	smpsAlterVol	$06
	smpsJump	DX_Jump03
	smpsPan		panRight,	$00
	smpsModSet	$01,	$01,	$01,	$08
DX_Jump04:
	smpsFMvoice	$02
DX_Loop05:
	dc.b		nG3,	$08,	$04,	nF3,	$08,	nG3,	$04,	nRst
	dc.b		$08,	$04,	nF3,	$08,	nG3,	$04,	nRst,	$08
	dc.b		$04,	nEb3,	nF3,	nG3,	nBb3,	$08,	$04,	nG3
	dc.b		$08,	$04,	$08,	$04,	nF3,	$08,	nG3,	$04
	dc.b		nRst,	$08,	$04,	nF3,	$08,	nG3,	$04,	nRst
	dc.b		$08,	$04,	nEb3,	nF3,	nG3,	nBb3,	$08,	nD4
	dc.b		$10
	smpsLoop	$00,	$03,	DX_Loop05
	dc.b		nG3,	$08,	$04,	nF3,	$08,	nG3,	$04,	nRst
	dc.b		$08,	$04,	nF3,	$08,	nG3,	$04,	nRst,	$08
	dc.b		$04,	nEb3,	nF3,	nG3,	nBb3,	$08,	$04,	nG3
	dc.b		$08,	$04,	$08,	$04,	nF3,	$08,	nG3,	$04
	dc.b		nRst,	$08,	$04,	nF3,	$08,	nG3,	$04,	nEb4
	dc.b		nD4,	nEb4,	nD4,	nC4,	nD4,	nC4,	nBb3,	nC4
	dc.b		nBb3,	nG3,	nF3
DX_Loop06:
	dc.b		nG2,	$0C,	nG3,	nG2,	$08,	nF3,	$0C,	nG2
	dc.b		$04,	nEb3,	$0C,	nG2,	$08,	nD3,	$0C,	nG2
	dc.b		$04,	nEb3,	nRst,	$08,	nG2,	$04,	nRst,	$08
	dc.b		nC3,	nD3,	$04,	nEb3,	$08,	nG3,	$04,	nRst
	dc.b		$08,	nG2,	$04,	nC3,	$08,	nD3,	$04,	nEb3
	dc.b		$08,	nG3,	$04,	nRst,	$08,	nBb3,	$10,	nG2
	dc.b		$0C,	nG3,	nG2,	$08,	nF3,	$0C,	nG2,	$04
	dc.b		nEb3,	$0C,	nG2,	$08,	nD3,	$0C,	nG2,	$04
	dc.b		nEb3,	nRst,	$08,	nC3,	nG2,	$04,	nG3,	$08
	dc.b		nF3,	$04,	nEb3,	$08,	nD3,	$04,	nRst,	$08
	dc.b		nEb3,	$04,	nF3,	$08,	nEb3,	$04,	nF3,	nRst
	dc.b		$08,	nG3,	nBb3,	$04,	nG3,	nRst,	$08
	smpsLoop	$00,	$05,	DX_Loop06
	dc.b		nG2,	$0C,	nG3,	nG2,	$08,	nF3,	$0C,	nG2
	dc.b		$04,	nEb3,	$0C,	nG2,	$08,	nD3,	$0C,	nG2
	dc.b		$04,	nEb3,	nRst,	$08,	nG2,	$04,	nRst,	$08
	dc.b		nC3,	nD3,	$04,	nEb3,	$08,	nG3,	$04,	nRst
	dc.b		$08,	nG2,	$04,	nC3,	$08,	nD3,	$04,	nEb3
	dc.b		$08,	nG3,	$04,	nRst,	$08,	nBb3,	$10,	nG2
	dc.b		$0C,	nG3,	nG2,	$08,	nF3,	$0C,	nG2,	$04
	dc.b		nEb3,	$0C,	nG2,	$08,	nD3,	$0C,	nG2,	$04
	dc.b		nEb3,	nRst,	$08,	nC3,	nG2,	$04,	nG3,	$08
	dc.b		nF3,	$04,	nEb3,	$08,	nD3,	$04,	nRst,	$08
	dc.b		nEb3,	$04,	nF3,	$08,	nEb3,	$04,	nF3,	nRst
	dc.b		$08,	nG3,	nBb3,	$04,	nG3,	$08,	nRst,	$04
	smpsFMvoice	$05
	dc.b		nRst,	$60,	nRst,	$18,	nRst,	$0C,	nC5,	$04
	dc.b		nAb4,	nEb4,	nAb4,	nEb4,	nC4,	nEb4,	nC4,	nAb3
	dc.b		nC4,	nAb3,	nEb3,	nAb2,	$0C,	nRst,	$60,	nRst
	dc.b		$0C,	nFs4,	$04,	nCs4,	nBb3,	nFs3,	nBb3,	nCs4
	dc.b		nFs4,	nBb3,	nFs3,	nCs3,	nFs3,	nBb3,	nFs3,	nCs3
	dc.b		smpsNoAttack,	nBb2,	$1C,	smpsNoAttack,	$08,	nRst,	$58,	nRst
	dc.b		$18,	nRst,	$0C,	nC5,	$04,	nAb4,	nEb4,	nAb4
	dc.b		nEb4,	nC4,	nEb4,	nC4,	nAb3,	nC4,	nAb3,	nEb3
	dc.b		nAb2,	$0C,	nRst,	$60,	nRst,	$0C,	nFs4,	$04
	dc.b		nCs4,	nBb3,	nFs3,	nBb3,	nCs4,	nFs4,	nBb3,	nFs3
	dc.b		nCs3,	nFs3,	nBb3,	nFs3,	nCs3,	smpsNoAttack,	nBb2,	$1C
	smpsAlterVol	$FA
	dc.b		nG2,	$60,	smpsNoAttack,	nG2,	nG3,	$48,	$08,	$04
	dc.b		nRst,	$08,	$04,	nRst,	$08,	nG3,	$04,	$22
	dc.b		smpsNoAttack,	$1A,	$08,	$04,	nRst,	$08,	$04,	nRst
	dc.b		$08,	nEb3,	$04,	$22,	smpsNoAttack,	$1A,	$08,	$04
	dc.b		nRst,	$08,	$04,	nRst,	$08,	nD3,	$04,	$24
	dc.b		$18,	nG2,	nG3,	$48,	$08,	$04,	$08,	$04
	dc.b		nRst,	$08,	nG3,	$04,	$22,	smpsNoAttack,	$1A,	$08
	dc.b		$04,	nRst,	$08,	$04,	nRst,	$08,	nG3,	$04
	dc.b		$2E,	smpsNoAttack,	$0E,	$08,	$04,	nRst,	$08,	$04
	dc.b		nRst,	$08,	nBb3,	$04,	$24,	nD4,	$30,	nC4
	dc.b		$60,	nG3,	$18,	nG3,	nG3,	$18,	nG3
	smpsAlterVol	$06
	smpsJump	DX_Jump04
	smpsModSet	$01,	$01,	$01,	$06
	dc.b		nRst,	$10
	smpsAlterNote	$01
	smpsJump	DX_Jump01
	smpsStop
DX_Loop07:
	smpsModSet	$01,	$01,	$01,	$00
	smpsPSGvoice	$00
	dc.b		nC4,	$08,	$04,	nBb3,	$08,	nC4,	$04,	nRst
	dc.b		$08,	$04,	nBb3,	$08,	nC4,	$04,	nRst,	$08
	dc.b		$04,	nG3,	nBb3,	nC4,	nEb4,	$08,	$04,	nD4
	dc.b		$08,	nBb3,	$04,	nC4,	$08,	$04,	nBb3,	$08
	dc.b		nC4,	$04,	nRst,	$08,	$04,	nBb3,	$08,	nC4
	dc.b		$04,	nRst,	$08,	$04,	nG3,	nBb3,	nC4,	nG4
	dc.b		$08,	$10
	smpsLoop	$00,	$03,	DX_Loop07
	dc.b		nC4,	$08,	$04,	nBb3,	$08,	nC4,	$04,	nRst
	dc.b		$08,	$04,	nBb3,	$08,	nC4,	$04,	nRst,	$08
	dc.b		$04,	nG3,	nBb3,	nC4,	nEb4,	$08,	$04,	nD4
	dc.b		$08,	nBb3,	$04,	nC4,	$08,	$04,	nBb3,	$08
	dc.b		nC4,	$04,	nRst,	$08,	$04,	nBb3,	$08,	nC4
	dc.b		$04,	nG4,	nF4,	nG4,	nF4,	nEb4,	nF4,	nEb4
	dc.b		nD4,	nEb4,	nD4,	nC4,	nBb3
	smpsPSGvoice	$01
	dc.b		nG4,	$60,	smpsNoAttack,	nG4,	$16,	nRst,	$4A,	$60
	dc.b		smpsNoAttack,	nG4,	$16,	nRst,	$4A
DX_Loop08:
	dc.b		nG4,	$60,	smpsNoAttack,	nG4,	$16,	nRst,	$4A,	nBb4
	dc.b		$60,	smpsNoAttack,	nBb4,	$16,	nRst,	$4A
	smpsLoop	$00,	$02,	DX_Loop08
	dc.b		nA4,	$60,	smpsNoAttack,	nA4,	$16,	nRst,	$4A,	nG4
	dc.b		$60,	smpsNoAttack,	nG4,	$16,	nRst,	$4A,	$60,	smpsNoAttack
	dc.b		nG4,	$16,	nRst,	$4A,	nBb4,	$60,	smpsNoAttack,	nBb4
	dc.b		$16,	nRst,	$4A
DX_Loop09:
	smpsPSGvoice	$01
	dc.b		nG4,	$08,	$04,	nG4,	nRst,	$08,	nG4,	nF4
	dc.b		$04,	nRst,	$08,	nG4,	$04,	nRst,	$08,	$04
	dc.b		nF4,	nRst,	$08,	nG4,	nBb4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nF4,	nRst
	dc.b		$08,	nG4,	nBb4,	$04,	nRst,	$08,	nF4,	$06
	dc.b		nRst,	$2E
	smpsLoop	$00,	$02,	DX_Loop09
DX_Loop0A:
	smpsPSGvoice	$01
	dc.b		nAb4,	$08,	$04,	nRst,	$08,	$04,	nRst,	$08
	dc.b		$04,	nRst,	$08,	$04,	$30,	smpsNoAttack,	$60,	nFs4
	dc.b		$08,	$04,	nRst,	$08,	$04,	nRst,	$08,	$04
	dc.b		nRst,	$08,	$04,	$30,	smpsNoAttack,	$60
	smpsLoop	$00,	$02,	DX_Loop0A
	dc.b		nRst,	$60,	nRst,	$30,	nG4,	$04,	nC4,	nG4
	dc.b		nC5,	nG4,	nC5,	nG4,	nC4,	nG4,	nC4,	$0C
	dc.b		nRst,	$30,	nG4,	$04,	nC4,	nG4,	nC5,	nG4
	dc.b		nC5,	nG4,	nC4,	nG4,	nC4,	$0C,	nRst,	$60
	dc.b		nRst,	$60,	nRst,	$60,	nRst,	$30,	nG4,	$04
	dc.b		nC4,	nG4,	nC5,	nG4,	nC5,	nG4,	nC4,	nG4
	dc.b		nC4,	$0C,	nRst,	$30,	nG4,	$04,	nC4,	nG4
	dc.b		nC5,	nG4,	nC5,	nG4,	nC4,	nG4,	nC4,	$0C
	dc.b		nRst,	$60,	nF4,	$18,	nD4,	nBb3,	nG3,	nC3
	dc.b		$30,	nG3,	nC3,	$18,	nG3,	nEb4,	nBb4
	smpsJump	DX_Loop07
DX_Jump05:
	smpsModSet	$02,	$01,	$01,	$04
	smpsPSGvoice	$07
DX_Loop0B:
	dc.b		nG3,	$08,	$04,	nF3,	$08,	nG3,	$04,	nRst
	dc.b		$08,	$04,	nF3,	$08,	nG3,	$04,	nRst,	$08
	dc.b		$04,	nEb3,	nF3,	nG3,	nBb3,	$08,	$04,	nG3
	dc.b		$08,	$04,	$08,	$04,	nF3,	$08,	nG3,	$04
	dc.b		nRst,	$08,	$04,	nF3,	$08,	nG3,	$04,	nRst
	dc.b		$08,	$04,	nEb3,	nF3,	nG3,	nBb3,	$08,	nD4
	dc.b		$10
	smpsLoop	$00,	$03,	DX_Loop0B
	dc.b		nG3,	$08,	$04,	nF3,	$08,	nG3,	$04,	nRst
	dc.b		$08,	$04,	nF3,	$08,	nG3,	$04,	nRst,	$08
	dc.b		$04,	nEb3,	nF3,	nG3,	nBb3,	$08,	$04,	nG3
	dc.b		$08,	$04,	$08,	$04,	nF3,	$08,	nG3,	$04
	dc.b		nRst,	$08,	$04,	nF3,	$08,	nG3,	$04,	nEb4
	dc.b		nD4,	nEb4,	nD4,	nC4,	nD4,	nC4,	nBb3,	nC4
	dc.b		nBb3,	nG3,	nF3
	smpsPSGvoice	$07
	dc.b		nC4,	$60,	smpsNoAttack,	nC4,	$16,	nRst,	$4A,	$60
	dc.b		smpsNoAttack,	nC4,	$16,	nRst,	$4A
DX_Loop0C:
	dc.b		nC4,	$60,	smpsNoAttack,	nC4,	$16,	nRst,	$4A,	nEb4
	dc.b		$60,	smpsNoAttack,	nEb4,	$16,	nRst,	$4A
	smpsLoop	$00,	$02,	DX_Loop0C
	dc.b		nF4,	$60,	smpsNoAttack,	nF4,	$16,	nRst,	$4A,	nEb4
	dc.b		$60,	smpsNoAttack,	nEb4,	$16,	nRst,	$4A,	nC4,	$60
	dc.b		smpsNoAttack,	nC4,	$16,	nRst,	$4A,	nEb4,	$60,	smpsNoAttack
	dc.b		nEb4,	$16,	nRst,	$4A
DX_Loop0D:
	smpsPSGvoice	$07
	dc.b		nEb4,	$08,	$04,	nEb4,	nRst,	$08,	nEb4,	nD4
	dc.b		$04,	nRst,	$08,	nEb4,	$04,	nRst,	$08,	$04
	dc.b		nD4,	nRst,	$08,	nEb4,	nG4,	$04,	nRst,	$08
	dc.b		nEb4,	$04,	nRst,	$08,	nEb4,	$04,	nD4,	nRst
	dc.b		$08,	nEb4,	nG4,	$04,	nRst,	$08,	nD4,	$06
	dc.b		nRst,	$2E
	smpsLoop	$00,	$02,	DX_Loop0D
DX_Loop0E:
	smpsPSGvoice	$07
	dc.b		nCs4,	$08,	$04,	nRst,	$08,	$04,	nRst,	$08
	dc.b		$04,	nRst,	$08,	$04,	nC4,	$30,	smpsNoAttack,	$60
	dc.b		nB3,	$08,	$04,	nRst,	$08,	$04,	nRst,	$08
	dc.b		$04,	nRst,	$08,	$04,	nBb3,	$30,	smpsNoAttack,	$60
	smpsLoop	$00,	$02,	DX_Loop0E
	dc.b		nRst,	$0D
	smpsSetVol	$02
	dc.b		nRst,	$60,	nRst,	$30,	nG4,	$04,	nC4,	nG4
	dc.b		nC5,	nG4,	nC5,	nG4,	nC4,	nG4,	nC4,	$0C
	dc.b		nRst,	$30,	nG4,	$04,	nC4,	nG4,	nC5,	nG4
	dc.b		nC5,	nG4,	nC4,	nG4,	nC4,	$0C,	nRst,	$60
	dc.b		nRst,	$60,	nRst,	$60,	nRst,	$30,	nG4,	$04
	dc.b		nC4,	nG4,	nC5,	nG4,	nC5,	nG4,	nC4,	nG4
	dc.b		nC4,	$0C,	nRst,	$30,	nG4,	$04,	nC4,	nG4
	dc.b		nC5,	nG4,	nC5,	nG4,	nC4,	nG4,	nC4,	$0C
	dc.b		nRst,	$60,	nF4,	$18,	nD4,	nBb3,	nG3,	nC3
	dc.b		$30,	nG3,	nC3,	$18,	nG3,	nEb4,	nBb4,	$0B
	smpsSetVol	$FE
	smpsJump	DX_Jump05

; PSG3 Data
DX_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$60,	nRst
	smpsCall	DX_Call01
	smpsCall	DX_Call01
	smpsCall	DX_Call02
DX_Jump06:
	smpsCall	DX_Call01
	smpsJump	DX_Jump06
	smpsStop

DX_Call01:
	smpsPSGvoice	$04
	dc.b		nC4,	$04,	nRst,	nRst,	nC4,	nRst,	nC4
	smpsLoop	$00,	$10,	DX_Call01
	smpsReturn

DX_Call02:
	smpsPSGvoice	$04
	dc.b		nC4,	$04,	nRst,	nRst,	nC4,	nRst,	nC4
	smpsPSGvoice	$04
	dc.b		nC4,	$04,	nRst,	nRst,	nC4,	nRst,	nC4
	smpsPSGvoice	$04
	dc.b		nC4,	$04,	nRst,	nRst,	nC4,	nRst,	nRst
	smpsPSGvoice	$04
	dc.b		nC4,	$0C
	smpsPSGvoice	$0F
	dc.b		nC4,	$04,	nRst,	nRst
	smpsReturn
DX_Loop0F:
	smpsPSGvoice	$0F
	dc.b		nC4,	$06,	nRst,	nC4,	nC4
	smpsPSGvoice	$04
	dc.b		nC4,	$0C
	smpsPSGvoice	$0F
	dc.b		nC4,	$06,	nC4
	smpsPSGvoice	$0F
	dc.b		nC4,	$06,	nRst,	nC4,	nRst
	smpsPSGvoice	$04
	dc.b		nC4,	$0C
	smpsPSGvoice	$0F
	dc.b		$06,	$06
	smpsLoop	$00,	$04,	DX_Loop0F
	smpsReturn
DX_Loop10:
	smpsPSGvoice	$0F
	dc.b		nC4,	$06,	nC4,	nC4,	nC4
	smpsPSGvoice	$04
	dc.b		nC4,	$0C
	smpsPSGvoice	$0F
	dc.b		nC4,	$06,	nC4
	smpsPSGvoice	$04
	dc.b		nC4,	$06
	smpsPSGvoice	$0F
	dc.b		nC4,	nC4,	nC4,	nC4,	nC4,	nC4,	nC4
	smpsLoop	$00,	$07,	DX_Loop10
	smpsReturn
DX_Loop11:
	smpsPSGvoice	$0F
	dc.b		nC4,	$06,	nRst,	nC4,	nC4,	nC4,	nRst,	nC4
	dc.b		nC4
	smpsLoop	$00,	$04,	DX_Loop11
	smpsReturn

; DAC Data
DX_DAC:
	dc.b		dVLowTimpani,	$60,	nRst,	$48,	$90,	$0C,	$90,	dVLowTimpani
	dc.b		$60,	nRst,	$48,	$A7,	$04,	$A7,	$A7,	$A9
	dc.b		$A9,	$A9,	dVLowTimpani,	$60,	nRst,	$48,	$90,	$0C
	dc.b		$90,	dVLowTimpani,	$60,	nRst,	$08,	$8D,	$04,	nRst
	dc.b		nRst,	nRst,	$9A,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		$9B,	nRst,	nRst,	$9C,	nRst,	nRst,	$A8,	$04
	dc.b		$A8,	$A8,	$93,	$93,	$93,	dVLowTimpani,	$04,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	$90,	nRst,	nRst,	$90,	nRst,	nRst
	dc.b		$9D,	nRst,	nRst,	nRst,	nRst,	nRst,	$90,	nRst
	dc.b		nRst,	nRst,	nRst,	$90,	$9D,	nRst,	nRst,	nRst
	dc.b		nRst,	$90,	$90,	nRst,	nRst,	$90,	nRst,	nRst
	dc.b		$9D,	nRst,	nRst,	nRst,	nRst,	nRst,	$90,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	$90,	nRst,	nRst,	$90,	nRst,	nRst
	dc.b		$9D,	nRst,	nRst,	nRst,	nRst,	nRst,	$90,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst
	dc.b		nRst,	$90,	$90,	nRst,	nRst,	$90,	nRst,	nRst
	dc.b		$9D,	nRst,	nRst,	$A8,	$A9,	$A9
DX_Loop12:
	dc.b		$90,	$04,	nRst,	nRst,	nRst,	nRst,	$90,	$9D
	dc.b		nRst,	nRst,	nRst,	nRst,	$90,	$90,	nRst,	nRst
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	$90,	nRst,	nRst,	nRst,	nRst,	$90,	$9D
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	$90,	nRst,	nRst
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	$90,	nRst
	dc.b		nRst
	smpsLoop	$00,	$07,	DX_Loop12
	dc.b		$90,	$04,	nRst,	nRst,	nRst,	nRst,	$90,	$9D
	dc.b		nRst,	nRst,	nRst,	nRst,	$90,	$90,	nRst,	nRst
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	$90,	nRst,	nRst,	nRst,	nRst,	$90,	$9D
	dc.b		nRst,	nRst,	$90,	nRst,	$90,	$8C,	$98,	$97
	dc.b		$90,	nRst,	$90,	$9D,	nRst,	nRst,	$9D,	$9D
	dc.b		$9D
DX_Loop13:
	dc.b		dVLowTimpani,	$04,	nRst,	nRst,	nRst,	nRst,	$90,	$9D
	dc.b		nRst,	nRst,	nRst,	nRst,	$90,	$90,	nRst,	nRst
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	$90,	nRst,	nRst,	nRst,	nRst,	$90,	$9D
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	$90,	nRst,	nRst
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	$90,	nRst
	dc.b		nRst
	smpsLoop	$00,	$02,	DX_Loop13
	dc.b		$90,	$04,	nRst,	nRst,	$90,	nRst,	$90,	nRst
	dc.b		nRst,	$9D,	nRst,	nRst,	$90,	$90,	$30,	$90
	dc.b		$04,	nRst,	nRst,	$90,	nRst,	$90,	nRst,	nRst
	dc.b		$90,	nRst,	nRst,	$90,	$90,	$18,	$90,	$90
	dc.b		$04,	nRst,	nRst,	$90,	nRst,	$90,	nRst,	nRst
	dc.b		$9D,	nRst,	nRst,	$90,	$90,	nRst,	nRst,	nRst
	dc.b		nRst,	$90,	$9D,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		$90,	nRst,	$9D,	nRst,	nRst,	nRst,	$9D,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	$90,	nRst,	$90,	$9D
	dc.b		nRst,	nRst,	$90,	nRst,	$90,	$9D,	nRst,	nRst
	dc.b		$90,	$04,	nRst,	nRst,	nRst,	nRst,	nRst,	$9D
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	$90,	nRst,	nRst
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	$90,	nRst,	nRst,	nRst,	nRst,	$9D,	$90
	dc.b		nRst,	nRst,	nRst,	nRst,	$90,	$90,	nRst,	nRst
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	$90,	nRst,	nRst,	nRst,	nRst,	nRst,	$9D
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	$90,	nRst,	nRst
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	$90,	nRst,	nRst,	nRst,	nRst,	nRst,	$9D
	dc.b		nRst,	nRst,	nRst,	nRst,	$90,	$90,	nRst,	nRst
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	$9D,	$9D
	dc.b		$9D,	dVLowTimpani,	$04,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		$9D,	nRst,	nRst,	nRst,	nRst,	$90,	nRst,	nRst
	dc.b		$90,	$90,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	$90,	$04,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	$9D,	nRst,	nRst,	nRst,	nRst,	$90,	nRst
	dc.b		nRst,	$90,	$90,	nRst,	nRst,	$9D,	nRst,	$8C
	dc.b		$8C,	$98,	$97,	dVLowTimpani,	$04,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	$9D,	nRst,	nRst,	nRst,	nRst,	$90
	dc.b		nRst,	nRst,	$90,	$90,	nRst,	nRst,	$9D,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst
DX_Loop14:
	dc.b		$90,	$04,	nRst,	nRst,	nRst,	nRst,	nRst,	$9D
	dc.b		nRst,	nRst,	nRst,	nRst,	$90,	nRst,	nRst,	$90
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst
	smpsLoop	$00,	$07,	DX_Loop14
	dc.b		dVLowTimpani,	$04,	nRst,	nRst,	nRst,	nRst,	nRst,	$9D
	dc.b		nRst,	nRst,	nRst,	nRst,	$90,	nRst,	nRst,	$90
	dc.b		$90,	nRst,	nRst,	$9D,	nRst,	nRst,	$90,	nRst
	dc.b		$90,	$90,	$18,	$18,	$9D,	$04,	$04,	$04
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	dc.b		$04
	smpsJump	DX_DAC

DX_Voices:
	dc.b		$3A,$3F,$73,$73,$31,$9F,$5F,$54,$17,$03,$14,$0A,$05,$01,$05,$01
	dc.b		$01,$FF,$EF,$8F,$FF,$29,$39,$23,$80;			Voice 00
	dc.b		$3C,$01,$00,$00,$00,$1F,$1F,$15,$1F,$11,$03,$12,$05,$07,$04,$09
	dc.b		$02,$55,$3A,$25,$1A,$1A,$80,$07,$80;			Voice 01
	dc.b		$3A,$73,$04,$11,$31,$9F,$DF,$9F,$9F,$05,$05,$03,$0A,$03,$02,$03
	dc.b		$02,$6F,$6F,$5F,$7F,$1C,$20,$1E,$80;			Voice 02
	dc.b		$3E,$07,$01,$02,$0A,$1F,$1F,$1F,$1F,$03,$06,$00,$00,$08,$06,$07
	dc.b		$0C,$15,$0A,$0A,$0A,$20,$85,$86,$88;			Voice 03
	dc.b		$3C,$71,$71,$11,$11,$17,$1E,$19,$1E,$04,$01,$07,$01,$00,$00,$00
	dc.b		$00,$F7,$F8,$F7,$F8,$1E,$80,$14,$80;			Voice 04
	dc.b		$16,$7A,$74,$3C,$31,$1F,$1F,$1F,$1F,$0A,$08,$0C,$0A,$07,$0A,$07
	dc.b		$05,$2F,$AF,$AF,$5F,$14,$85,$8A,$80;			Voice 05
	dc.b		$53,$6F,$6E,$67,$20,$62,$79,$20,$54,$2E,$4D,$61,$65,$64,$61,$20
	dc.b		$20,$20,$41,$72,$72,$61,$6E,$67,$65;			Voice 06
	dc.b		$20,$62,$79,$20,$54,$2E,$4D,$61,$65,$64,$61,$00,$00,$00,$00,$00
	dc.b		$00,$00,$00,$00,$00,$00,$00,$00,$00;			Voice 07
	dc.b		$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	dc.b		$FF,$FF,$FF,$FF,$E0,$C0,$EF,$03,$B1;			Voice 08
	dc.b		$60,$BD,$18,$B8,$BB,$12,$B4,$AF,$0C,$B1,$60,$E0,$C0,$EF,$03,$BD
	dc.b		$18,$B8,$BB,$12,$B4,$C0,$0C,$B1,$60;			Voice 09
	dc.b		$18,$B8,$18,$BD,$12,$C0,$C4,$0C,$30,$C2,$30,$C0,$B8,$04,$B6,$B4
	dc.b		$B6,$B4,$B3,$B4,$B3,$B1,$AF,$AC,$AF;			Voice 0A
	dc.b		$B1,$60,$80,$80,$80,$EF,$00,$B8,$48,$0C,$B1,$0C,$B4,$30,$0C,$B3
	dc.b		$0C,$B4,$BB,$BA,$30,$B8,$5E,$80,$32;			Voice 0B
	dc.b		$B1,$60,$30,$18,$B8,$0C,$B4,$BB,$30,$BD,$BA,$60,$B8,$30,$B1,$B4
	dc.b		$18,$B3,$AF,$AE,$0C,$AF,$B1,$30,$B8;			Voice 0C
	dc.b		$5E,$80,$32,$B4,$60,$0C,$B3,$0C,$B4,$B8,$BB,$18,$BA,$0C,$B6,$B8
	dc.b		$18,$B6,$30,$BB,$12,$BA,$06,$60,$60;			Voice 0D
	dc.b		$C9,$18,$C4,$C7,$14,$C6,$10,$BD,$0C,$C0,$2E,$32,$60,$EF,$05,$AD
	dc.b		$30,$B1,$A8,$60,$AB,$30,$A3,$A6,$60;			Voice 0E
	dc.b		$AD,$30,$A8,$AD,$B4,$B7,$AB,$7F,$E7,$11,$B1,$60,$A5,$B1,$30,$AC
	dc.b		$B8,$60,$B4,$30,$BB,$B8,$60,$B1,$30;			Voice 0F
	dc.b		$AC,$B8,$B6,$B4,$60,$B6,$30,$B3,$B8,$60,$30,$C0,$18,$BF,$EF,$03
	dc.b		$B1,$60,$BD,$18,$B8,$BB,$12,$B4,$AF;			Voice 10
	dc.b		$0C,$B1,$60,$F6,$FF,$3E,$F2,$00,$00,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF;			Voice 11
	dc.b		$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$E0,$C0,$EF,$01,$A5,$60
	dc.b		$48,$0C,$A7,$0C,$A8,$7F,$E7,$41,$E0;			Voice 12
	dc.b		$C0,$EF,$01,$AA,$60,$48,$0C,$AB,$0C,$AC,$60,$30,$04,$AA,$04,$A8
	dc.b		$AA,$A8,$A7,$A8,$A7,$A5,$A3,$A0,$A3;			Voice 13
	dc.b		$A5,$08,$04,$A0,$0C,$A3,$A5,$08,$04,$80,$30,$08,$A5,$04,$80,$0C
	dc.b		$A5,$80,$A3,$04,$80,$08,$A3,$80,$04;			Voice 14
	dc.b		$A3,$0C,$A0,$08,$A3,$04,$A5,$08,$04,$A0,$0C,$A3,$A5,$08,$04,$80
	dc.b		$30,$08,$A5,$04,$80,$0C,$A5,$80,$A3;			Voice 15
	dc.b		$04,$80,$08,$A3,$80,$04,$A0,$80,$A0,$10,$A5,$08,$04,$A0,$0C,$A3
	dc.b		$A5,$08,$04,$80,$30,$08,$A5,$04,$80;			Voice 16
	dc.b		$0C,$A5,$80,$A3,$04,$80,$08,$A3,$80,$04,$A3,$0C,$A0,$08,$A3,$04
	dc.b		$A5,$08,$04,$A0,$0C,$A3,$A5,$08,$04;			Voice 17
	dc.b		$80,$30,$08,$A5,$04,$80,$0C,$A5,$80,$A3,$04,$80,$08,$A3,$80,$04
	dc.b		$A3,$0C,$A0,$08,$A3,$04,$A5,$08,$04;			Voice 18
	dc.b		$A0,$0C,$A3,$A5,$08,$04,$80,$30,$08,$A5,$04,$80,$0C,$A5,$80,$A3
	dc.b		$04,$80,$08,$A3,$80,$04,$A3,$0C,$A0;			Voice 19
	dc.b		$08,$A3,$04,$A5,$08,$04,$A0,$0C,$A3,$A5,$08,$04,$80,$30,$08,$A5
	dc.b		$04,$80,$0C,$A5,$80,$A3,$04,$80,$08;			Voice 1A
	dc.b		$A3,$80,$04,$A3,$0C,$A0,$08,$A3,$04,$A5,$08,$04,$A0,$0C,$A3,$A5
	dc.b		$08,$04,$80,$30,$08,$A5,$04,$80,$0C;			Voice 1B
	dc.b		$A5,$80,$A3,$04,$80,$08,$A3,$80,$04,$A3,$0C,$A0,$08,$A3,$04,$A5
	dc.b		$08,$04,$A0,$0C,$A3,$A5,$08,$04,$80;			Voice 1C
	dc.b		$30,$08,$A5,$04,$80,$0C,$A5,$80,$A3,$04,$80,$08,$A3,$80,$04,$A3
	dc.b		$0C,$A0,$08,$A3,$04,$A5,$08,$04,$A0;			Voice 1D
	dc.b		$0C,$A3,$A5,$08,$04,$80,$30,$08,$A5,$04,$80,$0C,$A5,$80,$A3,$04
	dc.b		$80,$08,$A3,$80,$04,$A3,$0C,$A0,$08;			Voice 1E
	dc.b		$A3,$04,$A5,$08,$04,$A0,$0C,$A3,$A5,$08,$04,$80,$30,$08,$A5,$04
	dc.b		$80,$0C,$A5,$80,$A3,$04,$80,$08,$A3;			Voice 1F
	dc.b		$80,$04,$A3,$0C,$A0,$08,$A3,$04,$A5,$08,$04,$A0,$0C,$A3,$A5,$08
	dc.b		$04,$80,$30,$08,$A5,$04,$80,$0C,$A5;			Voice 20
	dc.b		$80,$A3,$04,$80,$08,$A3,$80,$04,$A3,$0C,$A0,$08,$A3,$04,$A5,$08
	dc.b		$04,$A0,$0C,$A3,$A5,$08,$04,$80,$30;			Voice 21
	dc.b		$08,$A5,$04,$80,$0C,$A5,$80,$A3,$04,$80,$08,$A3,$80,$04,$A3,$0C
	dc.b		$A0,$08,$A3,$04,$A1,$08,$A8,$04,$AD;			Voice 22
	dc.b		$08,$A8,$04,$A1,$08,$04,$80,$08,$A1,$26,$80,$0A,$A1,$04,$AD,$16
	dc.b		$80,$0E,$AD,$04,$A8,$AD,$B2,$0C,$B1;			Voice 23
	dc.b		$AD,$A8,$08,$AD,$04,$9F,$08,$A6,$04,$AB,$08,$A6,$04,$9F,$08,$04
	dc.b		$80,$08,$9F,$04,$22,$80,$0A,$9F,$04;			Voice 24
	dc.b		$AB,$80,$9F,$80,$08,$04,$9F,$0C,$9E,$08,$9F,$04,$80,$08,$9F,$04
	dc.b		$04,$A6,$04,$AB,$B0,$08,$AF,$04,$B0;			Voice 25
	dc.b		$08,$AF,$04,$A1,$08,$A8,$04,$AD,$08,$A8,$04,$A1,$08,$04,$80,$08
	dc.b		$A1,$26,$80,$0A,$A1,$04,$AD,$16,$80;			Voice 26
	dc.b		$0E,$AD,$04,$A8,$AD,$B2,$B1,$B2,$B9,$B4,$AF,$AB,$AA,$AB,$A8,$AF
	dc.b		$A8,$9F,$08,$A6,$04,$AB,$08,$A6,$04;			Voice 27
	dc.b		$9F,$08,$04,$80,$08,$9F,$04,$22,$80,$0A,$9F,$04,$AB,$80,$9F,$80
	dc.b		$08,$04,$9F,$0C,$9E,$08,$9F,$04,$80;			Voice 28
	dc.b		$08,$9F,$04,$04,$A6,$04,$AB,$B0,$08,$AF,$04,$B0,$08,$AF,$04,$99
	dc.b		$08,$04,$04,$80,$08,$99,$0C,$9B,$08;			Voice 29
	dc.b		$9C,$04,$80,$08,$99,$0C,$04,$08,$9B,$04,$9C,$0C,$99,$08,$04,$04
	dc.b		$80,$08,$99,$0C,$9B,$08,$9C,$04,$80;			Voice 2A
	dc.b		$08,$99,$0C,$04,$08,$9B,$04,$9C,$0C,$99,$08,$04,$04,$80,$08,$99
	dc.b		$0C,$9B,$08,$9C,$04,$80,$08,$99,$0C;			Voice 2B
	dc.b		$04,$08,$9B,$04,$9C,$0C,$99,$08,$04,$04,$80,$08,$99,$0C,$9B,$08
	dc.b		$9C,$04,$80,$08,$99,$0C,$04,$08,$9B;			Voice 2C
	dc.b		$04,$9C,$0C,$99,$08,$04,$04,$80,$08,$99,$0C,$9B,$08,$9C,$04,$80
	dc.b		$08,$99,$0C,$04,$08,$9B,$04,$9C,$0C;			Voice 2D
	dc.b		$99,$08,$04,$04,$80,$08,$99,$0C,$9B,$08,$9C,$04,$80,$08,$99,$0C
	dc.b		$04,$08,$9B,$04,$9C,$0C,$99,$08,$04;			Voice 2E
	dc.b		$04,$80,$08,$99,$0C,$9B,$08,$9C,$04,$80,$08,$99,$0C,$04,$08,$9B
	dc.b		$04,$9C,$0C,$99,$08,$04,$04,$80,$08;			Voice 2F
	dc.b		$99,$0C,$9B,$08,$9C,$04,$80,$08,$99,$0C,$04,$08,$9B,$04,$9C,$0C
	dc.b		$99,$08,$04,$04,$80,$08,$99,$0C,$9B;			Voice 30
	dc.b		$08,$9C,$04,$80,$08,$99,$0C,$04,$08,$9B,$04,$9C,$0C,$99,$08,$04
	dc.b		$04,$80,$08,$99,$0C,$9B,$08,$9C,$04;			Voice 31
	dc.b		$80,$08,$99,$0C,$04,$08,$9B,$04,$9C,$0C,$99,$08,$04,$04,$80,$08
	dc.b		$99,$0C,$9B,$08,$9C,$04,$80,$08,$99;			Voice 32
	dc.b		$0C,$04,$08,$9B,$04,$9C,$0C,$99,$08,$04,$04,$80,$08,$99,$0C,$9B
	dc.b		$08,$9C,$04,$A0,$0C,$80,$A0,$18,$A5;			Voice 33
	dc.b		$60,$48,$0C,$A7,$0C,$A8,$7F,$E7,$41,$F6,$FC,$BB,$F2,$00,$00,$00
	dc.b		$00,$00,$00,$00,$00,$00,$00,$00,$FF;			Voice 34
	dc.b		$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$E0
	dc.b		$40,$EF,$02,$B1,$08,$04,$AF,$08,$B1;			Voice 35
	dc.b		$04,$80,$08,$B1,$04,$AF,$08,$B1,$04,$80,$08,$B1,$04,$AC,$AF,$B1
	dc.b		$B4,$08,$04,$B3,$08,$AF,$04,$B1,$08;			Voice 36
	dc.b		$04,$AF,$08,$B1,$04,$80,$08,$B1,$04,$AF,$08,$B1,$04,$80,$08,$B1
	dc.b		$04,$AC,$AF,$B1,$B8,$08,$10,$B1,$08;			Voice 37
	dc.b		$04,$AF,$08,$B1,$04,$80,$08,$B1,$04,$AF,$08,$B1,$04,$80,$08,$B1
	dc.b		$04,$AC,$E0,$40,$EF,$02,$AF,$04,$B1;			Voice 38
	dc.b		$B4,$08,$04,$B3,$08,$AF,$04,$B1,$08,$04,$AF,$08,$B1,$04,$80,$08
	dc.b		$B1,$04,$AF,$08,$B1,$04,$80,$08,$B1;			Voice 39
	dc.b		$04,$AC,$AF,$B1,$B8,$08,$10,$B1,$08,$04,$AF,$08,$B1,$04,$80,$08
	dc.b		$B1,$04,$AF,$08,$B1,$04,$80,$08,$B1;			Voice 3A
	dc.b		$04,$AC,$AF,$B1,$B4,$08,$04,$B3,$08,$AF,$04,$B1,$08,$04,$AF,$08
	dc.b		$B1,$04,$80,$08,$B1,$04,$AF,$08,$B1;			Voice 3B
	dc.b		$04,$80,$08,$B1,$04,$AC,$AF,$B1,$B8,$08,$10,$B1,$08,$04,$AF,$08
	dc.b		$B1,$04,$80,$08,$B1,$04,$AF,$08,$B1;			Voice 3C
	dc.b		$04,$80,$08,$B1,$04,$AC,$AF,$B1,$B4,$08,$04,$B3,$08,$AF,$04,$B1
	dc.b		$08,$04,$AF,$08,$B1,$04,$80,$08,$B1;			Voice 3D
	dc.b		$04,$AF,$08,$B1,$04,$B8,$B6,$B8,$B6,$B4,$B6,$B4,$B3,$B4,$B3,$B1
	dc.b		$AF,$AC,$0C,$B8,$AC,$08,$B6,$0C,$AC;			Voice 3E
	dc.b		$04,$B4,$0C,$AC,$08,$B3,$0C,$AC,$04,$B4,$80,$08,$AC,$04,$80,$08
	dc.b		$B1,$B3,$04,$B4,$08,$B8,$04,$80,$08;			Voice 3F
	dc.b		$AC,$04,$B1,$08,$B3,$04,$B4,$08,$B8,$04,$80,$08,$BB,$10,$AC,$0C
	dc.b		$B8,$AC,$08,$B6,$0C,$AC,$04,$B4,$0C;			Voice 40
	dc.b		$AC,$08,$B3,$0C,$AC,$04,$B4,$80,$08,$B1,$AC,$04,$B8,$08,$B6,$04
	dc.b		$B4,$08,$B3,$04,$80,$08,$B4,$04,$B6;			Voice 41
	dc.b		$08,$B4,$04,$B6,$80,$08,$B8,$BB,$04,$B8,$80,$08,$AC,$0C,$B8,$AC
	dc.b		$08,$B6,$0C,$AC,$04,$B4,$0C,$AC,$08;			Voice 42
	dc.b		$B3,$0C,$AC,$04,$B4,$80,$08,$AC,$04,$80,$08,$B1,$B3,$04,$B4,$08
	dc.b		$B8,$04,$80,$08,$AC,$04,$B1,$08,$B3;			Voice 43
	dc.b		$04,$B4,$08,$B8,$04,$80,$08,$BB,$10,$AC,$0C,$B8,$AC,$08,$B6,$0C
	dc.b		$AC,$04,$B4,$0C,$AC,$08,$B3,$0C,$AC;			Voice 44
	dc.b		$04,$B4,$80,$08,$B1,$AC,$04,$B8,$08,$B6,$04,$B4,$08,$B3,$04,$80
	dc.b		$08,$B4,$04,$B6,$08,$B4,$04,$B6,$80;			Voice 45
	dc.b		$08,$B8,$BB,$04,$B8,$80,$08,$AC,$0C,$B8,$AC,$08,$B6,$0C,$AC,$04
	dc.b		$B4,$0C,$AC,$08,$B3,$0C,$AC,$04,$B4;			Voice 46
	dc.b		$80,$08,$AC,$04,$80,$08,$B1,$B3,$04,$B4,$08,$B8,$04,$80,$08,$AC
	dc.b		$04,$B1,$08,$B3,$04,$B4,$08,$B8,$04;			Voice 47
	dc.b		$80,$08,$BB,$10,$AC,$0C,$B8,$AC,$08,$B6,$0C,$AC,$04,$B4,$0C,$AC
	dc.b		$08,$B3,$0C,$AC,$04,$B4,$80,$08,$B1;			Voice 48
	dc.b		$AC,$04,$B8,$08,$B6,$04,$B4,$08,$B3,$04,$80,$08,$B4,$04,$B6,$08
	dc.b		$B4,$04,$B6,$80,$08,$B8,$BB,$04,$B8;			Voice 49
	dc.b		$80,$08,$AC,$0C,$B8,$AC,$08,$B6,$0C,$AC,$04,$B4,$0C,$AC,$08,$B3
	dc.b		$0C,$AC,$04,$B4,$80,$08,$AC,$04,$80;			Voice 4A
	dc.b		$08,$B1,$B3,$04,$B4,$08,$B8,$04,$80,$08,$AC,$04,$B1,$08,$B3,$04
	dc.b		$B4,$08,$B8,$04,$80,$08,$BB,$10,$AC;			Voice 4B
	dc.b		$0C,$B8,$AC,$08,$B6,$0C,$AC,$04,$B4,$0C,$AC,$08,$B3,$0C,$AC,$04
	dc.b		$B4,$80,$08,$B1,$AC,$04,$B8,$08,$B6;			Voice 4C
	dc.b		$04,$B4,$08,$B3,$04,$80,$08,$B4,$04,$B6,$08,$B4,$04,$B6,$80,$08
	dc.b		$B8,$BB,$04,$B8,$80,$08,$AC,$0C,$B8;			Voice 4D
	dc.b		$AC,$08,$B6,$0C,$AC,$04,$B4,$0C,$AC,$08,$B3,$0C,$AC,$04,$B4,$80
	dc.b		$08,$AC,$04,$80,$08,$B1,$B3,$04,$B4;			Voice 4E
	dc.b		$08,$B8,$04,$80,$08,$AC,$04,$B1,$08,$B3,$04,$B4,$08,$B8,$04,$80
	dc.b		$08,$BB,$10,$AC,$0C,$B8,$AC,$08,$B6;			Voice 4F
	dc.b		$0C,$AC,$04,$B4,$0C,$AC,$08,$B3,$0C,$AC,$04,$B4,$80,$08,$B1,$AC
	dc.b		$04,$B8,$08,$B6,$04,$B4,$08,$B3,$04;			Voice 50
	dc.b		$80,$08,$B4,$04,$B6,$08,$B4,$04,$B6,$80,$08,$B8,$BB,$04,$B8,$80
	dc.b		$08,$AC,$0C,$B8,$AC,$08,$B6,$0C,$AC;			Voice 51
	dc.b		$04,$B4,$0C,$AC,$08,$B3,$0C,$AC,$04,$B4,$80,$08,$AC,$04,$80,$08
	dc.b		$B1,$B3,$04,$B4,$08,$B8,$04,$80,$08;			Voice 52
	dc.b		$AC,$04,$B1,$08,$B3,$04,$B4,$08,$B8,$04,$80,$08,$BB,$10,$AC,$0C
	dc.b		$B8,$AC,$08,$B6,$0C,$AC,$04,$B4,$0C;			Voice 53
	dc.b		$AC,$08,$B3,$0C,$AC,$04,$B4,$80,$08,$B1,$AC,$04,$B8,$08,$B6,$04
	dc.b		$B4,$08,$B3,$04,$80,$08,$B4,$04,$B6;			Voice 54
	dc.b		$08,$B4,$04,$B6,$80,$08,$B8,$BB,$04,$B8,$80,$08,$60,$18,$EF,$05
	dc.b		$BD,$04,$B9,$B4,$B9,$B4,$B1,$B4,$B1;			Voice 55
	dc.b		$AD,$B1,$AD,$A8,$A1,$18,$80,$60,$B7,$04,$B2,$AF,$AB,$AF,$B2,$B7
	dc.b		$AF,$AB,$A6,$AB,$AF,$AB,$A6,$A3,$9F;			Voice 56
	dc.b		$24,$80,$60,$18,$BD,$04,$B9,$B4,$B9,$B4,$B1,$B4,$B1,$AD,$B1,$AD
	dc.b		$A8,$A1,$18,$80,$60,$B7,$04,$B2,$AF;			Voice 57
	dc.b		$AB,$AF,$B2,$B7,$AF,$AB,$A6,$AB,$AF,$AB,$A6,$A3,$9F,$24,$A5,$7F
	dc.b		$E7,$41,$B1,$48,$08,$04,$80,$08,$B1;			Voice 58
	dc.b		$04,$80,$08,$AF,$04,$22,$E0,$C0,$1A,$E0,$40,$08,$04,$80,$08,$AF
	dc.b		$04,$80,$08,$AD,$04,$22,$E0,$C0,$1A;			Voice 59
	dc.b		$E0,$40,$08,$04,$80,$08,$AD,$04,$80,$08,$AC,$04,$24,$0C,$AA,$0C
	dc.b		$A8,$A7,$B1,$48,$08,$04,$08,$04,$80;			Voice 5A
	dc.b		$08,$B3,$04,$22,$E0,$C0,$1A,$E0,$40,$08,$04,$80,$08,$B3,$04,$80
	dc.b		$08,$B4,$04,$2E,$E0,$C0,$0E,$E0,$40;			Voice 5B
	dc.b		$08,$04,$80,$08,$B4,$04,$80,$08,$B6,$04,$24,$BB,$30,$B8,$60,$B1
	dc.b		$18,$18,$B4,$18,$B3,$EF,$02,$B1,$08;			Voice 5C
	dc.b		$04,$AF,$08,$B1,$04,$80,$08,$B1,$04,$AF,$08,$B1,$04,$80,$08,$B1
	dc.b		$04,$AC,$AF,$B1,$B4,$08,$04,$B3,$08;			Voice 5D
	dc.b		$AF,$04,$B1,$08,$04,$AF,$08,$B1,$04,$80,$08,$B1,$04,$AF,$08,$B1
	dc.b		$04,$80,$08,$B1,$04,$AC,$AF,$B1,$B8;			Voice 5E
	dc.b		$08,$10,$B1,$08,$04,$AF,$08,$B1,$04,$80,$08,$B1,$04,$AF,$08,$B1
	dc.b		$04,$80,$08,$B1,$04,$AC,$F6,$FC,$2B;			Voice 5F
	dc.b		$F2,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF
	dc.b		$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;			Voice 60
	dc.b		$FF,$FF,$FF,$E0,$80,$EF,$02,$AC,$08,$04,$AA,$08,$AC,$04,$80,$08
	dc.b		$AC,$04,$AA,$08,$AC,$04,$80,$08,$AC;			Voice 61
	dc.b		$04,$A8,$AA,$AC,$AF,$08,$04,$AC,$08,$04,$08,$04,$AA,$08,$AC,$04
	dc.b		$80,$08,$AC,$04,$AA,$08,$AC,$04,$80;			Voice 62
	dc.b		$08,$AC,$04,$A8,$AA,$AC,$AF,$08,$B3,$10,$AC,$08,$04,$AA,$08,$AC
	dc.b		$04,$80,$08,$AC,$04,$AA,$08,$AC,$04;			Voice 63
	dc.b		$80,$08,$AC,$04,$A8,$E0,$80,$EF,$02,$AA,$04,$AC,$AF,$08,$04,$AC
	dc.b		$08,$04,$08,$04,$AA,$08,$AC,$04,$80;			Voice 64
	dc.b		$08,$AC,$04,$AA,$08,$AC,$04,$80,$08,$AC,$04,$A8,$AA,$AC,$AF,$08
	dc.b		$B3,$10,$AC,$08,$04,$AA,$08,$AC,$04;			Voice 65
	dc.b		$80,$08,$AC,$04,$AA,$08,$AC,$04,$80,$08,$AC,$04,$A8,$AA,$AC,$AF
	dc.b		$08,$04,$AC,$08,$04,$08,$04,$AA,$08;			Voice 66
	dc.b		$AC,$04,$80,$08,$AC,$04,$AA,$08,$AC,$04,$80,$08,$AC,$04,$A8,$AA
	dc.b		$AC,$AF,$08,$B3,$10,$AC,$08,$04,$AA;			Voice 67
	dc.b		$08,$AC,$04,$80,$08,$AC,$04,$AA,$08,$AC,$04,$80,$08,$AC,$04,$A8
	dc.b		$AA,$AC,$AF,$08,$04,$AC,$08,$04,$08;			Voice 68
	dc.b		$04,$AA,$08,$AC,$04,$80,$08,$AC,$04,$AA,$08,$AC,$04,$B4,$B3,$B4
	dc.b		$B3,$B1,$B3,$B1,$AF,$B1,$AF,$AC,$AA;			Voice 69
	dc.b		$A0,$0C,$AC,$A0,$08,$AA,$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C,$A0
	dc.b		$04,$A8,$80,$08,$A0,$04,$80,$08,$A5;			Voice 6A
	dc.b		$A7,$04,$A8,$08,$AC,$04,$80,$08,$A0,$04,$A5,$08,$A7,$04,$A8,$08
	dc.b		$AC,$04,$80,$08,$AF,$10,$A0,$0C,$AC;			Voice 6B
	dc.b		$A0,$08,$AA,$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C,$A0,$04,$A8,$80
	dc.b		$08,$A5,$A0,$04,$AC,$08,$AA,$04,$A8;			Voice 6C
	dc.b		$08,$A7,$04,$80,$08,$A8,$04,$AA,$08,$A8,$04,$AA,$80,$08,$AC,$AF
	dc.b		$04,$AC,$80,$08,$A0,$0C,$AC,$A0,$08;			Voice 6D
	dc.b		$AA,$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C,$A0,$04,$A8,$80,$08,$A0
	dc.b		$04,$80,$08,$A5,$A7,$04,$A8,$08,$AC;			Voice 6E
	dc.b		$04,$80,$08,$A0,$04,$A5,$08,$A7,$04,$A8,$08,$AC,$04,$80,$08,$AF
	dc.b		$10,$A0,$0C,$AC,$A0,$08,$AA,$0C,$A0;			Voice 6F
	dc.b		$04,$A8,$0C,$A0,$08,$A7,$0C,$A0,$04,$A8,$80,$08,$A5,$A0,$04,$AC
	dc.b		$08,$AA,$04,$A8,$08,$A7,$04,$80,$08;			Voice 70
	dc.b		$A8,$04,$AA,$08,$A8,$04,$AA,$80,$08,$AC,$AF,$04,$AC,$80,$08,$A0
	dc.b		$0C,$AC,$A0,$08,$AA,$0C,$A0,$04,$A8;			Voice 71
	dc.b		$0C,$A0,$08,$A7,$0C,$A0,$04,$A8,$80,$08,$A0,$04,$80,$08,$A5,$A7
	dc.b		$04,$A8,$08,$AC,$04,$80,$08,$A0,$04;			Voice 72
	dc.b		$A5,$08,$A7,$04,$A8,$08,$AC,$04,$80,$08,$AF,$10,$A0,$0C,$AC,$A0
	dc.b		$08,$AA,$0C,$A0,$04,$A8,$0C,$A0,$08;			Voice 73
	dc.b		$A7,$0C,$A0,$04,$A8,$80,$08,$A5,$A0,$04,$AC,$08,$AA,$04,$A8,$08
	dc.b		$A7,$04,$80,$08,$A8,$04,$AA,$08,$A8;			Voice 74
	dc.b		$04,$AA,$80,$08,$AC,$AF,$04,$AC,$80,$08,$A0,$0C,$AC,$A0,$08,$AA
	dc.b		$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C;			Voice 75
	dc.b		$A0,$04,$A8,$80,$08,$A0,$04,$80,$08,$A5,$A7,$04,$A8,$08,$AC,$04
	dc.b		$80,$08,$A0,$04,$A5,$08,$A7,$04,$A8;			Voice 76
	dc.b		$08,$AC,$04,$80,$08,$AF,$10,$A0,$0C,$AC,$A0,$08,$AA,$0C,$A0,$04
	dc.b		$A8,$0C,$A0,$08,$A7,$0C,$A0,$04,$A8;			Voice 77
	dc.b		$80,$08,$A5,$A0,$04,$AC,$08,$AA,$04,$A8,$08,$A7,$04,$80,$08,$A8
	dc.b		$04,$AA,$08,$A8,$04,$AA,$80,$08,$AC;			Voice 78
	dc.b		$AF,$04,$AC,$80,$08,$A0,$0C,$AC,$A0,$08,$AA,$0C,$A0,$04,$A8,$0C
	dc.b		$A0,$08,$A7,$0C,$A0,$04,$A8,$80,$08;			Voice 79
	dc.b		$A0,$04,$80,$08,$A5,$A7,$04,$A8,$08,$AC,$04,$80,$08,$A0,$04,$A5
	dc.b		$08,$A7,$04,$A8,$08,$AC,$04,$80,$08;			Voice 7A
	dc.b		$AF,$10,$A0,$0C,$AC,$A0,$08,$AA,$0C,$A0,$04,$A8,$0C,$A0,$08,$A7
	dc.b		$0C,$A0,$04,$A8,$80,$08,$A5,$A0,$04;			Voice 7B
	dc.b		$AC,$08,$AA,$04,$A8,$08,$A7,$04,$80,$08,$A8,$04,$AA,$08,$A8,$04
	dc.b		$AA,$80,$08,$AC,$AF,$04,$AC,$80,$08;			Voice 7C
	dc.b		$A0,$0C,$AC,$A0,$08,$AA,$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C,$A0
	dc.b		$04,$A8,$80,$08,$A0,$04,$80,$08,$A5;			Voice 7D
	dc.b		$A7,$04,$A8,$08,$AC,$04,$80,$08,$A0,$04,$A5,$08,$A7,$04,$A8,$08
	dc.b		$AC,$04,$80,$08,$AF,$10,$A0,$0C,$AC;			Voice 7E
	dc.b		$A0,$08,$AA,$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C,$A0,$04,$A8,$80
	dc.b		$08,$A5,$A0,$04,$AC,$08,$AA,$04,$A8;			Voice 7F
	dc.b		$08,$A7,$04,$80,$08,$A8,$04,$AA,$08,$A8,$04,$AA,$80,$08,$AC,$AF
	dc.b		$04,$AC,$08,$80,$04,$60,$18,$0C,$EF;			Voice 80
	dc.b		$05,$BD,$04,$B9,$B4,$B9,$B4,$B1,$B4,$B1,$AD,$B1,$AD,$A8,$A1,$0C
	dc.b		$80,$60,$0C,$B7,$04,$B2,$AF,$AB,$AF;			Voice 81
	dc.b		$B2,$B7,$AF,$AB,$A6,$AB,$AF,$AB,$A6,$20,$E0,$C0,$A3,$08,$80,$58
	dc.b		$18,$0C,$E0,$80,$BD,$04,$B9,$B4,$B9;			Voice 82
	dc.b		$B4,$B1,$B4,$B1,$AD,$B1,$AD,$A8,$A1,$0C,$80,$60,$0C,$B7,$04,$B2
	dc.b		$AF,$AB,$AF,$B2,$B7,$AF,$AB,$A6,$AB;			Voice 83
	dc.b		$AF,$AB,$A6,$20,$A0,$7F,$E7,$41,$AC,$48,$08,$04,$80,$08,$AC,$04
	dc.b		$80,$08,$AC,$04,$22,$E0,$C0,$1A,$E0;			Voice 84
	dc.b		$80,$08,$04,$80,$08,$AC,$04,$80,$08,$A8,$04,$22,$E0,$C0,$1A,$E0
	dc.b		$80,$08,$04,$80,$08,$A8,$04,$80,$08;			Voice 85
	dc.b		$A7,$04,$24,$18,$A0,$18,$AC,$48,$08,$04,$08,$04,$80,$08,$AC,$04
	dc.b		$22,$E0,$C0,$1A,$E0,$80,$08,$04,$80;			Voice 86
	dc.b		$08,$AC,$04,$80,$08,$AC,$04,$2E,$E0,$C0,$0E,$E0,$80,$08,$04,$80
	dc.b		$08,$AC,$04,$80,$08,$AF,$04,$24,$B3;			Voice 87
	dc.b		$30,$B1,$60,$AC,$18,$18,$18,$18,$EF,$02,$08,$04,$AA,$08,$AC,$04
	dc.b		$80,$08,$AC,$04,$AA,$08,$AC,$04,$80;			Voice 88
	dc.b		$08,$AC,$04,$A8,$AA,$AC,$AF,$08,$04,$AC,$08,$04,$08,$04,$AA,$08
	dc.b		$AC,$04,$80,$08,$AC,$04,$AA,$08,$AC;			Voice 89
	dc.b		$04,$80,$08,$AC,$04,$A8,$AA,$AC,$AF,$08,$B3,$10,$AC,$08,$04,$AA
	dc.b		$08,$AC,$04,$80,$08,$AC,$04,$AA,$08;			Voice 8A
	dc.b		$AC,$04,$80,$08,$AC,$04,$A8,$F6,$FC,$2D,$F2,$FC,$2B,$F2,$00,$00
	dc.b		$00,$00,$00,$00,$00,$00,$00,$00,$00;			Voice 8B
	dc.b		$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	dc.b		$80,$10,$E0,$C0,$EF,$03,$B1,$60,$BD;			Voice 8C
	dc.b		$18,$B8,$BB,$12,$B4,$AF,$0C,$B1,$60,$E0,$C0,$EF,$03,$BD,$18,$B8
	dc.b		$BB,$12,$B4,$C0,$0C,$B1,$60,$18,$B8;			Voice 8D
	dc.b		$18,$BD,$12,$C0,$C4,$0C,$30,$C2,$30,$C0,$B8,$04,$B6,$B4,$B6,$B4
	dc.b		$B3,$B4,$B3,$B1,$AF,$AC,$AF,$B1,$60;			Voice 8E
	dc.b		$80,$80,$80,$EF,$00,$B8,$48,$0C,$B1,$0C,$B4,$30,$0C,$B3,$0C,$B4
	dc.b		$BB,$BA,$30,$B8,$5E,$80,$32,$60,$B1;			Voice 8F
	dc.b		$30,$18,$B8,$0C,$B4,$BB,$30,$BD,$BA,$60,$B8,$30,$B1,$B4,$18,$B3
	dc.b		$AF,$AE,$0C,$AF,$B1,$30,$B8,$5E,$80;			Voice 90
	dc.b		$32,$B4,$60,$0C,$B3,$0C,$B4,$B8,$BB,$18,$BA,$0C,$B6,$B8,$18,$B6
	dc.b		$30,$BB,$12,$BA,$06,$60,$60,$C9,$18;			Voice 91
	dc.b		$C4,$C7,$14,$C6,$10,$BD,$0C,$C0,$2E,$80,$32,$60,$EF,$05,$AD,$30
	dc.b		$B1,$A8,$60,$AB,$30,$A3,$A6,$60,$AD;			Voice 92
	dc.b		$30,$A8,$AD,$B4,$B7,$AB,$7F,$E7,$11,$B1,$60,$A5,$B1,$30,$AC,$B8
	dc.b		$60,$B4,$30,$BB,$B8,$60,$B1,$30,$AC;			Voice 93
	dc.b		$B8,$B6,$B4,$60,$B6,$30,$B3,$B8,$60,$30,$C0,$18,$BF,$EF,$03,$B1
	dc.b		$60,$BD,$18,$B8,$BB,$12,$B4,$AF,$0C;			Voice 94
	dc.b		$B1,$60,$F6,$FF,$3D,$F2,$B3,$B1,$AF,$B1,$AF,$AC,$AA,$A0,$0C,$AC
	dc.b		$A0,$08,$AA,$0C,$A0,$04,$A8,$0C,$A0;			Voice 95
	dc.b		$08,$A7,$0C,$A0,$04,$A8,$80,$08,$A0,$04,$80,$08,$A5,$A7,$04,$A8
	dc.b		$08,$AC,$04,$80,$08,$A0,$04,$A5,$08;			Voice 96
	dc.b		$A7,$04,$A8,$08,$AC,$04,$80,$08,$AF,$10,$A0,$0C,$AC,$A0,$08,$AA
	dc.b		$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C;			Voice 97
	dc.b		$A0,$04,$A8,$80,$08,$A5,$A0,$04,$AC,$08,$AA,$04,$A8,$08,$A7,$04
	dc.b		$80,$08,$A8,$04,$AA,$08,$A8,$04,$AA;			Voice 98
	dc.b		$80,$08,$AC,$AF,$04,$AC,$80,$08,$A0,$0C,$AC,$A0,$08,$AA,$0C,$A0
	dc.b		$04,$A8,$0C,$A0,$08,$A7,$0C,$A0,$04;			Voice 99
	dc.b		$A8,$80,$08,$A0,$04,$80,$08,$A5,$A7,$04,$A8,$08,$AC,$04,$80,$08
	dc.b		$A0,$04,$A5,$08,$A7,$04,$A8,$08,$AC;			Voice 9A
	dc.b		$04,$80,$08,$AF,$10,$A0,$0C,$AC,$A0,$08,$AA,$0C,$A0,$04,$A8,$0C
	dc.b		$A0,$08,$A7,$0C,$A0,$04,$A8,$80,$08;			Voice 9B
	dc.b		$A5,$A0,$04,$AC,$08,$AA,$04,$A8,$08,$A7,$04,$80,$08,$A8,$04,$AA
	dc.b		$08,$A8,$04,$AA,$80,$08,$AC,$AF,$04;			Voice 9C
	dc.b		$AC,$80,$08,$A0,$0C,$AC,$A0,$08,$AA,$0C,$A0,$04,$A8,$0C,$A0,$08
	dc.b		$A7,$0C,$A0,$04,$A8,$80,$08,$A0,$04;			Voice 9D
	dc.b		$80,$08,$A5,$A7,$04,$A8,$08,$AC,$04,$80,$08,$A0,$04,$A5,$08,$A7
	dc.b		$04,$A8,$08,$AC,$04,$80,$08,$AF,$10;			Voice 9E
	dc.b		$A0,$0C,$AC,$A0,$08,$AA,$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C,$A0
	dc.b		$04,$A8,$80,$08,$A5,$A0,$04,$AC,$08;			Voice 9F
	dc.b		$AA,$04,$A8,$08,$A7,$04,$80,$08,$A8,$04,$AA,$08,$A8,$04,$AA,$80
	dc.b		$08,$AC,$AF,$04,$AC,$80,$08,$A0,$0C;			Voice A0
	dc.b		$AC,$A0,$08,$AA,$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C,$A0,$04,$A8
	dc.b		$80,$08,$A0,$04,$80,$08,$A5,$A7,$04;			Voice A1
	dc.b		$A8,$08,$AC,$04,$80,$08,$A0,$04,$A5,$08,$A7,$04,$A8,$08,$AC,$04
	dc.b		$80,$08,$AF,$10,$A0,$0C,$AC,$A0,$08;			Voice A2
	dc.b		$AA,$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C,$A0,$04,$A8,$80,$08,$A5
	dc.b		$A0,$04,$AC,$08,$AA,$04,$A8,$08,$A7;			Voice A3
	dc.b		$04,$80,$08,$A8,$04,$AA,$08,$A8,$04,$AA,$80,$08,$AC,$AF,$04,$AC
	dc.b		$80,$08,$A0,$0C,$AC,$A0,$08,$AA,$0C;			Voice A4
	dc.b		$A0,$04,$A8,$0C,$A0,$08,$A7,$0C,$A0,$04,$A8,$80,$08,$A0,$04,$80
	dc.b		$08,$A5,$A7,$04,$A8,$08,$AC,$04,$80;			Voice A5
	dc.b		$08,$A0,$04,$A5,$08,$A7,$04,$A8,$08,$AC,$04,$80,$08,$AF,$10,$A0
	dc.b		$0C,$AC,$A0,$08,$AA,$0C,$A0,$04,$A8;			Voice A6
	dc.b		$0C,$A0,$08,$A7,$0C,$A0,$04,$A8,$80,$08,$A5,$A0,$04,$AC,$08,$AA
	dc.b		$04,$A8,$08,$A7,$04,$80,$08,$A8,$04;			Voice A7
	dc.b		$AA,$08,$A8,$04,$AA,$80,$08,$AC,$AF,$04,$AC,$80,$08,$A0,$0C,$AC
	dc.b		$A0,$08,$AA,$0C,$A0,$04,$A8,$0C,$A0;			Voice A8
	dc.b		$08,$A7,$0C,$A0,$04,$A8,$80,$08,$A0,$04,$80,$08,$A5,$A7,$04,$A8
	dc.b		$08,$AC,$04,$80,$08,$A0,$04,$A5,$08;			Voice A9
	dc.b		$A7,$04,$A8,$08,$AC,$04,$80,$08,$AF,$10,$A0,$0C,$AC,$A0,$08,$AA
	dc.b		$0C,$A0,$04,$A8,$0C,$A0,$08,$A7,$0C;			Voice AA
	dc.b		$A0,$04,$A8,$80,$08,$A5,$A0,$04,$AC,$08,$AA,$04,$A8,$08,$A7,$04
	dc.b		$80,$08,$A8,$04,$AA,$08,$A8,$04,$AA;			Voice AB
	dc.b		$80,$08,$AC,$AF,$04,$AC,$08,$80,$04,$60,$18,$0C,$EF,$05,$BD,$04
	dc.b		$B9,$B4,$B9,$B4,$B1,$B4,$B1,$AD,$B1;			Voice AC
	dc.b		$AD,$A8,$A1,$0C,$80,$60,$0C,$B7,$04,$B2,$AF,$AB,$AF,$B2,$B7,$AF
	dc.b		$AB,$A6,$AB,$AF,$AB,$A6,$20,$E0,$C0;			Voice AD
	dc.b		$A3,$08,$80,$58,$18,$0C,$E0,$80,$BD,$04,$B9,$B4,$B9,$B4,$B1,$B4
	dc.b		$B1,$AD,$B1,$AD,$A8,$A1,$0C,$80,$60;			Voice AE
	dc.b		$0C,$B7,$04,$B2,$AF,$AB,$AF,$B2,$B7,$AF,$AB,$A6,$AB,$AF,$AB,$A6
	dc.b		$20,$A0,$7F,$E7,$41,$AC,$48,$08,$04;			Voice AF
	dc.b		$80,$08,$AC,$04,$80,$08,$AC,$04,$22,$E0,$C0,$1A,$E0,$80,$08,$04
	dc.b		$80,$08,$AC,$04,$80,$08,$A8,$04,$22;			Voice B0
	dc.b		$E0,$C0,$1A,$E0,$80,$08,$04,$80,$08,$A8,$04,$80,$08,$A7,$04,$24
	dc.b		$18,$A0,$18,$AC,$48,$08,$04,$08,$04;			Voice B1
	dc.b		$80,$08,$AC,$04,$22,$E0,$C0,$1A,$E0,$80,$08,$04,$80,$08,$AC,$04
	dc.b		$80,$08,$AC,$04,$2E,$E0,$C0,$0E,$E0;			Voice B2
	dc.b		$80,$08,$04,$80,$08,$AC,$04,$80,$08,$AF,$04,$24,$B3,$30,$B1,$60
	dc.b		$AC,$18,$18,$18,$18,$EF,$02,$08,$04;			Voice B3
	dc.b		$AA,$08,$AC,$04,$80,$08,$AC,$04,$AA,$08,$AC,$04,$80,$08,$AC,$04
	dc.b		$A8,$AA,$AC,$AF,$08,$04,$AC,$08,$04;			Voice B4
	dc.b		$08,$04,$AA,$08,$AC,$04,$80,$08,$AC,$04,$AA,$08,$AC,$04,$80,$08
	dc.b		$AC,$04,$A8,$AA,$AC,$AF,$08,$B3,$10;			Voice B5
	dc.b		$AC,$08,$04,$AA,$08,$AC,$04,$80,$08,$AC,$04,$AA,$08,$AC,$04,$80
	dc.b		$08,$AC,$04,$A8,$F6,$FC,$2D,$F2,$FC;			Voice B6
	dc.b		$2B,$F2,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF
	dc.b		$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;			Voice B7
	dc.b		$FF,$FF,$FF,$FF,$F5,$00,$BD,$08,$04,$BB,$08,$BD,$04,$80,$08,$BD
	dc.b		$04,$BB,$08,$BD,$04,$80,$08,$BD,$04;			Voice B8
	dc.b		$B8,$BB,$BD,$C0,$08,$04,$BF,$08,$BB,$04,$BD,$08,$04,$BB,$08,$BD
	dc.b		$04,$80,$08,$BD,$04,$BB,$08,$BD,$04;			Voice B9
	dc.b		$80,$08,$BD,$04,$B8,$BB,$BD,$C4,$08,$10,$BD,$08,$04,$BB,$08,$BD
	dc.b		$04,$80,$08,$BD,$04,$BB,$08,$BD,$04;			Voice BA
	dc.b		$80,$08,$BD,$04,$B8,$F5,$07,$BB,$04,$BD,$C0,$08,$04,$BF,$08,$BB
	dc.b		$04,$BD,$08,$04,$BB,$08,$BD,$04,$80;			Voice BB
	dc.b		$08,$BD,$04,$BB,$08,$BD,$04,$80,$08,$BD,$04,$B8,$BB,$BD,$C4,$08
	dc.b		$10,$BD,$08,$04,$BB,$08,$BD,$04,$80;			Voice BC
	dc.b		$08,$BD,$04,$BB,$08,$BD,$04,$80,$08,$BD,$04,$B8,$BB,$BD,$C0,$08
	dc.b		$04,$BF,$08,$BB,$04,$BD,$08,$04,$BB;			Voice BD
	dc.b		$08,$BD,$04,$80,$08,$BD,$04,$BB,$08,$BD,$04,$80,$08,$BD,$04,$B8
	dc.b		$BB,$BD,$C4,$08,$10,$BD,$08,$04,$BB;			Voice BE
	dc.b		$08,$BD,$04,$80,$08,$BD,$04,$BB,$08,$BD,$04,$80,$08,$BD,$04,$B8
	dc.b		$BB,$BD,$C0,$08,$04,$BF,$08,$BB,$04;			Voice BF
	dc.b		$BD,$08,$04,$BB,$08,$BD,$04,$80,$08,$BD,$04,$BB,$08,$BD,$04,$C4
	dc.b		$C2,$C4,$C2,$C0,$C2,$C0,$BF,$C0,$BF;			Voice C0
	dc.b		$BD,$BB,$C4,$76,$80,$4A,$C4,$76,$80,$4A,$C4,$76,$80,$4A,$C7,$76
	dc.b		$80,$4A,$C4,$76,$80,$4A,$C7,$76,$80;			Voice C1
	dc.b		$4A,$C6,$76,$80,$4A,$C4,$76,$80,$4A,$C4,$76,$80,$4A,$C7,$76,$80
	dc.b		$4A,$C4,$08,$04,$04,$80,$08,$C4,$C2;			Voice C2
	dc.b		$04,$80,$08,$C4,$04,$80,$08,$C4,$04,$C2,$80,$08,$C4,$C7,$04,$80
	dc.b		$08,$C4,$04,$80,$08,$C4,$04,$C2,$80;			Voice C3
	dc.b		$08,$C4,$C7,$04,$80,$08,$C2,$06,$80,$2E,$C4,$08,$04,$04,$80,$08
	dc.b		$C4,$C2,$04,$80,$08,$C4,$04,$80,$08;			Voice C4
	dc.b		$C4,$04,$C2,$80,$08,$C4,$C7,$04,$80,$08,$C4,$04,$80,$08,$C4,$04
	dc.b		$C2,$80,$08,$C4,$C7,$04,$80,$08,$C2;			Voice C5
	dc.b		$06,$80,$2E,$C5,$08,$04,$80,$08,$C5,$04,$80,$08,$C5,$04,$80,$08
	dc.b		$C5,$04,$80,$30,$60,$C3,$08,$04,$80;			Voice C6
	dc.b		$08,$C3,$04,$80,$08,$C3,$04,$80,$08,$C3,$04,$80,$30,$60,$C5,$08
	dc.b		$04,$80,$08,$C5,$04,$80,$08,$C5,$04;			Voice C7
	dc.b		$80,$08,$C5,$04,$80,$30,$60,$C3,$08,$04,$80,$08,$C3,$04,$80,$08
	dc.b		$C3,$04,$80,$08,$C3,$04,$80,$30,$60;			Voice C8
	dc.b		$60,$30,$C4,$04,$BD,$C4,$C9,$C4,$C9,$C4,$BD,$C4,$BD,$0C,$80,$30
	dc.b		$C4,$04,$BD,$C4,$C9,$C4,$C9,$C4,$BD;			Voice C9
	dc.b		$C4,$BD,$0C,$80,$60,$60,$60,$30,$C4,$04,$BD,$C4,$C9,$C4,$C9,$C4
	dc.b		$BD,$C4,$BD,$0C,$80,$30,$C4,$04,$BD;			Voice CA
	dc.b		$C4,$C9,$C4,$C9,$C4,$BD,$C4,$BD,$0C,$80,$60,$C2,$18,$BF,$BB,$B8
	dc.b		$B1,$30,$B8,$B1,$18,$B8,$C0,$C7,$BD;			Voice CB
	dc.b		$08,$04,$BB,$08,$BD,$04,$80,$08,$BD,$04,$BB,$08,$BD,$04,$80,$08
	dc.b		$BD,$04,$B8,$BB,$BD,$C0,$08,$04,$BF;			Voice CC
	dc.b		$08,$BB,$04,$BD,$08,$04,$BB,$08,$BD,$04,$80,$08,$BD,$04,$BB,$08
	dc.b		$BD,$04,$80,$08,$BD,$04,$B8,$BB,$BD;			Voice CD
	dc.b		$C4,$08,$10,$BD,$08,$04,$BB,$08,$BD,$04,$80,$08,$BD,$04,$BB,$08
	dc.b		$BD,$04,$80,$08,$BD,$04,$B8,$F6,$FE;			Voice CE
	dc.b		$11,$F2,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	dc.b		$FF,$FF,$FF,$FF,$FF,$F5,$00,$B8,$08;			Voice CF
	dc.b		$04,$B6,$08,$B8,$04,$80,$08,$B8,$04,$B6,$08,$B8,$04,$80,$08,$B8
	dc.b		$04,$B4,$B6,$B8,$BB,$08,$04,$B8,$08;			Voice D0
	dc.b		$04,$08,$04,$B6,$08,$B8,$04,$80,$08,$B8,$04,$B6,$08,$B8,$04,$80
	dc.b		$08,$B8,$04,$B4,$B6,$B8,$BB,$08,$BF;			Voice D1
	dc.b		$10,$B8,$08,$04,$B6,$08,$B8,$04,$80,$08,$B8,$04,$B6,$08,$B8,$04
	dc.b		$80,$08,$B8,$04,$B4,$F5,$07,$B6,$04;			Voice D2
	dc.b		$B8,$BB,$08,$04,$B8,$08,$04,$08,$04,$B6,$08,$B8,$04,$80,$08,$B8
	dc.b		$04,$B6,$08,$B8,$04,$80,$08,$B8,$04;			Voice D3
	dc.b		$B4,$B6,$B8,$BB,$08,$BF,$10,$B8,$08,$04,$B6,$08,$B8,$04,$80,$08
	dc.b		$B8,$04,$B6,$08,$B8,$04,$80,$08,$B8;			Voice D4
	dc.b		$04,$B4,$B6,$B8,$BB,$08,$04,$B8,$08,$04,$08,$04,$B6,$08,$B8,$04
	dc.b		$80,$08,$B8,$04,$B6,$08,$B8,$04,$80;			Voice D5
	dc.b		$08,$B8,$04,$B4,$B6,$B8,$BB,$08,$BF,$10,$B8,$08,$04,$B6,$08,$B8
	dc.b		$04,$80,$08,$B8,$04,$B6,$08,$B8,$04;			Voice D6
	dc.b		$80,$08,$B8,$04,$B4,$B6,$B8,$BB,$08,$04,$B8,$08,$04,$08,$04,$B6
	dc.b		$08,$B8,$04,$80,$08,$B8,$04,$B6,$08;			Voice D7
	dc.b		$B8,$04,$C0,$BF,$C0,$BF,$BD,$BF,$BD,$BB,$BD,$BB,$B8,$B6,$BD,$76
	dc.b		$80,$4A,$BD,$76,$80,$4A,$BD,$76,$80;			Voice D8
	dc.b		$4A,$C0,$76,$80,$4A,$BD,$76,$80,$4A,$C0,$76,$80,$4A,$C2,$76,$80
	dc.b		$4A,$C0,$76,$80,$4A,$BD,$76,$80,$4A;			Voice D9
	dc.b		$C0,$76,$80,$4A,$C0,$08,$04,$04,$80,$08,$C0,$BF,$04,$80,$08,$C0
	dc.b		$04,$80,$08,$C0,$04,$BF,$80,$08,$C0;			Voice DA
	dc.b		$C4,$04,$80,$08,$C0,$04,$80,$08,$C0,$04,$BF,$80,$08,$C0,$C4,$04
	dc.b		$80,$08,$BF,$06,$80,$2E,$C0,$08,$04;			Voice DB
	dc.b		$04,$80,$08,$C0,$BF,$04,$80,$08,$C0,$04,$80,$08,$C0,$04,$BF,$80
	dc.b		$08,$C0,$C4,$04,$80,$08,$C0,$04,$80;			Voice DC
	dc.b		$08,$C0,$04,$BF,$80,$08,$C0,$C4,$04,$80,$08,$BF,$06,$80,$2E,$BE
	dc.b		$08,$04,$80,$08,$BE,$04,$80,$08,$BE;			Voice DD
	dc.b		$04,$80,$08,$BE,$04,$BD,$30,$60,$BC,$08,$04,$80,$08,$BC,$04,$80
	dc.b		$08,$BC,$04,$80,$08,$BC,$04,$BB,$30;			Voice DE
	dc.b		$60,$BE,$08,$04,$80,$08,$BE,$04,$80,$08,$BE,$04,$80,$08,$BE,$04
	dc.b		$BD,$30,$60,$BC,$08,$04,$80,$08,$BC;			Voice DF
	dc.b		$04,$80,$08,$BC,$04,$80,$08,$BC,$04,$BB,$30,$60,$80,$0D,$60,$30
	dc.b		$C4,$04,$BD,$C4,$C9,$C4,$C9,$C4,$BD;			Voice E0
	dc.b		$C4,$BD,$0C,$80,$30,$C4,$04,$BD,$C4,$C9,$C4,$C9,$C4,$BD,$C4,$BD
	dc.b		$0C,$80,$60,$60,$60,$30,$C4,$04,$BD;			Voice E1
	dc.b		$C4,$C9,$C4,$C9,$C4,$BD,$C4,$BD,$0C,$80,$30,$C4,$04,$BD,$C4,$C9
	dc.b		$C4,$C9,$C4,$BD,$C4,$BD,$0C,$80,$60;			Voice E2
	dc.b		$C2,$18,$BF,$BB,$B8,$B1,$30,$B8,$B1,$18,$B8,$C0,$C7,$0B,$B8,$08
	dc.b		$04,$B6,$08,$B8,$04,$80,$08,$B8,$04;			Voice E3
	dc.b		$B6,$08,$B8,$04,$80,$08,$B8,$04,$B4,$B6,$B8,$BB,$08,$04,$B8,$08
	dc.b		$04,$08,$04,$B6,$08,$B8,$04,$80,$08;			Voice E4
	dc.b		$B8,$04,$B6,$08,$B8,$04,$80,$08,$B8,$04,$B4,$B6,$B8,$BB,$08,$BF
	dc.b		$10,$B8,$08,$04,$B6,$08,$B8,$04,$80;			Voice E5
	dc.b		$08,$B8,$04,$B6,$08,$B8,$04,$80,$08,$B8,$04,$B4,$F6,$FE,$13,$F2
	dc.b		$00,$00,$00,$00,$00,$00,$FF,$FF,$FF;			Voice E6
	dc.b		$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$E0,$C0,$EF
	dc.b		$03,$B1,$60,$BD,$18,$B8,$BB,$12,$B4;			Voice E7
	dc.b		$AF,$0C,$B1,$60,$E0,$C0,$EF,$03,$BD,$18,$B8,$BB,$12,$B4,$C0,$0C
	dc.b		$B1,$60,$18,$B8,$18,$BD,$12,$C0,$C4;			Voice E8
	dc.b		$0C,$30,$C2,$30,$C0,$B8,$04,$B6,$B4,$B6,$B4,$B3,$B4,$B3,$B1,$AF
	dc.b		$AC,$AF,$B1,$60,$80,$80,$80,$EF,$00;			Voice E9
	dc.b		$B8,$48,$0C,$B1,$0C,$B4,$30,$0C,$B3,$0C,$B4,$BB,$BA,$30,$B8,$5E
	dc.b		$80,$32,$60,$B1,$30,$18,$B8,$0C,$B4;			Voice EA
	dc.b		$BB,$30,$BD,$BA,$60,$B8,$30,$B1,$B4,$18,$B3,$AF,$AE,$0C,$AF,$B1
	dc.b		$30,$B8,$5E,$80,$32,$B4,$60,$0C,$B3;			Voice EB
	dc.b		$0C,$B4,$B8,$BB,$18,$BA,$0C,$B6,$B8,$18,$B6,$30,$BB,$12,$BA,$06
	dc.b		$60,$60,$C9,$18,$C4,$C7,$14,$C6,$10;			Voice EC
	dc.b		$BD,$0C,$C0,$2E,$80,$32,$68,$EF,$05,$AD,$30,$B1,$A8,$60,$AB,$30
	dc.b		$A3,$A6,$60,$AD,$30,$A8,$AD,$B4,$B7;			Voice ED
	dc.b		$AB,$7F,$E7,$09,$B1,$60,$A5,$B1,$30,$AC,$B8,$60,$B4,$30,$BB,$B8
	dc.b		$60,$B1,$30,$AC,$B8,$B6,$B4,$60,$B6;			Voice EE
	dc.b		$30,$B3,$B8,$60,$30,$C0,$18,$BF,$EF,$03,$B1,$60,$BD,$18,$B8,$BB
	dc.b		$12,$B4,$AF,$0C,$B1,$60,$F6,$FF,$3D;			Voice EF
	dc.b		$F2,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF
	dc.b		$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;			Voice F0
	dc.b		$FF,$FF,$FF,$E0,$C0,$EF,$03,$B1,$60,$BD,$18,$B8,$BB,$12,$B4,$AF
	dc.b		$0C,$B1,$60,$E0,$C0,$EF,$03,$BD,$18;			Voice F1
	dc.b		$B8,$BB,$12,$B4,$C0,$0C,$B1,$60,$18,$B8,$18,$BD,$12,$C0,$C4,$0C
	dc.b		$30,$C2,$30,$C0,$B8,$04,$B6,$B4,$B6;			Voice F2
	dc.b		$B4,$B3,$B4,$B3,$B1,$AF,$AC,$AF,$B1,$60,$80,$80,$80,$EF,$00,$B8
	dc.b		$48,$0C,$B1,$0C,$B4,$30,$0C,$B3,$0C;			Voice F3
	dc.b		$B4,$BB,$BA,$30,$B8,$5E,$80,$32,$B1,$60,$30,$18,$B8,$0C,$B4,$BB
	dc.b		$30,$BD,$BA,$60,$B8,$30,$B1,$B4,$18;			Voice F4
	dc.b		$B3,$AF,$AE,$0C,$AF,$B1,$30,$B8,$5E,$80,$32,$B4,$60,$0C,$B3,$0C
	dc.b		$B4,$B8,$BB,$18,$BA,$0C,$B6,$B8,$18;			Voice F5
	dc.b		$B6,$30,$BB,$12,$BA,$06,$60,$60,$C9,$18,$C4,$C7,$14,$C6,$10,$BD
	dc.b		$0C,$C0,$68,$80,$58,$EF,$05,$AD,$30;			Voice F6
	dc.b		$B1,$A8,$60,$AB,$30,$A3,$A6,$60,$AD,$30,$A8,$AD,$B4,$B7,$AB,$7F
	dc.b		$E7,$11,$B1,$60,$A5,$B1,$30,$AC,$B8;			Voice F7
	dc.b		$60,$B4,$30,$BB,$B8,$60,$B1,$30,$AC,$B8,$B6,$B4,$60,$B6,$30,$B3
	dc.b		$B8,$60,$30,$C0,$18,$BF,$EF,$03,$B1;			Voice F8
	dc.b		$60,$BD,$18,$B8,$BB,$12,$B4,$AF,$0C,$B1,$60,$F6,$FF,$3E,$F2;			Voice F9
	even
