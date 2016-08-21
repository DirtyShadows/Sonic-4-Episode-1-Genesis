; =============================================================================================
; Project Name:		music05
; Created:		24th May 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

music05_Header:
	smpsHeaderVoice	music05_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	music05_DAC
	smpsHeaderFM	music05_FM1,	smpsPitch01hi,	$0A
	smpsHeaderFM	music05_FM2,	smpsPitch00,	$09
	smpsHeaderFM	music05_FM3,	smpsPitch00,	$10
	smpsHeaderFM	music05_FM4,	smpsPitch02lo,	$16
	smpsHeaderFM	music05_FM5,	smpsPitch00,	$14
	smpsHeaderPSG	music05_PSG1,	smpsPitch03lo,	$06,	$00
	smpsHeaderPSG	music05_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	music05_PSG3,	smpsPitch03lo,	$01,	$00

; FM1 Data
music05_FM1:
	smpsCall	music05_Call01
	smpsCall	music05_Call02
	smpsCall	music05_Call03
	smpsCall	music05_Call04
	smpsCall	music05_Call03
	smpsCall	music05_Call04
	smpsCall	music05_Call05
	smpsCall	music05_Call05
	smpsCall	music05_Call06
	smpsCall	music05_Call07
	smpsCall	music05_Call08
	smpsCall	music05_Call09
	smpsJump	music05_FM1

; FM2 Data
music05_FM2:
	smpsCall	music05_Call0A
	smpsCall	music05_Call0A
	smpsCall	music05_Call0B
	smpsCall	music05_Call0C
	smpsCall	music05_Call0D
	smpsCall	music05_Call0C
	smpsCall	music05_Call0E
	smpsCall	music05_Call0F
	smpsCall	music05_Call10
	smpsCall	music05_Call11
	smpsCall	music05_Call10
	smpsCall	music05_Call12
	smpsJump	music05_FM2

; FM3 Data
music05_FM3:
	smpsCall	music05_Call13
	smpsCall	music05_Call14
	smpsCall	music05_Call15
	smpsCall	music05_Call16
	smpsCall	music05_Call15
	smpsCall	music05_Call16
	smpsCall	music05_Call17
	smpsCall	music05_Call17
	smpsCall	music05_Call18
	smpsCall	music05_Call19
	smpsCall	music05_Call18
	smpsCall	music05_Call1A
	smpsJump	music05_FM3

; FM4 Data
music05_FM4:
	smpsCall	music05_Call1B
	smpsCall	music05_Call1C
	smpsCall	music05_Call1D
	smpsCall	music05_Call1D
	smpsCall	music05_Call1D
	smpsCall	music05_Call1D
	smpsCall	music05_Call1E
	smpsCall	music05_Call1F
	smpsCall	music05_Call1F
	smpsCall	music05_Call1F
	smpsCall	music05_Call20
	smpsCall	music05_Call21
	smpsJump	music05_FM4

; FM5 Data
music05_FM5:
	smpsPan		panRight,	$00
	smpsCall	music05_Call22
	smpsCall	music05_Call22
	smpsCall	music05_Call23
	smpsCall	music05_Call24
	smpsCall	music05_Call25
	smpsCall	music05_Call24
	smpsCall	music05_Call26
	smpsCall	music05_Call27
	smpsCall	music05_Call28
	smpsCall	music05_Call29
	smpsCall	music05_Call28
	smpsCall	music05_Call2A
	smpsJump	music05_FM5

; PSG1 Data
music05_PSG1:
	smpsCall	music05_Call2B
	smpsCall	music05_Call2B
	smpsCall	music05_Call2C
	smpsCall	music05_Call2D
	smpsCall	music05_Call2D
	smpsCall	music05_Call2D
	smpsCall	music05_Call2E
	smpsCall	music05_Call2E
	smpsCall	music05_Call2D
	smpsCall	music05_Call2F
	smpsCall	music05_Call30
	smpsCall	music05_Call31
	smpsJump	music05_PSG1

