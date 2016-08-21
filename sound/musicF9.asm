; =============================================================================================
; Project Name:		CasinoStreetAct1
; Created:		21st July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

CasinoStreetAct1_Header:
	smpsHeaderVoice	CasinoStreetAct1_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	CasinoStreetAct1_DAC
	smpsHeaderFM	CasinoStreetAct1_FM1,	smpsPitch00,	$0A
	smpsHeaderFM	CasinoStreetAct1_FM2,	smpsPitch00,	$08
	smpsHeaderFM	CasinoStreetAct1_FM3,	smpsPitch00,	$08
	smpsHeaderFM	CasinoStreetAct1_FM4,	smpsPitch01lo,	$12
	smpsHeaderFM	CasinoStreetAct1_FM5,	smpsPitch01lo,	$12
	smpsHeaderPSG	CasinoStreetAct1_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	CasinoStreetAct1_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	CasinoStreetAct1_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
CasinoStreetAct1_FM1:
	smpsCall	CasinoStreetAct1_Call01
	smpsCall	CasinoStreetAct1_Call02
	smpsCall	CasinoStreetAct1_Call03
	smpsCall	CasinoStreetAct1_Call04
	smpsCall	CasinoStreetAct1_Call05
	smpsCall	CasinoStreetAct1_Call02
	smpsCall	CasinoStreetAct1_Call03
	smpsCall	CasinoStreetAct1_Call04
	smpsCall	CasinoStreetAct1_Call06
	smpsJump	CasinoStreetAct1_FM1

; FM2 Data
CasinoStreetAct1_FM2:
	smpsCall	CasinoStreetAct1_Call07
	smpsCall	CasinoStreetAct1_Call08
	smpsCall	CasinoStreetAct1_Call09
	smpsCall	CasinoStreetAct1_Call0A
	smpsCall	CasinoStreetAct1_Call0B
	smpsCall	CasinoStreetAct1_Call0C
	smpsCall	CasinoStreetAct1_Call0D
	smpsCall	CasinoStreetAct1_Call0E
	smpsCall	CasinoStreetAct1_Call0F
	smpsJump	CasinoStreetAct1_FM2

; FM3 Data
CasinoStreetAct1_FM3:
	smpsCall	CasinoStreetAct1_Call10
	smpsCall	CasinoStreetAct1_Call11
	smpsCall	CasinoStreetAct1_Call12
	smpsCall	CasinoStreetAct1_Call13
	smpsCall	CasinoStreetAct1_Call14
	smpsCall	CasinoStreetAct1_Call15
	smpsCall	CasinoStreetAct1_Call16
	smpsCall	CasinoStreetAct1_Call17
	smpsCall	CasinoStreetAct1_Call18
	smpsJump	CasinoStreetAct1_FM3

; FM4 Data
CasinoStreetAct1_FM4:
	smpsCall	CasinoStreetAct1_Call19
	smpsCall	CasinoStreetAct1_Call1A
	smpsCall	CasinoStreetAct1_Call1B
	smpsCall	CasinoStreetAct1_Call1C
	smpsCall	CasinoStreetAct1_Call1D
	smpsCall	CasinoStreetAct1_Call1A
	smpsCall	CasinoStreetAct1_Call1B
	smpsCall	CasinoStreetAct1_Call1C
	smpsCall	CasinoStreetAct1_Call1E
	smpsJump	CasinoStreetAct1_FM4

; FM5 Data
CasinoStreetAct1_FM5:
	smpsCall	CasinoStreetAct1_Call1F
	smpsCall	CasinoStreetAct1_Call20
	smpsCall	CasinoStreetAct1_Call21
	smpsCall	CasinoStreetAct1_Call22
	smpsCall	CasinoStreetAct1_Call23
	smpsCall	CasinoStreetAct1_Call20
	smpsCall	CasinoStreetAct1_Call21
	smpsCall	CasinoStreetAct1_Call22
	smpsCall	CasinoStreetAct1_Call24
	smpsJump	CasinoStreetAct1_FM5

; PSG1 Data
CasinoStreetAct1_PSG1:
	smpsCall	CasinoStreetAct1_Call25
	smpsCall	CasinoStreetAct1_Call26
	smpsCall	CasinoStreetAct1_Call27
	smpsCall	CasinoStreetAct1_Call28
	smpsCall	CasinoStreetAct1_Call29
	smpsCall	CasinoStreetAct1_Call26
	smpsCall	CasinoStreetAct1_Call27
	smpsCall	CasinoStreetAct1_Call28
	smpsCall	CasinoStreetAct1_Call2A
	smpsJump	CasinoStreetAct1_PSG1

