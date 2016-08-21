; =============================================================================================
; Project Name:		Ice_Mountain_Act_2
; Created:		18th June 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Ice_Mountain_Act_2_Header:
	smpsHeaderVoice	Ice_Mountain_Act_2_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	Ice_Mountain_Act_2_DAC
	smpsHeaderFM	Ice_Mountain_Act_2_FM1,	smpsPitch00,	$10
	smpsHeaderFM	Ice_Mountain_Act_2_FM2,	smpsPitch00,	$10
	smpsHeaderFM	Ice_Mountain_Act_2_FM3,	smpsPitch00,	$10
	smpsHeaderFM	Ice_Mountain_Act_2_FM4,	smpsPitch00,	$10
	smpsHeaderFM	Ice_Mountain_Act_2_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	Ice_Mountain_Act_2_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	Ice_Mountain_Act_2_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	Ice_Mountain_Act_2_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
Ice_Mountain_Act_2_FM1:
	smpsCall	Ice_Mountain_Act_2_Call01
Ice_Mountain_Act_2_Jump01:
	smpsCall	Ice_Mountain_Act_2_Call02
	smpsCall	Ice_Mountain_Act_2_Call02
	smpsCall	Ice_Mountain_Act_2_Call02
	smpsCall	Ice_Mountain_Act_2_Call03
	smpsCall	Ice_Mountain_Act_2_Call02
	smpsCall	Ice_Mountain_Act_2_Call02
	smpsCall	Ice_Mountain_Act_2_Call03
	smpsCall	Ice_Mountain_Act_2_Call04
	smpsCall	Ice_Mountain_Act_2_Call05
	smpsCall	Ice_Mountain_Act_2_Call02
	smpsJump	Ice_Mountain_Act_2_Jump01

; FM2 Data
Ice_Mountain_Act_2_FM2:
	smpsCall	Ice_Mountain_Act_2_Call06
Ice_Mountain_Act_2_Jump02:
	smpsCall	Ice_Mountain_Act_2_Call07
	smpsCall	Ice_Mountain_Act_2_Call08
	smpsCall	Ice_Mountain_Act_2_Call08
	smpsCall	Ice_Mountain_Act_2_Call09
	smpsCall	Ice_Mountain_Act_2_Call0A
	smpsCall	Ice_Mountain_Act_2_Call08
	smpsCall	Ice_Mountain_Act_2_Call09
	smpsCall	Ice_Mountain_Act_2_Call0B
	smpsCall	Ice_Mountain_Act_2_Call0C
	smpsCall	Ice_Mountain_Act_2_Call06
	smpsJump	Ice_Mountain_Act_2_Jump02

; FM3 Data
Ice_Mountain_Act_2_FM3:
	smpsCall	Ice_Mountain_Act_2_Call0D
Ice_Mountain_Act_2_Jump03:
	smpsCall	Ice_Mountain_Act_2_Call0D
	smpsCall	Ice_Mountain_Act_2_Call0D
	smpsCall	Ice_Mountain_Act_2_Call0D
	smpsCall	Ice_Mountain_Act_2_Call0E
	smpsCall	Ice_Mountain_Act_2_Call0D
	smpsCall	Ice_Mountain_Act_2_Call0D
	smpsCall	Ice_Mountain_Act_2_Call0F
	smpsCall	Ice_Mountain_Act_2_Call10
	smpsCall	Ice_Mountain_Act_2_Call10
	smpsCall	Ice_Mountain_Act_2_Call0D
	smpsJump	Ice_Mountain_Act_2_Jump03

; FM4 Data
Ice_Mountain_Act_2_FM4:
	smpsCall	Ice_Mountain_Act_2_Call11
Ice_Mountain_Act_2_Jump04:
	smpsCall	Ice_Mountain_Act_2_Call11
	smpsCall	Ice_Mountain_Act_2_Call12
	smpsCall	Ice_Mountain_Act_2_Call12
	smpsCall	Ice_Mountain_Act_2_Call13
	smpsCall	Ice_Mountain_Act_2_Call12
	smpsCall	Ice_Mountain_Act_2_Call12
	smpsCall	Ice_Mountain_Act_2_Call14
	smpsCall	Ice_Mountain_Act_2_Call15
	smpsCall	Ice_Mountain_Act_2_Call16
	smpsCall	Ice_Mountain_Act_2_Call11
	smpsJump	Ice_Mountain_Act_2_Jump04

; FM5 Data
Ice_Mountain_Act_2_FM5:
	smpsCall	Ice_Mountain_Act_2_Call17
