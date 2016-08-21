; =============================================================================================
; Project Name:		MadGear
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

MadGear_Header:
	smpsHeaderVoice	MadGear_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	MadGear_DAC
	smpsHeaderFM	MadGear_FM1,	smpsPitch00,	$10
	smpsHeaderFM	MadGear_FM2,	smpsPitch00,	$02
	smpsHeaderFM	MadGear_FM3,	smpsPitch02lo,	$16
	smpsHeaderFM	MadGear_FM4,	smpsPitch02lo,	$12
	smpsHeaderFM	MadGear_FM5,	smpsPitch00,	$02
	smpsHeaderPSG	MadGear_PSG1,	smpsPitch04lo,	$02,	$00
	smpsHeaderPSG	MadGear_PSG2,	smpsPitch04lo,	$02,	$00
	smpsHeaderPSG	MadGear_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
MadGear_FM1:
	smpsCall	MadGear_Call01
	smpsCall	MadGear_Call02
	smpsCall	MadGear_Call03
	smpsCall	MadGear_Call04
	smpsCall	MadGear_Call05
	smpsCall	MadGear_Call06
	smpsCall	MadGear_Call07
	smpsJump	MadGear_FM1

; FM2 Data
MadGear_FM2:
	smpsCall	MadGear_Call08
	smpsCall	MadGear_Call09
	smpsCall	MadGear_Call0A
	smpsCall	MadGear_Call0B
	smpsCall	MadGear_Call0C
	smpsCall	MadGear_Call0D
	smpsCall	MadGear_Call0E
	smpsJump	MadGear_FM2

; FM3 Data
MadGear_FM3:
	smpsCall	MadGear_Call0F
	smpsCall	MadGear_Call0F
	smpsCall	MadGear_Call10
	smpsCall	MadGear_Call11
	smpsCall	MadGear_Call12
	smpsCall	MadGear_Call13
	smpsCall	MadGear_Call14
	smpsJump	MadGear_FM3

; FM4 Data
MadGear_FM4:
	smpsCall	MadGear_Call15
	smpsCall	MadGear_Call15
	smpsCall	MadGear_Call16
	smpsCall	MadGear_Call17
	smpsCall	MadGear_Call18
	smpsCall	MadGear_Call19
	smpsCall	MadGear_Call1A
	smpsJump	MadGear_FM4

; FM5 Data
MadGear_FM5:
	smpsCall	MadGear_Call1B
	smpsCall	MadGear_Call1C
	smpsCall	MadGear_Call1D
	smpsCall	MadGear_Call1E
	smpsCall	MadGear_Call1F
	smpsCall	MadGear_Call20
	smpsCall	MadGear_Call21
	smpsJump	MadGear_FM5

; PSG1 Data
MadGear_PSG1:
	smpsCall	MadGear_Call22
	smpsCall	MadGear_Call22
	smpsCall	MadGear_Call23
	smpsCall	MadGear_Call24
	smpsCall	MadGear_Call25
	smpsCall	MadGear_Call26
	smpsCall	MadGear_Call27
	smpsJump	MadGear_PSG1

; PSG2 Data
MadGear_PSG2:
	smpsCall	MadGear_Call28
	smpsCall	MadGear_Call28
	smpsCall	MadGear_Call29
	smpsCall	MadGear_Call2A
	smpsCall	MadGear_Call2B
	smpsCall	MadGear_Call2C
	smpsCall	MadGear_Call2D
	smpsJump	MadGear_PSG2

; PSG3 Data
MadGear_PSG3:
	smpsPSGform	$E7
	smpsCall	MadGear_Call2E
	smpsCall	MadGear_Call2F
	smpsCall	MadGear_Call30
	smpsCall	MadGear_Call30
	smpsCall	MadGear_Call31
	smpsCall	MadGear_Call32
	smpsCall	MadGear_Call33
	smpsJump	MadGear_PSG3

