; =============================================================================================
; Project Name:		sylvcastle3
; Created:		9th September 2015
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

sylvcastle3_Header:
	smpsHeaderVoice	sylvcastle3_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$02

	smpsHeaderDAC	sylvcastle3_DAC
	smpsHeaderFM	sylvcastle3_FM1,	smpsPitch00,	$00
	smpsHeaderFM	sylvcastle3_FM2,	smpsPitch00,	$00
	smpsHeaderFM	sylvcastle3_FM3,	smpsPitch01hi,	$00
	smpsHeaderFM	sylvcastle3_FM4,	smpsPitch00,	$00
	smpsHeaderFM	sylvcastle3_FM5,	smpsPitch00,	$00
	smpsHeaderPSG	sylvcastle3_PSG1,	smpsPitch03lo,	$04,	$00
	smpsHeaderPSG	sylvcastle3_PSG2,	smpsPitch03lo,	$04,	$00
	smpsHeaderPSG	sylvcastle3_PSG3,	smpsPitch03lo,	$04,	$00

; FM1 Data
sylvcastle3_FM1:
	smpsCall	sylvcastle3_Call01
sylvcastle3_Jump01:
	smpsCall	sylvcastle3_Call01
	smpsCall	sylvcastle3_Call02
	smpsCall	sylvcastle3_Call03
	smpsCall	sylvcastle3_Call01
	smpsJump	sylvcastle3_Jump01

; FM2 Data
sylvcastle3_FM2:
	smpsCall	sylvcastle3_Call04
sylvcastle3_Jump02:
	smpsCall	sylvcastle3_Call05
	smpsCall	sylvcastle3_Call06
	smpsCall	sylvcastle3_Call07
	smpsCall	sylvcastle3_Call05
	smpsJump	sylvcastle3_Jump02

; FM3 Data
sylvcastle3_FM3:
	smpsCall	sylvcastle3_Call08
sylvcastle3_Jump03:
	smpsCall	sylvcastle3_Call08
	smpsCall	sylvcastle3_Call09
	smpsCall	sylvcastle3_Call09
	smpsCall	sylvcastle3_Call08
	smpsJump	sylvcastle3_Jump03

; FM4 Data
sylvcastle3_FM4:
	smpsPan		panLeft,	$00
	smpsCall	sylvcastle3_Call0A
sylvcastle3_Jump04:
	smpsCall	sylvcastle3_Call0B
	smpsCall	sylvcastle3_Call0C
	smpsCall	sylvcastle3_Call0D
	smpsCall	sylvcastle3_Call0B
	smpsJump	sylvcastle3_Jump04

; FM5 Data
sylvcastle3_FM5:
	smpsPan		panRight,	$00
	smpsCall	sylvcastle3_Call0E
sylvcastle3_Jump05:
	smpsCall	sylvcastle3_Call0F
	smpsCall	sylvcastle3_Call10
	smpsCall	sylvcastle3_Call11
	smpsCall	sylvcastle3_Call0F
	smpsJump	sylvcastle3_Jump05

; PSG1 Data
sylvcastle3_PSG1:
	smpsCall	sylvcastle3_Call12
sylvcastle3_Jump06:
	smpsCall	sylvcastle3_Call13
	smpsCall	sylvcastle3_Call14
	smpsCall	sylvcastle3_Call15
	smpsCall	sylvcastle3_Call16
	smpsJump	sylvcastle3_Jump06

; PSG2 Data
sylvcastle3_PSG2:
	smpsCall	sylvcastle3_Call17
sylvcastle3_Jump07:
	smpsCall	sylvcastle3_Call18
	smpsCall	sylvcastle3_Call19
	smpsCall	sylvcastle3_Call1A
	smpsCall	sylvcastle3_Call1B
	smpsJump	sylvcastle3_Jump07

; PSG3 Data
sylvcastle3_PSG3:
	smpsPSGform	$E7
	smpsCall	sylvcastle3_Call1C
sylvcastle3_Jump08:
	smpsCall	sylvcastle3_Call1D
	smpsCall	sylvcastle3_Call1E
	smpsCall	sylvcastle3_Call1E
	smpsCall	sylvcastle3_Call1F
	smpsJump	sylvcastle3_Jump08

; DAC Data
sylvcastle3_DAC:
	smpsCall	sylvcastle3_Call20
