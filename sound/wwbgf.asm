; =============================================================================================
; Project Name:		WackyWorkbenchGoodFuture
; Created:		23rd August 2015
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

WackyWorkbenchGoodFuture_Header:
	smpsHeaderVoice	WackyWorkbenchGoodFuture_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$03

	smpsHeaderDAC	WackyWorkbenchGoodFuture_DAC
	smpsHeaderFM	WackyWorkbenchGoodFuture_FM1,	smpsPitch00,	$10
	smpsHeaderFM	WackyWorkbenchGoodFuture_FM2,	smpsPitch01hi,	$10
	smpsHeaderFM	WackyWorkbenchGoodFuture_FM3,	smpsPitch00,	$10
	smpsHeaderFM	WackyWorkbenchGoodFuture_FM4,	smpsPitch00,	$10
	smpsHeaderFM	WackyWorkbenchGoodFuture_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	WackyWorkbenchGoodFuture_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	WackyWorkbenchGoodFuture_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	WackyWorkbenchGoodFuture_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
WackyWorkbenchGoodFuture_FM1:
	smpsCall	WackyWorkbenchGoodFuture_Call01
	smpsCall	WackyWorkbenchGoodFuture_Call01
	smpsCall	WackyWorkbenchGoodFuture_Call01
	smpsCall	WackyWorkbenchGoodFuture_Call01
	smpsCall	WackyWorkbenchGoodFuture_Call01
	smpsCall	WackyWorkbenchGoodFuture_Call01
	smpsCall	WackyWorkbenchGoodFuture_Call01
WackyWorkbenchGoodFuture_Jump01:
	smpsCall	WackyWorkbenchGoodFuture_Call01
	smpsCall	WackyWorkbenchGoodFuture_Call02
	smpsCall	WackyWorkbenchGoodFuture_Call02
	smpsCall	WackyWorkbenchGoodFuture_Call02
	smpsCall	WackyWorkbenchGoodFuture_Call02
	smpsCall	WackyWorkbenchGoodFuture_Call03
	smpsCall	WackyWorkbenchGoodFuture_Call03
	smpsCall	WackyWorkbenchGoodFuture_Call01
	smpsCall	WackyWorkbenchGoodFuture_Call01
	smpsCall	WackyWorkbenchGoodFuture_Call01
	smpsJump	WackyWorkbenchGoodFuture_Jump01

; FM2 Data
WackyWorkbenchGoodFuture_FM2:
	smpsCall	WackyWorkbenchGoodFuture_Call04
	smpsCall	WackyWorkbenchGoodFuture_Call04
	smpsCall	WackyWorkbenchGoodFuture_Call05
	smpsCall	WackyWorkbenchGoodFuture_Call05
	smpsCall	WackyWorkbenchGoodFuture_Call05
	smpsCall	WackyWorkbenchGoodFuture_Call05
	smpsCall	WackyWorkbenchGoodFuture_Call05
WackyWorkbenchGoodFuture_Jump02:
	smpsCall	WackyWorkbenchGoodFuture_Call05
	smpsCall	WackyWorkbenchGoodFuture_Call06
	smpsCall	WackyWorkbenchGoodFuture_Call06
	smpsCall	WackyWorkbenchGoodFuture_Call06
	smpsCall	WackyWorkbenchGoodFuture_Call06
	smpsCall	WackyWorkbenchGoodFuture_Call07
	smpsCall	WackyWorkbenchGoodFuture_Call08
	smpsCall	WackyWorkbenchGoodFuture_Call05
	smpsCall	WackyWorkbenchGoodFuture_Call05
	smpsCall	WackyWorkbenchGoodFuture_Call05
	smpsJump	WackyWorkbenchGoodFuture_Jump02

