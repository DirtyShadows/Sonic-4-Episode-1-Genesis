; =============================================================================================
; Project Name:		CasinoStreetAct3
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

CasinoStreetAct3_Header:
	smpsHeaderVoice	CasinoStreetAct3_Voices
	smpsHeaderChan	$05,	$01
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	CasinoStreetAct3_DAC
	smpsHeaderFM	CasinoStreetAct3_FM1,	smpsPitch00,	$10
	smpsHeaderFM	CasinoStreetAct3_FM2,	smpsPitch00,	$10
	smpsHeaderFM	CasinoStreetAct3_FM3,	smpsPitch00,	$10
	smpsHeaderFM	CasinoStreetAct3_FM4,	smpsPitch00,	$14
	smpsHeaderPSG	CasinoStreetAct3_PSG1,	smpsPitch03lo,	$02,	$00

; FM1 Data
CasinoStreetAct3_FM1:
	smpsCall	CasinoStreetAct3_Call01
CasinoStreetAct3_Jump01:
	smpsCall	CasinoStreetAct3_Call02
	smpsCall	CasinoStreetAct3_Call03
	smpsCall	CasinoStreetAct3_Call04
	smpsCall	CasinoStreetAct3_Call05
	smpsCall	CasinoStreetAct3_Call06
	smpsCall	CasinoStreetAct3_Call01
	smpsJump	CasinoStreetAct3_Jump01

; FM2 Data
CasinoStreetAct3_FM2:
	smpsCall	CasinoStreetAct3_Call07
CasinoStreetAct3_Jump02:
	smpsCall	CasinoStreetAct3_Call08
	smpsCall	CasinoStreetAct3_Call09
	smpsCall	CasinoStreetAct3_Call08
	smpsCall	CasinoStreetAct3_Call0A
	smpsCall	CasinoStreetAct3_Call0B
	smpsCall	CasinoStreetAct3_Call07
	smpsJump	CasinoStreetAct3_Jump02

; FM3 Data
CasinoStreetAct3_FM3:
	smpsCall	CasinoStreetAct3_Call0C
CasinoStreetAct3_Jump03:
	smpsCall	CasinoStreetAct3_Call0D
	smpsCall	CasinoStreetAct3_Call0E
	smpsCall	CasinoStreetAct3_Call0F
	smpsCall	CasinoStreetAct3_Call10
	smpsCall	CasinoStreetAct3_Call11
	smpsCall	CasinoStreetAct3_Call0C
	smpsJump	CasinoStreetAct3_Jump03

; FM4 Data
CasinoStreetAct3_FM4:
	smpsCall	CasinoStreetAct3_Call12
CasinoStreetAct3_Jump04:
	smpsCall	CasinoStreetAct3_Call13
	smpsCall	CasinoStreetAct3_Call14
	smpsCall	CasinoStreetAct3_Call15
	smpsCall	CasinoStreetAct3_Call16
	smpsCall	CasinoStreetAct3_Call17
	smpsCall	CasinoStreetAct3_Call12
	smpsJump	CasinoStreetAct3_Jump04

; PSG1 Data
CasinoStreetAct3_PSG1:
	smpsPSGform	$E7
	smpsCall	CasinoStreetAct3_Call18
CasinoStreetAct3_Jump05:
	smpsCall	CasinoStreetAct3_Call19
	smpsCall	CasinoStreetAct3_Call1A
	smpsCall	CasinoStreetAct3_Call19
	smpsCall	CasinoStreetAct3_Call1B
	smpsCall	CasinoStreetAct3_Call1C
	smpsCall	CasinoStreetAct3_Call18
	smpsJump	CasinoStreetAct3_Jump05

; DAC Data
CasinoStreetAct3_DAC:
	smpsCall	CasinoStreetAct3_Call1D
CasinoStreetAct3_Jump06:
	smpsCall	CasinoStreetAct3_Call1E
	smpsCall	CasinoStreetAct3_Call1F
	smpsCall	CasinoStreetAct3_Call1E
	smpsCall	CasinoStreetAct3_Call20
	smpsCall	CasinoStreetAct3_Call21
	smpsCall	CasinoStreetAct3_Call1D
	smpsJump	CasinoStreetAct3_Jump06

