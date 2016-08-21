; =============================================================================================
; Project Name:		SHZ3
; Created:		1st January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SHZ3_Header:
	smpsHeaderVoice	SHZ3_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	SHZ3_DAC
	smpsHeaderFM	SHZ3_FM1,	smpsPitch00,	$10
	smpsHeaderFM	SHZ3_FM2,	smpsPitch01hi,	$10
	smpsHeaderFM	SHZ3_FM3,	smpsPitch00,	$10
	smpsHeaderFM	SHZ3_FM4,	smpsPitch00,	$12
	smpsHeaderFM	SHZ3_FM5,	smpsPitch00,	$12
	smpsHeaderPSG	SHZ3_PSG1,	smpsPitch03lo,	$06,	$00
	smpsHeaderPSG	SHZ3_PSG2,	smpsPitch03lo,	$08,	$00
	smpsHeaderPSG	SHZ3_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
SHZ3_FM1:
	smpsCall	SHZ3_Call01
SHZ3_Jump01:
	smpsCall	SHZ3_Call02
	smpsCall	SHZ3_Call03
	smpsCall	SHZ3_Call04
	smpsCall	SHZ3_Call05
	smpsCall	SHZ3_Call06
	smpsJump	SHZ3_Jump01

; FM2 Data
SHZ3_FM2:
	smpsCall	SHZ3_Call07
SHZ3_Jump02:
	smpsCall	SHZ3_Call08
	smpsCall	SHZ3_Call09
	smpsCall	SHZ3_Call0A
	smpsCall	SHZ3_Call09
	smpsCall	SHZ3_Call0B
	smpsJump	SHZ3_Jump02

; FM3 Data
SHZ3_FM3:
	smpsCall	SHZ3_Call0C
SHZ3_Jump03:
	smpsCall	SHZ3_Call0D
	smpsCall	SHZ3_Call0E
	smpsCall	SHZ3_Call0D
	smpsCall	SHZ3_Call0F
	smpsCall	SHZ3_Call10
	smpsJump	SHZ3_Jump03

; FM4 Data
SHZ3_FM4:
	smpsCall	SHZ3_Call11
SHZ3_Jump04:
	smpsCall	SHZ3_Call12
	smpsCall	SHZ3_Call13
	smpsCall	SHZ3_Call14
	smpsCall	SHZ3_Call15
	smpsCall	SHZ3_Call16
	smpsJump	SHZ3_Jump04

; FM5 Data
SHZ3_FM5:
	smpsCall	SHZ3_Call17
SHZ3_Jump05:
	smpsCall	SHZ3_Call18
	smpsCall	SHZ3_Call19
	smpsCall	SHZ3_Call1A
	smpsCall	SHZ3_Call1B
	smpsCall	SHZ3_Call1C
	smpsJump	SHZ3_Jump05

; PSG1 Data
SHZ3_PSG1:
	smpsCall	SHZ3_Call1D
SHZ3_Jump06:
	smpsCall	SHZ3_Call1E
	smpsCall	SHZ3_Call1F
	smpsCall	SHZ3_Call20
	smpsCall	SHZ3_Call1F
	smpsCall	SHZ3_Call1D
	smpsJump	SHZ3_Jump06

; PSG2 Data
SHZ3_PSG2:
	smpsCall	SHZ3_Call21
SHZ3_Jump07:
	smpsCall	SHZ3_Call22
	smpsCall	SHZ3_Call23
	smpsCall	SHZ3_Call24
	smpsCall	SHZ3_Call25
	smpsCall	SHZ3_Call21
	smpsJump	SHZ3_Jump07

; PSG3 Data
SHZ3_PSG3:
	smpsPSGform	$E7
	smpsCall	SHZ3_Call26
SHZ3_Jump08:
	smpsCall	SHZ3_Call27
	smpsCall	SHZ3_Call28
	smpsCall	SHZ3_Call29
	smpsCall	SHZ3_Call2A
	smpsCall	SHZ3_Call2B
	smpsJump	SHZ3_Jump08

; DAC Data
SHZ3_DAC:
	smpsCall	SHZ3_Call2C
SHZ3_Jump09:
	smpsCall	SHZ3_Call2D
	smpsCall	SHZ3_Call2E
	smpsCall	SHZ3_Call2F
	smpsCall	SHZ3_Call30
	smpsCall	SHZ3_Call31
	smpsJump	SHZ3_Jump09

