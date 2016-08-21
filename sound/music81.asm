; =============================================================================================
; Project Name:		WorldMap
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

WorldMap_Header:
	smpsHeaderVoice	WorldMap_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$04

	smpsHeaderDAC	WorldMap_DAC
	smpsHeaderFM	WorldMap_FM1,	smpsPitch02lo,	$10
	smpsHeaderFM	WorldMap_FM2,	smpsPitch02lo,	$10
	smpsHeaderFM	WorldMap_FM3,	smpsPitch00,	$10
	smpsHeaderFM	WorldMap_FM4,	smpsPitch02lo,	$14
	smpsHeaderFM	WorldMap_FM5,	smpsPitch02lo,	$10
	smpsHeaderPSG	WorldMap_PSG1,	smpsPitch04lo,	$04,	$00
	smpsHeaderPSG	WorldMap_PSG2,	smpsPitch04lo,	$04,	$00
	smpsHeaderPSG	WorldMap_PSG3,	smpsPitch04lo,	$04,	$00

; FM1 Data
WorldMap_FM1:
	smpsCall	WorldMap_Call01
	smpsCall	WorldMap_Call02
	smpsCall	WorldMap_Call03
	smpsJump	WorldMap_FM1

; FM2 Data
WorldMap_FM2:
	smpsCall	WorldMap_Call04
	smpsCall	WorldMap_Call05
	smpsCall	WorldMap_Call06
	smpsJump	WorldMap_FM2

; FM3 Data
WorldMap_FM3:
	smpsCall	WorldMap_Call07
	smpsCall	WorldMap_Call08
	smpsCall	WorldMap_Call09
	smpsJump	WorldMap_FM3

; FM4 Data
WorldMap_FM4:
	smpsCall	WorldMap_Call0A
	smpsCall	WorldMap_Call0B
	smpsCall	WorldMap_Call0C
	smpsJump	WorldMap_FM4

; FM5 Data
WorldMap_FM5:
	smpsCall	WorldMap_Call0D
	smpsCall	WorldMap_Call0E
	smpsCall	WorldMap_Call0F
	smpsJump	WorldMap_FM5

; PSG1 Data
WorldMap_PSG1:
	smpsCall	WorldMap_Call10
	smpsCall	WorldMap_Call11
	smpsCall	WorldMap_Call12
	smpsJump	WorldMap_PSG1

; PSG2 Data
WorldMap_PSG2:
	smpsCall	WorldMap_Call13
	smpsCall	WorldMap_Call14
	smpsCall	WorldMap_Call15
	smpsJump	WorldMap_PSG2

; PSG3 Data
WorldMap_PSG3:
	smpsPSGform	$E7
	smpsCall	WorldMap_Call16
	smpsCall	WorldMap_Call16
	smpsCall	WorldMap_Call17
	smpsJump	WorldMap_PSG3

; DAC Data
WorldMap_DAC:
	smpsCall	WorldMap_Call18
	smpsCall	WorldMap_Call19
	smpsCall	WorldMap_Call1A
	smpsJump	WorldMap_DAC

WorldMap_Call01:
	smpsFMvoice	$01
	dc.b		nA5,	$03,	nRst,	$01,	nA5,	$04,	nG5,	nD5
	dc.b		nRst,	nE5,	nRst,	nFs5,	nRst,	nG5,	nRst,	nA5
	dc.b		$08,	nG5,	$04,	nFs5,	nD5,	nG5,	$32,	nRst
	dc.b		$04,	$0A
	smpsReturn

WorldMap_Call02:
	dc.b		nA5,	$03,	nRst,	$01,	nA5,	$04,	nG5,	nD5
	dc.b		nRst,	nE5,	nRst,	nFs5,	nRst,	nG5,	nRst,	nA5
	dc.b		$08,	nG5,	$04,	nFs5,	nD5,	nC6,	$16,	nRst
	dc.b		$02,	nC6,	$08,	nB5,	$10,	nA5,	$0C,	nRst
	dc.b		$04
	smpsReturn

