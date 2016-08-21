; =============================================================================================
; Project Name:		SSonicS4
; Created:		21st December 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SSonicS4_Header:
	smpsHeaderVoice	SSonicS4_Voices
	smpsHeaderChan	$05,	$03
	smpsHeaderTempo	$03,	$0F

	smpsHeaderDAC	SSonicS4_DAC
	smpsHeaderFM	SSonicS4_FM1,	smpsPitch01lo,	$05
	smpsHeaderFM	SSonicS4_FM2,	smpsPitch01lo,	$10
	smpsHeaderFM	SSonicS4_FM3,	smpsPitch01lo,	$14
	smpsHeaderFM	SSonicS4_FM4,	smpsPitch01lo,	$11
	smpsHeaderPSG	SSonicS4_PSG1,	smpsPitch04lo,	$02,	$00
	smpsHeaderPSG	SSonicS4_PSG2,	smpsPitch04lo,	$02,	$00
	smpsHeaderPSG	SSonicS4_PSG3,	smpsPitch04lo,	$02,	$00

; FM1 Data
SSonicS4_FM1:
	smpsCall	SSonicS4_Call01
	smpsCall	SSonicS4_Call02
SSonicS4_Jump01:
	smpsCall	SSonicS4_Call03
	smpsCall	SSonicS4_Call04
	smpsCall	SSonicS4_Call05
	smpsCall	SSonicS4_Call06
	smpsCall	SSonicS4_Call03
	smpsCall	SSonicS4_Call04
	smpsCall	SSonicS4_Call05
	smpsCall	SSonicS4_Call06
	smpsCall	SSonicS4_Call07
	smpsCall	SSonicS4_Call08
	smpsCall	SSonicS4_Call09
	smpsCall	SSonicS4_Call0A
	smpsJump	SSonicS4_Jump01

; FM2 Data
SSonicS4_FM2:
	smpsCall	SSonicS4_Call0B
	smpsCall	SSonicS4_Call0C
SSonicS4_Jump02:
	smpsCall	SSonicS4_Call0D
	smpsCall	SSonicS4_Call0E
	smpsCall	SSonicS4_Call0F
	smpsCall	SSonicS4_Call10
	smpsCall	SSonicS4_Call0D
	smpsCall	SSonicS4_Call0E
	smpsCall	SSonicS4_Call0F
	smpsCall	SSonicS4_Call11
	smpsCall	SSonicS4_Call12
	smpsCall	SSonicS4_Call13
	smpsCall	SSonicS4_Call14
	smpsCall	SSonicS4_Call15
	smpsJump	SSonicS4_Jump02

; FM3 Data
SSonicS4_FM3:
	smpsPan		panLeft,	$00
	smpsCall	SSonicS4_Call16
	smpsCall	SSonicS4_Call17
SSonicS4_Jump03:
	smpsCall	SSonicS4_Call18
	smpsCall	SSonicS4_Call19
	smpsCall	SSonicS4_Call1A
	smpsCall	SSonicS4_Call1B
	smpsCall	SSonicS4_Call1C
	smpsCall	SSonicS4_Call19
	smpsCall	SSonicS4_Call1A
	smpsCall	SSonicS4_Call1D
	smpsCall	SSonicS4_Call1E
	smpsCall	SSonicS4_Call1F
	smpsCall	SSonicS4_Call20
	smpsCall	SSonicS4_Call21
	smpsJump	SSonicS4_Jump03

; FM4 Data
SSonicS4_FM4:
	smpsCall	SSonicS4_Call22
	smpsCall	SSonicS4_Call23
SSonicS4_Jump04:
	smpsCall	SSonicS4_Call24
	smpsCall	SSonicS4_Call25
	smpsCall	SSonicS4_Call26
	smpsCall	SSonicS4_Call27
	smpsCall	SSonicS4_Call24
	smpsCall	SSonicS4_Call25
	smpsCall	SSonicS4_Call26
	smpsCall	SSonicS4_Call28
	smpsCall	SSonicS4_Call29
	smpsCall	SSonicS4_Call2A
	smpsCall	SSonicS4_Call2B
	smpsCall	SSonicS4_Call2C
	smpsJump	SSonicS4_Jump04

