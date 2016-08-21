; =============================================================================================
; Project Name:		Menu
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Menu_Header:
	smpsHeaderVoice	Menu_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	Menu_DAC
	smpsHeaderFM	Menu_FM1,	smpsPitch00,	$10
	smpsHeaderFM	Menu_FM2,	smpsPitch01lo,	$18
	smpsHeaderFM	Menu_FM3,	smpsPitch01lo,	$18
	smpsHeaderFM	Menu_FM4,	smpsPitch02lo,	$10
	smpsHeaderFM	Menu_FM5,	smpsPitch02lo,	$10
	smpsHeaderPSG	Menu_PSG1,	smpsPitch04lo,	$04,	$00
	smpsHeaderPSG	Menu_PSG2,	smpsPitch04lo,	$04,	$00
	smpsHeaderPSG	Menu_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
Menu_FM1:
	smpsCall	Menu_Call01
	smpsCall	Menu_Call02
	smpsCall	Menu_Call03
	smpsCall	Menu_Call03
	smpsJump	Menu_FM1

; FM2 Data
Menu_FM2:
	smpsCall	Menu_Call04
	smpsCall	Menu_Call05
	smpsCall	Menu_Call06
	smpsCall	Menu_Call06
	smpsJump	Menu_FM2

; FM3 Data
Menu_FM3:
	smpsCall	Menu_Call07
	smpsCall	Menu_Call08
	smpsCall	Menu_Call09
	smpsCall	Menu_Call09
	smpsJump	Menu_FM3

; FM4 Data
Menu_FM4:
	smpsCall	Menu_Call0A
	smpsCall	Menu_Call0B
	smpsCall	Menu_Call0C
	smpsCall	Menu_Call0C
	smpsJump	Menu_FM4

; FM5 Data
Menu_FM5:
	smpsCall	Menu_Call0D
	smpsCall	Menu_Call0E
	smpsCall	Menu_Call0F
	smpsCall	Menu_Call0F
	smpsJump	Menu_FM5

; PSG1 Data
Menu_PSG1:
	smpsCall	Menu_Call10
	smpsCall	Menu_Call11
	smpsCall	Menu_Call12
	smpsCall	Menu_Call13
	smpsJump	Menu_PSG1

; PSG2 Data
Menu_PSG2:
	smpsCall	Menu_Call14
	smpsCall	Menu_Call15
	smpsCall	Menu_Call16
	smpsCall	Menu_Call16
	smpsJump	Menu_PSG2

; PSG3 Data
Menu_PSG3:
	smpsPSGform	$E7
	smpsCall	Menu_Call17
	smpsCall	Menu_Call18
	smpsCall	Menu_Call19
	smpsCall	Menu_Call19
	smpsJump	Menu_PSG3

; DAC Data
Menu_DAC:
	smpsCall	Menu_Call1A
	smpsCall	Menu_Call1B
	smpsCall	Menu_Call1C
	smpsCall	Menu_Call1C
	smpsJump	Menu_DAC

Menu_Call01:
	smpsFMvoice	$00
	dc.b		nC3,	$04,	nRst,	nC3,	$08,	nB2,	$04,	nRst
	dc.b		nB2,	$08,	nA2,	$04,	nRst,	nA2,	$08,	nG2
	dc.b		$04,	nRst,	nG2,	$08,	nF3,	$04,	nRst,	nF3
	dc.b		$08,	nC3,	$04,	nRst,	nC3,	$08,	nD3,	$04
	dc.b		nRst,	nD3,	$08,	nG2,	$02,	nRst,	nG2,	$04
	dc.b		nA2,	nB2
	smpsReturn

Menu_Call02:
	dc.b		nC3,	$04,	nRst,	nC3,	$08,	nB2,	$04,	nRst
	dc.b		nB2,	$08,	nA2,	$04,	nRst,	nA2,	$08,	nG2
	dc.b		$04,	nRst,	nG2,	$08,	nF3,	$04,	nRst,	nF3
	dc.b		$08,	nC3,	$04,	nRst,	nC3,	$08,	nD3,	$04
	dc.b		nRst,	nD3,	$08,	nG2,	$02,	nRst,	nG2,	$04
	dc.b		nA2,	nB2
	smpsReturn

