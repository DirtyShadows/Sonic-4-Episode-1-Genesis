; =============================================================================================
; Project Name:		Ice_Paradise_Act1
; Created:		30th December 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Ice_Paradise_Act1_Header:
	smpsHeaderVoice	Ice_Paradise_Act1_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$03,	$13

	smpsHeaderDAC	Ice_Paradise_Act1_DAC
	smpsHeaderFM	Ice_Paradise_Act1_FM1,	smpsPitch00,	$08
	smpsHeaderFM	Ice_Paradise_Act1_FM2,	smpsPitch00,	$10
	smpsHeaderFM	Ice_Paradise_Act1_FM3,	smpsPitch00,	$10
	smpsHeaderFM	Ice_Paradise_Act1_FM4,	smpsPitch00,	$10
	smpsHeaderFM	Ice_Paradise_Act1_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	Ice_Paradise_Act1_PSG1,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	Ice_Paradise_Act1_PSG2,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	Ice_Paradise_Act1_PSG3,	smpsPitch02hi+$0B,	$00,	$00

; FM1 Data
Ice_Paradise_Act1_FM1:
	smpsFMvoice	$00
	dc.b		nD2,	$1C,	nC3,	$02,	nCs3,	nD3,	$1D,	nRst
	dc.b		$03,	nD2,	$1C,	nC3,	$02,	nCs3,	nD3,	$0E
	dc.b		nRst,	$02,	nD2,	$0E,	nRst,	$02,	nG2,	nRst
	dc.b		$06,	nG2,	$05,	nRst,	$01,	nD2,	$02,	nG2
	dc.b		nRst,	nD2,	$07,	nRst,	$01,	nE2,	$03,	nRst
	dc.b		$01,	nG2,	$02,	nRst,	$06,	nG2,	$05,	nRst
	dc.b		$01,	nD2,	$02,	nG2,	nRst,	nD2,	$07,	nRst
	dc.b		$01,	nE2,	$03,	nRst,	$01,	nG2,	$02,	nRst
	dc.b		$06,	nG2,	$05,	nRst,	$01,	nD2,	$02,	nG2
	dc.b		nRst,	nD2,	$07,	nRst,	$01,	nE2,	$03,	nRst
	dc.b		$01,	nG2,	$02,	nRst,	$06,	nG2,	$05,	nRst
	dc.b		$01,	nD2,	$02,	nG2,	nRst,	nD2,	$07,	nRst
	dc.b		$01,	nE2,	$03,	nRst,	$01,	nG2,	$02,	nRst
	dc.b		$06,	nG2,	$05,	nRst,	$01,	nD2,	$02,	nG2
	dc.b		nRst,	nD2,	$07,	nRst,	$01,	nE2,	$03,	nRst
	dc.b		$01,	nG2,	$02,	nRst,	$06,	nG2,	$05,	nRst
	dc.b		$01,	nD2,	$02,	nG2,	nRst,	nD2,	$07,	nRst
	dc.b		$01,	nG2,	$03,	nRst,	$01,	nC2,	$02,	nRst
	dc.b		$06,	nC2,	$05,	nRst,	$01,	nG2,	$02,	nC2
	dc.b		nRst,	nG2,	$07,	nRst,	$01,	nC2,	$03,	nRst
	dc.b		$01,	nC2,	$02,	nRst,	$06,	nC2,	$05,	nRst
	dc.b		$01,	nG2,	$02,	nC2,	nRst,	nG2,	$07,	nRst
	dc.b		$01,	nC2,	$03,	nRst,	$01,	nG2,	$02,	nRst
	dc.b		$06,	nG2,	$05,	nRst,	$01,	nD2,	$02,	nG2
	dc.b		nRst,	nD2,	$07,	nRst,	$01,	nE2,	$03,	nRst
	dc.b		$01,	nG2,	$02,	nRst,	$06,	nG2,	$05,	nRst
	dc.b		$01,	nD2,	$02,	nG2,	nRst,	nD2,	$07,	nRst
	dc.b		$01,	nG2,	$03,	nRst,	$01,	nF2,	$02,	nRst
	dc.b		$06,	nF2,	$05,	nRst,	$01,	nC2,	$02,	nF2
	dc.b		nRst,	nC2,	$07,	nRst,	$01,	nD2,	$03,	nRst
	dc.b		$01,	nF2,	$02,	nRst,	$06,	nF2,	$05,	nRst
	dc.b		$01,	nC2,	$02,	nF2,	nRst,	nC2,	$07,	nRst
	dc.b		$01,	nF2,	$03,	nRst,	$01,	nD2,	$02,	nRst
	dc.b		$06,	nD2,	$05,	nRst,	$01,	nA2,	$02,	nD2
	dc.b		nRst,	nA2,	$07,	nRst,	$01,	nD2,	$03,	nRst
	dc.b		$01,	nD2,	$02,	nRst,	$06,	nD2,	$05,	nRst
	dc.b		$01,	nA2,	$02,	nD2,	$07,	nRst,	$01,	nCs2
	dc.b		$07,	nRst,	$01,	nC2,	$02,	nRst,	$06,	nC2
	dc.b		$05,	nRst,	$01,	nG2,	$02,	nC2,	nRst,	nG2
	dc.b		$07,	nRst,	$01,	nC2,	$03,	nRst,	$01,	nC2
	dc.b		$02,	nRst,	$06,	nC2,	$05,	nRst,	$01,	nG2
	dc.b		$02,	nC2,	$03,	nRst,	$01,	nG2,	$02,	nC2
	dc.b		nB1,	$03,	nRst,	$01,	nFs2,	$02,	nB1,	nBb1
	dc.b		nRst,	$06,	nBb1,	$05,	nRst,	$01,	nF2,	$02
	dc.b		nBb1,	nRst,	nF2,	$07,	nRst,	$01,	nC3,	$03
	dc.b		nRst,	$01,	nBb2,	$02,	nRst,	$06,	nBb2,	$05
	dc.b		nRst,	$01,	nF2,	$02,	nBb2,	nRst,	nF2,	$07
	dc.b		nRst,	$01,	nBb2,	$03,	nRst,	$01,	nA2,	$02
	dc.b		nRst,	$06,	nA2,	$05,	nRst,	$01,	nE2,	$02
	dc.b		nA2,	nRst,	nE2,	$07,	nRst,	$01,	nEb2,	$03
	dc.b		nRst,	$01,	nD2,	$02,	nRst,	$06,	nD2,	$05
	dc.b		nRst,	$01,	nA2,	$02,	nD2,	nRst,	nA2,	$07
	dc.b		nRst,	$01,	nD2,	$03,	nRst,	$01,	nG2,	$02
	dc.b		nRst,	$06,	nG2,	$05,	nRst,	$01,	nD2,	$02
	dc.b		nG2,	nRst,	nD2,	$07,	nRst,	$01,	nE2,	$03
	dc.b		nRst,	$01,	nG2,	$02,	nRst,	$06,	nG2,	$05
	dc.b		nRst,	$01,	nD2,	$02,	nG2,	nRst,	nD2,	$07
	dc.b		nRst,	$01,	nE2,	$03,	nRst,	$01,	nG2,	$02
	dc.b		nRst,	$06,	nG2,	$05,	nRst,	$01,	nD2,	$02
	dc.b		nG2,	nRst,	nD2,	$07,	nRst,	$01,	nE2,	$03
	dc.b		nRst,	$01,	nG2,	$02,	nRst,	$06,	nG2,	$05
	dc.b		nRst,	$01,	nD2,	$02,	nG2,	nRst,	nD2,	$07
	dc.b		nRst,	$01,	nE2,	$03,	nRst,	$01,	nG2,	$02
	dc.b		nRst,	$06,	nG2,	$05,	nRst,	$01,	nD2,	$02
	dc.b		nG2,	nRst,	nD2,	$07,	nRst,	$01,	nE2,	$03
	dc.b		nRst,	$01,	nG2,	$02,	nRst,	$06,	nG2,	$05
	dc.b		nRst,	$01,	nD2,	$02,	nG2,	nRst,	nD2,	$07
	dc.b		nRst,	$01,	nG2,	$03,	nRst,	$01,	nC2,	$02
	dc.b		nRst,	$06,	nC2,	$05,	nRst,	$01,	nG2,	$02
	dc.b		nC2,	nRst,	nG2,	$07,	nRst,	$01,	nC2,	$03
	dc.b		nRst,	$01,	nC2,	$02,	nRst,	$06,	nC2,	$05
	dc.b		nRst,	$01,	nG2,	$02,	nC2,	nRst,	nG2,	$07
	dc.b		nRst,	$01,	nC2,	$03,	nRst,	$01,	nG2,	$02
	dc.b		nRst,	$06,	nG2,	$05,	nRst,	$01,	nD2,	$02
	dc.b		nG2,	nRst,	nD2,	$07,	nRst,	$01,	nE2,	$03
	dc.b		nRst,	$01,	nG2,	$02,	nRst,	$06,	nG2,	$05
	dc.b		nRst,	$01,	nD2,	$02,	nG2,	nRst,	nD2,	$07
	dc.b		nRst,	$01,	nG2,	$03,	nRst,	$01,	nF2,	$02
	dc.b		nRst,	$06,	nF2,	$05,	nRst,	$01,	nC2,	$02
	dc.b		nF2,	nRst,	nC2,	$07,	nRst,	$01,	nD2,	$03
	dc.b		nRst,	$01,	nF2,	$02,	nRst,	$06,	nF2,	$05
	dc.b		nRst,	$01,	nC2,	$02,	nF2,	nRst,	nC2,	$07
	dc.b		nRst,	$01,	nF2,	$03,	nRst,	$01,	nFs2,	$02
	dc.b		nRst,	$06,	nFs2,	$05,	nRst,	$01,	nCs2,	$02
	dc.b		nFs2,	nRst,	nCs2,	$07,	nRst,	$01,	nFs2,	$03
	dc.b		nRst,	$01,	nB1,	$02,	nRst,	$06,	nB1,	$05
	dc.b		nRst,	$01,	nFs2,	$02,	nB2,	nRst,	nFs2,	$07
	dc.b		nRst,	$01,	nB1,	$03,	nRst,	$01,	nE2,	$02
	dc.b		nRst,	$06,	nE2,	$05,	nRst,	$01,	nB1,	$02
	dc.b		nE2,	nRst,	nB1,	$07,	nRst,	$01,	nE2,	$03
	dc.b		nRst,	$01,	nE2,	$02,	nRst,	$06,	nE2,	$05
	dc.b		nRst,	$01,	nB1,	$02,	nE2,	nRst,	nB1,	$07
	dc.b		nRst,	$01,	nE2,	$03,	nRst,	$01,	nF2,	$02
	dc.b		nRst,	$06,	nF2,	$05,	nRst,	$01,	nC2,	$02
	dc.b		nF2,	nRst,	nC2,	$07,	nRst,	$01,	nF2,	$03
	dc.b		nRst,	$01,	nBb1,	$02,	nRst,	$06,	nBb1,	$05
	dc.b		nRst,	$01,	nF2,	$02,	nBb2,	nRst,	nF2,	$07
	dc.b		nRst,	$01,	nBb1,	$03,	nRst,	$01,	nEb2,	$02
	dc.b		nRst,	$06,	nEb2,	$05,	nRst,	$01,	nBb1,	$02
	dc.b		nEb2,	nRst,	nBb1,	$07,	nRst,	$01,	nEb2,	$03
	dc.b		nRst,	$01,	nAb1,	$02,	nRst,	$06,	nAb1,	$05
	dc.b		nRst,	$01,	nEb2,	$02,	nAb2,	nRst,	nEb2,	$07
	dc.b		nRst,	$01,	nAb1,	$03,	nRst,	$01
	smpsJump	Ice_Paradise_Act1_FM1

