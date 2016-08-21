; =============================================================================================
; Project Name:		MadGearActII
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

MadGearActII_Header:
	smpsHeaderVoice	MadGearActII_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	MadGearActII_DAC
	smpsHeaderFM	MadGearActII_FM1,	smpsPitch00,	$10
	smpsHeaderFM	MadGearActII_FM2,	smpsPitch01lo,	$10
	smpsHeaderFM	MadGearActII_FM3,	smpsPitch01lo,	$10
	smpsHeaderFM	MadGearActII_FM4,	smpsPitch01lo,	$10
	smpsHeaderFM	MadGearActII_FM5,	smpsPitch01lo,	$10
	smpsHeaderPSG	MadGearActII_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	MadGearActII_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	MadGearActII_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
MadGearActII_FM1:
	smpsCall	MadGearActII_Call01
	smpsCall	MadGearActII_Call02
	smpsCall	MadGearActII_Call03
	smpsCall	MadGearActII_Call04
	smpsCall	MadGearActII_Call05
	smpsCall	MadGearActII_Call06
	smpsCall	MadGearActII_Call07
	smpsJump	MadGearActII_FM1

; FM2 Data
MadGearActII_FM2:
	smpsCall	MadGearActII_Call08
	smpsCall	MadGearActII_Call09
	smpsCall	MadGearActII_Call0A
	smpsCall	MadGearActII_Call0B
	smpsCall	MadGearActII_Call0C
	smpsCall	MadGearActII_Call0D
	smpsCall	MadGearActII_Call0E
	smpsJump	MadGearActII_FM2

; FM3 Data
MadGearActII_FM3:
	smpsCall	MadGearActII_Call0F
	smpsCall	MadGearActII_Call10
	smpsCall	MadGearActII_Call11
	smpsCall	MadGearActII_Call12
	smpsCall	MadGearActII_Call13
	smpsCall	MadGearActII_Call14
	smpsCall	MadGearActII_Call15
	smpsJump	MadGearActII_FM3

; FM4 Data
MadGearActII_FM4:
	smpsCall	MadGearActII_Call16
	smpsCall	MadGearActII_Call17
	smpsCall	MadGearActII_Call18
	smpsCall	MadGearActII_Call19
	smpsCall	MadGearActII_Call1A
	smpsCall	MadGearActII_Call1B
	smpsCall	MadGearActII_Call1C
	smpsJump	MadGearActII_FM4

; FM5 Data
MadGearActII_FM5:
	smpsCall	MadGearActII_Call1D
	smpsCall	MadGearActII_Call1E
	smpsCall	MadGearActII_Call1F
	smpsCall	MadGearActII_Call20
	smpsCall	MadGearActII_Call21
	smpsCall	MadGearActII_Call22
	smpsCall	MadGearActII_Call23
	smpsJump	MadGearActII_FM5

; PSG1 Data
MadGearActII_PSG1:
	smpsCall	MadGearActII_Call24
	smpsCall	MadGearActII_Call25
	smpsCall	MadGearActII_Call26
	smpsCall	MadGearActII_Call27
	smpsCall	MadGearActII_Call28
	smpsCall	MadGearActII_Call29
	smpsCall	MadGearActII_Call2A
	smpsJump	MadGearActII_PSG1

; PSG2 Data
MadGearActII_PSG2:
	smpsCall	MadGearActII_Call2B
	smpsCall	MadGearActII_Call2C
	smpsCall	MadGearActII_Call2D
	smpsCall	MadGearActII_Call2E
	smpsCall	MadGearActII_Call2F
	smpsCall	MadGearActII_Call30
	smpsCall	MadGearActII_Call31
	smpsJump	MadGearActII_PSG2

; PSG3 Data
MadGearActII_PSG3:
	smpsPSGform	$E7
	smpsCall	MadGearActII_Call32
	smpsCall	MadGearActII_Call33
	smpsCall	MadGearActII_Call34
	smpsCall	MadGearActII_Call35
	smpsCall	MadGearActII_Call36
	smpsCall	MadGearActII_Call37
	smpsCall	MadGearActII_Call38
	smpsJump	MadGearActII_PSG3

