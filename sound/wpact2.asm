; =============================================================================================
; Project Name:		wpact2
; Created:		9th September 2015
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

wpact2_Header:
	smpsHeaderVoice	wpact2_Voices
	smpsHeaderChan	$06,	$01
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	wpact2_DAC
	smpsHeaderFM	wpact2_FM1,	smpsPitch00,	$00
	smpsHeaderFM	wpact2_FM2,	smpsPitch00,	$00
	smpsHeaderFM	wpact2_FM3,	smpsPitch00,	$00
	smpsHeaderFM	wpact2_FM4,	smpsPitch00,	$00
	smpsHeaderFM	wpact2_FM5,	smpsPitch00,	$00
	smpsHeaderPSG	wpact2_PSG1,	smpsPitch03lo,	$00,	$00

; FM1 Data
wpact2_FM1:
	smpsCall	wpact2_Call01
	smpsCall	wpact2_Call02
	smpsCall	wpact2_Call03
	smpsCall	wpact2_Call04
	smpsCall	wpact2_Call03
	smpsCall	wpact2_Call05
	smpsCall	wpact2_Call06
	smpsCall	wpact2_Call07
	smpsCall	wpact2_Call08
	smpsCall	wpact2_Call02
	smpsCall	wpact2_Call03
	smpsCall	wpact2_Call04
	smpsCall	wpact2_Call03
	smpsCall	wpact2_Call05
	smpsCall	wpact2_Call06
	smpsCall	wpact2_Call07
	smpsJump	wpact2_FM1

; FM2 Data
wpact2_FM2:
	smpsCall	wpact2_Call09
	smpsCall	wpact2_Call0A
	smpsCall	wpact2_Call0B
	smpsCall	wpact2_Call0C
	smpsCall	wpact2_Call0D
	smpsCall	wpact2_Call0E
	smpsCall	wpact2_Call0F
	smpsCall	wpact2_Call10
	smpsCall	wpact2_Call09
	smpsCall	wpact2_Call0A
	smpsCall	wpact2_Call0B
	smpsCall	wpact2_Call11
	smpsCall	wpact2_Call0D
	smpsCall	wpact2_Call0E
	smpsCall	wpact2_Call0F
	smpsCall	wpact2_Call10
	smpsJump	wpact2_FM2

; FM3 Data
wpact2_FM3:
	smpsCall	wpact2_Call12
	smpsCall	wpact2_Call13
	smpsCall	wpact2_Call14
	smpsCall	wpact2_Call15
	smpsCall	wpact2_Call16
	smpsCall	wpact2_Call17
	smpsCall	wpact2_Call18
	smpsCall	wpact2_Call19
	smpsCall	wpact2_Call12
	smpsCall	wpact2_Call13
	smpsCall	wpact2_Call14
	smpsCall	wpact2_Call1A
	smpsCall	wpact2_Call16
	smpsCall	wpact2_Call17
	smpsCall	wpact2_Call18
	smpsCall	wpact2_Call19
	smpsJump	wpact2_FM3

; FM4 Data
wpact2_FM4:
	smpsCall	wpact2_Call1B
	smpsCall	wpact2_Call1B
	smpsCall	wpact2_Call1C
	smpsCall	wpact2_Call1D
	smpsCall	wpact2_Call1C
	smpsCall	wpact2_Call1E
	smpsCall	wpact2_Call1F
	smpsCall	wpact2_Call20
	smpsCall	wpact2_Call1B
	smpsCall	wpact2_Call1B
	smpsCall	wpact2_Call1C
	smpsCall	wpact2_Call1D
	smpsCall	wpact2_Call1C
	smpsCall	wpact2_Call1E
	smpsCall	wpact2_Call1F
	smpsCall	wpact2_Call20
	smpsJump	wpact2_FM4

