; =============================================================================================
; Project Name:		s4invincible
; Created:		10th June 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

s4invincible_Header:
	smpsHeaderVoice	s4invincible_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	s4invincible_DAC
	smpsHeaderFM	s4invincible_FM1,	smpsPitch00,	$10
	smpsHeaderFM	s4invincible_FM2,	smpsPitch00,	$04
	smpsHeaderFM	s4invincible_FM3,	smpsPitch00,	$04
	smpsHeaderFM	s4invincible_FM4,	smpsPitch00,	$04
	smpsHeaderFM	s4invincible_FM5,	smpsPitch00,	$04
	smpsHeaderPSG	s4invincible_PSG1,	smpsPitch04lo,	$02,	$00
	smpsHeaderPSG	s4invincible_PSG2,	smpsPitch04lo,	$06,	$00
	smpsHeaderPSG	s4invincible_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
s4invincible_FM1:
	smpsCall	s4invincible_Call01
s4invincible_Jump01:
	smpsCall	s4invincible_Call02
	smpsCall	s4invincible_Call03
	smpsCall	s4invincible_Call04
	smpsJump	s4invincible_Jump01

; FM2 Data
s4invincible_FM2:
	smpsCall	s4invincible_Call05
s4invincible_Jump02:
	smpsCall	s4invincible_Call06
	smpsCall	s4invincible_Call07
	smpsCall	s4invincible_Call08
	smpsJump	s4invincible_Jump02

; FM3 Data
s4invincible_FM3:
	smpsCall	s4invincible_Call09
s4invincible_Jump03:
	smpsCall	s4invincible_Call0A
	smpsCall	s4invincible_Call0A
	smpsCall	s4invincible_Call0B
	smpsJump	s4invincible_Jump03

; FM4 Data
s4invincible_FM4:
	smpsCall	s4invincible_Call0C
s4invincible_Jump04:
	smpsCall	s4invincible_Call0D
	smpsCall	s4invincible_Call0E
	smpsCall	s4invincible_Call0F
	smpsJump	s4invincible_Jump04

; FM5 Data
s4invincible_FM5:
	smpsCall	s4invincible_Call10
s4invincible_Jump05:
	smpsCall	s4invincible_Call11
	smpsCall	s4invincible_Call11
	smpsCall	s4invincible_Call12
	smpsJump	s4invincible_Jump05

; PSG1 Data
s4invincible_PSG1:
	smpsCall	s4invincible_Call13
s4invincible_Jump06:
	smpsCall	s4invincible_Call14
	smpsCall	s4invincible_Call15
	smpsCall	s4invincible_Call16
	smpsJump	s4invincible_Jump06

; PSG2 Data
s4invincible_PSG2:
	smpsCall	s4invincible_Call17
s4invincible_Jump07:
	smpsCall	s4invincible_Call18
	smpsCall	s4invincible_Call19
	smpsCall	s4invincible_Call1A
	smpsJump	s4invincible_Jump07

; PSG3 Data
s4invincible_PSG3:
	smpsPSGform	$E7
	smpsCall	s4invincible_Call1B
s4invincible_Jump08:
	smpsCall	s4invincible_Call1C
	smpsCall	s4invincible_Call1D
	smpsCall	s4invincible_Call1E
	smpsJump	s4invincible_Jump08

; DAC Data
s4invincible_DAC:
	smpsCall	s4invincible_Call1F
s4invincible_Jump09:
	smpsCall	s4invincible_Call20
	smpsCall	s4invincible_Call21
	smpsCall	s4invincible_Call22
	smpsJump	s4invincible_Jump09

s4invincible_Call01:
	smpsFMvoice	$00
	dc.b		nG2,	$04,	nD3,	$02,	nG2,	$05,	nRst,	$01
	dc.b		nG2,	$04,	nA2,	nE3,	$02,	nA2,	$05,	nRst
	dc.b		$01,	nA2,	$04,	nBb2,	nF3,	$02,	nBb2,	$05
	dc.b		nRst,	$01,	nBb2,	$04,	nC3,	nG3,	$02,	nC3
	dc.b		$05,	nRst,	$01,	nC3,	$04,	nD3,	$05,	nRst
	dc.b		$01,	nD3,	$02,	nA2,	$04,	nD3,	$05,	nRst
	dc.b		$03,	nD3,	$04,	nA2,	$02,	nA3,	nD3,	nD4
	dc.b		nG4,	nC3,	nC4,	nG3,	nG2,	nRst,	nG3,	nG2
	dc.b		nC3,	nRst,	nC3,	nC4,	nG2,	nG3,	nC3,	nC4
	smpsReturn