; PSG2 Data
music05_PSG2:
	smpsCall	music05_Call32
	smpsCall	music05_Call32
	smpsCall	music05_Call33
	smpsCall	music05_Call33
	smpsCall	music05_Call33
	smpsCall	music05_Call33
	smpsCall	music05_Call33
	smpsCall	music05_Call33
	smpsCall	music05_Call34
	smpsCall	music05_Call35
	smpsCall	music05_Call34
	smpsCall	music05_Call36
	smpsJump	music05_PSG2

; PSG3 Data
music05_PSG3:
	smpsPSGform	$E7
	smpsCall	music05_Call37
	smpsCall	music05_Call38
	smpsCall	music05_Call39
	smpsCall	music05_Call39
	smpsCall	music05_Call39
	smpsCall	music05_Call3A
	smpsCall	music05_Call37
	smpsCall	music05_Call38
	smpsCall	music05_Call38
	smpsCall	music05_Call38
	smpsCall	music05_Call3B
	smpsCall	music05_Call3C
	smpsJump	music05_PSG3

; DAC Data
music05_DAC:
	smpsCall	music05_Call3D
	smpsCall	music05_Call3E
	smpsCall	music05_Call3E
	smpsCall	music05_Call3F
	smpsCall	music05_Call40
	smpsCall	music05_Call41
	smpsJump	music05_DAC

music05_Call01:
	smpsFMvoice	$00
	dc.b		nA1,	$04,	nA1,	nRst,	nB1,	nC2,	nG1,	nRst
	dc.b		$08,	nF1,	$04,	nC2,	nD2,	$02,	nF2,	nE2
	dc.b		$08,	nB1,	$04,	nE2,	$08
	smpsReturn

music05_Call02:
	dc.b		nA1,	$04,	nA1,	nRst,	nB1,	nC2,	nG1,	nRst
	dc.b		$08,	nF1,	$04,	nC2,	nD2,	$02,	nF2,	nE2
	dc.b		$08,	nB2,	$04,	nE3,	$08
	smpsReturn

music05_Call03:
	dc.b		nA1,	$04,	nA2,	nA1,	nA2,	nA1,	nA2,	nA1
	dc.b		nA2,	nG1,	nG2,	nG1,	nG2,	nG1,	nG2,	nG1
	dc.b		nG2
	smpsReturn

music05_Call04:
	dc.b		nF1,	$04,	nF2,	nF1,	nF2,	nF1,	nF2,	nF1
	dc.b		nF2,	nG1,	nG2,	nG1,	nG2,	nG1,	nG2,	nG1
	dc.b		nG2
	smpsReturn

music05_Call05:
	dc.b		nA1,	$04,	nA2,	nA1,	nB1,	nC2,	$08,	nD2
	dc.b		$04,	nEb2,	$14,	nRst,	$04,	nG2,	nC2,	$08
	smpsReturn

music05_Call06:
	dc.b		nA1,	$0C,	nRst,	$08,	nA1,	$02,	nA2,	nA1
	dc.b		$04,	nG1,	$08,	nB1,	$04,	nD2,	nG2,	$08
	dc.b		nF2,	$04,	nE2,	nC2
	smpsReturn

music05_Call07:
	dc.b		nF1,	$0C,	nRst,	$08,	nC2,	$02,	nF2,	nF1
	dc.b		$04,	nG1,	$08,	nC2,	$04,	nD2,	nG2,	$08
	dc.b		nF2,	$04,	nE2,	nC2
	smpsReturn

music05_Call08:
	dc.b		nA1,	$04,	nA2,	nA1,	nA2,	nA1,	nC2,	nE2
	dc.b		nG2,	$08,	$04,	nF2,	nF2,	nE2,	nE2,	nD2
	dc.b		nC2
	smpsReturn

music05_Call09:
	dc.b		nF1,	$04,	nF2,	nF1,	nF2,	nF1,	nA1,	nC2
	dc.b		nE2,	$08,	$04,	nD2,	nEb2,	nE2,	nD2,	nC2
	dc.b		nG1
	smpsReturn

music05_Call0A:
	smpsFMvoice	$01
	dc.b		nA4,	$04,	nE4,	nRst,	nA4,	nG4,	nD4,	nRst
	dc.b		$08,	nF4,	$04,	nC4,	nF4,	nE4,	$10,	nRst
	dc.b		$04
	smpsReturn