CasinoStreetAct3_Call01:
	smpsFMvoice	$00
	dc.b		nF3,	$16,	nC3,	$02,	nC4,	$06,	nBb3,	$02
	dc.b		nRst,	$08,	nBb3,	$06,	nA3,	$02,	nRst,	$06
	dc.b		nG3,	$02,	nF3,	$08,	nG3,	$03,	nRst,	$05
	dc.b		nG3,	$08,	nF3,	$03,	nRst,	$05,	nF3,	$06
	dc.b		nE3,	$02,	nRst,	$08,	nC3,	$0E,	nC4,	$08
	dc.b		nC3,	$02
	smpsReturn

CasinoStreetAct3_Call02:
	dc.b		nF3,	$0B,	nRst,	$03,	nF3,	$02,	nC3,	$0B
	dc.b		nRst,	$03,	nC3,	$02,	nF3,	$08,	nC3,	$06
	dc.b		nG3,	$08,	nF3,	$02,	nRst,	$06,	nF3,	$02
	dc.b		nD3,	$0B,	nRst,	$03,	nD3,	$02,	nA3,	$0B
	dc.b		nRst,	$03,	nA3,	$02,	nD3,	$06,	nE3,	$02
	dc.b		nF3,	$06,	nD3,	$08,	nA3,	$02,	nRst,	$06
	dc.b		nA3,	$02
	smpsReturn

CasinoStreetAct3_Call03:
	dc.b		nG3,	$0B,	nRst,	$03,	nG3,	$02,	nD3,	$0B
	dc.b		nRst,	$03,	nD3,	$02,	nG3,	$06,	nD3,	$02
	dc.b		nA3,	$06,	nG3,	$02,	nRst,	$06,	nF3,	$02
	dc.b		nRst,	$06,	nF3,	$02,	nE3,	$0B,	nRst,	$03
	dc.b		nE3,	$02,	nC3,	$03,	nRst,	nC3,	$02,	nE3
	dc.b		$06,	nF3,	$02,	nG3,	$03,	nF3,	nG3,	$02
	dc.b		nBb3,	$06,	nC4,	$08,	nC3,	$02,	nRst,	$06
	dc.b		nC3,	$02
	smpsReturn

CasinoStreetAct3_Call04:
	dc.b		nF3,	$0B,	nRst,	$03,	nF3,	$02,	nC3,	$0B
	dc.b		nRst,	$03,	nC3,	$02,	nF3,	$03,	nRst,	nF3
	dc.b		$02,	nG3,	$06,	nA3,	$08,	nF3,	$02,	nRst
	dc.b		$06,	nF3,	$02,	nD3,	$0B,	nRst,	$03,	nD3
	dc.b		$02,	nA3,	$0B,	nRst,	$03,	nA3,	$02,	nD3
	dc.b		$03,	nRst,	nD3,	$02,	nE3,	$06,	nF3,	$08
	dc.b		nA3,	$02,	nRst,	$06,	nA3,	$02
	smpsReturn

CasinoStreetAct3_Call05:
	dc.b		nG3,	$0B,	nRst,	$03,	nG3,	$02,	nD3,	$0B
	dc.b		nRst,	$03,	nD3,	$02,	nG3,	$03,	nRst,	nG3
	dc.b		$02,	nA3,	$06,	nG3,	$08,	nF3,	$02,	nRst
	dc.b		$06,	nF3,	$02,	nE3,	$0B,	nRst,	$03,	nE3
	dc.b		$02,	nC3,	$03,	nRst,	nC3,	$02,	nE3,	$06
	dc.b		nF3,	$02,	nG3,	$06,	nRst,	$02,	nC3,	$06
	dc.b		nRst,	$02,	nF3,	$06,	nRst,	$02,	nE3,	$06
	dc.b		nRst,	$02
	smpsReturn