; DAC Data
MadGearActII_DAC:
	smpsCall	MadGearActII_Call39
	smpsCall	MadGearActII_Call3A
	smpsCall	MadGearActII_Call3B
	smpsCall	MadGearActII_Call3C
	smpsCall	MadGearActII_Call3D
	smpsCall	MadGearActII_Call3E
	smpsCall	MadGearActII_Call3F
	smpsJump	MadGearActII_DAC

MadGearActII_Call01:
	dc.b		smpsNoAttack,	$10
	smpsFMvoice	$00
	dc.b		nA2,	$04,	nRst,	nA2,	$0A,	nRst,	$02,	nE3
	dc.b		$04,	nA3,	nC3,	$02,	nA2,	nG2,	$04,	nRst
	dc.b		nG2,	$0A,	nRst,	$02,	nD3,	$04,	nG3,	nG3
	dc.b		$02,	nFs3,	nF3,	$04,	nRst,	nF3,	nF2,	$08
	dc.b		nD3,	$04,	nEb3,	nE3,	$06,	nRst,	$02,	nE3
	dc.b		$06,	nRst,	$02,	nEb3,	$04
	smpsReturn

MadGearActII_Call02:
	dc.b		smpsNoAttack,	$04,	nD3,	nCs3,	nC3,	nA2,	nRst,	nA2
	dc.b		$0A,	nRst,	$02,	nE3,	$04,	nA3,	nC3,	$02
	dc.b		nA2,	nG2,	$04,	nRst,	nG2,	$0A,	nRst,	$02
	dc.b		nD3,	$04,	nG3,	nG3,	$02,	nFs3,	nF3,	$04
	dc.b		nRst,	nF3,	nF2,	$08,	nD3,	$04,	nEb3,	nE3
	dc.b		$06,	nRst,	$02,	nE3,	$06,	nRst,	$02,	nEb3
	dc.b		$04
	smpsReturn

MadGearActII_Call03:
	dc.b		smpsNoAttack,	$04,	nD3,	nD3,	nC3,	nC3,	nG3,	nEb3
	dc.b		nC3,	$08,	nG3,	$04,	nEb3,	nC3,	nBb2,	nG3
	dc.b		nEb3,	nBb2,	$08,	nG3,	$04,	nEb3,	nBb2,	nAb2
	dc.b		nAb3,	nEb3,	nAb2,	$08,	nBb2,	$04,	nC3,	nEb3
	dc.b		nEb3,	nD3,	nAb2,	nBb2
	smpsReturn

MadGearActII_Call04:
	dc.b		smpsNoAttack,	$04,	nD3,	nEb3,	nF3,	nC3,	nG3,	nEb3
	dc.b		nC3,	$08,	nG3,	$04,	nEb3,	nC3,	nBb2,	nG3
	dc.b		nEb3,	nBb2,	$08,	nG3,	$04,	nEb3,	nBb2,	nAb2
	dc.b		nAb3,	nEb3,	nAb2,	$08,	nBb2,	$04,	nC3,	nEb3
	dc.b		nEb3,	nD3,	nAb2,	nBb2
	smpsReturn

MadGearActII_Call05:
	dc.b		smpsNoAttack,	$04,	nD3,	nEb3,	nF3,	nC2,	nF2,	nG2
	dc.b		nBb2,	nC3,	nEb3,	nC2,	nF2,	nG2,	nBb2,	nC3
	dc.b		nBb2,	nEb3,	nG2,	nBb2,	nC3,	nC2,	nF2,	nG2
	dc.b		nBb2,	nC3,	nEb3,	nC2,	nF2,	nG2,	nBb2,	nC3
	dc.b		nBb2
	smpsReturn

MadGearActII_Call06:
	dc.b		nEb3,	$04,	nG2,	nBb2,	nC3,	nC2,	nF2,	nG2
	dc.b		nBb2,	nC3,	nEb3,	nC2,	nF2,	nG2,	nBb2,	nC3
	dc.b		nBb2,	nEb3,	nG2,	nBb2,	nC3,	nC2,	nF2,	nG2
	dc.b		nBb2,	nC3,	nEb3,	nC2,	nF2,	nG2,	nBb2,	nC3
	dc.b		nBb2
	smpsReturn

MadGearActII_Call07:
	dc.b		nEb3,	$04,	nG2,	nBb2,	nC3
	smpsReturn

