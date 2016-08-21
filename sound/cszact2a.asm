; =============================================================================================
; Project Name:		CSZ2_Alt
; Created:		31st January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

CSZ2_Alt_Header:
	smpsHeaderVoice	CSZ2_Alt_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$02

	smpsHeaderDAC	CSZ2_Alt_DAC
	smpsHeaderFM	CSZ2_Alt_FM1,	smpsPitch01hi,	$10
	smpsHeaderFM	CSZ2_Alt_FM2,	smpsPitch00,	$08
	smpsHeaderFM	CSZ2_Alt_FM3,	smpsPitch00,	$08
	smpsHeaderFM	CSZ2_Alt_FM4,	smpsPitch01hi,	$12
	smpsHeaderFM	CSZ2_Alt_FM5,	smpsPitch01hi,	$10
	smpsHeaderPSG	CSZ2_Alt_PSG1,	smpsPitch02lo,	$02,	$00
	smpsHeaderPSG	CSZ2_Alt_PSG2,	smpsPitch02lo,	$02,	$00
	smpsHeaderPSG	CSZ2_Alt_PSG3,	smpsPitch03lo,	$00,	$00

; FM1 Data
CSZ2_Alt_FM1:
	smpsCall	CSZ2_Alt_Call01
CSZ2_Alt_Jump01:
	smpsCall	CSZ2_Alt_Call02
	smpsCall	CSZ2_Alt_Call03
	smpsCall	CSZ2_Alt_Call02
	smpsCall	CSZ2_Alt_Call04
	smpsCall	CSZ2_Alt_Call01
	smpsJump	CSZ2_Alt_Jump01

; FM2 Data
CSZ2_Alt_FM2:
	smpsCall	CSZ2_Alt_Call05
CSZ2_Alt_Jump02:
	smpsCall	CSZ2_Alt_Call06
	smpsCall	CSZ2_Alt_Call07
	smpsCall	CSZ2_Alt_Call06
	smpsCall	CSZ2_Alt_Call08
	smpsCall	CSZ2_Alt_Call09
	smpsJump	CSZ2_Alt_Jump02

; FM3 Data
CSZ2_Alt_FM3:
	smpsCall	CSZ2_Alt_Call0A
CSZ2_Alt_Jump03:
	smpsCall	CSZ2_Alt_Call0B
	smpsCall	CSZ2_Alt_Call0C
	smpsCall	CSZ2_Alt_Call0B
	smpsCall	CSZ2_Alt_Call0D
	smpsCall	CSZ2_Alt_Call0E
	smpsJump	CSZ2_Alt_Jump03

; FM4 Data
CSZ2_Alt_FM4:
	smpsCall	CSZ2_Alt_Call0F
CSZ2_Alt_Jump04:
	smpsCall	CSZ2_Alt_Call10
	smpsCall	CSZ2_Alt_Call11
	smpsCall	CSZ2_Alt_Call10
	smpsCall	CSZ2_Alt_Call12
	smpsCall	CSZ2_Alt_Call13
	smpsJump	CSZ2_Alt_Jump04

; FM5 Data
CSZ2_Alt_FM5:
	smpsCall	CSZ2_Alt_Call14
CSZ2_Alt_Jump05:
	smpsCall	CSZ2_Alt_Call15
	smpsCall	CSZ2_Alt_Call16
	smpsCall	CSZ2_Alt_Call15
	smpsCall	CSZ2_Alt_Call17
	smpsCall	CSZ2_Alt_Call18
	smpsJump	CSZ2_Alt_Jump05

; PSG1 Data
CSZ2_Alt_PSG1:
	smpsCall	CSZ2_Alt_Call19
CSZ2_Alt_Jump06:
	smpsCall	CSZ2_Alt_Call1A
	smpsCall	CSZ2_Alt_Call1B
	smpsCall	CSZ2_Alt_Call1C
	smpsCall	CSZ2_Alt_Call1D
	smpsCall	CSZ2_Alt_Call1E
	smpsJump	CSZ2_Alt_Jump06

; PSG2 Data
CSZ2_Alt_PSG2:
	smpsCall	CSZ2_Alt_Call1F
