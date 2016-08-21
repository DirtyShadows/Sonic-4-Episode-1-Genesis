; =============================================================================================
; Project Name:		LostLabyrinthActIII
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

LostLabyrinthActIII_Header:
	smpsHeaderVoice	LostLabyrinthActIII_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	LostLabyrinthActIII_DAC
	smpsHeaderFM	LostLabyrinthActIII_FM1,	smpsPitch00,	$10
	smpsHeaderFM	LostLabyrinthActIII_FM2,	smpsPitch00,	$10
	smpsHeaderFM	LostLabyrinthActIII_FM3,	smpsPitch00,	$10
	smpsHeaderFM	LostLabyrinthActIII_FM4,	smpsPitch00,	$10
	smpsHeaderFM	LostLabyrinthActIII_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	LostLabyrinthActIII_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	LostLabyrinthActIII_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	LostLabyrinthActIII_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
LostLabyrinthActIII_FM1:
	smpsCall	LostLabyrinthActIII_Call01
	smpsCall	LostLabyrinthActIII_Call02
	smpsCall	LostLabyrinthActIII_Call03
	smpsCall	LostLabyrinthActIII_Call04
	smpsCall	LostLabyrinthActIII_Call05
	smpsCall	LostLabyrinthActIII_Call06
	smpsJump	LostLabyrinthActIII_FM1

; FM2 Data
LostLabyrinthActIII_FM2:
	smpsCall	LostLabyrinthActIII_Call07
	smpsCall	LostLabyrinthActIII_Call08
	smpsCall	LostLabyrinthActIII_Call09
	smpsCall	LostLabyrinthActIII_Call0A
	smpsCall	LostLabyrinthActIII_Call0B
	smpsCall	LostLabyrinthActIII_Call0C
	smpsJump	LostLabyrinthActIII_FM2

; FM3 Data
LostLabyrinthActIII_FM3:
	smpsCall	LostLabyrinthActIII_Call0D
	smpsCall	LostLabyrinthActIII_Call0E
	smpsCall	LostLabyrinthActIII_Call0F
	smpsCall	LostLabyrinthActIII_Call10
	smpsCall	LostLabyrinthActIII_Call11
	smpsCall	LostLabyrinthActIII_Call12
	smpsJump	LostLabyrinthActIII_FM3

; FM4 Data
LostLabyrinthActIII_FM4:
	smpsCall	LostLabyrinthActIII_Call13
	smpsCall	LostLabyrinthActIII_Call14
	smpsCall	LostLabyrinthActIII_Call15
	smpsCall	LostLabyrinthActIII_Call16
	smpsCall	LostLabyrinthActIII_Call17
	smpsCall	LostLabyrinthActIII_Call18
	smpsJump	LostLabyrinthActIII_FM4

; FM5 Data
LostLabyrinthActIII_FM5:
	smpsCall	LostLabyrinthActIII_Call19
	smpsCall	LostLabyrinthActIII_Call1A
	smpsCall	LostLabyrinthActIII_Call1B
	smpsCall	LostLabyrinthActIII_Call1C
	smpsCall	LostLabyrinthActIII_Call1D
	smpsCall	LostLabyrinthActIII_Call1E
	smpsJump	LostLabyrinthActIII_FM5

; PSG1 Data
LostLabyrinthActIII_PSG1:
	smpsCall	LostLabyrinthActIII_Call1F
	smpsCall	LostLabyrinthActIII_Call20
	smpsCall	LostLabyrinthActIII_Call21
	smpsCall	LostLabyrinthActIII_Call22
	smpsCall	LostLabyrinthActIII_Call23
	smpsCall	LostLabyrinthActIII_Call24
	smpsJump	LostLabyrinthActIII_PSG1

; PSG2 Data
LostLabyrinthActIII_PSG2:
	smpsCall	LostLabyrinthActIII_Call25
	smpsCall	LostLabyrinthActIII_Call26
	smpsCall	LostLabyrinthActIII_Call27
	smpsCall	LostLabyrinthActIII_Call28
	smpsCall	LostLabyrinthActIII_Call29
	smpsCall	LostLabyrinthActIII_Call2A
	smpsJump	LostLabyrinthActIII_PSG2