Ice_Mountain_Act_2_Jump05:
	smpsCall	Ice_Mountain_Act_2_Call17
	smpsCall	Ice_Mountain_Act_2_Call18
	smpsCall	Ice_Mountain_Act_2_Call18
	smpsCall	Ice_Mountain_Act_2_Call19
	smpsCall	Ice_Mountain_Act_2_Call18
	smpsCall	Ice_Mountain_Act_2_Call18
	smpsCall	Ice_Mountain_Act_2_Call1A
	smpsCall	Ice_Mountain_Act_2_Call1B
	smpsCall	Ice_Mountain_Act_2_Call1C
	smpsCall	Ice_Mountain_Act_2_Call17
	smpsJump	Ice_Mountain_Act_2_Jump05

; PSG1 Data
Ice_Mountain_Act_2_PSG1:
	smpsCall	Ice_Mountain_Act_2_Call1D
Ice_Mountain_Act_2_Jump06:
	smpsCall	Ice_Mountain_Act_2_Call1E
	smpsCall	Ice_Mountain_Act_2_Call1F
	smpsCall	Ice_Mountain_Act_2_Call20
	smpsCall	Ice_Mountain_Act_2_Call21
	smpsCall	Ice_Mountain_Act_2_Call22
	smpsCall	Ice_Mountain_Act_2_Call20
	smpsCall	Ice_Mountain_Act_2_Call21
	smpsCall	Ice_Mountain_Act_2_Call23
	smpsCall	Ice_Mountain_Act_2_Call24
	smpsCall	Ice_Mountain_Act_2_Call25
	smpsJump	Ice_Mountain_Act_2_Jump06

; PSG2 Data
Ice_Mountain_Act_2_PSG2:
	smpsCall	Ice_Mountain_Act_2_Call26
Ice_Mountain_Act_2_Jump07:
	smpsCall	Ice_Mountain_Act_2_Call27
	smpsCall	Ice_Mountain_Act_2_Call28
	smpsCall	Ice_Mountain_Act_2_Call29
	smpsCall	Ice_Mountain_Act_2_Call2A
	smpsCall	Ice_Mountain_Act_2_Call28
	smpsCall	Ice_Mountain_Act_2_Call29
	smpsCall	Ice_Mountain_Act_2_Call2A
	smpsCall	Ice_Mountain_Act_2_Call2B
	smpsCall	Ice_Mountain_Act_2_Call2C
	smpsCall	Ice_Mountain_Act_2_Call2D
	smpsJump	Ice_Mountain_Act_2_Jump07

; PSG3 Data
Ice_Mountain_Act_2_PSG3:
	smpsPSGform	$E7
	smpsCall	Ice_Mountain_Act_2_Call2E
Ice_Mountain_Act_2_Jump08:
	smpsCall	Ice_Mountain_Act_2_Call2F
	smpsCall	Ice_Mountain_Act_2_Call30
	smpsCall	Ice_Mountain_Act_2_Call31
	smpsCall	Ice_Mountain_Act_2_Call32
	smpsCall	Ice_Mountain_Act_2_Call33
	smpsCall	Ice_Mountain_Act_2_Call34
	smpsCall	Ice_Mountain_Act_2_Call35
	smpsCall	Ice_Mountain_Act_2_Call36
	smpsCall	Ice_Mountain_Act_2_Call37
	smpsCall	Ice_Mountain_Act_2_Call2E
	smpsJump	Ice_Mountain_Act_2_Jump08

; DAC Data
Ice_Mountain_Act_2_DAC:
	smpsCall	Ice_Mountain_Act_2_Call38
Ice_Mountain_Act_2_Jump09:
	smpsCall	Ice_Mountain_Act_2_Call39
	smpsCall	Ice_Mountain_Act_2_Call3A
	smpsCall	Ice_Mountain_Act_2_Call3A
	smpsCall	Ice_Mountain_Act_2_Call3B
	smpsCall	Ice_Mountain_Act_2_Call3A
	smpsCall	Ice_Mountain_Act_2_Call3A
	smpsCall	Ice_Mountain_Act_2_Call3A
	smpsCall	Ice_Mountain_Act_2_Call3A
	smpsCall	Ice_Mountain_Act_2_Call3A
	smpsCall	Ice_Mountain_Act_2_Call38
	smpsJump	Ice_Mountain_Act_2_Jump09

Ice_Mountain_Act_2_Call01:
	smpsFMvoice	$00
	dc.b		nA2,	$04,	nE3,	nA3,	nD4,	$08,	nCs4,	nG2
	dc.b		nE3,	$04,	nA3,	nD4,	$08,	nCs4,	$0B,	nRst
	dc.b		$01,	nD2,	$04,	nA2,	nD3,	nG3,	$08,	nFs3
	dc.b		nE2,	nB2,	$04,	nE3,	nA3,	$08,	nAb3,	$0B
	dc.b		nRst,	$01
	smpsReturn