sylvcastle3_Jump09:
	smpsCall	sylvcastle3_Call21
	smpsCall	sylvcastle3_Call22
	smpsCall	sylvcastle3_Call23
	smpsCall	sylvcastle3_Call24
	smpsJump	sylvcastle3_Jump09

sylvcastle3_Call01:
	smpsFMvoice	$01
	smpsModSet	$10,	$01,	$02,	$04
	dc.b		nCs5,	$03,	nRst,	$01,	nCs5,	nRst,	nAb4,	nRst
	dc.b		nB4,	nRst,	nCs5,	nRst,	$03,	nCs5,	$10,	nRst
	dc.b		$02,	nE5,	$05,	nRst,	$01,	nEb5,	$03,	nRst
	dc.b		nB4,	$12,	nRst,	$02,	nCs5,	$03,	nRst,	$01
	dc.b		nCs5,	nRst,	nAb4,	nRst,	nB4,	nRst,	nCs5,	nRst
	dc.b		$03,	nCs5,	$09,	nRst,	$01,	nE5,	$07,	nRst
	dc.b		$01,	nEb5,	$1E,	nRst,	$02
	smpsReturn

sylvcastle3_Call02:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$02
	dc.b		nCs5,	$02,	nRst,	nAb5,	$07,	nRst,	$01,	nCs5
	dc.b		$05,	nRst,	$01,	nAb5,	$03,	nRst,	nCs5,	$04
	dc.b		nE5,	$06,	nEb5,	$03,	nRst,	nB4,	$0F,	nRst
	dc.b		$01,	nB4,	$04,	nA4,	$08,	nB4,	$06,	nRst
	dc.b		$02,	nCs5,	$08,	nE5,	$06,	nRst,	$02,	nB4
	dc.b		$0F,	nRst,	$01,	nAb4,	$0F,	nRst,	$01
	smpsReturn

sylvcastle3_Call03:
	dc.b		smpsNoAttack,	$04,	nCs5,	$02,	nRst,	nAb5,	$07,	nRst
	dc.b		$01,	nCs5,	$05,	nRst,	$01,	nAb5,	$03,	nRst
	dc.b		nCs5,	$04,	nE5,	$06,	nEb5,	$03,	nRst,	nB4
	dc.b		$0F,	nRst,	$01,	nB4,	$04,	nA4,	$08,	nB4
	dc.b		$07,	nRst,	$01,	nCs5,	$08,	nE5,	$07,	nRst
	dc.b		$01,	nEb5,	$0F,	nRst,	$01,	nB4,	$10
	smpsReturn

sylvcastle3_Call04:
	smpsFMvoice	$01
	dc.b		nAb4,	$03,	nRst,	$01,	nAb4,	nRst,	nCs4,	nRst
	dc.b		nFs4,	nRst,	nAb4,	nRst,	$03,	nAb4,	$10,	nRst
	dc.b		$02,	nCs5,	$05,	nRst,	$01,	nB4,	$03,	nRst
	dc.b		nFs4,	$12,	nRst,	$02,	nA4,	$03,	nRst,	$01
	dc.b		nA4,	nRst,	nE4,	nRst,	nAb4,	nRst,	nA4,	nRst
	dc.b		$03,	nA4,	$09,	nRst,	$01,	nCs5,	$07,	nRst
	dc.b		$01,	nB4,	$1E,	nRst,	$02
	smpsReturn

sylvcastle3_Call05:
	smpsFMvoice	$01
	smpsModSet	$10,	$01,	$02,	$04
	dc.b		nAb4,	$03,	nRst,	$01,	nAb4,	nRst,	nCs4,	nRst
	dc.b		nFs4,	nRst,	nAb4,	nRst,	$03,	nAb4,	$10,	nRst
	dc.b		$02,	nCs5,	$05,	nRst,	$01,	nB4,	$03,	nRst
	dc.b		nFs4,	$12,	nRst,	$02,	nA4,	$03,	nRst,	$01
	dc.b		nA4,	nRst,	nE4,	nRst,	nAb4,	nRst,	nA4,	nRst
	dc.b		$03,	nA4,	$09,	nRst,	$01,	nCs5,	$07,	nRst
	dc.b		$01,	nB4,	$1E,	nRst,	$02
	smpsReturn