CSZ2_Alt_Jump07:
	smpsCall	CSZ2_Alt_Call20
	smpsCall	CSZ2_Alt_Call21
	smpsCall	CSZ2_Alt_Call22
	smpsCall	CSZ2_Alt_Call23
	smpsCall	CSZ2_Alt_Call1F
	smpsJump	CSZ2_Alt_Jump07

; PSG3 Data
CSZ2_Alt_PSG3:
	smpsPSGform	$E7
	smpsCall	CSZ2_Alt_Call24
CSZ2_Alt_Jump08:
	smpsCall	CSZ2_Alt_Call25
	smpsCall	CSZ2_Alt_Call26
	smpsCall	CSZ2_Alt_Call25
	smpsCall	CSZ2_Alt_Call25
	smpsCall	CSZ2_Alt_Call27
	smpsJump	CSZ2_Alt_Jump08

; DAC Data
CSZ2_Alt_DAC:
	smpsCall	CSZ2_Alt_Call28
CSZ2_Alt_Jump09:
	smpsCall	CSZ2_Alt_Call29
	smpsCall	CSZ2_Alt_Call2A
	smpsCall	CSZ2_Alt_Call2B
	smpsCall	CSZ2_Alt_Call2C
	smpsCall	CSZ2_Alt_Call28
	smpsJump	CSZ2_Alt_Jump09

CSZ2_Alt_Call01:
	smpsFMvoice	$04
	dc.b		nF2,	$08,	nRst,	$04,	nF2,	nA2,	$08,	nRst
	dc.b		$04,	nA2,	nBb2,	$08,	nRst,	$04,	nBb2,	nB2
	dc.b		nRst,	nB2,	$08,	nC3,	$04,	nC3,	nRst,	nC3
	dc.b		nRst,	nC3,	nRst,	nF2,	nRst,	nA2,	nRst,	nBb2
	dc.b		nRst,	nB2,	nC3,	$08
	smpsReturn

CSZ2_Alt_Call02:
	dc.b		nF2,	$08,	nRst,	$04,	nF2,	nA2,	$10,	nBb2
	dc.b		$04,	nRst,	nBb2,	$08,	nA2,	$04,	nRst,	nA2
	dc.b		$08,	nG2,	nRst,	$04,	nG2,	nB2,	$10,	nC3
	dc.b		$04,	nRst,	nC3,	$08,	nBb2,	$04,	nRst,	nBb2
	dc.b		$08
	smpsReturn

CSZ2_Alt_Call03:
	dc.b		nA2,	$08,	nRst,	$04,	nA2,	nC3,	nCs3,	$0C
	dc.b		nD3,	$08,	nRst,	$04,	nD3,	nC3,	$08,	nRst
	dc.b		$04,	nC3,	nBb2,	$08,	nRst,	$04,	nBb2,	nB2
	dc.b		$10,	nC3,	$04,	nRst,	nC3,	$0C,	nA2,	$04
	dc.b		nBb2,	nC3
	smpsReturn

CSZ2_Alt_Call04:
	dc.b		nA2,	$08,	nRst,	$04,	nA2,	nC3,	nCs3,	$0C
	dc.b		nD3,	$08,	nRst,	$04,	nD3,	nC3,	$08,	nRst
	dc.b		$04,	nC3,	nBb2,	nRst,	nBb2,	$08,	nC3,	$04
	dc.b		nRst,	nC3,	$08,	nF2,	$04,	nRst,	nF2,	$0C
	dc.b		nG2,	$04,	nA2,	nC3
	smpsReturn

CSZ2_Alt_Call05:
	smpsFMvoice	$02
	dc.b		nA5,	$10,	nF5,	nD5,	nA5,	nG5,	$04,	nF5
	dc.b		nRst,	nE5,	nRst,	nC5,	nRst,	nF5,	$24
	smpsReturn

CSZ2_Alt_Call06:
	dc.b		nRst,	$08,	nF5,	$04,	nRst,	nF5,	nC5,	$0C
	dc.b		nD5,	$04,	nRst,	nG5,	nF5,	$14,	nRst,	$08
	dc.b		nF5,	$04,	nRst,	nF5,	nD5,	$0C,	nE5,	$04
	dc.b		nRst,	nA5,	nG5,	$14
	smpsReturn