Menu_Call03:
	dc.b		nF2,	$02,	nRst,	nF2,	$08,	nC3,	$04,	nRst
	dc.b		nC3,	$06,	nRst,	$02,	nC3,	$04,	nG2,	$02
	dc.b		nRst,	nG2,	$08,	nA2,	$04,	nRst,	nA2,	nB2
	dc.b		nC3,	nF2,	$02,	nRst,	nF2,	$08,	nC3,	$04
	dc.b		nRst,	nE3,	nB2,	nC3,	nB2,	$02,	nRst,	nG2
	dc.b		$08,	nC3,	$04,	nRst,	nF3,	nE3,	nC3
	smpsReturn

Menu_Call04:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$01
	dc.b		nG5,	$02,	nA5,	nG5,	nRst,	nC6,	nRst,	nD6
	dc.b		$06,	nC6,	$02,	nRst,	$0C,	nC5,	$02,	nA5
	dc.b		nG5,	nRst,	nC6,	nRst,	nD6,	$06,	nC6,	$02
	dc.b		nRst,	$04,	nG5,	nA5,	$06,	nE6,	$02,	nRst
	dc.b		$04,	nC6,	nG6,	$06,	nC6,	$02,	nRst,	$04
	dc.b		nE6,	nA5,	$0C,	nB5,	$02,	nRst,	$06,	nB5
	dc.b		$04,	nG5,	$08
	smpsReturn

Menu_Call05:
	dc.b		nRst,	$04,	nG5,	$02,	nA5,	nG5,	nRst,	nC6
	dc.b		nRst,	nD6,	$06,	nG5,	$02,	nRst,	$0C,	nC5
	dc.b		$02,	nA5,	nC6,	nRst,	nC6,	nRst,	nD6,	$06
	dc.b		nE6,	$02,	nRst,	$04,	nC6,	nF6,	$06,	nE6
	dc.b		$02,	nRst,	$04,	nC6,	nG5,	$06,	nF6,	$02
	dc.b		nRst,	$04,	nE6,	nA5,	$0C,	nB5,	$02,	nRst
	dc.b		$06,	nB5,	$04,	nG5,	$08
	smpsReturn

Menu_Call06:
	dc.b		nA6,	$04,	nG6,	nD6,	nC6,	$08,	$04,	nB5
	dc.b		nE6,	nB5,	$0C,	nA5,	$10,	nRst,	$04,	nC6
	dc.b		nB5,	nF6,	nE6,	$08,	nC6,	$04,	nD6,	nA5
	dc.b		nD6,	$0C,	nC6,	nRst,	$08
	smpsReturn

Menu_Call07:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$01
	dc.b		nC5,	$02,	nE5,	nC6,	nRst,	nG5,	nRst,	nB5
	dc.b		$06,	nG5,	$02,	nRst,	$0C,	nG5,	$02,	nE5
	dc.b		nC6,	nRst,	nG5,	nRst,	nB5,	$06,	nE6,	$02
	dc.b		nRst,	$04,	nC6,	nF6,	$06,	nC6,	$02,	nRst
	dc.b		$04,	nA5,	nG5,	$06,	nF6,	$02,	nRst,	$04
	dc.b		nG5,	nD6,	$14,	nRst,	$0C
	smpsReturn

Menu_Call08:
	dc.b		smpsNoAttack,	$04,	nC5,	$02,	nE5,	nC6,	nRst,	nG5
	dc.b		nRst,	nB5,	$06,	nC6,	$02,	nRst,	$0C,	nG5
	dc.b		$02,	nE5,	nG5,	nRst,	nG5,	nRst,	nB5,	$06
	dc.b		nC6,	$02,	nRst,	$04,	nG5,	nA5,	$06,	nC6
	dc.b		$02,	nRst,	$04,	nA5,	nG6,	$06,	nC6,	$02
	dc.b		nRst,	$04,	nG5,	nD6,	$14,	nRst,	$0C
	smpsReturn

Menu_Call09:
	dc.b		nF6,	$04,	nE6,	nF6,	nE6,	$08,	nG5,	$04
	dc.b		nD6,	nC6,	nD6,	$0C,	nE6,	$10,	nRst,	$04
	dc.b		nA6,	nG6,	nA5,	nG5,	$08,	nE5,	$04,	nG5
	dc.b		nE6,	nB5,	$0C,	nG5,	nRst,	$08
	smpsReturn

