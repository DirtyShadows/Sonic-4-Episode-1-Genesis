; =============================================================================================
; Project Name:		Boss_S4
; Created:		17th June 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Boss_S4_Header:
	smpsHeaderVoice	Boss_S4_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$04

	smpsHeaderDAC	Boss_S4_DAC
	smpsHeaderFM	Boss_S4_FM1,	smpsPitch01lo,	$12
	smpsHeaderFM	Boss_S4_FM2,	smpsPitch02lo,	$08
	smpsHeaderFM	Boss_S4_FM3,	smpsPitch01lo,	$0F
	smpsHeaderFM	Boss_S4_FM4,	smpsPitch01lo,	$12
	smpsHeaderFM	Boss_S4_FM5,	smpsPitch02lo,	$0F
	smpsHeaderPSG	Boss_S4_PSG1,	smpsPitch04lo,	$03,	$05
	smpsHeaderPSG	Boss_S4_PSG2,	smpsPitch04lo,	$03,	$05
	smpsHeaderPSG	Boss_S4_PSG3,	smpsPitch03lo,	$01,	$08

; FM5 Data
Boss_S4_FM5:
	smpsFMvoice	$05
Boss_S4_Jump01:
	dc.b		nFs7,	$0C,	nFs7,	nFs7,	nFs7
	smpsAlterVol	$02
	smpsCall	Boss_S4_Call01
	dc.b		nA6,	nFs6,	nG6,	nFs6,	nE6,	nFs6,	nA6,	nFs6
	dc.b		nG6,	nFs6,	nCs7,	nFs6,	nE6,	nFs6
	smpsCall	Boss_S4_Call01
	dc.b		nB6,	nFs6,	nA6,	nFs6,	nG6,	nFs6,	nA6,	nFs6
	dc.b		nB6,	nFs6,	nCs7,	nB6,	nF7,	nCs7
	smpsAlterVol	$FE
Boss_S4_Loop01:
	dc.b		nFs7,	$03,	nD7,	$03,	nFs7,	$03,	nD7,	$03
	smpsLoop	$00,	$04,	Boss_S4_Loop01
	smpsJump	Boss_S4_Jump01

Boss_S4_Call01:
	dc.b		nB6,	$06,	nFs6,	nD7,	nFs6,	nB6,	nFs6,	nE6
	dc.b		nFs6,	nB6,	nFs6,	nD7,	nFs6,	nB6,	nFs6,	nA6
	dc.b		nFs6,	nG6,	nFs6
	smpsReturn

; FM2 Data
Boss_S4_FM2:
	smpsFMvoice	$00
Boss_S4_Jump02:
	smpsE2		$01
	dc.b		nFs4,	$06,	nFs5,	nFs4,	nFs5,	nFs4,	nFs5,	nFs4
	dc.b		nFs5
	smpsCall	Boss_S4_Call02
	dc.b		nB3,	$06,	nE4,	nE4,	$0C,	nB3,	$06
	smpsCall	Boss_S4_Call02
	dc.b		nE4,	$06,	nD4,	nD4,	$0C,	nD4,	$06,	nCs4
	dc.b		$30
	smpsE2		$01
	smpsJump	Boss_S4_Jump02

Boss_S4_Call02:
	dc.b		nB3,	$06,	nB3,	nD4,	nD4,	nCs4,	nCs4,	nC4
	dc.b		nC4,	nB3,	$12,	nFs4,	$06,	nB4,	$0C,	nA4
	dc.b		nG4,	$06,	nG4,	$0C,	nD4,	$06,	nG4,	nG4
	dc.b		$0C,	nFs4,	$06,	nE4,	nE4,	$0C
	smpsReturn

; PSG2 Data
Boss_S4_PSG2:
	smpsAlterNote	$02
	smpsJump	Boss_S4_Jump03

; FM3 Data
Boss_S4_FM3:
	smpsFMvoice	$01
	smpsPan		panLeft,	$00
