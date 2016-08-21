; =============================================================================================
; Project Name:		FinalBossS4
; Created:		20th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

FinalBossS4_Header:
	smpsHeaderVoice	FinalBossS4_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$02

	smpsHeaderDAC	FinalBossS4_DAC
	smpsHeaderFM	FinalBossS4_FM1,	smpsPitch00,	$10
	smpsHeaderFM	FinalBossS4_FM2,	smpsPitch00,	$10
	smpsHeaderFM	FinalBossS4_FM3,	smpsPitch00,	$10
	smpsHeaderFM	FinalBossS4_FM4,	smpsPitch00,	$10
	smpsHeaderFM	FinalBossS4_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	FinalBossS4_PSG1,	smpsPitch04lo,	$02,	$00
	smpsHeaderPSG	FinalBossS4_PSG2,	smpsPitch04lo,	$02,	$00
	smpsHeaderPSG	FinalBossS4_PSG3,	smpsPitch04lo,	$02,	$00

; FM1 Data
FinalBossS4_FM1:
	smpsCall	FinalBossS4_Call01
FinalBossS4_Jump01:
	smpsCall	FinalBossS4_Call02
	smpsCall	FinalBossS4_Call03
	smpsCall	FinalBossS4_Call04
	smpsCall	FinalBossS4_Call05
	smpsCall	FinalBossS4_Call06
	smpsCall	FinalBossS4_Call07
	smpsJump	FinalBossS4_Jump01

; FM2 Data
FinalBossS4_FM2:
	smpsCall	FinalBossS4_Call08
FinalBossS4_Jump02:
	smpsCall	FinalBossS4_Call09
	smpsCall	FinalBossS4_Call0A
	smpsCall	FinalBossS4_Call0B
	smpsCall	FinalBossS4_Call0C
	smpsCall	FinalBossS4_Call0D
	smpsCall	FinalBossS4_Call0E
	smpsJump	FinalBossS4_Jump02

; FM3 Data
FinalBossS4_FM3:
	smpsCall	FinalBossS4_Call0F
FinalBossS4_Jump03:
	smpsCall	FinalBossS4_Call10
	smpsCall	FinalBossS4_Call11
	smpsCall	FinalBossS4_Call12
	smpsCall	FinalBossS4_Call13
	smpsCall	FinalBossS4_Call14
	smpsCall	FinalBossS4_Call15
	smpsJump	FinalBossS4_Jump03

; FM4 Data
FinalBossS4_FM4:
	smpsCall	FinalBossS4_Call16
FinalBossS4_Jump04:
	smpsCall	FinalBossS4_Call17
	smpsCall	FinalBossS4_Call18
	smpsCall	FinalBossS4_Call19
	smpsCall	FinalBossS4_Call19
	smpsCall	FinalBossS4_Call1A
	smpsCall	FinalBossS4_Call1B
	smpsJump	FinalBossS4_Jump04

; FM5 Data
FinalBossS4_FM5:
	smpsCall	FinalBossS4_Call1C
FinalBossS4_Jump05:
	smpsCall	FinalBossS4_Call1D
	smpsCall	FinalBossS4_Call1E
	smpsCall	FinalBossS4_Call1F
	smpsCall	FinalBossS4_Call1F
	smpsCall	FinalBossS4_Call20
	smpsCall	FinalBossS4_Call21
	smpsJump	FinalBossS4_Jump05

; PSG1 Data
FinalBossS4_PSG1:
	smpsCall	FinalBossS4_Call22
FinalBossS4_Jump06:
	smpsCall	FinalBossS4_Call23
	smpsCall	FinalBossS4_Call24
	smpsCall	FinalBossS4_Call25
	smpsCall	FinalBossS4_Call25
	smpsCall	FinalBossS4_Call26
	smpsCall	FinalBossS4_Call27
	smpsJump	FinalBossS4_Jump06

; PSG2 Data
FinalBossS4_PSG2:
	smpsCall	FinalBossS4_Call28
FinalBossS4_Jump07:
	smpsCall	FinalBossS4_Call29
	smpsCall	FinalBossS4_Call2A
	smpsCall	FinalBossS4_Call2B
	smpsCall	FinalBossS4_Call2C
	smpsCall	FinalBossS4_Call2D
	smpsCall	FinalBossS4_Call2E
	smpsJump	FinalBossS4_Jump07

