; =============================================================================================
; Project Name:		MusicFE
; Created:		23rd November 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

MusicFE_Header:
	smpsHeaderVoice	MusicFE_Voices
	smpsHeaderChan	$04,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	MusicFE_DAC
	smpsHeaderFM	MusicFE_FM1,	smpsPitch00,	$08
	smpsHeaderFM	MusicFE_FM2,	smpsPitch00,	$0A
	smpsHeaderFM	MusicFE_FM3,	smpsPitch00,	$0A
	smpsHeaderPSG	MusicFE_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	MusicFE_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	MusicFE_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
MusicFE_FM1:
	smpsCall	MusicFE_Call01
MusicFE_Jump01:
	smpsCall	MusicFE_Call02
	smpsCall	MusicFE_Call02
	smpsCall	MusicFE_Call03
	smpsCall	MusicFE_Call04
	smpsCall	MusicFE_Call05
	smpsJump	MusicFE_Jump01

; FM2 Data
MusicFE_FM2:
	smpsCall	MusicFE_Call06
MusicFE_Jump02:
	smpsCall	MusicFE_Call07
	smpsCall	MusicFE_Call08
	smpsCall	MusicFE_Call09
	smpsCall	MusicFE_Call0A
	smpsCall	MusicFE_Call0B
	smpsJump	MusicFE_Jump02

; FM3 Data
MusicFE_FM3:
	smpsCall	MusicFE_Call0C
MusicFE_Jump03:
	smpsCall	MusicFE_Call0C
	smpsCall	MusicFE_Call0C
	smpsCall	MusicFE_Call0C
	smpsCall	MusicFE_Call0C
	smpsCall	MusicFE_Call0D
	smpsJump	MusicFE_Jump03

; PSG1 Data
MusicFE_PSG1:
	smpsCall	MusicFE_Call0E
MusicFE_Jump04:
	smpsCall	MusicFE_Call0F
	smpsCall	MusicFE_Call0F
	smpsCall	MusicFE_Call10
	smpsCall	MusicFE_Call11
	smpsCall	MusicFE_Call12
	smpsJump	MusicFE_Jump04

; PSG2 Data
MusicFE_PSG2:
	smpsCall	MusicFE_Call13
MusicFE_Jump05:
	smpsCall	MusicFE_Call13
	smpsCall	MusicFE_Call13
	smpsCall	MusicFE_Call14
	smpsCall	MusicFE_Call15
	smpsCall	MusicFE_Call13
	smpsJump	MusicFE_Jump05

; PSG3 Data
MusicFE_PSG3:
	smpsPSGform	$E7
	smpsCall	MusicFE_Call16
MusicFE_Jump06:
	smpsCall	MusicFE_Call17
	smpsCall	MusicFE_Call18
	smpsCall	MusicFE_Call18
	smpsCall	MusicFE_Call18
	smpsCall	MusicFE_Call16
	smpsJump	MusicFE_Jump06

; DAC Data
MusicFE_DAC:
	smpsCall	MusicFE_Call19
MusicFE_Jump07:
	smpsCall	MusicFE_Call1A
	smpsCall	MusicFE_Call1B
	smpsCall	MusicFE_Call1B
	smpsCall	MusicFE_Call1B
	smpsCall	MusicFE_Call19
	smpsJump	MusicFE_Jump07

MusicFE_Call01:
	smpsFMvoice	$00
	dc.b		nC3,	$04,	nC3,	nC4,	$06,	nG3,	$02,	nG3
	dc.b		nF3,	nEb3,	nEb3,	nF3,	nF3,	nC3,	$08,	nF3
	dc.b		$02,	nG3,	nC4,	$06,	nG3,	$02,	nF3,	nEb3
	dc.b		nF3,	$04,	nG3,	$02,	nG3,	nF3,	nEb3,	nC3
	dc.b		$04,	nC3,	nC4,	$06,	nG3,	$02,	nG3,	nF3
	dc.b		nEb3,	nEb3,	nF3,	nF3,	nEb3,	$01,	nRst,	nF3
	dc.b		nRst,	nG3,	nRst,	nG3,	nRst,	nG3,	nRst,	nG3
	dc.b		nRst,	nG3,	$02,	nG3,	nG3,	$01,	nRst,	nG3
	dc.b		$02,	nRst,	$10
	smpsReturn