; PSG2 Data
CasinoStreetAct1_PSG2:
	smpsCall	CasinoStreetAct1_Call2B
	smpsCall	CasinoStreetAct1_Call2C
	smpsCall	CasinoStreetAct1_Call2D
	smpsCall	CasinoStreetAct1_Call2E
	smpsCall	CasinoStreetAct1_Call2F
	smpsCall	CasinoStreetAct1_Call2C
	smpsCall	CasinoStreetAct1_Call2D
	smpsCall	CasinoStreetAct1_Call2E
	smpsCall	CasinoStreetAct1_Call30
	smpsJump	CasinoStreetAct1_PSG2

; PSG3 Data
CasinoStreetAct1_PSG3:
	smpsPSGform	$E7
	smpsCall	CasinoStreetAct1_Call31
	smpsCall	CasinoStreetAct1_Call32
	smpsCall	CasinoStreetAct1_Call33
	smpsCall	CasinoStreetAct1_Call34
	smpsCall	CasinoStreetAct1_Call35
	smpsCall	CasinoStreetAct1_Call32
	smpsCall	CasinoStreetAct1_Call33
	smpsCall	CasinoStreetAct1_Call34
	smpsCall	CasinoStreetAct1_Call36
	smpsJump	CasinoStreetAct1_PSG3

; DAC Data
CasinoStreetAct1_DAC:
	smpsCall	CasinoStreetAct1_Call37
	smpsCall	CasinoStreetAct1_Call38
	smpsCall	CasinoStreetAct1_Call39
	smpsCall	CasinoStreetAct1_Call3A
	smpsCall	CasinoStreetAct1_Call3B
	smpsCall	CasinoStreetAct1_Call38
	smpsCall	CasinoStreetAct1_Call39
	smpsCall	CasinoStreetAct1_Call3A
	smpsCall	CasinoStreetAct1_Call3C
	smpsJump	CasinoStreetAct1_DAC

CasinoStreetAct1_Call01:
	dc.b		nRst,	$0E
	smpsFMvoice	$00
	dc.b		nE3,	$02,	nD3,	$06,	nC3,	$02,	nB2,	$06
	dc.b		nG2,	$02,	nC3,	$0B,	nRst,	$03,	nC3,	$02
	dc.b		nG2,	$0B,	nRst,	$03,	nG2,	$02,	nE2,	$0B
	dc.b		nRst,	$03,	nE2,	$02,	nB2,	$0B,	nRst,	$03
	dc.b		nB2,	$02,	nA2,	$0B,	nRst,	$03,	nA2,	$02
	dc.b		nC3,	$0B,	nRst,	$03,	nC3,	$02
	smpsReturn

CasinoStreetAct1_Call02:
	dc.b		nA2,	$03,	nRst,	nA2,	$02,	$06,	nB2,	$05
	dc.b		nRst,	$03,	nB2,	$02,	nG2,	$08,	nC3,	$0B
	dc.b		nRst,	$03,	nC3,	$02,	nG2,	$0B,	nRst,	$03
	dc.b		nG2,	$02,	nE2,	$0B,	nRst,	$03,	nE2,	$02
	dc.b		nB2,	$0B,	nRst,	$03,	nB2,	$02,	nA2,	$0B
	dc.b		nRst,	$03,	nA2,	$02,	nC3,	$0B,	nRst,	$03
	dc.b		nC3,	$02
	smpsReturn

CasinoStreetAct1_Call03:
	dc.b		nA2,	$03,	nRst,	nA2,	$02,	$06,	nB2,	$02
	dc.b		nRst,	$06,	nB2,	$02,	nG2,	$08,	nA2,	$06
	dc.b		nRst,	$02,	nA2,	$08,	nB2,	$06,	nRst,	$02
	dc.b		nC3,	$08,	nE3,	$06,	nRst,	$02,	nD3,	$08
	dc.b		nE3,	$06,	nRst,	$02,	nG3,	$08,	nF3,	$06
	dc.b		nRst,	$02,	nA2,	$08,	nC3,	$06,	nRst,	$02
	dc.b		nD3,	$08
	smpsReturn

