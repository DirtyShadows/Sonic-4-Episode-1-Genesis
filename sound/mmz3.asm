; =============================================================================================
; Project Name:		hsl
; Created:		6th April 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

hsl_Header:
	smpsHeaderVoice	hsl_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	hsl_DAC
	smpsHeaderFM	hsl_FM1,	smpsPitch01hi,	$08
	smpsHeaderFM	hsl_FM2,	smpsPitch00,	$05
	smpsHeaderFM	hsl_FM3,	smpsPitch00,	$05
	smpsHeaderFM	hsl_FM4,	smpsPitch02lo,	$1D
	smpsHeaderFM	hsl_FM5,	smpsPitch02lo,	$1D
	smpsHeaderPSG	hsl_PSG1,	smpsPitch03lo,	$03,	$00
	smpsHeaderPSG	hsl_PSG2,	smpsPitch03lo,	$03,	$00
	smpsHeaderPSG	hsl_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
hsl_FM1:
	smpsCall	hsl_Call01
hsl_Jump01:
	smpsCall	hsl_Call01
	smpsCall	hsl_Call01
	smpsCall	hsl_Call01
	smpsCall	hsl_Call01
	smpsCall	hsl_Call02
	smpsCall	hsl_Call01
	smpsCall	hsl_Call03
	smpsCall	hsl_Call01
	smpsCall	hsl_Call02
	smpsCall	hsl_Call01
	smpsCall	hsl_Call03
	smpsCall	hsl_Call01
	smpsCall	hsl_Call03
	smpsCall	hsl_Call01
	smpsCall	hsl_Call04
	smpsCall	hsl_Call01
	smpsCall	hsl_Call03
	smpsCall	hsl_Call01
	smpsCall	hsl_Call02
	smpsCall	hsl_Call01
	smpsJump	hsl_Jump01

; FM2 Data
hsl_FM2:
	smpsPan		panLeft,	$00
	smpsCall	hsl_Call05
hsl_Jump02:
	smpsCall	hsl_Call05
	smpsCall	hsl_Call05
	smpsCall	hsl_Call06
	smpsCall	hsl_Call07
	smpsCall	hsl_Call08
	smpsCall	hsl_Call07
	smpsCall	hsl_Call09
	smpsCall	hsl_Call07
	smpsCall	hsl_Call08
	smpsCall	hsl_Call07
	smpsCall	hsl_Call09
	smpsCall	hsl_Call07
	smpsCall	hsl_Call09
	smpsCall	hsl_Call07
	smpsCall	hsl_Call0A
	smpsCall	hsl_Call07
	smpsCall	hsl_Call09
	smpsCall	hsl_Call07
	smpsCall	hsl_Call08
	smpsCall	hsl_Call05
	smpsJump	hsl_Jump02

; FM3 Data
hsl_FM3:
	smpsPan		panRight,	$00
	smpsCall	hsl_Call0B
hsl_Jump03:
	smpsCall	hsl_Call0B
	smpsCall	hsl_Call0B
	smpsCall	hsl_Call0C
	smpsCall	hsl_Call0D
	smpsCall	hsl_Call0E
	smpsCall	hsl_Call0D
	smpsCall	hsl_Call0F
	smpsCall	hsl_Call0D
	smpsCall	hsl_Call0E
	smpsCall	hsl_Call0D
	smpsCall	hsl_Call0F
	smpsCall	hsl_Call0D
	smpsCall	hsl_Call0F
	smpsCall	hsl_Call0D
	smpsCall	hsl_Call10
	smpsCall	hsl_Call0D
	smpsCall	hsl_Call0F
	smpsCall	hsl_Call0D
	smpsCall	hsl_Call0E
	smpsCall	hsl_Call0B
	smpsJump	hsl_Jump03

; FM4 Data
hsl_FM4:
	smpsPan		panLeft,	$00
	smpsModSet	$06,	$02,	$03,	$04
	smpsCall	hsl_Call11
hsl_Jump04:
	smpsCall	hsl_Call11
	smpsCall	hsl_Call11
	smpsCall	hsl_Call11
	smpsCall	hsl_Call12
	smpsCall	hsl_Call13
	smpsCall	hsl_Call12
	smpsCall	hsl_Call14
	smpsCall	hsl_Call12
	smpsCall	hsl_Call13
	smpsCall	hsl_Call12
	smpsCall	hsl_Call14
	smpsCall	hsl_Call12
	smpsCall	hsl_Call14
	smpsCall	hsl_Call12
	smpsCall	hsl_Call15
	smpsCall	hsl_Call12
	smpsCall	hsl_Call13
	smpsCall	hsl_Call12
	smpsCall	hsl_Call16
	smpsCall	hsl_Call17
	smpsJump	hsl_Jump04