sylvcastle3_Call06:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$02
	dc.b		nAb4,	$02,	nRst,	nCs5,	$07,	nRst,	$01,	nAb4
	dc.b		$05,	nRst,	$01,	nCs5,	$03,	nRst,	nAb4,	$04
	dc.b		nCs5,	$06,	nB4,	$03,	nRst,	nFs4,	$0F,	nRst
	dc.b		$01,	nFs4,	$04,	nE4,	$08,	nAb4,	$06,	nRst
	dc.b		$02,	nA4,	$08,	nCs5,	$06,	nRst,	$02,	nFs4
	dc.b		$0F,	nRst,	$01,	nEb4,	$0F,	nRst,	$01
	smpsReturn

sylvcastle3_Call07:
	dc.b		smpsNoAttack,	$04,	nAb4,	$02,	nRst,	nCs5,	$07,	nRst
	dc.b		$01,	nAb4,	$05,	nRst,	$01,	nCs5,	$03,	nRst
	dc.b		nAb4,	$04,	nCs5,	$06,	nB4,	$03,	nRst,	nFs4
	dc.b		$0F,	nRst,	$01,	nFs4,	$04,	nE4,	$08,	nAb4
	dc.b		$06,	nRst,	$02,	nA4,	$08,	nCs5,	$06,	nRst
	dc.b		$02,	nAb4,	$0F,	nRst,	$01,	nFs4,	$10
	smpsReturn

sylvcastle3_Call08:
	smpsFMvoice	$00
	dc.b		nCs2,	$04,	nRst,	$02,	nCs2,	nCs2,	nAb1,	nRst
	dc.b		nCs2,	$05,	nRst,	$01,	nB1,	$02,	nCs2,	nAb1
	dc.b		nB1,	nCs2,	nE2,	nB1,	$04,	nRst,	$02,	nB1
	dc.b		nB1,	nAb1,	nB1,	$07,	nRst,	$01,	nFs2,	$02
	dc.b		nB2,	nE3,	nEb3,	nB2,	nFs2,	nA1,	$04,	nRst
	dc.b		$02,	nA1,	nA1,	nE1,	nRst,	nA1,	$05,	nRst
	dc.b		$01,	nAb1,	$02,	nA1,	nE1,	nAb1,	nA1,	nCs2
	dc.b		nB1,	$03,	nRst,	nB1,	$02,	nB1,	nAb1,	nB1
	dc.b		$07,	nRst,	$01,	nEb2,	$02,	nFs2,	nB2,	nFs2
	dc.b		nEb2,	nB1
	smpsReturn

sylvcastle3_Call09:
	dc.b		nCs2,	$03,	nRst,	nCs2,	$02,	nAb1,	$03,	nRst
	dc.b		nB1,	$02,	nRst,	nCs2,	nRst,	nCs2,	nE2,	nEb2
	dc.b		nCs2,	nEb2,	nB1,	$04,	nRst,	$02,	nB1,	nEb2
	dc.b		$04,	nRst,	$02,	nEb2,	nAb2,	$04,	nRst,	$02
	dc.b		nAb2,	nB2,	nEb3,	nB2,	nAb2,	nA2,	$04,	nRst
	dc.b		$02,	nA2,	nE2,	$04,	nRst,	$02,	nE2,	nRst
	dc.b		nCs2,	nRst,	nA2,	nB2,	nCs3,	nB2,	nA2,	nB2
	dc.b		$04,	nRst,	$02,	nB2,	nAb2,	$04,	nEb2,	$02
	dc.b		nAb2,	nEb2,	$03,	nRst,	$01,	nB1,	$02,	nAb1
	dc.b		nB1,	nEb2,	nAb2,	nB2
	smpsReturn

sylvcastle3_Call0A:
	smpsFMvoice	$03
	smpsModSet	$10,	$01,	$03,	$04
	dc.b		nCs4,	$10,	nAb4,	nFs4,	nEb4,	nA3,	nE4,	nB3
	dc.b		nAb4,	$08,	nB4
	smpsReturn

sylvcastle3_Call0B:
	dc.b		nCs4,	$10,	nAb4,	nFs4,	nEb4,	nA3,	nE4,	nB3
	dc.b		nAb4,	$08,	nB4
	smpsReturn

sylvcastle3_Call0C:
	dc.b		nAb3,	$10,	nE5,	$06,	nEb5,	nCs5,	$04,	nB4
	dc.b		nEb5,	nB4,	nFs4,	$08,	nFs3,	$0C,	nA3,	nCs4
	dc.b		$10,	nRst,	$04,	nE5,	$08,	nEb5,	nRst,	nA4
	dc.b		$02,	nAb4,	nB4,	nEb5
	smpsReturn