; FM3 Data
WackyWorkbenchGoodFuture_FM3:
	smpsCall	WackyWorkbenchGoodFuture_Call09
	smpsCall	WackyWorkbenchGoodFuture_Call0A
	smpsCall	WackyWorkbenchGoodFuture_Call09
	smpsCall	WackyWorkbenchGoodFuture_Call0B
	smpsCall	WackyWorkbenchGoodFuture_Call0C
	smpsCall	WackyWorkbenchGoodFuture_Call0D
	smpsCall	WackyWorkbenchGoodFuture_Call0E
WackyWorkbenchGoodFuture_Jump03:
	smpsCall	WackyWorkbenchGoodFuture_Call0F
	smpsCall	WackyWorkbenchGoodFuture_Call10
	smpsCall	WackyWorkbenchGoodFuture_Call11
	smpsCall	WackyWorkbenchGoodFuture_Call10
	smpsCall	WackyWorkbenchGoodFuture_Call12
	smpsCall	WackyWorkbenchGoodFuture_Call0C
	smpsCall	WackyWorkbenchGoodFuture_Call11
	smpsCall	WackyWorkbenchGoodFuture_Call11
	smpsCall	WackyWorkbenchGoodFuture_Call11
	smpsCall	WackyWorkbenchGoodFuture_Call11
	smpsJump	WackyWorkbenchGoodFuture_Jump03

; FM4 Data
WackyWorkbenchGoodFuture_FM4:
	smpsCall	WackyWorkbenchGoodFuture_Call13
	smpsCall	WackyWorkbenchGoodFuture_Call14
	smpsCall	WackyWorkbenchGoodFuture_Call13
	smpsCall	WackyWorkbenchGoodFuture_Call15
	smpsCall	WackyWorkbenchGoodFuture_Call16
	smpsCall	WackyWorkbenchGoodFuture_Call17
	smpsCall	WackyWorkbenchGoodFuture_Call18
WackyWorkbenchGoodFuture_Jump04:
	smpsCall	WackyWorkbenchGoodFuture_Call19
	smpsCall	WackyWorkbenchGoodFuture_Call1A
	smpsCall	WackyWorkbenchGoodFuture_Call1B
	smpsCall	WackyWorkbenchGoodFuture_Call1A
	smpsCall	WackyWorkbenchGoodFuture_Call1C
	smpsCall	WackyWorkbenchGoodFuture_Call16
	smpsCall	WackyWorkbenchGoodFuture_Call1B
	smpsCall	WackyWorkbenchGoodFuture_Call1B
	smpsCall	WackyWorkbenchGoodFuture_Call1B
	smpsCall	WackyWorkbenchGoodFuture_Call1B
	smpsJump	WackyWorkbenchGoodFuture_Jump04

; FM5 Data
WackyWorkbenchGoodFuture_FM5:
	smpsCall	WackyWorkbenchGoodFuture_Call1D
	smpsCall	WackyWorkbenchGoodFuture_Call1E
	smpsCall	WackyWorkbenchGoodFuture_Call1F
	smpsCall	WackyWorkbenchGoodFuture_Call20
	smpsCall	WackyWorkbenchGoodFuture_Call21
	smpsCall	WackyWorkbenchGoodFuture_Call22
	smpsCall	WackyWorkbenchGoodFuture_Call23
WackyWorkbenchGoodFuture_Jump05:
	smpsCall	WackyWorkbenchGoodFuture_Call24
	smpsCall	WackyWorkbenchGoodFuture_Call25
	smpsCall	WackyWorkbenchGoodFuture_Call26
	smpsCall	WackyWorkbenchGoodFuture_Call27
	smpsCall	WackyWorkbenchGoodFuture_Call28
	smpsCall	WackyWorkbenchGoodFuture_Call21
	smpsCall	WackyWorkbenchGoodFuture_Call26
	smpsCall	WackyWorkbenchGoodFuture_Call26
	smpsCall	WackyWorkbenchGoodFuture_Call26
	smpsCall	WackyWorkbenchGoodFuture_Call26
	smpsJump	WackyWorkbenchGoodFuture_Jump05