Ice_Mountain_Act_2_Call02:
	smpsFMvoice	$00
	dc.b		nA2,	$04,	nE3,	nA3,	nD4,	$08,	nCs4,	nG2
	dc.b		nE3,	$04,	nA3,	nD4,	$08,	nCs4,	$0B,	nRst
	dc.b		$01,	nD2,	$04,	nA2,	nD3,	nG3,	$08,	nFs3
	dc.b		nE2,	nB2,	$04,	nE3,	nA3,	$08,	nAb3,	$0B
	dc.b		nRst,	$01
	smpsReturn

Ice_Mountain_Act_2_Call03:
	smpsFMvoice	$00
	dc.b		nFs3,	$08,	nCs3,	$04,	nFs3,	$08,	nFs3,	nFs3
	dc.b		nFs3,	$04,	nCs3,	nFs3,	$08,	$04,	nA3,	nFs3
	dc.b		nD3,	nD3,	nFs3,	nD3,	nA3,	$08,	nD3,	$04
	dc.b		nE3,	$08,	nE3,	nB3,	nE3,	$04,	nB3,	$08
	smpsReturn

Ice_Mountain_Act_2_Call04:
	smpsFMvoice	$00
	dc.b		nA3,	$08,	nE3,	$04,	nA3,	$08,	nA3,	nE3
	dc.b		$04,	nA3,	$08,	nE3,	$04,	nA3,	$08,	nA3
	dc.b		nE3,	$04,	nF3,	$08,	nC3,	$04,	nF3,	$08
	dc.b		nF3,	nC3,	$04,	nG3,	$08,	nD3,	$04,	nG3
	dc.b		$08,	nG3,	nD3,	$04
	smpsReturn

Ice_Mountain_Act_2_Call05:
	smpsFMvoice	$00
	dc.b		nA3,	$08,	nE3,	$04,	nA3,	$08,	nA3,	nE3
	dc.b		$04,	nA3,	$08,	nE3,	$04,	nA3,	$08,	nA3
	dc.b		nE3,	$04,	nF3,	nF3,	nA3,	nF3,	nC4,	nE4
	dc.b		nF4,	nG3,	$08,	nG3,	nD4,	nG3,	$04,	nD4
	dc.b		$08
	smpsReturn

Ice_Mountain_Act_2_Call06:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$01
	dc.b		nA4,	nA4,	$04,	nE4,	$08,	nA4,	nE4,	$04
	dc.b		nA4,	$08,	$04,	nE4,	$11,	nRst,	$03,	nFs4
	dc.b		$08,	nE4,	$04,	nFs4,	$08,	nAb4,	nA4,	nAb4
	dc.b		nA4,	$04,	nAb4,	$08
	smpsReturn

Ice_Mountain_Act_2_Call07:
	dc.b		nRst,	$08
	smpsFMvoice	$01
	dc.b		nA4,	nA4,	$04,	nE4,	$08,	nA4,	nE4,	$04
	dc.b		nA4,	$08,	$04,	nE4,	$11,	nRst,	$03,	nFs4
	dc.b		$08,	nE4,	$04,	nFs4,	$08,	nAb4,	nA4,	nAb4
	dc.b		nA4,	$04,	nAb4,	$08
	smpsReturn

Ice_Mountain_Act_2_Call08:
	dc.b		nRst,	$08
	smpsFMvoice	$01
	dc.b		nA4,	nA4,	$04,	nE4,	$08,	nA4,	nE4,	$04
	dc.b		nA4,	$08,	$04,	nE4,	$0F,	nRst,	$05,	nFs4
	dc.b		$08,	nE4,	$04,	nFs4,	$08,	nAb4,	nA4,	nAb4
	dc.b		nA4,	$04,	nAb4,	$08
	smpsReturn

Ice_Mountain_Act_2_Call09:
	dc.b		nRst,	$08
	smpsFMvoice	$01
	dc.b		nE4,	$02,	nRst,	$0A,	nE4,	$01,	nRst,	$07
	dc.b		nCs4,	nRst,	$01,	nE4,	$02,	nRst,	$06,	nCs4
	dc.b		$0B,	nRst,	$11,	nD4,	$03,	nRst,	$09,	nD4
	dc.b		$07,	nRst,	$01,	nE4,	$02,	nRst,	$06,	nE4
	dc.b		nRst,	$02,	nE4,	$06,	nRst,	$0E
	smpsReturn