WorldMap_Call03:
	dc.b		nB5,	$0C,	nG5,	$08,	nRst,	$04,	nD6,	$08
	dc.b		nCs6,	$0C,	nA5,	$10,	nRst,	$04,	nC6,	$0C
	dc.b		nG5,	$08,	nRst,	$04,	nE6,	$08,	nD6,	$04
	dc.b		nRst,	nA5,	nRst,	nFs6,	$03,	nRst,	$01,	nFs6
	dc.b		$03,	nRst,	$01,	nFs6,	$03,	nRst,	$05
	smpsReturn

WorldMap_Call04:
	smpsFMvoice	$01
	dc.b		nFs5,	$03,	nRst,	$01,	nFs5,	$04,	nE5,	nA4
	dc.b		nRst,	nCs5,	nRst,	nD5,	nRst,	nE5,	nRst,	nFs5
	dc.b		$08,	nE5,	$04,	nD5,	nA4
	smpsFMvoice	$02
	dc.b		nC5,	$10,	nD5,	nE5,	$0C,	nFs5,	nG5,	$08
	smpsReturn

WorldMap_Call05:
	smpsFMvoice	$01
	dc.b		nFs5,	$03,	nRst,	$01,	nFs5,	$04,	nE5,	nA4
	dc.b		nRst,	nCs5,	nRst,	nD5,	nRst,	nE5,	nRst,	nFs5
	dc.b		$08,	nE5,	$04,	nD5,	nA4
	smpsFMvoice	$02
	dc.b		nG5,	$0C,	nA5,	nFs5,	$08,	nG5,	$10,	nA5
	dc.b		$08,	nD5
	smpsReturn

WorldMap_Call06:
	dc.b		nG5,	$0C,	nD5,	$08,	nRst,	$04,	nB5,	$08
	dc.b		nA5,	$0C,	nE5,	$10,	nRst,	$04,	nG5,	$0C
	dc.b		nE5,	$08,	nRst,	$04,	nC6,	$08,	nA5,	$04
	dc.b		nRst,	nFs5,	nRst,	nA5,	$03,	nRst,	$01,	nA5
	dc.b		$03,	nRst,	$01,	nA5,	$03,	nRst,	$05
	smpsReturn

WorldMap_Call07:
	smpsFMvoice	$00
	dc.b		nD3,	$08,	nA2,	$04,	nD3,	nRst,	nD3,	nA2
	dc.b		nD3,	nRst,	nD3,	nA2,	nD3,	nA3,	$02,	nD3
	dc.b		nE3,	$04,	nFs3,	nD3,	nC3,	$08,	nG3,	$04
	dc.b		nC3,	nRst,	nC3,	nG2,	nC3,	$06,	nRst,	$02
	dc.b		nC3,	$04,	nD3,	$02,	nRst,	nD3,	$04,	nE3
	dc.b		$02,	nRst,	nE3,	$04,	nFs3,	nG3
	smpsReturn

WorldMap_Call08:
	dc.b		nD3,	$08,	nA2,	$04,	nD3,	nRst,	nD3,	nA2
	dc.b		nD3,	nRst,	nD3,	nA2,	nD3,	nA3,	$02,	nD3
	dc.b		nE3,	$04,	nFs3,	nD3,	nC3,	$08,	nG3,	$04
	dc.b		nC3,	nRst,	nC3,	nG2,	nC3,	nB2,	nD3,	nG3
	dc.b		nD3,	nCs3,	$02,	nG3,	nC3,	$04,	nBb2,	nA2
	smpsReturn