MadGearActII_Call08:
	dc.b		smpsNoAttack,	$10
	smpsFMvoice	$04
	dc.b		nA5,	$08,	nE5,	$04,	nC5,	$08,	nD5,	nE5
	dc.b		nC5,	$04,	nD5,	$08,	nE4,	$0C,	nRst,	$04
	dc.b		nA5,	$08,	nC5,	$04,	nA4,	$08,	nB4,	$04
	dc.b		nC5,	nE5,	$0E,	nRst,	$02,	nC5,	$04
	smpsReturn

MadGearActII_Call09:
	dc.b		smpsNoAttack,	$04,	nD5,	nEb5,	nG4,	nE5,	$08,	$04
	dc.b		nC5,	$08,	nD5,	nA4,	$04,	nRst,	nC5,	nD5
	dc.b		$08,	nA4,	$0C,	nRst,	$04,	nE5,	$08,	nC5
	dc.b		$04,	nG5,	$08,	nB4,	$04,	nC5,	nE5,	$0E
	dc.b		nRst,	$02,	nC5,	$04
	smpsReturn

MadGearActII_Call0A:
	dc.b		smpsNoAttack,	$04,	nA4,	nEb5,	nE5
	smpsFMvoice	$00
	dc.b		nC5,	$18,	nEb5,	$08,	nBb4,	$18,	nBb5,	$08
	dc.b		nAb5,	$0C,	nEb5,	nEb5,	$08
	smpsFMvoice	$04
	dc.b		nEb6,	$04,	nRst,	nAb5,	nRst
	smpsReturn

MadGearActII_Call0B:
	dc.b		nBb5,	$04,	nEb6,	nD6,	$08,	nRst,	$60,	nEb6
	dc.b		$04,	nRst,	nAb5,	nRst
	smpsReturn

MadGearActII_Call0C:
	dc.b		nD6,	$04,	nC6,	nD6,	$08,	nRst,	$70
	smpsReturn

MadGearActII_Call0D:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGearActII_Call0E:
	dc.b		smpsNoAttack,	$10
	smpsReturn

MadGearActII_Call0F:
	dc.b		smpsNoAttack,	$10
	smpsFMvoice	$04
	dc.b		nE5,	$08,	nA4,	$04,	nG5,	$08,	nG4,	nA4
	dc.b		nE4,	$04,	nG4,	$08,	nA4,	$0C,	nRst,	$04
	dc.b		nE5,	$08,	$04,	nG5,	$08,	nD5,	nB4,	$0E
	dc.b		nRst,	$02,	nEb4,	$04
	smpsReturn

MadGearActII_Call10:
	dc.b		smpsNoAttack,	$04,	nA4,	nAb4,	nE5,	nA5,	$08,	nA4
	dc.b		$04,	nG5,	$08,	nG4,	nE5,	$04,	nRst,	nE4
	dc.b		nG4,	$08,	nE4,	$0C,	nRst,	$04,	nA5,	$08
	dc.b		nE5,	$04,	nA4,	$08,	nD5,	nB4,	$0E,	nRst
	dc.b		$02,	nEb4,	$04
	smpsReturn

MadGearActII_Call11:
	dc.b		smpsNoAttack,	$04,	nD5,	nAb4,	nG4
	smpsFMvoice	$00
	dc.b		nG4,	$18,	nC5,	$08,	nG5,	$18,	nD5,	$08
	dc.b		nAb4,	$0C,	nC5,	nAb5,	$08
	smpsFMvoice	$04
	dc.b		nC6,	$04,	nRst,	nEb6,	nRst
	smpsReturn

MadGearActII_Call12:
	dc.b		nD6,	$04,	nC6,	nG5,	$08,	nRst,	$60,	nC6
	dc.b		$04,	nRst,	nEb6,	nRst
	smpsReturn

MadGearActII_Call13:
	dc.b		nBb5,	$04,	nEb6,	nG5,	$08,	nRst,	$70
	smpsReturn

MadGearActII_Call14:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGearActII_Call15:
	dc.b		smpsNoAttack,	$10
	smpsReturn

MadGearActII_Call16:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGearActII_Call17:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGearActII_Call18:
	dc.b		smpsNoAttack,	$10
	smpsFMvoice	$02
	dc.b		nC4,	$08,	nBb3,	$04,	nEb4,	$08,	nB3,	$04
	dc.b		nG4,	$08,	nF3,	$10,	nG4,	nEb4,	$08,	nBb3
	dc.b		$04,	nAb3,	$14,	nRst,	$10
	smpsReturn