sylvcastle3_Call0D:
	dc.b		nAb3,	$10,	nE5,	$06,	nEb5,	nCs5,	$04,	nB4
	dc.b		nEb5,	nB4,	nFs4,	$08,	nFs3,	$0C,	nE5,	nEb5
	dc.b		nCs5,	$08,	nRst,	nFs4,	nB4,	$10
	smpsReturn

sylvcastle3_Call0E:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$03
	dc.b		nE4,	$10,	nCs5,	$08,	nB4,	$10,	nE5,	$06
	dc.b		nEb5,	nB4,	$04,	nRst,	$08,	nCs4,	$10,	nAb4
	dc.b		$08,	nFs4,	$10,	nE5,	$08,	nEb5
	smpsReturn

sylvcastle3_Call0F:
	dc.b		nRst,	$08,	nE4,	$10,	nCs5,	$08,	nB4,	$10
	dc.b		nE5,	$06,	nEb5,	nB4,	$04,	nRst,	$08,	nCs4
	dc.b		$10,	nAb4,	$08,	nFs4,	$10,	nE5,	$08,	nEb5
	smpsReturn

sylvcastle3_Call10:
	dc.b		nRst,	$04,	nCs5,	nB4,	nCs5,	nAb3,	$06,	nCs4
	dc.b		nE4,	$04,	nEb4,	$0C,	nAb4,	$08,	nB4,	$04
	dc.b		nFs4,	$08,	nE5,	$0C,	nEb5,	nCs5,	$08,	nAb4
	dc.b		$10,	nAb5,	$02,	nFs5,	nE5,	nCs5,	nRst,	$08
	smpsReturn

sylvcastle3_Call11:
	dc.b		smpsNoAttack,	$04,	nCs5,	nB4,	nCs5,	nAb3,	$06,	nCs4
	dc.b		nE4,	$04,	nEb4,	$0C,	nAb4,	$08,	nB4,	$04
	dc.b		nFs4,	$08,	nE4,	$0C,	nCs4,	$14,	nEb4,	$18
	dc.b		nEb5,	$08
	smpsReturn

sylvcastle3_Call12:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

sylvcastle3_Call13:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

sylvcastle3_Call14:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nCs5,	$02,	nRst,	nAb5,	$07,	nRst,	$01,	nCs5
	dc.b		$05,	nRst,	$01,	nAb5,	$03,	nRst,	nCs5,	$04
	dc.b		nE5,	$06,	nEb5,	$03,	nRst,	nB4,	$0F,	nRst
	dc.b		$01,	nB4,	$04,	nA4,	$08,	nB4,	$06,	nRst
	dc.b		$02,	nCs5,	$08,	nE5,	$06,	nRst,	$02,	nB4
	dc.b		$0F,	nRst,	$01,	nAb4,	$0C
	smpsReturn

sylvcastle3_Call15:
	dc.b		smpsNoAttack,	$03,	nRst,	$05,	nCs5,	$02,	nRst,	nAb5
	dc.b		$07,	nRst,	$01,	nCs5,	$05,	nRst,	$01,	nAb5
	dc.b		$03,	nRst,	nCs5,	$04,	nE5,	$06,	nEb5,	$03
	dc.b		nRst,	nB4,	$0F,	nRst,	$01,	nB4,	$04,	nA4
	dc.b		$08,	nB4,	$06,	nRst,	$02,	nCs5,	$08,	nE5
	dc.b		$06,	nRst,	$02,	nEb5,	$0F,	nRst,	$01,	nB4
	dc.b		$0C
	smpsReturn

sylvcastle3_Call16:
	dc.b		smpsNoAttack,	$03,	nRst,	$7D
	smpsReturn

sylvcastle3_Call17:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

sylvcastle3_Call18:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

sylvcastle3_Call19:
	dc.b		smpsNoAttack,	$0C
	smpsPSGvoice	$00
	dc.b		nCs5,	$02,	nRst,	nAb5,	$07,	nRst,	$01,	nCs5
	dc.b		$05,	nRst,	$01,	nAb5,	$03,	nRst,	nCs5,	$04
	dc.b		nE5,	$06,	nEb5,	$03,	nRst,	nB4,	$0F,	nRst
	dc.b		$01,	nB4,	$04,	nA4,	$08,	nB4,	$06,	nRst
	dc.b		$02,	nCs5,	$08,	nE5,	$06,	nRst,	$02,	nB4
	dc.b		$0F,	nRst,	$01,	nAb4,	$08
	smpsReturn