SHZ3_Call01:
	smpsFMvoice	$05
	dc.b		nC4,	$02,	nE4,	nG4,	nC5,	nB4,	$04,	nG4
	dc.b		nRst,	nE4,	nA4,	nG4,	nRst,	nE4,	nF4,	nE4
	dc.b		nF4,	nG4,	$0C,	nC4,	$02,	nE4,	nG4,	nC5
	dc.b		nB4,	$04,	nG4,	nRst,	nE4,	nA4,	nG4,	nRst
	dc.b		nE4,	nF4,	nE4,	nD4,	nC4,	$08
	smpsFMvoice	$06
	dc.b		nG4,	$04
	smpsReturn

SHZ3_Call02:
	dc.b		nB4,	$02,	nRst,	nC5,	nRst,	$06,	nC5,	$04
	dc.b		nD5,	$02,	nRst,	nE5,	$08,	nC5,	$04,	nD5
	dc.b		$02,	nRst,	nE5,	$04,	nD5,	nB4,	$02,	nRst
	dc.b		nB4,	$04,	nG4,	nRst,	nG4,	nD5,	$02,	nRst
	dc.b		nC5,	$04,	nRst,	nA4,	nD5,	$02,	nRst,	nC5
	dc.b		$06,	nRst,	$02,	nA4,	$04,	nB4,	$02,	nRst
	dc.b		nC5,	$04,	nD5,	$02,	nRst,	nC5,	$04,	nE5
	dc.b		nC5,	nG4,	nRst
	smpsReturn

SHZ3_Call03:
	dc.b		nBb4,	$08,	nA4,	$06,	nRst,	$02,	nA4,	nRst
	dc.b		nA4,	$04,	nRst,	nC5,	nRst,	nB4,	nRst,	nA4
	dc.b		$08,	nG4,	$04,	nRst,	nA4,	nB4,	$02,	nRst
	dc.b		nG4,	nRst,	nA4,	$08,	nG4,	$04,	nF4,	nRst
	dc.b		nC5,	nRst,	nB4,	nRst,	nA4,	$02,	nRst,	nG4
	dc.b		$0A,	nRst,	$02,	nB4,	$04
	smpsReturn

SHZ3_Call04:
	dc.b		nG4,	$02,	nRst,	nC5,	nRst,	$06,	nG4,	$04
	dc.b		nD5,	$02,	nRst,	nC5,	$08,	nG4,	$04,	nD5
	dc.b		$02,	nRst,	nC5,	$04,	nD5,	nB4,	$02,	nRst
	dc.b		nB4,	$04,	nG4,	nRst,	nG4,	nD5,	$02,	nRst
	dc.b		nC5,	$04,	nRst,	nA4,	nD5,	$02,	nRst,	nC5
	dc.b		$06,	nRst,	$02,	nA4,	$04,	nB4,	$02,	nRst
	dc.b		nC5,	$04,	nBb4,	$02,	nRst,	nD5,	$04,	nC5
	dc.b		$02,	nRst,	nC5,	$04,	nBb4,	nRst
	smpsReturn

SHZ3_Call05:
	dc.b		nBb4,	$08,	nC5,	$06,	nRst,	$02,	nA4,	nRst
	dc.b		nA4,	$04,	nRst,	nC5,	nRst,	nB4,	nRst,	nC5
	dc.b		$02,	nRst,	nB4,	$08,	nA4,	$02,	nRst,	nG4
	dc.b		$04,	nB4,	$02,	nRst,	nG4,	nRst,	nA4,	$06
	dc.b		nRst,	$02,	nC5,	nRst,	nA4,	$04,	nRst,	nF5
	dc.b		nRst,	nB4,	nRst,	nC5,	$02,	nRst,	nD5,	$0A
	dc.b		nRst,	$06
	smpsReturn

SHZ3_Call06:
	smpsFMvoice	$05
	dc.b		nC4,	$02,	nE4,	nG4,	nC5,	nB4,	$04,	nG4
	dc.b		nRst,	nE4,	nA4,	nG4,	nRst,	nE4,	nF4,	nE4
	dc.b		nF4,	nG4,	$0C,	nC4,	$02,	nE4,	nG4,	nC5
	dc.b		nB4,	$04,	nG4,	nRst,	nE4,	nA4,	nG4,	nRst
	dc.b		nE4,	nF4,	nE4,	nD4,	nC4,	$08
	smpsFMvoice	$06
	dc.b		nG4,	$04
	smpsReturn