CasinoStreetAct3_Call06:
	dc.b		nD3,	$03,	nRst,	$05,	nD3,	$06,	nF3,	$08
	dc.b		$02,	nA3,	$03,	nRst,	$05,	nA3,	$06,	nF3
	dc.b		$08,	$02,	nG3,	$03,	nRst,	$05,	nF3,	$08
	dc.b		nE3,	$03,	nRst,	$05,	nE3,	$08,	nC3,	$03
	dc.b		nRst,	nC3,	$02,	nE3,	$03,	nF3,	nG3,	$02
	dc.b		nA3,	$03,	nRst,	$05,	nC4,	$0E,	$02,	nC3
	dc.b		$08
	smpsReturn

CasinoStreetAct3_Call07:
	smpsFMvoice	$01
	dc.b		nC4,	$03,	nRst,	$05,	nC5,	$06,	nBb4,	$02
	dc.b		nA4,	$06,	nBb4,	$02,	nA4,	$06,	nF4,	$02
	dc.b		nRst,	$08,	nG4,	$06,	nA4,	$02,	nRst,	$06
	dc.b		nBb4,	$02,	nA4,	$08,	nG4,	$03,	nRst,	$05
	dc.b		nA4,	$08,	nBb4,	$03,	nRst,	$05,	nB4,	$06
	dc.b		nC5,	$02,	nRst,	$08,	nC4,	$06,	$02,	nRst
	dc.b		$06,	nF4,	$02,	nG4,	$08
	smpsReturn

CasinoStreetAct3_Call08:
	dc.b		nA4,	$0E,	nC5,	$08,	nRst,	$12,	nC4,	$06
	dc.b		$02,	nRst,	$06,	nF4,	$02,	nG4,	$08,	nA4
	dc.b		$0E,	nD5,	$08,	nRst,	$12,	nC5,	$06,	nBb4
	dc.b		$02,	nRst,	$06,	nC5,	$02,	nA4,	$08
	smpsReturn

CasinoStreetAct3_Call09:
	dc.b		nBb4,	$0E,	nG4,	$08,	nRst,	$12,	nC5,	$06
	dc.b		nBb4,	$02,	nRst,	$06,	nC5,	$02,	nA4,	$08
	dc.b		nBb4,	$0E,	nG4,	$08,	nRst,	$12,	nC4,	$06
	dc.b		$02,	nRst,	$06,	nF4,	$02,	nG4,	$08
	smpsReturn

CasinoStreetAct3_Call0A:
	dc.b		nBb4,	$0E,	nG4,	$1A,	nD5,	$06,	nC5,	$02
	dc.b		nRst,	$06,	nBb4,	$02,	nA4,	$08,	nBb4,	$10
	dc.b		nG4,	nC5,	$03,	nRst,	$05,	nBb4,	$08,	nA4
	dc.b		$03,	nRst,	$05,	nG4,	$08
	smpsReturn

CasinoStreetAct3_Call0B:
	dc.b		nA4,	$0E,	nD5,	$0A,	nC5,	$0E,	nA4,	$0A
	dc.b		nBb4,	$03,	nRst,	$05,	nC5,	$08,	nBb4,	$10
	dc.b		nG4,	nA4,	$03,	nRst,	$05,	nF4,	$08,	nC4
	dc.b		$03,	nRst,	nF4,	$02,	nG4,	$08
	smpsReturn

CasinoStreetAct3_Call0C:
	smpsFMvoice	$02
	dc.b		nA3,	$03,	nRst,	$05,	nA4,	$06,	nG4,	$02
	dc.b		nF4,	$06,	nG4,	$02,	nF4,	$06,	nC4,	$02
	dc.b		nRst,	$08,	nE4,	$06,	nF4,	$02,	nRst,	$06
	dc.b		nD4,	$02,	nF4,	$08,	nD4,	$03,	nRst,	$05
	dc.b		nF4,	$08,	nD4,	$03,	nRst,	$05,	nF4,	$06
	dc.b		nE4,	$02,	nRst,	$08,	nG3,	$06,	nA3,	$02
	dc.b		nRst,	$06,	nC4,	$02,	nE4,	$08
	smpsReturn

