; =============================================================================================
; Project Name:		SplashHillAct2
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SplashHillAct2_Header:
	smpsHeaderVoice	SplashHillAct2_Voices
	smpsHeaderChan	$05,	$02
	smpsHeaderTempo	$02,	$05

	smpsHeaderDAC	SplashHillAct2_DAC
	smpsHeaderFM	SplashHillAct2_FM1,	smpsPitch00,	$10
	smpsHeaderFM	SplashHillAct2_FM2,	smpsPitch01lo,	$10
	smpsHeaderFM	SplashHillAct2_FM3,	smpsPitch01lo,	$10
	smpsHeaderFM	SplashHillAct2_FM4,	smpsPitch01lo,	$10
	smpsHeaderPSG	SplashHillAct2_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	SplashHillAct2_PSG2,	smpsPitch03lo,	$02,	$00

; FM1 Data
SplashHillAct2_FM1:
	smpsCall	SplashHillAct2_Call01
	smpsCall	SplashHillAct2_Call01
	smpsCall	SplashHillAct2_Call02
	smpsCall	SplashHillAct2_Call03
	smpsCall	SplashHillAct2_Call04
	smpsCall	SplashHillAct2_Call05
	smpsCall	SplashHillAct2_Call06
	smpsJump	SplashHillAct2_FM1

; FM2 Data
SplashHillAct2_FM2:
	smpsCall	SplashHillAct2_Call07
	smpsCall	SplashHillAct2_Call07
	smpsCall	SplashHillAct2_Call08
	smpsCall	SplashHillAct2_Call09
	smpsCall	SplashHillAct2_Call0A
	smpsCall	SplashHillAct2_Call0B
	smpsCall	SplashHillAct2_Call0C
	smpsJump	SplashHillAct2_FM2

; FM3 Data
SplashHillAct2_FM3:
	smpsCall	SplashHillAct2_Call0D
	smpsCall	SplashHillAct2_Call0E
	smpsCall	SplashHillAct2_Call0F
	smpsCall	SplashHillAct2_Call0F
	smpsCall	SplashHillAct2_Call10
	smpsCall	SplashHillAct2_Call11
	smpsCall	SplashHillAct2_Call12
	smpsJump	SplashHillAct2_FM3

; FM4 Data
SplashHillAct2_FM4:
	smpsCall	SplashHillAct2_Call13
	smpsCall	SplashHillAct2_Call14
	smpsCall	SplashHillAct2_Call15
	smpsCall	SplashHillAct2_Call15
	smpsCall	SplashHillAct2_Call16
	smpsCall	SplashHillAct2_Call17
	smpsCall	SplashHillAct2_Call18
	smpsJump	SplashHillAct2_FM4

; PSG1 Data
SplashHillAct2_PSG1:
	smpsCall	SplashHillAct2_Call19
	smpsCall	SplashHillAct2_Call19
	smpsCall	SplashHillAct2_Call1A
	smpsCall	SplashHillAct2_Call1B
	smpsCall	SplashHillAct2_Call1C
	smpsCall	SplashHillAct2_Call1B
	smpsCall	SplashHillAct2_Call1D
	smpsJump	SplashHillAct2_PSG1

; PSG2 Data
SplashHillAct2_PSG2:
	smpsPSGform	$E7
	smpsCall	SplashHillAct2_Call1E
	smpsCall	SplashHillAct2_Call1F
	smpsCall	SplashHillAct2_Call20
	smpsCall	SplashHillAct2_Call21
	smpsCall	SplashHillAct2_Call22
	smpsCall	SplashHillAct2_Call23
	smpsCall	SplashHillAct2_Call24
	smpsJump	SplashHillAct2_PSG2

; DAC Data
SplashHillAct2_DAC:
	smpsCall	SplashHillAct2_Call25
	smpsCall	SplashHillAct2_Call26
	smpsCall	SplashHillAct2_Call27
	smpsCall	SplashHillAct2_Call28
	smpsCall	SplashHillAct2_Call29
	smpsCall	SplashHillAct2_Call2A
	smpsCall	SplashHillAct2_Call2B
	smpsJump	SplashHillAct2_DAC

SplashHillAct2_Call01:
	smpsFMvoice	$00
	dc.b		nC3,	$10,	nB2,	$0C,	$04,	nA2,	$0C,	$04
	dc.b		nG2,	$0C,	$04,	nF2,	nF3,	nF2,	nF3,	nF2
	dc.b		nF3,	nF2,	nF3,	nG2,	nG3,	nG2,	nG3,	nG2
	dc.b		nG3,	nG2,	nG3
	smpsReturn