; DAC Data
MadGear_DAC:
	smpsCall	MadGear_Call34
	smpsCall	MadGear_Call35
	smpsCall	MadGear_Call36
	smpsCall	MadGear_Call36
	smpsCall	MadGear_Call37
	smpsCall	MadGear_Call38
	smpsCall	MadGear_Call39
	smpsJump	MadGear_DAC

MadGear_Call01:
	smpsFMvoice	$00
	dc.b		nC2,	$08,	nG2,	$04,	nC2,	$08,	nD2,	$04
	dc.b		nEb2,	nG2,	nBb2,	$08,	nF2,	$04,	nBb2,	$08
	dc.b		nC3,	$02,	nC4,	nBb2,	nF3,	nBb3,	nF4,	nAb2
	dc.b		$08,	nEb2,	$04,	nAb2,	$08,	nG2,	$04,	nF2
	dc.b		nEb2,	nCs2,	$08,	nAb2,	$04,	nCs2,	nCs3,	$02
	dc.b		nCs2,	nF2,	nAb2,	nCs3,	nF3,	nAb3,	nCs4
	smpsReturn

MadGear_Call02:
	dc.b		nC2,	$08,	nG2,	$04,	nC2,	$08,	nD2,	$04
	dc.b		nEb2,	nG2,	nBb2,	$08,	nF2,	$04,	nBb2,	$08
	dc.b		nC3,	$02,	nC4,	nBb2,	nF3,	nBb3,	nF4,	nAb2
	dc.b		$08,	nEb2,	$04,	nAb2,	$08,	nG2,	$04,	nF2
	dc.b		nEb2,	nCs2,	$08,	nAb2,	$04,	nCs2,	nCs3,	$02
	dc.b		nCs2,	nF2,	nAb2,	nCs3,	nF3,	nAb3,	nCs4
	smpsReturn

MadGear_Call03:
	dc.b		nC2,	$08,	nG2,	$04,	nC2,	$08,	nD2,	$04
	dc.b		nEb2,	nG2,	nBb2,	$08,	nF2,	$04,	nBb2,	$08
	dc.b		nF2,	$04,	nBb2,	$02,	nBb3,	nA2,	nA3,	nAb2
	dc.b		$08,	nEb2,	$04,	nAb2,	$08,	nG2,	$02,	nG3
	dc.b		nFs2,	$04,	nF2,	nEb2,	nEb2,	nRst,	nF2,	nRst
	dc.b		nFs2,	nG2,	$02,	nG3,	nG4,	nG3
	smpsReturn

MadGear_Call04:
	dc.b		nC2,	$08,	nG2,	$04,	nC2,	$08,	nD2,	$04
	dc.b		nEb2,	nG2,	nBb2,	$08,	nF2,	$04,	nBb2,	$08
	dc.b		nF2,	$04,	nBb2,	$02,	nBb3,	nA2,	nA3,	nAb2
	dc.b		$08,	nEb2,	$04,	nAb2,	$08,	$02,	nAb3,	nG2
	dc.b		$04,	nEb2,	nF2,	nF2,	nRst,	nAb2,	nRst,	nFs2
	dc.b		nRst,	nG2
	smpsReturn

MadGear_Call05:
	dc.b		nC3,	$04,	nC2,	nG2,	nC2,	$08,	nD2,	$04
	dc.b		nEb2,	nG2,	nBb2,	$08,	nF2,	$04,	nBb2,	$08
	dc.b		nF2,	$04,	nBb2,	$02,	nBb3,	nA3,	$04,	nAb3
	dc.b		$08,	nEb3,	$04,	nAb2,	$08,	nG2,	$02,	nG3
	dc.b		nFs2,	$04,	nF2,	nRst,	nAb2,	nRst,	nG2,	nRst
	dc.b		nAb2,	$02,	nAb3,	nG2,	$04,	nBb2,	$02,	nBb3
	smpsReturn

