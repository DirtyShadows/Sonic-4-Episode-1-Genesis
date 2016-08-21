; =============================================================================================
; Project Name:		EggStation
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

EggStation_Header:
	smpsHeaderVoice	EggStation_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$05

	smpsHeaderDAC	EggStation_DAC
	smpsHeaderFM	EggStation_FM1,	smpsPitch01hi,	$10
	smpsHeaderFM	EggStation_FM2,	smpsPitch02lo,	$10
	smpsHeaderFM	EggStation_FM3,	smpsPitch02lo,	$10
	smpsHeaderFM	EggStation_FM4,	smpsPitch02lo,	$10
	smpsHeaderFM	EggStation_FM5,	smpsPitch02lo,	$18
	smpsHeaderPSG	EggStation_PSG1,	smpsPitch03lo,	$06,	$00
	smpsHeaderPSG	EggStation_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	EggStation_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
EggStation_FM1:
	smpsCall	EggStation_Call01
EggStation_Jump01:
	smpsCall	EggStation_Call02
	smpsCall	EggStation_Call03
	smpsCall	EggStation_Call03
	smpsCall	EggStation_Call04
	smpsCall	EggStation_Call03
	smpsJump	EggStation_Jump01

; FM2 Data
EggStation_FM2:
	smpsCall	EggStation_Call05
EggStation_Jump02:
	smpsCall	EggStation_Call06
	smpsCall	EggStation_Call07
	smpsCall	EggStation_Call07
	smpsCall	EggStation_Call08
	smpsCall	EggStation_Call07
	smpsJump	EggStation_Jump02

; FM3 Data
EggStation_FM3:
	smpsCall	EggStation_Call09
EggStation_Jump03:
	smpsCall	EggStation_Call0A
	smpsCall	EggStation_Call0B
	smpsCall	EggStation_Call0B
	smpsCall	EggStation_Call0C
	smpsCall	EggStation_Call0B
	smpsJump	EggStation_Jump03

; FM4 Data
EggStation_FM4:
	smpsCall	EggStation_Call0D
EggStation_Jump04:
	smpsCall	EggStation_Call0E
	smpsCall	EggStation_Call0F
	smpsCall	EggStation_Call0F
	smpsCall	EggStation_Call10
	smpsCall	EggStation_Call0F
	smpsJump	EggStation_Jump04

; FM5 Data
EggStation_FM5:
	smpsCall	EggStation_Call11
EggStation_Jump05:
	smpsCall	EggStation_Call12
	smpsCall	EggStation_Call13
	smpsCall	EggStation_Call13
	smpsCall	EggStation_Call14
	smpsCall	EggStation_Call13
	smpsJump	EggStation_Jump05

; PSG1 Data
EggStation_PSG1:
	smpsCall	EggStation_Call15
EggStation_Jump06:
	smpsCall	EggStation_Call16
	smpsCall	EggStation_Call17
	smpsCall	EggStation_Call17
	smpsCall	EggStation_Call18
	smpsCall	EggStation_Call17
	smpsJump	EggStation_Jump06

; PSG2 Data
EggStation_PSG2:
	smpsCall	EggStation_Call19
EggStation_Jump07:
	smpsCall	EggStation_Call1A
	smpsCall	EggStation_Call1B
	smpsCall	EggStation_Call1B
	smpsCall	EggStation_Call1C
	smpsCall	EggStation_Call1B
	smpsJump	EggStation_Jump07

; PSG3 Data
EggStation_PSG3:
	smpsPSGform	$E7
	smpsCall	EggStation_Call1D
EggStation_Jump08:
	smpsCall	EggStation_Call1E
	smpsCall	EggStation_Call1F
	smpsCall	EggStation_Call1F
	smpsCall	EggStation_Call20
	smpsCall	EggStation_Call1F
	smpsJump	EggStation_Jump08

; DAC Data
EggStation_DAC:
	smpsCall	EggStation_Call21
EggStation_Jump09:
	smpsCall	EggStation_Call22
	smpsCall	EggStation_Call23
	smpsCall	EggStation_Call23
	smpsCall	EggStation_Call24
	smpsCall	EggStation_Call23
	smpsJump	EggStation_Jump09

