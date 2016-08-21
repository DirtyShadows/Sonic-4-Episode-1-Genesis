; =============================================================================================
; Project Name:		MGZ3
; Created:		18th January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

MGZ3_Header:
	smpsHeaderVoice	MGZ3_Voices
	smpsHeaderChan	$05,	$02
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	MGZ3_DAC
	smpsHeaderFM	MGZ3_FM1,	smpsPitch00,	$10
	smpsHeaderFM	MGZ3_FM2,	smpsPitch00,	$10
	smpsHeaderFM	MGZ3_FM3,	smpsPitch00,	$10
	smpsHeaderFM	MGZ3_FM4,	smpsPitch00,	$10
	smpsHeaderPSG	MGZ3_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	MGZ3_PSG2,	smpsPitch03lo,	$02,	$00

; FM1 Data
MGZ3_FM1:
	smpsCall	MGZ3_Call01
	smpsCall	MGZ3_Call02
	smpsCall	MGZ3_Call02
	smpsCall	MGZ3_Call03
	smpsCall	MGZ3_Call04
	smpsCall	MGZ3_Call05
	smpsJump	MGZ3_FM1

; FM2 Data
MGZ3_FM2:
	smpsCall	MGZ3_Call06
	smpsCall	MGZ3_Call07
	smpsCall	MGZ3_Call08
	smpsCall	MGZ3_Call09
	smpsCall	MGZ3_Call0A
	smpsCall	MGZ3_Call0B
	smpsJump	MGZ3_FM2

; FM3 Data
MGZ3_FM3:
	smpsCall	MGZ3_Call0C
	smpsCall	MGZ3_Call0D
	smpsCall	MGZ3_Call0E
	smpsCall	MGZ3_Call0F
	smpsCall	MGZ3_Call10
	smpsCall	MGZ3_Call11
	smpsJump	MGZ3_FM3

; FM4 Data
MGZ3_FM4:
	smpsCall	MGZ3_Call12
	smpsCall	MGZ3_Call13
	smpsCall	MGZ3_Call14
	smpsCall	MGZ3_Call15
	smpsCall	MGZ3_Call16
	smpsCall	MGZ3_Call17
	smpsJump	MGZ3_FM4

; PSG1 Data
MGZ3_PSG1:
	smpsCall	MGZ3_Call18
	smpsCall	MGZ3_Call19
	smpsCall	MGZ3_Call1A
	smpsCall	MGZ3_Call1B
	smpsCall	MGZ3_Call19
	smpsCall	MGZ3_Call1A
	smpsJump	MGZ3_PSG1

; PSG2 Data
MGZ3_PSG2:
	smpsCall	MGZ3_Call1C
	smpsCall	MGZ3_Call1D
	smpsCall	MGZ3_Call1E
	smpsCall	MGZ3_Call1F
	smpsCall	MGZ3_Call20
	smpsCall	MGZ3_Call21
	smpsJump	MGZ3_PSG2

; DAC Data
MGZ3_DAC:
	smpsCall	MGZ3_Call22
	smpsCall	MGZ3_Call23
	smpsCall	MGZ3_Call23
	smpsCall	MGZ3_Call24
	smpsCall	MGZ3_Call25
	smpsCall	MGZ3_Call26
	smpsJump	MGZ3_DAC

MGZ3_Call01:
	smpsFMvoice	$00
	dc.b		nA1,	$04,	nA1,	nRst,	nB1,	nC2,	nG1,	nRst
	dc.b		$08,	nF1,	$04,	nC2,	nF2,	nE2,	$08,	nB2
	dc.b		$04,	nE3,	$08,	nA1,	$04,	nA1,	nRst,	nB1
	dc.b		nC2,	nG1,	nRst,	$08,	nF1,	$04,	nC2,	nF2
	dc.b		nE2,	$08,	nB2,	$04,	nE3,	$08
	smpsReturn