CasinoStreetAct1_Call04:
	dc.b		nE3,	$06,	nRst,	$02,	nC3,	$08,	nA2,	$06
	dc.b		nRst,	$02,	nC3,	$08,	nD3,	$06,	nRst,	$02
	dc.b		nD3,	$08,	nC3,	$06,	nRst,	$02,	nC3,	$08
	dc.b		nB2,	$06,	nRst,	$02,	nB2,	$08,	nA2,	$06
	dc.b		nRst,	$02,	nD3,	$08,	nG3,	$06,	nG2,	$05
	dc.b		nRst,	$03,	nG2,	$02,	nF3,	$06,	nG2,	$05
	dc.b		nRst,	$03,	nG2,	$02
	smpsReturn

CasinoStreetAct1_Call05:
	dc.b		nE3,	$06,	nG2,	$05,	nRst,	$03,	nG2,	$02
	dc.b		nD3,	$06,	nE3,	$02,	nD3,	$08,	nC3,	$0B
	dc.b		nRst,	$03,	nC3,	$02,	nG2,	$0B,	nRst,	$03
	dc.b		nG2,	$02,	nE2,	$0B,	nRst,	$03,	nE2,	$02
	dc.b		nB2,	$0B,	nRst,	$03,	nB2,	$02,	nA2,	$0B
	dc.b		nRst,	$03,	nA2,	$02,	nC3,	$0B,	nRst,	$03
	dc.b		nC3,	$02
	smpsReturn

CasinoStreetAct1_Call06:
	dc.b		nE3,	$06,	nG2,	$05,	nRst,	$03,	nG2,	$02
	dc.b		nD3,	$06,	nE3,	$02,	nD3,	$08
	smpsReturn

CasinoStreetAct1_Call07:
	dc.b		nRst,	$20
	smpsFMvoice	$01
	dc.b		nC4,	$03,	nRst,	nC4,	$02,	nE4,	$06,	nF4
	dc.b		$02,	nG4,	$06,	nRst,	$02,	nC5,	$08,	nB4
	dc.b		$0E,	nG4,	$05,	nRst,	nE4,	$08,	nA4,	$0E
	dc.b		nE4,	$12
	smpsReturn

CasinoStreetAct1_Call08:
	dc.b		smpsNoAttack,	$14,	nRst,	$0C,	nC4,	$03,	nRst,	nC4
	dc.b		$02,	nE4,	$06,	nF4,	$02,	nG4,	$06,	nRst
	dc.b		$02,	nC5,	$08,	nB4,	$0E,	nG4,	$05,	nRst
	dc.b		nE4,	$08,	nA4,	$0E,	nE5,	$12
	smpsReturn

CasinoStreetAct1_Call09:
	dc.b		smpsNoAttack,	$10,	nRst,	$08,	nC5,	$06,	nD5,	$02
	dc.b		nE5,	$04,	nRst,	nE5,	$08,	nD5,	$04,	nRst
	dc.b		nC5,	$08,	nB4,	$14,	nRst,	$04,	nE4,	$08
	dc.b		nA4,	$04,	nRst,	nA4,	$08,	nG4,	$04,	nRst
	dc.b		nF4,	$08
	smpsReturn

CasinoStreetAct1_Call0A:
	dc.b		nG4,	$10,	nE4,	$04,	nRst,	nC4,	$08,	nD4
	dc.b		$04,	nRst,	nE4,	$08,	nD4,	$04,	nRst,	nE4
	dc.b		$08,	nD4,	$06,	nRst,	$02,	nE4,	$06,	nFs4
	dc.b		$02,	nRst,	$06,	nFs4,	$02,	nA4,	$08,	nG4
	dc.b		$20
	smpsReturn

CasinoStreetAct1_Call0B:
	dc.b		smpsNoAttack,	$12,	nRst,	$02,	$0C,	nC4,	$03,	nRst
	dc.b		nC4,	$02,	nE4,	$03,	nF4,	nFs4,	$02,	nG4
	dc.b		$06,	nRst,	$02,	nC5,	$08,	nB4,	$06,	nC5
	dc.b		$02,	nB4,	$06,	nG4,	$02,	nRst,	$06,	nG4
	dc.b		$02,	nE4,	$08,	nA4,	$06,	nAb4,	$02,	nA4
	dc.b		$06,	nE4,	$12
	smpsReturn