music05_Call0B:
	dc.b		smpsNoAttack,	$04,	nA4,	nE4,	nRst,	nA4,	nE4,	nRst
	dc.b		nA4,	nG4,	$0C,	nE4,	$14
	smpsReturn

music05_Call0C:
	dc.b		nRst,	$04,	nA4,	nE4,	nRst,	nA4,	nE4,	nRst
	dc.b		nA4,	nG4,	$0C,	nB4,	$08,	nC5,	$04,	nB4
	dc.b		$08
	smpsReturn

music05_Call0D:
	dc.b		nRst,	$04,	nA4,	nE4,	nRst,	nA4,	nE4,	nRst
	dc.b		nA4,	nG4,	$0C,	nE4,	$14
	smpsReturn

music05_Call0E:
	dc.b		nRst,	$04,	nA4,	nA4,	$08,	nG4,	nG4,	$04
	dc.b		nFs4,	$1C,	nRst,	$08
	smpsReturn

music05_Call0F:
	dc.b		smpsNoAttack,	$04,	nA4,	nA4,	$08,	nG4,	nG4,	$04
	dc.b		nFs4,	$1C,	nRst,	$08
	smpsReturn

music05_Call10:
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nE5,	$24
	smpsReturn

music05_Call11:
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nF5,	$0C,	nE5,	$08,	nD5,	nC5
	smpsReturn

music05_Call12:
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nE5,	$0C,	nD5,	$08,	nC5,	nE5
	smpsReturn

music05_Call13:
	dc.b		nRst,	$04
	smpsFMvoice	$01
	dc.b		nC4,	$08,	nA3,	$04,	nD4,	nE4,	nG4,	nE4
	dc.b		nC4,	nC4,	nA3,	nB3,	$14
	smpsReturn

music05_Call14:
	dc.b		nRst,	$04,	nC4,	$08,	nA3,	$04,	nC4,	nE4
	dc.b		nG4,	nF4,	$0C,	nE4,	$08,	nD4,	nC4
	smpsReturn

music05_Call15:
	dc.b		nRst,	$04
	smpsFMvoice	$02
	dc.b		nA4,	nE4,	nRst,	nA4,	nE4,	nRst,	nA4,	nG4
	dc.b		$0C,	nE4,	$14
	smpsReturn

music05_Call16:
	dc.b		nRst,	$04,	nA4,	nE4,	nRst,	nA4,	nE4,	nRst
	dc.b		nA4,	nG4,	$0C,	nB4,	$08,	nC5,	$04,	nB4
	dc.b		$08
	smpsReturn

music05_Call17:
	dc.b		nRst,	$24
	smpsFMvoice	$01
	dc.b		nC5,	$04,	nRst,	nC5,	nB4,	nC5,	nB4,	$08
	smpsReturn

music05_Call18:
	smpsFMvoice	$02
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nE5,	$24
	smpsReturn

music05_Call19:
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nF5,	$0C,	nE5,	$08,	nD5,	nC5
	smpsReturn

music05_Call1A:
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nE5,	$0C,	nD5,	$08,	nC5,	nE5
	smpsReturn

music05_Call1B:
	dc.b		nRst,	$20
	smpsFMvoice	$03
	dc.b		nF4,	$0C,	nE4,	$14
	smpsReturn

music05_Call1C:
	dc.b		nRst,	$20,	nF4,	$0C,	nE4,	$14
	smpsReturn

music05_Call1D:
	dc.b		nC4,	$20,	nB3
	smpsReturn

music05_Call1E:
	dc.b		nRst,	$40
	smpsReturn

music05_Call1F:
	dc.b		smpsNoAttack,	$40
	smpsReturn

music05_Call20:
	smpsFMvoice	$03
	dc.b		nE4,	$1C,	nA3,	$24
	smpsReturn

music05_Call21:
	dc.b		nC4,	$1C,	nFs3,	$24
	smpsReturn

music05_Call22:
	dc.b		nRst,	$04
	smpsFMvoice	$01
	dc.b		nA4,	nE4,	nRst,	nA4,	nG4,	nD4,	nRst,	$08
	dc.b		nF4,	$04,	nC4,	nF4,	nE4,	$10
	smpsReturn