; FM2 Data
Ice_Paradise_Act1_FM2:
	dc.b		nRst,	$08
	smpsAlterVol	$F8
	smpsFMvoice	$04
	dc.b		nB5,	$07,	nRst,	$01,	nG5,	$07,	nRst,	$01
	dc.b		nA5,	$07,	nRst,	$01,	nE5,	$07,	nRst,	$01
	dc.b		nG5,	$07,	nRst,	$01,	nD5,	$07,	nRst,	$01
	dc.b		nA4,	$07,	nRst,	$01,	nD4,	$07,	nRst,	$01
	dc.b		nD5,	$07,	nRst,	$01,	nD4,	$07,	nRst,	$01
	dc.b		nD5,	$07,	nRst,	$01,	nD4,	$07,	nRst,	$01
	dc.b		nD5,	$07,	nRst,	$01,	nD6,	$07,	nRst,	$01
	dc.b		nD5,	$07,	nRst,	$01,	$40,	$38
	smpsAlterVol	$08
	smpsFMvoice	$03
	dc.b		nD5,	$07,	nRst,	$01,	nD6,	$0B,	nRst,	$01
	dc.b		nBb5,	nB5,	$21,	nRst,	$02,	nFs5,	$01,	nG5
	dc.b		$06,	nRst,	$01,	nFs5,	$07,	nRst,	$01,	nE5
	dc.b		$35,	nRst,	$03,	nD5,	$07,	nRst,	$01,	nD6
	dc.b		$0B,	nRst,	$01,	nBb5,	nB5,	$21,	nRst,	$02
	dc.b		nFs5,	$01,	nG5,	$06,	nRst,	$01,	nFs5,	$07
	dc.b		nRst,	$01,	nF5,	$35,	nRst,	$03,	nG5,	$04
	dc.b		nAb5,	nA5,	$09,	nRst,	$03,	nD5,	$22,	nRst
	dc.b		$02,	nD6,	$07,	nRst,	$01,	nCs6,	$07,	nRst
	dc.b		$01,	nC6,	$09,	nRst,	$03,	nE5,	$2A,	nRst
	dc.b		$02,	nE5,	$04,	nFs5,	nG5,	$1A,	nRst,	$02
	dc.b		nE5,	$17,	nRst,	$01,	nE5,	$04,	nG5,	nB5
	dc.b		nD6,	$17,	nRst,	$01,	nD6,	$04,	$22,	nRst
	dc.b		$02,	$08
	smpsAlterVol	$F8
	smpsFMvoice	$04
	dc.b		nG5,	$07,	nRst,	$01,	nB4,	$07,	nRst,	$01
	dc.b		nD5,	$07,	nRst,	$01,	nG4,	$07,	nRst,	$01
	dc.b		nB4,	$07,	nRst,	$01,	nD4,	$07,	nRst,	$01
	dc.b		nG4,	$07,	nRst,	$01,	nB3,	$07,	nRst,	$01
	dc.b		nD4,	$07,	nRst,	$29
	smpsAlterVol	$08
	smpsFMvoice	$03
	dc.b		nD5,	$07,	nRst,	$01,	nD6,	$0B,	nRst,	$01
	dc.b		nBb5,	nB5,	$21,	nRst,	$02,	nFs5,	$01,	nG5
	dc.b		$06,	nRst,	$01,	nFs5,	$07,	nRst,	$01,	nE5
	dc.b		$35,	nRst,	$03,	nD5,	$07,	nRst,	$01,	nD6
	dc.b		$0B,	nRst,	$01,	nBb5,	nB5,	$21,	nRst,	$02
	dc.b		nFs5,	$01,	nG5,	$06,	nRst,	$01,	nFs5,	$07
	dc.b		nRst,	$01,	nF5,	$35,	nRst,	$03,	nFs5,	$04
	dc.b		nAb5,	nA5,	$17,	nRst,	$01,	nE5,	$07,	nRst
	dc.b		$01,	nEb5,	$07,	nRst,	$01,	nC6,	$07,	nRst
	dc.b		$01,	nB5,	$07,	nRst,	$01,	nA5,	$07,	nRst
	dc.b		$01,	nA5,	$0F,	nRst,	$01,	nG5,	$07,	nRst
	dc.b		$01,	nFs5,	$04,	nG5,	$1A,	nRst,	$02,	nE5
	dc.b		$04,	nFs5,	nG5,	$0B,	nRst,	$01,	nC5,	$0F
	dc.b		nRst,	$01,	nE5,	$04,	nD5,	$0B,	nRst,	$01
	dc.b		nF4,	$13,	nRst,	$01,	$0C,	nBb4,	$02,	nG4
	dc.b		nBb4,	$04,	nC5,	$02,	nBb4,	nC5,	$04,	nD5
	dc.b		$02,	nC5,	nD5,	$04,	nF5,	$02,	nRst,	$06
	dc.b		nBb5,	$02,	nAb5,	nBb5,	$04,	nC6,	$02,	nBb5
	dc.b		nC6,	$04,	nD6,	$02,	nE6
	smpsJump	Ice_Paradise_Act1_FM2

