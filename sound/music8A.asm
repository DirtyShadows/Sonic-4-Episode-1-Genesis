; =============================================================================================
; Project Name:		TitleScreenS4
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

TitleScreenS4_Header:
	smpsHeaderVoice	TitleScreenS4_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$02

	smpsHeaderDAC	TitleScreenS4_DAC
	smpsHeaderFM	TitleScreenS4_FM1,	smpsPitch00,	$10
	smpsHeaderFM	TitleScreenS4_FM2,	smpsPitch01lo,	$10
	smpsHeaderFM	TitleScreenS4_FM3,	smpsPitch01lo,	$10
	smpsHeaderFM	TitleScreenS4_FM4,	smpsPitch01lo,	$10
	smpsHeaderFM	TitleScreenS4_FM5,	smpsPitch01lo,	$10
	smpsHeaderPSG	TitleScreenS4_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	TitleScreenS4_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	TitleScreenS4_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
TitleScreenS4_FM1:
	smpsCall	TitleScreenS4_Call01
	smpsCall	TitleScreenS4_Call02
	smpsCall	TitleScreenS4_Call03
	smpsStop

; FM2 Data
TitleScreenS4_FM2:
	smpsCall	TitleScreenS4_Call04
	smpsCall	TitleScreenS4_Call05
	smpsCall	TitleScreenS4_Call06
	smpsStop

; FM3 Data
TitleScreenS4_FM3:
	smpsCall	TitleScreenS4_Call07
	smpsCall	TitleScreenS4_Call08
	smpsCall	TitleScreenS4_Call09
	smpsStop

; FM4 Data
TitleScreenS4_FM4:
	smpsCall	TitleScreenS4_Call0A
	smpsCall	TitleScreenS4_Call0B
	smpsCall	TitleScreenS4_Call0C
	smpsStop

; FM5 Data
TitleScreenS4_FM5:
	smpsCall	TitleScreenS4_Call0D
	smpsCall	TitleScreenS4_Call0E
	smpsCall	TitleScreenS4_Call0F
	smpsStop

; PSG1 Data
TitleScreenS4_PSG1:
	smpsCall	TitleScreenS4_Call10
	smpsCall	TitleScreenS4_Call11
	smpsCall	TitleScreenS4_Call12
	smpsStop

; PSG2 Data
TitleScreenS4_PSG2:
	smpsCall	TitleScreenS4_Call13
	smpsCall	TitleScreenS4_Call14
	smpsCall	TitleScreenS4_Call15
	smpsStop

; PSG3 Data
TitleScreenS4_PSG3:
	smpsPSGform	$E7
	smpsCall	TitleScreenS4_Call16
	smpsCall	TitleScreenS4_Call17
	smpsCall	TitleScreenS4_Call18
	smpsStop

; DAC Data
TitleScreenS4_DAC:
	smpsCall	TitleScreenS4_Call19
	smpsCall	TitleScreenS4_Call1A
	smpsCall	TitleScreenS4_Call1B
	smpsStop

TitleScreenS4_Call01:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$00
	dc.b		nD3,	$05,	nRst,	$01,	nD3,	$02,	nA2,	$04
	dc.b		nD3,	$05,	nRst,	$03,	nD3,	$04,	nA2,	$02
	dc.b		nA3,	nD3,	nD4,	nG4,	nC3,	nC4,	nG3,	nG2
	dc.b		nRst,	nG3,	nG2,	nC3,	nRst,	nC3,	nC4,	nG2
	dc.b		nG3,	nC3,	nC4,	nB2,	$05,	nRst,	$01,	nB2
	dc.b		$02,	nFs2,	$04,	nB2,	$05,	nRst,	$03,	nB2
	dc.b		$04,	nFs2,	$02,	nFs3,	nB2,	nB3,	nE4,	nA4
	dc.b		nA3,	nE3,	nA3,	nRst,	nE3,	nE2,	nA2,	nRst
	smpsReturn

TitleScreenS4_Call02:
	dc.b		nA2,	$02,	nA3,	nCs3,	nD3,	nEb3,	nE3,	nD3
	dc.b		$05,	nRst,	$01,	nD3,	$02,	nA2,	$04,	nD3
	dc.b		$05,	nRst,	$03,	nD3,	$04,	nA2,	$02,	nA3
	dc.b		nD3,	nD4,	nG4,	nC3,	nC4,	nG3,	nG2,	nRst
	dc.b		nG3,	nG2,	nC3,	nRst,	nC3,	nC4,	nG2,	nG3
	dc.b		nC3,	nC4,	nB2,	$05,	nRst,	$01,	nB2,	$02
	dc.b		nFs2,	$04,	nB2,	$05,	nRst,	$03,	nB2,	$04
	dc.b		nFs2,	$02,	nFs3,	nB2,	nB3,	nE4,	nA4,	nA3
	dc.b		nE3,	nA3,	nRst,	nE3,	nE2,	nA2,	nE3
	smpsReturn

