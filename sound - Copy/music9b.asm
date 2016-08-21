; =============================================================================================
; Project Name:		SS_SS
; Created:		19th July 2011
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SS_SS_Header:
	smpsHeaderVoice	SS_SS_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$02

	smpsHeaderDAC	SS_SS_DAC
	smpsHeaderFM	SS_SS_FM1,	smpsPitch00,	$10
	smpsHeaderFM	SS_SS_FM2,	smpsPitch00,	$10
	smpsHeaderFM	SS_SS_FM3,	smpsPitch00,	$10
	smpsHeaderFM	SS_SS_FM4,	smpsPitch00,	$10
	smpsHeaderFM	SS_SS_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	SS_SS_PSG1,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	SS_SS_PSG2,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	SS_SS_PSG3,	smpsPitch00+$0B,	$00,	$00

; FM1 Data
SS_SS_FM1:
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	dc.b		nB2,	$02,	nRst,	nB2,	nRst,	nFs3,	nRst,	nFs3
	dc.b		nRst,	nE3,	nRst,	nE3,	nRst,	nFs3,	nRst,	nFs3
	dc.b		nRst,	nB3,	nRst,	nB3,	nRst,	nFs3,	nRst,	nFs3
	dc.b		nRst,	nE3,	nRst,	nE3,	nRst,	nFs3,	nRst,	nFs3
	dc.b		nRst,	nB2,	nRst,	nB2,	nRst,	nFs3,	nRst,	nFs3
	dc.b		nRst,	nE3,	nRst,	nE3,	nRst,	nFs3,	nRst,	nFs3
	dc.b		nRst,	nA2,	nRst,	nA2,	nRst,	nE3,	nRst,	nE3
	dc.b		nRst,	nD3,	nRst,	nD3,	nRst,	nE3,	nRst,	nE3
	dc.b		nRst
	smpsJump	SS_SS_FM1

; FM2 Data
SS_SS_FM2:
	smpsPan		panCentre,	$00

SS_SS_Sequence_xD:
	smpsFMvoice	$00
	dc.b		nRst,	$7F,	$01
	dc.b		nFs4,	$04,	nD4,	nE4,	nD4,	nFs4,	nB3,	nAb4
	dc.b		nD4,	nRst,	nD5,	nCs5,	nB4,	nRst,	$0C,	nB4
	dc.b		$04,	nRst,	nD4,	nE4,	nB3,	nA4,	nRst,	$08
	dc.b		nA4,	$04,	nRst,	nD4,	nE4,	nB3,	nA4,	nB3
	dc.b		nE4,	nRst,	nFs4,	nD4,	nE4,	nD4,	nFs4,	nB3
	dc.b		nAb4,	nD4,	nRst,	nD5,	nCs5,	nB4,	nCs5,	nRst
	dc.b		$08,	nB4,	$04,	nRst,	nD4,	nE4,	nB3,	nA4
	dc.b		nRst,	$08,	nA4,	$04,	nRst,	nD4,	nE4,	nB3
	dc.b		nA4,	nB3,	nE4,	nRst,	$08,	nFs4,	$04,	nA4
	dc.b		nD4,	nA4,	nFs4,	nRst,	nD4,	nB4,	nFs4,	nRst
	dc.b		nFs4,	nA4,	nD4,	nD5,	nCs5,	nB4,	nD4,	nA4
	dc.b		nD4,	nA4,	nFs4,	nRst,	nD4,	nB4,	nFs4,	nRst
	dc.b		nCs4,	nA4,	nCs4,	nFs4,	nE4,	nRst,	nFs4,	nA4
	dc.b		nD4,	nA4,	nFs4,	nFs4,	nE4,	nB4,	nFs4,	nB4
	dc.b		nFs4,	nA4,	nD4,	nRst,	nD4,	nD5,	nFs4,	nRst
	dc.b		nFs4,	nCs5,	nFs4,	nRst,	nFs4,	nB4,	nFs4,	nRst
	dc.b		nE4,	nFs4,	nE4,	nA4,	nE4,	nB3,	$08,	nRst
	dc.b		$04,	nCs4,	$08,	nRst,	$04,	nD4,	$24,	nRst
	dc.b		$04,	nA4,	$1C,	nRst,	$04,	nAb4,	$1C,	nRst
	dc.b		$04,	nB3,	$08,	nRst,	$04,	nCs4,	nRst,	$08
	dc.b		nD4,	$24,	nRst,	$04
	smpsFMvoice	$02
	dc.b		nA5,	nAb5,	nG5,	nFs5
	dc.b		nF5,	nE5,	nEb5,	nD5,	nCs5,	nC5,	nB4,	nBb4
	dc.b		nA4,	nAb4,	nG4,	nFs4
	smpsFMvoice	$00
	dc.b		nB3,	$08	
	dc.b		nRst,	$04
	dc.b		nCs4,	$08,	nRst,	$04,	nD4,	$24,	nRst,	$04
	dc.b		nA4,	$1C,	nRst,	$04,	nAb4,	$1C,	nRst,	$04
	dc.b		nB3,	$08,	nRst,	$04,	nFs4,	nRst,	$08,	nD4
	dc.b		$24,	nRst,	$04
	smpsFMvoice	$02
	dc.b		nFs4,	nG4,	nAb4,	nA4,	nBb4
	dc.b		nB4,	nC5,	nCs5,	nD5,	nEb5,	nE5,	nF5,	nFs5
	dc.b		$1C,	nRst,	$0C	
	smpsFMvoice	$00
	dc.b		nB4,	$18,	nD5,	$10,	nCs5
	dc.b		$18,	nA4,	nE4,	$10
	smpsJump	SS_SS_FM2