; PSG1 Data
SSonicS4_PSG1:
	smpsCall	SSonicS4_Call2D
	smpsCall	SSonicS4_Call2D
SSonicS4_Jump05:
	smpsCall	SSonicS4_Call2E
	smpsCall	SSonicS4_Call2F
	smpsCall	SSonicS4_Call30
	smpsCall	SSonicS4_Call31
	smpsCall	SSonicS4_Call2E
	smpsCall	SSonicS4_Call2F
	smpsCall	SSonicS4_Call30
	smpsCall	SSonicS4_Call31
	smpsCall	SSonicS4_Call32
	smpsCall	SSonicS4_Call33
	smpsCall	SSonicS4_Call34
	smpsCall	SSonicS4_Call35
	smpsJump	SSonicS4_Jump05

; PSG2 Data
SSonicS4_PSG2:
	smpsCall	SSonicS4_Call36
	smpsCall	SSonicS4_Call36
SSonicS4_Jump06:
	smpsCall	SSonicS4_Call37
	smpsCall	SSonicS4_Call38
	smpsCall	SSonicS4_Call39
	smpsCall	SSonicS4_Call3A
	smpsCall	SSonicS4_Call37
	smpsCall	SSonicS4_Call38
	smpsCall	SSonicS4_Call39
	smpsCall	SSonicS4_Call3A
	smpsCall	SSonicS4_Call36
	smpsCall	SSonicS4_Call36
	smpsCall	SSonicS4_Call36
	smpsCall	SSonicS4_Call36
	smpsJump	SSonicS4_Jump06

; PSG3 Data
SSonicS4_PSG3:
	smpsPSGform	$E7
	smpsCall	SSonicS4_Call3B
	smpsCall	SSonicS4_Call3C
SSonicS4_Jump07:
	smpsCall	SSonicS4_Call3D
	smpsCall	SSonicS4_Call3E
	smpsCall	SSonicS4_Call3E
	smpsCall	SSonicS4_Call3F
	smpsCall	SSonicS4_Call3E
	smpsCall	SSonicS4_Call3E
	smpsCall	SSonicS4_Call3E
	smpsCall	SSonicS4_Call40
	smpsCall	SSonicS4_Call3D
	smpsCall	SSonicS4_Call3E
	smpsCall	SSonicS4_Call3E
	smpsCall	SSonicS4_Call41
	smpsJump	SSonicS4_Jump07

; DAC Data
SSonicS4_DAC:
	smpsCall	SSonicS4_Call42
	smpsCall	SSonicS4_Call43
SSonicS4_Jump08:
	smpsCall	SSonicS4_Call44
	smpsCall	SSonicS4_Call45
	smpsCall	SSonicS4_Call46
	smpsCall	SSonicS4_Call47
	smpsCall	SSonicS4_Call44
	smpsCall	SSonicS4_Call45
	smpsCall	SSonicS4_Call46
	smpsCall	SSonicS4_Call48
	smpsCall	SSonicS4_Call42
	smpsCall	SSonicS4_Call46
	smpsCall	SSonicS4_Call42
	smpsCall	SSonicS4_Call45
	smpsJump	SSonicS4_Jump08

SSonicS4_Call01:
	smpsFMvoice	$01
	dc.b		nC3,	$06,	nE3,	nG3,	$04
	smpsReturn

SSonicS4_Call02:
	dc.b		nFs3,	$02,	nE3,	nD3,	nA3,	nG3,	nFs3,	nE3
	dc.b		nD3
	smpsReturn

SSonicS4_Call03:
	dc.b		nG3,	$02,	nRst,	nG3,	$03,	nRst,	$01,	nD3
	dc.b		$02,	nRst,	nD3,	$04
	smpsReturn

SSonicS4_Call04:
	dc.b		nF3,	$02,	nRst,	nF3,	nC3,	$04,	nRst,	$02
	dc.b		nC3,	$04
	smpsReturn