; FM5 Data
wpact2_FM5:
	smpsCall	wpact2_Call21
	smpsCall	wpact2_Call21
	smpsCall	wpact2_Call21
	smpsCall	wpact2_Call22
	smpsCall	wpact2_Call23
	smpsCall	wpact2_Call24
	smpsCall	wpact2_Call25
	smpsCall	wpact2_Call26
	smpsCall	wpact2_Call21
	smpsCall	wpact2_Call21
	smpsCall	wpact2_Call21
	smpsCall	wpact2_Call22
	smpsCall	wpact2_Call23
	smpsCall	wpact2_Call24
	smpsCall	wpact2_Call25
	smpsCall	wpact2_Call26
	smpsJump	wpact2_FM5

; PSG1 Data
wpact2_PSG1:
	smpsCall	wpact2_Call27
	smpsCall	wpact2_Call28
	smpsCall	wpact2_Call29
	smpsCall	wpact2_Call2A
	smpsCall	wpact2_Call2B
	smpsCall	wpact2_Call2C
	smpsCall	wpact2_Call2D
	smpsCall	wpact2_Call2E
	smpsCall	wpact2_Call28
	smpsCall	wpact2_Call28
	smpsCall	wpact2_Call29
	smpsCall	wpact2_Call2A
	smpsCall	wpact2_Call2B
	smpsCall	wpact2_Call2C
	smpsCall	wpact2_Call2D
	smpsCall	wpact2_Call2E
	smpsJump	wpact2_PSG1

; DAC Data
wpact2_DAC:
	smpsCall	wpact2_Call2F
	smpsCall	wpact2_Call30
	smpsCall	wpact2_Call31
	smpsCall	wpact2_Call30
	smpsCall	wpact2_Call31
	smpsCall	wpact2_Call32
	smpsCall	wpact2_Call33
	smpsCall	wpact2_Call34
	smpsCall	wpact2_Call2F
	smpsCall	wpact2_Call30
	smpsCall	wpact2_Call31
	smpsCall	wpact2_Call30
	smpsCall	wpact2_Call31
	smpsCall	wpact2_Call32
	smpsCall	wpact2_Call33
	smpsCall	wpact2_Call34
	smpsJump	wpact2_DAC

wpact2_Call01:
	smpsFMvoice	$01
	dc.b		nE4,	$02,	nRst,	nG4,	nRst,	nB4,	$08,	nA4
	dc.b		$02,	nRst,	nG4,	$0C,	nD4,	$02,	nRst,	nG4
	dc.b		nRst,	nB4,	$08,	nA4,	$02,	nRst,	nG4,	$0C
	dc.b		nC4,	$02,	nRst,	nE4,	nRst,	nG4,	nRst,	nC5
	dc.b		$0C,	nB4,	$02,	nRst,	nA4,	$24
	smpsReturn

wpact2_Call02:
	dc.b		nE4,	$02,	nRst,	nG4,	nRst,	nB4,	$08,	nA4
	dc.b		$02,	nRst,	nG4,	$0C,	nD4,	$02,	nRst,	nG4
	dc.b		nRst,	nB4,	$08,	nA4,	$02,	nRst,	nG4,	$0C
	dc.b		nC4,	$02,	nRst,	nE4,	nRst,	nG4,	nRst,	nC5
	dc.b		$0C,	nB4,	$02,	nRst,	nA4,	$1C,	nAb4,	$04
	dc.b		nA4
	smpsReturn

wpact2_Call03:
	dc.b		nB4,	$04,	nRst,	nB4,	nRst,	nB4,	$08,	nCs5
	dc.b		$04,	nB4,	$1C,	nAb4,	$04,	nA4,	nB4,	nRst
	dc.b		nB4,	nRst,	nB4,	nE5,	$08,	nB4,	$18,	nRst
	dc.b		$04,	nB4,	$08
	smpsReturn