; PSG3 Data
LostLabyrinthActIII_PSG3:
	smpsPSGform	$E7
	smpsCall	LostLabyrinthActIII_Call2B
	smpsCall	LostLabyrinthActIII_Call2C
	smpsCall	LostLabyrinthActIII_Call2D
	smpsCall	LostLabyrinthActIII_Call2E
	smpsCall	LostLabyrinthActIII_Call2D
	smpsCall	LostLabyrinthActIII_Call2F
	smpsJump	LostLabyrinthActIII_PSG3

; DAC Data
LostLabyrinthActIII_DAC:
	smpsCall	LostLabyrinthActIII_Call30
	smpsCall	LostLabyrinthActIII_Call31
	smpsCall	LostLabyrinthActIII_Call32
	smpsCall	LostLabyrinthActIII_Call33
	smpsCall	LostLabyrinthActIII_Call34
	smpsCall	LostLabyrinthActIII_Call35
	smpsJump	LostLabyrinthActIII_DAC

LostLabyrinthActIII_Call01:
	smpsFMvoice	$00
	dc.b		nD3,	$04,	nA2,	nF2,	nD2,	nRst,	nA2,	nD3
	dc.b		$08,	nG2,	nE2,	$04,	nC2,	$08,	nG2,	$04
	dc.b		nC3,	nB2,	nBb2,	$02,	nRst,	nBb2,	$04,	nA2
	dc.b		nF2,	nG2,	$02,	nRst,	nG2,	$04,	nF2,	nD2
	dc.b		nE2,	nF2,	nG2,	$02,	nRst,	nG2,	$08,	nA2
	dc.b		$04,	nBb2,	$08
	smpsReturn

LostLabyrinthActIII_Call02:
	dc.b		nD3,	$04,	nA2,	nF2,	nD2,	nRst,	nA2,	nD3
	dc.b		$08,	nG2,	nE2,	$04,	nC2,	$08,	nG2,	$04
	dc.b		nC3,	nB2,	nBb2,	$02,	nRst,	nBb2,	$04,	nA2
	dc.b		nF2,	nG2,	$02,	nRst,	nG2,	$04,	nF2,	nD2
	dc.b		nE2,	nF2,	nG2,	$02,	nRst,	nG2,	$08,	nA2
	dc.b		$04,	nF2,	$08
	smpsReturn

LostLabyrinthActIII_Call03:
	dc.b		nD3,	$04,	nF2,	nG2,	nD2,	nRst,	nE2,	nA2
	dc.b		nF2,	nG2,	nC3,	nF3,	nE3,	nRst,	nC3,	nF3
	dc.b		nE3,	nBb2,	nF2,	nC3,	nBb2,	$08,	nF2,	$04
	dc.b		nF3,	nBb2,	nRst,	nD2,	nE2,	nF2,	nG2,	nF2
	dc.b		nA2,	nC3
	smpsReturn

LostLabyrinthActIII_Call04:
	dc.b		nD3,	$04,	nF2,	nG2,	nD2,	nRst,	nF2,	nA2
	dc.b		nF2,	nG2,	nC3,	nF3,	$08,	nE3,	$04,	nC3
	dc.b		nEb3,	nBb2,	nRst,	nF2,	nC3,	nBb2,	$08,	nF2
	dc.b		$04,	nF3,	nBb2,	nRst,	nD2,	nE2,	nF2,	nG2
	dc.b		nF2,	nA2,	nC3
	smpsReturn

LostLabyrinthActIII_Call05:
	dc.b		nD3,	$04,	nRst,	nF2,	nD2,	nRst,	nG2,	nD2
	dc.b		nA2,	nRst,	nD2,	nC3,	nD2,	nD3,	nD2,	nF3
	dc.b		nD3,	nF2,	nRst,	nD3,	nF2,	nRst,	nF2,	nC3
	dc.b		nD3,	nRst,	nF2,	nC3,	nD3,	nF3,	nF2,	nA2
	dc.b		nD2
	smpsReturn