SSonicS4_Call05:
	dc.b		nE3,	$02,	nRst,	nE3,	nB2,	$04,	nRst,	$02
	dc.b		nB2,	$04
	smpsReturn

SSonicS4_Call06:
	dc.b		nEb3,	$01,	nRst,	nEb3,	$02,	nBb2,	$04,	nF3
	dc.b		$01,	nRst,	nF3,	$02,	nC3,	$04
	smpsReturn

SSonicS4_Call07:
	dc.b		nEb3,	$04,	nBb2,	$02,	nEb3,	$04,	nBb3,	$02
	dc.b		nAb3,	nG3
	smpsReturn

SSonicS4_Call08:
	dc.b		nF3,	$04,	nC3,	$02,	nF3,	$04,	nC4,	$02
	dc.b		nF4,	$04
	smpsReturn

SSonicS4_Call09:
	dc.b		nFs3,	$04,	nCs3,	$02,	nFs3,	$04,	nCs4,	$02
	dc.b		nB3,	nBb3
	smpsReturn

SSonicS4_Call0A:
	dc.b		nAb3,	$04,	nEb3,	$02,	nAb3,	$04,	nEb4,	$02
	dc.b		nAb4,	$04
	smpsReturn

SSonicS4_Call0B:
	smpsFMvoice	$00
	dc.b		nG5,	$06,	nFs5,	nE5,	$04
	smpsReturn

SSonicS4_Call0C:
	dc.b		nD5,	$02,	nE5,	nFs5,	nG5,	nA5,	nB5,	nC6
	dc.b		nD6
	smpsReturn

SSonicS4_Call0D:
	dc.b		nD5,	$06,	nRst,	$02,	nG5,	$06,	nRst,	$02
	smpsReturn

SSonicS4_Call0E:
	dc.b		nA5,	$04,	nRst,	$02,	nG5,	$04,	nRst,	$02
	dc.b		nF5,	$04
	smpsReturn

SSonicS4_Call0F:
	dc.b		nRst,	$04,	nB5,	$08,	nG5,	$02,	nRst
	smpsReturn

SSonicS4_Call10:
	dc.b		nEb5,	$04,	nG5,	$02,	nRst,	nF5,	$04,	nA5
	dc.b		$02,	nRst
	smpsReturn

SSonicS4_Call11:
	dc.b		nEb5,	$04,	nG5,	nEb5,	$02,	nG5,	nF5,	nA5
	smpsReturn

SSonicS4_Call12:
	dc.b		nG5,	$06,	nEb5,	nG5,	$03,	nRst,	$01
	smpsReturn

SSonicS4_Call13:
	dc.b		nA5,	$02,	nRst,	nF5,	$0A,	nRst,	$02
	smpsReturn

SSonicS4_Call14:
	dc.b		nBb5,	$06,	nFs5,	nBb5,	$03,	nRst,	$01
	smpsReturn

SSonicS4_Call15:
	dc.b		nC6,	$03,	nRst,	$01,	nBb5,	$02,	nCs6,	nC6
	dc.b		nBb5,	nAb5,	nEb5
	smpsReturn

SSonicS4_Call16:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$00
	dc.b		nG5,	$06,	nFs5
	smpsReturn

SSonicS4_Call17:
	dc.b		nE5,	$04,	nD5,	$02,	nE5,	nFs5,	nG5,	nA5
	dc.b		nB5
	smpsReturn

SSonicS4_Call18:
	dc.b		nC6,	$02,	nD6,	nD5,	$06,	nRst,	$02,	nG5
	dc.b		$04
	smpsReturn

SSonicS4_Call19:
	dc.b		smpsNoAttack,	$02,	nRst,	nA5,	$04,	nRst,	$02,	nG5
	dc.b		$04,	nRst,	$02
	smpsReturn

SSonicS4_Call1A:
	dc.b		nF5,	$04,	nRst,	nB5,	$08
	smpsReturn