sylvcastle3_Call1A:
	dc.b		smpsNoAttack,	$07,	nRst,	$05,	nCs5,	$02,	nRst,	nAb5
	dc.b		$07,	nRst,	$01,	nCs5,	$05,	nRst,	$01,	nAb5
	dc.b		$03,	nRst,	nCs5,	$04,	nE5,	$06,	nEb5,	$03
	dc.b		nRst,	nB4,	$0F,	nRst,	$01,	nB4,	$04,	nA4
	dc.b		$08,	nB4,	$06,	nRst,	$02,	nCs5,	$08,	nE5
	dc.b		$06,	nRst,	$02,	nEb5,	$0F,	nRst,	$01,	nB4
	dc.b		$08
	smpsReturn

sylvcastle3_Call1B:
	dc.b		smpsNoAttack,	$07,	nRst,	$79
	smpsReturn

sylvcastle3_Call1C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nCs0,	nCs0,	$04,	nRst,	$02,	nCs0
	dc.b		$04,	$02,	nRst,	nCs0,	$04,	$02,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	nRst,	$02
	dc.b		nCs0,	$04,	$02,	nRst,	nCs0,	$04,	$02,	nCs0
	dc.b		nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	nRst
	dc.b		$02,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	$04,	$02
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		nRst,	$02,	nCs0,	$04,	nCs0,	nCs0,	$02,	nRst
	dc.b		nCs0,	nRst,	nCs0,	$04,	$02
	smpsReturn

sylvcastle3_Call1D:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nCs0,	nCs0,	$04,	nRst,	$02,	nCs0
	dc.b		$04,	$02,	nRst,	nCs0,	$04,	$02,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	nRst,	$02
	dc.b		nCs0,	$04,	$02,	nRst,	nCs0,	$04,	$02,	nCs0
	dc.b		nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	nRst
	dc.b		$02,	nCs0,	$04,	$02,	nRst,	nCs0,	$04,	$02
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		nRst,	$02,	nCs0,	$04,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		$02,	nRst,	nCs0
	smpsReturn

sylvcastle3_Call1E:
	dc.b		smpsNoAttack,	$02,	nRst
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	$06,	$04,	nCs0,	nCs0
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nCs0,	$04
	dc.b		$02,	$06,	$04,	nCs0,	nCs0,	$02,	nCs0,	nRst
	dc.b		$04,	$02,	nCs0,	nCs0,	$04,	$02,	$06,	$04
	dc.b		nCs0,	nCs0,	$02,	nCs0,	nRst,	$04,	$02,	nCs0
	dc.b		nCs0,	$04,	$02,	$08,	$02,	nCs0,	nRst,	nCs0
	dc.b		nCs0,	nRst
	smpsReturn

sylvcastle3_Call1F:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nCs0,	nCs0,	$06,	$04,	$02,	nRst
	dc.b		nCs0,	$04,	$02,	$04,	$02,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$04,	nRst,	$02,	nCs0,	$04,	$02,	nRst
	dc.b		nCs0,	$04,	$02,	nCs0,	nRst,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	$04,	nRst,	$02,	nCs0,	$04,	$02
	dc.b		nRst,	nCs0,	$04,	$02,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$04,	nRst,	$02,	nCs0,	$04
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	$02,	nRst,	nCs0
	smpsReturn

sylvcastle3_Call20:
	dc.b		dKickS1,	$02,	nRst,	$04,	dKickS1,	$06,	$08,	$02
	dc.b		dKickS1,	dSnareS1,	dKickS1,	$06,	$02,	nRst,	$04,	dKickS1
	dc.b		$06,	$08,	$02,	dKickS1,	dSnareS1,	dKickS1,	$06,	$02
	dc.b		nRst,	$04,	dKickS1,	$0E,	$02,	dKickS1,	dSnareS1,	dKickS1
	dc.b		$06,	$02,	nRst,	$04,	dKickS1,	$06,	$04,	dSnareS1
	dc.b		$02,	dKickS1,	nRst,	dKickS1,	dSnareS1,	$04,	$02,	dSnareS1
	smpsReturn