EggStation_Call01:
	dc.b		smpsNoAttack,	$40
	smpsFMvoice	$00
	dc.b		nC2,	$04,	nC2,	nG2,	nC2,	nBb2,	nC3,	nC2
	dc.b		nC2,	nBb2,	nC2,	nC2,	nC2,	nG2,	nC2,	nC2
	dc.b		nC2
	smpsReturn

EggStation_Call02:
	dc.b		nC2,	$04,	nC2,	nG2,	nC2,	nBb2,	nC3,	nC2
	dc.b		nC2,	nBb2,	nC2,	nC2,	nC2,	nG2,	nC2,	nC2
	dc.b		nC2,	nC2,	nRst,	nG2,	nC2,	$0E,	nRst,	$26
	smpsReturn

EggStation_Call03:
	smpsFMvoice	$00
	dc.b		nC2,	$04,	nC2,	nG2,	nC2,	nBb2,	nC3,	nC2
	dc.b		nC2,	nBb2,	nC2,	nC2,	nC2,	nG2,	nC2,	nC2
	dc.b		nC2
	smpsReturn

EggStation_Call04:
	dc.b		nC2,	$04,	nRst,	nG2,	nC2,	$0E,	nRst,	$46
	smpsReturn

EggStation_Call05:
	smpsFMvoice	$01
	dc.b		nC6,	$08,	nG4,	$04,	nC6,	nRst,	nEb6,	nRst
	dc.b		nG4,	nEb6,	nRst,	nEb5,	nRst,	nD6,	nRst,	nCs5
	dc.b		nRst,	$44
	smpsReturn

EggStation_Call06:
	smpsFMvoice	$02
	dc.b		nC5,	$04,	nRst,	$3C
	smpsFMvoice	$01
	dc.b		nC6,	$08,	nG4,	$04,	nC6,	nRst,	nEb6,	nRst
	dc.b		nG4,	nEb6,	nRst,	nEb5,	nRst,	nD6,	nRst,	nCs5
	dc.b		nRst
	smpsReturn

EggStation_Call07:
	dc.b		smpsNoAttack,	$40
	smpsReturn

EggStation_Call08:
	smpsFMvoice	$01
	dc.b		nC6,	$08,	nG5,	$04,	nC6,	nRst,	nEb6,	nRst
	dc.b		nC5,	nEb6,	nRst,	nEb5,	nRst,	nD6,	nRst,	nCs5
	dc.b		nRst,	$24
	smpsReturn

EggStation_Call09:
	smpsFMvoice	$01
	dc.b		nC5,	$08,	nG5,	$04,	nC5,	nRst,	nEb5,	nRst
	dc.b		nG5,	nEb5,	nRst,	nEb6,	nRst,	nD5,	nRst,	nCs6
	dc.b		nRst,	nC6,	nC5,	nF5,	nG5,	nEb6,	nF5,	nG5
	dc.b		nC6,	nD6,	nEb6,	nD6,	nCs6,	$14
	smpsReturn

EggStation_Call0A:
	dc.b		nC6,	$04,	nC5,	nF5,	nG5,	nEb6,	nF5,	nG5
	dc.b		nC6,	nD6,	nEb6,	nD6,	nCs6,	$0C,	nRst,	$08
	dc.b		nC5,	nG5,	$04,	nC5,	nRst,	nEb5,	nRst,	nG5
	dc.b		nEb5,	nRst,	nEb6,	nRst,	nD5,	nRst,	nCs6,	nRst
	smpsReturn

EggStation_Call0B:
	dc.b		nC6,	$04,	nC5,	nF5,	nG5,	nEb6,	nF5,	nG5
	dc.b		nC6,	nD6,	nEb6,	nD6,	nCs6,	$0C,	nRst,	$08
	smpsReturn

EggStation_Call0C:
	dc.b		nC5,	$08,	nG4,	$02,	nRst,	nC5,	$04,	nRst
	dc.b		nEb5,	nRst,	nC6,	nEb5,	nRst,	nEb6,	nRst,	nD5
	dc.b		nRst,	nCs6,	nRst,	$24
	smpsReturn

EggStation_Call0D:
	smpsFMvoice	$01
	dc.b		nG4,	$08,	nE4,	$04,	nG4,	nRst,	nC6,	nRst
	dc.b		nG4,	nC5,	nRst,	nAb4,	nRst,	nA5,	nRst,	nBb4
	dc.b		nRst,	$06
	smpsFMvoice	$02
	dc.b		nC5,	$12,	nG4,	$08,	nC5,	$04,	nBb4,	$08
	dc.b		nA4,	$04,	nAb4,	$14
	smpsReturn