CasinoStreetAct1_Call0C:
	dc.b		smpsNoAttack,	$14,	nRst,	$0C,	nC4,	$03,	nRst,	nC4
	dc.b		$02,	nE4,	$03,	nF4,	nFs4,	$02,	nG4,	$06
	dc.b		nRst,	$02,	nC5,	$08,	nB4,	$06,	nC5,	$02
	dc.b		nB4,	$06,	nG4,	$02,	nRst,	$06,	nG4,	$02
	dc.b		nE4,	$08,	nA4,	$06,	nAb4,	$02,	nA4,	$06
	dc.b		nE5,	$12
	smpsReturn

CasinoStreetAct1_Call0D:
	dc.b		smpsNoAttack,	$10,	nRst,	$06,	nB4,	$02,	nC5,	$06
	dc.b		nD5,	$02,	nE5,	$03,	nRst,	nF5,	$02,	nE5
	dc.b		$08,	nD5,	$04,	nRst,	nC5,	$08,	nB4,	$06
	dc.b		nBb4,	$02,	nB4,	$06,	nE4,	$0A,	nG4,	$08
	dc.b		nA4,	$03,	nRst,	nG4,	$02,	nA4,	$08,	nG4
	dc.b		$04,	nRst,	nF4,	$08
	smpsReturn

CasinoStreetAct1_Call0E:
	dc.b		nG4,	$06,	nFs4,	$02,	nG4,	$08,	nE4,	$04
	dc.b		nRst,	nC4,	$08,	nD4,	$03,	nRst,	nD4,	$02
	dc.b		nE4,	$08,	nD4,	$04,	nRst,	nE4,	$08,	nD4
	dc.b		$03,	nRst,	nD4,	$02,	nE4,	$06,	nFs4,	$02
	dc.b		nRst,	$06,	nFs4,	$02,	nA4,	$08,	nG4,	$1E
	dc.b		nRst,	$02
	smpsReturn

CasinoStreetAct1_Call0F:
	dc.b		nG4,	$03,	nA4,	nB4,	$02,	nA4,	$03,	nB4
	dc.b		nC5,	$02,	nB4,	$03,	nC5,	nD5,	$02,	nE5
	dc.b		$03,	nF5,	nG5,	$02
	smpsReturn

CasinoStreetAct1_Call10:
	dc.b		nRst,	$20
	smpsFMvoice	$01
	dc.b		nG3,	$03,	nRst,	nG3,	$02,	nC4,	$06,	nD4
	dc.b		$02,	nE4,	$06,	nRst,	$02,	nE4,	$08,	nG4
	dc.b		$0E,	nE4,	$05,	nRst,	nB3,	$08,	nE4,	$0E
	dc.b		nC4,	$12
	smpsReturn

CasinoStreetAct1_Call11:
	dc.b		smpsNoAttack,	$14,	nRst,	$0C,	nG3,	$03,	nRst,	nG3
	dc.b		$02,	nC4,	$06,	nD4,	$02,	nE4,	$06,	nRst
	dc.b		$02,	nA4,	$08,	nG4,	$0E,	nE4,	$05,	nRst
	dc.b		nB3,	$08,	nC4,	$0E,	nA4,	$12
	smpsReturn

CasinoStreetAct1_Call12:
	dc.b		smpsNoAttack,	$10,	nRst,	$08,	nE4,	$06,	nG4,	$02
	dc.b		nA4,	$04,	nRst,	nA4,	$08,	nG4,	$04,	nRst
	dc.b		nE4,	$08,	nG4,	$14,	nRst,	$04,	nB3,	$08
	dc.b		nF4,	$04,	nRst,	nF4,	$08,	nE4,	$04,	nRst
	dc.b		nD4,	$08
	smpsReturn

CasinoStreetAct1_Call13:
	dc.b		nE4,	$10,	nC4,	$04,	nRst,	nG3,	$08,	nA3
	dc.b		$04,	nRst,	nC4,	$08,	nA3,	$04,	nRst,	nC4
	dc.b		$08,	nA3,	$06,	nRst,	$02,	nC4,	$06,	nA3
	dc.b		$02,	nRst,	$06,	nD4,	$02,	nFs4,	$08,	nD4
	dc.b		$20
	smpsReturn