music05_Call23:
	dc.b		nRst,	$08,	nA4,	$04,	nE4,	nRst,	nA4,	nE4
	dc.b		nRst,	nA4,	nG4,	$0C,	nE4,	$10
	smpsReturn

music05_Call24:
	dc.b		smpsNoAttack,	$04,	nRst,	nA4,	nE4,	nRst,	nA4,	nE4
	dc.b		nRst,	nA4,	nG4,	$0C,	nB4,	$08,	nC5,	$04
	dc.b		nB4
	smpsReturn

music05_Call25:
	dc.b		smpsNoAttack,	$04,	nRst,	nA4,	nE4,	nRst,	nA4,	nE4
	dc.b		nRst,	nA4,	nG4,	$0C,	nE4,	$10
	smpsReturn

music05_Call26:
	dc.b		smpsNoAttack,	$04,	nRst,	nA4,	nA4,	$08,	nG4,	nG4
	dc.b		$04,	nFs4,	$1C,	nRst,	$04
	smpsReturn

music05_Call27:
	dc.b		smpsNoAttack,	$08,	nA4,	$04,	$08,	nG4,	nG4,	$04
	dc.b		nFs4,	$1C,	nRst,	$04
	smpsReturn

music05_Call28:
	dc.b		smpsNoAttack,	$04,	nE5,	nA4,	nC5,	nA4,	nD5,	nE5
	dc.b		nG5,	nE5,	$20
	smpsReturn

music05_Call29:
	dc.b		smpsNoAttack,	$04,	nE5,	nA4,	nC5,	nA4,	nD5,	nE5
	dc.b		nG5,	nF5,	$0C,	nE5,	$08,	nD5,	nC5,	$04
	smpsReturn

music05_Call2A:
	dc.b		smpsNoAttack,	$04,	nE5,	nA4,	nC5,	nA4,	nD5,	nE5
	dc.b		nG5,	nE5,	$0C,	nD5,	$08,	nC5,	nE5,	$04
	smpsReturn

music05_Call2B:
	dc.b		nRst,	$04
	smpsPSGvoice	$00
	dc.b		nA4,	nE4,	nRst,	nA4,	nG4,	nD4,	nRst,	$08
	dc.b		nF4,	$04,	nC4,	nF4,	nE4,	$10
	smpsReturn

music05_Call2C:
	dc.b		nRst,	$40
	smpsReturn

music05_Call2D:
	dc.b		smpsNoAttack,	$40
	smpsReturn

music05_Call2E:
	smpsPSGvoice	$00
	dc.b		nA3,	$01,	nRst,	nB3,	nRst,	nC4,	nRst,	nD4
	dc.b		nRst,	nE4,	nRst,	nG4,	nRst,	nA4,	nRst,	nB4
	dc.b		nRst,	nC5,	nRst,	nA4,	nRst,	nG4,	nRst,	nE4
	dc.b		nRst,	nC4,	nRst,	nA3,	nRst,	nG3,	$08,	nRst
	dc.b		$1C
	smpsReturn

music05_Call2F:
	dc.b		smpsNoAttack,	$38
	smpsPSGvoice	$00
	dc.b		nD5,	$01,	nB4,	nD5,	nB4,	nE5,	nC5,	nE5
	dc.b		nC5
	smpsReturn

music05_Call30:
	dc.b		nA5,	$01,	nA4,	nA5,	nE5,	nA5,	nE6,	nA5
	dc.b		nA6,	nC6,	$04,	nA5,	nD6,	nE6,	nG6,	nE6
	dc.b		$24
	smpsReturn

music05_Call31:
	dc.b		nE6,	$04,	nA5,	nC6,	nA5,	nD6,	nE6,	nG6
	dc.b		nE6,	$0C,	nD6,	$08,	nC6,	nE6
	smpsReturn

music05_Call32:
	smpsPSGvoice	$00
	dc.b		nA4,	$04,	nE4,	nRst,	nA4,	nG4,	nD4,	nRst
	dc.b		$08,	nF4,	$04,	nC4,	nF4,	nE4,	$10,	nRst
	dc.b		$04
	smpsReturn

music05_Call33:
	dc.b		smpsNoAttack,	$40
	smpsReturn