EggStation_Call0E:
	dc.b		nC5,	$14,	nG4,	$08,	nC5,	$04,	nBb4,	$08
	dc.b		nA4,	$04,	nAb4,	$14
	smpsFMvoice	$01
	dc.b		nG4,	$08,	nE4,	$04,	nG4,	nRst,	nC6,	nRst
	dc.b		nG4,	nC5,	nRst,	nAb4,	nRst,	nA5,	nRst,	nBb4
	dc.b		nRst
	smpsReturn

EggStation_Call0F:
	smpsFMvoice	$02
	dc.b		nC5,	$14,	nG4,	$08,	nC5,	$04,	nBb4,	$08
	dc.b		nA4,	$04,	nAb4,	$14
	smpsReturn

EggStation_Call10:
	smpsFMvoice	$01
	dc.b		nG4,	$08,	nE4,	$04,	nG4,	nRst,	nC6,	nRst
	dc.b		nG4,	nC5,	nRst,	nAb4,	nRst,	nA4,	nRst,	nBb5
	dc.b		nRst,	$24
	smpsReturn

EggStation_Call11:
	smpsFMvoice	$01
	dc.b		nG5,	$08,	nE5,	$04,	nG5,	nRst,	nC5,	nRst
	dc.b		nG5,	nC6,	nRst,	nAb5,	nRst,	nA4,	nRst,	nBb5
	dc.b		nRst
	smpsFMvoice	$02
	dc.b		nC5,	$16,	nG4,	$08,	nC5,	$04,	nBb4,	$08
	dc.b		nA4,	$04,	nAb4,	$12
	smpsReturn

EggStation_Call12:
	dc.b		smpsNoAttack,	$02,	nC5,	$14,	nG4,	$08,	nC5,	$04
	dc.b		nBb4,	$08,	nA4,	$04,	nAb4,	$12
	smpsFMvoice	$01
	dc.b		nG5,	$08,	nE5,	$04,	nG5,	nRst,	nC5,	nRst
	dc.b		nG5,	nC6,	nRst,	nAb5,	nRst,	nA4,	nRst,	nBb5
	dc.b		nRst
	smpsReturn

EggStation_Call13:
	dc.b		smpsNoAttack,	$02
	smpsFMvoice	$02
	dc.b		nC5,	$14,	nG4,	$08,	nC5,	$04,	nBb4,	$08
	dc.b		nA4,	$04,	nAb4,	$12
	smpsReturn

EggStation_Call14:
	smpsFMvoice	$01
	dc.b		nG5,	$08,	nE5,	$04,	nG5,	nRst,	nC5,	nRst
	dc.b		nG5,	nC6,	nRst,	nAb5,	nRst,	nA5,	nRst,	nBb4
	dc.b		nRst,	$24
	smpsReturn

EggStation_Call15:
	smpsPSGvoice	$00
	dc.b		nF5,	$02,	nRst,	$72,	nG5,	$02,	nCs5,	nG4
	dc.b		nFs5,	nC5,	nFs4
	smpsReturn

EggStation_Call16:
	dc.b		nF5,	$02,	nRst,	$32,	nG5,	$02,	nCs5,	nG4
	dc.b		nFs5,	nC5,	nFs4,	nF5,	nRst,	$3E
	smpsReturn

EggStation_Call17:
	smpsPSGvoice	$00
	dc.b		nCs5,	$02,	nRst,	$32,	nG5,	$02,	nCs5,	nG4
	dc.b		nFs5,	nC5,	nRst
	smpsReturn

EggStation_Call18:
	dc.b		nF5,	$02,	nRst,	$40,	nC6,	$02,	nG5,	nC5
	dc.b		nB5,	nFs5,	nB4,	nBb5,	nF5,	nFs5,	nCs5,	nFs4
	dc.b		nF5,	nC5,	nF4,	nE5
	smpsReturn

EggStation_Call19:
	dc.b		smpsNoAttack,	$72
	smpsPSGvoice	$00
	dc.b		nG5,	$02,	nCs5,	nG4,	nFs5,	nC5,	nFs4,	nF5
	smpsReturn