; PSG1 Data
WackyWorkbenchGoodFuture_PSG1:
	smpsCall	WackyWorkbenchGoodFuture_Call29
	smpsCall	WackyWorkbenchGoodFuture_Call2A
	smpsCall	WackyWorkbenchGoodFuture_Call2A
	smpsCall	WackyWorkbenchGoodFuture_Call2A
	smpsCall	WackyWorkbenchGoodFuture_Call2B
	smpsCall	WackyWorkbenchGoodFuture_Call2B
	smpsCall	WackyWorkbenchGoodFuture_Call2B
WackyWorkbenchGoodFuture_Jump06:
	smpsCall	WackyWorkbenchGoodFuture_Call2B
	smpsCall	WackyWorkbenchGoodFuture_Call2C
	smpsCall	WackyWorkbenchGoodFuture_Call2C
	smpsCall	WackyWorkbenchGoodFuture_Call2C
	smpsCall	WackyWorkbenchGoodFuture_Call2C
	smpsCall	WackyWorkbenchGoodFuture_Call2B
	smpsCall	WackyWorkbenchGoodFuture_Call2B
	smpsCall	WackyWorkbenchGoodFuture_Call2B
	smpsCall	WackyWorkbenchGoodFuture_Call2B
	smpsCall	WackyWorkbenchGoodFuture_Call2B
	smpsJump	WackyWorkbenchGoodFuture_Jump06

; PSG2 Data
WackyWorkbenchGoodFuture_PSG2:
	smpsCall	WackyWorkbenchGoodFuture_Call2D
	smpsCall	WackyWorkbenchGoodFuture_Call2E
	smpsCall	WackyWorkbenchGoodFuture_Call2E
	smpsCall	WackyWorkbenchGoodFuture_Call2E
	smpsCall	WackyWorkbenchGoodFuture_Call2F
	smpsCall	WackyWorkbenchGoodFuture_Call2F
	smpsCall	WackyWorkbenchGoodFuture_Call2F
WackyWorkbenchGoodFuture_Jump07:
	smpsCall	WackyWorkbenchGoodFuture_Call2F
	smpsCall	WackyWorkbenchGoodFuture_Call30
	smpsCall	WackyWorkbenchGoodFuture_Call30
	smpsCall	WackyWorkbenchGoodFuture_Call30
	smpsCall	WackyWorkbenchGoodFuture_Call30
	smpsCall	WackyWorkbenchGoodFuture_Call2F
	smpsCall	WackyWorkbenchGoodFuture_Call2F
	smpsCall	WackyWorkbenchGoodFuture_Call2F
	smpsCall	WackyWorkbenchGoodFuture_Call2F
	smpsCall	WackyWorkbenchGoodFuture_Call2F
	smpsJump	WackyWorkbenchGoodFuture_Jump07

; PSG3 Data
WackyWorkbenchGoodFuture_PSG3:
	smpsPSGform	$E7
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
WackyWorkbenchGoodFuture_Jump08:
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsCall	WackyWorkbenchGoodFuture_Call31
	smpsJump	WackyWorkbenchGoodFuture_Jump08

; DAC Data
WackyWorkbenchGoodFuture_DAC:
	smpsCall	WackyWorkbenchGoodFuture_Call32
	smpsCall	WackyWorkbenchGoodFuture_Call33
	smpsCall	WackyWorkbenchGoodFuture_Call34
	smpsCall	WackyWorkbenchGoodFuture_Call35
	smpsCall	WackyWorkbenchGoodFuture_Call36
	smpsCall	WackyWorkbenchGoodFuture_Call37
	smpsCall	WackyWorkbenchGoodFuture_Call38