SSonicS4_Call1B:
	dc.b		nG5,	$02,	nRst,	nEb5,	$04,	nG5,	$02,	nRst
	dc.b		nF5,	$04
	smpsReturn

SSonicS4_Call1C:
	dc.b		nA5,	$02,	nRst,	nD5,	$06,	nRst,	$02,	nG5
	dc.b		$04
	smpsReturn

SSonicS4_Call1D:
	dc.b		nG5,	$02,	nRst,	nEb5,	$04,	nG5,	nEb5,	$02
	dc.b		nG5
	smpsReturn

SSonicS4_Call1E:
	dc.b		nF5,	$02,	nA5,	nG5,	$06,	nEb5
	smpsReturn

SSonicS4_Call1F:
	dc.b		nG5,	$03,	nRst,	$01,	nA5,	$02,	nRst,	nF5
	dc.b		$08
	smpsReturn

SSonicS4_Call20:
	dc.b		smpsNoAttack,	$02,	nRst,	nBb5,	$06,	nFs5
	smpsReturn

SSonicS4_Call21:
	dc.b		nBb5,	$03,	nRst,	$01,	nC6,	$03,	nRst,	$01
	dc.b		nBb5,	$02,	nCs6,	nC6,	nBb5
	smpsReturn

SSonicS4_Call22:
	smpsFMvoice	$00
	dc.b		nD5,	$06,	nC5,	nA4,	$04
	smpsReturn

SSonicS4_Call23:
	dc.b		nFs4,	$02,	nA4,	nC5,	nD5,	nFs5,	nG5,	nE5
	dc.b		nC5
	smpsReturn

SSonicS4_Call24:
	dc.b		nB4,	$07,	nRst,	$01,	nB4,	$07,	nRst,	$01
	smpsReturn

SSonicS4_Call25:
	dc.b		nC5,	$05,	nRst,	$01,	nC5,	$05,	nRst,	$01
	dc.b		nC5,	$04
	smpsReturn

SSonicS4_Call26:
	dc.b		smpsNoAttack,	$01,	nRst,	$03,	nE5,	$07,	nRst,	$01
	dc.b		nE5,	$03,	nRst,	$01
	smpsReturn

SSonicS4_Call27:
	dc.b		nBb4,	$07,	nRst,	$01,	nC5,	$07,	nRst,	$01
	smpsReturn

SSonicS4_Call28:
	dc.b		nBb4,	$06,	nRst,	$02,	nBb4,	$04,	nC5
	smpsReturn

SSonicS4_Call29:
	dc.b		nBb4,	$0F,	nRst,	$01
	smpsReturn

SSonicS4_Call2A:
	dc.b		nC5,	$0F,	nRst,	$01
	smpsReturn

SSonicS4_Call2B:
	dc.b		nCs5,	$0F,	nRst,	$01
	smpsReturn

SSonicS4_Call2C:
	dc.b		nEb5,	$0B,	nRst,	$05
	smpsReturn

SSonicS4_Call2D:
	dc.b		smpsNoAttack,	$10
	smpsReturn

SSonicS4_Call2E:
	smpsPSGvoice	$00
	dc.b		nB5,	$02,	nRst,	nB5,	nRst,	nB5,	nRst,	nB5
	dc.b		nRst
	smpsReturn

SSonicS4_Call2F:
	dc.b		nC6,	$05,	nRst,	$01,	nC6,	$05,	nRst,	$01
	dc.b		nC6,	$03,	nRst,	$01
	smpsReturn

SSonicS4_Call30:
	dc.b		nB5,	$02,	nRst,	nB5,	$07,	nRst,	$01,	nB5
	dc.b		$04
	smpsReturn

SSonicS4_Call31:
	dc.b		nG6,	$02,	nF6,	nEb6,	nC7,	nBb6,	nA6,	nG6
	dc.b		nF6
	smpsReturn

SSonicS4_Call32:
	dc.b		nEb5,	$02,	nBb5,	nEb6,	nF6,	nAb6,	nG6,	nF6
	dc.b		nEb6
	smpsReturn

