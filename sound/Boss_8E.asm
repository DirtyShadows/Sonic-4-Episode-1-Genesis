; =============================================================================================
; Project Name:		S2B_Boss
; Created:		19th January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

S2B_Boss_Header:
	smpsHeaderVoice	S2B_Boss_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$09

	smpsHeaderDAC	S2B_Boss_DAC
	smpsHeaderFM	S2B_Boss_FM1,	smpsPitch01hi,	$08
	smpsHeaderFM	S2B_Boss_FM2,	smpsPitch00,	$0D
	smpsHeaderFM	S2B_Boss_FM3,	smpsPitch00,	$12
	smpsHeaderFM	S2B_Boss_FM4,	smpsPitch00,	$12
	smpsHeaderFM	S2B_Boss_FM5,	smpsPitch00,	$12
	smpsHeaderPSG	S2B_Boss_PSG1,	smpsPitch02lo,	$04,	$0C
	smpsHeaderPSG	S2B_Boss_PSG2,	smpsPitch02lo,	$06,	$0C
	smpsHeaderPSG	S2B_Boss_PSG3,	smpsPitch02lo,	$08,	$0C

; FM1 Data
S2B_Boss_FM1:
	smpsFMvoice	$00
	smpsNoteFill	$09
	dc.b		nA1,	$0C,	nA2,	nA2,	nA1,	nA2,	nA2,	nA1
	dc.b		nA2
	smpsNoteFill	$00
	dc.b		nE1,	nE2,	nE1,	nE2,	nE1,	nE2,	nE1,	nE2
	smpsNoteFill	$09
	dc.b		nA1,	nA2,	nA2,	nA1,	nA2,	nA2,	nA1,	nA2
	smpsNoteFill	$00
	dc.b		nE1,	nE2,	nFs1,	nFs2,	nG1,	nG2,	nAb1,	nAb2
S2B_Boss_Loop01:
	smpsCall	S2B_Boss_Call01
	dc.b		nG1,	$0C,	nG2,	$06,	nG2,	nG1,	$0C,	nG2
	dc.b		$06,	nG2
	smpsCall	S2B_Boss_Call01
	dc.b		nE1,	$0C,	nE2,	$06,	nE2,	nE1,	$0C,	nE2
	dc.b		$06,	nE2
	smpsLoop	$00,	$04,	S2B_Boss_Loop01
	smpsJump	S2B_Boss_FM1

S2B_Boss_Call01:
	dc.b		nA1,	$0C,	nA2,	$06,	nA2,	nA1,	$0C,	nA2
	dc.b		$06,	nA2,	nA1,	$0C,	nA2,	$06,	nA2,	nA1
	dc.b		$0C,	nA2,	$06,	nA2,	nG1,	$0C,	nG2,	$06
	dc.b		nG2,	nG1,	$0C,	nG2,	$06,	nG2
	smpsReturn

; PSG1 Data
S2B_Boss_PSG1:
	smpsJump	S2B_Boss_Jump01

; PSG2 Data
S2B_Boss_PSG2:
	smpsAlterNote	$01
	dc.b		nRst,	$06
	smpsJump	S2B_Boss_Jump01

; PSG3 Data
S2B_Boss_PSG3:
	smpsAlterNote	$FF
	dc.b		nRst,	$0C
	smpsJump	S2B_Boss_Jump01

; FM2 Data
S2B_Boss_FM2:
	smpsFMvoice	$01
S2B_Boss_Jump01:
	smpsNoteFill	$09
	dc.b		nA3,	$0C,	nE3,	nE3,	nA3,	nE3,	nE3,	nA3
	dc.b		nE3
	smpsNoteFill	$00
	dc.b		nB3,	$18,	nB3,	nB3,	nB3
	smpsLoop	$00,	$02,	S2B_Boss_Jump01
S2B_Boss_Loop02:
	smpsCall	S2B_Boss_Call02
	smpsLoop	$00,	$04,	S2B_Boss_Loop02
	smpsJump	S2B_Boss_Jump01

S2B_Boss_Call02:
	dc.b		nA3,	$0C,	nB3,	nC4,	$18,	nD4,	nC4,	nB3
	dc.b		$0C,	nC4,	nB3,	nG3,	$18,	nE3,	$0C,	nG3
	dc.b		$18,	nA3,	$0C,	nB3,	nC4,	$18,	nD4,	nC4
	dc.b		nB3,	$0C,	nC4,	nD4,	nEb4,	nE4,	nRst,	$24
	smpsReturn

; FM3 Data
S2B_Boss_FM3:
	smpsFMvoice	$01
S2B_Boss_Loop03:
	smpsNoteFill	$09
	dc.b		nC4,	$0C,	nA3,	nA3,	nC4,	nA3,	nA3,	nC4
	dc.b		nA3
	smpsNoteFill	$00
	dc.b		nAb3,	$18,	nAb3,	nAb3,	nAb3
	smpsLoop	$00,	$02,	S2B_Boss_Loop03