EggStation_Call1A:
	dc.b		nRst,	$32,	nG5,	$02,	nCs5,	nG4,	nFs5,	nC5
	dc.b		nFs4,	nF5,	nRst,	$40
	smpsReturn

EggStation_Call1B:
	dc.b		nRst,	$32
	smpsPSGvoice	$00
	dc.b		nG5,	$02,	nCs5,	nG4,	nFs5,	nC5,	nFs4,	nF5
	smpsReturn

EggStation_Call1C:
	dc.b		nRst,	$40,	nC6,	$02,	nG5,	nC5,	nB5,	nFs5
	dc.b		nB4,	nBb5,	nF5,	nFs5,	nCs5,	nFs4,	nF5,	nC5
	dc.b		nF4,	nE5,	nCs5
	smpsReturn

EggStation_Call1D:
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	$04,	$02,	$04,	$02,	$04,	$08
	dc.b		nRst,	$04,	nCs0,	$08,	nCs0,	nCs0,	$04,	nRst
	dc.b		nCs0,	nCs0,	nCs0,	$02,	$04,	$02,	$04,	nCs0
	dc.b		nCs0,	$06,	$02,	$04,	nCs0,	nCs0,	nCs0,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		$04,	nCs0
	smpsReturn

EggStation_Call1E:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02,	$04,	$02,	$04,	nCs0,	nCs0
	dc.b		$06,	$02,	$04,	nCs0,	nCs0,	nCs0,	$02,	nCs0
	dc.b		nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		nRst,	nCs0,	$08,	$04,	$02,	$04,	$02,	$04
	dc.b		$08,	nRst,	$04,	nCs0,	$08,	nCs0,	nCs0,	$04
	dc.b		nRst,	nCs0
	smpsReturn

EggStation_Call1F:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02,	$04,	$02,	$04,	nCs0,	nCs0
	dc.b		$06,	$02,	$04,	nCs0,	nCs0,	nCs0,	$02,	nCs0
	dc.b		nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		nCs0
	smpsReturn

EggStation_Call20:
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	$04,	$02,	$04,	$02,	$04,	$08
	dc.b		nRst,	$04,	nCs0,	$08,	nCs0,	nCs0,	nCs0,	$24
	smpsReturn

EggStation_Call21:
	dc.b		dSnare,	$04,	$08,	nRst,	dKick,	$02,	dKick,	dSnare
	dc.b		$06,	nRst,	$02,	dKick,	$08,	dKick,	dKick,	$04
	dc.b		dSnare,	$02,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		$04,	$02,	nRst,	dSnare,	$08,	dKick,	$04,	dKick
	dc.b		dSnare,	nRst,	dKick,	dKick,	dSnare,	dKick,	nRst,	dKick
	dc.b		dSnare,	dSnare,	$02,	dSnare
	smpsReturn

EggStation_Call22:
	dc.b		dKick,	$04,	dKick,	dSnare,	nRst,	dKick,	dKick,	dSnare
	dc.b		nRst,	dKick,	dKick,	dSnare,	dKick,	$08,	$04,	dSnare
	dc.b		$02,	dSnare,	dSnare,	dSnare,	dSnare,	$04,	$08,	nRst
	dc.b		dKick,	$02,	dKick,	dSnare,	$06,	nRst,	$02,	dKick
	dc.b		$08,	dKick,	dKick,	$04,	dSnare,	$02,	dSnare,	dSnare
	dc.b		dSnare,	dSnare,	dSnare
	smpsReturn

EggStation_Call23:
	dc.b		dKick,	$04,	$02,	nRst,	dSnare,	$08,	dKick,	$04
	dc.b		dKick,	dSnare,	$08,	dKick,	$04,	dKick,	dSnare,	dKick
	dc.b		$08,	$04,	dSnare,	dSnare,	$02,	dSnare
	smpsReturn

EggStation_Call24:
	dc.b		dSnare,	$04,	$08,	nRst,	dKick,	$02,	dKick,	dSnare
	dc.b		$06,	nRst,	$02,	dKick,	$08,	dKick,	dKick,	dKick
	dc.b		$0C,	nRst,	dSnare,	$04,	dSnare,	dSnare,	$02,	dSnare
	dc.b		dSnare,	dSnare
	smpsReturn

EggStation_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$35,$32,$31,$7A,$02,$4D,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 01
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 02
	even