; FM3 Data
SS_SS_FM3:
	smpsPan		panCentre,	$00

SS_Fm3xD:
	dc.b		nRst,	$7F,	$01
	smpsFMvoice	$00
	dc.b		nB4,	$04,	nB3,	nAb4,	nB3,	nA4,	nD4,	nE4
	dc.b		nB3,	nRst,	nFs4,	nE4,	nD4,	nRst,	$0C,	nFs4
	dc.b		$04,	nRst,	nB3,	nAb4,	nD4,	nFs4,	nRst,	$08
	dc.b		nFs4,	$04,	nRst,	nB3,	nAb4,	nD4,	nFs4,	nD4
	dc.b		nAb4,	nRst,	nB4,	nB3,	nAb4,	nB3,	nA4,	nD4
	dc.b		nE4,	nB3,	nRst,	nFs4,	nE4,	nD4,	nE4,	nRst
	dc.b		$08,	nFs4,	$04,	nRst,	nB3,	nAb4,	nD4,	nFs4
	dc.b		nRst,	$08,	nFs4,	$04,	nRst,	nB3,	nAb4,	nD4
	dc.b		nFs4,	nD4,	nAb4,	nRst,	$08,	nD4,	$04,	nD5
	dc.b		nFs4,	nCs5,	nD4,	nRst,	nFs4,	nA4,	nD4,	nRst
	dc.b		nD4,	nCs5,	nFs4,	nFs4,	nE4,	nD4,	nFs4,	nD5
	dc.b		nFs4,	nCs5,	nD4,	nRst,	nFs4,	nA4,	nD4,	nRst
	dc.b		nE4,	nFs4,	nE4,	nA4,	nCs4,	nRst,	nD4,	nD5
	dc.b		nFs4,	nCs5,	nD4,	nD5,	nCs5,	nD4,	nD4,	nA4
	dc.b		nD4,	nCs5,	nFs4,	nRst,	nFs4,	nA4,	nD4,	nRst
	dc.b		nD4,	nA4,	nD4,	nRst,	nD4,	nA4,	nD4,	nRst
	dc.b		nCs4,	nA4,	nCs4,	nFs4,	nCs4,	nFs4,	$08,	nRst
	dc.b		$04,	nFs4,	$08,	nRst,	$04,	nFs4,	$24,	nRst
	dc.b		$04,	nFs4,	$1C,	nRst,	$04,	nE4,	$1C,	nRst
	dc.b		$04,	nFs4,	$08,	nRst,	$04,	nFs4,	nRst,	$08
	dc.b		nFs4,	$24,	nRst,	$44,	nFs4,	$08,	nRst,	$04
	dc.b		nFs4,	$08,	nRst,	$04,	nFs4,	$24,	nRst,	$04
	dc.b		nFs4,	$1C,	nRst,	$04,	nE4,	$1C,	nRst,	$04
	dc.b		nFs4,	$08,	nRst,	$04,	nCs4,	nRst,	$08,	nFs4
	dc.b		$24,	nRst,	$44,	nFs4,	$18,	nRst,	$68
	smpsJump	SS_SS_FM3

; FM4 Data
SS_SS_FM4:
	smpsaltervol	$05
	smpsPan		panLeft,	$00
	dc.b		$01
	smpsJump	SS_Fm3xD

; FM5 Data
SS_SS_FM5:
	smpsaltervol	$05
	smpsPan		panRight,	$00
	dc.b		$02
	smpsJump	SS_SS_Sequence_xD

; PSG1 Data
SS_SS_PSG1:
	dc.b		$02
	smpsaltervol	$05
	smpspsgvoice	$04