SplashHillAct2_Call02:
	dc.b		nF2,	$04,	nF2,	nC3,	nC3,	nA2,	nA2,	nG2
	dc.b		nE2,	nE2,	nE2,	nB2,	nB2,	nG2,	nG2,	nE2
	dc.b		nE2,	nD3,	nD3,	nA2,	$08,	nB2,	$04,	nB2
	dc.b		nG3,	nF3,	$08,	$04,	nE3,	$02,	nE3,	nE3
	dc.b		$04,	nD3,	nD3,	nC3,	nC3
	smpsReturn

SplashHillAct2_Call03:
	dc.b		nF2,	$04,	nF2,	nC3,	nC3,	nA2,	nA2,	nG2
	dc.b		nE2,	nE2,	nE2,	nB2,	nB2,	nG2,	nG2,	nE2
	dc.b		nE2,	nD3,	nD3,	nC3,	nC3,	nB2,	nB2,	nA2
	dc.b		nA2,	nA3,	nA3,	nG3,	nG3,	nFs3,	nE3,	nD3
	dc.b		nG2
	smpsReturn

SplashHillAct2_Call04:
	dc.b		nG2,	$04,	nG2,	nC3,	nC3,	nB2,	nC3,	nD3
	dc.b		nG3,	$08,	nG2,	nG2,	$04,	nRst,	$10,	nC2
	dc.b		$04,	nC3,	nC2,	nC3,	nC2,	nC3,	nC2,	nD2
	dc.b		nE2,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2,	nG2
	smpsReturn

SplashHillAct2_Call05:
	dc.b		nF2,	$04,	nF3,	nF2,	nF3,	nF2,	nF3,	nFs2
	dc.b		nG2,	nG2,	nE2,	nF2,	nG2,	nF2,	nE2,	nD2
	dc.b		nC2,	nA1,	nA2,	nA1,	nA2,	nA1,	nB1,	nC2
	dc.b		nD2,	nE2,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2
	dc.b		nG2
	smpsReturn

SplashHillAct2_Call06:
	dc.b		nF2,	$04,	nF3,	nF2,	nF3,	nF2,	nF3,	nF2
	dc.b		nFs2,	nG2,	$08,	nF2,	nG2,	$04,	nF2,	nE2
	dc.b		nD2,	nF2,	nC2,	nF2,	nG2,	nRst,	nD2,	nRst
	dc.b		nC2,	nRst,	nC2,	nE2,	nRst,	nF2,	nRst,	nFs2
	dc.b		nG2
	smpsReturn

SplashHillAct2_Call07:
	smpsFMvoice	$01
	dc.b		nG4,	$10,	nC5,	$08,	nB4,	$04,	nG4,	nRst
	dc.b		nG4,	nD5,	nRst,	nC5,	nRst,	nG4,	nRst,	nB4
	dc.b		$08,	nC5,	$04,	nA4,	$10,	nRst,	$24
	smpsReturn

SplashHillAct2_Call08:
	dc.b		nF5,	$10,	nA5,	$08,	nG5,	$04,	nE5,	$14
	dc.b		nRst,	$04,	nE5,	nF5,	nG5,	nF5,	$08,	nE5
	dc.b		nD5,	nC5,	$04,	nD5,	$08,	nE5,	$04,	nD5
	dc.b		nE5,	$08,	nC5,	$04,	nD5,	nE5
	smpsReturn

SplashHillAct2_Call09:
	dc.b		nF5,	$10,	nA5,	$08,	nG5,	$04,	nE5,	$14
	dc.b		nRst,	$04,	nE5,	nF5,	nG5,	nFs5,	$30,	nA5
	dc.b		$04,	nG5,	nFs5,	nG5
	smpsReturn

SplashHillAct2_Call0A:
	dc.b		smpsNoAttack,	$2E,	nRst,	$02,	$10,	nE5,	$08,	nC6
	dc.b		nG5,	nE5,	$04,	nG5,	$08,	nG5,	nE5,	nC5
	dc.b		$04,	nD5,	nE5
	smpsReturn

SplashHillAct2_Call0B:
	dc.b		nC5,	$08,	$04,	$08,	$04,	nE5,	nB4,	$24
	dc.b		nE5,	$08,	nC6,	nG5,	nE5,	$04,	nG5,	$08
	dc.b		nG5,	nE5,	nC5,	$04,	nD5,	nE5
	smpsReturn

SplashHillAct2_Call0C:
	dc.b		nC5,	$08,	$04,	$08,	$04,	nE5,	nB4,	$24
	dc.b		nF5,	$04,	nG5,	nA5,	nG5,	nRst,	nE5,	nRst
	dc.b		nG5,	$24
	smpsReturn