s4invincible_Call02:
	dc.b		nB2,	$05,	nRst,	$01,	nB2,	$02,	nFs2,	$04
	dc.b		nB2,	$05,	nRst,	$03,	nB2,	$04,	nFs2,	$02
	dc.b		nFs3,	nB2,	nB3,	nE4,	nA4,	nA3,	nE3,	nA3
	dc.b		nRst,	nE3,	nE2,	nA2,	nRst,	nA2,	nA3,	nCs3
	dc.b		nD3,	nEb3,	nE3,	nD3,	$05,	nRst,	$01,	nD3
	dc.b		$02,	nA2,	$04,	nD3,	$05,	nRst,	$03,	nD3
	dc.b		$04,	nA2,	$02,	nA3,	nD3,	nD4,	nG4,	nC3
	dc.b		nC4,	nG3,	nG2,	nRst,	nG3,	nG2,	nC3,	nRst
	dc.b		nC3,	nC4,	nG2,	nG3,	nC3,	nC4
	smpsReturn

s4invincible_Call03:
	dc.b		nB2,	$05,	nRst,	$01,	nB2,	$02,	nFs2,	$04
	dc.b		nB2,	$05,	nRst,	$03,	nB2,	$04,	nFs2,	$02
	dc.b		nFs3,	nB2,	nB3,	nE4,	nA4,	nA3,	nE3,	nA3
	dc.b		nRst,	nE3,	nE2,	nA2,	nRst,	nA2,	nA3,	nCs3
	dc.b		nD3,	nEb3,	nE3,	nG2,	$04,	nD3,	$02,	nG2
	dc.b		$06,	nG3,	$03,	nRst,	$01,	nA2,	$04,	nE3
	dc.b		$02,	nA2,	$06,	nA3,	$03,	nRst,	$01,	nBb2
	dc.b		$04,	nF3,	$02,	nBb2,	$06,	nBb3,	$03,	nRst
	dc.b		$01,	nC3,	$04,	nG3,	$02,	nC3,	$06,	nC4
	dc.b		$03,	nRst,	$01
	smpsReturn

s4invincible_Call04:
	dc.b		nD3,	$05,	nRst,	$01,	nD3,	$02,	nA2,	$04
	dc.b		nD3,	$05,	nRst,	$03,	nD3,	$04,	nA2,	$02
	dc.b		nA3,	nD3,	nD4,	nG4,	nC3,	nC4,	nG3,	nG2
	dc.b		nRst,	nG3,	nG2,	nC3,	nRst,	nC3,	nC4,	nG2
	dc.b		nG3,	nC3,	nC4
	smpsReturn

s4invincible_Call05:
	smpsFMvoice	$04
	dc.b		nG5,	$05,	nRst,	$01,	nB5,	$04,	nA5,	$02
	dc.b		nG5,	nRst,	nA5,	$05,	nRst,	$01,	nCs6,	$04
	dc.b		nB5,	$02,	nA5,	nRst,	nBb5,	$05,	nRst,	$01
	dc.b		nD6,	$04,	nC6,	$02,	nBb5,	nRst,	nC6,	$05
	dc.b		nRst,	$01,	nE6,	$04,	nD6,	$02,	nC6,	nRst
	dc.b		nD6,	$04,	nRst,	$02,	nD6,	nE6,	nRst,	nG6
	dc.b		$04,	nRst,	nFs6,	nRst,	nE6,	nRst,	nE6,	nFs6
	dc.b		nD6,	$12,	nRst,	$02
	smpsReturn

s4invincible_Call06:
	dc.b		nD6,	$04,	nRst,	$02,	nD6,	nE6,	nRst,	nD6
	dc.b		$04,	nRst,	nD6,	nRst,	nCs6,	$1C,	nRst,	$08
	dc.b		nD6,	$04,	nRst,	$02,	nD6,	nE6,	nRst,	nG6
	dc.b		$04,	nRst,	nFs6,	nRst,	nE6,	nRst,	nE6,	nFs6
	dc.b		nD6,	$12,	nRst,	$02
	smpsReturn