LostLabyrinthActIII_Call06:
	dc.b		nBb2,	$04,	nRst,	nD2,	nF2,	nRst,	nD2,	nG2
	dc.b		nF2,	nRst,	nBb2,	nA2,	nF2,	nC3,	nBb2,	nA2
	dc.b		nF2,	nBb1,	$0C,	nF2,	$04,	nBb2,	nE2,	$0C
	dc.b		nEb2,	$08,	nBb2,	$04,	nEb3,	$08,	nD3,	$04
	dc.b		nCs3,	$08
	smpsReturn

LostLabyrinthActIII_Call07:
	smpsFMvoice	$01
	dc.b		nA5,	$10,	nRst,	$04,	nC6,	$08,	nD6,	$04
	dc.b		nG5,	$0C,	nF5,	$08,	nRst,	$04,	nE5,	$08
	dc.b		nD5,	$0C,	nRst,	$04,	nA5,	$0C,	nG5,	$1C
	dc.b		nRst,	$08
	smpsReturn

LostLabyrinthActIII_Call08:
	dc.b		nA5,	$10,	nRst,	$04,	nC6,	$08,	nD6,	$04
	dc.b		nG5,	$0C,	nF5,	$08,	nRst,	$04,	nE5,	$08
	dc.b		nD5,	nRst,	$04,	nA5,	$24,	nRst,	$10
	smpsReturn

LostLabyrinthActIII_Call09:
	dc.b		nA5,	$08,	nF5,	$04,	nD5,	nRst,	nA5,	nF5
	dc.b		nG5,	$08,	nRst,	$04,	nE5,	nC5,	nRst,	nE5
	dc.b		nG5,	$08,	nF5,	nRst,	$04,	nD5,	$14,	nRst
	dc.b		$20
	smpsReturn

LostLabyrinthActIII_Call0A:
	dc.b		nA5,	$08,	nF5,	$04,	nD5,	nRst,	nA5,	nRst
	dc.b		nG5,	nRst,	nE5,	nC5,	$08,	nC6,	nB5,	$04
	dc.b		nBb5,	$20,	nRst,	$18,	nA5,	$04,	nC6,	nD6
	smpsReturn

LostLabyrinthActIII_Call0B:
	dc.b		nF5,	$04,	nRst,	$10,	nF5,	$04,	nE5,	nD5
	dc.b		nRst,	$14,	nA5,	$04,	nC6,	nD6,	nF5,	nRst
	dc.b		$10,	nF5,	$04,	nE5,	nD5,	nRst,	$14,	nA5
	dc.b		$04,	nC6,	nD6
	smpsReturn

LostLabyrinthActIII_Call0C:
	dc.b		nF5,	$04,	nRst,	$10,	nF5,	$04,	nE5,	nD5
	dc.b		nRst,	$14,	nD5,	$04,	nE5,	nF5,	nA5,	$0C
	dc.b		nG5,	$04,	nRst,	nG5,	$0C,	nC6,	nBb5,	$04
	dc.b		nRst,	nBb5,	$0C
	smpsReturn

LostLabyrinthActIII_Call0D:
	smpsFMvoice	$01
	dc.b		nA4,	$10,	nRst,	$04,	nC5,	$08,	nD5,	$04
	dc.b		nG4,	$0C,	nF4,	$08,	nRst,	$04,	nE4,	$08
	dc.b		nD4,	$0C,	nRst,	$04,	nA4,	$0C,	nG4,	$1C
	dc.b		nRst,	$08
	smpsReturn

LostLabyrinthActIII_Call0E:
	dc.b		nA4,	$10,	nRst,	$04,	nC5,	$08,	nD5,	$04
	dc.b		nG4,	$0C,	nF4,	$08,	nRst,	$04,	nE4,	$08
	dc.b		nD4,	nRst,	$04,	nA4,	$24,	nRst,	$10
	smpsReturn