MGZ3_Call02:
	dc.b		nA1,	$04,	nA2,	nA1,	nA2,	nA1,	nA2,	nA1
	dc.b		nA2,	nG1,	nG2,	nG1,	nG2,	nG1,	nG2,	nG1
	dc.b		nG2,	nF1,	nF2,	nF1,	nF2,	nF1,	nF2,	nF1
	dc.b		nF2,	nG1,	nG2,	nG1,	nG2,	nG1,	nG2,	nG1
	dc.b		nG2
	smpsReturn

MGZ3_Call03:
	dc.b		nA1,	$04,	nA2,	nA1,	nB1,	nC2,	$08,	nD2
	dc.b		$04,	nEb2,	$10,	nRst,	$08,	nG2,	$04,	nC2
	dc.b		$08,	nA1,	$04,	nA2,	nA1,	nB1,	nC2,	$08
	dc.b		nD2,	$04,	nEb2,	$10,	nRst,	$08,	nG2,	$04
	dc.b		nC2,	$08
	smpsReturn

MGZ3_Call04:
	dc.b		nA1,	$0A,	nRst,	nA1,	$02,	nA2,	nA1,	$04
	dc.b		nG1,	$08,	nB1,	$04,	nD2,	nG2,	$08,	nF2
	dc.b		$04,	nE2,	nC2,	nF1,	$0A,	nRst,	nF1,	$02
	dc.b		nF2,	nF1,	$04,	nG1,	$08,	nC2,	$04,	nD2
	dc.b		nG2,	$08,	nF2,	$04,	nE2,	nC2
	smpsReturn

MGZ3_Call05:
	dc.b		nA1,	$04,	nA2,	nA1,	nA2,	nA1,	nC2,	nE2
	dc.b		nG2,	$08,	$04,	nF2,	nF2,	nE2,	nE2,	nD2
	dc.b		nC2,	nF1,	nF2,	nF1,	nF2,	nF1,	nAb1,	nC2
	dc.b		nE2,	$08,	$04,	nD2,	nEb2,	nE2,	nD2,	nC2
	dc.b		nG1
	smpsReturn

MGZ3_Call06:
	smpsFMvoice	$01
	dc.b		nA5,	$04,	nE5,	nRst,	nA5,	nD5,	nB4,	nRst
	dc.b		$08,	nC5,	$04,	nA4,	nD5,	nE5,	$10,	nRst
	dc.b		$04,	nE5,	nE5,	nRst,	nE5,	nG5,	nG4,	nRst
	dc.b		$08,	nC5,	$04,	nC5,	nD5,	nE5,	$10,	nRst
	dc.b		$04
	smpsReturn

MGZ3_Call07:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$05
	dc.b		nC4,	nE4,	nRst,	nA4,	nC4,	nRst,	nC4,	nD4
	dc.b		$0C,	nB4,	$14,	nRst,	$04,	nC4,	nC4,	nRst
	dc.b		nC5,	nC5,	nRst,	nC5,	nD4,	$0C,	nB4,	$08
	dc.b		nD4,	$04,	nB5,	$08
	smpsReturn

MGZ3_Call08:
	dc.b		nRst,	$04,	nA4,	nE4,	nRst,	nC5,	nC4,	nRst
	dc.b		nC4,	nD5,	$0C,	nE4,	$14,	nRst,	$04,	nA4
	dc.b		nC5,	nRst,	nC4,	nC4,	nRst,	nA5,	nD4,	$0C
	dc.b		nB4,	$08,	nC6,	$04,	nD4,	$08
	smpsReturn

MGZ3_Call09:
	dc.b		nRst,	$04
	smpsFMvoice	$02
	dc.b		nA5,	nA5,	$02,	nE5,	$04,	$02,	nG5,	$06
	dc.b		$02,	$04,	nEb5,	$02,	nG5,	nRst,	nFs5,	$08
	dc.b		nRst,	$1A,	nA5,	$04,	$02,	nE5,	$04,	$02
	dc.b		nG5,	$06,	$02,	$04,	nEb5,	$02,	nG5,	nRst
	dc.b		nFs5,	$08,	nRst,	$16
	smpsReturn

MGZ3_Call0A:
	smpsFMvoice	$01
	dc.b		nE6,	$04,	nA5,	nC7,	nA6,	nD6,	nE7,	nG7
	dc.b		nE7,	$20,	nRst,	$04,	nE7,	nA5,	nC6,	nA5
	dc.b		nD6,	nE6,	nG7,	nF6,	$0C,	nE7,	$08,	nD6
	dc.b		nC7
	smpsReturn