SSonicS4_Call33:
	dc.b		nF6,	$02,	nF5,	nA5,	nBb5,	nC6,	nEb6,	nF6
	dc.b		nA6
	smpsReturn

SSonicS4_Call34:
	dc.b		nFs6,	$02,	nFs5,	nBb5,	nCs6,	nFs6,	nBb6,	nD7
	dc.b		nFs6
	smpsReturn

SSonicS4_Call35:
	dc.b		nAb7,	$02,	nEb7,	nC7,	nBb6,	nAb6,	nEb6,	nC6
	dc.b		nAb5
	smpsReturn

SSonicS4_Call36:
	dc.b		smpsNoAttack,	$10
	smpsReturn

SSonicS4_Call37:
	smpsPSGvoice	$00
	dc.b		nG5,	$02,	nRst,	nG5,	nRst,	nD5,	nRst,	nG5
	dc.b		nRst
	smpsReturn

SSonicS4_Call38:
	dc.b		nA5,	$05,	nRst,	$01,	nG5,	$05,	nRst,	$01
	dc.b		nG5,	$03,	nRst,	$01
	smpsReturn

SSonicS4_Call39:
	dc.b		nE5,	$02,	nRst,	nE5,	$07,	nRst,	$01,	nG5
	dc.b		$04
	smpsReturn

SSonicS4_Call3A:
	dc.b		nRst,	$10
	smpsReturn

SSonicS4_Call3B:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nRst
	smpsReturn

SSonicS4_Call3C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0
	smpsReturn

SSonicS4_Call3D:
	dc.b		nRst,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	smpsReturn

SSonicS4_Call3E:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	smpsReturn

SSonicS4_Call3F:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst
	smpsReturn

SSonicS4_Call40:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	nRst,	nCs0
	smpsReturn

SSonicS4_Call41:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst
	smpsReturn

SSonicS4_Call42:
	dc.b		dKickS1,	$02,	nRst,	dSnareS1,	dKickS1,	nRst,	dKickS1,	dSnareS1
	dc.b		nRst
	smpsReturn

SSonicS4_Call43:
	dc.b		dKickS1,	$02,	nRst,	dSnareS1,	dSnareS1,	dSnareS1,	dSnareS1,	dSnareS1
	dc.b		dSnareS1
	smpsReturn

SSonicS4_Call44:
	dc.b		dKickS1,	$02,	nRst,	dSnareS1,	nRst,	$04,	dKickS1,	$02
	dc.b		dSnareS1,	nRst
	smpsReturn

SSonicS4_Call45:
	dc.b		dKickS1,	$02,	nRst,	dSnareS1,	dKickS1,	nRst,	dKickS1,	dSnareS1
	dc.b		dSnareS1
	smpsReturn

SSonicS4_Call46:
	dc.b		dKickS1,	$02,	nRst,	dSnareS1,	nRst,	$04,	dKickS1,	$02
	dc.b		dSnareS1,	dSnareS1
	smpsReturn

SSonicS4_Call47:
	dc.b		dKickS1,	$02,	dKickS1,	dSnareS1,	dSnareS1,	dKickS1,	dSnareS1,	dSnareS1
	dc.b		dSnareS1
	smpsReturn

SSonicS4_Call48:
	dc.b		dKickS1,	$02,	nRst,	dSnareS1,	nRst,	dKickS1,	dSnareS1,	dSnareS1
	dc.b		dSnareS1
	smpsReturn

SSonicS4_Voices:
	dc.b		$3D,$01,$01,$01,$11,$1C,$18,$18,$1B,$06,$05,$04,$05,$06,$05,$06
	dc.b		$06,$60,$89,$59,$79,$18,$80,$80,$80;			Voice 00
	dc.b		$04,$00,$00,$00,$02,$9F,$1F,$9F,$1F,$0A,$0A,$13,$14,$03,$02,$0E
	dc.b		$08,$3A,$1A,$FA,$7A,$17,$08,$07,$08;			Voice 01
	even