MadGearActII_Call19:
	dc.b		smpsNoAttack,	$10,	nC4,	$08,	nD4,	$04,	nG3,	$08
	dc.b		nB3,	$04,	nG4,	$08,	nF4,	$10,	nG4,	nEb4
	dc.b		$08,	nBb3,	$04,	nC4,	$14,	nRst,	$10
	smpsReturn

MadGearActII_Call1A:
	dc.b		smpsNoAttack,	$10,	nEb6,	$02,	nRst,	nEb6,	nRst,	nC6
	dc.b		$08,	nEb6,	$02,	nRst,	nBb5,	nRst,	nC6,	$08
	dc.b		nBb5,	$0C,	$08,	nD6,	$04,	nC6,	nBb5,	nEb6
	dc.b		$02,	nRst,	nEb6,	nRst,	nC6,	$08,	nEb6,	$02
	dc.b		nRst,	nBb5,	nRst,	nC6,	$08,	nBb5,	$0C,	nEb5
	dc.b		$04
	smpsReturn

MadGearActII_Call1B:
	dc.b		nRst,	$10,	nEb6,	$02,	nRst,	nEb6,	nRst,	nG5
	dc.b		$08,	nBb5,	$02,	nRst,	nBb5,	nRst,	nC6,	$08
	dc.b		nF5,	$0C,	nBb5,	$08,	nF5,	$04,	nC6,	nBb5
	dc.b		nC6,	$02,	nRst,	nC6,	nRst,	nG5,	$08,	nBb5
	dc.b		$02,	nRst,	nBb5,	nRst,	nG5,	$08,	nBb5,	$04
	dc.b		nD5,	nRst,	nEb5
	smpsReturn

MadGearActII_Call1C:
	dc.b		nRst,	$10
	smpsReturn

MadGearActII_Call1D:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGearActII_Call1E:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGearActII_Call1F:
	dc.b		smpsNoAttack,	$10
	smpsFMvoice	$02
	dc.b		nG3,	$08,	nD4,	$04,	nG3,	$08,	nFs4,	$04
	dc.b		nC4,	$08,	nBb3,	$10,	nD4,	nC4,	$08,	nG3
	dc.b		$04,	nC4,	$14,	nRst,	$10
	smpsReturn

MadGearActII_Call20:
	dc.b		smpsNoAttack,	$10,	nG3,	$08,	nBb3,	$04,	nEb4,	$08
	dc.b		nFs4,	$04,	nC4,	$08,	nBb3,	$10,	nD4,	nC4
	dc.b		$08,	nEb4,	$04,	nAb4,	$14,	nRst,	$10
	smpsReturn

MadGearActII_Call21:
	dc.b		smpsNoAttack,	$10,	nC6,	$02,	nRst,	nC6,	nRst,	nG5
	dc.b		$08,	nBb5,	$02,	nRst,	nEb6,	nRst,	nG5,	$08
	dc.b		nF5,	$0C,	nEb6,	$08,	nF5,	$04,	nFs5,	nG5
	dc.b		nRst,	nC6,	$02,	nRst,	nG5,	$08,	nBb5,	$02
	dc.b		nRst,	nEb6,	nRst,	nG5,	$08,	nD5,	$0C,	nC6
	dc.b		$04
	smpsReturn

MadGearActII_Call22:
	dc.b		nRst,	$10,	nC6,	$02,	nRst,	nC6,	nRst,	nC6
	dc.b		$08,	nEb6,	$02,	nRst,	nEb6,	nRst,	nG5,	$08
	dc.b		nBb5,	$0C,	nEb6,	$08,	nD6,	$04,	nAb5,	nG5
	dc.b		nRst,	nEb6,	$02,	nRst,	nC6,	$08,	nEb6,	$02
	dc.b		nRst,	nEb6,	nRst,	nC6,	$08,	nD5,	$04,	nBb5
	dc.b		nRst,	nC6
	smpsReturn

MadGearActII_Call23:
	dc.b		nRst,	$10
	smpsReturn

