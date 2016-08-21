; =============================================================================================
; Project Name:		Carnival_Night_Act_1
; Created:		17th June 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Carnival_Night_Act_1_Header:
	smpsHeaderVoice	Carnival_Night_Act_1_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$04

	smpsHeaderDAC	Carnival_Night_Act_1_DAC
	smpsHeaderFM	Carnival_Night_Act_1_FM1,	smpsPitch00,	$0B
	smpsHeaderFM	Carnival_Night_Act_1_FM2,	smpsPitch00,	$06
	smpsHeaderFM	Carnival_Night_Act_1_FM3,	smpsPitch00,	$07
	smpsHeaderFM	Carnival_Night_Act_1_FM4,	smpsPitch00,	$05
	smpsHeaderFM	Carnival_Night_Act_1_FM5,	smpsPitch01hi,	$13
	smpsHeaderPSG	Carnival_Night_Act_1_PSG1,	smpsPitch02lo,	$04,	$00
	smpsHeaderPSG	Carnival_Night_Act_1_PSG2,	smpsPitch02lo,	$04,	$00
	smpsHeaderPSG	Carnival_Night_Act_1_PSG3,	smpsPitch02hi+$0B,	$02,	$00

; FM1 Data
Carnival_Night_Act_1_FM1:
	smpsModSet	$01,	$01,	$05,	$03
	smpsFMvoice	$03
	dc.b		nRst,	$60,	smpsNoAttack,	nRst,	$60
	smpsCall	Carnival_Night_Act_1_Call01
	dc.b		nRst,	$48
Carnival_Night_Act_1_Loop01:
	smpsFMvoice	$00
	smpsModSet	$0A,	$01,	$0C,	$03
	dc.b		nC5,	$13,	nB4,	$05
	smpsFMvoice	$00
	smpsModSet	$01,	$01,	$02,	$03
	smpsCall	Carnival_Night_Act_1_Call02
	smpsModSet	$10,	$01,	$15,	$04
	dc.b		nG4,	$30,	nRst,	$18
	smpsFMvoice	$03
	smpsModSet	$01,	$01,	$05,	$03
	smpsCall	Carnival_Night_Act_1_Call01
	dc.b		nRst,	$0C,	nEb4,	$05,	nRst,	$1F,	nC4,	$05
	dc.b		nRst,	$13
	smpsLoop	$00,	$02,	Carnival_Night_Act_1_Loop01
	dc.b		nRst,	$18
	smpsFMvoice	$04
	smpsModSet	$01,	$01,	$05,	$03
	dc.b		nG5,	$05,	nRst,	$07,	nFs5,	$05,	nRst,	$07
	dc.b		nF5,	nFs5,	$05
	smpsCall	Carnival_Night_Act_1_Call03
	dc.b		nB4,	nRst,	$07,	nBb4,	$05,	nRst,	$07,	nA4
	dc.b		nBb4,	$05,	nA4,	$07,	nAb4,	$05,	nG4,	$24
	dc.b		nRst,	$05,	nD5,	$07,	nG5,	nRst,	$05,	nFs5
	dc.b		$07,	nRst,	$05,	nF5,	$07,	nFs5,	$05
	smpsCall	Carnival_Night_Act_1_Call03
	dc.b		nRst,	$48