MusicFE_Call02:
	smpsFMvoice	$00
	dc.b		nC3,	$04,	nRst,	nC4,	$06,	nG3,	$02,	nRst
	dc.b		nF3,	nEb3,	$04,	nF3,	nC3,	$08,	nF3,	$02
	dc.b		nG3,	nC4,	$06,	nG3,	$02,	nF3,	nEb3,	nF3
	dc.b		$04,	nG3,	$02,	nRst,	nF3,	nEb3,	nC3,	$04
	dc.b		nRst,	nC4,	$06,	nG3,	$02,	nRst,	nF3,	nEb3
	dc.b		$04,	nF3,	nC3,	$08,	nF3,	$02,	nG3,	nC4
	dc.b		$06,	nG3,	$02,	nF3,	nEb3,	nF3,	$04,	nG3
	dc.b		$02,	nRst,	nF3,	nEb3
	smpsReturn

MusicFE_Call03:
	smpsFMvoice	$00
	dc.b		nEb3,	$06,	$02,	nEb3,	nRst,	nD3,	nC3,	nD3
	dc.b		nEb3,	nD3,	nC3,	nEb3,	$04,	nD3,	$02,	nC3
	dc.b		nD3,	nD3,	nD3,	nD3,	nD3,	nD3,	nD3,	nD3
	dc.b		nD3,	nD3,	nD3,	nD3,	nD3,	nD3,	nD3,	nD3
	dc.b		nC3,	nC3,	nC3,	nC3,	nC3,	nC3,	nC3,	nC3
	dc.b		nC3,	nC3,	nC3,	nC3,	nC3,	nC3,	nC3,	nC3
	dc.b		nC3,	nC3,	nC3,	nC3,	nEb3,	nEb3,	nC3,	nC3
	dc.b		nC3,	$04,	nD3,	nEb3,	nF3
	smpsReturn

MusicFE_Call04:
	smpsFMvoice	$00
	dc.b		nEb3,	$06,	$02,	nEb3,	nRst,	nD3,	nC3,	nD3
	dc.b		nEb3,	nD3,	nC3,	nEb3,	$04,	nD3,	$02,	nC3
	dc.b		nD3,	nD3,	nD3,	nD3,	nD3,	nD3,	nD3,	nD3
	dc.b		nD3,	nD3,	nD3,	nD3,	nD3,	nD3,	nD3,	nD3
	dc.b		nG3,	$04,	nG3,	nG3,	nF3,	$02,	nEb3,	$04
	dc.b		nD3,	nC3,	nBb2,	nA2,	$02,	nBb2,	nBb2,	nBb2
	dc.b		nBb2,	nC3,	nC3,	nA2,	nA2,	nG3,	nG3,	nA3
	dc.b		nG3,	nA3,	nBb3,	nC4,	nD4
	smpsReturn

MusicFE_Call05:
	dc.b		nC3,	$04,	nC3,	nC4,	$06,	nG3,	$02,	nG3
	dc.b		nF3,	nEb3,	nEb3,	nF3,	nF3,	nC3,	$08,	nF3
	dc.b		$02,	nG3,	nC4,	$06,	nG3,	$02,	nF3,	nEb3
	dc.b		nF3,	$04,	nG3,	$02,	nG3,	nF3,	nEb3,	nC3
	dc.b		$04,	nC3,	nC4,	$06,	nG3,	$02,	nG3,	nF3
	dc.b		nEb3,	nEb3,	nF3,	nF3,	nEb3,	$01,	nRst,	nF3
	dc.b		nRst,	nG3,	nRst,	nG3,	nRst,	nG3,	nRst,	nG3
	dc.b		nRst,	nG3,	$02,	nG3,	nG3,	$01,	nRst,	nG3
	dc.b		$02,	nRst,	$10
	smpsReturn

MusicFE_Call06:
	dc.b		smpsNoAttack,	$40
	smpsFMvoice	$00
	dc.b		nE5,	$01,	nE5,	nC5,	nC5,	nD5,	nD5,	nG5
	dc.b		nG5,	nFs5,	$04,	nFs5,	nF5,	nF5,	nEb5,	nEb5
	dc.b		nG5,	$01,	nRst,	nG5,	nRst,	nG5,	nRst,	nG5
	dc.b		nRst,	nG5,	$02,	nG5,	nG5,	$01,	nRst,	nG5
	dc.b		$02,	nFs4,	nG4,	nBb4,	nC5,	nD5,	nEb5,	nF5
	dc.b		nFs5
	smpsReturn