SplashHillAct2_Call0D:
	dc.b		nRst,	$40
	smpsFMvoice	$01
	dc.b		nG5,	$0C,	nF5,	$10,	nRst,	$24
	smpsReturn

SplashHillAct2_Call0E:
	dc.b		smpsNoAttack,	$40,	nG5,	$0C,	nF5,	$10,	nRst,	$24
	smpsReturn

SplashHillAct2_Call0F:
	dc.b		nF4,	$10,	nRst,	$0C,	nE4,	$14,	nRst,	$50
	smpsReturn

SplashHillAct2_Call10:
	dc.b		smpsNoAttack,	$40,	nE4,	$10,	nD4,	$08,	nC4,	$04
	dc.b		nE4,	$08,	nD4,	nC4,	nG3,	$04,	nA3,	nD4
	smpsReturn

SplashHillAct2_Call11:
	dc.b		nC4,	$08,	nB3,	$04,	nA3,	$08,	$04,	nG3
	dc.b		nB3,	$24,	nE4,	$08,	nE4,	nD4,	nC4,	$04
	dc.b		nE4,	$08,	nD4,	nC4,	nG3,	$04,	nA3,	nD4
	smpsReturn

SplashHillAct2_Call12:
	dc.b		nC4,	$08,	nB3,	$04,	nA3,	$08,	$04,	nG3
	dc.b		nB3,	$24,	nF4,	$04,	nF4,	nA4,	nG4,	nRst
	dc.b		nD4,	nRst,	nE4,	$24
	smpsReturn

SplashHillAct2_Call13:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

SplashHillAct2_Call14:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

SplashHillAct2_Call15:
	smpsFMvoice	$01
	dc.b		nA5,	$10,	nC6,	$08,	nB5,	$04,	nG5,	$14
	dc.b		nRst,	$50
	smpsReturn

SplashHillAct2_Call16:
	dc.b		smpsNoAttack,	$40,	nG5,	$08,	nG5,	nB5,	nG5,	$04
	dc.b		nC6,	$08,	nB5,	nG5,	nE5,	$04,	nF5,	nG5
	smpsReturn

SplashHillAct2_Call17:
	dc.b		nG5,	$08,	nA5,	$04,	nG5,	$08,	nRst,	nD5
	dc.b		$24,	nG5,	$08,	nG5,	nB5,	nG5,	$04,	nC6
	dc.b		$08,	nB5,	nG5,	nE5,	$04,	nF5,	nG5
	smpsReturn

SplashHillAct2_Call18:
	dc.b		nG5,	$08,	nA5,	$04,	nG5,	$08,	nRst,	nD5
	dc.b		$24,	nA5,	$04,	nB5,	nC6,	nB5,	nRst,	nG5
	dc.b		nRst,	nC6,	$24
	smpsReturn

SplashHillAct2_Call19:
	dc.b		nRst,	$60
	smpsPSGvoice	$01
	dc.b		nG4,	$02,	nA4,	nB4,	nC5,	nB4,	nC5,	nD5
	dc.b		nE5,	nD5,	nE5,	nF5,	nG5,	nF5,	nG5,	nA5
	dc.b		nB5
	smpsReturn

SplashHillAct2_Call1A:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

SplashHillAct2_Call1B:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

SplashHillAct2_Call1C:
	dc.b		smpsNoAttack,	$20
	smpsPSGvoice	$01
	dc.b		nG4,	$02,	nA4,	nB4,	nC5,	nB4,	nC5,	nD5
	dc.b		nE5,	nD5,	nE5,	nF5,	nG5,	nF5,	nG5,	nA5
	dc.b		nB5,	nRst,	$40
	smpsReturn

SplashHillAct2_Call1D:
	dc.b		smpsNoAttack,	$60
	smpsPSGvoice	$01
	dc.b		nG4,	$02,	nA4,	nB4,	nC5,	nB4,	nC5,	nD5
	dc.b		nE5,	nD5,	nE5,	nF5,	nG5,	nF5,	nG5,	nA5
	dc.b		nB5
	smpsReturn

SplashHillAct2_Call1E:
	dc.b		nRst,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$08,	$04,	nRst,	nCs0,	nCs0,	nRst
	dc.b		nCs0,	nRst,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	$08
	dc.b		nCs0,	nCs0,	nCs0,	$04,	nRst,	nCs0,	$08,	nCs0
	dc.b		nCs0,	nCs0,	$04,	nRst,	nCs0
	smpsReturn