WackyWorkbenchGoodFuture_Jump09:
	smpsCall	WackyWorkbenchGoodFuture_Call39
	smpsCall	WackyWorkbenchGoodFuture_Call3A
	smpsCall	WackyWorkbenchGoodFuture_Call3B
	smpsCall	WackyWorkbenchGoodFuture_Call3C
	smpsCall	WackyWorkbenchGoodFuture_Call3B
	smpsCall	WackyWorkbenchGoodFuture_Call3D
	smpsCall	WackyWorkbenchGoodFuture_Call3E
	smpsCall	WackyWorkbenchGoodFuture_Call3F
	smpsCall	WackyWorkbenchGoodFuture_Call40
	smpsCall	WackyWorkbenchGoodFuture_Call41
	smpsJump	WackyWorkbenchGoodFuture_Jump09

WackyWorkbenchGoodFuture_Call01:
	smpsFMvoice	$04
	dc.b		nD3,	$02,	nRst,	$06,	nA3,	$02,	nRst,	$06
	dc.b		nC4,	$02,	nRst,	$06,	nD4,	$02,	nRst,	nD3
	dc.b		nRst,	$06,	nD3,	$02,	nRst,	nA3,	nRst,	$06
	dc.b		nC4,	$02,	nRst,	$06,	nD4,	$02,	nRst,	$06
	dc.b		nD3,	$02,	nRst,	$06,	nA3,	$02,	nRst,	$06
	dc.b		nC4,	$02,	nRst,	$06,	nD4,	$02,	nRst,	nD3
	dc.b		nRst,	$06,	nD3,	$02,	nRst,	nA3,	nRst,	$06
	dc.b		nC4,	$02,	nRst,	$06,	nD4,	$02,	nRst,	$06
	smpsReturn

WackyWorkbenchGoodFuture_Call02:
	dc.b		nC3,	$02,	nRst,	$06,	nG3,	$02,	nRst,	$06
	dc.b		nBb3,	$02,	nRst,	$06,	nC4,	$02,	nRst,	nC3
	dc.b		nRst,	$06,	nC3,	$02,	nRst,	nG3,	nRst,	$06
	dc.b		nBb3,	$02,	nRst,	$06,	nC4,	$02,	nRst,	$06
	dc.b		nC3,	$02,	nRst,	$06,	nG3,	$02,	nRst,	$06
	dc.b		nBb3,	$02,	nRst,	$06,	nC4,	$02,	nRst,	nC3
	dc.b		nRst,	$06,	nC3,	$02,	nRst,	nG3,	nRst,	$06
	dc.b		nBb3,	$02,	nRst,	$06,	nC4,	$02,	nRst,	$06
	smpsReturn

WackyWorkbenchGoodFuture_Call03:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call04:
	smpsFMvoice	$00
	dc.b		nC2,	$08,	nD2,	nRst,	$28,	nD2,	$08,	nC2
	dc.b		nD2,	nRst,	$28,	nD2,	$08
	smpsReturn

WackyWorkbenchGoodFuture_Call05:
	smpsFMvoice	$00
	dc.b		nC2,	$08,	nD2,	nRst,	nD2,	nRst,	nD2,	nRst
	dc.b		nD2,	nC2,	nD2,	nRst,	nD2,	nRst,	nD2,	nRst
	dc.b		nD2
	smpsReturn

WackyWorkbenchGoodFuture_Call06:
	dc.b		nBb1,	$08,	nC2,	nRst,	nC2,	nRst,	nC2,	nRst
	dc.b		nC2,	nBb1,	nC2,	nRst,	nC2,	nRst,	nC2,	nRst
	dc.b		nC2
	smpsReturn

WackyWorkbenchGoodFuture_Call07:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call08:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call09:
	smpsFMvoice	$02
	dc.b		nD6,	$32,	nRst,	$1E,	nC5,	$10,	nB4,	$0C
	dc.b		nFs5,	nG4,	$08
	smpsReturn

WackyWorkbenchGoodFuture_Call0A:
	dc.b		nA4,	$32,	nRst,	$3E,	nD4,	$10
	smpsReturn

WackyWorkbenchGoodFuture_Call0B:
	dc.b		nA4,	$32,	nRst,	$4E
	smpsReturn

WackyWorkbenchGoodFuture_Call0C:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call0D:
	dc.b		smpsNoAttack,	$50
	smpsFMvoice	$02
	dc.b		nG4,	$08,	nFs4,	nD4,	nC4,	$18
	smpsReturn