wpact2_Call04:
	dc.b		nCs5,	$04,	nCs5,	nRst,	nB4,	nRst,	nA4,	nRst
	dc.b		nAb4,	nA4,	nA4,	nRst,	nAb4,	nRst,	nFs4,	nRst
	dc.b		nE4,	nEb4,	$0C,	nRst,	$04,	nE4,	$0C,	nRst
	dc.b		$04,	nFs4,	$08,	nAb4,	nA4,	nAb4,	$04,	nA4
	smpsReturn

wpact2_Call05:
	dc.b		nCs5,	$04,	nCs5,	nRst,	nB4,	nRst,	nA4,	nRst
	dc.b		nAb4,	nA4,	nA4,	nRst,	nAb4,	nRst,	nFs4,	nRst
	dc.b		nE4,	nEb4,	$0C,	nRst,	$04,	nE4,	$0C,	nRst
	dc.b		$04,	nFs4,	$08,	nAb4,	nA4,	nBb4
	smpsReturn

wpact2_Call06:
	dc.b		nB4,	$08,	nRst,	$04,	nEb4,	nFs4,	nB4,	nC5
	dc.b		nCs5,	nRst,	nE5,	$08,	nAb5,	$04,	nFs5,	nRst
	dc.b		nE5,	nFs5,	$08,	nB4,	$04,	nEb5,	nE5,	nFs5
	dc.b		nAb5,	nA5,	nAb5,	nRst,	nFs5,	nRst,	nE5,	nAb4
	dc.b		nB4,	nC5,	nCs5
	smpsReturn

wpact2_Call07:
	dc.b		smpsNoAttack,	$0C,	nRst,	$04,	nCs5,	nEb5,	nE5,	nFs5
	dc.b		nRst,	nE5,	nRst,	nE5,	nEb5,	nCs5,	nB4,	nB4
	dc.b		nEb5,	$08,	nFs5,	$04,	nE5,	nEb5,	nE5,	nFs5
	dc.b		nB5,	$1C,	nRst,	$08
	smpsReturn

wpact2_Call08:
	dc.b		nE4,	$02,	nRst,	nG4,	nRst,	nB4,	$08,	nA4
	dc.b		$02,	nRst,	nG4,	$0C,	nD4,	$02,	nRst,	nG4
	dc.b		nRst,	nB4,	$08,	nA4,	$02,	nRst,	nG4,	$0C
	dc.b		nC4,	$02,	nRst,	nE4,	nRst,	nG4,	nRst,	nC5
	dc.b		$0C,	nB4,	$02,	nRst,	nA4,	$24
	smpsReturn

wpact2_Call09:
	smpsFMvoice	$03
	dc.b		nE4,	$10,	nRst,	$04,	nE5,	$08,	nRst,	$04
	dc.b		nG4,	nRst,	$02,	nG5,	$04,	nRst,	$02,	nD5
	dc.b		$10,	nRst,	$04,	nC4,	$10,	nRst,	$04,	nG4
	dc.b		nRst,	nA5,	$10,	nRst,	$02,	nF4,	nG5,	$08
	dc.b		nF4
	smpsReturn

wpact2_Call0A:
	dc.b		nE5,	$10,	nRst,	$04,	nE4,	$08,	nRst,	$04
	dc.b		nG5,	nRst,	$02,	nG5,	$04,	nRst,	$02,	nD4
	dc.b		$10,	nRst,	$04,	nC4,	$10,	nRst,	$04,	nG5
	dc.b		nRst,	nA4,	$10,	nRst,	$04,	nG5,	$08,	nF5
	smpsReturn

wpact2_Call0B:
	dc.b		nE4,	$10,	nB3,	nEb5,	$0C,	nB3,	$14,	nCs4
	dc.b		$10,	nAb4,	nB3,	$04,	nB4,	$0C,	nE5,	$10
	smpsReturn