Ice_Mountain_Act_2_Call0A:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$01
	dc.b		nA4,	nA4,	$04,	nE4,	$08,	nA4,	nE4,	$04
	dc.b		nA4,	$08,	$04,	nE4,	$0F,	nRst,	$05,	nFs4
	dc.b		$08,	nE4,	$04,	nFs4,	$08,	nAb4,	nA4,	nAb4
	dc.b		nA4,	$04,	nAb4,	$08
	smpsReturn

Ice_Mountain_Act_2_Call0B:
	smpsFMvoice	$03
	dc.b		nE4,	$0F,	nRst,	$01,	nCs4,	$0F,	nRst,	$01
	dc.b		nA4,	$0F,	nRst,	$01,	nE4,	$0F,	nRst,	$01
	dc.b		nC5,	$0F,	nRst,	$01,	nC5,	$0F,	nRst,	$01
	dc.b		nB4,	$0F,	nRst,	$01,	nD5,	$0F,	nRst,	$01
	smpsReturn

Ice_Mountain_Act_2_Call0C:
	dc.b		nE5,	$0F,	nRst,	$01,	nCs5,	$0F,	nRst,	$01
	dc.b		nA5,	$0F,	nRst,	$01,	nE5,	$0F,	nRst,	$01
	dc.b		nC6,	$0F,	nRst,	$01,	nC6,	$0F,	nRst,	$01
	dc.b		nB5,	$0F,	nRst,	$01,	nD6,	$0F,	nRst,	$01
	smpsReturn

Ice_Mountain_Act_2_Call0D:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$02
	dc.b		nE5,	$04,	nRst,	nE5,	nCs5,	nRst,	nE5,	nRst
	dc.b		nCs5,	nE5,	nRst,	nE5,	nCs5,	nRst,	$10,	nD5
	dc.b		$04,	nRst,	nA4,	nD5,	nRst,	nE5,	nRst,	nE5
	dc.b		nRst,	nE5,	nRst,	nE5,	nE5,	nRst
	smpsReturn

Ice_Mountain_Act_2_Call0E:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$0B
	dc.b		nA3,	$02,	nRst,	$0A,	nA3,	$02,	nRst,	$06
	dc.b		nFs3,	nRst,	$02,	nCs4,	$01,	nRst,	$07,	nA3
	dc.b		$0B,	nRst,	$11,	nA3,	$04,	nRst,	$08,	nA3
	dc.b		$07,	nRst,	$01,	nB3,	$02,	nRst,	$06,	nB3
	dc.b		$03,	nRst,	$05,	nB3,	$06,	nRst,	$0E
	smpsReturn

Ice_Mountain_Act_2_Call0F:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$0B
	dc.b		nA3,	$02,	nRst,	$0A,	nA3,	$02,	nRst,	$06
	dc.b		nFs3,	nRst,	$02,	nCs4,	$01,	nRst,	$07,	nA3
	dc.b		$0B,	nRst,	$11,	nA3,	$04,	nRst,	$08,	nA3
	dc.b		$07,	nRst,	$01,	nB3,	$02,	nRst,	$06,	nB3
	dc.b		$03,	nRst,	$05,	nB3,	$06,	nRst,	$0E
	smpsReturn

Ice_Mountain_Act_2_Call10:
	smpsFMvoice	$02
	dc.b		nA3,	$0F,	nRst,	$01,	nCs4,	$0F,	nRst,	$01
	dc.b		nE4,	$0F,	nRst,	$01,	nCs4,	$0F,	nRst,	$01
	dc.b		nA3,	$0F,	nRst,	$01,	nA3,	$0F,	nRst,	$01
	dc.b		nG3,	$0F,	nRst,	$01,	nB3,	$0F,	nRst,	$01
	smpsReturn

Ice_Mountain_Act_2_Call11:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$03
	dc.b		nA5,	$02,	nRst,	$06,	nA5,	$02,	nRst,	nE5
	dc.b		nRst,	$06,	nA5,	$02,	nRst,	$06,	nE5,	$02
	dc.b		nRst,	nA5,	nRst,	$06,	nA5,	$02,	nRst,	nE5
	dc.b		nRst,	$12,	nFs5,	$02,	nRst,	$06,	nE5,	$02
	dc.b		nRst,	nFs5,	nRst,	$06,	nAb5,	$02,	nRst,	$06
	dc.b		nA5,	$02,	nRst,	$06,	nAb5,	$02,	nRst,	$06
	dc.b		nA5,	$02,	nRst,	nAb5,	nRst,	$06
	smpsReturn