SS_PSG1_xD:
	dc.b		nRst,	$7F,	$01
	smpsPan		panLeft,	$00
	dc.b		nFs4,	$04,	nD4,	nE4,	nD4,	nFs4,	nB3,	nAb4
	dc.b		nD4,	nRst,	nD5,	nCs5,	nB4,	nRst,	$0C,	nB4
	dc.b		$04,	nRst,	nD4,	nE4,	nB3,	nA4,	nRst,	$08
	dc.b		nA4,	$04,	nRst,	nD4,	nE4,	nB3,	nA4,	nB3
	dc.b		nE4,	nRst,	nFs4,	nD4,	nE4,	nD4,	nFs4,	nB3
	dc.b		nAb4,	nD4,	nRst,	nD5,	nCs5,	nB4,	nCs5,	nRst
	dc.b		$08,	nB4,	$04,	nRst,	nD4,	nE4,	nB3,	nA4
	dc.b		nRst,	$08,	nA4,	$04,	nRst,	nD4,	nE4,	nB3
	dc.b		nA4,	nB3,	nE4,	nRst,	$08,	nFs4,	$04,	nA4
	dc.b		nD4,	nA4,	nFs4,	nRst,	nD4,	nB4,	nFs4,	nRst
	dc.b		nFs4,	nA4,	nD4,	nD5,	nCs5,	nB4,	nD4,	nA4
	dc.b		nD4,	nA4,	nFs4,	nRst,	nD4,	nB4,	nFs4,	nRst
	dc.b		nCs4,	nA4,	nCs4,	nFs4,	nE4,	nRst,	nFs4,	nA4
	dc.b		nD4,	nA4,	nFs4,	nFs4,	nE4,	nB4,	nFs4,	nB4
	dc.b		nFs4,	nA4,	nD4,	nRst,	nD4,	nD5,	nFs4,	nRst
	dc.b		nFs4,	nCs5,	nFs4,	nRst,	nFs4,	nB4,	nFs4,	nRst
	dc.b		nE4,	nFs4,	nE4,	nA4,	nE4,	nB3,	$08,	nRst
	dc.b		$04,	nCs4,	$08,	nRst,	$04,	nD4,	$24,	nRst
	dc.b		$04,	nA4,	$1C,	nRst,	$04,	nAb4,	$1C,	nRst
	dc.b		$04,	nB3,	$08,	nRst,	$04,	nCs4,	nRst,	$08
	dc.b		nD4,	$24,	nRst,	$04
	dc.b		nrst,	nrst,	nrst,	nrst
	dc.b		nrst,	nrst,	nrst,	nrst,	nrst,	nrst,	nrst,	nrst
	dc.b		nrst,	nrst,	nrst,	nrst
	dc.b		nB3,	$08	
	dc.b		nRst,	$04
	dc.b		nCs4,	$08,	nRst,	$04,	nD4,	$24,	nRst,	$04
	dc.b		nA4,	$1C,	nRst,	$04,	nAb4,	$1C,	nRst,	$04
	dc.b		nB3,	$08,	nRst,	$04,	nFs4,	nRst,	$08,	nD4
	dc.b		$24,	nRst,	$04
	dc.b		nrst,	nrst,	nrst,	nrst,	nrst
	dc.b		nrst,	nrst,	nrst,	nrst,	nrst,	nrst,	nrst,	nrst
	dc.b		$1C,	nRst,	$0C	
	dc.b		nB4,	$18,	nD5,	$10,	nCs5
	dc.b		$18,	nA4,	nE4,	$10
	smpsjump	SS_psg1_xd
	smpsStop

; PSG2 Data
SS_SS_PSG2:
	dc.b		nRst,	$01
	smpsStop

; PSG3 Data
SS_SS_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$01
	smpsStop

; DAC Data
SS_SS_DAC:
	smpsPan		panCentre,	$00
	dc.b		dKick,	$04,	nRst,	dSnare,	nRst,	$0C,	dSnare,	$04
	dc.b		nRst,	$0C,	dSnare,	$04,	nRst,	$0C,	dSnare,	$04
	dc.b		dKick,	dKick,	nRst,	dSnare,	nRst,	$0C,	dSnare,	$04
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	$0C,	dSnare,	$04
	dc.b		dKick
	smpsJump	SS_SS_DAC

SS_SS_Voices:
	dc.b		$39,$0D,$01,$02,$01,$9F,$1F,$1F,$5F,$0A,$09,$09,$04,$08,$07,$07
	dc.b		$07,$24,$24,$24,$28,$22,$26,$24,$05;			Voice 00
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$80;			Voice 01
	dc.b		$34,$33,$01,$DE,$D4,$9B,$5F,$1F,$1F,$04,$07,$07,$08,$00,$00,$00
	dc.b		$00,$F6,$F7,$E4,$F7,$16,$11,$21,$06;			Voice 02
	even
