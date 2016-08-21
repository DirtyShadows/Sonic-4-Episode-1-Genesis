; =============================================================================================
; Project Name:		WhiteParkActIII
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

WhiteParkActIII_Header:
	smpsHeaderVoice	WhiteParkActIII_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	WhiteParkActIII_DAC
	smpsHeaderFM	WhiteParkActIII_FM1,	smpsPitch01hi,	$10
	smpsHeaderFM	WhiteParkActIII_FM2,	smpsPitch00,	$04
	smpsHeaderFM	WhiteParkActIII_FM3,	smpsPitch00,	$04
	smpsHeaderFM	WhiteParkActIII_FM4,	smpsPitch01lo,	$10
	smpsHeaderFM	WhiteParkActIII_FM5,	smpsPitch01lo,	$14
	smpsHeaderPSG	WhiteParkActIII_PSG1,	smpsPitch03lo,	$06,	$00
	smpsHeaderPSG	WhiteParkActIII_PSG2,	smpsPitch03lo,	$06,	$00
	smpsHeaderPSG	WhiteParkActIII_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
WhiteParkActIII_FM1:
	smpsCall	WhiteParkActIII_Call01
	smpsCall	WhiteParkActIII_Call02
	smpsCall	WhiteParkActIII_Call03
	smpsCall	WhiteParkActIII_Call04
	smpsJump	WhiteParkActIII_FM1

; FM2 Data
WhiteParkActIII_FM2:
	smpsCall	WhiteParkActIII_Call05
	smpsCall	WhiteParkActIII_Call06
	smpsCall	WhiteParkActIII_Call07
	smpsCall	WhiteParkActIII_Call08
	smpsJump	WhiteParkActIII_FM2

; FM3 Data
WhiteParkActIII_FM3:
	smpsCall	WhiteParkActIII_Call09
	smpsCall	WhiteParkActIII_Call0A
	smpsCall	WhiteParkActIII_Call0B
	smpsCall	WhiteParkActIII_Call0C
	smpsJump	WhiteParkActIII_FM3

; FM4 Data
WhiteParkActIII_FM4:
	smpsCall	WhiteParkActIII_Call0D
	smpsCall	WhiteParkActIII_Call0E
	smpsCall	WhiteParkActIII_Call0F
	smpsCall	WhiteParkActIII_Call10
	smpsJump	WhiteParkActIII_FM4

; FM5 Data
WhiteParkActIII_FM5:
	smpsCall	WhiteParkActIII_Call11
	smpsCall	WhiteParkActIII_Call12
	smpsCall	WhiteParkActIII_Call13
	smpsCall	WhiteParkActIII_Call14
	smpsJump	WhiteParkActIII_FM5

; PSG1 Data
WhiteParkActIII_PSG1:
	smpsCall	WhiteParkActIII_Call15
	smpsCall	WhiteParkActIII_Call16
	smpsCall	WhiteParkActIII_Call17
	smpsCall	WhiteParkActIII_Call18
	smpsJump	WhiteParkActIII_PSG1

; PSG2 Data
WhiteParkActIII_PSG2:
	smpsCall	WhiteParkActIII_Call19
	smpsCall	WhiteParkActIII_Call1A
	smpsCall	WhiteParkActIII_Call1B
	smpsCall	WhiteParkActIII_Call1C
	smpsJump	WhiteParkActIII_PSG2

; PSG3 Data
WhiteParkActIII_PSG3:
	smpsPSGform	$E7
	smpsCall	WhiteParkActIII_Call1D
	smpsCall	WhiteParkActIII_Call1E
	smpsCall	WhiteParkActIII_Call1F
	smpsCall	WhiteParkActIII_Call20
	smpsJump	WhiteParkActIII_PSG3

; DAC Data
WhiteParkActIII_DAC:
	smpsCall	WhiteParkActIII_Call21
	smpsCall	WhiteParkActIII_Call22
	smpsCall	WhiteParkActIII_Call23
	smpsCall	WhiteParkActIII_Call24
	smpsJump	WhiteParkActIII_DAC