CasinoStreetAct1_Call14:
	dc.b		smpsNoAttack,	$12,	nRst,	$02,	$0C,	nG3,	$03,	nRst
	dc.b		nG3,	$02,	nC4,	$03,	nD4,	nEb4,	$02,	nE4
	dc.b		$06,	nRst,	$02,	nE4,	$08,	nG4,	$06,	nF4
	dc.b		$02,	nE4,	$06,	nB3,	$02,	nRst,	$06,	nB3
	dc.b		$02,	nD4,	$08,	nC4,	$06,	nB3,	$02,	nC4
	dc.b		$06,	nA3,	$12
	smpsReturn

CasinoStreetAct1_Call15:
	dc.b		smpsNoAttack,	$14,	nRst,	$0C,	nG3,	$03,	nRst,	nG3
	dc.b		$02,	nC4,	$03,	nD4,	nEb4,	$02,	nE4,	$06
	dc.b		nRst,	$02,	nE4,	$08,	nG4,	$06,	nF4,	$02
	dc.b		nE4,	$06,	nB3,	$02,	nRst,	$06,	nB3,	$02
	dc.b		nD4,	$08,	nC4,	$06,	nB3,	$02,	nC4,	$06
	dc.b		nA4,	$12
	smpsReturn

CasinoStreetAct1_Call16:
	dc.b		smpsNoAttack,	$10,	nRst,	$06,	nD4,	$02,	nE4,	$06
	dc.b		nG4,	$02,	nA4,	$03,	nRst,	nA4,	$02,	$08
	dc.b		nB4,	$04,	nRst,	nA4,	$08,	nG4,	$06,	nFs4
	dc.b		$02,	nG4,	$06,	nB3,	$0A,	nD4,	$08,	nF4
	dc.b		$03,	nRst,	nE4,	$02,	nF4,	$08,	nE4,	$04
	dc.b		nRst,	nD4,	$08
	smpsReturn

CasinoStreetAct1_Call17:
	dc.b		nE4,	$06,	nEb4,	$02,	nE4,	$08,	nC4,	$04
	dc.b		nRst,	nA3,	$08,	$03,	nRst,	nA3,	$02,	nC4
	dc.b		$08,	nA3,	$04,	nRst,	nC4,	$08,	nA3,	$03
	dc.b		nRst,	nA3,	$02,	nC4,	$06,	nD4,	$02,	nRst
	dc.b		$06,	nD4,	$02,	nFs4,	$08,	nD4,	$1E,	nRst
	dc.b		$02
	smpsReturn

CasinoStreetAct1_Call18:
	dc.b		nD4,	$03,	nE4,	nG4,	$02,	nD4,	$03,	nG4
	dc.b		nA4,	$02,	nG4,	$03,	nA4,	nB4,	$02,	nA4
	dc.b		$03,	nF4,	nG4,	$02
	smpsReturn

CasinoStreetAct1_Call19:
	dc.b		nRst,	$20
	smpsFMvoice	$02
	dc.b		nC3,	$10,	nG2,	nE3,	nB2,	nA2,	nC3
	smpsReturn

CasinoStreetAct1_Call1A:
	dc.b		nA2,	$06,	nA3,	$02,	nA2,	$06,	nG3,	$02
	dc.b		nRst,	$06,	nG3,	$02,	nF3,	$03,	nE3,	nD3
	dc.b		$02,	nC3,	$10,	nG2,	nE3,	nB2,	nA2,	nC3
	smpsReturn

CasinoStreetAct1_Call1B:
	dc.b		nA2,	$06,	nA3,	$02,	nA2,	$06,	nG3,	$02
	dc.b		nRst,	$06,	nG3,	$02,	$08,	nA2,	$06,	nRst
	dc.b		$02,	nA2,	$08,	nB2,	$06,	nRst,	$02,	nC3
	dc.b		$08,	nE3,	$10,	nRst,	$06,	nB2,	$02,	$08
	dc.b		nF3,	$06,	nRst,	$02,	nF3,	$08,	nE3,	$06
	dc.b		nRst,	$02,	nD3,	$08
	smpsReturn