wpact2_Call0C:
	dc.b		nCs5,	$04,	$08,	nA3,	$14,	nB4,	$04,	nB3
	dc.b		nAb4,	$18,	nFs3,	$10,	nBb3,	$08,	nCs5,	nE4
	dc.b		$10,	nEb5
	smpsReturn

wpact2_Call0D:
	dc.b		nE4,	$10,	nB3,	nEb5,	$04,	$08,	nB4,	$14
	dc.b		nCs4,	$10,	nAb3,	$08,	nCs4,	nB4,	$04,	$08
	dc.b		nAb5,	nFs5,	$04,	nE5,	nEb4
	smpsReturn

wpact2_Call0E:
	dc.b		nCs4,	$0C,	nE4,	$14,	nB3,	$0C,	nE5,	$14
	dc.b		nFs3,	$08,	nA3,	nCs4,	nE5,	nFs4,	$04,	nRst
	dc.b		nE4,	nRst,	nEb4,	nRst,	nCs4,	nRst
	smpsReturn

wpact2_Call0F:
	dc.b		nB4,	$08,	nEb5,	$04,	nFs5,	$08,	nRst,	$04
	dc.b		nFs4,	nAb4,	nRst,	nFs5,	nE4,	nEb4,	nRst,	nEb4
	dc.b		nRst,	nA3,	$0C,	nEb4,	$04,	nFs5,	$08,	nRst
	dc.b		$04,	nFs4,	nAb4,	nRst,	nA5,	nRst,	nA5,	nAb4
	dc.b		nFs5,	nE4,	nE5
	smpsReturn

wpact2_Call10:
	dc.b		smpsNoAttack,	$0C,	nB4,	$10,	nFs4,	$04,	nRst,	nFs4
	dc.b		nRst,	nFs5,	nAb4,	$08,	nFs4,	nB4,	$0C,	nEb4
	dc.b		nE4,	$08,	nEb4,	$0C,	nFs5,	$14
	smpsReturn

wpact2_Call11:
	dc.b		nCs5,	$04,	$08,	nA3,	$14,	nB4,	$04,	nB3
	dc.b		nAb4,	$18,	nFs3,	$10,	nBb3,	$08,	nCs4,	nE4
	dc.b		$10,	nEb5
	smpsReturn

wpact2_Call12:
	smpsFMvoice	$03
	dc.b		nE5,	$10,	nRst,	$04,	nE4,	$08,	nRst,	$04
	dc.b		nG5,	nRst,	$02,	nG4,	$04,	nRst,	$02,	nD4
	dc.b		$10,	nRst,	$04,	nC5,	$10,	nRst,	$04,	nG5
	dc.b		nRst,	nA4,	$10,	nRst,	$02,	nF5,	nG4,	$08
	dc.b		nF5
	smpsReturn

wpact2_Call13:
	dc.b		nE4,	$10,	nRst,	$04,	nE5,	$08,	nRst,	$04
	dc.b		nG4,	nRst,	$02,	nG4,	$04,	nRst,	$02,	nD5
	dc.b		$10,	nRst,	$04,	nC5,	$10,	nRst,	$04,	nG4
	dc.b		nRst,	nA5,	$10,	nRst,	$04,	nG4,	$08,	nF4
	smpsReturn

wpact2_Call14:
	dc.b		nE5,	$10,	nB4,	nEb4,	$0C,	nB4,	$14,	nCs5
	dc.b		$10,	nAb3,	nB4,	$04,	nB3,	$0C,	nE4,	$10
	smpsReturn

wpact2_Call15:
	dc.b		nCs4,	$04,	$08,	nA4,	$14,	nB3,	$04,	nB4
	dc.b		nAb3,	$18,	nFs4,	$10,	nBb4,	$08,	nCs4,	nE5
	dc.b		$10,	nEb4
	smpsReturn

wpact2_Call16:
	dc.b		nE5,	$10,	nB4,	nEb4,	$04,	$08,	nB3,	$14
	dc.b		nCs5,	$10,	nAb4,	$08,	nCs5,	nB3,	$04,	$08
	dc.b		nAb4,	nFs4,	$04,	nE4,	nEb5
	smpsReturn