MadGear_Call06:
	dc.b		nC2,	$08,	nG2,	$04,	nC2,	$08,	nG2,	$04
	dc.b		nFs2,	$02,	nG3,	nF2,	$04,	nEb2,	$08,	nBb2
	dc.b		$04,	nEb2,	$08,	nBb2,	$04,	nEb3,	$02,	nG3
	dc.b		nBb3,	nEb4,	nAb2,	$04,	nAb2,	nEb2,	nAb2,	$08
	dc.b		nEb3,	$04,	nAb2,	nF2,	nRst,	nFs2,	nRst,	nAb2
	dc.b		nRst,	nG2,	nRst,	nBb2
	smpsReturn

MadGear_Call07:
	dc.b		nEb3,	$04,	nBb3,	nEb3,	$02,	nEb4,	nD4,	$04
	dc.b		nA3,	nD3,	$02,	nD4,	nCs3,	nAb3,	nCs4,	nCs3
	smpsReturn

MadGear_Call08:
	smpsFMvoice	$01
	dc.b		nC5,	$02,	nC5,	nC5,	$03,	nRst,	$05,	nG4
	dc.b		$0C,	nBb4,	$08,	nC5,	$02,	nC5,	nC5,	$03
	dc.b		nRst,	$05,	nEb5,	$14,	nC5,	$02,	nC5,	nC5
	dc.b		$03,	nRst,	$05,	nG4,	$0C,	nBb4,	$08,	nC5
	dc.b		$02,	nC5,	nC5,	$03,	nRst,	$05,	nBb4,	$14
	smpsReturn

MadGear_Call09:
	dc.b		nC5,	$02,	nC5,	nC5,	$03,	nRst,	$05,	nG4
	dc.b		$0C,	nBb4,	$08,	nC5,	$02,	nC5,	nC5,	$03
	dc.b		nRst,	$05,	nEb5,	$14,	nC5,	$02,	nC5,	nC5
	dc.b		$03,	nRst,	$05,	nG4,	$0C,	nBb4,	$08,	nC5
	dc.b		$02,	nC5,	nC5,	$03,	nRst,	$05,	nBb4,	$14
	smpsReturn

MadGear_Call0A:
	dc.b		nRst,	$04,	nG5,	$02,	nRst,	nD5,	nRst,	$06
	dc.b		nG5,	$02,	nRst,	nD5,	nRst,	$06,	nC5,	$02
	dc.b		nRst,	$06,	nF5,	$02,	nRst,	nC5,	nRst,	$06
	dc.b		nF5,	$02,	nRst,	nC5,	nRst,	$06,	nBb4,	$02
	dc.b		nRst,	$06,	nEb5,	$02,	nRst,	nBb4,	nRst,	$06
	dc.b		nEb5,	$02,	nRst,	nBb4,	nRst,	$06,	nAb4,	$02
	dc.b		nRst,	$06,	nG4,	$02,	nRst,	$06,	nAb4,	$02
	dc.b		nRst,	$06,	nBb4,	$02,	nRst,	$06,	nD5,	$02
	dc.b		nRst
	smpsReturn

MadGear_Call0B:
	dc.b		smpsNoAttack,	$04,	nG5,	$02,	nRst,	nD5,	nRst,	$06
	dc.b		nG5,	$02,	nRst,	nD5,	nRst,	$06,	nC5,	$02
	dc.b		nRst,	$06,	nF5,	$02,	nRst,	nC5,	nRst,	$06
	dc.b		nF5,	$02,	nRst,	nC5,	nRst,	$06,	nBb5,	$02
	dc.b		nRst,	$06,	nEb5,	$02,	nRst,	nBb4,	nRst,	$06
	dc.b		nEb5,	$02,	nRst,	nBb4,	nRst,	$06,	nAb5,	$02
	dc.b		nRst,	$06,	nAb5,	$02,	nRst,	$06,	nAb5,	$02
	dc.b		nRst,	$06,	nC5,	$02,	nRst,	$06,	nD5,	$02
	dc.b		nRst
	smpsReturn