WhiteParkActIII_Call01:
	smpsFMvoice	$00
	dc.b		nD2,	$06,	nRst,	$02,	nD2,	$04,	nA1,	nD2
	dc.b		nC2,	nG2,	nC3,	nG2,	nBb2,	nF2,	nBb1,	nA1
	dc.b		$06,	nRst,	$02,	nC2,	$04,	nC2,	nD2,	$06
	dc.b		nRst,	$02,	nA1,	$04,	nC2,	nD2,	$06,	nRst
	dc.b		$02,	nF2,	$04,	nD2,	nA1,	nC2,	nG1,	nE2
	dc.b		nC2,	$06,	nRst,	$02,	nC3,	$04,	nG2
	smpsReturn

WhiteParkActIII_Call02:
	dc.b		nBb1,	$06,	nRst,	$02,	nF2,	$04,	nBb2,	nF2
	dc.b		$06,	nRst,	$02,	nF2,	$06,	nRst,	$02,	nE2
	dc.b		$06,	nRst,	$02,	nF2,	$04,	nG2,	nC2,	$06
	dc.b		nRst,	$02,	nC2,	$06,	nRst,	$02,	nD2,	$06
	dc.b		nRst,	$02,	nA1,	$04,	nC2,	nD2,	$06,	nRst
	dc.b		$02,	nF2,	$04,	nD2,	nA1,	nC2,	nG1,	nE2
	dc.b		nC2,	$06,	nRst,	$02,	nC3,	$04,	nG2
	smpsReturn

WhiteParkActIII_Call03:
	dc.b		nBb1,	$06,	nRst,	$02,	nF2,	$04,	nBb2,	nF2
	dc.b		$06,	nRst,	$02,	nF2,	$06,	nRst,	$02,	nE2
	dc.b		$06,	nRst,	$02,	nF2,	$04,	nG2,	nC2,	$06
	dc.b		nRst,	$02,	nC2,	$06,	nRst,	$02,	nD2,	$06
	dc.b		nRst,	$02,	nA1,	$04,	nC2,	nA1,	nE2,	nD2
	dc.b		nC2,	nA1,	$06,	nRst,	$02,	nG2,	$04,	nAb2
	dc.b		nA2,	$06,	nRst,	$02,	nG1,	$04,	nAb1
	smpsReturn

WhiteParkActIII_Call04:
	dc.b		nA1,	$06,	nRst,	$02,	nC2,	$04,	nD2,	nEb2
	dc.b		nE2,	nG2,	$06,	nRst,	$02
	smpsReturn

WhiteParkActIII_Call05:
	smpsFMvoice	$02
	dc.b		nD3,	$06,	nRst,	$02,	nD3,	$04,	nA3,	$06
	dc.b		nRst,	$02,	nC3,	$06,	nRst,	$02,	nA3,	$06
	dc.b		nRst,	$02,	nBb2,	$04,	nA3,	$06,	nRst,	$02
	dc.b		nG3,	$06,	nRst,	$02,	nF3,	$04,	nE3,	nD3
	dc.b		$06,	nRst,	$02,	nD3,	$04,	nG3,	nA3,	$14
	dc.b		nC4,	$0C,	nG3,	$10
	smpsReturn

WhiteParkActIII_Call06:
	dc.b		nD3,	$06,	nRst,	$02,	nD3,	$04,	nG3,	nA3
	dc.b		$06,	nRst,	$02,	nC4,	$08,	nG3,	$1A,	nRst
	dc.b		$06,	nD3,	nRst,	$02,	nD3,	$04,	nG3,	nA3
	dc.b		$14,	nC4,	$0C,	nG3,	$10
	smpsReturn

WhiteParkActIII_Call07:
	dc.b		nD3,	$06,	nRst,	$02,	nD3,	$04,	nG3,	nA3
	dc.b		$06,	nRst,	$02,	nC4,	$08,	nG3,	$1A,	nRst
	dc.b		$06,	nD3,	nRst,	$02,	nG3,	$04,	nA3,	nD3
	dc.b		nF3,	nG3,	nA3,	nC4,	$10,	nE4
	smpsReturn