; PSG3 Data
FinalBossS4_PSG3:
	smpsCall	FinalBossS4_Call2F
FinalBossS4_Jump08:
	smpsCall	FinalBossS4_Call30
	smpsCall	FinalBossS4_Call31
	smpsCall	FinalBossS4_Call32
	smpsCall	FinalBossS4_Call33
	smpsCall	FinalBossS4_Call34
	smpsCall	FinalBossS4_Call35
	smpsJump	FinalBossS4_Jump08

; DAC Data
FinalBossS4_DAC:
	smpsCall	FinalBossS4_Call36
FinalBossS4_Jump09:
	smpsCall	FinalBossS4_Call37
	smpsCall	FinalBossS4_Call38
	smpsCall	FinalBossS4_Call39
	smpsCall	FinalBossS4_Call39
	smpsCall	FinalBossS4_Call3A
	smpsCall	FinalBossS4_Call3B
	smpsJump	FinalBossS4_Jump09

FinalBossS4_Call01:
	dc.b		smpsNoAttack,	$38
	smpsFMvoice	$00
	dc.b		nA2,	$06,	nRst,	$02,	nA2,	$0C,	nRst,	$04
	dc.b		nB2,	$08,	nC3,	$06,	nRst,	$02,	nG2,	$08
	dc.b		nA2,	$04,	nB2,	nC3,	$08,	nD3
	smpsReturn

FinalBossS4_Call02:
	dc.b		nD2,	$0C,	nRst,	$04,	nF2,	$0C,	nRst,	$04
	dc.b		nF2,	$08,	nG2,	$04,	nG3,	nC3,	$08,	nA2
	dc.b		$06,	nRst,	$02,	nA2,	$0C,	nRst,	$04,	nB2
	dc.b		$08,	nC3,	$06,	nRst,	$02,	nG2,	$08,	nA2
	dc.b		$04,	nB2,	nC3,	$08,	nD3
	smpsReturn

FinalBossS4_Call03:
	dc.b		nD2,	$0C,	nRst,	$04,	nF2,	$0C,	nRst,	$04
	dc.b		nF2,	$08,	nG2,	$04,	nG3,	nC3,	$08,	nE3
	dc.b		$04,	nRst,	nB2,	$08,	nE3,	$04,	nRst,	nB2
	dc.b		$08,	nEb3,	$04,	nRst,	nBb2,	$08,	nD3,	$04
	dc.b		nRst,	nC3,	$08,	nA2,	$06,	nRst,	$02
	smpsReturn

FinalBossS4_Call04:
	dc.b		nA2,	$0C,	nRst,	$04,	nB2,	$08,	nC3,	$06
	dc.b		nRst,	$02,	nG2,	$08,	nA2,	$04,	nB2,	nC3
	dc.b		$08,	nD3,	nD2,	$0C,	nRst,	$04,	nF2,	$0C
	dc.b		nRst,	$04,	nF2,	$08,	nG2,	$04,	nG3,	nC3
	dc.b		$08,	nA2,	$06,	nRst,	$02
	smpsReturn

FinalBossS4_Call05:
	dc.b		nA2,	$0C,	nRst,	$04,	nB2,	$08,	nC3,	$06
	dc.b		nRst,	$02,	nG2,	$08,	nA2,	$04,	nB2,	nC3
	dc.b		$08,	nD3,	nD2,	$0C,	nRst,	$04,	nF2,	$0C
	dc.b		nRst,	$04,	nF2,	$08,	nG2,	$04,	nG3,	nC3
	dc.b		$08,	nE3,	$04,	nRst
	smpsReturn

FinalBossS4_Call06:
	dc.b		nB2,	$08,	nE3,	$04,	nRst,	nB2,	$08,	nEb3
	dc.b		$04,	nRst,	nBb2,	$08,	nD3,	$04,	nRst,	nC3
	dc.b		$08,	nRst,	$20,	nA2,	$06,	nRst,	$02,	nA2
	dc.b		$0C,	nRst,	$04,	nB2,	$08,	nC3,	$06,	nRst
	dc.b		$02
	smpsReturn