; FM5 Data
hsl_FM5:
	smpsPan		panRight,	$00
	smpsModSet	$06,	$02,	$03,	$04
	smpsCall	hsl_Call18
hsl_Jump05:
	smpsCall	hsl_Call18
	smpsCall	hsl_Call18
	smpsCall	hsl_Call18
	smpsCall	hsl_Call19
	smpsCall	hsl_Call1A
	smpsCall	hsl_Call19
	smpsCall	hsl_Call1B
	smpsCall	hsl_Call19
	smpsCall	hsl_Call1A
	smpsCall	hsl_Call19
	smpsCall	hsl_Call1B
	smpsCall	hsl_Call19
	smpsCall	hsl_Call1C
	smpsCall	hsl_Call19
	smpsCall	hsl_Call1D
	smpsCall	hsl_Call19
	smpsCall	hsl_Call1C
	smpsCall	hsl_Call19
	smpsCall	hsl_Call1E
	smpsCall	hsl_Call1F
	smpsJump	hsl_Jump05

; PSG1 Data
hsl_PSG1:
	smpsCall	hsl_Call20
hsl_Jump06:
	smpsCall	hsl_Call21
	smpsCall	hsl_Call21
	smpsCall	hsl_Call20
	smpsModSet	$06,	$02,	$02,	$01
	smpsCall	hsl_Call22
	smpsCall	hsl_Call23
	smpsCall	hsl_Call22
	smpsCall	hsl_Call24
	smpsCall	hsl_Call22
	smpsCall	hsl_Call23
	smpsCall	hsl_Call22
	smpsCall	hsl_Call25
	smpsCall	hsl_Call26
	smpsCall	hsl_Call27
	smpsCall	hsl_Call28
	smpsCall	hsl_Call29
	smpsCall	hsl_Call26
	smpsCall	hsl_Call2A
	smpsCall	hsl_Call2B
	smpsCall	hsl_Call2C
	smpsCall	hsl_Call2D
	smpsJump	hsl_Jump06

; PSG2 Data
hsl_PSG2:
	smpsCall	hsl_Call2E
hsl_Jump07:
	smpsCall	hsl_Call2F
	smpsCall	hsl_Call2F
	smpsCall	hsl_Call2E
	smpsCall	hsl_Call2E
	smpsModSet	$06,	$02,	$02,	$01
	smpsCall	hsl_Call30
	smpsCall	hsl_Call2F
	smpsCall	hsl_Call31
	smpsCall	hsl_Call2F
	smpsCall	hsl_Call30
	smpsCall	hsl_Call2F
	smpsCall	hsl_Call31
	smpsCall	hsl_Call2F
	smpsCall	hsl_Call2E
	smpsCall	hsl_Call2E
	smpsCall	hsl_Call2E
	smpsCall	hsl_Call2E
	smpsCall	hsl_Call2E
	smpsCall	hsl_Call2E
	smpsCall	hsl_Call2E
	smpsCall	hsl_Call2E
	smpsJump	hsl_Jump07

; PSG3 Data
hsl_PSG3:
	smpsPSGform	$E7
	smpsCall	hsl_Call32
hsl_Jump08:
	smpsCall	hsl_Call33
	smpsCall	hsl_Call33
	smpsCall	hsl_Call33
	smpsCall	hsl_Call34
	smpsCall	hsl_Call33
	smpsCall	hsl_Call33
	smpsCall	hsl_Call33
	smpsCall	hsl_Call34
	smpsCall	hsl_Call33
	smpsCall	hsl_Call33
	smpsCall	hsl_Call33
	smpsCall	hsl_Call34
	smpsCall	hsl_Call33
	smpsCall	hsl_Call33
	smpsCall	hsl_Call33
	smpsCall	hsl_Call34
	smpsCall	hsl_Call33
	smpsCall	hsl_Call33
	smpsCall	hsl_Call33
	smpsCall	hsl_Call34
	smpsJump	hsl_Jump08

; DAC Data
hsl_DAC:
	smpsCall	hsl_Call35