CSZ2_Alt_Call07:
	dc.b		nRst,	$08,	nG5,	$04,	nRst,	nG5,	nE5,	$0C
	dc.b		nF5,	$04,	nRst,	nG5,	nRst,	nA5,	nRst,	nC6
	dc.b		nRst,	$08,	nBb5,	$04,	nRst,	nA5,	nG5,	$08
	dc.b		nF5,	nA5,	$0C,	nG5,	$14
	smpsReturn

CSZ2_Alt_Call08:
	dc.b		nRst,	$08,	nG5,	$04,	nRst,	nG5,	nE5,	$0C
	dc.b		nF5,	$04,	nRst,	nG5,	nRst,	nA5,	nRst,	nC6
	dc.b		nRst,	nBb5,	$08,	nA5,	$04,	nRst,	nG5,	nRst
	dc.b		nE5,	nRst,	nF5,	$14,	nG5,	$04,	nA5,	nC6
	smpsReturn

CSZ2_Alt_Call09:
	dc.b		nRst,	$08,	nA5,	$04,	nRst,	nF5,	$10,	nD5
	dc.b		nA5,	nG5,	$04,	nF5,	nRst,	nE5,	nRst,	nC5
	dc.b		nRst,	nF5,	$24
	smpsReturn

CSZ2_Alt_Call0A:
	smpsFMvoice	$02
	dc.b		nC5,	$10,	nA4,	nBb4,	nB4,	nC5,	$04,	nC5
	dc.b		nRst,	nBb4,	nRst,	nBb4,	nRst,	nA4,	$08,	$04
	dc.b		nRst,	nBb4,	$08,	nAb4,	$04,	nG4,	$08
	smpsReturn

CSZ2_Alt_Call0B:
	dc.b		nRst,	$08,	nA4,	$04,	nRst,	nA4,	$10,	nBb4
	dc.b		$04,	nRst,	nBb4,	nA4,	$14,	nRst,	$08,	nB4
	dc.b		$04,	nRst,	nB4,	$10,	nC5,	$04,	nRst,	nC5
	dc.b		nBb4,	$14
	smpsReturn

CSZ2_Alt_Call0C:
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	nB4,	nBb4,	$0C
	dc.b		nA4,	$04,	nRst,	nC5,	nRst,	nF5,	nRst,	nA5
	dc.b		nRst,	$08,	nD5,	$04,	nRst,	nF5,	nD5,	$08
	dc.b		nB4,	nC5,	$0C,	nBb4,	$14
	smpsReturn

CSZ2_Alt_Call0D:
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	nB4,	nBb4,	$0C
	dc.b		nA4,	$04,	nRst,	nC5,	nRst,	nF5,	nRst,	nA5
	dc.b		nRst,	nD5,	$08,	nF5,	$04,	nRst,	nC5,	nRst
	dc.b		nBb4,	nRst,	nA4,	$14,	nE5,	$04,	nF5,	nA5
	smpsReturn

CSZ2_Alt_Call0E:
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	nA4,	$10,	nBb4
	dc.b		nB4,	nC5,	$04,	nC5,	nRst,	nBb4,	nRst,	nBb4
	dc.b		nRst,	nA4,	$08,	$04,	nRst,	nBb4,	$08,	nAb4
	dc.b		$04,	nG4,	$08
	smpsReturn

CSZ2_Alt_Call0F:
	smpsFMvoice	$04
	dc.b		nF2,	$08,	nF3,	nA2,	nF3,	$04,	nBb2,	nRst
	dc.b		nBb2,	nF3,	$08,	nB2,	nG3,	nE3,	$04,	nF3
	dc.b		nC3,	nD3,	$08,	nE3,	nF3,	$04,	nRst,	nA2
	dc.b		$08,	nBb2,	nB2,	$04,	nC3,	$08
	smpsReturn

CSZ2_Alt_Call10:
	smpsFMvoice	$04
	dc.b		nF2,	$10,	nA2,	nBb2,	$0C,	nA2,	$04,	nRst
	dc.b		nA2,	$0C,	nG2,	$10,	nB2,	nC3,	$0C,	nBb2
	dc.b		$04,	nRst,	nBb2,	$0C
	smpsReturn