MGZ3_Call0B:
	dc.b		nE7,	$04,	nA6,	nC6,	nA6,	nD6,	nE7,	nG7
	dc.b		nE7,	$20,	nRst,	$04,	nE6,	nA6,	nC7,	nA6
	dc.b		nD7,	nE7,	nG6,	nE6,	$0C,	nD6,	$08,	nC7
	dc.b		nE7
	smpsReturn

MGZ3_Call0C:
	smpsFMvoice	$01
	dc.b		nE5,	$04,	nC5,	nRst,	nE5,	nG5,	nD5,	nRst
	dc.b		$08,	nF4,	$04,	nC5,	nBb4,	nB4,	$10,	nRst
	dc.b		$04,	nA5,	nC5,	nRst,	nA5,	nC5,	nD5,	nRst
	dc.b		$08,	nA4,	$04,	nAb4,	nG4,	nAb4,	$10,	nRst
	dc.b		$04
	smpsReturn

MGZ3_Call0D:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$05
	dc.b		nA4,	nC5,	nRst,	nC4,	nC5,	nRst,	nA4,	nD5
	dc.b		$0C,	nE5,	$14,	nRst,	$04,	nC5,	nE4,	nRst
	dc.b		nA4,	nE4,	nRst,	nA5,	nG5,	$0C,	$08,	nC6
	dc.b		$04,	nD5,	$08
	smpsReturn

MGZ3_Call0E:
	dc.b		nRst,	$04,	nC5,	nC5,	nRst,	nA4,	nC5,	nRst
	dc.b		nA4,	nG4,	$0C,	nB3,	$14,	nRst,	$04,	nC5
	dc.b		nE5,	nRst,	nC5,	nC5,	nRst,	nC5,	nD5,	$0C
	dc.b		nG5,	$08,	nD5,	$04,	nB4,	$08
	smpsReturn

MGZ3_Call0F:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

MGZ3_Call10:
	smpsFMvoice	$01
	dc.b		nE7,	$04,	nA6,	nC6,	nA5,	nD7,	nE6,	nG6
	dc.b		nE6,	$20,	nRst,	$04,	nE6,	nA6,	nC7,	nA6
	dc.b		nD7,	nE7,	nG6,	nF7,	$0C,	nE6,	$08,	nD7
	dc.b		nC6
	smpsReturn

MGZ3_Call11:
	dc.b		nE6,	$04,	nA5,	nC7,	nA5,	nD7,	nE6,	nG6
	dc.b		nE6,	$20,	nRst,	$04,	nE7,	nA5,	nC6,	nA5
	dc.b		nD6,	nE6,	nG7,	nE7,	$0C,	nD7,	$08,	nC6
	dc.b		nE6
	smpsReturn

MGZ3_Call12:
	smpsFMvoice	$02
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nE5,	$1C,	nRst,	$08,	nE5,	$04,	nA4,	nC5
	dc.b		nA4,	nD5,	nE5,	nG5,	nF5,	$0C,	nE5,	$08
	dc.b		nD5,	nC5
	smpsReturn

MGZ3_Call13:
	dc.b		nRst,	$04
	smpsFMvoice	$05
	dc.b		nC5,	nC4,	nRst,	nA5,	nE4,	nRst,	nC5,	nG4
	dc.b		$0C,	nB3,	$14,	nRst,	$04,	nA4,	nC5,	nRst
	dc.b		nA5,	nE5,	nRst,	nC4,	nG4,	$0C,	$08,	nD5
	dc.b		$04,	nD4,	$08
	smpsReturn

MGZ3_Call14:
	dc.b		nRst,	$04,	nC4,	nC4,	nRst,	nC4,	nE4,	nRst
	dc.b		nA5,	nG5,	$0C,	nE5,	$14,	nRst,	$04,	nC4
	dc.b		nE4,	nRst,	nA4,	nE5,	nRst,	nC4,	nG4,	$0C
	dc.b		$08,	nC5,	$04,	nD5,	$08
	smpsReturn