music05_Call34:
	smpsPSGvoice	$00
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nE5,	$24
	smpsReturn

music05_Call35:
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nF5,	$0C,	nE5,	$08,	nD5,	nC5
	smpsReturn

music05_Call36:
	dc.b		nE5,	$04,	nA4,	nC5,	nA4,	nD5,	nE5,	nG5
	dc.b		nE5,	$0C,	nD5,	$08,	nC5,	nE5
	smpsReturn

music05_Call37:
	dc.b		nRst,	$40
	smpsReturn

music05_Call38:
	dc.b		smpsNoAttack,	$40
	smpsReturn

music05_Call39:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0
	dc.b		$04,	$02,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0
	dc.b		$04,	$02,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0
	dc.b		$04,	$02,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0
	dc.b		nCs0
	smpsReturn

music05_Call3A:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0
	dc.b		$04,	$02,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0
	dc.b		$04,	$02,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0
	dc.b		$04,	$02,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0
	dc.b		$04
	smpsReturn

music05_Call3B:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nCs0,	nCs0,	nCs0,	nCs0,	$02,	nCs0
	dc.b		nCs0,	$04,	$02,	nCs0,	nCs0,	$08,	$04,	nCs0
	dc.b		nCs0,	$02,	nCs0,	nCs0,	$04,	nCs0,	nCs0,	nCs0
	smpsReturn

music05_Call3C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nCs0,	nCs0,	nCs0,	nCs0,	$02,	nCs0
	dc.b		nCs0,	$04,	$02,	nCs0,	nCs0,	$08,	$04,	nCs0
	dc.b		nCs0,	$02,	nCs0,	nCs0,	$04,	nCs0,	nCs0,	nCs0
	dc.b		$02,	nRst
	smpsReturn

music05_Call3D:
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	$0A,	dKick,	$02
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	$06
	dc.b		dKick,	$02,	nRst,	dSnare,	nRst,	dSnare,	dSnare,	dKick
	dc.b		nRst,	dKick,	nRst,	$0A,	dKick,	$02,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	$06,	dKick,	$02,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dSnare,	nRst,	dSnare,	dSnare
	smpsReturn

music05_Call3E:
	dc.b		dKick,	$02,	nRst,	dKick,	nRst,	dSnare,	nRst,	$04
	dc.b		dHiTimpaniS1,	$02,	dKick,	nRst,	dKick,	nRst,	dSnare,	nRst
	dc.b		$04,	dHiTimpaniS1,	$02,	dKick,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	$04,	dMidTimpaniS1,	$02,	dKick,	nRst,	dKick,	nRst
	dc.b		dSnare,	nRst,	$04,	dMidTimpaniS1,	$02,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	$04,	dHiTimpaniS1,	$02,	dKick,	nRst
	dc.b		dKick,	nRst,	dSnare,	nRst,	$04,	dHiTimpaniS1,	$02,	dKick
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	$04,	dMidTimpaniS1,	$02
	dc.b		dKick,	nRst,	dKick,	nRst,	dSnare,	dSnare,	dSnare,	nRst
	smpsReturn

music05_Call3F:
	dc.b		dKick,	$02,	nRst,	dSnare,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	$06,	dHiTimpaniS1,	$02,	nRst,	dHiTimpaniS1,	dHiTimpaniS1,	nRst
	dc.b		dHiTimpaniS1,	dMidTimpaniS1,	nRst,	dMidTimpaniS1,	nRst,	dKick,	dMidTimpaniS1,	dMidTimpaniS1
	dc.b		dMidTimpaniS1,	dKick,	nRst,	dSnare,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst,	dKick
	dc.b		nRst,	$06,	dHiTimpaniS1,	$02,	nRst,	dHiTimpaniS1,	dHiTimpaniS1,	nRst
	dc.b		dHiTimpaniS1,	dKick,	nRst,	dMidTimpaniS1,	nRst,	dKick,	dMidTimpaniS1,	dMidTimpaniS1
	dc.b		dMidTimpaniS1
	smpsReturn