Ice_Mountain_Act_2_Call12:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$03
	dc.b		nE4,	$04,	nRst,	nE4,	nCs4,	nRst,	nE4,	nRst
	dc.b		nCs4,	nE4,	nRst,	nE4,	nCs4,	nRst,	$10,	nD4
	dc.b		$04,	nRst,	nA3,	nD4,	nRst,	nE4,	nRst,	nE4
	dc.b		nRst,	nE4,	nRst,	nE4,	nE4,	nRst
	smpsReturn

Ice_Mountain_Act_2_Call13:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$03
	dc.b		nA4,	$02,	nRst,	$0A,	nA4,	$02,	nRst,	$06
	dc.b		nFs4,	$02,	nRst,	$06,	nFs4,	$02,	nRst,	$06
	dc.b		nA4,	$02,	nRst,	$1A,	nFs4,	$02,	nRst,	$0A
	dc.b		nFs4,	$02,	nRst,	$06,	nAb4,	$02,	nRst,	$06
	dc.b		nAb4,	$02,	nRst,	$06,	nAb4,	$02,	nRst,	$12
	smpsReturn

Ice_Mountain_Act_2_Call14:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$03
	dc.b		nA4,	$02,	nRst,	$0A,	nA4,	$02,	nRst,	$06
	dc.b		nFs4,	$02,	nRst,	$06,	nFs4,	$02,	nRst,	$06
	dc.b		nA4,	$02,	nRst,	$1A,	nFs4,	$02,	nRst,	$0A
	dc.b		nFs4,	$02,	nRst,	$06,	nAb4,	$02,	nRst,	$06
	dc.b		nAb4,	$02,	nRst,	$06,	nAb4,	$02,	nRst,	$12
	smpsReturn

Ice_Mountain_Act_2_Call15:
	dc.b		nE5,	$0F,	nRst,	$01,	nCs5,	$0F,	nRst,	$01
	dc.b		nA5,	$0F,	nRst,	$01,	nE5,	$0F,	nRst,	$01
	dc.b		nC6,	$0F,	nRst,	$01,	nC6,	$0F,	nRst,	$01
	dc.b		nB5,	$0F,	nRst,	$01,	nD6,	$0F,	nRst,	$01
	smpsReturn

Ice_Mountain_Act_2_Call16:
	smpsFMvoice	$03
	dc.b		nE4,	$0F,	nRst,	$01,	nCs4,	$0F,	nRst,	$01
	dc.b		nA4,	$0F,	nRst,	$01,	nE4,	$0F,	nRst,	$01
	dc.b		nC5,	$0F,	nRst,	$01,	nC5,	$0F,	nRst,	$01
	dc.b		nB4,	$0F,	nRst,	$01,	nD5,	$0F,	nRst,	$01
	smpsReturn

Ice_Mountain_Act_2_Call17:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$03
	dc.b		nA6,	$02,	nRst,	$06,	nA6,	$02,	nRst,	nE6
	dc.b		nRst,	$06,	nA6,	$02,	nRst,	$06,	nE6,	$02
	dc.b		nRst,	nA6,	nRst,	$06,	nA6,	$02,	nRst,	nE6
	dc.b		nRst,	$12,	nFs6,	$02,	nRst,	$06,	nE6,	$02
	dc.b		nRst,	nFs6,	nRst,	$06,	nAb6,	$02,	nRst,	$06
	dc.b		nA6,	$02,	nRst,	$06,	nAb6,	$02,	nRst,	$06
	dc.b		nA6,	$02,	nRst,	nAb6,	nRst,	$06
	smpsReturn

Ice_Mountain_Act_2_Call18:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$03
	dc.b		nE5,	$04,	nRst,	nE5,	nCs5,	nRst,	nE5,	nRst
	dc.b		nCs5,	nE5,	nRst,	nE5,	nCs5,	nRst,	$10,	nD5
	dc.b		$04,	nRst,	nA4,	nD5,	nRst,	nE5,	nRst,	nE5
	dc.b		nRst,	nE5,	nRst,	nE5,	nE5,	nRst
	smpsReturn

Ice_Mountain_Act_2_Call19:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$03
	dc.b		nA5,	$02,	nRst,	$0A,	nA5,	$02,	nRst,	$06
	dc.b		nFs5,	$02,	nRst,	$06,	nFs5,	$02,	nRst,	$06
	dc.b		nA5,	$02,	nRst,	$1A,	nFs5,	$02,	nRst,	$0A
	dc.b		nFs5,	$02,	nRst,	$06,	nAb5,	$02,	nRst,	$06
	dc.b		nAb5,	$02,	nRst,	$06,	nAb5,	$02,	nRst,	$12
	smpsReturn