hsl_Jump09:
	smpsCall	hsl_Call36
	smpsCall	hsl_Call36
	smpsCall	hsl_Call37
	smpsCall	hsl_Call38
	smpsCall	hsl_Call36
	smpsCall	hsl_Call36
	smpsCall	hsl_Call36
	smpsCall	hsl_Call38
	smpsCall	hsl_Call36
	smpsCall	hsl_Call36
	smpsCall	hsl_Call36
	smpsCall	hsl_Call38
	smpsCall	hsl_Call36
	smpsCall	hsl_Call36
	smpsCall	hsl_Call36
	smpsCall	hsl_Call38
	smpsCall	hsl_Call36
	smpsCall	hsl_Call36
	smpsCall	hsl_Call36
	smpsCall	hsl_Call38
	smpsJump	hsl_Jump09

hsl_Call01:
	smpsFMvoice	$02
	dc.b		nA1,	$02,	nA1,	nA2,	nA2,	nA1,	nA1,	nA2
	dc.b		nA2,	nA1,	nA1,	nA2,	nA2,	nA1,	nA1,	nA2
	dc.b		nA2,	nA1,	nA1,	nA2,	nA2,	nA1,	nA1,	nA2
	dc.b		nA2,	nA1,	nA1,	nA2,	nA2,	nA1,	nA1,	nA2
	dc.b		nA2
	smpsReturn

hsl_Call02:
	dc.b		nB1,	$02,	nB1,	nB2,	nB2,	nB1,	nB1,	nB2
	dc.b		nB2,	nB1,	nB1,	nB2,	nB2,	nB1,	nB1,	nB2
	dc.b		nB2,	nBb1,	nBb1,	nBb2,	nBb2,	nBb1,	nBb1,	nBb2
	dc.b		nBb2,	nBb1,	nBb1,	nBb2,	nBb2,	nBb1,	nBb1,	nBb2
	dc.b		nBb2
	smpsReturn

hsl_Call03:
	dc.b		nC2,	$02,	nC2,	nC3,	nC3,	nC2,	nC2,	nC3
	dc.b		nC3,	nC2,	nC2,	nC3,	nC3,	nC2,	nC2,	nC3
	dc.b		nC3,	nD2,	nD2,	nD3,	nD3,	nD2,	nD2,	nD3
	dc.b		nD3,	nD2,	nD2,	nD3,	nD3,	nD2,	nD2,	nD3
	dc.b		nD3
	smpsReturn

hsl_Call04:
	dc.b		nB1,	$02,	nB1,	nB2,	nB2,	nB1,	nB1,	nB2
	dc.b		nB2,	nB1,	nB1,	nB2,	nB2,	nB1,	nB1,	nB2
	dc.b		nB2,	nE2,	nE2,	nE3,	nE3,	nE2,	nE2,	nE3
	dc.b		nE3,	nE2,	nE2,	nE3,	nE3,	nE2,	nE2,	nE3
	dc.b		nE3
	smpsReturn

hsl_Call05:
	smpsFMvoice	$01
	dc.b		nA3,	$04,	nA3,	nG4,	$08,	nA3,	$04,	nG4
	dc.b		$08,	nA3,	$04,	nG4,	$08,	nA3,	$04,	nG4
	dc.b		$08,	nA4,	$0C
	smpsReturn

hsl_Call06:
	dc.b		nA3,	$04,	nA3,	nG4,	$08,	nA3,	$04,	nG4
	dc.b		$08,	nA3,	$04,	nA4,	nG4,	nFs4,	nE4,	$14
	smpsReturn

hsl_Call07:
	dc.b		nA2,	$04,	$02,	nRst,	nA2,	nRst,	nA2,	nRst
	dc.b		nA2,	nRst,	nA2,	nRst,	nA2,	nRst,	nA2,	nRst
	dc.b		nA2,	nRst,	nA2,	nRst,	nA2,	nRst,	nA2,	nRst
	dc.b		nA2,	nRst,	nA2,	nRst,	nA2,	nRst,	nA2,	nRst
	smpsReturn

hsl_Call08:
	dc.b		nB2,	$04,	$02,	nRst,	nB2,	nRst,	nB2,	nRst
	dc.b		nB2,	nRst,	nB2,	nRst,	nB2,	nRst,	nB2,	nRst
	dc.b		nBb2,	nRst,	nBb2,	nRst,	nBb2,	nRst,	nBb2,	nRst
	dc.b		nBb2,	nRst,	nBb2,	nRst,	nBb2,	nRst,	nBb2,	nRst
	smpsReturn