Carnival_Night_Act_1_Loop02:
	smpsFMvoice	$00
	smpsModSet	$0A,	$01,	$0C,	$03
	dc.b		nC5,	$13,	nB4,	$05
	smpsFMvoice	$00
	smpsModSet	$01,	$01,	$02,	$03
	smpsCall	Carnival_Night_Act_1_Call02
	smpsModSet	$10,	$01,	$15,	$04
	dc.b		nG4,	$30,	nRst,	$18
	smpsFMvoice	$03
	smpsModSet	$01,	$01,	$05,	$03
	smpsCall	Carnival_Night_Act_1_Call01
	dc.b		nRst,	$0C,	nEb4,	$05,	nRst,	$1F,	nC4,	$05
	dc.b		nRst,	$13
	smpsLoop	$00,	$02,	Carnival_Night_Act_1_Loop02
	dc.b		nRst,	$18
	smpsFMvoice	$04
	smpsModSet	$01,	$01,	$05,	$03
	dc.b		nG5,	$05,	nRst,	$07,	nFs5,	$05,	nRst,	$07
	dc.b		nF5,	nFs5,	$05,	nF5,	$07,	nE5,	$05,	nEb5
	dc.b		nRst,	$07,	nD5,	$05,	nRst,	$07,	nCs5,	nD5
	dc.b		$05,	nCs5,	$07,	nC5,	$05,	nB4,	nRst,	$07
	dc.b		nBb4,	$05,	nRst,	$07,	nBb4,	nB4,	$05,	nC5
	dc.b		$07,	nCs5,	$05,	nD5,	$24,	nRst,	$05,	nD5
	dc.b		$07,	nG5,	$05,	nRst,	$07,	nFs5,	$05,	nRst
	dc.b		$07,	nF5,	nFs5,	$05,	nF5,	$07,	nE5,	$05
	dc.b		nEb5,	nRst,	$07,	nD5,	$05,	nRst,	$07,	nCs5
	dc.b		nD5,	$05,	nCs5,	$07,	nC5,	$05,	nB4,	nRst
	dc.b		$07,	nBb4,	$05,	nRst,	$07,	nA4,	nBb4,	$05
	dc.b		nA4,	$07,	nAb4,	$05,	nG4,	$24,	nRst,	$05
	dc.b		nD5,	$07,	nG5,	nRst,	$05,	nFs5,	$07,	nRst
	dc.b		$05,	nF5,	$07,	nFs5,	$05,	nF5,	$07,	nE5
	dc.b		$05,	nEb5,	$07,	nRst,	$05,	nD5,	$07,	nRst
	dc.b		$05,	nCs5,	$07,	nD5,	$05,	nCs5,	$07,	nC5
	dc.b		$05
	smpsAlterPitch	$F4
	smpsCall	Carnival_Night_Act_1_Call04
	smpsAlterPitch	$0C
	smpsJump	Carnival_Night_Act_1_FM1

Carnival_Night_Act_1_Call01:
	dc.b		nE5,	$05,	nRst,	$07,	nEb5,	$05,	nRst,	$07
	dc.b		nD5,	nEb5,	$05,	nD5,	$07,	nCs5,	$05,	nC5
	dc.b		nRst,	$07,	nB4,	$05,	nRst,	$07,	nBb4,	$0C
	dc.b		nA4,	$05,	nRst,	$07
	smpsReturn

Carnival_Night_Act_1_Call02:
	dc.b		nD5,	$06,	nRst,	nC5,	nRst,	nB4,	nRst,	nC5
	dc.b		nRst,	nG4,	nRst,	nA4,	$05,	nRst,	$07,	nC5
	dc.b		$0C,	nB4,	nG4,	nRst
	smpsReturn

Carnival_Night_Act_1_Call03:
	dc.b		nF5,	$07,	nE5,	$05,	nEb5,	nRst,	$07,	nD5
	dc.b		$05,	nRst,	$07,	nCs5,	nD5,	$05,	nCs5,	$07
	dc.b		nC5,	$05
	smpsReturn

Carnival_Night_Act_1_Call04:
	smpsFMvoice	$05
	dc.b		nC5,	$18
	smpsNoteFill	$06
	dc.b		nFs4,	$08,	nB4,	nE5,	nEb5,	nA4,	nD5,	nCs5
	dc.b		$18
	smpsNoteFill	$00
	dc.b		nC5,	$18,	nRst,	$48
	smpsReturn

; FM2 Data
Carnival_Night_Act_1_FM2:
	smpsFMvoice	$01
Carnival_Night_Act_1_Loop03:
	dc.b		nC2,	$0C,	nRst,	$18,	nC2,	$0C,	nRst,	$30
	smpsLoop	$00,	$03,	Carnival_Night_Act_1_Loop03
	dc.b		nRst,	$60
Carnival_Night_Act_1_Loop04:
	dc.b		nC2,	$0C,	nRst,	$18,	nC2,	$0C,	nRst,	$30
	smpsLoop	$00,	$08,	Carnival_Night_Act_1_Loop04
	smpsCall	Carnival_Night_Act_1_Call05
	dc.b		nG2,	$06,	nRst,	nG2,	nRst,	$2A,	nG2,	$1E
	dc.b		nRst,	$06,	nRst,	$60
