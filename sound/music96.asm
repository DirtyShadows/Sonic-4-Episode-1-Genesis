; =============================================================================================
; Project Name:		SSonic
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SSonic_Header:
	smpsHeaderVoice	SSonic_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$03

	smpsHeaderDAC	SSonic_DAC
	smpsHeaderFM	SSonic_FM1,	smpsPitch01lo,	$10
	smpsHeaderFM	SSonic_FM2,	smpsPitch01lo,	$14
	smpsHeaderFM	SSonic_FM3,	smpsPitch00,	$0A
	smpsHeaderFM	SSonic_FM4,	smpsPitch01lo,	$16
	smpsHeaderFM	SSonic_FM5,	smpsPitch01lo,	$14
	smpsHeaderPSG	SSonic_PSG1,	smpsPitch03lo,	$04,	$00
	smpsHeaderPSG	SSonic_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	SSonic_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
SSonic_FM1:
	smpsCall	SSonic_Call01
SSonic_Jump01:
	smpsCall	SSonic_Call02
	smpsCall	SSonic_Call03
	smpsCall	SSonic_Call04
	smpsJump	SSonic_Jump01

; FM2 Data
SSonic_FM2:
	smpsCall	SSonic_Call05
SSonic_Jump02:
	smpsCall	SSonic_Call06
	smpsCall	SSonic_Call07
	smpsCall	SSonic_Call08
	smpsJump	SSonic_Jump02

; FM3 Data
SSonic_FM3:
	smpsCall	SSonic_Call09
SSonic_Jump03:
	smpsCall	SSonic_Call0A
	smpsCall	SSonic_Call0B
	smpsCall	SSonic_Call0C
	smpsJump	SSonic_Jump03

; FM4 Data
SSonic_FM4:
	smpsCall	SSonic_Call0D
SSonic_Jump04:
	smpsCall	SSonic_Call0E
	smpsCall	SSonic_Call0F
	smpsCall	SSonic_Call10
	smpsJump	SSonic_Jump04

; FM5 Data
SSonic_FM5:
	smpsCall	SSonic_Call11
SSonic_Jump05:
	smpsCall	SSonic_Call12
	smpsCall	SSonic_Call13
	smpsCall	SSonic_Call11
	smpsJump	SSonic_Jump05

; PSG1 Data
SSonic_PSG1:
	smpsCall	SSonic_Call14
SSonic_Jump06:
	smpsCall	SSonic_Call15
	smpsCall	SSonic_Call16
	smpsCall	SSonic_Call17
	smpsJump	SSonic_Jump06

; PSG2 Data
SSonic_PSG2:
	smpsCall	SSonic_Call18
SSonic_Jump07:
	smpsCall	SSonic_Call18
	smpsCall	SSonic_Call18
	smpsCall	SSonic_Call18
	smpsJump	SSonic_Jump07

; PSG3 Data
SSonic_PSG3:
	smpsPSGform	$E7
	smpsCall	SSonic_Call19
SSonic_Jump08:
	smpsCall	SSonic_Call1A
	smpsCall	SSonic_Call1B
	smpsCall	SSonic_Call1C
	smpsJump	SSonic_Jump08

; DAC Data
SSonic_DAC:
	smpsCall	SSonic_Call1D
SSonic_Jump09:
	smpsCall	SSonic_Call1E
	smpsCall	SSonic_Call1F
	smpsCall	SSonic_Call20
	smpsJump	SSonic_Jump09

SSonic_Call01:
	smpsFMvoice	$01
	dc.b		nG5,	$0C,	nFs5,	nE5,	$08,	nD5,	$04,	nE5
	dc.b		nFs5,	nG5,	nA5,	nB5,	nC6,	nD6,	nD5,	$0C
	dc.b		nRst,	$04,	nG5,	$0C,	nRst,	$04,	nA5,	$08
	dc.b		nRst,	$04,	nG5,	$08,	nRst,	$04,	nF5,	$08
	smpsReturn

SSonic_Call02:
	dc.b		nRst,	$08,	nB5,	$10,	nG5,	$04,	nRst,	nEb5
	dc.b		$08,	nG5,	$04,	nRst,	nF5,	$08,	nA5,	$04
	dc.b		nRst,	nD5,	$0C,	nRst,	$04,	nG5,	$0C,	nRst
	dc.b		$04,	nA5,	$08,	nRst,	$04,	nG5,	$08,	nRst
	dc.b		$04,	nF5,	$08
	smpsReturn

SSonic_Call03:
	dc.b		nRst,	$08,	nB5,	$10,	nG5,	$04,	nRst,	nEb5
	dc.b		$08,	nG5,	nEb5,	$04,	nG5,	nF5,	nA5,	nG5
	dc.b		$0C,	nEb5,	nG5,	$06,	nRst,	$02,	nA5,	$04
	dc.b		nRst,	nF5,	$14,	nRst,	$04
	smpsReturn