S2B_Boss_Loop04:
	dc.b		nRst,	$30,	nRst
	smpsLoop	$00,	$08,	S2B_Boss_Loop04
S2B_Boss_Loop05:
	smpsAlterPitch	$0C
	smpsCall	S2B_Boss_Call02
	smpsAlterPitch	$F4
	smpsLoop	$00,	$02,	S2B_Boss_Loop05
	smpsJump	S2B_Boss_FM3

; FM4 Data
S2B_Boss_FM4:
	smpsPan		panLeft,	$00
	smpsModSet	$0C,	$01,	$04,	$04
	smpsJump	S2B_Boss_Jump02

; FM5 Data
S2B_Boss_FM5:
	smpsPan		panRight,	$00
	smpsModSet	$0C,	$01,	$FC,	$04
	smpsJump	S2B_Boss_Jump02
S2B_Boss_Jump02:
	smpsAlterPitch	$F4
	smpsFMvoice	$01
	dc.b		nRst,	$30,	nRst,	$24,	nD5,	$06,	nE5,	nF5
	dc.b		$0C,	nF5,	nE5,	nE5,	nD5,	nD5,	nE5,	$18
	dc.b		nRst,	$30,	nRst,	$24,	nD5,	$06,	nE5,	nF5
	dc.b		$0C,	nE5,	nEb5,	nE5,	nAb5,	$18,	nE5
	smpsAlterPitch	$0C
S2B_Boss_Loop06:
	dc.b		nRst,	$30,	nRst
	smpsLoop	$00,	$04,	S2B_Boss_Loop06
	smpsCall	S2B_Boss_Call03
	dc.b		nG3
	smpsCall	S2B_Boss_Call03
	dc.b		nAb3,	nC5,	smpsNoAttack,	$18,	nD5,	$0C,	nC5,	nB4
	dc.b		$30,	nG4,	nC5,	smpsNoAttack,	$18,	nD5,	$0C,	nC5
	dc.b		nB4,	$30,	nAb4,	nC5,	$0C,	nD5,	nE5,	$18
	dc.b		nF5,	nE5,	nD5,	$0C,	nE5,	nD5,	nB4,	$18
	dc.b		nG4,	$0C,	nB4,	$18,	nC5,	$0C,	nD5,	nE5
	dc.b		$18,	nF5,	nE5,	nD5,	$0C,	nE5,	nF5,	nFs5
	dc.b		nAb5,	$30
	smpsJump	S2B_Boss_Jump02

S2B_Boss_Call03:
	dc.b		nC4,	$30,	smpsNoAttack,	$18,	nD4,	$0C,	nC4,	nB3
	dc.b		$30
	smpsReturn

; DAC Data
S2B_Boss_DAC:
	dc.b		dSnare,	$0C,	$8E,	$8E,	dSnare,	$8E,	$8E,	dSnare
	dc.b		$8E,	$8E,	$18,	$8E,	$8E,	$8E
	smpsLoop	$00,	$02,	S2B_Boss_DAC
S2B_Boss_Loop07:
	dc.b		dKick,	$0C,	dSnare,	$06,	dSnare,	dKick,	$0C,	dSnare
	dc.b		$06,	dSnare,	dKick,	$0C,	dSnare,	$06,	dSnare,	dKick
	dc.b		$0C,	dSnare,	$06,	dSnare,	dKick,	$0C,	dSnare,	$06
	dc.b		dSnare,	dKick,	$0C,	dSnare,	$06,	dSnare,	dKick,	$0C
	dc.b		dSnare,	$02,	$8E,	$04,	dSnare,	$02,	$8E,	$04
	dc.b		dKick,	$0C,	dSnare,	$02,	$8E,	$04,	dSnare,	$02
	dc.b		$8E,	$04
	smpsLoop	$00,	$08,	S2B_Boss_Loop07
	smpsJump	S2B_Boss_DAC

S2B_Boss_Voices:
	dc.b		$20,$36,$30,$35,$31,$DF,$9F,$DF,$9F,$07,$09,$06,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$13,$37,$80;			Voice 00
	dc.b		$3A,$01,$01,$01,$02,$8D,$07,$07,$52,$09,$00,$00,$03,$01,$02,$02
	dc.b		$00,$52,$02,$02,$28,$18,$18,$22,$80;			Voice 01
	dc.b		$3A,$01,$01,$07,$01,$9F,$9F,$9F,$5F,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$13,$13,$AA,$08,$18,$27,$28,$80;			Voice 02
	dc.b		$2C,$70,$32,$74,$34,$19,$19,$14,$14,$01,$02,$08,$05,$01,$02,$01
	dc.b		$01,$13,$10,$87,$37,$17,$19,$80,$85;			Voice 03
	even