sylvcastle3_Call21:
	dc.b		dKickS1,	$02,	nRst,	$04,	dKickS1,	$06,	$08,	$02
	dc.b		dKickS1,	dSnareS1,	dKickS1,	$06,	$02,	nRst,	$04,	dKickS1
	dc.b		$06,	$08,	$02,	dKickS1,	dSnareS1,	dKickS1,	$06,	$02
	dc.b		nRst,	$04,	dKickS1,	$06,	$08,	$02,	dKickS1,	dSnareS1
	dc.b		dKickS1,	$06,	$02,	nRst,	$04,	dKickS1,	$06,	$04
	dc.b		dSnareS1,	dKickS1,	dSnareS1,	$02,	dSnareS1,	dSnareS1,	$04
	smpsReturn

sylvcastle3_Call22:
	dc.b		dKickS1,	$08,	dSnareS1,	$06,	$02,	dKickS1,	$04,	dKickS1
	dc.b		dSnareS1,	dKickS1,	$02,	dSnareS1,	dKickS1,	$08,	dSnareS1,	$06
	dc.b		$02,	dKickS1,	$04,	dKickS1,	dSnareS1,	dKickS1,	$02,	dSnareS1
	dc.b		dKickS1,	$08,	dSnareS1,	$06,	$02,	dKickS1,	$04,	dKickS1
	dc.b		dSnareS1,	dKickS1,	$02,	dSnareS1,	dKickS1,	$08,	dSnareS1,	$06
	dc.b		$02,	dKickS1,	dSnareS1,	$04,	dKickS1,	$02,	dSnareS1,	$04
	dc.b		dKickS1,	$02,	dSnareS1
	smpsReturn

sylvcastle3_Call23:
	dc.b		dKickS1,	$08,	dSnareS1,	$06,	$02,	dKickS1,	$04,	dKickS1
	dc.b		dSnareS1,	dKickS1,	$02,	dSnareS1,	dKickS1,	$08,	dSnareS1,	$06
	dc.b		$02,	dKickS1,	$04,	dKickS1,	dSnareS1,	dKickS1,	$02,	dSnareS1
	dc.b		dKickS1,	$08,	dSnareS1,	$06,	$02,	dKickS1,	$04,	dKickS1
	dc.b		dSnareS1,	dKickS1,	$02,	dSnareS1,	dKickS1,	$08,	dSnareS1,	$06
	dc.b		$02,	dKickS1,	dSnareS1,	$04,	dKickS1,	$02,	dSnareS1,	dSnareS1
	dc.b		dSnareS1,	nRst
	smpsReturn

sylvcastle3_Call24:
	dc.b		dKickS1,	$02,	nRst,	$04,	dKickS1,	$02,	nRst,	$04
	dc.b		dKickS1,	$08,	$02,	dKickS1,	dSnareS1,	dKickS1,	$06,	$02
	dc.b		nRst,	$04,	dKickS1,	$06,	$08,	$02,	dKickS1,	dSnareS1
	dc.b		dKickS1,	$06,	$02,	nRst,	$04,	dKickS1,	$06,	$08
	dc.b		$02,	dKickS1,	dSnareS1,	dKickS1,	$06,	$02,	nRst,	$04
	dc.b		dKickS1,	$06,	$04,	dSnareS1,	dKickS1,	dSnareS1,	$02,	dSnareS1
	dc.b		dSnareS1,	$04
	smpsReturn

sylvcastle3_Voices:
	dc.b		$3C,$01,$00,$00,$00,$1F,$1F,$15,$1F,$11,$0D,$12,$05,$07,$04,$09
	dc.b		$02,$55,$3A,$25,$1A,$1A,$0E,$07,$0E;			Voice 00
	dc.b		$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04
	dc.b		$04,$25,$1A,$1A,$1A,$15,$10,$10,$10;			Voice 01
	dc.b		$3D,$12,$14,$12,$11,$50,$1B,$1B,$1A,$0F,$0A,$0A,$0A,$05,$07,$08
	dc.b		$06,$1F,$1F,$1F,$1F,$15,$1B,$10,$10;			Voice 02
	dc.b		$3A,$31,$25,$D3,$01,$5F,$1F,$1F,$9C,$08,$05,$04,$05,$03,$04,$02
	dc.b		$02,$2F,$2F,$1F,$2F,$29,$27,$1F,$13;			Voice 03
	even