WorldMap_Call09:
	dc.b		nG2,	$02,	nRst,	nG3,	$04,	nD3,	nG2,	$05
	dc.b		nRst,	$03,	nG2,	$04,	nA2,	nB2,	nA2,	$02
	dc.b		nRst,	nA2,	$04,	nE3,	nA2,	$05,	nRst,	$03
	dc.b		nE3,	$02,	nA3,	nD3,	$04,	nCs3,	nC3,	$02
	dc.b		nRst,	nG2,	$07,	nRst,	$01,	nG3,	$04,	nF3
	dc.b		$02,	nG3,	nE3,	$04,	nD3,	nC3,	nD3,	nA3
	dc.b		$03,	nRst,	$05,	nA2,	$04,	nB2,	nRst,	nCs3
	dc.b		nE3
	smpsReturn

WorldMap_Call0A:
	dc.b		nRst,	$04
	smpsFMvoice	$01
	dc.b		nA5,	$03,	nRst,	$01,	nA5,	$04,	nG5,	nD5
	dc.b		nRst,	nE5,	nRst,	nFs5,	nRst,	nG5,	nRst,	nA5
	dc.b		$08,	nG5,	$04,	nFs5,	nD5,	nG5,	$32,	nRst
	dc.b		$04,	$06
	smpsReturn

WorldMap_Call0B:
	dc.b		smpsNoAttack,	$04,	nA5,	$03,	nRst,	$01,	nA5,	$04
	dc.b		nG5,	nD5,	nRst,	nE5,	nRst,	nFs5,	nRst,	nG5
	dc.b		nRst,	nA5,	$08,	nG5,	$04,	nFs5,	nD5,	nC6
	dc.b		$16,	nRst,	$02,	nC6,	$08,	nB5,	$10,	nA5
	dc.b		$0C
	smpsReturn

WorldMap_Call0C:
	dc.b		nRst,	$04,	nB5,	$0C,	nG5,	$08,	nRst,	$04
	dc.b		nD6,	$08,	nCs6,	$0C,	nA5,	$10,	nRst,	$04
	dc.b		nC6,	$0C,	nG5,	$08,	nRst,	$04,	nE6,	$08
	dc.b		nD6,	$04,	nRst,	nA5,	nRst,	nFs6,	$03,	nRst
	dc.b		$01,	nFs6,	$03,	nRst,	$01,	nFs6,	$03,	nRst
	dc.b		$01
	smpsReturn

WorldMap_Call0D:
	dc.b		nRst,	$40
	smpsFMvoice	$01
	dc.b		nG4,	$10,	nB4,	nC5,	$0C,	nD5,	nE5,	$08
	smpsReturn

WorldMap_Call0E:
	dc.b		nRst,	$40,	nE5,	$0C,	nD5,	nC5,	$08,	nD5
	dc.b		$10,	nFs5
	smpsReturn

WorldMap_Call0F:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

WorldMap_Call10:
	dc.b		nRst,	$60
	smpsPSGvoice	$00
	dc.b		nG5,	$02,	nC6,	nE6,	nG6,	nC6,	nE6,	nG6
	dc.b		nC7,	nE6,	nG6,	nC7,	nE7,	nG6,	nC7,	nE7
	dc.b		nG7
	smpsReturn

WorldMap_Call11:
	dc.b		nRst,	$60,	nB5,	$02,	nD6,	nG6,	nB6,	nD6
	dc.b		nG6,	nB6,	nD7,	nG6,	nB6,	nD7,	nG7,	nEb7
	dc.b		nD7,	nCs7,	nC7
	smpsReturn