MGZ3_Call15:
	dc.b		nRst,	$04
	smpsFMvoice	$02
	dc.b		nE5,	nE5,	$08,	nD5,	nD5,	$04,	nFs5,	nRst
	dc.b		nC6,	nRst,	nC6,	nB5,	nC6,	nB5,	$08,	nRst
	dc.b		$04,	nE5,	nE5,	$08,	nG5,	nD5,	$04,	nEb5
	dc.b		nRst,	nC6,	nRst,	nC6,	nB5,	nC6,	nB5,	$08
	smpsReturn

MGZ3_Call16:
	smpsFMvoice	$05
	dc.b		nE5,	$04,	nA4,	nC6,	nA5,	nD6,	nE6,	nG6
	dc.b		nE6,	$20,	nRst,	$04,	nE6,	nA5,	nC5,	nA4
	dc.b		nD5,	nE5,	nG5,	nF5,	$0C,	nE6,	$08,	nD5
	dc.b		nC6
	smpsReturn

MGZ3_Call17:
	dc.b		nE5,	$04,	nA5,	nC5,	nA5,	nD5,	nE5,	nG6
	dc.b		nE6,	$20,	nRst,	$04,	nE5,	nA5,	nC5,	nA5
	dc.b		nD6,	nE6,	nG5,	nE6,	$0C,	nD5,	$08,	nC6
	dc.b		nE6
	smpsReturn

MGZ3_Call18:
	dc.b		smpsNoAttack,	$06
	smpsPSGvoice	$00
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		$02,	nRst,	nE5,	nRst,	$22,	nE5,	$04,	nA4
	dc.b		nC5,	nA4,	nD5,	nE5,	nG5,	$02,	nRst,	nF5
	dc.b		$0C,	nE5,	$08,	nD5,	nC5,	$02
	smpsReturn

MGZ3_Call19:
	dc.b		smpsNoAttack,	$04,	nRst,	$7C
	smpsReturn

MGZ3_Call1A:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MGZ3_Call1B:
	dc.b		smpsNoAttack,	$0A
	smpsPSGvoice	$00
	dc.b		nA5,	$04,	$08,	nD5,	nD5,	$02,	nRst,	nEb5
	dc.b		$08,	nC6,	$04,	nRst,	nC6,	nB5,	nC6,	nB5
	dc.b		$06,	nRst,	nE5,	$04,	nA5,	$08,	nD5,	nD5
	dc.b		$02,	nRst,	nFs5,	$08,	nC6,	$04,	nRst,	nC6
	dc.b		nB5,	nC6,	nB5,	$02
	smpsReturn

MGZ3_Call1C:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MGZ3_Call1D:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$00
	dc.b		nA5,	nE5,	nRst,	nC5,	nE5,	nRst,	nA5,	nG5
	dc.b		$0C,	nE4,	$14,	nRst,	$04,	nA5,	nE5,	nRst
	dc.b		nC4,	nC4,	nRst,	nA4,	nD5,	$0C,	nB5,	$08
	dc.b		nC5,	$04,	nB4,	$08
	smpsReturn

MGZ3_Call1E:
	dc.b		nRst,	$04,	nA5,	nE5,	nRst,	nA5,	nE5,	nRst
	dc.b		nC5,	nD4,	$0C,	nB4,	$14,	nRst,	$04,	nA5
	dc.b		nC4,	nRst,	nA5,	nE4,	nRst,	nA4,	nG5,	$0C
	dc.b		nB5,	$08,	nD4,	$04,	nB5,	$08
	smpsReturn

MGZ3_Call1F:
	dc.b		nRst,	$04,	nA5,	nA5,	$02,	nE5,	$04,	$02
	dc.b		nG5,	$06,	$02,	$04,	nEb5,	$02,	nG5,	nRst
	dc.b		nFs5,	$08,	nRst,	$1A,	nA5,	$04,	$02,	$04
	dc.b		nE5,	$02,	nD5,	$06,	nG5,	$02,	$04,	nFs5
	dc.b		$02,	nG5,	nRst,	nEb5,	$08,	nRst,	$16
	smpsReturn