MadGear_Call0C:
	dc.b		nC5,	$02,	nF4,	nG4,	nC4,	nRst,	$10,	nC4
	dc.b		$02,	nF4,	nG4,	nBb4,	nC5,	nF5,	nG5,	nBb4
	dc.b		nRst,	$10,	nBb4,	$02,	nF4,	nBb4,	nF5,	nEb5
	dc.b		nBb4,	nAb4,	nEb4,	nRst,	$10,	nAb3,	$02,	nEb4
	dc.b		nAb4,	nEb5,	nRst,	$04,	nC5,	$02,	nRst,	$06
	dc.b		nAb4,	$02,	nRst,	$06,	nBb4,	$02,	nRst,	$06
	dc.b		nD5,	$02,	nRst
	smpsReturn

MadGear_Call0D:
	dc.b		nC5,	$02,	nF4,	nG4,	nC4,	nRst,	$10,	nC4
	dc.b		$02,	nF4,	nG4,	nBb4,	nC5,	nF5,	nG5,	nBb4
	dc.b		nRst,	$10,	nBb3,	$02,	nF4,	nBb4,	nF5,	nEb5
	dc.b		nBb4,	nAb4,	nEb4,	nRst,	$10,	nAb3,	$02,	nEb4
	dc.b		nAb4,	nEb5,	nRst,	$04,	nEb5,	$02,	nRst,	$06
	dc.b		nCs5,	$02,	nRst,	$06,	nB4,	$02,	nRst,	$06
	dc.b		nD5,	$02,	nRst
	smpsReturn

MadGear_Call0E:
	dc.b		smpsNoAttack,	$04,	nEb5,	nEb5,	nRst,	nD5,	nD5,	nCs5
	dc.b		nCs5
	smpsReturn

MadGear_Call0F:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGear_Call10:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$02
	dc.b		nC6,	$0C,	nEb6,	$08,	nD6,	nBb5,	$04,	nC6
	dc.b		$0C,	nG5,	nF5,	$08,	nG5,	$0C,	nC6,	$16
	dc.b		nRst
	smpsReturn

MadGear_Call11:
	dc.b		smpsNoAttack,	$08,	nC6,	$0C,	nEb6,	$08,	nD6,	$04
	dc.b		nBb5,	$08,	nC6,	$0C,	nG5,	nBb5,	$08,	nC6
	dc.b		$0C,	nAb5,	$16,	nRst
	smpsReturn

MadGear_Call12:
	dc.b		smpsNoAttack,	$0C,	nC4,	$04,	nEb4,	nF4,	nG4,	nBb4
	dc.b		nRst,	nC5,	nRst,	nG4,	nBb4,	nRst,	$18,	nC4
	dc.b		$04,	nEb4,	nF4,	nG4,	nBb4,	nRst,	nC5,	nRst
	dc.b		nEb5,	nD5,	$10
	smpsReturn

MadGear_Call13:
	dc.b		nBb4,	$08,	nRst,	$04,	nC4,	nEb4,	nF4,	nG4
	dc.b		nBb4,	nRst,	nC5,	nRst,	nG4,	nBb4,	$16,	nRst
	dc.b		$02,	nG4,	$08,	nC4,	$04,	nEb4,	$08,	nRst
	dc.b		$04,	nF4,	$08,	nRst,	$04,	nFs4,	$08,	nRst
	dc.b		$04,	nG4,	nRst
	smpsReturn

MadGear_Call14:
	dc.b		nBb4,	$04,	nRst,	$1C
	smpsReturn

MadGear_Call15:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGear_Call16:
	smpsFMvoice	$02
	dc.b		nC5,	$0C,	nEb5,	$08,	nD5,	nBb4,	$04,	nC5
	dc.b		$0C,	nG4,	nF4,	$08,	nG4,	$0C,	nC5,	$16
	dc.b		nRst,	$1E
	smpsReturn

MadGear_Call17:
	dc.b		nC5,	$0C,	nEb5,	$08,	nD5,	$04,	nBb4,	$08
	dc.b		nC5,	$0C,	nG4,	nBb4,	$08,	nC5,	$0C,	nAb4
	dc.b		$16,	nRst,	$1E
	smpsReturn