MadGearActII_Call24:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGearActII_Call25:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGearActII_Call26:
	dc.b		smpsNoAttack,	$10
	smpsPSGvoice	$01
	dc.b		nC4,	$08,	nBb3,	$04,	nEb4,	$08,	nB3,	$04
	dc.b		nG4,	$08,	nF3,	$10,	nG4,	nEb4,	$08,	nBb3
	dc.b		$04,	nAb3,	$14,	nRst,	$10
	smpsReturn

MadGearActII_Call27:
	dc.b		smpsNoAttack,	$10,	nC4,	$08,	nD4,	$04,	nG3,	$08
	dc.b		nB3,	$04,	nG4,	$08,	nF4,	$10,	nG4,	nEb4
	dc.b		$08,	nBb3,	$04,	nC4,	$14,	nRst,	$10
	smpsReturn

MadGearActII_Call28:
	dc.b		smpsNoAttack,	$14,	nEb6,	$02,	nRst,	nEb6,	nRst,	nC6
	dc.b		$08,	nEb6,	$02,	nRst,	nBb5,	nRst,	nC6,	$08
	dc.b		nBb5,	$0C,	$08,	nD6,	$04,	nC6,	nBb5,	nEb6
	dc.b		$02,	nRst,	nEb6,	nRst,	nC6,	$08,	nEb6,	$02
	dc.b		nRst,	nBb5,	nRst,	nC6,	$08,	nBb5,	$0C
	smpsReturn

MadGearActII_Call29:
	dc.b		nEb5,	$04
	smpsPSGvoice	$00
	dc.b		nC5,	$02,	nEb5,	nF5,	nG5,	nBb5,	nD6
	smpsPSGvoice	$01
	dc.b		nEb6,	nRst,	nEb6,	nRst,	nG5,	$0C,	nBb5,	$02
	dc.b		nRst,	nBb5,	nRst,	nC6,	$08,	nF5,	$0C,	nBb5
	dc.b		$08,	nF5,	$04,	nC6,	nBb5,	nC6,	$02,	nRst
	dc.b		nC6,	nRst,	nG5,	$08,	nBb5,	$02,	nRst,	nBb5
	dc.b		nRst,	nG5,	$08,	nBb5,	$04,	nD5,	nRst
	smpsReturn

MadGearActII_Call2A:
	dc.b		nEb5,	$04
	smpsPSGvoice	$00
	dc.b		$02,	nD6,	nEb6,	nBb6,	nD7,	nEb7
	smpsReturn

MadGearActII_Call2B:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGearActII_Call2C:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MadGearActII_Call2D:
	dc.b		smpsNoAttack,	$10
	smpsPSGvoice	$01
	dc.b		nG3,	$08,	nD4,	$04,	nG3,	$08,	nFs4,	$04
	dc.b		nC4,	$08,	nBb3,	$10,	nD4,	nC4,	$08,	nG3
	dc.b		$04,	nC4,	$14,	nRst,	$10
	smpsReturn

MadGearActII_Call2E:
	dc.b		smpsNoAttack,	$10,	nG3,	$08,	nBb3,	$04,	nEb4,	$08
	dc.b		nFs4,	$04,	nC4,	$08,	nBb3,	$10,	nD4,	nC4
	dc.b		$08,	nEb4,	$04,	nAb4,	$14,	nRst,	$10
	smpsReturn

MadGearActII_Call2F:
	dc.b		smpsNoAttack,	$14,	nC6,	$02,	nRst,	nC6,	nRst,	nG5
	dc.b		$08,	nBb5,	$02,	nRst,	nEb6,	nRst,	nG5,	$08
	dc.b		nF5,	$0C,	nEb6,	$08,	nF5,	$04,	nFs5,	nG5
	dc.b		nRst,	nC6,	$02,	nRst,	nG5,	$08,	nBb5,	$02
	dc.b		nRst,	nEb6,	nRst,	nG5,	$08,	nD5,	$0C
	smpsReturn

MadGearActII_Call30:
	dc.b		nC6,	$04,	nRst,	$0C,	nC6,	$02,	nRst,	nC6
	dc.b		nRst,	nC6,	$0C,	nEb6,	$02,	nRst,	nEb6,	nRst
	dc.b		nG5,	$08,	nBb5,	$0C,	nEb6,	$08,	nD6,	$04
	dc.b		nAb5,	nG5,	nRst,	nEb6,	$02,	nRst,	nC6,	$08
	dc.b		nEb6,	$02,	nRst,	nEb6,	nRst,	nC6,	$08,	nD5
	dc.b		$04,	nBb5,	nRst
	smpsReturn