FinalBossS4_Call07:
	dc.b		nG2,	$08,	nA2,	$04,	nB2,	nC3,	$08,	nD3
	smpsReturn

FinalBossS4_Call08:
	dc.b		smpsNoAttack,	$38
	smpsFMvoice	$01
	dc.b		nA5,	$08,	nE5,	nRst,	nA5,	nG5,	nD5,	nRst
	dc.b		nG5,	nFs5
	smpsReturn

FinalBossS4_Call09:
	dc.b		smpsNoAttack,	$08,	nG5,	nF5,	$10,	nE5,	$08,	nD5
	dc.b		$10,	nA5,	$08,	nE5,	nRst,	nA5,	nG5,	nD5
	dc.b		nRst,	nG5,	nFs5
	smpsReturn

FinalBossS4_Call0A:
	dc.b		smpsNoAttack,	$08,	nG5,	nF5,	$10,	nE5,	$08,	nD5
	dc.b		$10,	nRst,	$40,	nA5,	$08
	smpsReturn

FinalBossS4_Call0B:
	dc.b		nE5,	$08,	nRst,	nA5,	nG5,	nD5,	nRst,	nG5
	dc.b		nFs5,	$10,	nG5,	$08,	nF5,	$10,	nE5,	$08
	dc.b		nD5,	$10,	nA5,	$08
	smpsReturn

FinalBossS4_Call0C:
	dc.b		nE5,	$08,	nRst,	nA5,	nG5,	nD5,	nRst,	nG5
	dc.b		nFs5,	$10,	nG5,	$08,	nF5,	$10,	nE5,	$08
	dc.b		nD5,	$10,	nRst,	$08
	smpsReturn

FinalBossS4_Call0D:
	dc.b		smpsNoAttack,	$58,	nA5,	$08,	nE5,	nRst,	nA5,	nG5
	smpsReturn

FinalBossS4_Call0E:
	dc.b		nD5,	$08,	nRst,	nG5,	nFs5
	smpsReturn

FinalBossS4_Call0F:
	dc.b		smpsNoAttack,	$38
	smpsFMvoice	$01
	dc.b		nE5,	$08,	nC5,	nRst,	nE5,	nC5,	nG4,	nRst
	dc.b		nC5,	nD5
	smpsReturn

FinalBossS4_Call10:
	dc.b		smpsNoAttack,	$08,	nE5,	nC5,	$10,	nA4,	$08,	nB4
	dc.b		$10,	nE5,	$08,	nC5,	nRst,	nE5,	nC5,	nG4
	dc.b		nRst,	nC5,	nD5
	smpsReturn

FinalBossS4_Call11:
	dc.b		smpsNoAttack,	$08,	nE5,	nC5,	$10,	nA4,	$08,	nB4
	dc.b		$10,	nRst,	$40,	nE5,	$08
	smpsReturn

FinalBossS4_Call12:
	dc.b		nC5,	$08,	nRst,	nE5,	nC5,	nG4,	nRst,	nC5
	dc.b		nD5,	$10,	nE5,	$08,	nC5,	$10,	nA4,	$08
	dc.b		nB4,	$10,	nE5,	$08
	smpsReturn

FinalBossS4_Call13:
	dc.b		nC5,	$08,	nRst,	nE5,	nC5,	nG4,	nRst,	nC5
	dc.b		nD5,	$10,	nE5,	$08,	nC5,	$10,	nA4,	$08
	dc.b		nB4,	$10,	nRst,	$08
	smpsReturn

FinalBossS4_Call14:
	dc.b		smpsNoAttack,	$58,	nE5,	$08,	nC5,	nRst,	nE5,	nC5
	smpsReturn

FinalBossS4_Call15:
	dc.b		nG4,	$08,	nRst,	nC5,	nD5
	smpsReturn

FinalBossS4_Call16:
	dc.b		smpsNoAttack,	$40
	smpsFMvoice	$02
	dc.b		nA5,	$04,	nRst,	nA5,	nRst,	$0C,	nG5,	$04
	dc.b		nRst,	nG5,	nRst,	$1C
	smpsReturn