SSonic_Call04:
	dc.b		nBb5,	$0C,	nFs5,	nBb5,	$06,	nRst,	$02,	nC6
	dc.b		$06,	nRst,	$02,	nBb5,	$04,	nCs6,	nC6,	nBb5
	dc.b		nAb5,	nEb5,	nD5,	$0C,	nRst,	$04,	nG5,	$0C
	dc.b		nRst,	$04,	nA5,	$08,	nRst,	$04,	nG5,	$08
	dc.b		nRst,	$04,	nF5,	$08
	smpsReturn

SSonic_Call05:
	smpsFMvoice	$01
	dc.b		nD5,	$0C,	nC5,	nA4,	$08,	nFs4,	$04,	nA4
	dc.b		nC5,	nD5,	nFs5,	nG5,	nE5,	nC5,	nB4,	$0E
	dc.b		nRst,	$02,	nB4,	$0E,	nRst,	$02,	nC5,	$0A
	dc.b		nRst,	$02,	nC5,	$0A,	nRst,	$02,	nC5,	$08
	smpsReturn

SSonic_Call06:
	dc.b		smpsNoAttack,	$02,	nRst,	$06,	nE5,	$0E,	nRst,	$02
	dc.b		nE5,	$06,	nRst,	$02,	nBb4,	$0E,	nRst,	$02
	dc.b		nC5,	$0E,	nRst,	$02,	nB4,	$0E,	nRst,	$02
	dc.b		nB4,	$0E,	nRst,	$02,	nC5,	$0A,	nRst,	$02
	dc.b		nC5,	$0A,	nRst,	$02,	nC5,	$08
	smpsReturn

SSonic_Call07:
	dc.b		smpsNoAttack,	$02,	nRst,	$06,	nE5,	$0E,	nRst,	$02
	dc.b		nE5,	$06,	nRst,	$02,	nBb4,	$0C,	nRst,	$04
	dc.b		nBb4,	$08,	nC5,	nBb4,	$1E,	nRst,	$02,	nC5
	dc.b		$1E,	nRst,	$02
	smpsReturn

SSonic_Call08:
	dc.b		nCs5,	$1E,	nRst,	$02,	nEb5,	$16,	nRst,	$0A
	dc.b		nB4,	$0E,	nRst,	$02,	nB4,	$0E,	nRst,	$02
	dc.b		nC5,	$0A,	nRst,	$02,	nC5,	$0A,	nRst,	$02
	dc.b		nC5,	$08
	smpsReturn

SSonic_Call09:
	smpsFMvoice	$00
	dc.b		nC3,	$0C,	nE3,	nG3,	$08,	nFs3,	$04,	nE3
	dc.b		nD3,	nA3,	nG3,	nFs3,	nE3,	nD3,	nG3,	nRst
	dc.b		nG3,	$06,	nRst,	$02,	nD3,	$04,	nRst,	nD3
	dc.b		$08,	nF3,	$04,	nRst,	nF3,	nC3,	$08,	nRst
	dc.b		$04,	nC3,	$08
	smpsReturn

SSonic_Call0A:
	dc.b		nE3,	$04,	nRst,	nE3,	nB2,	$08,	nRst,	$04
	dc.b		nB2,	$08,	nEb3,	$02,	nRst,	nEb3,	$04,	nBb2
	dc.b		$08,	nF3,	$02,	nRst,	nF3,	$04,	nC3,	$08
	dc.b		nG3,	$04,	nRst,	nG3,	$06,	nRst,	$02,	nD3
	dc.b		$04,	nRst,	nD3,	$08,	nF3,	$04,	nRst,	nF3
	dc.b		nC3,	$08,	nRst,	$04,	nC3,	$08
	smpsReturn

SSonic_Call0B:
	dc.b		nE3,	$04,	nRst,	nE3,	nB2,	$08,	nRst,	$04
	dc.b		nB2,	$08,	nEb3,	$02,	nRst,	nEb3,	$04,	nBb2
	dc.b		$08,	nF3,	$02,	nRst,	nF3,	$04,	nC3,	$08
	dc.b		nEb3,	nBb2,	$04,	nEb3,	$08,	nBb3,	$04,	nAb3
	dc.b		nG3,	nF3,	$08,	nC3,	$04,	nF3,	$08,	nC4
	dc.b		$04,	nF4,	$08
	smpsReturn

SSonic_Call0C:
	dc.b		nFs3,	$08,	nCs3,	$04,	nFs3,	$08,	nCs4,	$04
	dc.b		nB3,	nBb3,	nAb3,	$08,	nEb3,	$04,	nAb3,	$08
	dc.b		nEb4,	$04,	nAb4,	$08,	nG3,	$04,	nRst,	nG3
	dc.b		$06,	nRst,	$02,	nD3,	$04,	nRst,	nD3,	$08
	dc.b		nF3,	$04,	nRst,	nF3,	nC3,	$08,	nRst,	$04
	dc.b		nC3,	$08
	smpsReturn