wpact2_Call17:
	dc.b		nCs5,	$0C,	nE5,	$14,	nB4,	$0C,	nE4,	$14
	dc.b		nFs4,	$08,	nA4,	nCs5,	nE4,	nFs5,	$04,	nRst
	dc.b		nE5,	nRst,	nEb5,	nRst,	nCs5,	nRst
	smpsReturn

wpact2_Call18:
	dc.b		nB3,	$08,	nEb4,	$04,	nFs4,	$08,	nRst,	$04
	dc.b		nFs5,	nAb5,	nRst,	nFs4,	nE5,	nEb5,	nRst,	nEb5
	dc.b		nRst,	nA4,	$0C,	nEb5,	$04,	nFs4,	$08,	nRst
	dc.b		$04,	nFs5,	nAb5,	nRst,	nA4,	nRst,	nA4,	nAb5
	dc.b		nFs4,	nE5,	nE4
	smpsReturn

wpact2_Call19:
	dc.b		smpsNoAttack,	$0C,	nB3,	$10,	nFs5,	$04,	nRst,	nFs5
	dc.b		nRst,	nFs4,	nAb5,	$08,	nFs5,	nB3,	$0C,	nEb5
	dc.b		nE5,	$08,	$0C,	nB3,	$14
	smpsReturn

wpact2_Call1A:
	dc.b		nCs4,	$04,	$08,	nA4,	$14,	nB3,	$04,	nB4
	dc.b		nAb3,	$18,	nFs4,	$10,	nBb4,	$08,	nCs5,	nE5
	dc.b		$10,	nEb4
	smpsReturn

wpact2_Call1B:
	smpsFMvoice	$04
	dc.b		nE2,	$02,	nRst,	nE2,	nRst,	nE2,	nE2,	nE2
	dc.b		nE2,	nE2,	$04,	$02,	nE2,	nE2,	$04,	nE2
	dc.b		nD2,	$02,	nRst,	nD2,	nRst,	nD2,	nD2,	nD2
	dc.b		nD2,	nD2,	$04,	$02,	nD2,	nD2,	$04,	nD2
	dc.b		nC2,	$02,	nRst,	nC2,	nRst,	nC2,	nC2,	nC2
	dc.b		nC2,	nC2,	$04,	$02,	nC2,	nC2,	$04,	nC2
	dc.b		nF2,	$02,	nRst,	nF2,	nRst,	nF2,	nF2,	nF2
	dc.b		nF2,	nF2,	$04,	$02,	nF2,	nF2,	$04,	nF2
	smpsReturn

wpact2_Call1C:
	dc.b		nE2,	$02,	nRst,	nE2,	nRst,	nE2,	nE2,	nE2
	dc.b		nE2,	nE2,	$04,	$02,	nE2,	nE2,	$04,	nE2
	dc.b		nEb2,	$02,	nRst,	nEb2,	nRst,	nEb2,	nEb2,	nEb2
	dc.b		nEb2,	nEb2,	$04,	$02,	nEb2,	nEb2,	$04,	nEb2
	dc.b		nCs2,	$02,	nRst,	nCs2,	nRst,	nCs2,	nCs2,	nCs2
	dc.b		nCs2,	nCs2,	$04,	$02,	nCs2,	nCs2,	$04,	nCs2
	dc.b		nB1,	$02,	nRst,	nB1,	nRst,	nB1,	nB1,	nB1
	dc.b		nB1,	nB1,	$04,	$02,	nB1,	nB1,	$04,	nB1
	smpsReturn