s4invincible_Call07:
	dc.b		nD6,	$04,	nRst,	$02,	nD6,	nE6,	nRst,	nD6
	dc.b		$04,	nRst,	nD6,	nRst,	nCs6,	$1C,	nRst,	$08
	dc.b		nB5,	$02,	nCs6,	nD6,	nB5,	$04,	nCs6,	$02
	dc.b		nD6,	$03,	nRst,	$01,	nCs6,	$02,	nD6,	nE6
	dc.b		nCs6,	$04,	nD6,	$02,	nE6,	$03,	nRst,	$01
	dc.b		nD6,	$02,	nE6,	nF6,	nD6,	$04,	nE6,	$02
	dc.b		nF6,	$03,	nRst,	$01,	nE6,	$02,	nF6,	nG6
	dc.b		nE6,	$04,	nF6,	$02,	nG6,	nE6
	smpsReturn

s4invincible_Call08:
	dc.b		nD6,	$04,	nRst,	$02,	nD6,	nE6,	nRst,	nG6
	dc.b		$04,	nRst,	nFs6,	nRst,	nE6,	nRst,	nE6,	nFs6
	dc.b		nD6,	$12,	nRst,	$02
	smpsReturn

s4invincible_Call09:
	smpsFMvoice	$04
	dc.b		nC6,	$05,	nRst,	$0B,	nD6,	$05,	nRst,	$0B
	dc.b		nEb6,	$05,	nRst,	$0B,	nF6,	$05,	nRst,	$4B
	smpsReturn

s4invincible_Call0A:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$04
	dc.b		nG6,	$04,	nRst,	nFs6,	nRst,	nE6,	$1C,	nRst
	dc.b		$48
	smpsReturn

s4invincible_Call0B:
	dc.b		smpsNoAttack,	$40
	smpsReturn

s4invincible_Call0C:
	smpsFMvoice	$04
	dc.b		nG4,	$05,	nRst,	$01,	nB4,	$04,	nA4,	$02
	dc.b		nG4,	nRst,	nA4,	$05,	nRst,	$01,	nCs5,	$04
	dc.b		nB4,	$02,	nA4,	nRst,	nBb4,	$05,	nRst,	$01
	dc.b		nD5,	$04,	nC5,	$02,	nBb4,	nRst,	nC5,	$05
	dc.b		nRst,	$01,	nE5,	$04,	nD5,	$02,	nC5,	nRst
	dc.b		nD5,	$04,	nRst,	$02,	nD5,	nE5,	nRst,	nG5
	dc.b		$04,	nRst,	nFs5,	nRst,	nE5,	nRst,	nE5,	nFs5
	dc.b		nD5,	$12,	nRst,	$02
	smpsReturn

s4invincible_Call0D:
	dc.b		nD5,	$04,	nRst,	$02,	nD5,	nE5,	nRst,	nD5
	dc.b		$04,	nRst,	nD5,	nRst,	nCs5,	$1C,	nRst,	$08
	dc.b		nD5,	$04,	nRst,	$02,	nD5,	nE5,	nRst,	nG5
	dc.b		$04,	nRst,	nFs5,	nRst,	nE5,	nRst,	nE5,	nFs5
	dc.b		nD5,	$12,	nRst,	$02
	smpsReturn

s4invincible_Call0E:
	dc.b		nD5,	$04,	nRst,	$02,	nD5,	nE5,	nRst,	nD5
	dc.b		$04,	nRst,	nD5,	nRst,	nCs5,	$1C,	nRst,	$08
	dc.b		nB4,	$02,	nCs5,	nD5,	nB4,	$04,	nCs5,	$02
	dc.b		nD5,	$03,	nRst,	$01,	nCs5,	$02,	nD5,	nE5
	dc.b		nCs5,	$04,	nD5,	$02,	nE5,	$03,	nRst,	$01
	dc.b		nD5,	$02,	nE5,	nF5,	nD5,	$04,	nE5,	$02
	dc.b		nF5,	$03,	nRst,	$01,	nE5,	$02,	nF5,	nG5
	dc.b		nE5,	$04,	nF5,	$02,	nG5,	nE5
	smpsReturn

s4invincible_Call0F:
	dc.b		nD5,	$04,	nRst,	$02,	nD5,	nE5,	nRst,	nG5
	dc.b		$04,	nRst,	nFs5,	nRst,	nE5,	nRst,	nE5,	nFs5
	dc.b		nD5,	$12,	nRst,	$02
	smpsReturn

s4invincible_Call10:
	smpsFMvoice	$04
	dc.b		nC5,	$05,	nRst,	$0B,	nD5,	$05,	nRst,	$0B
	dc.b		nEb5,	$05,	nRst,	$0B,	nF5,	$05,	nRst,	$4B
	smpsReturn

s4invincible_Call11:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$04
	dc.b		nG5,	$04,	nRst,	nFs5,	nRst,	nE5,	$1C,	nRst
	dc.b		$48
	smpsReturn