Boss_S4_Jump03:
	dc.b		nRst,	$30
	smpsCall	Boss_S4_Call03
	dc.b		nE5,	$12,	nRst,	nD6,	$03,	nRst,	nCs6,	nRst
	dc.b		nA5,	$12
	smpsCall	Boss_S4_Call03
	dc.b		nE5,	$0C,	nB5,	$03,	nRst,	nE6,	nRst,	nE6
	dc.b		$0C,	nE6,	$03,	nRst,	nF6,	nRst,	nF6,	$0C
	dc.b		nF6,	$03,	nRst,	nFs6,	$30
	smpsJump	Boss_S4_Jump03

Boss_S4_Call03:
	dc.b		nRst,	$1E,	nFs5,	$03,	nRst,	nB5,	nRst,	nCs6
	dc.b		nRst,	nD6,	$30,	nRst,	$12,	nB5,	$03,	nRst
	dc.b		nG5,	nRst
	smpsReturn

; FM1 Data
Boss_S4_FM1:
	smpsAlterNote	$03
	smpsJump	Boss_S4_Jump04

; FM4 Data
Boss_S4_FM4:
	smpsPan		panRight,	$00
Boss_S4_Jump04:
	smpsFMvoice	$02
	smpsModSet	$0C,	$01,	$04,	$06

; PSG1 Data
Boss_S4_PSG1:
	dc.b		nRst,	$30
	smpsCall	Boss_S4_Call04
	dc.b		nE7
	smpsCall	Boss_S4_Call04
	dc.b		nE7,	$18,	nF7,	nFs7,	$30
	smpsJump	Boss_S4_PSG1

Boss_S4_Call04:
	dc.b		nB6,	$04,	nA6,	nC7,	nB6,	$24,	nRst,	$0C
	dc.b		nFs6,	nB6,	nCs7,	nD7,	$30
	smpsReturn

; PSG3 Data
Boss_S4_PSG3:
	smpsStop

; DAC Data
Boss_S4_DAC:
	dc.b		dHiTimpani,	$06,	dLowTimpani,	dHiTimpani,	dLowTimpani,	dHiTimpani,	dLowTimpani,	dHiTimpani
	dc.b		dLowTimpani
Boss_S4_Loop02:
	dc.b		dSnare,	$0C,	dSnare,	$04,	dSnare,	dSnare,	dSnare,	$06
	dc.b		dSnare,	$0C,	dSnare,	$06,	dSnare,	$12,	dSnare,	$06
	dc.b		dSnare,	$0C,	dSnare,	$0C
	smpsLoop	$00,	$03,	Boss_S4_Loop02
	dc.b		dSnare,	$0C,	dSnare,	$04,	dSnare,	dSnare,	dSnare,	$06
	dc.b		dSnare,	$0C,	dSnare,	$06,	dSnare,	$06,	dSnare,	$0C
	dc.b		dSnare,	$06,	dSnare,	$06,	dSnare,	$0C,	dSnare,	$06
	dc.b		dSnare,	$01,	dHiTimpani,	$05,	dLowTimpani,	$06,	dHiTimpani,	dLowTimpani
	dc.b		dHiTimpani,	dLowTimpani,	dHiTimpani,	dLowTimpani
	smpsJump	Boss_S4_DAC

Boss_S4_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$80;			Voice 00
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 01
	dc.b		$3D,$01,$02,$02,$02,$14,$0E,$8C,$0E,$08,$05,$02,$05,$00,$00,$00
	dc.b		$00,$1F,$1F,$1F,$1F,$1A,$92,$A7,$80;			Voice 02
	dc.b		$30,$30,$30,$30,$30,$9E,$D8,$DC,$DC,$0E,$0A,$04,$05,$08,$08,$08
	dc.b		$08,$BF,$BF,$BF,$BF,$14,$3C,$14,$80;			Voice 03
	dc.b		$39,$01,$51,$00,$00,$1F,$5F,$5F,$5F,$10,$11,$09,$09,$07,$00,$00
	dc.b		$00,$2F,$2F,$2F,$1F,$20,$22,$20,$80;			Voice 04
	dc.b		$3A,$42,$43,$14,$71,$1F,$12,$1F,$1F,$04,$02,$04,$0A,$01,$01,$02
	dc.b		$0B,$1F,$1F,$1F,$1F,$1A,$16,$19,$80;			Voice 05
	dc.b		$00;			Voice 06
	even