CSZ2_Alt_Call11:
	dc.b		nA2,	$0C,	nB2,	$04,	nC3,	nCs3,	$0C,	nD3
	dc.b		$10,	nC3,	nBb2,	nB2,	nC3
	smpsFMvoice	$02
	dc.b		nF4,	$04,	nE4,	nD4,	nC4
	smpsReturn

CSZ2_Alt_Call12:
	dc.b		nA2,	$0C,	nB2,	$04,	nC3,	nCs3,	$0C,	nD3
	dc.b		$10,	nC3,	nBb2,	nC3
	smpsFMvoice	$02
	dc.b		nF4,	$04,	nE4,	nD4,	nC4,	nBb3,	nA3,	nG3
	dc.b		nF3
	smpsReturn

CSZ2_Alt_Call13:
	smpsFMvoice	$04
	dc.b		nF2,	$08,	nF3,	$04,	nRst,	nA2,	$08,	nF3
	dc.b		$04,	nRst,	$08,	nBb2,	$04,	nF3,	$08,	nB2
	dc.b		nG3,	nE3,	$04,	nF3,	nC3,	nD3,	$08,	nE3
	dc.b		nF3,	$04,	nRst,	nA2,	$08,	nBb2,	nB2,	$04
	dc.b		nC3,	$08
	smpsReturn

CSZ2_Alt_Call14:
	dc.b		smpsNoAttack,	$01
	smpsFMvoice	$04
	dc.b		nF2,	$08,	nF3,	nA2,	nF3,	$04,	nBb2,	$01
	dc.b		nRst,	$07,	nBb2,	$04,	nF3,	$08,	nB2,	nG3
	dc.b		$01,	nRst,	$07,	nE3,	$04,	nF3,	nC3,	nD3
	dc.b		$08,	nE3,	nF3,	$04,	nRst,	nA2,	$08,	nBb2
	dc.b		nB2,	$04,	nC3,	$01,	nRst,	$06
	smpsReturn

CSZ2_Alt_Call15:
	dc.b		smpsNoAttack,	$01
	smpsFMvoice	$04
	dc.b		nF2,	$10,	nA2,	$08,	nRst,	nBb2,	$0C,	nA2
	dc.b		$04,	nRst,	nA2,	nRst,	$08,	nG2,	$10,	nB2
	dc.b		$08,	nRst,	nC3,	$0C,	nBb2,	$04,	nRst,	nBb2
	dc.b		nRst,	$07
	smpsReturn

CSZ2_Alt_Call16:
	dc.b		smpsNoAttack,	$01,	nA2,	$0C,	nB2,	$04,	nC3,	nCs3
	dc.b		nRst,	$08,	nD3,	$10,	nC3,	$08,	nRst,	nBb2
	dc.b		$10,	nB2,	nC3
	smpsFMvoice	$02
	dc.b		nF4,	$04,	nE4,	nD4,	nC4,	$03
	smpsReturn

CSZ2_Alt_Call17:
	dc.b		smpsNoAttack,	$01,	nA2,	$0C,	nB2,	$04,	nC3,	nCs3
	dc.b		nRst,	$08,	nD3,	$10,	nC3,	$08,	nRst,	nBb2
	dc.b		$10,	nC3
	smpsFMvoice	$02
	dc.b		nF4,	$04,	nE4,	nD4,	nC4,	nBb3,	nA3,	nG3
	dc.b		nF3,	$03
	smpsReturn

CSZ2_Alt_Call18:
	dc.b		smpsNoAttack,	$01
	smpsFMvoice	$04
	dc.b		nF2,	$08,	nF3,	$04,	nRst,	nA2,	$08,	nF3
	dc.b		$04,	nRst,	$08,	nBb2,	$04,	nF3,	$08,	nB2
	dc.b		nG3,	$01,	nRst,	$07,	nE3,	$04,	nF3,	nC3
	dc.b		nD3,	$08,	nE3,	nF3,	$04,	nRst,	nA2,	$08
	dc.b		nBb2,	nB2,	$04,	nC3,	$01,	nRst,	$06
	smpsReturn

CSZ2_Alt_Call19:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

CSZ2_Alt_Call1A:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nF3,	nRst,	nF3,	nRst,	nF3,	nRst,	nF3,	nRst
	dc.b		nG3,	nRst,	nG3,	nRst,	nG3,	nRst,	nG3
	smpsReturn