SplashHillAct2_Call1F:
	dc.b		nRst,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$08,	$04,	nRst,	nCs0,	nCs0,	nRst
	dc.b		nCs0,	nRst,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst
	dc.b		nCs0,	$08,	nCs0,	nCs0,	$04,	nRst,	nCs0,	$08
	dc.b		nCs0,	nCs0,	nCs0,	$04,	nRst,	nCs0
	smpsReturn

SplashHillAct2_Call20:
	dc.b		nRst,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	$07
	dc.b		$05,	$04,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	$08
	dc.b		$04,	nCs0,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

SplashHillAct2_Call21:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	$08
	dc.b		$04,	nCs0,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0
	smpsReturn

SplashHillAct2_Call22:
	dc.b		nRst,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nRst,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	$08
	dc.b		nCs0,	nCs0,	nCs0,	$04,	nRst,	nCs0,	$08,	nCs0
	dc.b		nCs0,	nCs0,	$04,	nRst,	nCs0
	smpsReturn

SplashHillAct2_Call23:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	nCs0,	nCs0,	$04,	nRst,	nCs0,	$08
	dc.b		nCs0,	nCs0,	nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0
	dc.b		$08,	nCs0,	nCs0,	$04,	nRst,	nCs0,	$08,	nCs0
	dc.b		nCs0,	nCs0,	$04,	nRst,	nCs0
	smpsReturn

SplashHillAct2_Call24:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	nCs0,	nCs0,	$04,	nRst,	nCs0,	$08
	dc.b		nCs0,	nCs0,	nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	$08,	$04,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	$08,	$04,	nCs0,	nCs0
	smpsReturn

SplashHillAct2_Call25:
	dc.b		dKick,	$0C,	$04,	dSnare,	nRst,	$08,	dSnare,	$04
	dc.b		dKick,	dSnare,	nRst,	dKick,	dSnare,	$08,	dSnare,	dKick
	dc.b		dSnare,	dKick,	$04,	dKick,	dSnare,	$08,	dKick,	dSnare
	dc.b		dKick,	$04,	dSnare,	dSnare,	dSnare
	smpsReturn

SplashHillAct2_Call26:
	dc.b		dKick,	$0C,	$04,	dSnare,	nRst,	$08,	dSnare,	$04
	dc.b		dKick,	dSnare,	nRst,	dKick,	dSnare,	$08,	$04,	dSnare
	dc.b		dKick,	$08,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	dc.b		dKick,	dSnare,	dKick,	$04,	dSnare,	dSnare,	dSnare
	smpsReturn

SplashHillAct2_Call27:
	dc.b		dKick,	$08,	dSnare,	$04,	nRst,	$08,	dKick,	$04
	dc.b		dSnare,	$08,	dKick,	dSnare,	$04,	dKick,	$08,	$04
	dc.b		dSnare,	$08,	dKick,	dSnare,	$04,	nRst,	$08,	dKick
	dc.b		$04,	dSnare,	dKick,	nRst,	dKick,	dSnare,	dKick,	dKick
	dc.b		$08,	dSnare
	smpsReturn

SplashHillAct2_Call28:
	dc.b		dKick,	$08,	dSnare,	$04,	nRst,	$08,	dKick,	$04
	dc.b		dSnare,	dKick,	nRst,	dKick,	dSnare,	dKick,	$08,	$04
	dc.b		dSnare,	$08,	dKick,	dSnare,	$04,	nRst,	$08,	dKick
	dc.b		$04,	dSnare,	dKick,	nRst,	dKick,	dSnare,	dKick,	dKick
	dc.b		$08,	dSnare,	$04,	dKick
	smpsReturn

SplashHillAct2_Call29:
	dc.b		dKick,	$04,	dKick,	dSnare,	nRst,	dKick,	dKick,	dSnare
	dc.b		dKick,	nRst,	dSnare,	dSnare,	dSnare,	nRst,	dKick,	dSnare
	dc.b		$08,	dKick,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	dc.b		dKick,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	smpsReturn

SplashHillAct2_Call2A:
	dc.b		dKick,	$08,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	dc.b		dKick,	dSnare,	dKick,	$04,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		$08,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08,	dKick
	dc.b		dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	smpsReturn

SplashHillAct2_Call2B:
	dc.b		dKick,	$08,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	dc.b		dKick,	dSnare,	dKick,	$04,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		dSnare,	nRst,	$08,	$04,	dKick,	dSnare,	dKick,	nRst
	dc.b		dKick,	dSnare,	$08,	dKick,	$04,	dSnare,	dSnare,	dSnare
	smpsReturn

SplashHillAct2_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$35,$32,$31,$7A,$02,$8D,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 01
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 02
	even