MusicFE_Call07:
	smpsFMvoice	$00
	dc.b		nG5,	$08,	nC5,	nG5,	nB5,	$01,	nC6,	$07
	dc.b		nBb5,	$0C,	nG5,	$13,	nRst,	$01,	nG5,	nA5
	dc.b		$0B,	nF5,	$13,	nRst,	$01,	nG5,	$18,	nD5
	dc.b		$02,	nEb5,	nF5,	nFs5
	smpsReturn

MusicFE_Call08:
	smpsFMvoice	$00
	dc.b		nG5,	$08,	nC5,	nG5,	nB5,	$01,	nC6,	$07
	dc.b		nBb5,	$0C,	nG5,	$13,	nRst,	$01,	nA5,	$08
	dc.b		nF5,	nG5,	nG5,	$01,	nBb5,	$07,	nC6,	$20
	smpsReturn

MusicFE_Call09:
	smpsFMvoice	$00
	dc.b		nBb5,	$02,	nBb5,	nBb5,	nBb5,	nBb5,	nA5,	nG5
	dc.b		nBb5,	nBb5,	nF5,	nF5,	nG5,	nG5,	nA5,	nA5
	dc.b		nBb5,	nA5,	nA5,	nA5,	nA5,	nA5,	nG5,	nF5
	dc.b		nA5,	nA5,	nF5,	nF5,	nG5,	nG5,	nAb5,	nAb5
	dc.b		nA5,	nBb4,	$04,	nA4,	$01,	nAb4,	nG4,	nF4
	dc.b		nE4,	nRst,	$17,	nBb4,	$04,	nA4,	$01,	nAb4
	dc.b		nG4,	nF4,	nE4,	nRst,	$17
	smpsReturn

MusicFE_Call0A:
	smpsFMvoice	$00
	dc.b		nBb5,	$02,	nBb5,	nBb5,	nBb5,	nBb5,	nA5,	nG5
	dc.b		nBb5,	nBb5,	nF5,	nF5,	nG5,	nG5,	nA5,	nA5
	dc.b		nBb5,	nA5,	nA5,	nA5,	nA5,	nA5,	nG5,	nF5
	dc.b		nA5,	nA5,	nF5,	nF5,	nG5,	nG5,	nAb5,	nAb5
	dc.b		nA5,	nG5,	$04,	nG5,	nG5,	$02,	nG5,	nRst
	dc.b		$04,	nG5,	$02,	nG5,	nG5,	nF5,	nF5,	nEb5
	dc.b		nD5,	nC5,	nBb5,	nBb5,	nBb5,	nBb5,	nC6,	nC6
	dc.b		nA5,	nA5,	nRst,	$10
	smpsReturn

MusicFE_Call0B:
	dc.b		nG5,	$02,	nC6,	nBb5,	nA5,	nG5,	nC6,	nC6
	dc.b		nC6,	nBb5,	nA5,	nG5,	nC6,	nC6,	nC6,	nBb5
	dc.b		nG5,	nC5,	nG4,	$01,	nC5,	nG4,	$02,	nC5
	dc.b		$01,	nG4,	nD5,	$02,	nBb4,	$01,	nD5,	nBb4
	dc.b		$02,	nD5,	$01,	nBb4,	nEb5,	$02,	nBb4,	$01
	dc.b		nEb5,	nBb4,	$02,	nEb5,	$01,	nBb4,	nF5,	$02
	dc.b		nC5,	$01,	nF5,	nC5,	$02,	nF5,	$01,	nC5
	dc.b		nC6,	$02,	nC5,	$01,	nC4,	nD4,	$02,	nEb4
	dc.b		$01,	nF4,	nG4,	$02,	nA4,	$01,	nBb4,	nC5
	dc.b		$02,	nD5,	$01,	nEb5,	nF5,	$02,	nFs5,	$01
	dc.b		nG5,	nA5,	$02,	nBb5,	$01,	nC6,	nD6,	$02
	dc.b		nEb6,	$01,	nF6,	nFs6,	$02,	nG6,	$01,	nA6
	dc.b		nG5,	nRst,	nG5,	nRst,	nG5,	nRst,	nG5,	nRst
	dc.b		nG5,	$02,	nG5,	nG5,	$01,	nRst,	nG5,	$02
	dc.b		nFs4,	nG4,	nBb4,	nC5,	nD5,	nEb5,	nF5,	nFs5
	smpsReturn