SSonic_Call0D:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$01
	dc.b		nG5,	$0C,	nFs5,	nE5,	$08,	nD5,	$04,	nE5
	dc.b		nFs5,	nG5,	nA5,	nB5,	nC6,	nD6,	nD5,	$0C
	dc.b		nRst,	$04,	nG5,	$0C,	nRst,	$04,	nA5,	$08
	dc.b		nRst,	$04,	nG5,	$08,	nRst,	$04
	smpsReturn

SSonic_Call0E:
	dc.b		nF5,	$08,	nRst,	nB5,	$10,	nG5,	$04,	nRst
	dc.b		nEb5,	$08,	nG5,	$04,	nRst,	nF5,	$08,	nA5
	dc.b		$04,	nRst,	nD5,	$0C,	nRst,	$04,	nG5,	$0C
	dc.b		nRst,	$04,	nA5,	$08,	nRst,	$04,	nG5,	$08
	dc.b		nRst,	$04
	smpsReturn

SSonic_Call0F:
	dc.b		nF5,	$08,	nRst,	nB5,	$10,	nG5,	$04,	nRst
	dc.b		nEb5,	$08,	nG5,	nEb5,	$04,	nG5,	nF5,	nA5
	dc.b		nG5,	$0C,	nEb5,	nG5,	$06,	nRst,	$02,	nA5
	dc.b		$04,	nRst,	nF5,	$10
	smpsReturn

SSonic_Call10:
	dc.b		smpsNoAttack,	$04,	nRst,	nBb5,	$0C,	nFs5,	nBb5,	$06
	dc.b		nRst,	$02,	nC6,	$06,	nRst,	$02,	nBb5,	$04
	dc.b		nCs6,	nC6,	nBb5,	nC6,	nD6,	nD5,	$0C,	nRst
	dc.b		$04,	nG5,	$0C,	nRst,	$04,	nA5,	$08,	nRst
	dc.b		$04,	nG5,	$08,	nRst,	$04
	smpsReturn

SSonic_Call11:
	dc.b		smpsNoAttack,	$40
	smpsFMvoice	$02
	dc.b		nG5,	$04,	nRst,	nB5,	nRst,	nD5,	nRst,	nG5
	dc.b		nRst,	nA5,	$0A,	nRst,	$02,	nC6,	$0A,	nRst
	dc.b		$02,	nG5,	$06,	nRst,	$02
	smpsReturn

SSonic_Call12:
	dc.b		nE5,	$04,	nRst,	nE5,	$0E,	nRst,	$02,	nG5
	dc.b		$08,	nRst,	$20,	nG5,	$04,	nRst,	nG5,	nRst
	dc.b		nD5,	nRst,	nG5,	nRst,	nA5,	$0A,	nRst,	$02
	dc.b		nC6,	$0A,	nRst,	$02,	nG5,	$06,	nRst,	$02
	smpsReturn

SSonic_Call13:
	dc.b		nE5,	$04,	nRst,	nE5,	$0E,	nRst,	$02,	nG5
	dc.b		$08,	nRst,	$60
	smpsReturn

SSonic_Call14:
	dc.b		smpsNoAttack,	$40
	smpsPSGvoice	$01
	dc.b		nB5,	$04,	nRst,	nG5,	nRst,	nB5,	nRst,	nB5
	dc.b		nRst,	nC6,	$0A,	nRst,	$02,	nG5,	$0A,	nRst
	dc.b		$02,	nC6,	$06,	nRst,	$02
	smpsReturn

SSonic_Call15:
	dc.b		nB5,	$04,	nRst,	nB5,	$0E,	nRst,	$02,	nB5
	dc.b		$08,	nG6,	$04,	nF6,	nEb6,	nC7,	nBb6,	nA6
	dc.b		nG6,	nF6,	nB5,	nRst,	nB5,	nRst,	nB5,	nRst
	dc.b		nB5,	nRst,	nC6,	$0A,	nRst,	$02,	nG5,	$0A
	dc.b		nRst,	$02,	nC6,	$06,	nRst,	$02
	smpsReturn

SSonic_Call16:
	dc.b		nB5,	$04,	nRst,	nB5,	$0E,	nRst,	$02,	nB5
	dc.b		$08,	nG6,	$04,	nF6,	nEb6,	nC7,	nBb6,	nA6
	dc.b		nG6,	nF6,	nEb5,	nBb5,	nEb6,	nF6,	nAb6,	nG6
	dc.b		nF6,	nEb6,	nF6,	nF5,	nA5,	nBb5,	nC6,	nEb6
	dc.b		nF6,	nA6
	smpsReturn