SHZ3_Call07:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$00
	dc.b		nC2,	$06,	$02,	nC3,	nRst,	nC3,	nC2,	nE1
	dc.b		$06,	$02,	nE2,	nRst,	nE2,	nE1,	nF1,	$06
	dc.b		$02,	nF2,	nRst,	nF2,	nF1,	nG1,	nRst,	nG1
	dc.b		nG2,	nE2,	nC2,	nB1,	nG1,	nA1,	$06,	$02
	dc.b		nA2,	nRst,	nA2,	nA1,	nE1,	$06,	$02,	nE2
	dc.b		nRst,	nE2,	nE1,	nF2,	$04,	$02,	nG2,	nG1
	dc.b		nG2,	nC2,	$06,	nC3,	$02,	nE2,	nF2
	smpsReturn

SHZ3_Call08:
	dc.b		nFs2,	$02,	nG2,	nG1,	$04,	nC2,	$06,	nRst
	dc.b		$02,	nC2,	$04,	$02,	nG1,	nC2,	nRst,	nC2
	dc.b		$04,	nRst,	$02,	nC2,	nD2,	$04,	nE2,	$06
	dc.b		nD2,	$02,	nB1,	$06,	nG1,	$02,	nE1,	$04
	dc.b		nE2,	nRst,	$02,	nE2,	nG1,	$04,	nA1,	$06
	dc.b		nRst,	$02,	nA1,	$04,	$02,	nE1,	nA1,	nRst
	dc.b		nA1,	$04,	nRst,	$02,	nA1,	nC2,	$04,	nBb1
	dc.b		$06,	$02,	$06,	nC2,	$02,	nBb1,	nRst,	nBb1
	dc.b		$04
	smpsReturn

SHZ3_Call09:
	dc.b		nA1,	$02,	nRst,	nG1,	$04,	nF1,	$06,	$02
	dc.b		$06,	nG1,	$02,	nF1,	nRst,	nD2,	nC2,	nB1
	dc.b		nRst,	nG1,	nRst,	$04,	nG1,	$02,	nG2,	nG1
	dc.b		nA1,	nG1,	$06,	nB1,	$02,	nG1,	nD2,	$04
	dc.b		nC2,	$02,	nB1,	nA1,	nG1,	nD2,	$06,	nC2
	dc.b		$02,	nD2,	$06,	nE2,	$02,	nD2,	$04,	nC2
	dc.b		$02,	nB1,	nA1,	nRst,	nG1,	$04,	nRst,	nG2
	dc.b		$02,	nG1,	nRst,	nG1,	nD2,	nG1,	nC2,	nB1
	dc.b		nC2,	nD2
	smpsReturn

SHZ3_Call0A:
	dc.b		nG2,	$02,	nB1,	nA1,	nG1,	nC2,	$06,	nRst
	dc.b		$02,	nC2,	$04,	$02,	nG1,	nC2,	nRst,	nC2
	dc.b		$04,	nRst,	$02,	nC2,	nD2,	$04,	nE2,	$06
	dc.b		nD2,	$02,	nB1,	$06,	nG1,	$02,	nE1,	$04
	dc.b		nE2,	nRst,	$02,	nE2,	nG1,	$04,	nA1,	$06
	dc.b		nRst,	$02,	nA1,	$04,	$02,	nE1,	nA1,	nRst
	dc.b		nA1,	$04,	nRst,	$02,	nA1,	nC2,	$04,	nBb1
	dc.b		$06,	$02,	$06,	nC2,	$02,	nBb1,	nRst,	nBb1
	dc.b		$04
	smpsReturn

SHZ3_Call0B:
	dc.b		nG2,	$02,	nB1,	nA1,	nG1,	nC2,	$06,	$02
	dc.b		nC3,	nRst,	nC3,	nC2,	nE1,	$06,	$02,	nE2
	dc.b		nRst,	nE2,	nE1,	nF1,	$06,	$02,	nF2,	nRst
	dc.b		nF2,	nF1,	nG1,	nRst,	nG1,	nG2,	nE2,	nC2
	dc.b		nB1,	nG1,	nA1,	$06,	$02,	nA2,	nRst,	nA2
	dc.b		nA1,	nE1,	$06,	$02,	nE2,	nRst,	nE2,	nE1
	dc.b		nF2,	$04,	$02,	nG2,	nG1,	nG2,	nC2,	$06
	dc.b		nC3,	$02,	nE2,	nF2
	smpsReturn

SHZ3_Call0C:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$05
	dc.b		nG4,	$04,	nE4,	nRst,	nC4,	nF4,	nE4,	nRst
	dc.b		nC4,	nA3,	nC4,	nA3,	nD4,	$0C,	nRst,	$08
	dc.b		nG4,	$04,	nE4,	nRst,	nA3,	nF4,	nE4,	nRst
	dc.b		nC4,	nA3,	nC4,	nB3,	nG3,	$08
	smpsFMvoice	$03
	dc.b		nE4,	$04
	smpsReturn