MadGear_Call18:
	dc.b		smpsNoAttack,	$04,	nC4,	nEb4,	nF4,	nG4,	nBb4,	nRst
	dc.b		nC5,	nRst,	nG4,	nBb4,	$14,	nRst,	$08,	nC4
	dc.b		$04,	nEb4,	nF4,	nG4,	nBb4,	nRst,	nC5,	nRst
	dc.b		nEb5,	nD5,	$10,	nBb4,	$08
	smpsReturn

MadGear_Call19:
	dc.b		nRst,	$04,	nC4,	nEb4,	nF4,	nG4,	nBb4,	nRst
	dc.b		nC5,	nRst,	nG4,	nBb4,	$16,	nRst,	$02,	nG4
	dc.b		$08,	nC4,	$04,	nEb4,	$08,	nRst,	$04,	nF4
	dc.b		$08,	nRst,	$04,	nFs4,	$08,	nRst,	$04,	nG4
	dc.b		nRst,	nBb4,	nRst
	smpsReturn

MadGear_Call1A:
	dc.b		smpsNoAttack,	$20
	smpsReturn

MadGear_Call1B:
	smpsFMvoice	$01
	dc.b		nC4,	$02,	nC4,	nC4,	$03,	nRst,	$05,	nC4
	dc.b		$14,	nF4,	$02,	nF4,	nF4,	$03,	nRst,	$05
	dc.b		nF4,	$14,	nEb4,	$02,	nEb4,	nEb4,	$03,	nRst
	dc.b		$05,	nEb4,	$14,	nCs4,	$02,	nCs4,	nCs4,	$03
	dc.b		nRst,	$05,	nCs4,	$14
	smpsReturn

MadGear_Call1C:
	dc.b		nC4,	$02,	nC4,	nC4,	$03,	nRst,	$05,	nC4
	dc.b		$14,	nF4,	$02,	nF4,	nF4,	$03,	nRst,	$05
	dc.b		nF4,	$14,	nEb4,	$02,	nEb4,	nEb4,	$03,	nRst
	dc.b		$05,	nEb4,	$14,	nCs4,	$02,	nCs4,	nCs4,	$03
	dc.b		nRst,	$05,	nCs4,	$14
	smpsReturn

MadGear_Call1D:
	dc.b		nRst,	$04,	nC5,	$02,	nRst,	nG4,	nRst,	$06
	dc.b		nC5,	$02,	nRst,	nG4,	nRst,	$06,	nG4,	$02
	dc.b		nRst,	$06,	nBb4,	$02,	nRst,	nF4,	nRst,	$06
	dc.b		nBb4,	$02,	nRst,	nF4,	nRst,	$06,	nF4,	$02
	dc.b		nRst,	$06,	nBb4,	$02,	nRst,	nEb4,	nRst,	$06
	dc.b		nBb4,	$02,	nRst,	nEb4,	nRst,	$06,	nEb4,	$02
	dc.b		nRst,	$06,	nC4,	$02,	nRst,	$06,	nEb4,	$02
	dc.b		nRst,	$06,	nF4,	$02,	nRst,	$06,	nEb4,	$02
	dc.b		nRst
	smpsReturn

MadGear_Call1E:
	dc.b		smpsNoAttack,	$04,	nC4,	$02,	nRst,	nG4,	nRst,	$06
	dc.b		nC4,	$02,	nRst,	nG3,	nRst,	$06,	nG3,	$02
	dc.b		nRst,	$06,	nBb3,	$02,	nRst,	nF3,	nRst,	$06
	dc.b		nBb3,	$02,	nRst,	nF3,	nRst,	$06,	nF4,	$02
	dc.b		nRst,	$06,	nBb3,	$02,	nRst,	nEb4,	nRst,	$06
	dc.b		nBb4,	$02,	nRst,	nEb4,	nRst,	$06,	nEb4,	$02
	dc.b		nRst,	$06,	nF4,	$02,	nRst,	$06,	nEb4,	$02
	dc.b		nRst,	$06,	nF4,	$02,	nRst,	$06,	nG4,	$02
	dc.b		nRst
	smpsReturn