CasinoStreetAct3_Call0D:
	dc.b		nF4,	$0E,	nA4,	$08,	nRst,	$12,	nG3,	$06
	dc.b		nA3,	$02,	nRst,	$06,	nC4,	$02,	nE4,	$08
	dc.b		nF4,	$0E,	nA4,	$08,	nRst,	$12,	nA4,	$06
	dc.b		nF4,	$02,	nRst,	$06,	nA4,	$02,	nD4,	$08
	smpsReturn

CasinoStreetAct3_Call0E:
	dc.b		nG4,	$0E,	nD4,	$1A,	nA4,	$06,	nG4,	$02
	dc.b		nRst,	$06,	nA4,	$02,	nF4,	$08,	nG4,	$0E
	dc.b		nC4,	$08,	nRst,	$12,	nG3,	$06,	nA3,	$02
	dc.b		nRst,	$06,	nC4,	$02,	nE4,	$08
	smpsReturn

CasinoStreetAct3_Call0F:
	dc.b		nF4,	$0E,	nA4,	$1A,	nG3,	$06,	nA3,	$02
	dc.b		nRst,	$06,	nD4,	$02,	nE4,	$08,	nF4,	$0E
	dc.b		nA4,	$08,	nRst,	$12,	nA4,	$06,	nF4,	$02
	dc.b		nRst,	$06,	nA4,	$02,	nD4,	$08
	smpsReturn

CasinoStreetAct3_Call10:
	dc.b		nG4,	$0E,	nD4,	$1A,	nBb4,	$06,	nA4,	$02
	dc.b		nRst,	$06,	nG4,	$02,	nF4,	$08,	nE4,	$10
	dc.b		nC4,	nA4,	$03,	nRst,	$05,	nG4,	$08,	nF4
	dc.b		$03,	nRst,	$05,	nC4,	$08
	smpsReturn

CasinoStreetAct3_Call11:
	dc.b		nD4,	$0E,	nA4,	$0A,	nF4,	$0E,	nD4,	$0A
	dc.b		nG4,	$03,	nRst,	$05,	nF4,	$08,	nG4,	$10
	dc.b		nE4,	nF4,	$03,	nRst,	$05,	nC4,	$08,	nA3
	dc.b		$03,	nRst,	nC4,	$02,	nE4,	$08
	smpsReturn

CasinoStreetAct3_Call12:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$01
	dc.b		nC4,	$03,	nRst,	$05,	nC5,	$06,	nBb4,	$02
	dc.b		nA4,	$06,	nBb4,	$02,	nA4,	nRst,	$04,	nF4
	dc.b		$02,	nRst,	$08,	nG4,	$06,	nA4,	$02,	nRst
	dc.b		$06,	nBb4,	$02,	nA4,	$04,	nRst,	nG4,	$03
	dc.b		nRst,	$05,	nA4,	$08,	nBb4,	$03,	nRst,	$05
	dc.b		nB4,	$06,	nC5,	$02,	nRst,	$08,	nC4,	$06
	dc.b		$02,	nRst,	$06,	nF4,	$02,	nG4,	$04
	smpsReturn

CasinoStreetAct3_Call13:
	dc.b		smpsNoAttack,	$04,	nA4,	$0E,	nC5,	$0C,	nRst,	$0E
	dc.b		nC4,	$06,	$02,	nRst,	$06,	nF4,	$02,	nG4
	dc.b		$04,	nRst,	nA4,	$0E,	nD5,	$0C,	nRst,	$0E
	dc.b		nC5,	$06,	nBb4,	$02,	nRst,	$06,	nC5,	$02
	dc.b		nA4,	$04
	smpsReturn

CasinoStreetAct3_Call14:
	dc.b		nRst,	$04,	nBb4,	$0E,	nG4,	$0C,	nRst,	$0E
	dc.b		nC5,	$06,	nBb4,	$02,	nRst,	$06,	nC5,	$02
	dc.b		nA4,	$04,	nRst,	nBb4,	$0E,	nG4,	$0C,	nRst
	dc.b		$0E,	nC4,	$06,	$02,	nRst,	$06,	nF4,	$02
	dc.b		nG4,	$04
	smpsReturn