LostLabyrinthActIII_Call0F:
	dc.b		nA4,	$08,	nF4,	$04,	nD4,	nRst,	nA4,	nF4
	dc.b		nG4,	$08,	nRst,	$04,	nE4,	nC4,	nRst,	nE4
	dc.b		nG4,	$08,	nF4,	nRst,	$04,	nD4,	$14,	nRst
	dc.b		$20
	smpsReturn

LostLabyrinthActIII_Call10:
	dc.b		nA4,	$08,	nF4,	$04,	nD4,	nRst,	nA4,	nRst
	dc.b		nG4,	nRst,	nE4,	nC4,	$08,	nC5,	nB4,	$04
	dc.b		nBb4,	$20,	nRst,	$18,	nA4,	$04,	nC5,	nD5
	smpsReturn

LostLabyrinthActIII_Call11:
	dc.b		nF4,	$04,	nRst,	$10,	nF4,	$04,	nE4,	nD4
	dc.b		nRst,	$14,	nA4,	$04,	nC5,	nD5,	nF4,	nRst
	dc.b		$10,	nF4,	$04,	nE4,	nD4,	nRst,	$14,	nA4
	dc.b		$04,	nC5,	nD5
	smpsReturn

LostLabyrinthActIII_Call12:
	dc.b		nF4,	$04,	nRst,	$10,	nF4,	$04,	nE4,	nD4
	dc.b		nRst,	$14,	nD4,	$04,	nE4,	nF4,	nA4,	$0C
	dc.b		nG4,	$04,	nRst,	nG4,	$0C,	nC5,	nBb4,	$04
	dc.b		nRst,	nBb4,	$0C
	smpsReturn

LostLabyrinthActIII_Call13:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$05
	dc.b		nD5,	$04,	nRst,	nD5,	nF5,	nA5,	nD6,	nRst
	dc.b		$08,	nC5,	$04,	nRst,	nC6,	nG5,	nE5,	nC5
	dc.b		nRst,	nF5,	nF5,	nRst,	nE5,	nRst,	nF5,	nRst
	dc.b		nE5,	nRst,	nD5,	nC5,	nF5,	nE5,	nG5,	nF5
	smpsReturn

LostLabyrinthActIII_Call14:
	dc.b		nRst,	$08,	nD5,	$04,	nRst,	nD5,	nF5,	nA5
	dc.b		nD6,	nRst,	$08,	nC5,	$04,	nRst,	nC6,	nG5
	dc.b		nE5,	nC5,	nRst,	nF5,	nF5,	nRst,	nE5,	nRst
	dc.b		nF5,	nRst,	nE5,	nRst,	nE5,	nRst,	nC5,	nE5
	dc.b		nF5,	nG5
	smpsReturn

LostLabyrinthActIII_Call15:
	dc.b		nRst,	$04,	nD6,	nA5,	nRst,	nF5,	nD5,	nRst
	dc.b		nG5,	nRst,	nG5,	nRst,	nG5,	nRst,	nG5,	nE5
	dc.b		nRst,	$0C,	nD6,	$04,	nBb5,	nF5,	nD5,	nRst
	dc.b		nF5,	nRst,	nF5,	nRst,	nF5,	nRst,	nF5,	nRst
	dc.b		nG5
	smpsReturn

LostLabyrinthActIII_Call16:
	dc.b		nRst,	$04,	nD6,	nA5,	nRst,	nF5,	nD5,	nRst
	dc.b		nG5,	nRst,	nG5,	nRst,	nF6,	nE6,	nD6,	nC6
	dc.b		nF5,	nRst,	nF5,	nRst,	nG5,	nG5,	nF5,	nRst
	dc.b		nF5,	nRst,	nF5,	nRst,	nG5,	nRst,	nC6,	nD6
	dc.b		nA5
	smpsReturn