; FM3 Data
Ice_Paradise_Act1_FM3:
	smpsFMvoice	$01
	dc.b		nB5,	$03,	nRst,	$01,	nG5,	$03,	nRst,	$01
	dc.b		nB5,	$03,	nRst,	$01,	nG5,	$03,	nRst,	$01
	dc.b		nA5,	$03,	nRst,	$01,	nFs5,	$03,	nRst,	$01
	dc.b		nA5,	$03,	nRst,	$01,	nFs5,	$03,	nRst,	$01
	dc.b		nG5,	$03,	nRst,	$01,	nE5,	$03,	nRst,	$01
	dc.b		nG5,	$03,	nRst,	$01,	nE5,	$03,	nRst,	$01
	dc.b		nFs5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nFs5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nG5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nG5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nA5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nA5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nFs5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nFs5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nA5,	$03,	nRst,	$01,	nFs5,	$03,	nRst,	$01
	dc.b		nA5,	$03,	nRst,	$01,	nFs5,	$03,	nRst,	$01
	smpsFMvoice	$02
	dc.b		nD5,	$02,	nRst,	$06,	nD5,	$05,	nRst,	$01
	dc.b		nD5,	$02,	nE5,	nRst,	nE5,	$05,	nRst,	$03
	dc.b		nE5,	nRst,	$01,	nFs5,	$02,	nRst,	$06,	nFs5
	dc.b		$05,	nRst,	$01,	nFs5,	$02,	nE5,	nRst,	nE5
	dc.b		$05,	nRst,	$03,	nE5,	nRst,	$01,	nD5,	$02
	dc.b		nRst,	$06,	nD5,	$05,	nRst,	$01,	nD5,	$02
	dc.b		nE5,	nRst,	nE5,	$05,	nRst,	$03,	nE5,	nRst
	dc.b		$01,	nFs5,	$02,	nRst,	$06,	nFs5,	$05,	nRst
	dc.b		$01,	nFs5,	$02,	nE5,	nRst,	nE5,	$05,	nRst
	dc.b		$03,	nE5,	nRst,	$01,	nD5,	$02,	nRst,	$06
	dc.b		nD5,	$05,	nRst,	$01,	nG4,	$02,	nD5,	nG4
	dc.b		nD5,	$07,	nRst,	$01,	nG4,	$02,	nRst,	nD5
	dc.b		nRst,	$06,	nD5,	$05,	nRst,	$01,	nG4,	$02
	dc.b		nD5,	nG4,	nD5,	$07,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	nE5,	nRst,	$06,	nE5,	$05,	nRst,	$01
	dc.b		nG4,	$02,	nE5,	nG4,	nE5,	$07,	nRst,	$01
	dc.b		nG4,	$02,	nRst,	nE5,	nRst,	$06,	nE5,	$05
	dc.b		nRst,	$01,	nG4,	$02,	nE5,	nG4,	nE5,	$07
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	nD5,	nRst,	$06
	dc.b		nD5,	$05,	nRst,	$01,	nG4,	$02,	nD5,	nG4
	dc.b		nD5,	$07,	nRst,	$01,	nG4,	$02,	nRst,	nD5
	dc.b		nRst,	$06,	nD5,	$05,	nRst,	$01,	nG4,	$02
	dc.b		nD5,	nG4,	nD5,	$07,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	nF5,	nRst,	$06,	nF5,	$05,	nRst,	$01
	dc.b		nC5,	$02,	nF5,	nC5,	nF5,	$07,	nRst,	$01
	dc.b		nC5,	$02,	nRst,	nF5,	nRst,	$06,	nF5,	$05
	dc.b		nRst,	$01,	nC5,	$02,	nF5,	nC5,	nF5,	$07
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	nFs5,	nRst,	$06
	dc.b		nFs5,	$05,	nRst,	$01,	nD5,	$02,	nFs5,	nD5
	dc.b		nFs5,	$07,	nRst,	$01,	nD5,	$02,	nRst,	nFs5
	dc.b		nRst,	$06,	nFs5,	$05,	nRst,	$01,	nA4,	nC5
	dc.b		nFs5,	$07,	nRst,	$01,	nF5,	$07,	nRst,	$01
	dc.b		nE5,	$02,	nRst,	$06,	nE5,	$05,	nRst,	$01
	dc.b		nG4,	$02,	nE5,	nG4,	nE5,	$07,	nRst,	$01
	dc.b		nG4,	$02,	nRst,	nE5,	nRst,	$06,	nE5,	$05
	dc.b		nRst,	$01,	nG4,	$02,	nE5,	nG4,	nE5,	$07
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	nG5,	nRst,	$06
	dc.b		nG5,	$05,	nRst,	$01,	nC5,	$02,	nG5,	nC5
	dc.b		nG5,	$07,	nRst,	$01,	nC5,	$02,	nRst,	nG5
	dc.b		nRst,	$06,	nG5,	$05,	nRst,	$01,	nC5,	$02
	dc.b		nG5,	nC5,	nG5,	$07,	nRst,	$01,	nC5,	$02
	dc.b		nRst,	nE5,	nRst,	$06,	nE5,	$05,	nRst,	$01
	dc.b		nG4,	$02,	nE5,	nG4,	nE5,	$07,	nRst,	$01
	dc.b		nG4,	$02,	nRst,	nE5,	nRst,	$06,	nE5,	$05
	dc.b		nRst,	$01,	nG4,	$02,	nFs5,	nA4,	nFs5,	$07
	dc.b		nRst,	$01,	nA4,	$02,	nRst,	nD5,	nRst,	$06
	dc.b		nD5,	$05,	nRst,	$01,	nD5,	$02,	nE5,	nRst
	dc.b		nE5,	$05,	nRst,	$03,	nE5,	nRst,	$01,	nFs5
	dc.b		$02,	nRst,	$06,	nFs5,	$05,	nRst,	$01,	nFs5
	dc.b		$02,	nE5,	nRst,	nE5,	$05,	nRst,	$03,	nE5
	dc.b		nRst,	$01,	nD5,	$02,	nRst,	$06,	nD5,	$05
	dc.b		nRst,	$01,	nD5,	$02,	nE5,	nRst,	nE5,	$05
	dc.b		nRst,	$03,	nE5,	nRst,	$01,	nFs5,	$02,	nRst
	dc.b		$06,	nFs5,	$05,	nRst,	$01,	nFs5,	$02,	nE5
	dc.b		nRst,	nE5,	$05,	nRst,	$03,	nE5,	nRst,	$01
	dc.b		nD5,	$02,	nRst,	$06,	nD5,	$05,	nRst,	$01
	dc.b		nG4,	$02,	nD5,	nG4,	nD5,	$07,	nRst,	$01
	dc.b		nG4,	$02,	nRst,	nD5,	nRst,	$06,	nD5,	$05
	dc.b		nRst,	$01,	nG4,	$02,	nD5,	nG4,	nD5,	$07
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	nE5,	nRst,	$06
	dc.b		nE5,	$05,	nRst,	$01,	nG4,	$02,	nE5,	nG4
	dc.b		nE5,	$07,	nRst,	$01,	nG4,	$02,	nRst,	nE5
	dc.b		nRst,	$06,	nE5,	$05,	nRst,	$01,	nG4,	$02
	dc.b		nE5,	nG4,	nE5,	$07,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	nD5,	nRst,	$06,	nD5,	$05,	nRst,	$01
	dc.b		nG4,	$02,	nD5,	nG4,	nD5,	$07,	nRst,	$01
	dc.b		nG4,	$02,	nRst,	nD5,	nRst,	$06,	nD5,	$05
	dc.b		nRst,	$01,	nG4,	$02,	nD5,	nG4,	nD5,	$07
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	nF5,	nRst,	$06
	dc.b		nF5,	$05,	nRst,	$01,	nC5,	$02,	nF5,	nC5
	dc.b		nF5,	$07,	nRst,	$01,	nC5,	$02,	nRst,	nF5
	dc.b		nRst,	$06,	nF5,	$05,	nRst,	$01,	nC5,	$02
	dc.b		nF5,	nC5,	nF5,	$07,	nRst,	$01,	nC5,	$02
	dc.b		nRst,	nE5,	nRst,	$06,	nE5,	$05,	nRst,	$01
	dc.b		nA4,	$02,	nE5,	nA4,	nE5,	$07,	nRst,	$01
	dc.b		nA4,	$02,	nRst,	nFs5,	nRst,	$06,	nFs5,	$05
	dc.b		nRst,	$01,	nB4,	$02,	nFs5,	nB4,	nFs5,	$07
	dc.b		nRst,	$01,	nB4,	$02,	nRst,	nG5,	nRst,	$06
	dc.b		nG5,	$05,	nRst,	$01,	nB4,	$02,	nG5,	nB4
	dc.b		nG5,	$07,	nRst,	$01,	nB4,	$02,	nRst,	nG5
	dc.b		nRst,	$06,	nG5,	$05,	nRst,	$01,	nB4,	$02
	dc.b		nG5,	nB4,	nG5,	$07,	nRst,	$01,	nB4,	$02
	dc.b		nRst,	nG5,	nRst,	$06,	nG5,	$05,	nRst,	$01
	dc.b		nC5,	$02,	nG5,	nC5,	nG5,	$07,	nRst,	$01
	dc.b		nC5,	$02,	nRst,	nF5,	nRst,	$06,	nF5,	$05
	dc.b		nRst,	$01,	nF4,	$02,	nF5,	nF4,	nF5,	$07
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	nF5,	nRst,	$06
	dc.b		nF5,	$05,	nRst,	$01,	nF4,	$02,	nF5,	nF4
	dc.b		nF5,	$07,	nRst,	$01,	nF4,	$02,	nRst,	nBb4
	dc.b		nRst,	$06,	nBb4,	$05,	nRst,	$03,	nBb4,	$02
	dc.b		nRst,	nBb4,	$07,	nRst,	$01,	nBb4,	$02,	nRst
	smpsJump	Ice_Paradise_Act1_FM3