SHZ3_Call0D:
	dc.b		nF4,	$02,	nRst,	nG4,	$04,	nRst,	nE4,	nF4
	dc.b		$02,	nRst,	nG4,	$08,	nE4,	$04,	nF4,	$02
	dc.b		nRst,	nG4,	$04,	nA4,	nG4,	nE4,	nC4,	nRst
	dc.b		nE4,	nF4,	$02,	nRst,	nG4,	$04,	nRst,	nE4
	dc.b		nF4,	$02,	nRst,	nG4,	$08,	nE4,	$04,	nF4
	dc.b		$02,	nRst,	nG4,	$04,	nA4,	$02,	nRst,	nA4
	dc.b		$04,	nG4,	nE4,	nC4,	nRst
	smpsReturn

SHZ3_Call0E:
	dc.b		nE4,	$08,	nF4,	nE4,	$04,	nC4,	nRst,	nE4
	dc.b		nRst,	nD4,	$0C,	nRst,	nC4,	$04,	nD4,	$02
	dc.b		nRst,	nE4,	nRst,	nF4,	$08,	nE4,	$04,	nC4
	dc.b		nRst,	nA4,	nRst,	nG4,	$10,	nRst,	$08,	nE4
	dc.b		$04
	smpsReturn

SHZ3_Call0F:
	dc.b		nE4,	$08,	nF4,	nE4,	$04,	nC4,	nRst,	nE4
	dc.b		nRst,	nD4,	$0C,	nRst,	nC4,	$04,	nD4,	$02
	dc.b		nRst,	nE4,	nRst,	nF4,	$08,	nE4,	$04,	nC4
	dc.b		nRst,	nA4,	nRst,	nG4,	$10,	nRst,	$0C
	smpsReturn

SHZ3_Call10:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$05
	dc.b		nG4,	$04,	nE4,	nRst,	nC4,	nF4,	nE4,	nRst
	dc.b		nC4,	nA3,	nC4,	nA3,	nD4,	$0C,	nRst,	$08
	dc.b		nG4,	$04,	nE4,	nRst,	nA3,	nF4,	nE4,	nRst
	dc.b		nC4,	nA3,	nC4,	nB3,	nG3,	$08
	smpsFMvoice	$03
	dc.b		nE4,	$04
	smpsReturn

SHZ3_Call11:
	dc.b		smpsNoAttack,	$10
	smpsFMvoice	$08
	dc.b		nG5,	$02,	nRst,	$0E,	nE5,	$02,	nRst,	$0A
	dc.b		nF5,	$02,	nRst,	$06,	nG5,	$0E,	nRst,	nG5
	dc.b		$02,	nRst,	$0E,	nE5,	$02,	nRst,	$0A,	nF5
	dc.b		$02,	nRst,	$06,	nE5,	$0C
	smpsReturn

SHZ3_Call12:
	dc.b		smpsNoAttack,	$02,	nRst,	$0A,	nC5,	$02,	nRst,	nC5
	dc.b		$06,	nRst,	$02,	nC5,	$03,	nRst,	nC5,	nRst
	dc.b		nC5,	nRst,	$05,	nB4,	$02,	nRst,	nB4,	$06
	dc.b		nRst,	$02,	nB4,	$03,	nRst,	nB4,	nRst,	nB4
	dc.b		nRst,	$05,	nC5,	$02,	nRst,	nC5,	$06,	nRst
	dc.b		$02,	nC5,	$03,	nRst,	nC5,	nRst,	nC5,	nRst
	dc.b		$05,	nC5,	$02,	nRst,	nBb4,	$06,	nRst,	$02
	dc.b		nBb4,	$03,	nRst,	nBb4,	$02
	smpsReturn

SHZ3_Call13:
	dc.b		smpsNoAttack,	$01,	nRst,	$03,	nBb4,	nRst,	$05,	nC5
	dc.b		$02,	nRst,	nC5,	$08,	nRst,	$04,	nC5,	$02
	dc.b		nRst,	$06,	nB4,	$04,	nRst,	nA4,	$02,	nRst
	dc.b		nB4,	$06,	nRst,	$02,	nB4,	$03,	nRst,	nB4
	dc.b		nRst,	nB4,	nRst,	$05,	nC5,	$02,	nRst,	nC5
	dc.b		$08,	nRst,	$04,	nC5,	$02,	nRst,	$06,	nB4
	dc.b		$04,	nRst,	nA4,	$02,	nRst,	nB4,	$06,	nRst
	dc.b		$0A
	smpsReturn