Ice_Mountain_Act_2_Call1A:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$03
	dc.b		nA5,	$02,	nRst,	$0A,	nA5,	$02,	nRst,	$06
	dc.b		nFs5,	$02,	nRst,	$06,	nFs5,	$02,	nRst,	$06
	dc.b		nA5,	$02,	nRst,	$1A,	nFs5,	$02,	nRst,	$0A
	dc.b		nFs5,	$02,	nRst,	$06,	nAb5,	$02,	nRst,	$06
	dc.b		nAb5,	$02,	nRst,	$06,	nAb5,	$02,	nRst,	$12
	smpsReturn

Ice_Mountain_Act_2_Call1B:
	smpsFMvoice	$02
	dc.b		nE4,	$0F,	nRst,	$01,	nA4,	$0F,	nRst,	$01
	dc.b		nCs5,	$0F,	nRst,	$01,	nA4,	$0F,	nRst,	$01
	dc.b		nF4,	$0F,	nRst,	$01,	nE4,	$0F,	nRst,	$01
	dc.b		nD4,	$0F,	nRst,	$01,	nG4,	$0F,	nRst,	$01
	smpsReturn

Ice_Mountain_Act_2_Call1C:
	dc.b		nE4,	$0F,	nRst,	$01,	nA4,	$0F,	nRst,	$01
	dc.b		nCs5,	$0F,	nRst,	$01,	nA4,	$0F,	nRst,	$01
	dc.b		nF4,	$0F,	nRst,	$01,	nE4,	$0F,	nRst,	$01
	dc.b		nD4,	$20
	smpsReturn

Ice_Mountain_Act_2_Call1D:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nA4,	nA4,	$04,	nE4,	$08,	nA4,	nE4,	$04
	dc.b		nA4,	$08,	$04,	nE4,	$13,	nRst,	$01,	nFs4
	dc.b		$08,	nE4,	$04,	nFs4,	$08,	nAb4,	nA4,	nAb4
	dc.b		nA4,	$04,	nAb4,	$08
	smpsReturn

Ice_Mountain_Act_2_Call1E:
	dc.b		nRst,	$08,	nE4,	$04,	nRst,	nE4,	nCs4,	nRst
	dc.b		nE4,	nRst,	nCs4,	nE4,	nRst,	nE4,	nCs4,	nRst
	dc.b		$10,	nD4,	$04,	nRst,	nE4,	nD4,	nRst,	nE4
	dc.b		nRst,	nE4,	nRst,	nE4,	nRst,	nE4,	nE4,	nRst
	smpsReturn

Ice_Mountain_Act_2_Call1F:
	dc.b		nE4,	$06,	nRst,	$02,	nE4,	$01,	nC4,	nA3
	dc.b		nF3,	nRst,	nRst,	$73
	smpsReturn

Ice_Mountain_Act_2_Call20:
	dc.b		smpsNoAttack,	$74
	smpsPSGvoice	$00
	dc.b		nCs5,	$07,	nRst,	$01,	nB4,	$02,	nRst
	smpsReturn

Ice_Mountain_Act_2_Call21:
	smpsPSGvoice	$00
	dc.b		nB4,	$08,	nCs5,	$03,	nRst,	$01,	nA4,	$0F
	dc.b		nRst,	$15,	nFs4,	$07,	nRst,	$01,	nA4,	$06
	dc.b		nRst,	$02,	nE5,	$07,	nRst,	$01,	nD5,	$04
	dc.b		nCs5,	nB4,	nA4,	nAb4,	nAb5,	$08,	nFs5,	$04
	dc.b		nE5,	nD5,	nCs5,	nB4,	nA4,	nAb4
	smpsReturn

Ice_Mountain_Act_2_Call22:
	dc.b		nRst,	$06,	nG4,	$01,	nF4,	nRst,	nD4,	nB3
	dc.b		nG3,	nE3,	nRst,	$73
	smpsReturn

Ice_Mountain_Act_2_Call23:
	smpsPSGvoice	$00
	dc.b		nA4,	$0F,	nRst,	$01,	nE5,	$0F,	nRst,	$01
	dc.b		nCs5,	$0F,	nRst,	$01,	nA5,	$0F,	nRst,	$01
	dc.b		nF5,	$08,	nE5,	$04,	nC5,	$08,	nA4,	$04
	dc.b		nG4,	nF4,	nD5,	$08,	nC5,	$04,	nB4,	nG4
	dc.b		$06,	nRst,	$0A
	smpsReturn