MadGear_Call1F:
	dc.b		smpsNoAttack,	$04,	nC4,	nEb4,	nF4,	nG4,	nBb4,	nRst
	dc.b		nC5,	nRst,	nG4,	nBb4,	$14,	nRst,	$08,	nC4
	dc.b		$04,	nEb4,	nF4,	nG5,	nBb4,	nRst,	nC5,	nRst
	dc.b		nAb4,	$02,	nRst,	$06,	nF3,	$02,	nRst,	$06
	dc.b		nF4,	$02,	nRst,	$06,	nG4,	$02,	nRst
	smpsReturn

MadGear_Call20:
	dc.b		nRst,	$04,	nC4,	nEb4,	nF4,	nG4,	nBb4,	nRst
	dc.b		nC5,	nRst,	nG4,	nBb4,	$16,	nRst,	$02,	nG4
	dc.b		$08,	nC4,	$04,	nEb4,	$08,	nRst,	$04,	nF4
	dc.b		$08,	nRst,	$04,	nFs4,	$02,	nRst,	$06,	nAb4
	dc.b		$02,	nRst,	$06,	nG4,	$02,	nRst,	$06,	nFs4
	dc.b		$02,	nRst
	smpsReturn

MadGear_Call21:
	dc.b		smpsNoAttack,	$04,	nBb3,	nBb4,	nRst,	nA4,	nA4,	nAb4
	dc.b		nAb4
	smpsReturn

MadGear_Call22:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGear_Call23:
	smpsPSGvoice	$00
	dc.b		nC6,	$0C,	nEb6,	$08,	nD6,	nBb5,	$04,	nC6
	dc.b		$0C,	nG5,	nF5,	$08,	nG5,	$0C,	nC6,	$16
	dc.b		nRst,	$1E
	smpsReturn

MadGear_Call24:
	dc.b		nC6,	$0C,	nEb6,	$08,	nD6,	$04,	nBb5,	$08
	dc.b		nC6,	$0C,	nG5,	nBb5,	$08,	nC6,	$0C,	nAb5
	dc.b		$16,	nRst,	$1E
	smpsReturn

MadGear_Call25:
	dc.b		smpsNoAttack,	$04,	nC5,	nEb5,	nF5,	nG5,	nBb5,	nRst
	dc.b		nC6,	nRst,	nG5,	nBb5,	$14,	nRst,	$08,	nC5
	dc.b		$04,	nEb5,	nF5,	nG5,	nBb5,	nRst,	nC6,	nRst
	dc.b		nEb6,	nD6,	$10,	nBb5,	$08
	smpsReturn

MadGear_Call26:
	dc.b		nRst,	$04,	nC5,	nEb5,	nF5,	nG5,	nBb5,	nRst
	dc.b		nC6,	nRst,	nG5,	nBb5,	$16,	nRst,	$02,	nG5
	dc.b		$08,	nC5,	$04,	nEb5,	$08,	nRst,	$04,	nF5
	dc.b		$08,	nRst,	$04,	nFs5,	$08,	nRst,	$04,	nG5
	dc.b		nRst,	nBb5,	nRst
	smpsReturn

MadGear_Call27:
	dc.b		smpsNoAttack,	$20
	smpsReturn

MadGear_Call28:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGear_Call29:
	smpsPSGvoice	$00
	dc.b		nC5,	$0C,	nEb5,	$08,	nD5,	nBb4,	$04,	nC5
	dc.b		$0C,	nG4,	nF4,	$08,	nG4,	$0C,	nC5,	$16
	dc.b		nRst,	$1E
	smpsReturn

MadGear_Call2A:
	dc.b		nC5,	$0C,	nEb5,	$08,	nD5,	$04,	nBb4,	$08
	dc.b		nC5,	$0C,	nG4,	nBb4,	$08,	nC5,	$0C,	nAb4
	dc.b		$16,	nRst,	$1E
	smpsReturn