WhiteParkActIII_Call08:
	dc.b		nG4,	$14,	nF4,	$08,	nE4,	$04
	smpsReturn

WhiteParkActIII_Call09:
	smpsFMvoice	$04
	dc.b		nA4,	$06,	nRst,	$02,	nA4,	$04,	nD5,	$06
	dc.b		nRst,	$02,	nG4,	$06,	nRst,	$02,	nC5,	$06
	dc.b		nRst,	$02,	nF4,	$04,	nD5,	$06,	nRst,	$02
	dc.b		nBb4,	$06,	nRst,	$02,	nC5,	$04,	nG4,	nA4
	dc.b		$06,	nRst,	$02,	nA4,	$04,	nC5,	nD5,	$14
	dc.b		nF5,	$0C,	nE5,	$10
	smpsReturn

WhiteParkActIII_Call0A:
	dc.b		nBb4,	$06,	nRst,	$02,	nBb4,	$04,	nC5,	nD5
	dc.b		$06,	nRst,	$02,	nF5,	$08,	nC5,	$1A,	nRst
	dc.b		$06,	nA4,	nRst,	$02,	nA4,	$04,	nC5,	nD5
	dc.b		$14,	nF5,	$0C,	nE5,	$10
	smpsReturn

WhiteParkActIII_Call0B:
	dc.b		nBb4,	$06,	nRst,	$02,	nBb4,	$04,	nC5,	nD5
	dc.b		$06,	nRst,	$02,	nF5,	$08,	nC5,	$1A,	nRst
	dc.b		$06,	nA4,	nRst,	$02,	nC5,	$04,	nD5,	nG4
	dc.b		nA4,	nC5,	nD5,	nE5,	$10,	nG5
	smpsReturn

WhiteParkActIII_Call0C:
	dc.b		nC6,	$14,	nG5,	$08,	nA5,	$04
	smpsReturn

WhiteParkActIII_Call0D:
	smpsFMvoice	$01
	dc.b		nD4,	$0C,	nA3,	$08,	nC4,	nG4,	nBb3,	$04
	dc.b		nC4,	nD4,	nE4,	$08,	nF4,	$04,	nG4,	nD4
	dc.b		$0E,	nRst,	$02,	nD4,	$0A,	nRst,	$02,	nF4
	dc.b		$08,	nC4,	$0A,	nRst,	$02,	nC4,	$0C,	nF4
	dc.b		$04
	smpsReturn

WhiteParkActIII_Call0E:
	dc.b		nBb3,	$0E,	nRst,	$02,	nBb3,	$0A,	nRst,	$02
	dc.b		nD4,	$04,	nA3,	$0A,	nRst,	$02,	nG3,	$08
	dc.b		nF3,	nE3,	$04,	nD4,	$0E,	nRst,	$02,	nD4
	dc.b		$0A,	nRst,	$02,	nF4,	$08,	nC4,	$0A,	nRst
	dc.b		$02,	nC4,	$0C,	nF4,	$04
	smpsReturn

WhiteParkActIII_Call0F:
	dc.b		nBb3,	$0E,	nRst,	$02,	nBb3,	$0A,	nRst,	$02
	dc.b		nD4,	$04,	nA3,	$0A,	nRst,	$02,	nG3,	$08
	dc.b		nF3,	nE3,	$04,	nD4,	$10,	nA3,	$0E,	nRst
	dc.b		$02,	nC4,	$0E,	nRst,	$02,	nA3,	$0E,	nRst
	dc.b		$02
	smpsReturn

WhiteParkActIII_Call10:
	dc.b		nG3,	$08,	nAb3,	nA3,	nC4
	smpsReturn

WhiteParkActIII_Call11:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$01
	dc.b		nD4,	$0C,	nA3,	$08,	nC4,	nG4,	nBb3,	$04
	dc.b		nC4,	nD4,	nE4,	$08,	nF4,	$04,	nG4,	nD4
	dc.b		$0E,	nRst,	$02,	nD4,	$0A,	nRst,	$02,	nF4
	dc.b		$08,	nC4,	$0A,	nRst,	$02,	nC4,	$0C
	smpsReturn