Ice_Mountain_Act_2_Call24:
	smpsPSGvoice	$00
	dc.b		nA4,	$0F,	nRst,	$01,	nE5,	$0F,	nRst,	$01
	dc.b		nCs5,	$13,	nRst,	$01,	nCs6,	$04,	nD6,	nE6
	dc.b		nF6,	$08,	nE6,	$04,	nC6,	nA5,	nF5,	nG5
	dc.b		nA5,	nG5,	$06,	nD5,	nB5,	nG5,	nD6,	nG6
	dc.b		$02
	smpsReturn

Ice_Mountain_Act_2_Call25:
	dc.b		nRst,	$08
	smpsPSGvoice	$00
	dc.b		nA4,	nA4,	$04,	nE4,	$08,	nA4,	nE4,	$04
	dc.b		nA4,	$08,	$04,	nE4,	$13,	nRst,	$01,	nFs4
	dc.b		$08,	nE4,	$04,	nFs4,	$08,	nAb4,	nA4,	nAb4
	dc.b		nA4,	$04,	nAb4,	$08
	smpsReturn

Ice_Mountain_Act_2_Call26:
	dc.b		smpsNoAttack,	$20
	smpsPSGvoice	$00
	dc.b		nE4,	$02,	nA3,	nCs4,	nE4,	nA4,	nCs4,	nE4
	dc.b		nA4,	nCs5,	nE4,	nA4,	nCs5,	nE5,	nG4,	nCs5
	dc.b		nE5,	nA5,	nD5,	nFs5,	nA5,	nD6,	nFs5,	nA5
	dc.b		nD6,	nFs6,	nA5,	nD6,	nFs6,	nA6,	nD6,	nFs6
	dc.b		nA6,	nB6,	nAb6,	nE6,	nB5,	nE6,	nB5,	nAb5
	dc.b		nE5,	nB5,	nAb5,	nE5,	nB4,	nAb5,	nE5,	nB4
	dc.b		nAb4
	smpsReturn

Ice_Mountain_Act_2_Call27:
	dc.b		nRst,	$08,	nA4,	$04,	nRst,	nA4,	nE4,	nRst
	dc.b		nA4,	nRst,	nE4,	nA4,	nRst,	nA4,	nE4,	nRst
	dc.b		$10,	nFs4,	$04,	nRst,	nA4,	nFs4,	nRst,	nAb4
	dc.b		nRst,	nA4,	nRst,	nB4,	nRst,	nA4,	nAb4,	nRst
	smpsReturn

Ice_Mountain_Act_2_Call28:
	smpsPSGvoice	$00
	dc.b		nA4,	$0B,	nRst,	$01,	nE4,	$1D,	nRst,	$03
	dc.b		nFs4,	$07,	nRst,	$01,	nG4,	$04,	nFs4,	nE4
	dc.b		nD4,	$0B,	nRst,	$01,	nCs4,	$06,	nRst,	$02
	dc.b		nD4,	$05,	nRst,	$03,	nB3,	$1D,	nRst,	$07
	smpsReturn

Ice_Mountain_Act_2_Call29:
	smpsPSGvoice	$00
	dc.b		nA4,	$0B,	nRst,	$01,	nE4,	$1B,	nRst,	$05
	dc.b		nA4,	$07,	nRst,	$01,	nB4,	$08,	nCs5,	$02
	dc.b		nRst,	nCs5,	$08,	nD5,	$04,	nE5,	$08,	nD5
	dc.b		nCs5,	$13,	nRst,	$05,	nCs5,	$07,	nRst,	$01
	dc.b		nB4,	$02,	nRst
	smpsReturn

Ice_Mountain_Act_2_Call2A:
	smpsPSGvoice	$00
	dc.b		nB4,	$08,	nCs5,	$03,	nRst,	$01,	nA4,	$0F
	dc.b		nRst,	$15,	nFs4,	$07,	nRst,	$01,	nA4,	$06
	dc.b		nRst,	$02,	nE5,	$07,	nRst,	$01,	nD5,	$04
	dc.b		nCs5,	nB4,	nA4,	nAb4,	nAb5,	$08,	nFs5,	$04
	dc.b		nE5,	nD5,	nCs5,	nB4,	nA4,	nAb4
	smpsReturn

Ice_Mountain_Act_2_Call2B:
	smpsPSGvoice	$00
	dc.b		nA4,	$0F,	nRst,	$01,	nE5,	$0F,	nRst,	$01
	dc.b		nCs5,	$0F,	nRst,	$01,	nA5,	$0F,	nRst,	$01
	dc.b		nF5,	$08,	nE5,	$04,	nC5,	$08,	nA4,	$04
	dc.b		nG4,	nF4,	nD5,	$08,	nC5,	$04,	nB4,	nG4
	dc.b		$06,	nRst,	$0A
	smpsReturn