CasinoStreetAct1_Call1C:
	dc.b		nC3,	$10,	nA2,	$06,	nB2,	$02,	nC3,	$08
	dc.b		nA3,	$03,	nRst,	$05,	nA3,	$0B,	nRst,	$05
	dc.b		nA3,	$03,	nRst,	$0D,	nA3,	$06,	nC4,	$02
	dc.b		nRst,	$06,	nA3,	$02,	nC4,	$08,	nG3,	$03
	dc.b		nRst,	$05,	nG3,	$08,	nF3,	$03,	nRst,	$05
	dc.b		nF3,	$08
	smpsReturn

CasinoStreetAct1_Call1D:
	dc.b		nE3,	$03,	nRst,	$05,	nE3,	$06,	nD3,	$02
	dc.b		nRst,	$06,	nD3,	$02,	$08,	nC3,	$10,	nG2
	dc.b		nE3,	nB2,	nA2,	nC3
	smpsReturn

CasinoStreetAct1_Call1E:
	dc.b		nE3,	$03,	nRst,	$05,	nE3,	$06,	nD3,	$02
	dc.b		nRst,	$06,	nD3,	$02,	$08
	smpsReturn

CasinoStreetAct1_Call1F:
	dc.b		nRst,	$20
	smpsFMvoice	$02
	dc.b		nC3,	$10,	nG2,	nE3,	nB2,	nA2,	nC3
	smpsReturn

CasinoStreetAct1_Call20:
	dc.b		nA2,	$06,	nE3,	$02,	nA2,	$06,	nB2,	$02
	dc.b		nRst,	$06,	nB2,	$02,	nG2,	$08,	nC3,	$10
	dc.b		nG2,	nE3,	nB2,	nA2,	nC3
	smpsReturn

CasinoStreetAct1_Call21:
	dc.b		nA2,	$06,	nE3,	$02,	nA2,	$06,	nB2,	$02
	dc.b		nRst,	$06,	nB2,	$02,	nG2,	$08,	nA2,	$06
	dc.b		nRst,	$02,	nA2,	$08,	nB2,	$06,	nRst,	$02
	dc.b		nC3,	$08,	nE3,	$10,	nRst,	$06,	nB2,	$02
	dc.b		$08,	nF3,	$06,	nRst,	$02,	nF3,	$08,	nE3
	dc.b		$06,	nRst,	$02,	nD3,	$08
	smpsReturn

CasinoStreetAct1_Call22:
	dc.b		nC3,	$10,	nA2,	$06,	nB2,	$02,	nC3,	$08
	dc.b		nD3,	$03,	nRst,	$05,	nD3,	$08,	nE3,	$03
	dc.b		nRst,	$05,	nE3,	$08,	nFs3,	$03,	nRst,	$05
	dc.b		nFs3,	$06,	$02,	nRst,	$06,	nA3,	$02,	nFs3
	dc.b		$08,	nG3,	$03,	nRst,	$05,	nG3,	$08,	nF3
	dc.b		$03,	nRst,	$05,	nF3,	$08
	smpsReturn

CasinoStreetAct1_Call23:
	dc.b		nE3,	$03,	nRst,	$05,	nE3,	$06,	nD3,	$02
	dc.b		nRst,	$06,	nD3,	$02,	$08,	nC3,	$10,	nG2
	dc.b		nE3,	nB2,	nA2,	nC3
	smpsReturn

CasinoStreetAct1_Call24:
	dc.b		nE3,	$03,	nRst,	$05,	nE3,	$06,	nD3,	$02
	dc.b		nRst,	$06,	nD3,	$02,	$08
	smpsReturn

CasinoStreetAct1_Call25:
	dc.b		nRst,	$28
	smpsPSGvoice	$01
	dc.b		nG3,	$08,	nRst,	nG3,	nRst,	nB3,	nRst,	nB3
	dc.b		nRst,	nA3,	nRst,	nA3
	smpsReturn

CasinoStreetAct1_Call26:
	dc.b		nRst,	$28,	nE3,	$08,	nRst,	nE3,	nRst,	nB3
	dc.b		nRst,	nB3,	nRst,	nA3,	nRst,	nA3
	smpsReturn

CasinoStreetAct1_Call27:
	dc.b		nRst,	$28,	nC4,	$08,	nRst,	nC4,	nRst,	nB3
	dc.b		$06,	$02,	nRst,	$08,	nB3,	nRst,	nC4,	nRst
	dc.b		nC4
	smpsReturn

CasinoStreetAct1_Call28:
	dc.b		nRst,	$08,	nC4,	nRst,	nC4,	nRst,	$48,	nD4
	dc.b		$08,	nRst,	nD4
	smpsReturn