MadGear_Call2B:
	dc.b		smpsNoAttack,	$0C,	nC5,	$04,	nEb5,	nF5,	nG5,	nBb5
	dc.b		nRst,	nC6,	nRst,	nG5,	nBb5,	nRst,	$18,	nC5
	dc.b		$04,	nEb5,	nF5,	nG5,	nBb5,	nRst,	nC6,	nRst
	dc.b		nEb6,	nD6,	$10
	smpsReturn

MadGear_Call2C:
	dc.b		nBb5,	$08,	nRst,	$04,	nC5,	nEb5,	nF5,	nG5
	dc.b		nBb5,	nRst,	nC6,	nRst,	nG5,	nBb5,	$16,	nRst
	dc.b		$02,	nG5,	$08,	nC5,	$04,	nEb5,	$08,	nRst
	dc.b		$04,	nF5,	$08,	nRst,	$04,	nFs5,	$08,	nRst
	dc.b		$04,	nG5,	nRst
	smpsReturn

MadGear_Call2D:
	dc.b		nBb5,	$04,	nRst,	$1C
	smpsReturn

MadGear_Call2E:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	$04,	$02,	$04
	dc.b		nCs0,	nCs0,	$02,	nRst,	nCs0,	nCs0,	$06,	$02
	dc.b		nRst,	nCs0,	nCs0,	$04,	$02,	$04,	nCs0,	nCs0
	dc.b		$02,	nRst,	nCs0,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nRst,	nCs0,	nCs0,	$04,	$02,	$04,	nCs0,	nCs0
	dc.b		$02,	nRst,	nCs0,	nCs0,	$06,	$02,	nRst,	nCs0
	dc.b		nCs0,	$04,	$02,	$08,	$02,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nCs0
	smpsReturn

MadGear_Call2F:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	$04,	$02,	$04
	dc.b		nCs0,	nCs0,	$02,	nRst,	nCs0,	nCs0,	$06,	$02
	dc.b		nRst,	nCs0,	nCs0,	$04,	$02,	$04,	nCs0,	nCs0
	dc.b		$02,	nRst,	nCs0,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nRst,	nCs0,	nCs0,	$04,	$02,	$04,	nCs0,	nCs0
	dc.b		$02,	nRst,	nCs0,	nCs0,	$06,	$02,	nRst,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nCs0
	smpsReturn

MadGear_Call30:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	$06,	$08,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	nCs0,	nCs0,	$06,	nCs0
	dc.b		nCs0,	$02,	$06,	$04,	nCs0,	nCs0,	$02,	$04
	dc.b		$02,	nRst,	nCs0,	nCs0,	$06,	$08,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nCs0,	$06,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	$06,	$04,	nCs0,	nCs0,	$02
	dc.b		nCs0,	nRst
	smpsReturn

MadGear_Call31:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	$06,	$08,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	nCs0,	nCs0,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	$06,	$08,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nCs0,	$06
	dc.b		$08,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nCs0
	dc.b		$06,	$02,	nRst,	$04,	nCs0,	$02,	$06,	$04
	dc.b		nCs0,	nCs0,	$02,	nCs0,	nRst
	smpsReturn

MadGear_Call32:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	$06,	$08,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	nCs0,	nCs0,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	$06,	$08,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nCs0,	$06
	dc.b		$08,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nCs0
	dc.b		$06,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$04,	nCs0,	nCs0,	nCs0,	$02,	nCs0,	nRst
	smpsReturn

MadGear_Call33:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	smpsReturn

MadGear_Call34:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	dSnare,	$04,	nRst
	dc.b		$02,	dKick,	nRst,	dSnare,	nRst,	dSnare,	dSnare,	dKick
	dc.b		nRst,	$06,	dSnare,	dSnare,	$04,	nRst,	$02,	dKick
	dc.b		nRst,	dSnare,	dSnare,	nRst,	dSnare,	dKick,	nRst,	$06
	dc.b		dSnare,	dSnare,	$04,	nRst,	$02,	dKick,	nRst,	dSnare
	dc.b		nRst,	dSnare,	dSnare,	dKick,	nRst,	$06,	dSnare,	dSnare
	dc.b		$02,	dKick,	nRst,	dKick,	nRst,	dSnare,	dSnare,	dSnare
	dc.b		dSnare
	smpsReturn