WhiteParkActIII_Call12:
	dc.b		nF4,	$04,	nBb3,	$0E,	nRst,	$02,	nBb3,	$0A
	dc.b		nRst,	$02,	nD4,	$04,	nA3,	$0A,	nRst,	$02
	dc.b		nG3,	$08,	nF3,	nE3,	$04,	nD4,	$0E,	nRst
	dc.b		$02,	nD4,	$0A,	nRst,	$02,	nF4,	$08,	nC4
	dc.b		$0A,	nRst,	$02,	nC4,	$0C
	smpsReturn

WhiteParkActIII_Call13:
	dc.b		nF4,	$04,	nBb3,	$0E,	nRst,	$02,	nBb3,	$0A
	dc.b		nRst,	$02,	nD4,	$04,	nA3,	$0A,	nRst,	$02
	dc.b		nG3,	$08,	nF3,	nE3,	$04,	nD4,	$10,	nA3
	dc.b		$0E,	nRst,	$02,	nC4,	$0E,	nRst,	$02,	nA3
	dc.b		$0C
	smpsReturn

WhiteParkActIII_Call14:
	dc.b		smpsNoAttack,	$02,	nRst,	nG3,	$08,	nAb3,	nA3,	nC4
	dc.b		$04
	smpsReturn

WhiteParkActIII_Call15:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$00
	dc.b		nD3,	$06,	nRst,	$02,	nD3,	$04,	nA3,	$06
	dc.b		nRst,	$02,	nC3,	$06,	nRst,	$02,	nA3,	$06
	dc.b		nRst,	$02,	nBb2,	$04,	nA3,	$06,	nRst,	$02
	dc.b		nG3,	$06,	nRst,	$02,	nF3,	$04,	nE3,	nD3
	dc.b		$06,	nRst,	$02,	nD3,	$04,	nG3,	nA3,	$14
	dc.b		nC4,	$0C,	nG3
	smpsReturn

WhiteParkActIII_Call16:
	dc.b		smpsNoAttack,	$04,	nD3,	$06,	nRst,	$02,	nD3,	$04
	dc.b		nG3,	nA3,	$06,	nRst,	$02,	nC4,	$08,	nG3
	dc.b		$1A,	nRst,	$06,	nD3,	nRst,	$02,	nD3,	$04
	dc.b		nG3,	nA3,	$14,	nC4,	$0C,	nG3
	smpsReturn

WhiteParkActIII_Call17:
	dc.b		smpsNoAttack,	$04,	nD3,	$06,	nRst,	$02,	nD3,	$04
	dc.b		nG3,	nA3,	$06,	nRst,	$02,	nC4,	$08,	nG3
	dc.b		$1A,	nRst,	$06,	nD3,	nRst,	$02,	nG3,	$04
	dc.b		nA3,	nD3,	nF3,	nG3,	nA3,	nC4,	$10,	nE4
	dc.b		$0C
	smpsReturn

WhiteParkActIII_Call18:
	dc.b		smpsNoAttack,	$04,	nG4,	$14,	nF4,	$08
	smpsReturn

WhiteParkActIII_Call19:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$00
	dc.b		nA4,	$06,	nRst,	$02,	nA4,	$04,	nD5,	$06
	dc.b		nRst,	$02,	nG4,	$06,	nRst,	$02,	nC5,	$06
	dc.b		nRst,	$02,	nF4,	$04,	nD5,	$06,	nRst,	$02
	dc.b		nBb4,	$06,	nRst,	$02,	nC5,	$04,	nG4,	nA4
	dc.b		$06,	nRst,	$02,	nA4,	$04,	nC5,	nD5,	$14
	dc.b		nF5,	$0C,	nE5
	smpsReturn