TitleScreenS4_Call03:
	dc.b		nG3,	$02,	nA3,	nE4,	nA4,	nD3,	$08,	nRst
	dc.b		$70
	smpsReturn

TitleScreenS4_Call04:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$01
	dc.b		nD6,	$04,	nRst,	$02,	nD6,	nE6,	nRst,	nG6
	dc.b		$04,	nRst,	nFs6,	nRst,	nE6,	nRst,	nE6,	nFs6
	dc.b		nD6,	$12,	nRst,	$02,	nD6,	$04,	nRst,	$02
	dc.b		nD6,	nE6,	nRst,	nG6,	$04,	nRst,	nFs6,	nRst
	dc.b		nCs6,	$18
	smpsReturn

TitleScreenS4_Call05:
	dc.b		smpsNoAttack,	$04,	nRst,	$08,	nD6,	$04,	nRst,	$02
	dc.b		nD6,	nE6,	nRst,	nG6,	$04,	nRst,	nFs6,	nRst
	dc.b		nE6,	nRst,	nE6,	nFs6,	nD6,	$12,	nRst,	$02
	dc.b		nD6,	$04,	nRst,	$02,	nD6,	nE6,	nRst,	nG6
	dc.b		$04,	nRst,	nFs6,	nRst,	nE6,	$0A,	nRst,	$02
	dc.b		nE6,	$07,	nRst,	$01,	nE6,	$02,	nRst
	smpsReturn

TitleScreenS4_Call06:
	dc.b		nE6,	$03,	nRst,	$05,	nD6,	$08,	nRst,	$70
	smpsReturn

TitleScreenS4_Call07:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$04
	dc.b		nA5,	$0A,	nRst,	$02,	nA5,	$04,	nRst,	nA5
	dc.b		nRst,	nC6,	nRst,	nC6,	nRst,	nC6,	$08,	nB5
	dc.b		$04,	nA5,	nG5,	nB5,	$0A,	nRst,	$02,	nB5
	dc.b		$04,	nRst,	nB5,	nRst,	nA5,	$18
	smpsReturn

TitleScreenS4_Call08:
	dc.b		smpsNoAttack,	$04,	nRst,	$08,	nA5,	$0A,	nRst,	$02
	dc.b		nA5,	$04,	nRst,	nA5,	nRst,	nC6,	nRst,	nC6
	dc.b		nRst,	nC6,	$08,	nB5,	$04,	nA5,	nG5,	nB5
	dc.b		$0A,	nRst,	$02,	nB5,	$04,	nRst,	nB5,	nRst
	dc.b		nA5,	$0B,	nRst,	$01,	nB5,	$08,	nCs6,	$02
	dc.b		nRst
	smpsReturn

TitleScreenS4_Call09:
	dc.b		nCs6,	$03,	nRst,	$05,	nA5,	$08,	nRst,	$70
	smpsReturn

TitleScreenS4_Call0A:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$01
	dc.b		nD5,	$04,	nRst,	$02,	nD5,	nE5,	nRst,	nG5
	dc.b		$04,	nRst,	nFs5,	nRst,	nE5,	nRst,	nE5,	nFs5
	dc.b		nD5,	$12,	nRst,	$02,	nD5,	$04,	nRst,	$02
	dc.b		nD5,	nE5,	nRst,	nG5,	$04,	nRst,	nD5,	nRst
	dc.b		nCs5,	$18
	smpsReturn

TitleScreenS4_Call0B:
	dc.b		smpsNoAttack,	$04,	nRst,	$08,	nD5,	$04,	nRst,	$02
	dc.b		nD5,	nE5,	nRst,	nG5,	$04,	nRst,	nFs5,	nRst
	dc.b		nE5,	nRst,	nE5,	nFs5,	nD5,	$12,	nRst,	$02
	dc.b		nD5,	$04,	nRst,	$02,	nD5,	nE5,	nRst,	nG5
	dc.b		$04,	nRst,	nD5,	nRst,	nCs5,	$0C,	nE5,	$07
	dc.b		nRst,	$01,	nE5,	$02,	nRst
	smpsReturn

TitleScreenS4_Call0C:
	dc.b		nG5,	$03,	nRst,	$05,	nFs5,	$08,	nRst,	$70
	smpsReturn

TitleScreenS4_Call0D:
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$03
	dc.b		nD5,	$08,	nG5,	nD5,	$04,	nA5,	$08,	nD5
	dc.b		$03,	nRst,	$05,	nD5,	$04,	nC6,	$07,	nRst
	dc.b		$03,	nC6,	$01,	nRst,	$03,	nB5,	$01,	nRst
	dc.b		$03,	nA5,	$01,	nRst,	$03,	nG5,	$01,	nRst
	dc.b		nD5,	$08,	nG5,	nA5,	nRst,	$02,	nA5,	nRst
	dc.b		nCs5,	nRst,	nE4,	nRst,	nE5,	nRst,	nA4,	nRst
	dc.b		nA5,	nRst,	nA4
	smpsReturn