MGZ3_Call20:
	dc.b		nE6,	$04,	nA5,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nE5,	$20,	nRst,	$04,	nE5,	nA4,	nC6,	nA5
	dc.b		nD6,	nE6,	nG6,	nF6,	$0C,	nE5,	$08,	nD6
	dc.b		nC5
	smpsReturn

MGZ3_Call21:
	dc.b		nE6,	$04,	nA4,	nC6,	nA4,	nD6,	nE6,	nG5
	dc.b		nE5,	$20,	nRst,	$04,	nE6,	nA4,	nC6,	nA4
	dc.b		nD5,	nE5,	nG6,	nE5,	$0C,	nD6,	$08,	nC5
	dc.b		nE5
	smpsReturn

MGZ3_Call22:
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	$0A,	dKick,	$02
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dSnare,	nRst,	dSnare,	dSnare,	dKick
	dc.b		nRst,	dKick,	nRst,	$0A,	dKick,	$02,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	$06,	dKick,	$02,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dSnare,	nRst,	dSnare,	dSnare
	smpsReturn

MGZ3_Call23:
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$04
	dc.b		dHiTimpani,	$02,	dKick,	nRst,	dKick,	nRst,	dSnare,	nRst
	dc.b		$04,	dHiTimpani,	$02,	dKick,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	$04,	dMidTimpani,	$02,	dKick,	nRst,	dKick,	nRst
	dc.b		dSnare,	nRst,	$04,	dMidTimpani,	$02,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	$04,	dHiTimpani,	$02,	dKick,	nRst
	dc.b		dKick,	nRst,	dSnare,	nRst,	$04,	dHiTimpani,	$02,	dKick
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	$04,	dMidTimpani,	$02
	dc.b		dKick,	nRst,	dKick,	nRst,	dSnare,	dSnare,	dSnare,	nRst
	smpsReturn

MGZ3_Call24:
	dc.b		dKick,	$02,	nRst,	dSnare,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	$06,	dHiTimpani,	$02,	nRst,	dHiTimpani,	dHiTimpani,	nRst
	dc.b		dHiTimpani,	dMidTimpani,	nRst,	dMidTimpani,	nRst,	dKick,	dMidTimpani,	dMidTimpani
	dc.b		dMidTimpani,	dKick,	nRst,	dSnare,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	$06,	dHiTimpani,	$02,	nRst,	dHiTimpani,	dHiTimpani,	nRst
	dc.b		dHiTimpani,	dKick,	nRst,	dMidTimpani,	nRst,	dKick,	dMidTimpani,	dMidTimpani
	dc.b		dMidTimpani
	smpsReturn

MGZ3_Call25:
	dc.b		dKick,	$02,	nRst,	$12,	dSnare,	$02,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	$06,	dKick,	$02,	nRst,	dSnare
	dc.b		nRst,	dSnare,	nRst,	dHiTimpani,	dHiTimpani,	nRst,	dHiTimpani,	dMidTimpani
	dc.b		nRst,	dMidTimpani,	nRst,	dKick,	nRst,	$12,	dSnare,	$02
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dSnare,	dSnare,	nRst,	dSnare,	dHiTimpani,	nRst,	dHiTimpani
	dc.b		dHiTimpani,	dSnare,	dHiTimpani,	dMidTimpani,	dMidTimpani
	smpsReturn

MGZ3_Call26:
	dc.b		dKick,	$02,	nRst,	$12,	dSnare,	$02,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	$06,	dKick,	$02,	nRst,	dSnare
	dc.b		dSnare,	nRst,	dSnare,	dHiTimpani,	dHiTimpani,	nRst,	dHiTimpani,	dMidTimpani
	dc.b		nRst,	dMidTimpani,	nRst,	dKick,	nRst,	$12,	dSnare,	$02
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dSnare,	dSnare,	nRst,	dSnare,	dHiTimpani,	nRst,	dHiTimpani
	dc.b		dHiTimpani,	dSnare,	dHiTimpani,	dMidTimpani,	dMidTimpani
	smpsReturn

MGZ3_Voices:
	dc.b		;			Voice 00
	even