FinalBossS4_Call17:
	dc.b		nFs5,	$04,	nRst,	nG5,	nRst,	$0C,	nF5,	$04
	dc.b		nRst,	nE5,	nRst,	$1C,	nA5,	$04,	nRst,	nA5
	dc.b		nRst,	$0C,	nG5,	$04,	nRst,	nG5,	nRst,	$1C
	smpsReturn

FinalBossS4_Call18:
	dc.b		nFs5,	$04,	nRst,	nG5,	nRst,	$0C,	nF5,	$04
	dc.b		nRst,	nE5,	nRst,	$1C,	nE5,	$04,	nRst,	nE5
	dc.b		nRst,	$0C,	nEb5,	$04,	nRst,	$0C,	nD5,	$04
	dc.b		nRst,	nC5,	nRst,	$0C
	smpsReturn

FinalBossS4_Call19:
	dc.b		nA5,	$04,	nRst,	nA5,	nRst,	$0C,	nG5,	$04
	dc.b		nRst,	nG5,	nRst,	$1C,	nFs5,	$04,	nRst,	nG5
	dc.b		nRst,	$0C,	nF5,	$04,	nRst,	nE5,	nRst,	$1C
	smpsReturn

FinalBossS4_Call1A:
	dc.b		nE5,	$04,	nRst,	nE5,	nRst,	$0C,	nEb5,	$04
	dc.b		nRst,	$0C,	nD5,	$04,	nRst,	nC5,	nRst,	$2C
	dc.b		nA5,	$04,	nRst,	nA5,	nRst,	$0C,	nG5,	$04
	dc.b		nRst
	smpsReturn

FinalBossS4_Call1B:
	dc.b		nG5,	$04,	nRst,	$1C
	smpsReturn

FinalBossS4_Call1C:
	dc.b		smpsNoAttack,	$40
	smpsFMvoice	$02
	dc.b		nE5,	$04,	nRst,	nE5,	nRst,	$0C,	nE5,	$04
	dc.b		nRst,	nE5,	nRst,	$1C
	smpsReturn

FinalBossS4_Call1D:
	dc.b		nD5,	$04,	nRst,	nD5,	nRst,	$0C,	nC5,	$04
	dc.b		nRst,	nC5,	nRst,	$1C,	nE5,	$04,	nRst,	nE5
	dc.b		nRst,	$0C,	nE5,	$04,	nRst,	nE5,	nRst,	$1C
	smpsReturn

FinalBossS4_Call1E:
	dc.b		nD5,	$04,	nRst,	nD5,	nRst,	$0C,	nC5,	$04
	dc.b		nRst,	nC5,	nRst,	$1C,	nB4,	$04,	nRst,	nB4
	dc.b		nRst,	$0C,	nBb4,	$04,	nRst,	$0C,	nA4,	$04
	dc.b		nRst,	nG4,	nRst,	$0C
	smpsReturn

FinalBossS4_Call1F:
	dc.b		nE5,	$04,	nRst,	nE5,	nRst,	$0C,	nE5,	$04
	dc.b		nRst,	nE5,	nRst,	$1C,	nD5,	$04,	nRst,	nD5
	dc.b		nRst,	$0C,	nC5,	$04,	nRst,	nC5,	nRst,	$1C
	smpsReturn

FinalBossS4_Call20:
	dc.b		nB4,	$04,	nRst,	nB4,	nRst,	$0C,	nBb4,	$04
	dc.b		nRst,	$0C,	nA4,	$04,	nRst,	nG4,	nRst,	$2C
	dc.b		nE5,	$04,	nRst,	nE5,	nRst,	$0C,	nE5,	$04
	dc.b		nRst
	smpsReturn

FinalBossS4_Call21:
	dc.b		nE5,	$04,	nRst,	$1C
	smpsReturn

FinalBossS4_Call22:
	dc.b		smpsNoAttack,	$40
	smpsPSGvoice	$00
	dc.b		nA5,	$08,	nE5,	nRst,	nA5,	nG5,	nD5,	nRst
	dc.b		nG5
	smpsReturn