TitleScreenS4_Call0E:
	dc.b		nRst,	$02,	nA5,	nBb5,	nB5,	nC6,	nCs6,	nD5
	dc.b		$08,	nG5,	nD5,	$04,	nA5,	$08,	nD5,	$03
	dc.b		nRst,	$05,	nD5,	$04,	nC6,	$07,	nRst,	$03
	dc.b		nC6,	$01,	nRst,	$03,	nB5,	$01,	nRst,	$03
	dc.b		nA5,	$01,	nRst,	$03,	nG5,	$01,	nRst,	nD5
	dc.b		$08,	nG5,	nA5,	nRst,	$02,	nA5,	nRst,	nCs5
	dc.b		nRst,	nE4,	nRst,	nE5,	nRst,	nCs5,	nRst,	nE4
	dc.b		nE5,	nA5
	smpsReturn

TitleScreenS4_Call0F:
	dc.b		nBb5,	$02,	nB5,	nC6,	nCs6,	nD6,	$04,	nRst
	dc.b		$74
	smpsReturn

TitleScreenS4_Call10:
	dc.b		smpsNoAttack,	$58
	smpsPSGvoice	$00
	dc.b		nD6,	$04,	nRst,	nD6,	nRst,	nE6,	$18
	smpsReturn

TitleScreenS4_Call11:
	dc.b		smpsNoAttack,	$04,	nRst,	$54,	nD6,	$04,	nRst,	nD6
	dc.b		nRst,	nCs6,	$0C,	nRst
	smpsReturn

TitleScreenS4_Call12:
	dc.b		nG6,	$03,	nRst,	$05,	nFs6,	$08,	nRst,	$70
	smpsReturn

TitleScreenS4_Call13:
	dc.b		smpsNoAttack,	$58
	smpsPSGvoice	$00
	dc.b		nD5,	$04,	nRst,	nFs5,	nRst,	nE5,	$18
	smpsReturn

TitleScreenS4_Call14:
	dc.b		smpsNoAttack,	$04,	nRst,	$54,	nD5,	$04,	nRst,	nFs5
	dc.b		nRst,	nE5,	$0A,	nRst,	$0E
	smpsReturn

TitleScreenS4_Call15:
	dc.b		nE5,	$03,	nRst,	$05,	nD5,	$08,	nRst,	$70
	smpsReturn

TitleScreenS4_Call16:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	$04,	$02,	$04,	nCs0,	nCs0,	$02
	dc.b		$04,	$02,	nCs0,	nCs0,	nCs0,	$04,	$02,	$04
	dc.b		$02,	$04,	$02,	nCs0,	nCs0,	$04,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	$02,	$04,	$02,	$04,	$02,	$04
	dc.b		$02,	$04,	nCs0,	nCs0,	nCs0,	$02,	$04,	$02
	dc.b		$04,	$02,	nCs0,	nCs0,	$04,	nCs0,	nCs0,	nCs0
	smpsReturn

TitleScreenS4_Call17:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	$04,	$02,	$04,	$02,	$04,	$02
	dc.b		$04,	nCs0,	nCs0,	nCs0,	$02,	$04,	$02,	$04
	dc.b		$02,	nCs0,	nCs0,	$04,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		$02,	$04,	$02,	$04,	$02,	$04,	$02,	$04
	dc.b		nCs0,	nCs0,	nCs0,	$02,	$04,	$02,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	nCs0,	nCs0,	nCs0
	smpsReturn

TitleScreenS4_Call18:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	$04,	$02,	$06,	nRst,	$72
	smpsReturn

TitleScreenS4_Call19:
	dc.b		dSnare,	$04,	$02,	dSnare,	dSnare,	$04,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	$02,	dSnare,	dSnare
	dc.b		$04,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	$02,	dSnare,	dSnare,	$04
	dc.b		dKick
	smpsReturn

TitleScreenS4_Call1A:
	dc.b		dSnare,	$04,	dKick,	$02,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	$02
	dc.b		dSnare,	dSnare,	$04,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	$02,	dSnare,	dSnare,	$04,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	$02,	dKick
	smpsReturn

TitleScreenS4_Call1B:
	dc.b		nRst,	$04,	dSnare,	$02,	dSnare,	dKick,	$08,	nRst
	dc.b		$70
	smpsReturn

TitleScreenS4_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$35,$32,$31,$7A,$02,$8D,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 01
	dc.b		$3D,$01,$21,$12,$31,$14,$0E,$0F,$0F,$00,$04,$03,$04,$00,$00,$00
	dc.b		$00,$00,$16,$16,$16,$1B,$05,$05,$05;			Voice 02
	dc.b		$39,$03,$61,$22,$21,$1F,$1F,$12,$1F,$05,$05,$05,$0B,$00,$00,$00
	dc.b		$00,$10,$10,$18,$18,$1E,$1D,$15,$00;			Voice 03
	dc.b		$39,$03,$61,$22,$21,$1F,$1F,$12,$1F,$05,$05,$05,$0B,$00,$00,$00
	dc.b		$00,$10,$10,$18,$18,$1E,$1D,$15,$00;			Voice 04
	even