Menu_Call0A:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$01
	dc.b		nC5,	$02,	nA5,	nC6,	nRst,	nC6,	nRst,	nD6
	dc.b		$06,	nC6,	$02,	nRst,	$0C,	nC5,	$02,	nA5
	dc.b		nC6,	nRst,	nC6,	nRst,	nD6,	$06,	nE6,	$02
	dc.b		nRst,	$04,	nG5,	nA5,	$06,	nE6,	$02,	nRst
	dc.b		$04,	nC6,	nG6,	$06,	nC6,	$02,	nRst,	$04
	dc.b		nE6,	nD6,	$14,	nB5,	$04,	nG5,	nRst
	smpsReturn

Menu_Call0B:
	dc.b		smpsNoAttack,	$04,	nG5,	$02,	nA5,	nC6,	nRst,	nC6
	dc.b		nRst,	nD6,	$06,	nG5,	$02,	nRst,	$0C,	nC5
	dc.b		$02,	nA5,	nG5,	nRst,	nC6,	nRst,	nD6,	$06
	dc.b		nC6,	$02,	nRst,	$04,	nC6,	nF6,	$06,	nE6
	dc.b		$02,	nRst,	$04,	nC6,	nG5,	$06,	nF6,	$02
	dc.b		nRst,	$04,	nG5,	nD6,	$14,	nB5,	$04,	nG5
	dc.b		$08
	smpsReturn

Menu_Call0C:
	dc.b		nF6,	$04,	nE6,	nD6,	nC6,	$08,	$04,	nB5
	dc.b		nE6,	nB5,	$0C,	nA5,	$10,	nRst,	$04,	nC6
	dc.b		nG6,	nF6,	nG5,	$08,	nE5,	$04,	nD6,	nE6
	dc.b		nB5,	$0C,	nG5,	nRst,	$08
	smpsReturn

Menu_Call0D:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$01
	dc.b		nG5,	$02,	nE5,	nG5,	nRst,	nG5,	nRst,	nB5
	dc.b		$06,	nG5,	$02,	nRst,	$0C,	nG5,	$02,	nE5
	dc.b		nG5,	nRst,	nG5,	nRst,	nB5,	$06,	nC6,	$02
	dc.b		nRst,	$04,	nC6,	nF6,	$06,	nC6,	$02,	nRst
	dc.b		$04,	nA5,	nG5,	$06,	nF6,	$02,	nRst,	$04
	dc.b		nG5,	nA5,	$0C,	nB5,	$02,	nRst,	$12
	smpsReturn

Menu_Call0E:
	dc.b		smpsNoAttack,	$04,	nC5,	$02,	nE5,	nG5,	nRst,	nG5
	dc.b		nRst,	nB5,	$06,	nC6,	$02,	nRst,	$0C,	nG5
	dc.b		$02,	nE5,	nC6,	nRst,	nG5,	nRst,	nB5,	$06
	dc.b		nE6,	$02,	nRst,	$04,	nG5,	nA5,	$06,	nC6
	dc.b		$02,	nRst,	$04,	nA5,	nG6,	$06,	nC6,	$02
	dc.b		nRst,	$04,	nE6,	nA5,	$0C,	nB5,	$02,	nRst
	dc.b		$12
	smpsReturn

Menu_Call0F:
	dc.b		nA6,	$04,	nG6,	nF6,	nE6,	$08,	nG5,	$04
	dc.b		nD6,	nC6,	nD6,	$0C,	nE6,	$10,	nRst,	$04
	dc.b		nA6,	nB5,	nA5,	nE6,	$08,	nC6,	$04,	nG5
	dc.b		nA5,	nD6,	$0C,	nC6,	nRst,	$08
	smpsReturn

Menu_Call10:
	dc.b		smpsNoAttack,	$60
	smpsPSGvoice	$00
	dc.b		nA6,	$02,	nG6,	nF6,	nE6,	nA6,	nG6,	nF6
	dc.b		nE6,	nB6,	nA6,	nG6,	nF6,	nG6,	nF6,	nE6
	dc.b		nD6
	smpsReturn

Menu_Call11:
	dc.b		nRst,	$60,	nA6,	$02,	nG6,	nF6,	nE6,	nA6
	dc.b		nG6,	nF6,	nE6,	nB6,	nA6,	nG6,	nF6,	nG6
	dc.b		nA6,	nB6,	nD7
	smpsReturn

Menu_Call12:
	dc.b		nRst,	$34,	nE7,	$02,	nD7,	nC7,	nRst,	nA6
	dc.b		nRst,	$36,	nF7,	$02,	nD7,	nE7,	nRst,	nC7
	dc.b		nRst
	smpsReturn