; FM4 Data
Ice_Paradise_Act1_FM4:
	smpsFMvoice	$01
	dc.b		nG5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nG5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nFs5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nFs5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nE5,	$03,	nRst,	$01,	nC5,	$03,	nRst,	$01
	dc.b		nE5,	$03,	nRst,	$01,	nC5,	$03,	nRst,	$01
	dc.b		nD5,	$03,	nRst,	$01,	nA4,	$03,	nRst,	$01
	dc.b		nD5,	$03,	nRst,	$01,	nA4,	$03,	nRst,	$01
	dc.b		nD5,	$03,	nRst,	$01,	nB4,	$03,	nRst,	$01
	dc.b		nD5,	$03,	nRst,	$01,	nB4,	$03,	nRst,	$01
	dc.b		nD5,	$03,	nRst,	$01,	nA4,	$03,	nRst,	$01
	dc.b		nD5,	$03,	nRst,	$01,	nA4,	$03,	nRst,	$01
	dc.b		nD5,	$03,	nRst,	$01,	nA4,	$03,	nRst,	$01
	dc.b		nD5,	$03,	nRst,	$01,	nA4,	$03,	nRst,	$01
	dc.b		nFs5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	dc.b		nFs5,	$03,	nRst,	$01,	nD5,	$03,	nRst,	$01
	smpsFMvoice	$02
	dc.b		nB4,	$02,	nRst,	$06,	nB4,	$05,	nRst,	$01
	dc.b		nB4,	$02,	nC5,	nRst,	nC5,	$05,	nRst,	$03
	dc.b		nC5,	nRst,	$01,	nD5,	$02,	nRst,	$06,	nD5
	dc.b		$05,	nRst,	$01,	nD5,	$02,	nC5,	nRst,	nC5
	dc.b		$05,	nRst,	$03,	nC5,	nRst,	$01,	nB4,	$02
	dc.b		nRst,	$06,	nB4,	$05,	nRst,	$01,	nB4,	$02
	dc.b		nC5,	nRst,	nC5,	$05,	nRst,	$03,	nC5,	nRst
	dc.b		$01,	nD5,	$02,	nRst,	$06,	nD5,	$05,	nRst
	dc.b		$01,	nD5,	$02,	nC5,	nRst,	nC5,	$05,	nRst
	dc.b		$03,	nC5,	nRst,	$01,	nB4,	$02,	nRst,	$06
	dc.b		nB4,	$05,	nRst,	$03,	nB4,	$02,	nRst,	nB4
	dc.b		$07,	nRst,	$05,	nB4,	$02,	nRst,	$06,	nB4
	dc.b		$05,	nRst,	$03,	nB4,	$02,	nRst,	nB4,	$07
	dc.b		nRst,	$05,	nC5,	$02,	nRst,	$06,	nC5,	$05
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	nC5,	$07,	nRst
	dc.b		$05,	nC5,	$02,	nRst,	$06,	nC5,	$05,	nRst
	dc.b		$03,	nC5,	$02,	nRst,	nC5,	$07,	nRst,	$05
	dc.b		nB4,	$02,	nRst,	$06,	nB4,	$05,	nRst,	$03
	dc.b		nB4,	$02,	nRst,	nB4,	$07,	nRst,	$05,	nB4
	dc.b		$02,	nRst,	$06,	nB4,	$05,	nRst,	$03,	nB4
	dc.b		$02,	nRst,	nB4,	$07,	nRst,	$05,	nC5,	$02
	dc.b		nRst,	$06,	nC5,	$05,	nRst,	$03,	nC5,	$02
	dc.b		nRst,	nC5,	$07,	nRst,	$05,	nC5,	$02,	nRst
	dc.b		$06,	nC5,	$05,	nRst,	$03,	nC5,	$02,	nRst
	dc.b		nC5,	$07,	nRst,	$05,	nD5,	$02,	nRst,	$06
	dc.b		nD5,	$05,	nRst,	$01,	nA4,	$02,	nD5,	nA4
	dc.b		nD5,	$07,	nRst,	$05,	nD5,	$02,	nRst,	$06
	dc.b		nD5,	$07,	$01,	$07,	nRst,	$01,	nCs5,	$07
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$06,	nC5,	$05
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	nC5,	$07,	nRst
	dc.b		$05,	nC5,	$02,	nRst,	$06,	nC5,	$05,	nRst
	dc.b		$03,	nC5,	$02,	nRst,	nC5,	$07,	nRst,	$05
	dc.b		nD5,	$02,	nRst,	$06,	nD5,	$05,	nRst,	$03
	dc.b		nD5,	$02,	nRst,	nD5,	$07,	nRst,	$01,	nG4
	dc.b		$02,	nRst,	nD5,	nRst,	$06,	nD5,	$05,	nRst
	dc.b		$03,	nD5,	$02,	nRst,	nD5,	$07,	nRst,	$01
	dc.b		nG4,	$02,	nRst,	nC5,	nRst,	$06,	nC5,	$05
	dc.b		nRst,	$03,	nC5,	$02,	nRst,	nC5,	$07,	nRst
	dc.b		$05,	nC5,	$02,	nRst,	$06,	nC5,	$05,	nRst
	dc.b		$01,	nC5,	$02,	nD5,	nRst,	nD5,	$07,	nRst
	dc.b		$01,	nD5,	$02,	nRst,	nB4,	nRst,	$06,	nB4
	dc.b		$05,	nRst,	$01,	nB4,	$02,	nC5,	nRst,	nC5
	dc.b		$05,	nRst,	$03,	nC5,	nRst,	$01,	nD5,	$02
	dc.b		nRst,	$06,	nD5,	$05,	nRst,	$01,	nD5,	$02
	dc.b		nC5,	nRst,	nC5,	$05,	nRst,	$03,	nC5,	nRst
	dc.b		$01,	nB4,	$02,	nRst,	$06,	nB4,	$05,	nRst
	dc.b		$01,	nB4,	$02,	nC5,	nRst,	nC5,	$05,	nRst
	dc.b		$03,	nC5,	nRst,	$01,	nD5,	$02,	nRst,	$06
	dc.b		nD5,	$05,	nRst,	$01,	nD5,	$02,	nC5,	nRst
	dc.b		nC5,	$05,	nRst,	$03,	nC5,	nRst,	$01,	nB4
	dc.b		$02,	nRst,	$06,	nB4,	$05,	nRst,	$03,	nB4
	dc.b		$02,	nRst,	nB4,	$07,	nRst,	$05,	nB4,	$02
	dc.b		nRst,	$06,	nB4,	$05,	nRst,	$03,	nB4,	$02
	dc.b		nRst,	nB4,	$07,	nRst,	$05,	nC5,	$02,	nRst
	dc.b		$06,	nC5,	$05,	nRst,	$03,	nC5,	$02,	nRst
	dc.b		nC5,	$07,	nRst,	$05,	nC5,	$02,	nRst,	$06
	dc.b		nC5,	$05,	nRst,	$03,	nC5,	$02,	nRst,	nC5
	dc.b		$07,	nRst,	$05,	nB4,	$02,	nRst,	$06,	nB4
	dc.b		$05,	nRst,	$03,	nB4,	$02,	nRst,	nB4,	$07
	dc.b		nRst,	$05,	nB4,	$02,	nRst,	$06,	nB4,	$05
	dc.b		nRst,	$03,	nB4,	$02,	nRst,	nB4,	$07,	nRst
	dc.b		$05,	nC5,	$02,	nRst,	$06,	nC5,	$05,	nRst
	dc.b		$03,	nC5,	$02,	nRst,	nC5,	$07,	nRst,	$05
	dc.b		nC5,	$02,	nRst,	$06,	nC5,	$05,	nRst,	$03
	dc.b		nC5,	$02,	nRst,	nC5,	$07,	nRst,	$05,	nCs5
	dc.b		$02,	nRst,	$06,	nCs5,	$05,	nRst,	$03,	nCs5
	dc.b		$02,	nRst,	nCs5,	$07,	nRst,	$05,	nEb5,	$02
	dc.b		nRst,	$06,	nEb5,	$05,	nRst,	$03,	nEb5,	$02
	dc.b		nRst,	nEb5,	$07,	nRst,	$05,	nE5,	$02,	nRst
	dc.b		$06,	nE5,	$05,	nRst,	$03,	nE5,	$02,	nRst
	dc.b		nE5,	$07,	nRst,	$05,	nE5,	$02,	nRst,	$06
	dc.b		nE5,	$05,	nRst,	$03,	nE5,	$02,	nRst,	nE5
	dc.b		$07,	nRst,	$05,	nE5,	$02,	nRst,	$06,	nE5
	dc.b		$05,	nRst,	$03,	nE5,	$02,	nRst,	nE5,	$07
	dc.b		nRst,	$05,	nD5,	$02,	nRst,	$06,	nD5,	$05
	dc.b		nRst,	$03,	nD5,	$02,	nRst,	nD5,	$07,	nRst
	dc.b		$05,	nD5,	$02,	nRst,	$06,	nD5,	$05,	nRst
	dc.b		$03,	nD5,	$02,	nRst,	nD5,	$07,	nRst,	$05
	dc.b		nFs4,	$02,	nRst,	$06,	nFs4,	$05,	nRst,	$03
	dc.b		nFs4,	$02,	nRst,	nFs4,	$07,	nRst,	$01,	nFs4
	dc.b		$02,	nRst
	smpsJump	Ice_Paradise_Act1_FM4