WhiteParkActIII_Call1A:
	dc.b		smpsNoAttack,	$04,	nBb4,	$06,	nRst,	$02,	nBb4,	$04
	dc.b		nC5,	nD5,	$06,	nRst,	$02,	nF5,	$08,	nC5
	dc.b		$1A,	nRst,	$06,	nA4,	nRst,	$02,	nA4,	$04
	dc.b		nC5,	nD5,	$14,	nF5,	$0C,	nE5
	smpsReturn

WhiteParkActIII_Call1B:
	dc.b		smpsNoAttack,	$04,	nBb4,	$06,	nRst,	$02,	nBb4,	$04
	dc.b		nC5,	nD5,	$06,	nRst,	$02,	nF5,	$08,	nC5
	dc.b		$1A,	nRst,	$06,	nA4,	nRst,	$02,	nC5,	$04
	dc.b		nD5,	nG4,	nA4,	nC5,	nD5,	nE5,	$10,	nG5
	dc.b		$0C
	smpsReturn

WhiteParkActIII_Call1C:
	dc.b		smpsNoAttack,	$04,	nC6,	$14,	nG5,	$08
	smpsReturn

WhiteParkActIII_Call1D:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nCs0
	smpsReturn

WhiteParkActIII_Call1E:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nCs0
	smpsReturn

WhiteParkActIII_Call1F:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	$08,	nCs0,	$04,	nCs0,	nRst,	$08
	dc.b		nCs0,	$04,	nCs0
	smpsReturn

WhiteParkActIII_Call20:
	dc.b		nRst,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nRst,	$0C
	smpsReturn

WhiteParkActIII_Call21:
	dc.b		dKick,	$04,	nRst,	dKick,	dSnare,	dSnare,	dKick,	dKick
	dc.b		dSnare,	dSnare,	dKick,	dSnare,	dSnare,	dKick,	nRst,	dSnare
	dc.b		dSnare,	dKick,	nRst,	dKick,	dSnare,	$08,	dKick,	$04
	dc.b		dKick,	dSnare,	nRst,	dKick,	dKick,	dSnare,	dKick,	nRst
	dc.b		dKick,	dSnare
	smpsReturn

WhiteParkActIII_Call22:
	dc.b		dKick,	$04,	nRst,	dKick,	dSnare,	$08,	dKick,	$04
	dc.b		dKick,	dSnare,	dKick,	$08,	$04,	dSnare,	dKick,	dSnare
	dc.b		dSnare,	nRst,	dKick,	$08,	$04,	dSnare,	nRst,	dKick
	dc.b		dKick,	dSnare,	nRst,	dKick,	dKick,	dSnare,	dKick,	nRst
	dc.b		dKick,	dSnare
	smpsReturn

WhiteParkActIII_Call23:
	dc.b		dKick,	$04,	nRst,	dKick,	dSnare,	$08,	dKick,	$04
	dc.b		dKick,	dSnare,	dKick,	$08,	$04,	dSnare,	dKick,	dSnare
	dc.b		dSnare,	nRst,	dKick,	$08,	$04,	dSnare,	nRst,	dKick
	dc.b		dKick,	dSnare,	dKick,	nRst,	dKick,	dSnare,	dKick,	nRst
	dc.b		dKick,	dSnare
	smpsReturn

WhiteParkActIII_Call24:
	dc.b		dKick,	$08,	$04,	dSnare,	dKick,	dSnare,	dSnare,	nRst
	smpsReturn

WhiteParkActIII_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 01
	dc.b		$3A,$32,$71,$72,$41,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00
	dc.b		$01,$03,$03,$03,$07,$1E,$1E,$14,$15;			Voice 02
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$0C;			Voice 03
	dc.b		$3D,$01,$21,$51,$01,$12,$14,$14,$0F,$0A,$05,$05,$05,$00,$00,$00
	dc.b		$00,$2B,$2B,$2B,$1B,$19,$0E,$0E,$0E;			Voice 04
	dc.b		$38,$33,$01,$51,$01,$10,$13,$1A,$1B,$0F,$1F,$1F,$1F,$01,$01,$01
	dc.b		$01,$33,$03,$03,$08,$16,$1A,$19,$10;			Voice 05
	even