SSonic_Call17:
	dc.b		nFs6,	$04,	nFs5,	nBb5,	nCs6,	nFs6,	nBb6,	nD7
	dc.b		nFs6,	nAb7,	nEb7,	nC7,	nBb6,	nAb6,	nEb6,	nC6
	dc.b		nAb5,	nB5,	nRst,	nG5,	nRst,	nB5,	nRst,	nB5
	dc.b		nRst,	nC6,	$0A,	nRst,	$02,	nG5,	$0A,	nRst
	dc.b		$02,	nC6,	$06,	nRst,	$02
	smpsReturn

SSonic_Call18:
	dc.b		nRst,	$01,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst
	smpsReturn

SSonic_Call19:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	$08,	nCs0,	$04,	nRst,	$08,	nCs0
	dc.b		$04,	nCs0,	nRst,	$0C,	nCs0,	$04,	nRst,	$08
	dc.b		nCs0,	$04,	nCs0,	nRst
	smpsReturn

SSonic_Call1A:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	$08,	nCs0,	$04,	nCs0,	nRst
	dc.b		$0C,	nCs0,	$04,	nRst,	$0C,	nCs0,	$04,	nRst
	dc.b		$0C,	nCs0,	$04,	nRst,	$08,	nCs0,	$04,	nCs0
	dc.b		nRst,	$0C,	nCs0,	$04,	nRst,	$08,	nCs0,	$04
	dc.b		nCs0,	nRst
	smpsReturn

SSonic_Call1B:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	$08,	nCs0,	$04,	nCs0,	nRst
	dc.b		$0C,	nCs0,	$04,	nRst,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nRst,	$08,	nCs0,	$04,	nRst,	$08,	nCs0,	$04
	dc.b		nCs0,	nRst,	$0C,	nCs0,	$04,	nRst,	$08,	nCs0
	dc.b		$04,	nCs0,	nRst
	smpsReturn

SSonic_Call1C:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	$08,	nCs0,	$04,	nCs0,	nRst
	dc.b		$08,	nCs0,	$04,	nCs0,	nRst,	$08,	nCs0,	$04
	dc.b		nCs0,	nRst,	nRst,	$08,	nCs0,	$04,	nRst,	$08
	dc.b		nCs0,	$04,	nCs0,	nRst,	$0C,	nCs0,	$04,	nRst
	dc.b		$08,	nCs0,	$04,	nCs0,	nRst
	smpsReturn

SSonic_Call1D:
	dc.b		dKick,	$04,	nRst,	dSnare,	dKick,	nRst,	dKick,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dKick,	nRst,	dSnare,	nRst,	$08,	dKick,	$04
	dc.b		dSnare,	nRst,	dKick,	nRst,	dSnare,	dKick,	nRst,	dKick
	dc.b		dSnare,	dSnare
	smpsReturn

SSonic_Call1E:
	dc.b		dKick,	$04,	nRst,	dSnare,	nRst,	$08,	dKick,	$04
	dc.b		dSnare,	dSnare,	dKick,	dKick,	dSnare,	dSnare,	dKick,	dSnare
	dc.b		dSnare,	dSnare,	dKick,	nRst,	dSnare,	nRst,	$08,	dKick
	dc.b		$04,	dSnare,	nRst,	dKick,	nRst,	dSnare,	dKick,	nRst
	dc.b		dKick,	dSnare,	dSnare
	smpsReturn

SSonic_Call1F:
	dc.b		dKick,	$04,	nRst,	dSnare,	nRst,	$08,	dKick,	$04
	dc.b		dSnare,	dSnare,	dKick,	nRst,	dSnare,	nRst,	dKick,	dSnare
	dc.b		dSnare,	dSnare,	dKick,	nRst,	dSnare,	dKick,	nRst,	dKick
	dc.b		dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst,	$08,	dKick
	dc.b		$04,	dSnare,	dSnare
	smpsReturn

SSonic_Call20:
	dc.b		dKick,	$04,	nRst,	dSnare,	dKick,	nRst,	dKick,	dSnare
	dc.b		nRst,	dKick,	$08,	dSnare,	$04,	dKick,	nRst,	dKick
	dc.b		dSnare,	dSnare,	dKick,	nRst,	dSnare,	nRst,	$08,	dKick
	dc.b		$04,	dSnare,	nRst,	dKick,	nRst,	dSnare,	dKick,	nRst
	dc.b		dKick,	dSnare,	dSnare
	smpsReturn

SSonic_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$35,$31,$31,$75,$01,$4D,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 01
	dc.b		$39,$0D,$01,$02,$01,$9F,$1F,$1F,$5F,$0A,$09,$09,$04,$08,$07,$07
	dc.b		$07,$24,$24,$24,$28,$22,$26,$24,$00;			Voice 02
	even