SHZ3_Call14:
	dc.b		nD5,	$02,	nE5,	nF5,	nG5,	nRst,	$04,	nC5
	dc.b		$02,	nRst,	nC5,	$06,	nRst,	$02,	nC5,	$03
	dc.b		nRst,	nC5,	nRst,	nC5,	nRst,	$05,	nB4,	$02
	dc.b		nRst,	nB4,	$06,	nRst,	$02,	nB4,	$03,	nRst
	dc.b		nB4,	nRst,	nB4,	nRst,	$05,	nC5,	$02,	nRst
	dc.b		nC5,	$06,	nRst,	$02,	nC5,	$03,	nRst,	nC5
	dc.b		nRst,	nC5,	nRst,	$05,	nC5,	$02,	nRst,	nBb4
	dc.b		$06,	nRst,	$02,	nBb4,	$03,	nRst,	nBb4,	$02
	smpsReturn

SHZ3_Call15:
	dc.b		smpsNoAttack,	$01,	nRst,	$03,	nBb4,	nRst,	$05,	nC5
	dc.b		$02,	nRst,	nC5,	$08,	nRst,	$04,	nC5,	$02
	dc.b		nRst,	$06,	nB4,	$04,	nRst,	nA4,	$02,	nRst
	dc.b		nB4,	$06,	nRst,	$02,	nB4,	$03,	nRst,	nB4
	dc.b		nRst,	nB4,	nRst,	$05,	nC5,	$02,	nRst,	nC5
	dc.b		$08,	nRst,	$04,	nC5,	$02,	nRst,	$06,	nB4
	dc.b		$04,	nRst,	nA4,	$02,	nRst,	nB4,	$06,	nRst
	dc.b		$02,	nD5,	nE5,	nF5,	nG5
	smpsReturn

SHZ3_Call16:
	dc.b		nRst,	$10,	nG5,	$02,	nRst,	$0E,	nE5,	$02
	dc.b		nRst,	$0A,	nF5,	$02,	nRst,	$06,	nG5,	$0E
	dc.b		nRst,	nG5,	$02,	nRst,	$0E,	nE5,	$02,	nRst
	dc.b		$0A,	nF5,	$02,	nRst,	$06,	nE5,	$0C
	smpsReturn

SHZ3_Call17:
	dc.b		smpsNoAttack,	$10
	smpsFMvoice	$08
	dc.b		nC5,	$02,	nRst,	$0E,	nC5,	$02,	nRst,	$0A
	dc.b		nC5,	$02,	nRst,	$06,	nB4,	$0E,	nRst,	nC5
	dc.b		$02,	nRst,	$0E,	nC5,	$02,	nRst,	$0A,	nC5
	dc.b		$02,	nRst,	$06,	nC5,	$0C
	smpsReturn

SHZ3_Call18:
	dc.b		smpsNoAttack,	$02,	nRst,	$0A,	nG4,	$02,	nRst,	nG4
	dc.b		$06,	nRst,	$02,	nG4,	$03,	nRst,	nG4,	nRst
	dc.b		nG4,	nRst,	$05,	nG4,	$02,	nRst,	nG4,	$06
	dc.b		nRst,	$02,	nG4,	$03,	nRst,	nG4,	nRst,	nG4
	dc.b		nRst,	$05,	nG4,	$02,	nRst,	nG4,	$06,	nRst
	dc.b		$02,	nG4,	$03,	nRst,	nG4,	nRst,	nG4,	nRst
	dc.b		$05,	nG4,	$02,	nRst,	nG4,	$06,	nRst,	$02
	dc.b		nG4,	$03,	nRst,	nG4,	$02
	smpsReturn

SHZ3_Call19:
	dc.b		smpsNoAttack,	$01,	nRst,	$03,	nG4,	nRst,	$05,	nF4
	dc.b		$02,	nRst,	nF4,	$08,	nRst,	$04,	nF4,	$02
	dc.b		nRst,	$06,	nG4,	$04,	nRst,	nG4,	$02,	nRst
	dc.b		nG4,	$06,	nRst,	$02,	nG4,	$03,	nRst,	nG4
	dc.b		nRst,	nG4,	nRst,	$05,	nF4,	$02,	nRst,	nF4
	dc.b		$08,	nRst,	$04,	nF4,	$02,	nRst,	$06,	nG4
	dc.b		$04,	nRst,	nG4,	$02,	nRst,	nG4,	$06,	nRst
	dc.b		$02,	nG4,	nA4,	nB4,	nC5
	smpsReturn