; FM5 Data
Ice_Paradise_Act1_FM5:
	dc.b		nRst,	$40,	$40,	$40,	$40,	$40,	$40,	$40
	dc.b		$40,	$40,	$40,	$40,	$40,	$40,	$40,	$20
	smpsFMvoice	$01
	dc.b		nD5,	$07,	nRst,	$01,	nG4,	$07,	nRst,	$01
	dc.b		nB4,	$07,	nRst,	$01,	nD4,	$07,	nRst,	$01
	dc.b		nG3,	$0E,	nRst,	$32,	$20,	nD5,	$07,	nRst
	dc.b		$01,	nG4,	$07,	nRst,	$01,	nB4,	$07,	nRst
	dc.b		$01,	nD4,	$07,	nRst,	$01,	nA3,	$0E,	nRst
	dc.b		$32
	smpsAlterVol	$F8
	smpsFMvoice	$04
	dc.b		nE4,	$0F,	nRst,	$01,	nE5,	$0F,	nRst,	$01
	dc.b		nEb5,	$0F,	nRst,	$01,	nB5,	$0F,	nRst,	$01
	dc.b		nB4,	$0F,	nRst,	$01,	nE5,	$0F,	nRst,	$01
	dc.b		nG5,	$0F,	nRst,	$01,	nB4,	$0F,	nRst,	$01
	dc.b		nF5,	$0F,	nRst,	$31,	$40
	smpsAlterVol	$08
	smpsJump	Ice_Paradise_Act1_FM5