CasinoStreetAct3_Call15:
	dc.b		nRst,	$04,	nA4,	$0E,	nC5,	$0C,	nRst,	$0E
	dc.b		nC4,	$06,	$02,	nRst,	$06,	nF4,	$02,	nG4
	dc.b		$04,	nRst,	nA4,	$0E,	nD5,	$0C,	nRst,	$0E
	dc.b		nC5,	$06,	nBb4,	$02,	nRst,	$06,	nC5,	$02
	dc.b		nA4,	$04
	smpsReturn

CasinoStreetAct3_Call16:
	dc.b		nRst,	$04,	nBb4,	$0E,	nG4,	$1A,	nD5,	$06
	dc.b		nC5,	$02,	nRst,	$06,	nBb4,	$02,	nA4,	$08
	dc.b		nBb4,	$10,	nG4,	nC5,	$03,	nRst,	$05,	nBb4
	dc.b		$08,	nA4,	$03,	nRst,	$05,	nG4,	$04
	smpsReturn

CasinoStreetAct3_Call17:
	dc.b		smpsNoAttack,	$04,	nA4,	$0E,	nD5,	$0A,	nC5,	$0E
	dc.b		nA4,	$0A,	nBb4,	$03,	nRst,	$05,	nC5,	$08
	dc.b		nBb4,	$10,	nG4,	nA4,	$03,	nRst,	$05,	nF4
	dc.b		$08,	nC4,	$03,	nRst,	nF4,	$02,	nG4,	$04
	smpsReturn

CasinoStreetAct3_Call18:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$01,	nRst,	$07
	dc.b		nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$01,	nRst,	$07,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$08,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$01,	nCs0,	nRst,	$02,	nCs0,	$01,	nRst
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$06,	nCs0
	dc.b		$02,	nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$09,	nCs0,	$02
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$01,	nCs0,	nRst
	dc.b		$02,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$06
	smpsReturn

CasinoStreetAct3_Call19:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$01,	nRst,	nCs0
	dc.b		$02,	nRst,	$01,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0
	dc.b		$02,	nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$01,	nCs0,	nRst,	$04,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$04,	nCs0,	$02,	nRst,	$01
	dc.b		nCs0,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$04,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$01,	nCs0
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$01
	dc.b		nCs0,	nRst,	$04,	nCs0,	$02,	nRst,	$01,	nCs0
	dc.b		nRst,	$04,	nCs0,	$02,	nRst,	$01,	nCs0,	nRst
	dc.b		$02,	nCs0,	$01,	nRst
	smpsReturn

CasinoStreetAct3_Call1A:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$01,	nRst,	nCs0
	dc.b		$02,	nRst,	$01,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0
	dc.b		$02,	nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$01,	nCs0,	nRst,	$04,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$04,	nCs0,	$02,	nRst,	$01
	dc.b		nCs0,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$04,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$01,	nCs0
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$01
	dc.b		nCs0,	nRst,	$04,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$01,	nRst,	$09
	smpsReturn

CasinoStreetAct3_Call1B:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$01,	nRst,	nCs0
	dc.b		$02,	nRst,	$01,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0
	dc.b		$02,	nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$01,	nCs0,	nRst,	$04,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$04,	nCs0,	$02,	nRst,	$01
	dc.b		nCs0,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$04,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$01,	nCs0
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$01
	dc.b		nCs0,	nRst,	$04,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$01,	nRst,	$09
	smpsReturn

CasinoStreetAct3_Call1C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$01,	nRst,	$07
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$07
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	nCs0
	dc.b		$02,	nRst,	$09,	nCs0,	$01,	nRst,	$04,	nCs0
	dc.b		$02,	nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$07,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$01,	nRst,	nCs0
	dc.b		$02,	nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$07,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst
	smpsReturn