hsl_Call09:
	dc.b		nC3,	$04,	$02,	nRst,	nC3,	nRst,	nC3,	nRst
	dc.b		nC3,	nRst,	nC3,	nRst,	nC3,	nRst,	nC3,	nRst
	dc.b		nD3,	nRst,	nD3,	nRst,	nD3,	nRst,	nD3,	nRst
	dc.b		nD3,	nRst,	nD3,	nRst,	nD3,	nRst,	nD3,	nRst
	smpsReturn

hsl_Call0A:
	dc.b		nB2,	$04,	$02,	nRst,	nB2,	nRst,	nB2,	nRst
	dc.b		nB2,	nRst,	nB2,	nRst,	nB2,	nRst,	nB2,	nRst
	dc.b		nE3,	$04,	$02,	nRst,	nE3,	nRst,	nE3,	nRst
	dc.b		nE3,	nRst,	nE3,	nRst,	nE3,	nRst,	nE3,	nRst
	smpsReturn

hsl_Call0B:
	smpsFMvoice	$01
	dc.b		nE3,	$04,	nE3,	nC4,	$08,	nE3,	$04,	nC4
	dc.b		$08,	nE3,	$04,	nC4,	$08,	nE3,	$04,	nC4
	dc.b		$08,	nD4,	$0C
	smpsReturn

hsl_Call0C:
	dc.b		nE3,	$04,	nE3,	nC4,	$08,	nE3,	$04,	nC4
	dc.b		$08,	nE3,	$04,	nD4,	nC4,	nB3,	nA3,	$14
	smpsReturn

hsl_Call0D:
	dc.b		nE2,	$04,	$02,	nRst,	nE2,	nRst,	nE2,	nRst
	dc.b		nE2,	nRst,	nE2,	nRst,	nE2,	nRst,	nE2,	nRst
	dc.b		nE2,	nRst,	nE2,	nRst,	nE2,	nRst,	nE2,	nRst
	dc.b		nE2,	nRst,	nE2,	nRst,	nE2,	nRst,	nE2,	nRst
	smpsReturn

hsl_Call0E:
	dc.b		nFs2,	$04,	$02,	nRst,	nFs2,	nRst,	nFs2,	nRst
	dc.b		nFs2,	nRst,	nFs2,	nRst,	nFs2,	nRst,	nFs2,	nRst
	dc.b		nF2,	nRst,	nF2,	nRst,	nF2,	nRst,	nF2,	nRst
	dc.b		nF2,	nRst,	nF2,	nRst,	nF2,	nRst,	nF2,	nRst
	smpsReturn

hsl_Call0F:
	dc.b		nG2,	$04,	$02,	nRst,	nG2,	nRst,	nG2,	nRst
	dc.b		nG2,	nRst,	nG2,	nRst,	nG2,	nRst,	nG2,	nRst
	dc.b		nA2,	nRst,	nA2,	nRst,	nA2,	nRst,	nA2,	nRst
	dc.b		nA2,	nRst,	nA2,	nRst,	nA2,	nRst,	nA2,	nRst
	smpsReturn

hsl_Call10:
	dc.b		nFs2,	$04,	$02,	nRst,	nFs2,	nRst,	nFs2,	nRst
	dc.b		nFs2,	nRst,	nFs2,	nRst,	nFs2,	nRst,	nFs2,	nRst
	dc.b		nB2,	$04,	$02,	nRst,	nB2,	nRst,	nB2,	nRst
	dc.b		nB2,	nRst,	nB2,	nRst,	nB2,	nRst,	nB2,	nRst
	smpsReturn

hsl_Call11:
	dc.b		smpsNoAttack,	$40
	smpsReturn

hsl_Call12:
	smpsFMvoice	$00
	dc.b		nB4,	$40
	smpsReturn

hsl_Call13:
	dc.b		nD5,	$20,	nD5
	smpsReturn

hsl_Call14:
	dc.b		nE5,	$20,	nD5
	smpsReturn

hsl_Call15:
	dc.b		nA4,	$20,	nB4
	smpsReturn

hsl_Call16:
	dc.b		nE5,	$20,	nBb4
	smpsReturn

hsl_Call17:
	dc.b		nRst,	$40
	smpsReturn

hsl_Call18:
	dc.b		smpsNoAttack,	$40
	smpsReturn

hsl_Call19:
	smpsFMvoice	$00
	dc.b		nG4,	$40
	smpsReturn