WackyWorkbenchGoodFuture_Call0E:
	dc.b		nD4,	$20,	nRst,	$60
	smpsReturn

WackyWorkbenchGoodFuture_Call0F:
	dc.b		smpsNoAttack,	$50
	smpsFMvoice	$02
	dc.b		nG4,	$08,	nFs4,	nG4,	$10,	nA5
	smpsReturn

WackyWorkbenchGoodFuture_Call10:
	smpsFMvoice	$02
	dc.b		nF4,	$10,	nE4,	$08,	nC4,	$28,	nRst,	$40
	smpsReturn

WackyWorkbenchGoodFuture_Call11:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call12:
	dc.b		smpsNoAttack,	$50,	nF4,	$08,	nE5,	nF4,	$10,	nG4
	smpsReturn

WackyWorkbenchGoodFuture_Call13:
	smpsFMvoice	$02
	dc.b		nD5,	$32,	nRst,	$1E,	nC6,	$10,	nB5,	$0C
	dc.b		nFs4,	nG5,	$08
	smpsReturn

WackyWorkbenchGoodFuture_Call14:
	dc.b		nA5,	$32,	nRst,	$3E,	nD5,	$10
	smpsReturn

WackyWorkbenchGoodFuture_Call15:
	dc.b		nA5,	$32,	nRst,	$4E
	smpsReturn

WackyWorkbenchGoodFuture_Call16:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call17:
	dc.b		smpsNoAttack,	$50
	smpsFMvoice	$02
	dc.b		nG5,	$08,	nFs5,	nD5,	nC5,	$18
	smpsReturn

WackyWorkbenchGoodFuture_Call18:
	dc.b		nD5,	$20,	nRst,	$60
	smpsReturn

WackyWorkbenchGoodFuture_Call19:
	dc.b		smpsNoAttack,	$50
	smpsFMvoice	$02
	dc.b		nG5,	$08,	nFs5,	nG5,	$10,	nA4
	smpsReturn

WackyWorkbenchGoodFuture_Call1A:
	smpsFMvoice	$02
	dc.b		nF5,	$10,	nE5,	$08,	nC5,	$28,	nRst,	$40
	smpsReturn

WackyWorkbenchGoodFuture_Call1B:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call1C:
	dc.b		smpsNoAttack,	$50,	nF5,	$08,	nE4,	nF5,	$10,	nG5
	smpsReturn

WackyWorkbenchGoodFuture_Call1D:
	dc.b		smpsNoAttack,	$01
	smpsFMvoice	$02
	dc.b		nD7,	$32,	nRst,	$1D,	$01,	nC7,	$0F,	nRst
	dc.b		$01,	nB6,	$0B,	nRst,	$01,	nFs6,	$0B,	nRst
	dc.b		$01,	nG6,	$07
	smpsReturn

WackyWorkbenchGoodFuture_Call1E:
	dc.b		nRst,	$01,	nA6,	$32,	nRst,	$3D,	$01,	nD6
	dc.b		$0F
	smpsReturn

WackyWorkbenchGoodFuture_Call1F:
	dc.b		nRst,	$01,	nD7,	$32,	nRst,	$1D,	$01,	nC7
	dc.b		$0F,	nRst,	$01,	nB6,	$0B,	nRst,	$01,	nFs6
	dc.b		$0B,	nRst,	$01,	nG6,	$07
	smpsReturn

WackyWorkbenchGoodFuture_Call20:
	dc.b		nRst,	$01,	nA6,	$32,	nRst,	$4D
	smpsReturn

WackyWorkbenchGoodFuture_Call21:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call22:
	dc.b		smpsNoAttack,	$51
	smpsFMvoice	$02
	dc.b		nG6,	$07,	nRst,	$01,	nFs6,	$07,	nRst,	$01
	dc.b		nD6,	$07,	nRst,	$01,	nC6,	$17
	smpsReturn