s4invincible_Call12:
	dc.b		smpsNoAttack,	$40
	smpsReturn

s4invincible_Call13:
	dc.b		smpsNoAttack,	$06
	smpsPSGvoice	$00
	dc.b		nD5,	$09,	nRst,	$01,	nE5,	$05,	nRst,	$01
	dc.b		nE5,	$09,	nRst,	$01,	nF5,	$05,	nRst,	$01
	dc.b		nF5,	$09,	nRst,	$01,	nG5,	$05,	nRst,	$01
	dc.b		nG5,	$09,	nRst,	$01,	nA5,	$0A,	nRst,	$02
	dc.b		nA5,	$04,	nRst,	nA5,	nRst,	nC6,	nRst,	nC6
	dc.b		nRst,	nC6,	$08,	nB5,	$04,	nA5,	nG5
	smpsReturn

s4invincible_Call14:
	dc.b		nB5,	$0A,	nRst,	$02,	nB5,	$04,	nRst,	nB5
	dc.b		nRst,	nA5,	$1C,	nRst,	$08,	nA5,	$0A,	nRst
	dc.b		$02,	nA5,	$04,	nRst,	nA5,	nRst,	nC6,	nRst
	dc.b		nC6,	nRst,	nC6,	$08,	nB5,	$04,	nA5,	nG5
	smpsReturn

s4invincible_Call15:
	dc.b		nB5,	$0A,	nRst,	$02,	nB5,	$04,	nRst,	nB5
	dc.b		nRst,	nA5,	$18,	nRst,	$0C,	nG5,	$02,	nRst
	dc.b		$04,	nG5,	$06,	nRst,	$04,	nA5,	$02,	nRst
	dc.b		$04,	nA5,	$06,	nRst,	$04,	nBb5,	$02,	nRst
	dc.b		$04,	nBb5,	$06,	nRst,	$04,	nC6,	$02,	nRst
	dc.b		$04,	nC6,	$06,	nRst,	$04
	smpsReturn

s4invincible_Call16:
	dc.b		nA5,	$0A,	nRst,	$02,	nA5,	$04,	nRst,	nA5
	dc.b		nRst,	nC6,	nRst,	nC6,	nRst,	nC6,	$08,	nB5
	dc.b		$04,	nA5,	nG5
	smpsReturn

s4invincible_Call17:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$00
	dc.b		nG5,	$05,	nRst,	$01,	nB5,	$04,	nA5,	$02
	dc.b		nG5,	nRst,	nA5,	$05,	nRst,	$01,	nCs6,	$04
	dc.b		nB5,	$02,	nA5,	nRst,	nBb5,	$05,	nRst,	$01
	dc.b		nD6,	$04,	nC6,	$02,	nBb5,	nRst,	nC6,	$05
	dc.b		nRst,	$01,	nE6,	$04,	nD6,	$02,	nC6,	nRst
	dc.b		nD6,	$04,	nRst,	$02,	nD6,	nE6,	nRst,	nG6
	dc.b		$04,	nRst,	nFs6,	nRst,	nE6,	nRst,	nE6,	nFs6
	dc.b		nD6,	$02,	nRst,	$0E
	smpsReturn

s4invincible_Call18:
	dc.b		smpsNoAttack,	$04,	nD6,	nRst,	$02,	nD6,	nE6,	nRst
	dc.b		nD6,	$04,	nRst,	nD6,	nRst,	nCs6,	$1C,	nRst
	dc.b		$08,	nD6,	$04,	nRst,	$02,	nD6,	nE6,	nRst
	dc.b		nG6,	$04,	nRst,	nFs6,	nRst,	nE6,	nRst,	nE6
	dc.b		nFs6,	nD6,	$02,	nRst,	$0E
	smpsReturn

s4invincible_Call19:
	dc.b		smpsNoAttack,	$04,	nD6,	nRst,	$02,	nD6,	nE6,	nRst
	dc.b		nD6,	$04,	nRst,	nD6,	nRst,	nCs6,	$1C,	nRst
	dc.b		$08,	nB5,	$02,	nCs6,	nD6,	nB5,	$04,	nCs6
	dc.b		$02,	nD6,	$03,	nRst,	$01,	nCs6,	$02,	nD6
	dc.b		nE6,	nCs6,	$04,	nD6,	$02,	nE6,	$03,	nRst
	dc.b		$01,	nD6,	$02,	nE6,	nF6,	nD6,	$04,	nE6
	dc.b		$02,	nF6,	$03,	nRst,	$01,	nE6,	$02,	nF6
	dc.b		nG6,	nE6,	$04,	nF6,	$02
	smpsReturn