SHZ3_Call1A:
	dc.b		nRst,	$0C,	nG4,	$02,	nRst,	nG4,	$06,	nRst
	dc.b		$02,	nG4,	$03,	nRst,	nG4,	nRst,	nG4,	nRst
	dc.b		$05,	nG4,	$02,	nRst,	nG4,	$06,	nRst,	$02
	dc.b		nG4,	$03,	nRst,	nG4,	nRst,	nG4,	nRst,	$05
	dc.b		nG4,	$02,	nRst,	nG4,	$06,	nRst,	$02,	nG4
	dc.b		$03,	nRst,	nG4,	nRst,	nG4,	nRst,	$05,	nG4
	dc.b		$02,	nRst,	nG4,	$06,	nRst,	$02,	nG4,	$03
	dc.b		nRst,	nG4,	$02
	smpsReturn

SHZ3_Call1B:
	dc.b		smpsNoAttack,	$01,	nRst,	$03,	nG4,	nRst,	$05,	nF4
	dc.b		$02,	nRst,	nF4,	$08,	nRst,	$04,	nF4,	$02
	dc.b		nRst,	$06,	nG4,	$04,	nRst,	nG4,	$02,	nRst
	dc.b		nG4,	$06,	nRst,	$02,	nG4,	$03,	nRst,	nG4
	dc.b		nRst,	nG4,	nRst,	$05,	nF4,	$02,	nRst,	nF4
	dc.b		$08,	nRst,	$04,	nF4,	$02,	nRst,	$06,	nG4
	dc.b		$04,	nRst,	nG4,	$02,	nRst,	nG4,	nA4,	nB4
	dc.b		nC5,	nRst,	$08
	smpsReturn

SHZ3_Call1C:
	dc.b		smpsNoAttack,	$10,	nC5,	$02,	nRst,	$0E,	nC5,	$02
	dc.b		nRst,	$0A,	nC5,	$02,	nRst,	$06,	nB4,	$0E
	dc.b		nRst,	nC5,	$02,	nRst,	$0E,	nC5,	$02,	nRst
	dc.b		$0A,	nC5,	$02,	nRst,	$06,	nC5,	$0C
	smpsReturn

SHZ3_Call1D:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

SHZ3_Call1E:
	smpsPSGvoice	$0A
	dc.b		nE4,	$04,	nF4,	$02,	nRst,	nG4,	$08,	nE4
	dc.b		$04,	nF4,	$02,	nRst,	nG4,	$08,	nE4,	$04
	dc.b		nF4,	$02,	nRst,	nG4,	$04,	nA4,	nG4,	nE4
	dc.b		nC4,	nRst,	nE4,	nF4,	$02,	nRst,	nG4,	$08
	dc.b		nE4,	$04,	nF4,	$02,	nRst,	nG4,	$08,	nE4
	dc.b		$04,	nF4,	$02,	nRst,	nG4,	$04,	nA4,	$02
	dc.b		nRst,	nA4,	$04,	nG4,	nE4,	nC4
	smpsReturn

SHZ3_Call1F:
	dc.b		nRst,	$04,	nE4,	nRst,	nF4,	$08,	nE4,	$04
	dc.b		nC4,	nRst,	nE4,	nRst,	nD4,	$10,	nRst,	$08
	dc.b		nC4,	$04,	nD4,	$02,	nRst,	nE4,	nRst,	nF4
	dc.b		$08,	nE4,	$04,	nC4,	nRst,	nA4,	nRst,	nG4
	dc.b		$14,	nRst,	$04
	smpsReturn

SHZ3_Call20:
	dc.b		nE4,	$04,	nF4,	$02,	nRst,	nG4,	$08,	nE4
	dc.b		$04,	nF4,	$02,	nRst,	nG4,	$08,	nE4,	$04
	dc.b		nF4,	$02,	nRst,	nG4,	$04,	nA4,	nG4,	nE4
	dc.b		nC4,	nRst,	nE4,	nF4,	$02,	nRst,	nG4,	$08
	dc.b		nE4,	$04,	nF4,	$02,	nRst,	nG4,	$08,	nE4
	dc.b		$04,	nF4,	$02,	nRst,	nG4,	$04,	nA4,	$02
	dc.b		nRst,	nA4,	$04,	nG4,	nE4,	nC4
	smpsReturn

SHZ3_Call21:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