WackyWorkbenchGoodFuture_Call23:
	dc.b		nRst,	$01,	nD6,	$1F,	nRst,	$60
	smpsReturn

WackyWorkbenchGoodFuture_Call24:
	dc.b		smpsNoAttack,	$51
	smpsFMvoice	$02
	dc.b		nG6,	$07,	nRst,	$01,	nFs6,	$07,	nRst,	$01
	dc.b		nG6,	$0F,	nRst,	$01,	nA6,	$0F
	smpsReturn

WackyWorkbenchGoodFuture_Call25:
	dc.b		nRst,	$01,	nF6,	$0F,	nRst,	$01,	nE6,	$07
	dc.b		nRst,	$01,	nC6,	$27,	nRst,	$40
	smpsReturn

WackyWorkbenchGoodFuture_Call26:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call27:
	dc.b		smpsNoAttack,	$01
	smpsFMvoice	$02
	dc.b		nF6,	$0F,	nRst,	$01,	nE6,	$07,	nRst,	$01
	dc.b		nC6,	$27,	nRst,	$40
	smpsReturn

WackyWorkbenchGoodFuture_Call28:
	dc.b		smpsNoAttack,	$51,	nF6,	$07,	nRst,	$01,	nE6,	$07
	dc.b		nRst,	$01,	nF6,	$0F,	nRst,	$01,	nG6,	$0F
	smpsReturn

WackyWorkbenchGoodFuture_Call29:
	dc.b		nRst,	$08,	$10,	$68
	smpsReturn

WackyWorkbenchGoodFuture_Call2A:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call2B:
	smpsPSGvoice	$00
	dc.b		nC5,	$0C,	nRst,	$04,	nC5,	$08,	nD5,	$28
	dc.b		nRst,	$08,	nC5,	$18,	nD6,	$0E,	nRst,	$02
	dc.b		nC6,	$10
	smpsReturn

WackyWorkbenchGoodFuture_Call2C:
	dc.b		nBb4,	$0C,	nRst,	$04,	nBb4,	$08,	nC5,	$28
	dc.b		nRst,	$08,	nBb4,	$18,	nC6,	$0E,	nRst,	$02
	dc.b		nBb5,	$10
	smpsReturn

WackyWorkbenchGoodFuture_Call2D:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call2E:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

WackyWorkbenchGoodFuture_Call2F:
	smpsPSGvoice	$00
	dc.b		nE5,	$0C,	nRst,	$04,	nE5,	$08,	nFs5,	$28
	dc.b		nRst,	$08,	nE5,	$18,	nFs6,	$0E,	nRst,	$02
	dc.b		nE6,	$10
	smpsReturn

WackyWorkbenchGoodFuture_Call30:
	dc.b		nD5,	$0C,	nRst,	$04,	nD5,	$08,	nE5,	$28
	dc.b		nRst,	$08,	nD5,	$18,	nE6,	$0E,	nRst,	$02
	dc.b		nD6,	$10
	smpsReturn

WackyWorkbenchGoodFuture_Call31:
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$04,	nCs0,	nCs0,	$08,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	$04,	nCs0
	smpsReturn

WackyWorkbenchGoodFuture_Call32:
	dc.b		dCrashCymbal,	$08,	nRst,	$10,	dkick,	dkick,	$18,	dkick
	dc.b		dkick,	$10,	$18
	smpsReturn

WackyWorkbenchGoodFuture_Call33:
	dc.b		dkick,	$18,	$10,	$18,	dkick,	dkick,	$0C,	dsnares1
	dc.b		$04,	dsnares1,	nRst,	dsnares1,	nRst,	dsnares1,	dsnares1
	smpsReturn