; PSG1 Data
Ice_Paradise_Act1_PSG1:
	dc.b		nRst,	$40,	$40,	$40,	$08
	smpsPSGvoice	$04
	dc.b		nD6,	$02,	$02,	nA5,	$02,	$02,	nB5,	$02
	dc.b		$02,	nFs5,	$02,	$02,	nB5,	$02,	$02,	nD5
	dc.b		$02,	$02,	nFs5,	$02,	$02,	nB4,	$02,	$02
	dc.b		nD5,	$02,	$02,	nG4,	$02,	$02,	nB4,	$02
	dc.b		$02,	nFs4,	$02,	$02,	nB4,	$02,	$02,	nRst
	dc.b		$04,	$40,	$40,	$40,	$40,	$40,	$40,	$40
	dc.b		$40,	$40,	$08,	nD6,	$02,	$02,	nA5,	$02
	dc.b		$02,	nB5,	$02,	$02,	nFs5,	$02,	$02,	nB5
	dc.b		$02,	$02,	nD5,	$02,	$02,	nFs5,	$02,	$02
	dc.b		nB4,	$02,	$02,	nD5,	$02,	$02,	nG4,	$02
	dc.b		$02,	nB4,	$02,	$02,	nFs4,	$02,	$02,	nB4
	dc.b		$02,	$02,	nRst,	$04,	$40,	$10
	smpsPSGvoice	$05
	dc.b		nE3,	$02,	nG3,	nA3,	nC4,	nE4,	nG4,	nA4
	dc.b		nC5,	nE4,	nG4,	nA4,	nC5,	nE5,	nG5,	nA5
	dc.b		nC6,	nE5,	nG5,	nA5,	nC6,	nE6,	nG6,	nA6
	dc.b		nC7,	nB6,	$03,	nRst,	$3D,	$10,	nF3,	$02
	dc.b		nG3,	nA3,	nC4,	nF4,	nG4,	nA4,	nC5,	nF4
	dc.b		nG4,	nA4,	nC5,	nF5,	nG5,	nA5,	nC6,	nF5
	dc.b		nG5,	nA5,	nC6,	nF6,	nG6,	nA6,	nC7,	nRst
	dc.b		$40,	$40,	$40,	$40
	smpsJump	Ice_Paradise_Act1_PSG1