music05_Call40:
	dc.b		dKick,	$02,	nRst,	$12,	dSnare,	$02,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	$06,	dKick,	$02,	nRst,	dSnare
	dc.b		nRst,	dSnare,	nRst,	dHiTimpaniS1,	dHiTimpaniS1,	nRst,	dHiTimpaniS1,	dMidTimpaniS1
	dc.b		nRst,	dMidTimpaniS1,	nRst,	dKick,	nRst,	$12,	dSnare,	$02
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dSnare,	dSnare,	nRst,	dSnare,	dHiTimpaniS1,	nRst,	dHiTimpaniS1
	dc.b		dHiTimpaniS1,	dSnare,	dHiTimpaniS1,	dMidTimpaniS1,	dMidTimpaniS1
	smpsReturn

music05_Call41:
	dc.b		dKick,	$02,	nRst,	$12,	dSnare,	$02,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	$06,	dKick,	$02,	nRst,	dSnare
	dc.b		dSnare,	nRst,	dSnare,	dHiTimpaniS1,	dHiTimpaniS1,	nRst,	dHiTimpaniS1,	dMidTimpaniS1
	dc.b		nRst,	dMidTimpaniS1,	nRst,	dKick,	nRst,	$12,	dSnare,	$02
	dc.b		nRst,	dSnare,	nRst,	dKick,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	dSnare,	dSnare,	nRst,	dSnare,	dHiTimpaniS1,	nRst,	dHiTimpaniS1
	dc.b		dHiTimpaniS1,	dSnare,	dHiTimpaniS1,	dMidTimpaniS1,	dMidTimpaniS1
	smpsReturn

;music05_Call42:
;	dc.b		dkick,	$04,	dsnare,	dkick,	dsnare,	dkick,	$08,	dsnare
;	dc.b		$04,	dkick,	dKick,	dKick,	$8C,	$02,	$8C,	$8D
;	dc.b		$04,	$8E,	$02,	$8E,	$8E,	$04,	$86,	$02
;	dc.b		$86,	$86,	$04
;	smpsReturn

;music05_Call43:
;	dc.b		dkick,	$14,	dkick,	$04,	dkick,	dsnare,	$08,	$02
;	dc.b		dKick,	dkick,	$04,	$8C,	$02,	$8C,	$8D,	$04
;	dc.b		$8E,	dkick,	dkick
;	smpsReturn

;music05_Call44:
;	dc.b		dkick,	$14,	dkick,	$04,	dkick,	dsnare,	$08,	dKick
;	dc.b		$02,	dKick,	dkick,	$04,	$8C,	$02,	$8C,	$8D
;	dc.b		$04,	$8E,	dkick,	dkick,	$02,	dkick
;	smpsReturn

;music05_Call45:
;	dc.b		dkick,	$04,	dsnare,	dkick,	dsnare,	$02,	dkick,	dsnare
;	dc.b		dkick,	$06,	$04,	dsnare,	$08,	$04,	dkick,	dsnare
;	dc.b		$02,	dkick,	dsnare,	dkick,	dsnare,	$04,	dkick,	dkick
;	dc.b		$02,	dkick
;	smpsReturn

;music05_Call46:
;	dc.b		dkick,	$04,	dsnare,	dkick,	dsnare,	$02,	dkick,	dsnare
;	dc.b		dkick,	$06,	$04,	dsnare,	$08,	$04,	dkick,	dsnare
;	dc.b		$02,	dkick,	dsnare,	dkick,	dsnare,	$04,	dkick,	$02
;	dc.b		dkick,	dkick,	dkick
;	smpsReturn

music05_Voices:
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$2F,$1F,$1F,$FF,$19,$37,$13,$80;			Voice 00
	dc.b		$3D,$01,$01,$03,$01,$50,$52,$58,$59,$0F,$02,$02,$02,$04,$00,$00
	dc.b		$00,$17,$09,$19,$19,$13,$0C,$14,$80;			Voice 01
	dc.b		$38,$33,$01,$51,$01,$10,$13,$1A,$1B,$0F,$1F,$1F,$1F,$01,$01,$01
	dc.b		$01,$33,$03,$03,$08,$16,$1A,$19,$80;			Voice 02
	dc.b		$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$00,$00,$00,$00,$01,$00
	dc.b		$01,$00,$36,$00,$36,$16,$80,$17,$80;			Voice 03
	dc.b		$00;			Voice 04
	even