wpact2_Call1D:
	dc.b		nA2,	$02,	nRst,	nA2,	nRst,	nA2,	nA2,	nA2
	dc.b		nA2,	nA2,	$04,	$02,	nA2,	nA2,	$04,	nA2
	dc.b		nAb2,	$02,	nRst,	nAb2,	nRst,	nAb2,	nAb2,	nAb2
	dc.b		nAb2,	nAb2,	$04,	$02,	nAb2,	nAb2,	$04,	nAb2
	dc.b		nFs2,	$02,	nRst,	nFs2,	nRst,	nFs2,	nFs2,	nFs2
	dc.b		nFs2,	nFs2,	$04,	$02,	nFs2,	nFs2,	$04,	nFs2
	dc.b		nB2,	$02,	nRst,	nB2,	nRst,	nA2,	nA2,	nA2
	dc.b		nA2,	nAb2,	$04,	$02,	nAb2,	nFs2,	$04,	nFs2
	smpsReturn

wpact2_Call1E:
	dc.b		nA2,	$02,	nRst,	nA2,	nRst,	nA2,	nA2,	nA2
	dc.b		nA2,	nA2,	$04,	$02,	nA2,	nA2,	$04,	nA2
	dc.b		nAb2,	$02,	nRst,	nAb2,	nRst,	nAb2,	nAb2,	nAb2
	dc.b		nAb2,	nAb2,	$04,	$02,	nAb2,	nAb2,	$04,	nAb2
	dc.b		nFs2,	$02,	nRst,	nFs2,	nRst,	nFs2,	nFs2,	nFs2
	dc.b		nFs2,	nFs2,	$04,	$02,	nFs2,	nFs2,	$04,	nFs2
	dc.b		nA2,	$02,	nRst,	nA2,	nRst,	nAb2,	nAb2,	nAb2
	dc.b		nAb2,	nFs2,	$04,	$02,	nFs2,	nE2,	$04,	nE2
	smpsReturn

wpact2_Call1F:
	dc.b		nB2,	$02,	nRst,	nB2,	nRst,	nB2,	nB2,	nB2
	dc.b		nB2,	nB2,	$04,	$02,	nB2,	nC3,	$04,	nCs3
	dc.b		nCs3,	$02,	nRst,	nCs3,	nRst,	nCs3,	nCs3,	nCs3
	dc.b		nCs3,	nCs3,	$04,	$02,	nCs3,	nCs3,	$04,	nCs3
	dc.b		nE2,	$02,	nRst,	nE2,	nRst,	nE2,	nE2,	nE2
	dc.b		nE2,	nE2,	$04,	$02,	nE2,	nE2,	$04,	nE2
	dc.b		nFs2,	$02,	nRst,	nFs2,	nRst,	nFs2,	nFs2,	nFs2
	dc.b		nFs2,	nA2,	$04,	nAb2,	nFs2,	nE2
	smpsReturn

wpact2_Call20:
	dc.b		nCs2,	$02,	nRst,	nCs2,	nRst,	nCs2,	nCs2,	nCs2
	dc.b		nCs2,	nCs2,	$04,	$02,	nCs2,	nCs2,	$04,	nCs2
	dc.b		nFs2,	$02,	nRst,	nFs2,	nRst,	nFs2,	nFs2,	nFs2
	dc.b		nFs2,	nFs2,	$04,	$02,	nFs2,	nFs2,	$04,	nFs2
	dc.b		nB2,	$02,	nRst,	nB2,	nRst,	nB2,	nB2,	nB2
	dc.b		nB2,	nB2,	$04,	$02,	nB2,	nA2,	$04,	nBb2
	dc.b		nB2,	$02,	nRst,	nB2,	nRst,	nB2,	nB2,	nB2
	dc.b		nB2,	nA2,	$04,	nAb2,	nFs2,	nE2
	smpsReturn

wpact2_Call21:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

wpact2_Call22:
	dc.b		smpsNoAttack,	$78
	smpsFMvoice	$02
	dc.b		nAb3,	$04,	nA3
	smpsReturn