Carnival_Night_Act_1_Loop05:
	dc.b		nC2,	$0C,	nRst,	$18,	nC2,	$0C,	nRst,	$30
	smpsLoop	$00,	$08,	Carnival_Night_Act_1_Loop05
Carnival_Night_Act_1_Loop06:
	smpsCall	Carnival_Night_Act_1_Call05
	smpsLoop	$00,	$02,	Carnival_Night_Act_1_Loop06
	dc.b		nG2,	$06,	nRst,	nG2,	nRst,	$2A,	nG2,	$1E
	dc.b		nRst,	$06
	smpsCall	Carnival_Night_Act_1_Call04
	smpsJump	Carnival_Night_Act_1_FM2

Carnival_Night_Act_1_Call05:
	dc.b		nG2,	$06,	nRst,	nG2,	nRst,	$2A,	nG2,	$1E
	dc.b		nRst,	$06,	nG2,	nRst,	nG2,	$2A,	nRst,	$06
	dc.b		nG2,	$0C,	nF2,	nFs2
	smpsReturn

; FM3 Data
Carnival_Night_Act_1_FM3:
	smpsPan		panLeft,	$00
	smpsNoteFill	$06
	smpsFMvoice	$02
	dc.b		nRst,	$0C,	nG4,	$18,	nG4,	nG4,	nG4,	$0C
	smpsLoop	$00,	$03,	Carnival_Night_Act_1_FM3
	dc.b		nRst,	$60
Carnival_Night_Act_1_Loop07:
	smpsNoteFill	$06
	smpsFMvoice	$02
	dc.b		nRst,	$0C,	nG4,	$18,	nG4,	nG4,	nG4,	$0C
	smpsLoop	$00,	$08,	Carnival_Night_Act_1_Loop07
	smpsNoteFill	$00
	smpsFMvoice	$03
	smpsCall	Carnival_Night_Act_1_Call06
	dc.b		nRst,	$0C,	nD4,	nRst,	$07,	nD4,	$05,	nRst
	dc.b		$0C,	nD4,	$05,	nRst,	$07,	nRst,	$24,	nRst
	dc.b		$60
Carnival_Night_Act_1_Loop08:
	smpsNoteFill	$06
	smpsFMvoice	$02
	dc.b		nRst,	$0C,	nG4,	$18,	nG4,	nG4,	nG4,	$0C
	smpsLoop	$00,	$08,	Carnival_Night_Act_1_Loop08
Carnival_Night_Act_1_Loop09:
	smpsNoteFill	$00
	smpsFMvoice	$03
	smpsCall	Carnival_Night_Act_1_Call06
	smpsLoop	$00,	$02,	Carnival_Night_Act_1_Loop09
	dc.b		nRst,	$0C,	nD4,	nRst,	$07,	nD4,	$05,	nRst
	dc.b		$0C,	nD4,	$05,	nRst,	$07,	nRst,	$24
	smpsCall	Carnival_Night_Act_1_Call04
	smpsJump	Carnival_Night_Act_1_FM3

Carnival_Night_Act_1_Call06:
	dc.b		nRst,	$0C,	nD4,	nRst,	$07,	nD4,	$05,	nRst
	dc.b		$0C,	nD4,	$05,	nRst,	$07,	nRst,	$24,	nRst
	dc.b		$0C,	nG3,	$0C,	nRst,	$07,	nG3,	$05,	nRst
	dc.b		$0C,	nG3,	$05,	nRst,	$2B
	smpsReturn

; FM4 Data
Carnival_Night_Act_1_FM4:
	smpsPan		panRight,	$00
	smpsNoteFill	$06
	smpsFMvoice	$02
	dc.b		nC4,	$0C,	nE4,	nG3,	nE4,	nC4,	nE4,	nG3
	dc.b		nE4
	smpsLoop	$00,	$03,	Carnival_Night_Act_1_FM4
	dc.b		nRst,	$60
Carnival_Night_Act_1_Loop0A:
	smpsNoteFill	$06
	smpsFMvoice	$02
	dc.b		nC4,	$0C,	nE4,	nG3,	nE4,	nC4,	nE4,	nG3
	dc.b		nE4
	smpsLoop	$00,	$08,	Carnival_Night_Act_1_Loop0A
	smpsNoteFill	$00
	smpsFMvoice	$03
	smpsCall	Carnival_Night_Act_1_Call07
	dc.b		nRst,	$0C,	nF3,	nG2,	$07,	nF3,	$05,	nRst
	dc.b		$07,	nG2,	$05,	nF3,	nRst,	$13,	nF3,	$07
	dc.b		nG3,	$05,	nF3,	$07,	nC3,	$05,	nRst,	$60