LostLabyrinthActIII_Call17:
	dc.b		nF5,	$04,	nRst,	nF5,	nRst,	$10,	nF5,	$04
	dc.b		nRst,	nD5,	nD5,	nRst,	nD5,	nRst,	nD5,	nRst
	dc.b		nF5,	nRst,	nF5,	nRst,	$10,	nF5,	$04,	nRst
	dc.b		nF5,	nRst,	nF5,	nF5,	nRst,	nF5,	nRst
	smpsReturn

LostLabyrinthActIII_Call18:
	dc.b		nF5,	$04,	nRst,	nF5,	nRst,	$10,	nF5,	$04
	dc.b		nRst,	nF5,	nRst,	nF5,	nF5,	nRst,	nF5,	nRst
	dc.b		nBb5,	nF5,	nRst,	nC6,	nRst,	nE5,	nRst,	$08
	dc.b		nEb6,	$04,	nBb5,	nRst,	nG5,	nRst,	nA5,	nBb5
	dc.b		nRst
	smpsReturn

LostLabyrinthActIII_Call19:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$05
	dc.b		nD4,	$04,	nRst,	nD4,	nF4,	nA4,	nD5,	nRst
	dc.b		$08,	nC4,	$04,	nRst,	nC5,	nG4,	nE4,	nC4
	dc.b		nRst,	nF4,	nF4,	nRst,	nE4,	nRst,	nF4,	nRst
	dc.b		nE4,	nRst,	nD4,	nC4,	nF4,	nE4,	nG4,	nF4
	smpsReturn

LostLabyrinthActIII_Call1A:
	dc.b		nRst,	$08,	nD4,	$04,	nRst,	nD4,	nF4,	nA4
	dc.b		nD5,	nRst,	$08,	nC4,	$04,	nRst,	nC5,	nG4
	dc.b		nE4,	nC4,	nRst,	nF4,	nF4,	nRst,	nE4,	nRst
	dc.b		nF4,	nRst,	nE4,	nRst,	nE4,	nRst,	nC4,	nE4
	dc.b		nF4,	nG4
	smpsReturn

LostLabyrinthActIII_Call1B:
	dc.b		nRst,	$04,	nD5,	nA4,	nRst,	nF4,	nD4,	nRst
	dc.b		nG4,	nRst,	nG4,	nRst,	nG4,	nRst,	nG4,	nE4
	dc.b		nRst,	$0C,	nD5,	$04,	nBb4,	nF4,	nD4,	nRst
	dc.b		nF4,	nRst,	nF4,	nRst,	nF4,	nRst,	nF4,	nRst
	dc.b		nG4
	smpsReturn

LostLabyrinthActIII_Call1C:
	dc.b		nRst,	$04,	nD5,	nA4,	nRst,	nF4,	nD4,	nRst
	dc.b		nG4,	nRst,	nG4,	nRst,	nF5,	nE5,	nD5,	nC5
	dc.b		nF4,	nRst,	nF4,	nRst,	nG4,	nG4,	nF4,	nRst
	dc.b		nF4,	nRst,	nF4,	nRst,	nG4,	nRst,	nC5,	nD5
	dc.b		nA4
	smpsReturn

LostLabyrinthActIII_Call1D:
	dc.b		nF4,	$04,	nRst,	nF4,	nRst,	$10,	nF4,	$04
	dc.b		nRst,	nD4,	nD4,	nRst,	nD4,	nRst,	nD4,	nRst
	dc.b		nF4,	nRst,	nF4,	nRst,	$10,	nF4,	$04,	nRst
	dc.b		nF4,	nRst,	nF4,	nF4,	nRst,	nF4,	nRst
	smpsReturn

LostLabyrinthActIII_Call1E:
	dc.b		nF4,	$04,	nRst,	nF4,	nRst,	$10,	nF4,	$04
	dc.b		nRst,	nF4,	nRst,	nF4,	nF4,	nRst,	nF4,	nRst
	dc.b		nBb4,	nF4,	nRst,	nC5,	nRst,	nE4,	nRst,	$08
	dc.b		nEb5,	$04,	nBb4,	nRst,	nG4,	nRst,	nA4,	nBb4
	dc.b		nRst
	smpsReturn