CasinoStreetAct1_Call29:
	dc.b		nRst,	$08,	nD4,	$06,	nRst,	$0A,	nD4,	$08
	dc.b		nRst,	nG3,	nRst,	nG3,	nRst,	nB3,	nRst,	nB3
	dc.b		nRst,	nA3,	nRst,	nA3
	smpsReturn

CasinoStreetAct1_Call2A:
	dc.b		nRst,	$08,	nD4,	$06,	nRst,	$0A,	nD4,	$08
	smpsReturn

CasinoStreetAct1_Call2B:
	dc.b		nRst,	$28
	smpsPSGvoice	$01
	dc.b		nE3,	$08,	nRst,	nE3,	nRst,	nG3,	nRst,	nG3
	dc.b		nRst,	nE3,	nRst,	nE3
	smpsReturn

CasinoStreetAct1_Call2C:
	dc.b		nRst,	$28,	nE3,	$08,	nRst,	nE3,	nRst,	nG3
	dc.b		nRst,	nG3,	nRst,	nE3,	nRst,	nE3
	smpsReturn

CasinoStreetAct1_Call2D:
	dc.b		nRst,	$28,	nE3,	$08,	nRst,	nA3,	nRst,	nG3
	dc.b		$06,	nB3,	$02,	nRst,	$08,	nG3,	nRst,	nA3
	dc.b		nRst,	nA3
	smpsReturn

CasinoStreetAct1_Call2E:
	dc.b		nRst,	$08,	nG3,	nRst,	nG3,	nRst,	$48,	nB3
	dc.b		$08,	nRst,	nB3
	smpsReturn

CasinoStreetAct1_Call2F:
	dc.b		nRst,	$08,	nB3,	$06,	nRst,	$0A,	nB3,	$08
	dc.b		nRst,	nE3,	nRst,	nE3,	nRst,	nG3,	nRst,	nG3
	dc.b		nRst,	nE3,	nRst,	nE3
	smpsReturn

CasinoStreetAct1_Call30:
	dc.b		nRst,	$08,	nB3,	$06,	nRst,	$0A,	nB3,	$08
	smpsReturn

CasinoStreetAct1_Call31:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst,	$01,	nCs0,	$03,	$01
	dc.b		nRst,	nCs0,	$08,	$02,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	nCs0,	nRst,	$06,	nCs0
	dc.b		$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02
	smpsReturn

CasinoStreetAct1_Call32:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$02
	smpsReturn

CasinoStreetAct1_Call33:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$04,	nCs0,	$02,	nCs0,	nRst,	$06,	nCs0
	dc.b		$02,	nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	nCs0,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	smpsReturn

CasinoStreetAct1_Call34:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$06
	smpsReturn

CasinoStreetAct1_Call35:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	nCs0,	nRst,	$06,	nCs0
	dc.b		$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02
	smpsReturn

CasinoStreetAct1_Call36:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	dc.b		$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$06
	smpsReturn

CasinoStreetAct1_Call37:
	dc.b		dSnare,	$02,	nRst,	$01,	dSnare,	nRst,	$02,	dSnare
	dc.b		$01,	nRst,	dSnare,	$02,	nRst,	$05,	$01,	dSnare
	dc.b		$02,	nRst,	nRst,	dKick,	$01,	nRst,	$03,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$05
	dc.b		$01,	dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst
	dc.b		$05,	$01,	dKick,	$02,	nRst,	$06,	dSnare,	$02
	dc.b		nRst,	$05,	$01,	dKick,	$02,	nRst,	$04,	dSnare
	dc.b		$01,	nRst,	dSnare,	$02,	nRst,	$05,	$01,	dKick
	dc.b		$02,	nRst,	$06,	dSnare,	$02,	nRst,	$05,	$01
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$05
	dc.b		$01
	smpsReturn

CasinoStreetAct1_Call38:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$05
	dc.b		$01,	dKick,	$02,	nRst,	$04,	dSnare,	$01,	nRst
	dc.b		dSnare,	$02,	nRst,	$04,	dSnare,	$01,	nRst,	dKick
	dc.b		$02,	nRst,	$06,	dSnare,	$02,	nRst,	$05,	$01
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$05
	dc.b		$01,	dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst
	dc.b		$05,	$01,	dKick,	$02,	nRst,	$04,	dSnare,	$01
	dc.b		nRst,	dSnare,	$02,	nRst,	$05,	$01,	dKick,	$02
	dc.b		nRst,	$06,	dSnare,	$02,	nRst,	$05,	$01,	dKick
	dc.b		$02,	nRst,	$06,	dSnare,	$02,	nRst,	$05,	$01
	smpsReturn