hsl_Call1A:
	dc.b		nA4,	$20,	nBb4
	smpsReturn

hsl_Call1B:
	dc.b		nG4,	$20,	nF4
	smpsReturn

hsl_Call1C:
	dc.b		nG4,	$20,	nA4
	smpsReturn

hsl_Call1D:
	dc.b		nF4,	$20,	nE4
	smpsReturn

hsl_Call1E:
	dc.b		nB4,	$20,	nF4
	smpsReturn

hsl_Call1F:
	dc.b		nRst,	$40
	smpsReturn

hsl_Call20:
	dc.b		smpsNoAttack,	$40
	smpsReturn

hsl_Call21:
	dc.b		nRst,	$40
	smpsReturn

hsl_Call22:
	smpsPSGvoice	$07
	dc.b		nA5,	$04,	nG5,	nE5,	nB4,	$20,	$08,	nC5
	dc.b		$04,	nB4,	nG4
	smpsReturn

hsl_Call23:
	dc.b		nA4,	$20,	nBb4
	smpsReturn

hsl_Call24:
	dc.b		nC5,	$20,	nC5
	smpsReturn

hsl_Call25:
	dc.b		nC5,	$20,	nD5
	smpsReturn

hsl_Call26:
	dc.b		nRst,	$08,	nA4,	nB4,	nC5,	nD5,	nE5,	nD5
	dc.b		nE5
	smpsReturn

hsl_Call27:
	dc.b		nG5,	$20,	nFs5
	smpsReturn

hsl_Call28:
	dc.b		nRst,	$08,	nA4,	nB4,	nC5,	nD5,	nE5,	nG5
	dc.b		nE5
	smpsReturn

hsl_Call29:
	dc.b		nA5,	$20,	nAb5
	smpsReturn

hsl_Call2A:
	dc.b		nG5,	$20,	nFs5,	$14,	nG5,	$04,	nFs5,	nD5
	smpsReturn

hsl_Call2B:
	dc.b		nE5,	$14,	nA4,	$04,	nG4,	nA4,	$1C,	nG4
	dc.b		$04,	nA4
	smpsReturn

hsl_Call2C:
	dc.b		nD5,	$14,	nC5,	$04,	nB4,	nA4,	$0C,	nB4
	dc.b		$08,	nBb4,	nAb4
	smpsReturn

hsl_Call2D:
	dc.b		nA4,	$40
	smpsReturn

hsl_Call2E:
	dc.b		smpsNoAttack,	$40
	smpsReturn

hsl_Call2F:
	dc.b		nRst,	$40
	smpsReturn

hsl_Call30:
	dc.b		smpsNoAttack,	$20
	smpsPSGvoice	$07
	dc.b		nF4
	smpsReturn

hsl_Call31:
	smpsPSGvoice	$07
	dc.b		nG4,	$20,	nF4
	smpsReturn

hsl_Call32:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	smpsReturn

hsl_Call33:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nCs0
	smpsReturn

hsl_Call34:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	smpsReturn

hsl_Call35:
	dc.b		dCrashCymbal,	$08,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	$06,	dKick,	$02
	smpsReturn

hsl_Call36:
	dc.b		dKick,	$08,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	$06,	dKick,	$02
	smpsReturn

hsl_Call37:
	dc.b		dKick,	$08,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	$02,	dSnare,	dSnare,	dSnare
	smpsReturn

hsl_Call38:
	dc.b		dCrashCymbal,	$08,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	$06,	dKick,	$02
	smpsReturn

hsl_Voices:
	dc.b		$2C,$64,$64,$34,$34,$1F,$12,$1F,$1F,$00,$00,$00,$00,$00,$01,$00
	dc.b		$01,$0F,$3F,$0F,$3F,$16,$00,$17,$00;			Voice 00
	dc.b		$28,$33,$F3,$D0,$30,$DF,$DC,$1F,$1F,$14,$05,$01,$01,$00,$01,$00
	dc.b		$1D,$11,$21,$10,$F8,$0E,$1B,$12,$91;			Voice 01
	dc.b		$3D,$01,$63,$60,$01,$5F,$1F,$1F,$51,$07,$06,$06,$06,$04,$04,$05
	dc.b		$03,$0F,$0F,$0F,$0F,$15,$18,$0C,$0C;			Voice 02
	dc.b		$00,$12,$81,$06,$03,$01,$03,$08,$C2,$00,$00,$00,$30,$0C,$05,$01
	even