LostLabyrinthActIII_Call1F:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nA4,	$04,	nRst,	$1C,	nG4,	$04,	nRst,	$18
	dc.b		nBb4,	$04,	nBb4,	nRst,	nBb4,	nRst,	nBb4,	nRst
	dc.b		nC5,	nRst,	$1C
	smpsReturn

LostLabyrinthActIII_Call20:
	dc.b		smpsNoAttack,	$08,	nA4,	$04,	nRst,	$1C,	nG4,	$04
	dc.b		nRst,	$18,	nBb4,	$04,	nBb4,	nRst,	nBb4,	nRst
	dc.b		nBb4,	nRst,	nA4,	nRst,	nC5,	nRst,	$14
	smpsReturn

LostLabyrinthActIII_Call21:
	dc.b		smpsNoAttack,	$1C,	nC5,	$04,	nRst,	nC5,	nRst,	nC5
	dc.b		nRst,	nD5,	nC5,	nRst,	$20,	nBb4,	$04,	nRst
	dc.b		nA4,	nRst,	nBb4,	nRst,	nBb4,	nRst,	nC5
	smpsReturn

LostLabyrinthActIII_Call22:
	dc.b		nRst,	$1C,	nC5,	$04,	nRst,	nC5,	nRst,	$14
	dc.b		nBb4,	$04,	nRst,	nBb4,	nRst,	nC5,	nC5,	nBb4
	dc.b		nRst,	nC5,	nRst,	nBb4,	nRst,	nC5,	nRst,	$10
	smpsReturn

LostLabyrinthActIII_Call23:
	dc.b		nA4,	$04,	nRst,	nA4,	nRst,	$10,	nA4,	$04
	dc.b		nRst,	nA4,	nA4,	nRst,	nG4,	nRst,	nF4,	nRst
	dc.b		nA4,	nRst,	nC5,	nRst,	$10,	nD5,	$04,	nRst
	dc.b		nA4,	nRst,	nA4,	nC5,	nRst,	nD5,	nRst
	smpsReturn

LostLabyrinthActIII_Call24:
	dc.b		nBb4,	$04,	nRst,	nBb4,	nRst,	$10,	nC5,	$04
	dc.b		nRst,	nBb4,	nRst,	nBb4,	nC5,	nRst,	nBb4,	nRst
	dc.b		$44
	smpsReturn

LostLabyrinthActIII_Call25:
	dc.b		smpsNoAttack,	$40
	smpsPSGvoice	$00
	dc.b		nBb4,	$0C,	nRst,	$04,	nD5,	$0C,	nE5,	$1C
	dc.b		nRst,	$08
	smpsReturn

LostLabyrinthActIII_Call26:
	dc.b		smpsNoAttack,	$40,	nBb4,	$08,	nRst,	$04,	nF5,	$14
	dc.b		nE5,	$10,	nD5,	$04,	nRst,	nC5,	nRst
	smpsReturn

LostLabyrinthActIII_Call27:
	dc.b		smpsNoAttack,	$40,	nD5,	$08,	nRst,	$04,	nBb4,	$14
	dc.b		nRst,	$20
	smpsReturn

LostLabyrinthActIII_Call28:
	dc.b		smpsNoAttack,	$30,	nE5,	$08,	nEb5,	$04,	nD5,	$24
	dc.b		nRst,	$14,	nF4,	$04,	nA4,	nE5
	smpsReturn

LostLabyrinthActIII_Call29:
	dc.b		nD5,	$04,	nRst,	$10,	nD5,	$04,	nC5,	nA4
	dc.b		nRst,	$14,	nA4,	$04,	nC5,	nF5,	nD5,	nRst
	dc.b		$10,	nD5,	$04,	nC5,	nA4,	nRst,	$14,	nD5
	dc.b		$04,	nF5,	nD5
	smpsReturn