SHZ3_Call22:
	smpsPSGvoice	$01
	dc.b		nG4,	$04,	nB4,	$02,	nRst,	nC5,	$06,	nRst
	dc.b		$02,	nC5,	$04,	nD5,	$02,	nRst,	nE5,	$08
	dc.b		nC5,	$04,	nD5,	$02,	nRst,	nE5,	$04,	nD5
	dc.b		nB4,	$02,	nRst,	nB4,	$04,	nG4,	nRst,	nG4
	dc.b		nD5,	$02,	nRst,	nC5,	$08,	nA4,	$04,	nD5
	dc.b		$02,	nRst,	nC5,	$06,	nRst,	$02,	nA4,	$04
	dc.b		nB4,	$02,	nRst,	nC5,	$04,	nD5,	$02,	nRst
	dc.b		nC5,	$04,	nE5,	nC5,	nG4
	smpsReturn

SHZ3_Call23:
	dc.b		nRst,	$04,	nBb4,	nRst,	nA4,	$06,	nRst,	$02
	dc.b		nA4,	nRst,	nA4,	$04,	nRst,	nC5,	nRst,	nB4
	dc.b		$08,	nA4,	nG4,	$04,	nRst,	nA4,	nB4,	$02
	dc.b		nRst,	nG4,	nRst,	nA4,	$08,	nG4,	$04,	nF4
	dc.b		nRst,	nC5,	nRst,	nB4,	$08,	nA4,	$02,	nRst
	dc.b		nG4,	$0A,	nRst,	$02
	smpsReturn

SHZ3_Call24:
	dc.b		nB4,	$04,	nG4,	$02,	nRst,	nC5,	$06,	nRst
	dc.b		$02,	nG4,	$04,	nD5,	$02,	nRst,	nC5,	$08
	dc.b		nG4,	$04,	nD5,	$02,	nRst,	nC5,	$04,	nD5
	dc.b		nB4,	$02,	nRst,	nB4,	$04,	nG4,	nRst,	nG4
	dc.b		nD5,	$02,	nRst,	nC5,	$08,	nA4,	$04,	nD5
	dc.b		$02,	nRst,	nC5,	$06,	nRst,	$02,	nA4,	$04
	dc.b		nB4,	$02,	nRst,	nC5,	$04,	nBb4,	$02,	nRst
	dc.b		nD5,	$04,	nC5,	$02,	nRst,	nC5,	$04,	nBb4
	smpsReturn

SHZ3_Call25:
	dc.b		nRst,	$04,	nBb4,	nRst,	nC5,	$06,	nRst,	$02
	dc.b		nA4,	nRst,	nA4,	$04,	nRst,	nC5,	nRst,	nB4
	dc.b		$08,	nC5,	$02,	nRst,	nB4,	$08,	nA4,	$02
	dc.b		nRst,	nG4,	$04,	nB4,	$02,	nRst,	nG4,	nRst
	dc.b		nA4,	$06,	nRst,	$02,	nC5,	nRst,	nA4,	$04
	dc.b		nRst,	nF5,	nRst,	nB4,	$08,	nC5,	$02,	nRst
	dc.b		nD5,	$0A,	nRst,	$02
	smpsReturn

SHZ3_Call26:
	dc.b		nRst,	$0C
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	$08,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	$08,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	$08,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	$08,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	$04
	smpsReturn

SHZ3_Call27:
	dc.b		nRst,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	$08,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	$08,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		$08,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	$08
	dc.b		$02,	nRst
	smpsReturn

SHZ3_Call28:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	$08,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	$08,	$02,	nRst,	$04,	nCs0,	$02,	$08
	dc.b		$02,	nRst,	$04,	nCs0,	$02,	$08,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	$08,	$02,	nRst
	smpsReturn

SHZ3_Call29:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	$08,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	$08,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		$08,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	$08
	dc.b		$02,	nRst
	smpsReturn

SHZ3_Call2A:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	$08,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	$08,	$02,	nRst,	$04,	nCs0,	$02,	$08
	dc.b		$02,	nRst,	$04,	nCs0,	$02,	$08,	$02,	nRst
	dc.b		nRst,	nCs0,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	$08,	$02,	nRst
	smpsReturn

SHZ3_Call2B:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	$08,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		$08,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		$08,	$02,	nRst,	$04,	nCs0,	$02,	$08,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	nCs0,	nRst,	$06,	nCs0
	dc.b		$04
	smpsReturn

SHZ3_Call2C:
	dc.b		dSnare,	$04,	$02,	dSnare,	dKick,	$08,	dSnare,	$06
	dc.b		$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$06,	$02
	dc.b		dKick,	nRst,	dKick,	$04,	dSnare,	dKick,	nRst,	dKick
	dc.b		dSnare,	dSnare,	$02,	dSnare,	dKick,	$08,	dSnare,	$06
	dc.b		$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$06,	$02
	dc.b		dKick,	nRst,	dSnare,	$04,	dSnare,	dKick,	dSnare,	$02
	dc.b		dSnare,	dKick,	dSnare
	smpsReturn