s4invincible_Call1A:
	dc.b		nG6,	$02,	nE6,	nD6,	$04,	nRst,	$02,	nD6
	dc.b		nE6,	nRst,	nG6,	$04,	nRst,	nFs6,	nRst,	nE6
	dc.b		nRst,	nE6,	nFs6,	nD6,	$01,	nRst,	$0F
	smpsReturn

s4invincible_Call1B:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02,	$04,	$02,	$04,	nCs0,	nCs0
	dc.b		$02,	$04,	$02,	$04,	nCs0,	nCs0,	$02,	$04
	dc.b		$02,	$04,	nCs0,	nCs0,	$02,	$04,	$02,	nCs0
	dc.b		nRst,	nCs0,	$04,	$02,	$04,	$02,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	nCs0,	nCs0,	nCs0,	nCs0,	$02
	dc.b		$04,	$02,	$04,	$02,	$04,	$02,	$04,	nCs0
	smpsReturn

s4invincible_Call1C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02,	$04,	$02,	$04,	$02,	nCs0
	dc.b		nCs0,	$04,	nCs0,	nCs0,	nCs0,	nCs0,	$02,	$04
	dc.b		$02,	$04,	$02,	$04,	$02,	$04,	nCs0,	nCs0
	dc.b		nCs0,	$02,	$04,	$02,	$04,	$02,	nCs0,	nCs0
	dc.b		$04,	nCs0,	nCs0,	nCs0,	nCs0,	$02,	$04,	$02
	dc.b		$04,	$02,	$04,	$02,	$04,	nCs0
	smpsReturn

s4invincible_Call1D:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02,	$04,	$02,	$04,	$02,	nCs0
	dc.b		nCs0,	$04,	nCs0,	nCs0,	nCs0,	nCs0,	$02,	$04
	dc.b		$02,	$04,	$02,	$04,	$02,	$04,	nCs0,	nCs0
	dc.b		nCs0,	$02,	$04,	$02,	$04,	nCs0,	nCs0,	$02
	dc.b		$04,	$02,	$04,	nCs0,	nCs0,	$02,	$04,	$02
	dc.b		$04,	nCs0,	nCs0,	nCs0,	nCs0,	$02,	nCs0
	smpsReturn

s4invincible_Call1E:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02,	$04,	$02,	$04,	$02,	nCs0
	dc.b		nCs0,	$04,	nCs0,	nCs0,	nCs0,	nCs0,	$02,	$04
	dc.b		$02,	$04,	$02,	$04,	$02,	$04,	nCs0
	smpsReturn

s4invincible_Call1F:
	dc.b		dKick,	$04,	dSnare,	$02,	dKick,	$06,	dSnare,	$02
	dc.b		nRst,	dKick,	$04,	dSnare,	$02,	dKick,	$06,	dSnare
	dc.b		$02,	nRst,	dKick,	$04,	dSnare,	$02,	dKick,	$06
	dc.b		dSnare,	$02,	nRst,	dKick,	$04,	dSnare,	$02,	dKick
	dc.b		$04,	dSnare,	$02,	dSnare,	dKick,	dKick,	$04,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	$02,	dSnare,	dSnare
	dc.b		$04
	smpsReturn

s4invincible_Call20:
	dc.b		dKick,	$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	$02,	dSnare,	dSnare,	$04
	dc.b		dKick,	dSnare,	dKick,	$02,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	$02
	dc.b		dSnare,	dSnare,	$04
	smpsReturn

s4invincible_Call21:
	dc.b		dKick,	$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	$02,	dSnare,	dSnare,	$04
	dc.b		dKick,	dSnare,	dKick,	$02,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		$04,	dSnare,	$02,	dKick,	$06,	dSnare,	$02,	nRst
	dc.b		dKick,	$04,	dSnare,	$02,	dKick,	$06,	dSnare,	$02
	dc.b		nRst,	dKick,	$04,	dSnare,	$02,	dKick,	$06,	dSnare
	dc.b		$02,	nRst,	dKick,	$04,	dSnare,	$02,	dKick,	$04
	dc.b		dSnare,	$02,	dSnare,	dSnare
	smpsReturn

s4invincible_Call22:
	dc.b		dKick,	$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		$02,	dSnare,	dSnare,	$04
	smpsReturn

s4invincible_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 01
	dc.b		$3A,$32,$71,$72,$41,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00
	dc.b		$01,$03,$03,$03,$07,$1E,$1E,$14,$15;			Voice 02
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$0C;			Voice 03
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 01
	even