MusicFE_Call0C:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MusicFE_Call0D:
	dc.b		smpsNoAttack,	$60
	smpsFMvoice	$00
	dc.b		nEb5,	$01,	nRst,	nEb5,	nRst,	nEb5,	nRst,	nEb5
	dc.b		nRst,	nEb5,	$02,	nEb5,	nEb5,	$01,	nRst,	nEb5
	dc.b		$02,	nRst,	$10
	smpsReturn

MusicFE_Call0E:
	dc.b		smpsNoAttack,	$60
	smpsPSGvoice	$01
	dc.b		nEb5,	$01,	nRst,	nEb5,	nRst,	nEb5,	nRst,	nEb5
	dc.b		nRst,	nEb5,	$02,	nEb5,	nEb5,	$01,	nRst,	nEb5
	dc.b		$02,	nRst,	$10
	smpsReturn

MusicFE_Call0F:
	smpsPSGvoice	$01
	dc.b		nC6,	$02,	nC5,	nC4,	nC5,	nC6,	nC7,	nC5
	dc.b		nC7,	nC5,	$01,	nC5,	nC6,	$02,	nC5,	nC4
	dc.b		nC6,	nC5,	nC6,	nC5,	nC5,	$01,	nC5,	nC6
	dc.b		$02,	nC5,	nC4,	nC6,	nC5,	nC6,	nC5,	nC6
	dc.b		nC5,	nC4,	nC6,	nC5,	nC6,	nC5,	nC5,	$01
	dc.b		nC5,	nA4,	$02,	nA5,	nA3,	nA4,	nA6,	nA4
	dc.b		nA5,	nA6,	nA3,	$01,	nA3,	nA4,	$02,	nA3
	dc.b		nA5,	nA6,	nA4,	nA5,	nA4,	nC5,	$01,	nC5
	dc.b		nC6,	$02,	nC5,	nC4,	nC6,	nC5,	nC6,	nC5
	dc.b		nC6,	nC5,	nC4,	nC6,	nC5,	nC6,	nC5,	nC5
	dc.b		$01,	nC5
	smpsReturn

MusicFE_Call10:
	smpsPSGvoice	$01
	dc.b		nG5,	$02,	nG5,	nG5,	nG5,	nG5,	nF5,	nD5
	dc.b		nF5,	nF5,	nD5,	nD5,	nEb5,	nEb5,	nF5,	nF5
	dc.b		nG5,	nF5,	nF5,	nF5,	nF5,	nF5,	nEb5,	nD5
	dc.b		nF5,	nF5,	nD5,	nD5,	nEb5,	nEb5,	nE5,	nE5
	dc.b		nF5,	nBb5,	nF5,	nA5,	nF6,	nF5,	nA5,	nF6
	dc.b		nF5,	$01,	nC5,	nBb5,	$04,	nC6,	$02,	nD6
	dc.b		$01,	nEb6,	nF6,	$02,	nF6,	nF6,	nF6,	nBb5
	dc.b		nF5,	nA5,	nF6,	nF5,	nA5,	nF6,	nF5,	$01
	dc.b		nC5,	nBb5,	$04,	nC6,	$02,	nD6,	$01,	nEb6
	dc.b		nF6,	$02,	nF6,	nF6,	nF6
	smpsReturn

MusicFE_Call11:
	smpsPSGvoice	$01
	dc.b		nG5,	$02,	nG5,	nG5,	nG5,	nG5,	nF5,	nD5
	dc.b		nF5,	nF5,	nD5,	nD5,	nEb5,	nEb5,	nF5,	nF5
	dc.b		nG5,	nF5,	nF5,	nF5,	nF5,	nF5,	nEb5,	nD5
	dc.b		nF5,	nF5,	nD5,	nD5,	nEb5,	nEb5,	nE5,	nE5
	dc.b		nF5,	nB4,	$04,	nB4,	nB4,	$02,	nB4,	nRst
	dc.b		$04,	nB4,	$02,	nB4,	nB4,	nA4,	nA4,	nG4
	dc.b		nFs4,	nE4,	nD5,	nD5,	nD5,	nD5,	nE5,	nE5
	dc.b		nCs5,	nCs5,	nRst,	$10
	smpsReturn