LostLabyrinthActIII_Call2A:
	dc.b		nBb4,	$04,	nRst,	$10,	nD5,	$04,	nC5,	nBb4
	dc.b		nRst,	$14,	nF4,	$04,	nBb4,	nA4,	nF5,	$0C
	dc.b		nE5,	$04,	nRst,	nE5,	$0C,	nG5,	nEb5,	$04
	dc.b		nRst,	nG5,	nF5,	$08
	smpsReturn

LostLabyrinthActIII_Call2B:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	nCs0
	dc.b		nRst,	$16,	nCs0,	$02,	nRst,	nCs0,	nRst,	$12
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$0E
	dc.b		nCs0,	$02,	nRst,	$0E,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst
	smpsReturn

LostLabyrinthActIII_Call2C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$04,	$0A,	nCs0
	dc.b		$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0
	dc.b		$02,	nRst,	$0E,	nCs0,	$02,	nRst,	$0E,	nCs0
	dc.b		$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0
	dc.b		$02,	nRst,	$06,	nCs0,	$02,	nRst
	smpsReturn

LostLabyrinthActIII_Call2D:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	nCs0,	nRst,	$0A
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst
	smpsReturn

LostLabyrinthActIII_Call2E:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	nCs0,	nRst,	$0A,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst
	smpsReturn

LostLabyrinthActIII_Call2F:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	nCs0,	nRst,	$0A
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst
	smpsReturn

LostLabyrinthActIII_Call30:
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	dKick,	nRst,	dKick,	nRst,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst,	dSnare
	dc.b		dSnare,	dKick,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	dKick,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	dKick,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	dSnare,	nRst,	dSnare
	dc.b		dSnare
	smpsReturn

LostLabyrinthActIII_Call31:
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	$0A,	dSnare,	$02,	nRst,	dSnare,	dSnare,	dKick
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dKick
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dKick
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dSnare,	nRst,	dSnare,	dSnare
	smpsReturn

LostLabyrinthActIII_Call32:
	dc.b		dKick,	$02,	nRst,	$06,	dKick,	$02,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	$06,	dKick,	$02,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	dSnare,	nRst,	$06
	smpsReturn

LostLabyrinthActIII_Call33:
	dc.b		dSnare,	$02,	nRst,	$06,	dKick,	$02,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	$06,	dKick,	$02,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	dSnare,	nRst,	dSnare
	dc.b		nRst
	smpsReturn

LostLabyrinthActIII_Call34:
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	dKick,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	smpsReturn

LostLabyrinthActIII_Call35:
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dSnare,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	dKick,	nRst,	dKick,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst
	smpsReturn

LostLabyrinthActIII_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3A,$30,$71,$01,$00,$5F,$5A,$5F,$1F,$0D,$12,$0F,$09,$09,$07,$07
	dc.b		$06,$40,$38,$48,$17,$20,$15,$15,$00;			Voice 01
	dc.b		$3D,$01,$21,$12,$31,$14,$0E,$0F,$0F,$00,$04,$03,$04,$00,$00,$00
	dc.b		$00,$00,$16,$16,$16,$1B,$05,$05,$05;			Voice 02
	dc.b		$3D,$01,$21,$12,$31,$14,$0E,$0F,$0F,$00,$04,$03,$04,$00,$00,$00
	dc.b		$00,$00,$16,$16,$16,$1B,$05,$05,$05;			Voice 03
	dc.b		$2C,$31,$71,$31,$71,$5F,$5F,$54,$5F,$05,$03,$0A,$0C,$00,$03,$03
	dc.b		$03,$00,$00,$87,$A7,$17,$19,$00,$02;			Voice 04
	dc.b		$39,$7C,$01,$1A,$53,$1F,$1F,$9F,$9F,$07,$0C,$08,$0B,$00,$06,$06
	dc.b		$06,$FA,$37,$37,$37,$26,$19,$34,$00;			Voice 05
	even