FinalBossS4_Call23:
	dc.b		nFs5,	$10,	nG5,	$08,	nF5,	$10,	nE5,	$08
	dc.b		nD5,	nRst,	nA5,	nE5,	nRst,	nA5,	nG5,	nD5
	dc.b		nRst,	nG5
	smpsReturn

FinalBossS4_Call24:
	dc.b		nFs5,	$10,	nG5,	$08,	nF5,	$10,	nE5,	$08
	dc.b		nD5,	nRst,	$48
	smpsReturn

FinalBossS4_Call25:
	dc.b		nA5,	$08,	nE5,	nRst,	nA5,	nG5,	nD5,	nRst
	dc.b		nG5,	nFs5,	$10,	nG5,	$08,	nF5,	$10,	nE5
	dc.b		$08,	nD5,	nRst
	smpsReturn

FinalBossS4_Call26:
	dc.b		smpsNoAttack,	$60,	nA5,	$08,	nE5,	nRst,	nA5
	smpsReturn

FinalBossS4_Call27:
	dc.b		nG5,	$08,	nD5,	nRst,	nG5
	smpsReturn

FinalBossS4_Call28:
	dc.b		smpsNoAttack,	$48
	smpsPSGvoice	$00
	dc.b		nE5,	$04,	nA5,	nE6,	nA6,	nG6,	nE6,	nD6
	dc.b		nG5,	nRst,	$18
	smpsReturn

FinalBossS4_Call29:
	dc.b		nFs6,	$04,	nD6,	nG6,	nFs6,	nD6,	nA5,	nRst
	dc.b		$08,	nG5,	$04,	nRst,	nB4,	nD5,	nB5,	nG5
	dc.b		nRst,	$10,	nE5,	$04,	nA5,	nE6,	nA6,	nG6
	dc.b		nE6,	nD6,	nG5,	nRst,	$18
	smpsReturn

FinalBossS4_Call2A:
	dc.b		nFs6,	$04,	nD6,	nG6,	nFs6,	nD6,	nA5,	nRst
	dc.b		$08,	nG5,	$04,	nRst,	nB4,	nD5,	nB5,	nG5
	dc.b		nRst,	nD5,	nE5,	nB5,	nD6,	nA5,	nB5,	nE6
	dc.b		nBb6,	nEb6,	nBb5,	nA6,	nD6,	nA5,	nE6,	nC6
	dc.b		nRst,	$08
	smpsReturn

FinalBossS4_Call2B:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nE5,	$04,	nA5,	nE6,	nA6,	nG6,	nE6,	nD6
	dc.b		nG5,	nRst,	$18,	nFs6,	$04,	nD6,	nG6,	nFs6
	dc.b		nD6,	nA5,	nRst,	$08,	nG5,	$04,	nRst,	nB4
	dc.b		nD5,	nB5,	nG5,	nRst,	$08
	smpsReturn

FinalBossS4_Call2C:
	dc.b		smpsNoAttack,	$08,	nE5,	$04,	nA5,	nE6,	nA6,	nG6
	dc.b		nE6,	nD6,	nG5,	nRst,	$18,	nFs6,	$04,	nD6
	dc.b		nG6,	nFs6,	nD6,	nA5,	nRst,	$08,	nG5,	$04
	dc.b		nRst,	nB4,	nD5,	nB5,	nG5,	nRst,	nD5
	smpsReturn

FinalBossS4_Call2D:
	dc.b		nE5,	$04,	nB5,	nD6,	nA5,	nB5,	nE6,	nBb6
	dc.b		nEb6,	nBb5,	nA6,	nD6,	nA5,	nE6,	nC6,	nRst
	dc.b		$30,	nE5,	$04,	nA5,	nE6,	nA6,	nG6,	nE6
	smpsReturn

FinalBossS4_Call2E:
	dc.b		nD6,	$04,	nG5,	nRst,	$18
	smpsReturn

FinalBossS4_Call2F:
	dc.b		smpsNoAttack,	$78
	smpsPSGvoice	$00
	dc.b		nE5,	$08
	smpsReturn

FinalBossS4_Call30:
	dc.b		nC5,	$08,	nRst,	nE5,	nC5,	nG4,	nRst,	nC5
	dc.b		nD5,	$10,	nE5,	$08,	nC5,	$10,	nA4,	$08
	dc.b		nB4,	$10,	nE5,	$08
	smpsReturn