Carnival_Night_Act_1_Loop0B:
	smpsNoteFill	$06
	smpsFMvoice	$02
	dc.b		nC4,	$0C,	nE4,	nG3,	nE4,	nC4,	nE4,	nG3
	dc.b		nE4
	smpsLoop	$00,	$08,	Carnival_Night_Act_1_Loop0B
Carnival_Night_Act_1_Loop0C:
	smpsNoteFill	$00
	smpsFMvoice	$03
	smpsCall	Carnival_Night_Act_1_Call07
	smpsLoop	$00,	$02,	Carnival_Night_Act_1_Loop0C
	dc.b		nRst,	$0C,	nF3,	nG2,	$07,	nF3,	$05,	nRst
	dc.b		$07,	nG2,	$05,	nF3,	nRst,	$13,	nF3,	$07
	dc.b		nG3,	$05,	nF3,	$07,	nC3,	$05
	smpsCall	Carnival_Night_Act_1_Call04
	smpsJump	Carnival_Night_Act_1_FM4

Carnival_Night_Act_1_Call07:
	dc.b		nRst,	$0C,	nF3,	nG2,	$07,	nF3,	$05,	nRst
	dc.b		$07,	nG2,	$05,	nF3,	nRst,	$13,	nF3,	$07
	dc.b		nG3,	$05,	nF3,	$07,	nC3,	$05,	nC2,	$05
	dc.b		nRst,	$13,	nC3,	$05,	nRst,	$07,	nRst,	nC3
	dc.b		$05,	nRst,	$13,	nG2,	$05,	nBb2,	$07,	nC3
	dc.b		$05,	nBb2,	$07,	nG2,	$05
	smpsReturn