; PSG2 Data
Ice_Paradise_Act1_PSG2:
	dc.b		nRst,	$01
	smpsPSGvoice	$05
	dc.b		nD4,	nG4,	nA4,	nD5,	nG5,	nA5,	nD6,	nG6
	dc.b		nA6,	nD7,	nA6,	nG6,	nD6,	nG6,	nA6,	nG6
	dc.b		nD6,	nA5,	nD6,	nG6,	nD6,	nA5,	nG5,	nA5
	dc.b		nD6,	nA5,	nG5,	nD5,	nG5,	nA5,	nG5,	nD5
	dc.b		nA4,	nD5,	nA5,	nFs5,	nD5,	nA4,	nD5,	nFs5
	dc.b		nD5,	nA4,	nFs4,	nA4,	nD5,	nA4,	nFs4,	nD4
	dc.b		nFs4,	nA4,	nFs4,	nD4,	nA3,	nD4,	nFs4,	nD4
	dc.b		nA3,	nFs3,	nA3,	nRst,	$04,	$05,	nG4,	$01
	dc.b		nA4,	nD5,	nG4,	nA4,	nD5,	nG5,	nA4,	nD5
	dc.b		nG5,	nA5,	nD5,	nG5,	nA5,	nD6,	nG5,	nA5
	dc.b		nD6,	nG6,	nA5,	nD6,	nG6,	nA6,	nD6,	nG6
	dc.b		nA6,	nD7,	nA6,	nD7,	nA6,	nFs6,	nD6,	nFs6
	dc.b		nA6,	nFs6,	nD6,	nA5,	nFs6,	nD6,	nA5,	nFs5
	dc.b		nD6,	nA5,	nFs5,	nD5,	nA5,	nFs5,	nD5,	nA4
	dc.b		nFs5,	nD5,	nA4,	nFs4,	nD5,	nA4,	nRst,	$04
	dc.b		$40,	$08
	smpsPSGvoice	$04
	dc.b		nB6,	$02,	$02,	nFs6,	$02,	$02,	nG6,	$02
	dc.b		$02,	nD6,	$02,	$02,	nFs6,	$02,	$02,	nB5
	dc.b		$02,	$02,	nD6,	$02,	$02,	nG5,	$02,	$02
	dc.b		nB5,	$02,	$02,	nD5,	$02,	$02,	nFs5,	$02
	dc.b		$02,	nB4,	$02,	$02
	smpsPSGvoice	$05
	dc.b		nD5,	$07,	nRst,	$01,	nB5,	$0B,	nRst,	$01
	dc.b		nFs5,	nG5,	$21,	nRst,	$02,	nBb4,	$01,	nB4
	dc.b		$06,	nRst,	$01,	nA4,	$07,	nRst,	$01,	nG4
	dc.b		$35,	nRst,	$03,	nD5,	$07,	nRst,	$01,	nB5
	dc.b		$0B,	nRst,	$01,	nFs5,	nG5,	$21,	nRst,	$02
	dc.b		nBb4,	$01,	nB4,	$06,	nRst,	$01,	nD5,	$07
	dc.b		nRst,	$01,	nA4,	$35,	nRst,	$03,	nE5,	$04
	dc.b		nF5,	nFs5,	$09,	nRst,	$03,	nA4,	$22,	nRst
	dc.b		$02,	nF5,	$01,	nFs5,	$06,	nRst,	$01,	nF5
	dc.b		$07,	nRst,	$01,	nE5,	$09,	nRst,	$03,	nC5
	dc.b		$2A,	nRst,	$02,	nG4,	$04,	nA4,	nBb4,	$1A
	dc.b		nRst,	$02,	nG4,	$17,	nRst,	$01,	nC5,	$04
	dc.b		nE5,	nG5,	nG5,	$17,	nRst,	$01,	nFs5,	nG5
	dc.b		$03,	nFs5,	$22,	nRst,	$02,	nD4,	$01,	nG4
	dc.b		nA4,	nD5,	nG5,	nA5,	nD6,	nG6,	nA6,	nD7
	dc.b		nA6,	nG6,	nD6,	nG6,	nA6,	nG6,	nD6,	nA5
	dc.b		nD6,	nG6,	nD6,	nA5,	nG5,	nA5,	nD6,	nA5
	dc.b		nG5,	nD5,	nG5,	nA5,	nG5,	nD5,	nA4,	nD5
	dc.b		nA5,	nFs5,	nD5,	nA4,	nD5,	nFs5,	nD5,	nA4
	dc.b		nFs4,	nA4,	nD5,	nA4,	nFs4,	nD4,	nFs4,	nA4
	dc.b		nFs4,	nD4,	nA3,	nD4,	nFs4,	nD4,	nA3,	nRst
	dc.b		$07,	$08
	smpsPSGvoice	$04
	dc.b		nB6,	$02,	$02,	nFs6,	$02,	$02,	nG6,	$02
	dc.b		$02,	nD6,	$02,	$02,	nFs6,	$02,	$02,	nB5
	dc.b		$02,	$02,	nD6,	$02,	$02,	nG5,	$02,	$02
	dc.b		nB5,	$02,	$02,	nD5,	$02,	$02,	nFs5,	$02
	dc.b		$02,	nB4,	$02,	$02
	smpsPSGvoice	$05
	dc.b		nD5,	$07,	nRst,	$01,	nB5,	$0B,	nRst,	$01
	dc.b		nFs5,	nG5,	$21,	nRst,	$02,	nBb4,	$01,	nB4
	dc.b		$06,	nRst,	$01,	nA4,	$07,	nRst,	$01,	nG4
	dc.b		$35,	nRst,	$03,	nD5,	$07,	nRst,	$01,	nB5
	dc.b		$0B,	nRst,	$01,	nFs5,	nG5,	$21,	nRst,	$02
	dc.b		nBb4,	$01,	nB4,	$06,	nRst,	$01,	nD5,	$07
	dc.b		nRst,	$01,	nC5,	$35,	nRst,	$0B,	nE4,	$1A
	dc.b		nRst,	$02,	nFs4,	nE4,	nEb4,	$1E,	nRst,	$02
	dc.b		nD4,	$1E,	nRst,	$02,	nB3,	$07,	nRst,	$01
	dc.b		nE4,	$07,	nRst,	$01,	nFs4,	$07,	nRst,	$01
	dc.b		nG4,	$07,	nRst,	$01,	nC5,	$0B,	nRst,	$01
	dc.b		nA4,	$0F,	nRst,	$01,	nC5,	$04,	nBb4,	$0B
	dc.b		nRst,	$01,	nF4,	$13,	nRst,	$01,	$40
	smpsJump	Ice_Paradise_Act1_PSG2