FinalBossS4_Call31:
	dc.b		nC5,	$08,	nRst,	nE5,	nC5,	nG4,	nRst,	nC5
	dc.b		nD5,	$10,	nE5,	$08,	nC5,	$10,	nA4,	$08
	dc.b		nB4,	$10,	nRst,	$08
	smpsReturn

FinalBossS4_Call32:
	dc.b		smpsNoAttack,	$38
	smpsPSGvoice	$00
	dc.b		nE5,	$08,	nC5,	nRst,	nE5,	nC5,	nG4,	nRst
	dc.b		nC5,	nD5
	smpsReturn

FinalBossS4_Call33:
	dc.b		smpsNoAttack,	$08,	nE5,	nC5,	$10,	nA4,	$08,	nB4
	dc.b		$10,	nE5,	$08,	nC5,	nRst,	nE5,	nC5,	nG4
	dc.b		nRst,	nC5,	nD5
	smpsReturn

FinalBossS4_Call34:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nE5,	nC5,	$10,	nA4,	$08,	nB4,	$10,	nRst
	dc.b		$48
	smpsReturn

FinalBossS4_Call35:
	dc.b		smpsNoAttack,	$18,	nE5,	$08
	smpsReturn

FinalBossS4_Call36:
	dc.b		dsnare,	$03,	dsnare,	dsnare,	$02,	$08,	$03,	dsnare
	dc.b		dsnare,	$02,	$08,	$03,	dsnare,	dsnare,	$02,	$08
	dc.b		dsnare,	dsnare,	dsnare,	dsnare,	$04,	dsnare,	dsnare,	dsnare
	dc.b		dsnare,	$08,	$10,	nRst,	$08,	dsnare
	smpsReturn

FinalBossS4_Call37:
	dc.b		dsnare,	$08,	$04,	dsnare,	dsnare,	dsnare,	dsnare,	$08
	dc.b		$10,	$04,	dsnare,	dsnare,	$08,	dsnare,	dsnare,	$04
	dc.b		dsnare,	dsnare,	dsnare,	dsnare,	$08,	$10,	nRst,	$08
	dc.b		dsnare
	smpsReturn

FinalBossS4_Call38:
	dc.b		dsnare,	$08,	$04,	dsnare,	dsnare,	dsnare,	dsnare,	$08
	dc.b		$10,	$04,	dsnare,	dsnare,	$08,	$03,	dsnare,	dsnare
	dc.b		$02,	$08,	$03,	dsnare,	dsnare,	$02,	$08,	$03
	dc.b		dsnare,	dsnare,	$02,	$08,	dsnare,	dsnare
	smpsReturn

FinalBossS4_Call39:
	dc.b		dsnare,	$08,	$04,	dsnare,	dsnare,	dsnare,	dsnare,	$08
	dc.b		$10,	nRst,	$08,	dsnare,	dsnare,	dsnare,	$04,	dsnare
	dc.b		dsnare,	dsnare,	dsnare,	$08,	$10,	$04,	dsnare,	dsnare
	dc.b		$08
	smpsReturn

FinalBossS4_Call3A:
	dc.b		dsnare,	$03,	dsnare,	dsnare,	$02,	$08,	$03,	dsnare
	dc.b		dsnare,	$02,	$08,	$03,	dsnare,	dsnare,	$02,	$08
	dc.b		dsnare,	dsnare,	dsnare,	$04,	dsnare,	dsnare,	dsnare,	dsnare
	dc.b		dsnare,	dsnare,	$08,	dsnare,	dsnare,	$04,	dsnare,	dsnare
	dc.b		dsnare,	dsnare,	$08
	smpsReturn

FinalBossS4_Call3B:
	dc.b		dsnare,	$10,	nRst,	$08,	dsnare
	smpsReturn

FinalBossS4_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 01
	dc.b		$3A,$7B,$5B,$40,$40,$9F,$1F,$1F,$1F,$0F,$0B,$05,$0C,$0F,$19,$0C
	dc.b		$13,$F9,$F5,$F9,$06,$21,$01,$01,$7F;			Voice 02
	even