; FM5 Data
Carnival_Night_Act_1_FM5:
	smpsFMvoice	$03
	dc.b		nRst,	$60,	nRst,	$60,	nC5,	$06,	nRst,	nB4
	dc.b		nRst,	nBb4,	$07,	nB4,	$05,	nBb4,	$07,	nA4
	dc.b		$05,	nAb4,	$05,	nRst,	$07,	nG4,	$05,	nRst
	dc.b		$07,	nFs4,	$0C,	nF4,	$05,	nRst,	$07
	smpsModSet	$0A,	$01,	$0C,	$03
	dc.b		nRst,	$02,	nRst,	$48,	nC5,	$13,	nB4,	$03
	smpsFMvoice	$00
	smpsModSet	$01,	$01,	$02,	$03
	dc.b		nRst,	$02
	smpsCall	Carnival_Night_Act_1_Call02
	smpsModSet	$10,	$01,	$15,	$04
	dc.b		nG4,	$30,	nRst,	$16
	smpsFMvoice	$03
	dc.b		nC5,	$06,	nRst,	nB4,	nRst,	nBb4,	$07,	nB4
	dc.b		$05,	nBb4,	$07,	nA4,	$05,	nAb4,	$05,	nRst
	dc.b		$07,	nG4,	$05,	nRst,	$07,	nFs4,	$0C,	nF4
	dc.b		$05,	nRst,	$07,	nRst,	$0C,	nBb3,	$05,	nRst
	dc.b		$07,	nF3,	nG3,	$05,	nF3,	nRst,	$07,	nG3
	dc.b		$05,	nRst,	$07,	nF3,	$05,	nRst,	$07
	smpsFMvoice	$00
	smpsModSet	$0A,	$01,	$0C,	$03
	dc.b		nRst,	$02,	nC5,	$13,	nB4,	$05
	smpsFMvoice	$00
	smpsModSet	$01,	$01,	$02,	$03
	smpsCall	Carnival_Night_Act_1_Call02
	smpsModSet	$10,	$01,	$15,	$04
	dc.b		nG4,	$30,	nRst,	$16
	smpsFMvoice	$03
	dc.b		nC5,	$05,	nRst,	$07,	nB4,	$05,	nRst,	$07
	dc.b		nBb4,	nB4,	$05,	nBb4,	$07,	nA4,	$05,	nAb4
	dc.b		nRst,	$07,	nG4,	$05,	nRst,	$07,	nFs4,	$0C
	dc.b		nF4,	$05,	nRst,	$07,	nRst,	$0C,	nBb3,	$05
	dc.b		nRst,	$07,	nF3,	nG3,	$05,	nF3,	nRst,	$07
	dc.b		nG3,	$05,	nRst,	$07,	nF3,	nG3,	$05,	nF3
	dc.b		$07,	nBb3,	$05,	nG3,	nRst,	$07
	smpsCall	Carnival_Night_Act_1_Call08
	dc.b		nRst,	$0C,	nA3,	$0C,	nRst,	$07,	nA3,	$05
	dc.b		nRst,	$0C,	nA3,	$05,	nRst,	$2B,	nRst,	$60
	smpsFMvoice	$00
	smpsModSet	$01,	$01,	$02,	$03
	dc.b		nRst,	$02
	smpsCall	Carnival_Night_Act_1_Call02
	smpsModSet	$10,	$01,	$15,	$04
	dc.b		nG4,	$30,	nRst,	$16
	smpsFMvoice	$03
	dc.b		nC5,	$06,	nRst,	nB4,	nRst,	nBb4,	$07,	nB4
	dc.b		$05,	nBb4,	$07,	nA4,	$05,	nAb4,	$05,	nRst
	dc.b		$07,	nG4,	$05,	nRst,	$07,	nFs4,	$0C,	nF4
	dc.b		$05,	nRst,	$07,	nRst,	$0C,	nBb3,	$05,	nRst
	dc.b		$07,	nF3,	nG3,	$05,	nF3,	nRst,	$07,	nG3
	dc.b		$05,	nRst,	$07,	nF3,	$05,	nRst,	$07
	smpsFMvoice	$00
	smpsModSet	$0A,	$01,	$0C,	$03
	dc.b		nRst,	$02,	nC5,	$13,	nB4,	$05
	smpsFMvoice	$00
	smpsModSet	$01,	$01,	$02,	$03
	smpsCall	Carnival_Night_Act_1_Call02
	smpsModSet	$10,	$01,	$15,	$04
	dc.b		nG4,	$30,	nRst,	$16
	smpsFMvoice	$03
	dc.b		nC5,	$05,	nRst,	$07,	nB4,	$05,	nRst,	$07
	dc.b		nBb4,	nB4,	$05,	nBb4,	$07,	nA4,	$05,	nAb4
	dc.b		nRst,	$07,	nG4,	$05,	nRst,	$07,	nFs4,	$0C
	dc.b		nF4,	$05,	nRst,	$07,	nRst,	$0C,	nBb3,	$05
	dc.b		nRst,	$07,	nF3,	nG3,	$05,	nF3,	nRst,	$07
	dc.b		nG3,	$05,	nRst,	$07,	nF3,	nG3,	$05,	nF3
	dc.b		$07,	nBb3,	$05,	nG3,	nRst,	$07
Carnival_Night_Act_1_Loop0D:
	smpsCall	Carnival_Night_Act_1_Call08
	smpsLoop	$00,	$02,	Carnival_Night_Act_1_Loop0D
	dc.b		nRst,	$0C,	nA3,	$0C,	nRst,	$07,	nA3,	$05
	dc.b		nRst,	$0C,	nA3,	$05,	nRst,	$2B
	smpsCall	Carnival_Night_Act_1_Call04
	smpsJump	Carnival_Night_Act_1_FM5

Carnival_Night_Act_1_Call08:
	dc.b		nRst,	$0C,	nA3,	$0C,	nRst,	$07,	nA3,	$05
	dc.b		nRst,	$3C,	nRst,	$0C,	nF3,	$0C,	nRst,	$07
	dc.b		nF3,	$05,	nRst,	$0C,	nE3,	$05,	nRst,	$2B
	smpsReturn

; PSG1 Data
Carnival_Night_Act_1_PSG1:
	smpsNoteFill	$06
	smpsPSGvoice	$0D+$05
	dc.b		nRst,	$0C,	nG4,	$18,	nG4,	nG4,	nG4,	$0C
	smpsLoop	$00,	$03,	Carnival_Night_Act_1_PSG1
	dc.b		nRst,	$60