; PSG3 Data
Ice_Paradise_Act1_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$02
Ice_Paradise_Act1_Jump01:
	smpsPSGvoice	$02
	dc.b		nAb6,	$02
	smpsPSGvoice	$01
	dc.b		$02,	nRst,	$04
	smpsJump	Ice_Paradise_Act1_Jump01

; DAC Data
Ice_Paradise_Act1_DAC:
	dc.b		dCrashCymbal,	$08,	dPowerKick2,	$10,	$08,	dCrashCymbal,	$08,	dPowerKick2
	dc.b		$10,	$08,	dCrashCymbal,	$08,	dPowerKick2,	$10,	$10,	$08
	dc.b		$04,	dSnare,	$01,	$01,	$01,	$01,	$02,	dPowerKick2
	dc.b		$02,	dSnare,	dSnare,	dCrashCymbal,	$04,	dSnare
Ice_Paradise_Act1_Loop01:
	dc.b		dPowerKick2,	dSnare
	smpsLoop	$00,	$0F,	Ice_Paradise_Act1_Loop01
	dc.b		dCrashCymbal,	dSnare
Ice_Paradise_Act1_Loop02:
	dc.b		dPowerKick2,	dSnare
	smpsLoop	$00,	$1E,	Ice_Paradise_Act1_Loop02
	dc.b		dPowerKick2,	$02,	dSnare,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	dCrashCymbal,	$04,	dSnare
Ice_Paradise_Act1_Loop03:
	dc.b		dPowerKick2,	dSnare
	smpsLoop	$00,	$05,	Ice_Paradise_Act1_Loop03
	dc.b		dCrashCymbal,	$08,	$08,	$04,	dSnare,	$04
	smpsLoop	$01,	$02,	Ice_Paradise_Act1_Loop03
Ice_Paradise_Act1_Loop04:
	dc.b		dPowerKick2,	dSnare
	smpsLoop	$00,	$0E,	Ice_Paradise_Act1_Loop04
	dc.b		dPowerKick2,	$02,	dSnare,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	dCrashCymbal,	$04,	dSnare
Ice_Paradise_Act1_Loop05:
	dc.b		dPowerKick2,	dSnare
	smpsLoop	$00,	$0F,	Ice_Paradise_Act1_Loop05
	dc.b		dCrashCymbal,	dSnare
Ice_Paradise_Act1_Loop06:
	dc.b		dPowerKick2,	dSnare
	smpsLoop	$00,	$1E,	Ice_Paradise_Act1_Loop06
	dc.b		dPowerKick2,	$02,	dSnare,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	dCrashCymbal,	$04,	dSnare
Ice_Paradise_Act1_Loop07:
	dc.b		dPowerKick2,	dSnare
	smpsLoop	$00,	$1F,	Ice_Paradise_Act1_Loop07
	smpsJump	Ice_Paradise_Act1_DAC

Ice_Paradise_Act1_Voices:
	dc.b		$2C,$01,$71,$70,$00,$DE,$DF,$DC,$DC,$06,$07,$04,$05,$08,$08,$01
	dc.b		$08,$B6,$B6,$56,$B6,$19,$7F,$18,$7F;			Voice 00
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 01
	dc.b		$07,$34,$74,$32,$71,$1F,$1F,$1F,$1F,$0A,$0A,$05,$03,$00,$00,$00
	dc.b		$00,$3F,$3F,$2F,$2F,$8A,$8A,$8A,$80;			Voice 02
	dc.b		$3B,$46,$42,$42,$43,$10,$12,$19,$4F,$08,$05,$01,$01,$01,$01,$01
	dc.b		$01,$76,$F1,$F7,$F9,$41,$23,$2B,$7F;			Voice 03
	dc.b		$36,$02,$74,$31,$0F,$5F,$5F,$5F,$5F,$0C,$0D,$09,$10,$09,$08,$08
	dc.b		$10,$30,$35,$36,$D5,$2B,$00,$00,$00;			Voice 04
	even