MadGearActII_Call31:
	dc.b		nC6,	$04,	nRst,	$0C
	smpsReturn

MadGearActII_Call32:
	dc.b		nRst,	$10
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	$04,	$02,	nCs0
	dc.b		nCs0,	nRst,	$04,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	nCs0,	nCs0,	$04,	nRst,	$02,	nCs0,	$06
	dc.b		nRst,	$02,	nCs0,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nRst,	nCs0,	nCs0,	nCs0,	nCs0,	$05,	$03,	nRst
	dc.b		$04,	$02,	nCs0,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	nCs0,	nCs0,	$06,	nCs0
	dc.b		nRst,	$02,	nCs0,	nCs0
	smpsReturn

MadGearActII_Call33:
	dc.b		nRst,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	$04,	nRst
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nCs0,	nRst
	dc.b		$04,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nCs0,	$06,	$08,	$02,	nCs0,	nRst,	$04,	nCs0
	dc.b		$02,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	nRst
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nCs0,	nRst
	dc.b		$04,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nCs0,	$04,	nRst,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0
	smpsReturn

MadGearActII_Call34:
	dc.b		nRst,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	$04,	nRst
	dc.b		$02,	nCs0,	nRst,	nCs0,	nRst,	$04,	$02,	nCs0
	dc.b		nRst,	$04,	nRst,	nCs0,	$02,	nCs0,	nCs0,	$04
	dc.b		nRst,	$02,	nCs0,	nRst,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nRst,	$04,	nRst,	nCs0,	$02,	nCs0,	nCs0
	dc.b		$04,	nRst,	$02,	nCs0,	nRst,	nCs0,	nRst,	$04
	dc.b		$02,	nCs0,	nRst,	$04,	nRst,	nCs0,	$02,	nCs0
	dc.b		nCs0,	$04,	nRst,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nRst
	smpsReturn

MadGearActII_Call35:
	dc.b		smpsNoAttack,	$02,	nRst
	smpsPSGvoice	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	nRst,	$02,	nCs0,	nRst
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	nRst
	dc.b		nCs0,	$02,	nCs0,	nCs0,	$04,	nRst,	$02,	nCs0
	dc.b		nRst,	nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04
	dc.b		nRst,	nCs0,	$02,	nCs0,	nCs0,	$04,	nRst,	$02
	dc.b		nCs0,	nRst,	nCs0,	nRst,	$04,	$02,	nCs0,	nRst
	dc.b		$04,	nRst,	nCs0,	$02,	nCs0,	nCs0,	$04,	nRst
	dc.b		$02,	nCs0,	$08,	$02,	nRst
	smpsReturn

MadGearActII_Call36:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	nCs0,	nCs0,	$06,	nRst,	$02,	nCs0
	dc.b		nRst,	$06,	nCs0,	nRst,	$02,	nCs0,	nRst,	$04
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	$04,	nRst,	nRst
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$04,	$02,	nCs0,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst
	smpsReturn

MadGearActII_Call37:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	$08,	$02,	nCs0
	dc.b		nRst,	$04,	$02,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$04,	$02,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$04,	$02,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	nCs0,	nRst,	$08,	$02,	nCs0,	$08,	$02
	dc.b		nRst,	$06,	nCs0,	nRst,	$02,	nCs0,	nRst,	$06
	dc.b		nCs0,	nRst,	$02,	nCs0,	nRst
	smpsReturn

MadGearActII_Call38:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	$06
	smpsReturn

MadGearActII_Call39:
	dc.b		dSnare,	$02,	nRst,	dSnare,	nRst,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dKick,	$04,	dKick,	dSnare,	$06,	$04,	$02
	dc.b		dKick,	$04,	dSnare,	dSnare,	dKick,	dKick,	$02,	nRst
	dc.b		dSnare,	$06,	$04,	$02,	dKick,	$04,	dSnare,	$02
	dc.b		nRst,	dSnare,	$04,	dKick,	$02,	nRst,	dKick,	$04
	dc.b		dSnare,	$06,	$04,	$02,	dKick,	$04,	dSnare,	dSnare
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	$06,	$02
	smpsReturn