WackyWorkbenchGoodFuture_Call34:
	dc.b		dkick,	$10,	dsnares1,	$04,	nRst,	$08,	dsnares1,	$04
	dc.b		dkick,	dsnares1,	dsnares1,	nRst,	dsnares1,	nRst,	$0C,	dkick
	dc.b		$10,	dsnares1,	$04,	nRst,	$08,	dsnares1,	$04,	dkick
	dc.b		dsnares1,	dsnares1,	nRst,	dsnares1,	nRst,	dkick,	$08
	smpsReturn

WackyWorkbenchGoodFuture_Call35:
	dc.b		dkick,	$10,	dsnares1,	$04,	nRst,	$08,	dsnares1,	$04
	dc.b		dkick,	dsnares1,	dsnares1,	nRst,	dsnares1,	nRst,	$0C,	dkick
	dc.b		$10,	dsnares1,	$04,	nRst,	$08,	dsnares1,	$04,	dkick
	dc.b		dsnares1,	dsnares1,	nRst,	dsnares1,	nRst,	dsnares1,	dsnares1
	smpsReturn

WackyWorkbenchGoodFuture_Call36:
	dc.b		dCrashCymbal,	$08,	nRst,	dsnares1,	$0C,	$04,	dkick,	dsnares1
	dc.b		nRst,	$08,	dsnares1,	$04,	nRst,	$0C,	dkick,	$10
	dc.b		dsnares1,	$04,	nRst,	$08,	dsnares1,	$04,	dkick,	dsnares1
	dc.b		dsnares1,	nRst,	dsnares1,	nRst,	dkick,	$08
	smpsReturn

WackyWorkbenchGoodFuture_Call37:
	dc.b		dkick,	$10,	dsnares1,	$04,	nRst,	$08,	dsnares1,	$04
	dc.b		dkick,	dsnares1,	dsnares1,	nRst,	dsnares1,	nRst,	$08,	dsnares1
	dc.b		$04,	dkick,	$10,	dsnares1,	$0C,	$04,	dkick,	dsnares1
	dc.b		dsnares1,	nRst,	dsnares1,	$08,	dkick,	$04,	dsnares1
	smpsReturn

WackyWorkbenchGoodFuture_Call38:
	dc.b		dkick,	$10,	dsnares1,	$0C,	$04,	dkick,	dsnares1,	dsnares1
	dc.b		nRst,	dsnares1,	$10,	dkick,	dsnares1,	$04,	nRst,	$08
	dc.b		dsnares1,	$04,	dkick,	dsnares1,	dsnares1,	nRst,	dsnares1,	nRst
	dc.b		dkick,	$08
	smpsReturn

WackyWorkbenchGoodFuture_Call39:
	dc.b		dkick,	$10,	dsnares1,	$0C,	$04,	dkick,	dsnares1,	dsnares1
	dc.b		nRst,	dsnares1,	$10,	dkick,	dsnares1,	$0C,	$04,	dkick
	dc.b		dsnares1,	dsnares1,	nRst,	dsnares1,	$08,	$04,	dsnares1
	smpsReturn

WackyWorkbenchGoodFuture_Call3A:
	dc.b		dCrashCymbal,	$08,	nRst,	dsnares1,	$04,	nRst,	$08,	dsnares1
	dc.b		$04,	dkick,	dsnares1,	dsnares1,	nRst,	dsnares1,	$10,	dkick
	dc.b		dsnares1,	$0C,	$04,	dkick,	dsnares1,	dsnares1,	nRst,	dsnares1
	dc.b		nRst,	dkick,	$08
	smpsReturn

WackyWorkbenchGoodFuture_Call3B:
	dc.b		dkick,	$10,	dsnares1,	$04,	nRst,	$08,	dsnares1,	$04
	dc.b		dkick,	dsnares1,	dsnares1,	nRst,	dsnares1,	nRst,	$08,	dsnares1
	dc.b		$04,	dkick,	$10,	dsnares1,	$04,	nRst,	$08,	dsnares1
	dc.b		$04,	dkick,	dsnares1,	dsnares1,	nRst,	dsnares1,	nRst,	dkick
	dc.b		dsnares1
	smpsReturn