CSZ2_Alt_Call1B:
	dc.b		nRst,	$08,	nA3,	nRst,	nA3,	nRst,	nA3,	nRst
	dc.b		nA3,	nRst,	nBb3,	nRst,	nB3,	nRst,	nC4,	nC4
	dc.b		$04,	nA3,	nG3,	nE3
	smpsReturn

CSZ2_Alt_Call1C:
	dc.b		nRst,	$08,	nF3,	nRst,	nF3,	nRst,	nF3,	nRst
	dc.b		nF3,	nRst,	nG3,	nRst,	nG3,	nRst,	nG3,	nRst
	dc.b		nG3
	smpsReturn

CSZ2_Alt_Call1D:
	dc.b		nRst,	$08,	nA3,	nRst,	nA3,	nRst,	nA3,	nRst
	dc.b		nA3,	nRst,	nBb3,	nRst,	nC4,	nC4,	$04,	nBb3
	dc.b		nA3,	nF3,	nD3,	nC3,	nA2,	nF2
	smpsReturn

CSZ2_Alt_Call1E:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

CSZ2_Alt_Call1F:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

CSZ2_Alt_Call20:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nC3,	nRst,	nC3,	nRst,	nD3,	nRst,	nC3,	nRst
	dc.b		nD3,	nRst,	nD3,	nRst,	nE3,	nRst,	nE3
	smpsReturn

CSZ2_Alt_Call21:
	dc.b		nRst,	$08,	nE3,	nRst,	nG3,	nRst,	nF3,	nRst
	dc.b		nF3,	nRst,	nF3,	nRst,	nG3,	nRst,	nG3,	nRst
	dc.b		$10
	smpsReturn

CSZ2_Alt_Call22:
	dc.b		smpsNoAttack,	$08,	nC3,	nRst,	nC3,	nRst,	nD3,	nRst
	dc.b		nC3,	nRst,	nD3,	nRst,	nD3,	nRst,	nE3,	nRst
	dc.b		nE3
	smpsReturn

CSZ2_Alt_Call23:
	dc.b		nRst,	$08,	nE3,	nRst,	nG3,	nRst,	nF3,	nRst
	dc.b		nF3,	nRst,	nF3,	nRst,	nG3,	nRst,	$20
	smpsReturn

CSZ2_Alt_Call24:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	$0A
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst
	smpsReturn

CSZ2_Alt_Call25:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$0A,	nCs0,	$02,	nRst,	nCs0
	dc.b		nRst,	$0A,	nCs0,	$02,	nRst,	nCs0,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$0E
	dc.b		nCs0,	$02,	nRst,	$0A,	nCs0,	$02,	nRst,	nCs0
	dc.b		nRst,	$0A,	nCs0,	$02,	nRst,	nCs0,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	smpsReturn

CSZ2_Alt_Call26:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$0A,	nCs0,	$02,	nRst,	nCs0
	dc.b		nRst,	$0A,	nCs0,	$02,	nRst,	nCs0,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$0E
	dc.b		nCs0,	$02,	nRst,	$0A,	nCs0,	$02,	nRst,	nCs0
	dc.b		nRst,	$0A,	nCs0,	$02,	nRst,	nCs0,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

CSZ2_Alt_Call27:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$06
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$06,	nCs0,	$02
	dc.b		nRst
	smpsReturn

CSZ2_Alt_Call28:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	dKick
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	dKick,	nRst,	dKick
	dc.b		nRst,	$06,	dSnare,	$02,	nRst,	$06,	dSnare,	$02
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dSnare,	nRst,	$06
	smpsReturn

CSZ2_Alt_Call29:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	smpsReturn

CSZ2_Alt_Call2A:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	smpsReturn

CSZ2_Alt_Call2B:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dSnare,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dSnare,	nRst,	$06
	smpsReturn

CSZ2_Alt_Call2C:
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dSnare,	nRst,	dSnare,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	$06,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dSnare,	nRst,	$06,	dSnare,	$02
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dSnare,	nRst,	dSnare
	dc.b		nRst
	smpsReturn

CSZ2_Alt_Voices:
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