SHZ3_Call2D:
	dc.b		dSnare,	$04,	dSnare,	dKick,	$08,	dSnare,	$06,	$02
	dc.b		dKick,	nRst,	dKick,	$04,	dSnare,	$08,	dKick,	dSnare
	dc.b		$06,	$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$08
	dc.b		dKick,	dSnare,	$06,	$02,	dKick,	nRst,	dKick,	$04
	dc.b		dSnare,	$08,	dKick,	dSnare,	$06,	$02,	dKick,	nRst
	dc.b		dKick,	$04
	smpsReturn

SHZ3_Call2E:
	dc.b		dSnare,	$08,	dKick,	dSnare,	$06,	$02,	dKick,	nRst
	dc.b		dSnare,	$04,	dSnare,	dKick,	dKick,	$08,	dSnare,	$06
	dc.b		$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$06,	$02
	dc.b		dKick,	nRst,	$06,	dSnare,	dSnare,	$02,	dKick,	nRst
	dc.b		dSnare,	$04,	dSnare,	dKick,	nRst,	dKick,	dSnare,	$06
	dc.b		$02,	dKick,	nRst,	dKick,	$04
	smpsReturn

SHZ3_Call2F:
	dc.b		dSnare,	$02,	dSnare,	dSnare,	dSnare,	dKick,	$08,	dSnare
	dc.b		$06,	$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$08
	dc.b		dKick,	dSnare,	$06,	$02,	dKick,	nRst,	dKick,	$04
	dc.b		dSnare,	$08,	dKick,	dSnare,	$06,	$02,	dKick,	nRst
	dc.b		dKick,	$04,	dSnare,	$08,	dKick,	dSnare,	$06,	$02
	dc.b		dKick,	nRst,	dKick,	$04
	smpsReturn

SHZ3_Call30:
	dc.b		dSnare,	$08,	dKick,	dSnare,	$06,	$02,	dKick,	nRst
	dc.b		dSnare,	$04,	dSnare,	dKick,	nRst,	dKick,	dSnare,	$06
	dc.b		$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$06,	$02
	dc.b		dKick,	nRst,	$06,	dSnare,	dSnare,	$02,	dKick,	$04
	dc.b		dSnare,	dSnare,	dKick,	nRst,	dKick,	dSnare,	$06,	$02
	dc.b		dKick,	nRst,	dKick,	$04
	smpsReturn

SHZ3_Call31:
	dc.b		dSnare,	$02,	dSnare,	dSnare,	dSnare,	dKick,	$08,	dSnare
	dc.b		$06,	$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$06
	dc.b		$02,	dKick,	nRst,	dKick,	$04,	dSnare,	dKick,	nRst
	dc.b		dKick,	dSnare,	dSnare,	$02,	dSnare,	dKick,	$08,	dSnare
	dc.b		$06,	$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$06
	dc.b		$02,	dKick,	nRst,	dSnare,	$04,	dSnare,	dKick,	dSnare
	dc.b		$02,	dSnare,	dKick,	dSnare
	smpsReturn

SHZ3_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$80;			Voice 00
	dc.b		$3D,$12,$21,$51,$12,$12,$14,$14,$0F,$0A,$05,$05,$05,$00,$00,$00
	dc.b		$00,$2B,$2B,$2B,$1B,$19,$80,$80,$80;			Voice 01
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 02
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 03
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$80;			Voice 04
	dc.b		$3D,$01,$01,$01,$11,$1C,$18,$18,$1B,$06,$05,$04,$05,$06,$05,$06
	dc.b		$06,$60,$89,$59,$79,$18,$80,$80,$80;			Voice 05
	dc.b		$36,$02,$74,$31,$0F,$5F,$5F,$5F,$5F,$0C,$0D,$09,$10,$09,$08,$08
	dc.b		$10,$30,$35,$36,$D5,$2B,$00,$00,$00;			Voice 06
	dc.b		$3B,$46,$42,$42,$43,$10,$12,$19,$4F,$08,$05,$01,$01,$01,$01,$01
	dc.b		$01,$76,$F1,$F7,$F9,$41,$23,$2B,$7F;			Voice 07
	dc.b		$07,$34,$74,$32,$71,$1F,$1F,$1F,$1F,$0A,$0A,$05,$03,$00,$00,$00
	dc.b		$00,$3F,$3F,$2F,$2F,$8A,$8A,$8A,$80;			Voice 08
	even