CasinoStreetAct3_Call1D:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$0C
	dc.b		dKick,	$01,	nRst,	dSnare,	$02,	nRst,	$06,	dKick
	dc.b		$02,	nRst,	$05,	$01,	dSnare,	$02,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	$07,	dKick,	$01,	nRst,	dSnare
	dc.b		$02,	nRst,	$06,	dKick,	$02,	nRst,	$06,	dKick
	dc.b		$02,	nRst,	$06,	dSnare,	$02,	nRst,	$04,	dSnare
	dc.b		$01,	nRst,	dSnare,	$02,	nRst,	$04,	dKick,	$01
	dc.b		nRst,	$09,	dKick,	$02,	nRst,	$0C,	dSnare,	$01
	dc.b		nRst,	dSnare,	$02,	nRst,	$06
	smpsReturn

CasinoStreetAct3_Call1E:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	dKick,	$02,	nRst,	$06,	dSnare
	dc.b		$02,	nRst,	$04,	dKick,	$01,	nRst,	$07,	dKick
	dc.b		$01,	nRst,	dSnare,	$02,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	$06,	dSnare,	$02,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	$06,	dSnare,	$02,	nRst,	$04,	dKick,	$01
	dc.b		nRst,	dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst
	dc.b		$04,	dKick,	$01,	nRst,	$07,	dKick,	$01,	nRst
	dc.b		dSnare,	$02,	nRst,	$06,	dKick,	$02,	nRst,	$06
	dc.b		dSnare,	$02,	nRst,	$06
	smpsReturn

CasinoStreetAct3_Call1F:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	dKick,	$02,	nRst,	$06,	dSnare
	dc.b		$02,	nRst,	$04,	dKick,	$01,	nRst,	$07,	dKick
	dc.b		$01,	nRst,	dSnare,	$02,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	$06,	dSnare,	$02,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	$06,	dSnare,	$02,	nRst,	$04,	dKick,	$01
	dc.b		nRst,	dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst
	dc.b		$04,	dKick,	$01,	nRst,	$07,	dKick,	$01,	nRst
	dc.b		dSnare,	$02,	nRst,	$06,	dKick,	$02,	nRst,	$01
	dc.b		dSnare,	nRst,	$04,	dSnare,	$02,	nRst,	$01,	dSnare
	dc.b		nRst,	$02,	dSnare,	$01,	nRst
	smpsReturn

CasinoStreetAct3_Call20:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	dKick,	$02,	nRst,	$06,	dSnare
	dc.b		$02,	nRst,	$04,	dKick,	$01,	nRst,	$07,	dKick
	dc.b		$01,	nRst,	dSnare,	$02,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	$06,	dSnare,	$02,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	$06,	dSnare,	$02,	nRst,	$04,	dKick,	$01
	dc.b		nRst,	dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst
	dc.b		$04,	dKick,	$01,	nRst,	dKick,	$02,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	dSnare,	$02,	nRst,	$04,	dSnare
	dc.b		$01,	nRst,	dKick,	$02,	nRst,	$01,	dSnare,	nRst
	dc.b		$02,	dSnare,	$01,	nRst,	dSnare,	$02,	nRst,	$01
	dc.b		dSnare,	nRst,	$02,	dSnare,	$01,	nRst
	smpsReturn

CasinoStreetAct3_Call21:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	$07,	dKick,	$01,	nRst,	dSnare
	dc.b		$02,	nRst,	$04,	dKick,	$01,	nRst,	$07,	dKick
	dc.b		$01,	nRst,	dSnare,	$02,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	$04,	dKick,	$01,	nRst,	dSnare,	$02,	nRst
	dc.b		$06,	dKick,	$02,	nRst,	$04,	dKick,	$01,	nRst
	dc.b		dSnare,	$02,	nRst,	$04,	dSnare,	$01,	nRst,	dKick
	dc.b		$02,	nRst,	$01,	dSnare,	nRst,	$02,	dSnare,	$01
	dc.b		nRst,	dSnare,	$02,	nRst,	$01,	dSnare,	nRst,	$02
	dc.b		dSnare,	$01,	nRst,	dKick,	$02,	nRst,	$06,	dKick
	dc.b		$02,	nRst,	$0C,	dSnare,	$01,	nRst,	dSnare,	$02
	dc.b		nRst,	$06
	smpsReturn

CasinoStreetAct3_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$35,$32,$31,$7A,$02,$4D,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 01
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 02
	even