MadGear_Call35:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	dSnare,	$04,	nRst
	dc.b		$02,	dKick,	nRst,	dSnare,	nRst,	dSnare,	dSnare,	dKick
	dc.b		nRst,	$06,	dSnare,	dSnare,	$04,	nRst,	$02,	dKick
	dc.b		nRst,	dSnare,	dSnare,	nRst,	dSnare,	dKick,	nRst,	$06
	dc.b		dSnare,	dSnare,	$04,	nRst,	$02,	dKick,	nRst,	dSnare
	dc.b		nRst,	dSnare,	dSnare,	dKick,	nRst,	dSnare,	dSnare,	dSnare
	dc.b		$04,	dKick,	$02,	nRst,	dSnare,	nRst,	dKick,	dKick
	dc.b		dSnare,	dSnare,	dSnare,	dSnare
	smpsReturn

MadGear_Call36:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$04
	dc.b		dSnare,	$02,	nRst,	$04,	dKick,	$02,	nRst,	dSnare
	dc.b		$08,	dKick,	$02,	nRst,	$04,	$02,	dSnare,	$06
	dc.b		$02,	nRst,	$04,	dKick,	dSnare,	$06,	nRst,	$02
	dc.b		dKick,	nRst,	$06,	dSnare,	$02,	nRst,	$04,	dSnare
	dc.b		$02,	nRst,	$04,	dKick,	$02,	nRst,	dSnare,	$08
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	$06,	$02
	dc.b		dKick,	$04,	dKick,	dSnare,	$02,	dSnare,	dSnare,	nRst
	smpsReturn

MadGear_Call37:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$04
	dc.b		dSnare,	$02,	nRst,	$04,	dKick,	$02,	nRst,	dSnare
	dc.b		$08,	dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst
	dc.b		$04,	$02,	dSnare,	nRst,	dKick,	nRst,	dSnare,	$08
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$04
	dc.b		dSnare,	$02,	nRst,	$04,	dKick,	$02,	nRst,	dSnare
	dc.b		$08,	dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	$06
	dc.b		$02,	dKick,	$04,	dKick,	dSnare,	$02,	dSnare,	dSnare
	dc.b		nRst
	smpsReturn

MadGear_Call38:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$04
	dc.b		dSnare,	$02,	nRst,	$04,	dKick,	$02,	nRst,	dSnare
	dc.b		$08,	dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst
	dc.b		$04,	dSnare,	$02,	nRst,	$04,	dKick,	$02,	nRst
	dc.b		dSnare,	$08,	dKick,	$02,	nRst,	$06,	dSnare,	$02
	dc.b		nRst,	$04,	dSnare,	$02,	nRst,	$04,	dKick,	$02
	dc.b		nRst,	dSnare,	$04,	dKick,	$02,	nRst,	dSnare,	nRst
	dc.b		dKick,	nRst,	dKick,	$04,	dSnare,	$02,	nRst,	dKick
	dc.b		$04,	dKick,	dSnare,	$02,	dSnare,	dSnare,	dSnare
	smpsReturn

MadGear_Call39:
	dc.b		dKick,	$02,	nRst,	dSnare,	nRst,	dSnare,	nRst,	dKick
	dc.b		dKick,	dSnare,	nRst,	dKick,	nRst,	dSnare,	dSnare,	dSnare
	dc.b		dSnare
	smpsReturn

MadGear_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$38,$33,$01,$51,$01,$10,$13,$1A,$1B,$0F,$1F,$1F,$1F,$01,$01,$01
	dc.b		$01,$33,$03,$03,$08,$16,$1A,$19,$10;			Voice 01
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 02
	even