Carnival_Night_Act_1_Loop0E:
	smpsNoteFill	$06
	smpsPSGvoice	$0D+$05
	dc.b		nRst,	$0C,	nG4,	$18,	nG4,	nG4,	nG4,	$0C
	smpsLoop	$00,	$08,	Carnival_Night_Act_1_Loop0E
	smpsNoteFill	$00
	smpsPSGvoice	$0D+$04
	smpsCall	Carnival_Night_Act_1_Call06
	dc.b		nRst,	$0C,	nD4,	nRst,	$07,	nD4,	$05,	nRst
	dc.b		$0C,	nD4,	$05,	nRst,	$07,	nRst,	$24,	nRst
	dc.b		$60
Carnival_Night_Act_1_Loop0F:
	smpsNoteFill	$06
	smpsPSGvoice	$0D+$05
	dc.b		nRst,	$0C,	nG4,	$18,	nG4,	nG4,	nG4,	$0C
	smpsLoop	$00,	$08,	Carnival_Night_Act_1_Loop0F
Carnival_Night_Act_1_Loop10:
	smpsNoteFill	$00
	smpsPSGvoice	$0D+$04
	smpsCall	Carnival_Night_Act_1_Call06
	smpsLoop	$00,	$02,	Carnival_Night_Act_1_Loop10
	dc.b		nRst,	$0C,	nD4,	nRst,	$07,	nD4,	$05,	nRst
	dc.b		$0C,	nD4,	$05,	nRst,	$07,	nRst,	$24,	nRst
	dc.b		$60,	nRst
	smpsJump	Carnival_Night_Act_1_PSG1

; PSG2 Data
Carnival_Night_Act_1_PSG2:
	smpsPSGvoice	$0D+$12
	smpsNoteFill	$06
	dc.b		nC4,	$0C,	nE4,	nG3,	nE4,	nC4,	nE4,	nG3
	dc.b		nE4
	smpsLoop	$00,	$03,	Carnival_Night_Act_1_PSG2
	dc.b		nRst,	$60
	smpsPSGvoice	$0D+$12
Carnival_Night_Act_1_Loop11:
	smpsNoteFill	$06
	dc.b		nC4,	$0C,	nE4,	nG3,	nE4,	nC4,	nE4,	nG3
	dc.b		nE4
	smpsLoop	$00,	$08,	Carnival_Night_Act_1_Loop11
	smpsNoteFill	$00
	smpsPSGvoice	$0D+$11
	dc.b		nRst,	$0C,	nF3,	nG2,	$07,	nF3,	$05,	nRst
	dc.b		$07,	nG2,	$05,	nF3,	nRst,	$13,	nF3,	$07
	dc.b		nG3,	$05,	nF3,	$07,	nC3,	$05,	nC2,	$05
	dc.b		nRst,	$13,	nC3,	$05,	nRst,	$07,	nRst,	nC3
	dc.b		$05,	nRst,	$13,	nG2,	$05,	nBb2,	$07,	nC3
	dc.b		$05,	nBb2,	$07,	nG2,	$05,	nRst,	$0C,	nF3
	dc.b		nG2,	$07,	nF3,	$05,	nRst,	$07,	nG2,	$05
	dc.b		nF3,	nRst,	$13,	nF3,	$07,	nG3,	$05,	nF3
	dc.b		$07,	nC3,	$05,	nRst,	$60
Carnival_Night_Act_1_Loop12:
	smpsNoteFill	$06
	smpsPSGvoice	$0D+$12
	dc.b		nC4,	$0C,	nE4,	nG3,	nE4,	nC4,	nE4,	nG3
	dc.b		nE4
	smpsLoop	$00,	$08,	Carnival_Night_Act_1_Loop12
Carnival_Night_Act_1_Loop13:
	smpsNoteFill	$00
	smpsPSGvoice	$0D+$11
	smpsCall	Carnival_Night_Act_1_Call07
	smpsLoop	$00,	$02,	Carnival_Night_Act_1_Loop13
	dc.b		nRst,	$0C,	nF3,	nG2,	$07,	nF3,	$05,	nRst
	dc.b		$07,	nG2,	$05,	nF3,	nRst,	$13,	nF3,	$07
	dc.b		nG3,	$05,	nF3,	$07,	nC3,	$05,	nRst,	$60
	dc.b		nRst
	smpsJump	Carnival_Night_Act_1_PSG2