Menu_Call13:
	dc.b		smpsNoAttack,	$34,	nE7,	$02,	nD7,	nC7,	nRst,	nA6
	dc.b		nRst,	$36,	nF7,	$02,	nD7,	nE7,	nRst,	nC7
	dc.b		nRst
	smpsReturn

Menu_Call14:
	dc.b		smpsNoAttack,	$64
	smpsPSGvoice	$00
	dc.b		nA6,	$02,	nG6,	nF6,	nE6,	nA6,	nG6,	nF6
	dc.b		nE6,	nB6,	nA6,	nG6,	nF6,	nG6,	nF6
	smpsReturn

Menu_Call15:
	dc.b		nE6,	$02,	nD6,	nRst,	$60,	nA6,	$02,	nG6
	dc.b		nF6,	nE6,	nA6,	nG6,	nF6,	nE6,	nB6,	nA6
	dc.b		nG6,	nF6,	nG6,	nA6
	smpsReturn

Menu_Call16:
	dc.b		nA6,	$02,	nRst,	$36,	nE7,	$02,	nD7,	nC7
	dc.b		nRst,	nA6,	nRst,	$36,	nF7,	$02,	nD7,	nE7
	dc.b		nRst
	smpsReturn

Menu_Call17:
	dc.b		nRst,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	nCs0,	nCs0,	nCs0,	$02,	$06,	$08
	dc.b		nCs0,	nCs0,	nCs0,	$02,	$06,	$08,	nCs0,	nCs0
	dc.b		nCs0,	$02,	$06,	$08,	nCs0,	nCs0,	nCs0,	$02
	dc.b		nCs0
	smpsReturn

Menu_Call18:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	nCs0,	nCs0,	nCs0,	$02,	$06,	$08
	dc.b		nCs0,	nCs0,	nCs0,	$02,	$06,	$08,	nCs0,	nCs0
	dc.b		nCs0,	$02,	$06,	$08,	nCs0,	nCs0,	nCs0,	$02
	dc.b		nCs0
	smpsReturn

Menu_Call19:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	$02,	$06,	$02,	nRst,	$06,	nCs0
	dc.b		$08,	nCs0,	nCs0,	$02,	$06,	$08,	nCs0,	nCs0
	dc.b		nCs0,	$02,	$06,	$08,	nCs0,	nCs0,	nCs0,	$02
	dc.b		$06,	$08,	$04
	smpsReturn

Menu_Call1A:
	dc.b		dKick,	$08,	dSnare,	$06,	$02,	dKick,	$04,	$02
	dc.b		nRst,	dSnare,	$08,	dKick,	dSnare,	$06,	$02,	dKick
	dc.b		$04,	$02,	nRst,	dSnare,	$08,	dKick,	dSnare,	$06
	dc.b		$02,	dKick,	$04,	$02,	nRst,	dSnare,	$08,	dKick
	dc.b		dSnare,	$06,	$02,	dKick,	$04,	$02,	nRst,	dSnare
	dc.b		$04,	$02,	dSnare
	smpsReturn

Menu_Call1B:
	dc.b		dKick,	$06,	nRst,	$02,	dSnare,	$06,	$02,	dKick
	dc.b		$04,	$02,	nRst,	dSnare,	$08,	dKick,	dSnare,	$06
	dc.b		$02,	dKick,	$04,	$02,	nRst,	dSnare,	$08,	dKick
	dc.b		dSnare,	$06,	$02,	dKick,	$04,	$02,	nRst,	dSnare
	dc.b		$08,	dKick,	$04,	dSnare,	dSnare,	$06,	$02,	dKick
	dc.b		$04,	dSnare,	dSnare,	$02,	dSnare,	dSnare,	dSnare
	smpsReturn

Menu_Call1C:
	dc.b		dKick,	$06,	nRst,	$02,	dSnare,	$06,	$02,	dKick
	dc.b		$04,	dKick,	dSnare,	$08,	dKick,	dSnare,	$06,	$02
	dc.b		dKick,	$04,	$02,	nRst,	dSnare,	$08,	dKick,	dSnare
	dc.b		$06,	$02,	dKick,	$04,	$02,	nRst,	dSnare,	$08
	dc.b		dKick,	dSnare,	dSnare,	$02,	dSnare,	dSnare,	$04,	$08
	smpsReturn

Menu_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 01
	even