WorldMap_Call12:
	dc.b		nG6,	$02,	nD6,	nB5,	nG6,	nB6,	nD6,	nG6
	dc.b		nB5,	nD6,	nG6,	nB6,	nB5,	nD6,	nB6,	nG6
	dc.b		nD6,	nA6,	nE6,	nCs6,	nA6,	nCs7,	nE6,	nA6
	dc.b		nCs6,	nE6,	nA6,	nCs7,	nCs6,	nE6,	nCs7,	nA6
	dc.b		nE6,	nG6,	nE6,	nC6,	nG6,	nC7,	nE6,	nG6
	dc.b		nC6,	nE6,	nG6,	nC7,	nC6,	nE6,	nC7,	nG6
	dc.b		nE6,	nA6,	nFs6,	nD6,	nA6,	nD7,	nFs6,	nA6
	dc.b		nD6,	nFs6,	nA6,	nD7,	nA6,	nFs6,	nA6,	nD7
	dc.b		nFs7
	smpsReturn

WorldMap_Call13:
	dc.b		nRst,	$64
	smpsPSGvoice	$00
	dc.b		nG5,	$02,	nC6,	nE6,	nG6,	nC6,	nE6,	nG6
	dc.b		nC7,	nE6,	nG6,	nC7,	nE7,	nG6,	nC7
	smpsReturn

WorldMap_Call14:
	dc.b		nE7,	$02,	nG7,	nRst,	$60,	nB5,	$02,	nD6
	dc.b		nG6,	nB6,	nD6,	nG6,	nB6,	nD7,	nG6,	nB6
	dc.b		nD7,	nG7,	nEb7,	nD7
	smpsReturn

WorldMap_Call15:
	dc.b		nCs7,	$02,	nC7,	nG6,	nD6,	nB5,	nG6,	nB6
	dc.b		nD6,	nG6,	nB5,	nD6,	nG6,	nB6,	nB5,	nD6
	dc.b		nB6,	nG6,	nD6,	nA6,	nE6,	nCs6,	nA6,	nCs7
	dc.b		nE6,	nA6,	nCs6,	nE6,	nA6,	nCs7,	nCs6,	nE6
	dc.b		nCs7,	nA6,	nE6,	nG6,	nE6,	nC6,	nG6,	nC7
	dc.b		nE6,	nG6,	nC6,	nE6,	nG6,	nC7,	nC6,	nE6
	dc.b		nC7,	nG6,	nE6,	nA6,	nFs6,	nD6,	nA6,	nD7
	dc.b		nFs6,	nA6,	nD6,	nFs6,	nA6,	nD7,	nA6,	nFs6
	dc.b		nA6
	smpsReturn

WorldMap_Call16:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0
	smpsReturn

WorldMap_Call17:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nRst,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst
	dc.b		nCs0
	smpsReturn

WorldMap_Call18:
	dc.b		dKick,	$04,	nRst,	dSnare,	nRst,	dKick,	dKick,	dSnare
	dc.b		nRst,	dKick,	$08,	dSnare,	dKick,	$04,	dSnare,	dSnare
	dc.b		dSnare,	dKick,	dKick,	dSnare,	dKick,	nRst,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dKick,	dSnare,	dKick,	dSnare,	dSnare
	dc.b		dSnare
	smpsReturn

WorldMap_Call19:
	dc.b		dKick,	$04,	nRst,	dSnare,	nRst,	dKick,	dKick,	dSnare
	dc.b		dKick,	nRst,	dKick,	dSnare,	$08,	dKick,	$04,	dSnare
	dc.b		dSnare,	dSnare,	dKick,	dKick,	dSnare,	dKick,	nRst,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dSnare,	dSnare
	smpsReturn

WorldMap_Call1A:
	dc.b		dKick,	$04,	dKick,	dSnare,	dKick,	nRst,	dKick,	dSnare
	dc.b		dSnare,	dKick,	dKick,	dSnare,	dKick,	nRst,	dKick,	dSnare
	dc.b		dSnare,	dSnare,	dKick,	dKick,	dSnare,	dKick,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dSnare
	dc.b		dSnare
	smpsReturn

WorldMap_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$35,$32,$31,$7A,$02,$4F,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 01
	dc.b		$15,$32,$31,$7A,$02,$4F,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 02
	dc.b		$35,$32,$31,$7A,$02,$8D,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 03
	even