; PSG3 Data
Carnival_Night_Act_1_PSG3:
	smpsPSGvoice	$0D+$02
	smpsPSGform	$E7
Carnival_Night_Act_1_Loop14:
	smpsCall	Carnival_Night_Act_1_Call09
	smpsLoop	$00,	$03,	Carnival_Night_Act_1_Loop14
	dc.b		nC4,	$0C,	nRst,	$54
Carnival_Night_Act_1_Loop15:
	smpsCall	Carnival_Night_Act_1_Call09
	smpsLoop	$00,	$0B,	Carnival_Night_Act_1_Loop15
	dc.b		nC4,	$0C,	nRst,	$54
Carnival_Night_Act_1_Loop16:
	smpsCall	Carnival_Night_Act_1_Call09
	smpsLoop	$00,	$0D,	Carnival_Night_Act_1_Loop16
	dc.b		nC4,	$0C,	nRst,	$54,	nRst,	$60
	smpsJump	Carnival_Night_Act_1_Loop14

Carnival_Night_Act_1_Call09:
	dc.b		nC4,	$08,	$04,	$04,	nRst,	$08
	smpsSetVol	$FE
	dc.b		nC4,	$04
	smpsSetVol	$02
	dc.b		nRst,	$08,	nC4,	$08,	$04,	nC4,	nRst,	$14
	smpsSetVol	$FE
	dc.b		nC4,	$04
	smpsSetVol	$02
	dc.b		nRst,	$14
	smpsReturn

; DAC Data
Carnival_Night_Act_1_DAC:
	dc.b	dPowerKick, $0C, dClick, dQuickGlassCrash, $24, dPowerKick, $0C, dQuickGlassCrash, dQuickGlassCrash
	smpsLoop	$00,	$03,	Carnival_Night_Act_1_DAC
	dc.b	dGlassCrashKick, $48, dQuietGlassCrash, $18
Carnival_Night_Act_1_Loop17:
	dc.b	dPowerKick, $0C, dClick, dQuickGlassCrash, $24, dPowerKick, $0C, dQuickGlassCrash, dQuickGlassCrash
	smpsLoop	$00,	$0B,	Carnival_Night_Act_1_Loop17
	dc.b	dGlassCrashKick, $48, dQuietGlassCrash, $18
Carnival_Night_Act_1_Loop18:
	dc.b	dPowerKick, $0C, dClick, dQuickGlassCrash, $24, dPowerKick, $0C, dQuickGlassCrash, dQuickGlassCrash
	smpsLoop	$00,	$0D,	Carnival_Night_Act_1_Loop18
	dc.b	dGlassCrashSnare, $60, dGlassCrash
	smpsJump	Carnival_Night_Act_1_DAC

Carnival_Night_Act_1_Voices:
	dc.b		$3B,$01,$02,$04,$02,$18,$1B,$19,$16,$1C,$19,$1D,$1F,$0A,$02,$02
	dc.b		$03,$0F,$1F,$1F,$1E,$26,$1B,$1B,$80;			Voice 00
	dc.b		$25,$31,$12,$0A,$22,$1F,$1F,$1F,$1F,$0E,$0B,$10,$0E,$10,$00,$00
	dc.b		$00,$E7,$3F,$3F,$3F,$0B,$88,$88,$88;			Voice 01
	dc.b		$3B,$04,$32,$03,$01,$14,$0E,$12,$4E,$00,$10,$12,$0C,$00,$00,$00
	dc.b		$00,$0F,$5F,$9F,$2F,$00,$3E,$26,$80;			Voice 02
	dc.b		$3B,$0C,$02,$03,$02,$59,$1C,$1E,$1F,$0C,$04,$08,$07,$02,$03,$03
	dc.b		$04,$EF,$DF,$DF,$DF,$30,$2A,$2A,$80;			Voice 03
	dc.b		$3B,$72,$02,$32,$02,$6C,$1B,$12,$12,$05,$07,$02,$10,$03,$00,$00
	dc.b		$00,$EF,$FF,$2F,$1F,$2A,$33,$30,$80;			Voice 04
	dc.b		$03,$02,$03,$10,$11,$15,$10,$12,$18,$10,$0C,$1C,$0D,$00,$1A,$00
	dc.b		$16,$3F,$5F,$6F,$5B,$0F,$18,$1C,$84;			Voice 05
	even