wpact2_Call23:
	dc.b		nB3,	$04,	nRst,	nB3,	nRst,	nB3,	$08,	nCs4
	dc.b		$04,	nB3,	$1C,	nAb3,	$04,	nA3,	nB3,	nRst
	dc.b		nB3,	nRst,	nB3,	nE4,	$08,	nB3,	$18,	nRst
	dc.b		$04,	nB3,	$08
	smpsReturn

wpact2_Call24:
	dc.b		nCs4,	$04,	nCs4,	nRst,	nB3,	nRst,	nA3,	nRst
	dc.b		nAb3,	nA3,	nA3,	nRst,	nAb3,	nRst,	nFs3,	nRst
	dc.b		nE3,	nEb3,	$0C,	nRst,	$04,	nE3,	$0C,	nRst
	dc.b		$04,	nFs3,	$08,	nAb3,	nA3,	nBb3
	smpsReturn

wpact2_Call25:
	dc.b		nB3,	$08,	nRst,	$04,	nEb3,	nFs3,	nB3,	nC4
	dc.b		nCs4,	nRst,	nE4,	$08,	nAb4,	$04,	nFs4,	nRst
	dc.b		nE4,	nFs4,	$08,	nB3,	$04,	nEb4,	nE4,	nFs4
	dc.b		nAb4,	nA4,	nAb4,	nRst,	nFs4,	nRst,	nE4,	nAb3
	dc.b		nB3,	nC4,	nCs4
	smpsReturn

wpact2_Call26:
	dc.b		smpsNoAttack,	$0C,	nRst,	$04,	nCs4,	nEb4,	nE4,	nFs4
	dc.b		nRst,	nE4,	nRst,	nE4,	nEb4,	nCs4,	nB3,	nB3
	dc.b		nEb4,	$08,	nFs4,	$04,	nE4,	nEb4,	nE4,	nFs4
	dc.b		nB4,	$1C,	nRst,	$08
	smpsReturn

wpact2_Call27:
	dc.b		smpsNoAttack,	$68
	smpsPSGvoice	$02
	dc.b		nG4,	$08,	nRst,	nF4,	$04,	nRst
	smpsReturn

wpact2_Call28:
	dc.b		nE4,	$04,	nRst,	$64,	nG4,	$08,	nRst,	nF4
	dc.b		$04,	nRst
	smpsReturn

wpact2_Call29:
	dc.b		nE4,	$04,	nRst,	$24,	nAb4,	$04,	nRst,	nE4
	dc.b		nRst,	$34,	nAb4,	$04,	nRst,	nE4,	nRst,	$0C
	smpsReturn

wpact2_Call2A:
	dc.b		smpsNoAttack,	$10,	nA4,	$04,	nRst,	$1C,	nAb4,	$04
	dc.b		nRst,	$1C,	nE4,	$04,	nRst,	$0C,	nFs4,	$04
	dc.b		nRst,	nAb4,	nRst,	nA4,	nRst,	nAb4,	nRst
	smpsReturn

wpact2_Call2B:
	dc.b		smpsNoAttack,	$28,	nAb4,	$04,	nRst,	nE4,	nRst,	$34
	dc.b		nAb4,	$04,	nRst,	nE4,	nRst,	$0C
	smpsReturn

wpact2_Call2C:
	dc.b		smpsNoAttack,	$10,	nA4,	$04,	nRst,	$1C,	nAb4,	$04
	dc.b		nRst,	$1C,	nE4,	$04,	nRst,	$0C,	nEb4,	$04
	dc.b		nRst,	nCs4,	nRst,	nEb4,	nRst,	nE4,	nRst
	smpsReturn

wpact2_Call2D:
	dc.b		nEb4,	$04,	nRst,	$7C
	smpsReturn

wpact2_Call2E:
	dc.b		smpsNoAttack,	$60,	nB4,	$04,	nRst,	nA4,	nRst,	nAb4
	dc.b		nRst,	nFs4,	nRst
	smpsReturn