Ice_Mountain_Act_2_Call2C:
	smpsPSGvoice	$00
	dc.b		nA4,	$0F,	nRst,	$01,	nE5,	$0F,	nRst,	$01
	dc.b		nCs5,	$13,	nRst,	$01,	nCs6,	$04,	nD6,	nE6
	dc.b		nF6,	$08,	nE6,	$04,	nC6,	nA5,	nF5,	nG5
	dc.b		nA5,	nG5,	$06,	nD5,	nB5,	nG5,	nD6,	nG6
	dc.b		$02
	smpsReturn

Ice_Mountain_Act_2_Call2D:
	dc.b		smpsNoAttack,	$19,	nRst,	$07
	smpsPSGvoice	$00
	dc.b		nE4,	$02,	nA3,	nCs4,	nE4,	nA4,	nCs4,	nE4
	dc.b		nA4,	nCs5,	nE4,	nA4,	nCs5,	nE5,	nG4,	nCs5
	dc.b		nE5,	nA5,	nD5,	nFs5,	nA5,	nD6,	nFs5,	nA5
	dc.b		nD6,	nFs6,	nA5,	nD6,	nFs6,	nA6,	nD6,	nFs6
	dc.b		nA6,	nB6,	nAb6,	nE6,	nB5,	nE6,	nB5,	nAb5
	dc.b		nE5,	nB5,	nAb5,	nE5,	nB4,	nAb5,	nE5,	nB4
	dc.b		nAb4
	smpsReturn

Ice_Mountain_Act_2_Call2E:
	smpsPSGvoice	$01
	dc.b		nCs0,	$17,	nRst,	$05,	nCs0,	$1F,	nRst,	$05
	dc.b		nCs0,	$19,	nRst,	$03,	nCs0,	$0F,	nRst,	$15
	smpsReturn

Ice_Mountain_Act_2_Call2F:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

Ice_Mountain_Act_2_Call30:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

Ice_Mountain_Act_2_Call31:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

Ice_Mountain_Act_2_Call32:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

Ice_Mountain_Act_2_Call33:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

Ice_Mountain_Act_2_Call34:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

Ice_Mountain_Act_2_Call35:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

Ice_Mountain_Act_2_Call36:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

Ice_Mountain_Act_2_Call37:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

Ice_Mountain_Act_2_Call38:
	dc.b		dKick,	$17,	nRst,	$05,	dKick,	$1F,	nRst,	$05
	dc.b		dKick,	$17,	nRst,	$05,	dKick,	$0F,	nRst,	$01
	dc.b		dKick,	$08,	dKick,	dKick,	$04
	smpsReturn

Ice_Mountain_Act_2_Call39:
	dc.b		dKick,	$08,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	dc.b		dKick,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08,	dKick
	dc.b		dSnare,	dKick,	$04,	dKick,	dSnare,	$08,	dKick,	dSnare
	dc.b		dKick,	dSnare,	$04,	dSnare
	smpsReturn

Ice_Mountain_Act_2_Call3A:
	dc.b		dKick,	$08,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	dc.b		dKick,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08,	dKick
	dc.b		dSnare,	dKick,	$04,	dKick,	dSnare,	$08,	dKick,	dSnare
	dc.b		dKick,	dSnare
	smpsReturn

Ice_Mountain_Act_2_Call3B:
	dc.b		dKick,	$08,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	dc.b		dKick,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08,	dKick
	dc.b		dSnare,	dKick,	$04,	dKick,	dSnare,	$08,	dKick,	dSnare
	dc.b		dKick,	dSnare,	$02,	dSnare,	dSnare,	dSnare
	smpsReturn

Ice_Mountain_Act_2_Voices:
	dc.b		$10,$09,$00,$00,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$25,$30,$13,$00;			Voice 00
	dc.b		$03,$02,$03,$10,$11,$15,$10,$12,$18,$10,$0C,$1C,$0D,$00,$1A,$00
	dc.b		$16,$3F,$5F,$6F,$5B,$0F,$18,$1C,$84;			Voice 01
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 02
	dc.b		$3B,$01,$02,$04,$02,$18,$1B,$19,$16,$1C,$19,$1D,$1F,$0A,$02,$02
	dc.b		$03,$0F,$1F,$1F,$1E,$26,$1B,$1B,$80;			Voice 03
	dc.b		$25,$31,$12,$0A,$22,$1F,$1F,$1F,$1F,$0E,$0B,$10,$0E,$10,$00,$00
	dc.b		$00,$E7,$3F,$3F,$3F,$0B,$88,$88,$88;			Voice 04
	even