MadGearActII_Call3A:
	dc.b		nRst,	$02,	dSnare,	dKick,	$04,	dSnare,	$02,	dSnare
	dc.b		dSnare,	$04,	dKick,	dKick,	dSnare,	$06,	$04,	$02
	dc.b		dKick,	$04,	dSnare,	dSnare,	dKick,	$02,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	$04,	dSnare,	dSnare,	$02,	dKick
	dc.b		$04,	dSnare,	dSnare,	dKick,	$03,	$05,	dSnare,	$06
	dc.b		$04,	$02,	dKick,	$04,	dSnare,	dSnare,	dKick,	dKick
	dc.b		dSnare,	$06,	$02
	smpsReturn

MadGearActII_Call3B:
	dc.b		nRst,	$02,	dSnare,	dKick,	$04,	dSnare,	$02,	dSnare
	dc.b		dSnare,	dSnare,	dKick,	$04,	$02,	nRst,	dSnare,	$04
	dc.b		dKick,	$08,	$04,	dSnare,	$08,	dKick,	$04,	dKick
	dc.b		dSnare,	dKick,	$08,	$04,	dSnare,	dSnare,	dKick,	dKick
	dc.b		dSnare,	dKick,	$08,	$04,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		dSnare,	dKick
	smpsReturn

MadGearActII_Call3C:
	dc.b		dSnare,	$04,	dKick,	dSnare,	$02,	dSnare,	dSnare,	dSnare
	dc.b		dKick,	$04,	dKick,	dSnare,	dKick,	$08,	$04,	dSnare
	dc.b		$08,	dKick,	$04,	dKick,	dSnare,	dKick,	$08,	$04
	dc.b		dSnare,	dSnare,	dKick,	dKick,	$02,	nRst,	dSnare,	$04
	dc.b		dKick,	$08,	$04,	dSnare,	dSnare,	dSnare,	dKick,	$02
	dc.b		nRst,	dSnare,	nRst,	dKick,	$04
	smpsReturn

MadGearActII_Call3D:
	dc.b		dSnare,	$02,	nRst,	dKick,	nRst,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dKick,	nRst,	dKick,	nRst,	dSnare,	$05,	dKick
	dc.b		$07,	$02,	nRst,	dSnare,	$08,	dKick,	$04,	dKick
	dc.b		dSnare,	dKick,	$02,	nRst,	$06,	dKick,	$02,	nRst
	dc.b		dSnare,	$04,	dSnare,	dKick,	dKick,	dSnare,	dKick,	$08
	dc.b		$04,	dSnare,	$08,	dKick,	$02,	nRst,	dKick,	nRst
	dc.b		dSnare,	nRst,	dKick,	$04
	smpsReturn

MadGearActII_Call3E:
	dc.b		nRst,	$04,	dKick,	dSnare,	$08,	dKick,	$04,	dKick
	dc.b		dSnare,	dKick,	$08,	$04,	dSnare,	$08,	dKick,	$02
	dc.b		nRst,	dKick,	$04,	dSnare,	dKick,	$08,	$04,	dSnare
	dc.b		dSnare,	$02,	nRst,	dKick,	$04,	$02,	nRst,	dSnare
	dc.b		nRst,	dKick,	$08,	$02,	nRst,	dSnare,	$08,	dKick
	dc.b		$02,	nRst,	dKick,	nRst,	dSnare,	$04,	dKick
	smpsReturn

MadGearActII_Call3F:
	dc.b		nRst,	$04,	dKick,	dSnare,	$08
	smpsReturn

MadGearActII_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 01
	dc.b		$35,$32,$31,$7A,$02,$4F,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 02
	dc.b		$3D,$01,$21,$12,$31,$14,$0E,$0F,$0F,$00,$04,$03,$04,$00,$00,$00
	dc.b		$00,$00,$16,$16,$16,$1B,$05,$05,$05;			Voice 03
	dc.b		$39,$03,$61,$22,$21,$1F,$1F,$12,$1F,$05,$05,$05,$0B,$00,$00,$00
	dc.b		$00,$10,$10,$18,$18,$1E,$1D,$15,$00;			Voice 04
	even