WackyWorkbenchGoodFuture_Call3C:
	dc.b		dkick,	$10,	dsnares1,	$0C,	$04,	dkick,	dsnares1,	dsnares1
	dc.b		nRst,	dsnares1,	nRst,	$0C,	dkick,	$10,	dsnares1,	$04
	dc.b		nRst,	$08,	dsnares1,	$04,	dkick,	dsnares1,	dsnares1,	nRst
	dc.b		dsnares1,	nRst,	dkick,	$08
	smpsReturn

WackyWorkbenchGoodFuture_Call3D:
	dc.b		dCrashCymbal,	$08,	nRst,	dkick,	$10,	dkick,	dkick,	dkick
	dc.b		dkick,	dkick,	dkick,	$08,	dkick
	smpsReturn

WackyWorkbenchGoodFuture_Call3E:
	dc.b		dkick,	$10,	dkick,	dkick,	dkick,	dkick,	dsnares1,	$04
	dc.b		nRst,	$08,	dsnares1,	$04,	dkick,	dsnares1,	dsnares1,	nRst
	dc.b		dsnares1,	dsnares1,	dsnares1,	dsnares1
	smpsReturn

WackyWorkbenchGoodFuture_Call3F:
	dc.b		dCrashCymbal,	$10,	dsnares1,	$04,	nRst,	$08,	dsnares1,	$04
	dc.b		dkick,	dsnares1,	nRst,	$08,	dsnares1,	$10,	dkick,	dsnares1
	dc.b		$04,	nRst,	$08,	dsnares1,	$04,	dkick,	dsnares1,	dsnares1
	dc.b		nRst,	dsnares1,	nRst,	dkick,	$08
	smpsReturn

WackyWorkbenchGoodFuture_Call40:
	dc.b		dkick,	$10,	dsnares1,	$0C,	$04,	dkick,	dsnares1,	nRst
	dc.b		$08,	dsnares1,	$04,	nRst,	$0C,	dkick,	$10,	dsnares1
	dc.b		$04,	nRst,	$08,	dsnares1,	$04,	dkick,	dsnares1,	dsnares1
	dc.b		nRst,	dsnares1,	nRst,	dsnares1,	dsnares1
	smpsReturn

WackyWorkbenchGoodFuture_Call41:
	dc.b		dkick,	$10,	dsnares1,	$0C,	$04,	dkick,	dsnares1,	nRst
	dc.b		$08,	dsnares1,	$10,	dkick,	dsnares1,	$0C,	$04,	dkick
	dc.b		dsnares1,	dsnares1,	nRst,	dsnares1,	nRst,	dkick,	$08
	smpsReturn

WackyWorkbenchGoodFuture_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$80;			Voice 00
	dc.b		$3D,$12,$21,$51,$12,$12,$14,$14,$0F,$0A,$05,$05,$05,$00,$00,$00
	dc.b		$00,$2B,$2B,$2B,$1B,$19,$80,$80,$80;			Voice 01
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 02
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 03
	dc.b		$3D,$01,$01,$01,$11,$1C,$18,$18,$1B,$06,$05,$04,$05,$06,$05,$06
	dc.b		$06,$60,$89,$59,$79,$18,$80,$80,$80;			Voice 04
	dc.b		$36,$02,$74,$31,$0F,$5F,$5F,$5F,$5F,$0C,$0D,$09,$10,$09,$08,$08
	dc.b		$10,$30,$35,$36,$D5,$2B,$00,$00,$00;			Voice 05
	dc.b		$3B,$46,$42,$42,$43,$10,$12,$19,$4F,$08,$05,$01,$01,$01,$01,$01
	dc.b		$01,$76,$F1,$F7,$F9,$41,$23,$2B,$7F;			Voice 06
	dc.b		$07,$34,$74,$32,$71,$1F,$1F,$1F,$1F,$0A,$0A,$05,$03,$00,$00,$00
	dc.b		$00,$3F,$3F,$2F,$2F,$8A,$8A,$8A,$80;			Voice 07
	even