wpact2_Call2F:
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	dSnareS1,	nRst,	dSnareS1,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	dSnareS1,	nRst,	$06,	dSnareS1,	$02
	dc.b		nRst
	smpsReturn

wpact2_Call30:
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	dSnareS1,	nRst,	$04,	dSnareS1,	$02
	dc.b		nRst,	$04,	dSnareS1,	$02,	nRst,	dSnareS1,	nRst,	dSnareS1
	dc.b		dSnareS1,	dSnareS1,	nRst
	smpsReturn

wpact2_Call31:
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$0A
	dc.b		dSnareS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst
	smpsReturn

wpact2_Call32:
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dSnareS1,	$02,	nRst,	dKickS1,	nRst,	dKickS1,	nRst,	dSnareS1
	dc.b		nRst,	$06,	dKickS1,	$02,	nRst,	dSnareS1,	nRst,	$06
	dc.b		dSnareS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dSnareS1,	$02,	nRst,	dSnareS1,	dSnareS1,	dSnareS1,	dSnareS1,	dSnareS1
	dc.b		dSnareS1
	smpsReturn

wpact2_Call33:
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$04
	dc.b		dSnareS1,	$02,	dKickS1,	nRst,	$06,	dSnareS1,	$02,	nRst
	dc.b		$06,	dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst
	dc.b		$06,	dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst
	dc.b		$06,	dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst
	dc.b		$04,	dSnareS1,	$02,	dKickS1,	nRst,	$06,	dSnareS1,	$02
	dc.b		nRst,	$06,	dKickS1,	$02,	nRst,	dSnareS1,	nRst,	dSnareS1
	dc.b		nRst,	dSnareS1,	dSnareS1
	smpsReturn

wpact2_Call34:
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$06
	dc.b		dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$04
	dc.b		dSnareS1,	$02,	dKickS1,	nRst,	$06,	dSnareS1,	$02,	nRst
	dc.b		$06,	dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst
	dc.b		$04,	dSnareS1,	$02,	dKickS1,	nRst,	$06,	dSnareS1,	$02
	dc.b		nRst,	$06,	dKickS1,	$02,	nRst,	$06,	dSnareS1,	$02
	dc.b		nRst,	$04,	dSnareS1,	$02,	nRst,	$04,	dSnareS1,	$02
	dc.b		nRst,	$04,	dSnareS1,	$02,	nRst,	$04,	dSnareS1,	$02
	dc.b		nRst,	dSnareS1,	dSnareS1,	dSnareS1,	dSnareS1,	dSnareS1,	dSnareS1
	smpsReturn

wpact2_Voices:
	dc.b		$3C,$01,$00,$00,$00,$1F,$1F,$15,$1F,$11,$0D,$12,$05,$07,$04,$09
	dc.b		$02,$55,$3A,$25,$1A,$1A,$0E,$07,$0E;			Voice 00
	dc.b		$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04
	dc.b		$04,$25,$1A,$1A,$1A,$15,$10,$10,$10;			Voice 01
	dc.b		$3D,$12,$14,$12,$11,$50,$1B,$1B,$1A,$0F,$0A,$0A,$0A,$05,$07,$08
	dc.b		$06,$1F,$1F,$1F,$1F,$15,$1B,$10,$10;			Voice 02
	dc.b		$3A,$31,$25,$D3,$01,$5F,$1F,$1F,$9C,$08,$05,$04,$05,$03,$04,$02
	dc.b		$02,$2F,$2F,$1F,$2F,$29,$27,$1F,$13;			Voice 03
	dc.b		$3A,$31,$20,$01,$E1,$8F,$8F,$8E,$54,$0E,$03,$0E,$03,$00,$00,$00
	dc.b		$00,$13,$F3,$13,$0A,$17,$21,$19,$0E;			Voice 04
	even