CasinoStreetAct1_Call39:
	dc.b		dKick,	$02,	nRst,	$05,	$01,	dSnare,	$02,	nRst
	dc.b		$04,	dSnare,	$01,	nRst,	dKick,	$02,	nRst,	$01
	dc.b		dSnare,	nRst,	$04,	dSnare,	$02,	nRst,	$04,	dSnare
	dc.b		$01,	nRst,	dKick,	$02,	nRst,	$05,	$01,	dSnare
	dc.b		$02,	nRst,	$05,	$01,	dKick,	$02,	nRst,	$06
	dc.b		dSnare,	$02,	nRst,	$06,	dKick,	$02,	nRst,	$05
	dc.b		$01,	dSnare,	$02,	nRst,	$05,	$01,	dKick,	$02
	dc.b		nRst,	$04,	dSnare,	$01,	nRst,	dSnare,	$02,	nRst
	dc.b		$06,	dKick,	$02,	nRst,	$05,	$01,	dSnare,	$02
	dc.b		nRst,	$05,	$01,	dKick,	$02,	nRst,	$06,	dSnare
	dc.b		$02,	nRst,	$06
	smpsReturn

CasinoStreetAct1_Call3A:
	dc.b		dKick,	$02,	nRst,	$05,	$01,	dSnare,	$02,	nRst
	dc.b		$05,	$01,	dKick,	$02,	nRst,	$04,	dSnare,	$01
	dc.b		nRst,	dSnare,	$02,	nRst,	$04,	dSnare,	$01,	nRst
	dc.b		dKick,	$02,	nRst,	$05,	$01,	dSnare,	$02,	nRst
	dc.b		$06,	dKick,	$02,	nRst,	$05,	$01,	dSnare,	$02
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	$05,	$01,	dSnare
	dc.b		$02,	nRst,	$06,	dKick,	$02,	nRst,	$04,	dSnare
	dc.b		$01,	nRst,	dSnare,	$02,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	$05,	$01,	dSnare,	$02,	nRst,	$06,	dKick
	dc.b		$02,	nRst,	$05,	$01,	dSnare,	$02,	nRst,	$06
	smpsReturn

CasinoStreetAct1_Call3B:
	dc.b		dKick,	$02,	nRst,	$05,	$01,	dSnare,	$02,	nRst
	dc.b		$04,	dSnare,	$01,	nRst,	dKick,	$02,	nRst,	$01
	dc.b		dSnare,	nRst,	$04,	dSnare,	$02,	nRst,	$04,	dSnare
	dc.b		$01,	nRst,	dKick,	$02,	nRst,	$06,	dSnare,	$02
	dc.b		nRst,	$05,	$01,	dKick,	$02,	nRst,	$06,	dSnare
	dc.b		$02,	nRst,	$05,	$01,	dKick,	$02,	nRst,	$06
	dc.b		dSnare,	$02,	nRst,	$05,	$01,	dKick,	$02,	nRst
	dc.b		$04,	dSnare,	$01,	nRst,	dSnare,	$02,	nRst,	$05
	dc.b		$01,	dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst
	dc.b		$05,	$01,	dKick,	$02,	nRst,	$06,	dSnare,	$02
	dc.b		nRst,	$05,	$01
	smpsReturn

CasinoStreetAct1_Call3C:
	dc.b		dKick,	$02,	nRst,	$05,	$01,	dSnare,	$02,	nRst
	dc.b		$04,	dSnare,	$01,	nRst,	dKick,	$02,	nRst,	$01
	dc.b		dSnare,	nRst,	$04,	dSnare,	$02,	nRst,	$04,	dSnare
	dc.b		$01,	nRst
	smpsReturn

CasinoStreetAct1_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3D,$01,$21,$51,$01,$12,$14,$14,$0F,$0A,$05,$05,$05,$00,$00,$00
	dc.b		$00,$2B,$2B,$2B,$1B,$19,$0E,$0E,$0E;			Voice 01
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 02
	even