MusicFE_Call12:
	dc.b		smpsNoAttack,	$41
	smpsPSGvoice	$01
	dc.b		nC6,	$01,	nC5,	$02,	nC4,	$01,	nD4,	nEb4
	dc.b		$02,	nF4,	$01,	nG4,	nA4,	$02,	nBb4,	$01
	dc.b		nC5,	nD5,	$02,	nEb5,	$01,	nF5,	nFs5,	$02
	dc.b		nG5,	$01,	nA5,	nBb5,	$02,	nC6,	$01,	nD6
	dc.b		nEb6,	$02,	nF6,	$01,	nFs6,	nG6,	$02,	nA6
	dc.b		$01,	nRst,	$1F
	smpsReturn

MusicFE_Call13:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

MusicFE_Call14:
	dc.b		smpsNoAttack,	$46
	smpsPSGvoice	$01
	dc.b		nFs4,	$01,	nRst,	nF4,	$18,	nRst,	$06,	nFs4
	dc.b		$01,	nRst,	nF4,	$18
	smpsReturn

MusicFE_Call15:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

MusicFE_Call16:
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$1C,	$02,	$01,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$10,	$0E
	smpsPSGvoice	$02
	dc.b		$04,	$01,	$05
	smpsReturn

MusicFE_Call17:
	dc.b		smpsNoAttack,	$06
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$0C,	$04
	smpsPSGvoice	$01
	dc.b		$0A
	smpsPSGvoice	$02
	dc.b		$06,	$04,	nRst,	$08,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$0A
	smpsPSGvoice	$02
	dc.b		$06,	$04,	nRst,	$08,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$0A
	smpsPSGvoice	$02
	dc.b		$06,	$04,	$02,	$01,	$05,	$08
	smpsReturn

MusicFE_Call18:
	dc.b		smpsNoAttack,	$06
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$04,	nRst,	$08,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$0A
	smpsPSGvoice	$02
	dc.b		$06,	$04,	nRst,	$08,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$0A
	smpsPSGvoice	$02
	dc.b		$06,	$04,	nRst,	$08,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$0A
	smpsPSGvoice	$02
	dc.b		$06,	$04,	$02,	$01,	$05,	$08
	smpsReturn

MusicFE_Call19:
	dc.b		nRst,	$40,	dKick,	$04,	nRst,	dKick,	nRst,	dKick
	dc.b		$10,	dSnare,	$04,	$08,	dKick,	$02,	dSnare,	$04
	dc.b		$06,	dKick,	$04,	dSnare
	smpsReturn

MusicFE_Call1A:
	dc.b		dKick,	$08,	dSnare,	nRst,	$02,	dKick,	$04,	dSnare
	dc.b		$0A,	dKick,	$08,	dSnare,	$0A,	dKick,	$04,	dSnare
	dc.b		$0A,	dKick,	$08,	dSnare,	$0A,	dKick,	$04,	dSnare
	dc.b		$0A,	dKick,	$08,	dSnare,	$0C,	$02,	dKick,	$04
	dc.b		dSnare,	$02,	dSnare,	dSnare
	smpsReturn

MusicFE_Call1B:
	dc.b		dKick,	$08,	dSnare,	$0A,	dKick,	$04,	dSnare,	$0A
	dc.b		dKick,	$08,	dSnare,	$0A,	dKick,	$04,	dSnare,	$0A
	dc.b		dKick,	$08,	dSnare,	$0A,	dKick,	$04,	dSnare,	$0A
	dc.b		dKick,	$08,	dSnare,	$0C,	$02,	dKick,	$04,	dSnare
	dc.b		$02,	dSnare,	dSnare
	smpsReturn

MusicFE_Voices:
	dc.b		$39,$02,$01,$02,$01,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$0F,$0F,$0F,$0F,$1B,$2D,$28,$0A;			Voice 00
	even
