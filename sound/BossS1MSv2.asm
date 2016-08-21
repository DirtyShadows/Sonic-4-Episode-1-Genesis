; =============================================================================================
; Project Name:		Boss_S1_SMSGG
; Created:		16th July 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Boss_S1_SMSGG_Header:
	smpsHeaderVoice	Boss_S1_SMSGG_Voices
	smpsHeaderChan	$04,	$01
	smpsHeaderTempo	$02,	$06

	smpsHeaderDAC	Boss_S1_SMSGG_DAC
	smpsHeaderFM	Boss_S1_SMSGG_FM1,	smpsPitch00,	$08
	smpsHeaderFM	Boss_S1_SMSGG_FM2,	smpsPitch00,	$0A
	smpsHeaderFM	Boss_S1_SMSGG_FM3,	smpsPitch00,	$12
	smpsHeaderPSG	Boss_S1_SMSGG_PSG1,	smpsPitch03lo,	$02,	$00

; FM1 Data
Boss_S1_SMSGG_FM1:
	smpsCall	Boss_S1_SMSGG_Call01
	smpsCall	Boss_S1_SMSGG_Call02
	smpsCall	Boss_S1_SMSGG_Call03
	smpsCall	Boss_S1_SMSGG_Call04
	smpsCall	Boss_S1_SMSGG_Call05
	smpsJump	Boss_S1_SMSGG_FM1

; FM2 Data
Boss_S1_SMSGG_FM2:
	smpsCall	Boss_S1_SMSGG_Call06
	smpsCall	Boss_S1_SMSGG_Call07
	smpsCall	Boss_S1_SMSGG_Call08
	smpsCall	Boss_S1_SMSGG_Call09
	smpsCall	Boss_S1_SMSGG_Call0A
	smpsJump	Boss_S1_SMSGG_FM2

; FM3 Data
Boss_S1_SMSGG_FM3:
	smpsCall	Boss_S1_SMSGG_Call0B
	smpsCall	Boss_S1_SMSGG_Call0C
	smpsCall	Boss_S1_SMSGG_Call0D
	smpsCall	Boss_S1_SMSGG_Call0E
	smpsCall	Boss_S1_SMSGG_Call0F
	smpsJump	Boss_S1_SMSGG_FM3

; PSG1 Data
Boss_S1_SMSGG_PSG1:
	smpsPSGform	$E7
	smpsCall	Boss_S1_SMSGG_Call10
	smpsCall	Boss_S1_SMSGG_Call11
	smpsCall	Boss_S1_SMSGG_Call12
	smpsCall	Boss_S1_SMSGG_Call13
	smpsCall	Boss_S1_SMSGG_Call14
	smpsJump	Boss_S1_SMSGG_PSG1

; DAC Data
Boss_S1_SMSGG_DAC:
	smpsCall	Boss_S1_SMSGG_Call15
	smpsCall	Boss_S1_SMSGG_Call16
	smpsCall	Boss_S1_SMSGG_Call17
	smpsCall	Boss_S1_SMSGG_Call18
	smpsCall	Boss_S1_SMSGG_Call19
	smpsJump	Boss_S1_SMSGG_DAC

Boss_S1_SMSGG_Call01:
	smpsFMvoice	$01
	dc.b		nD3,	$06,	nD3,	nC3,	nB2,	nBb2,	nB2,	nC3
	dc.b		nCs3,	nD3,	nD3,	nC3,	nB2,	nBb2,	nB2,	nC3
	dc.b		nCs3,	nG3,	nG3,	nFs3,	nF3,	nE3,	nF3,	$02
	smpsReturn

Boss_S1_SMSGG_Call02:
	dc.b		smpsNoAttack,	$04,	nFs3,	$06,	nG3,	nG3,	nG3,	nFs3
	dc.b		nF3,	nE3,	nF3,	nFs3,	nG3,	nA3,	$04,	$02
	dc.b		nA2,	$06,	nA2,	nA2,	nA2,	nA2,	nA2,	nA2
	dc.b		nA3,	$04,	$02,	nA2,	$06,	$04
	smpsReturn

Boss_S1_SMSGG_Call03:
	dc.b		smpsNoAttack,	$02,	nA2,	$06,	$04,	nBb2,	$02,	nRst
	dc.b		$04,	nB2,	$02,	nRst,	$04,	nC3,	$02,	nRst
	dc.b		$04,	nCs3,	$02,	nD3,	$06,	nD3,	nC3,	nB2
	dc.b		nBb2,	nB2,	nC3,	nCs3,	nD3,	nD3,	nC3,	nB2
	dc.b		nBb2,	nB2,	nC3,	nCs3
	smpsReturn

Boss_S1_SMSGG_Call04:
	dc.b		nG3,	$06,	nG3,	nFs3,	nF3,	nE3,	nF3,	nFs3
	dc.b		nG3,	nG3,	nG3,	nFs3,	nF3,	nE3,	nF3,	nFs3
	dc.b		nG3,	nA3,	$04,	$02,	nA2,	$06,	nA2,	nA2
	dc.b		nA2,	nA2,	$02
	smpsReturn

Boss_S1_SMSGG_Call05:
	dc.b		smpsNoAttack,	$04,	nA2,	$06,	nA2,	nA3,	$04,	$02
	dc.b		nA2,	$06,	nA2,	nA2,	nA2,	$04,	nBb2,	$02
	dc.b		nRst,	$04,	nB2,	$02,	nRst,	$04,	nC3,	$02
	dc.b		nRst,	$04,	nCs3,	$02
	smpsReturn

Boss_S1_SMSGG_Call06:
	dc.b		nRst,	$04
	smpsFMvoice	$03
	dc.b		nF5,	$02,	nRst,	nF5,	nRst,	nF5,	nRst,	nF5
	dc.b		nD5,	nRst,	nD5,	nF5,	$04,	nD5,	$02,	nC5
	dc.b		$04,	nD5,	$02,	nRst,	nD5,	nA4,	$08,	nRst
	dc.b		$04,	nF5,	$02,	nRst,	nF5,	nRst,	nF5,	nRst
	dc.b		nF5,	nD5,	nRst,	nD5,	nF5,	$04,	nD5,	$02
	dc.b		nC5,	$04,	nD5,	$02,	nRst,	nD5,	nA5,	$08
	dc.b		nRst,	$04,	nBb5,	$02,	nRst,	nBb5,	nRst,	nBb5
	dc.b		nRst,	nBb5,	nG5,	nRst,	nG5,	nBb5,	$04,	nG5
	dc.b		$02,	nF5
	smpsReturn

Boss_S1_SMSGG_Call07:
	dc.b		smpsNoAttack,	$02,	nG5,	nRst,	nG5,	nD5,	$08,	nRst
	dc.b		$04,	nBb5,	$02,	nRst,	nBb5,	nRst,	nBb5,	nRst
	dc.b		nBb5,	nG5,	nRst,	nG5,	nBb5,	$04,	nG5,	$02
	dc.b		nF5,	$04,	nG5,	$02,	nRst,	nG5,	nD6,	$08
	dc.b		nA5,	$02,	nRst,	nA5,	nA3,	$06,	nA4,	nA3
	dc.b		nA4,	nA3,	nA4,	nA3,	nA5,	$02,	nRst,	nA5
	dc.b		nA3,	$06,	nA4,	$04
	smpsReturn

Boss_S1_SMSGG_Call08:
	dc.b		smpsNoAttack,	$02,	nA3,	$06,	nA4,	nA3,	nA4,	nA3
	dc.b		nRst,	$04,	nF5,	$02,	nRst,	nF5,	nRst,	nF5
	dc.b		nRst,	nF5,	nD5,	nRst,	nD5,	nF5,	$04,	nD5
	dc.b		$02,	nC5,	$04,	nD5,	$02,	nRst,	nD5,	nA4
	dc.b		$08,	nRst,	$04,	nF5,	$02,	nRst,	nF5,	nRst
	dc.b		nF5,	nRst,	nF5,	nD5,	nRst,	nD5,	nF5,	$04
	dc.b		nD5,	$02,	nC5,	$04,	nD5,	$02,	nRst,	nD5
	dc.b		nA5,	$08
	smpsReturn

Boss_S1_SMSGG_Call09:
	dc.b		nRst,	$04,	nBb5,	$02,	nRst,	nBb5,	nRst,	nBb5
	dc.b		nRst,	nBb5,	nG5,	nRst,	nG5,	nBb5,	$04,	nG5
	dc.b		$02,	nF5,	$04,	nG5,	$02,	nRst,	nG5,	nD5
	dc.b		$08,	nRst,	$04,	nBb5,	$02,	nRst,	nBb5,	nRst
	dc.b		nBb5,	nRst,	nBb5,	nG5,	nRst,	nG5,	nBb5,	$04
	dc.b		nG5,	$02,	nF5,	$04,	nG5,	$02,	nRst,	nG5
	dc.b		nD6,	$08,	nA5,	$02,	nRst,	nA5,	nA3,	$06
	dc.b		nA4,	nA3,	nA4,	nA3,	$02
	smpsReturn

Boss_S1_SMSGG_Call0A:
	dc.b		smpsNoAttack,	$04,	nA4,	$06,	nA3,	nA5,	$02,	nRst
	dc.b		nA5,	nA3,	$06,	nA4,	nA3,	nA4,	nA3,	nA4
	dc.b		nA3
	smpsReturn

Boss_S1_SMSGG_Call0B:
	dc.b		nRst,	$04
	smpsFMvoice	$02
	dc.b		nD5,	$02,	nA4,	nRst,	$04,	nA4,	$02,	nRst
	dc.b		$04,	nA4,	$02,	nRst,	$04,	nA4,	$18,	nRst
	dc.b		$04,	nD5,	$02,	nA4,	nRst,	$04,	nA4,	$02
	dc.b		nRst,	$04,	nA4,	$02,	nRst,	$04,	nA4,	$18
	dc.b		nRst,	$04,	nD5,	$02,	nRst,	$06,	nD5,	$02
	dc.b		nRst,	$04,	nD5,	$02,	nRst,	$04,	nD5,	nD5
	dc.b		$02,	nD5
	smpsReturn

Boss_S1_SMSGG_Call0C:
	dc.b		smpsNoAttack,	$02,	nD5,	nRst,	$04,	nD5,	$08,	nRst
	dc.b		$04,	nD5,	$02,	nRst,	$06,	nD5,	$02,	nRst
	dc.b		$04,	nD5,	$02,	nRst,	$04,	nD5,	nD5,	$02
	dc.b		$04,	$02,	nRst,	$04,	nD5,	$08,	nA4,	$02
	dc.b		nRst,	nA4,	nA3,	nRst,	$04,	nA3,	$02,	nRst
	dc.b		$04,	nA3,	$02,	nRst,	$04,	nA3,	$02,	nRst
	dc.b		$04,	nA3,	$02,	nRst,	$04,	nA3,	$02,	nRst
	dc.b		$04,	nA3,	$02,	nRst,	$04,	nA4,	$02,	nRst
	dc.b		nA4,	nA3,	nRst,	$04,	nA3,	$02,	nRst
	smpsReturn

Boss_S1_SMSGG_Call0D:
	dc.b		smpsNoAttack,	$02,	nA3,	nRst,	$04,	nA3,	nBb3,	$02
	dc.b		nRst,	$04,	nB3,	$02,	nRst,	$04,	nC4,	$02
	dc.b		nRst,	$04,	nCs4,	$02,	nRst,	$04,	nD5,	$02
	dc.b		nA4,	nRst,	$04,	nA4,	$02,	nRst,	$04,	nA4
	dc.b		$02,	nRst,	$04,	nA4,	$18,	nRst,	$04,	nD5
	dc.b		$02,	nA4,	nRst,	$04,	nA4,	$02,	nRst,	$04
	dc.b		nA4,	$02,	nRst,	$04,	nA4,	$18
	smpsReturn

Boss_S1_SMSGG_Call0E:
	dc.b		nRst,	$04,	nD5,	$02,	nRst,	$06,	nD5,	$02
	dc.b		nRst,	$04,	nD5,	$02,	nRst,	$04,	nD5,	nD5
	dc.b		$02,	$04,	$02,	nRst,	$04,	nD5,	$08,	nRst
	dc.b		$04,	nD5,	$02,	nRst,	$06,	nD5,	$02,	nRst
	dc.b		$04,	nD5,	$02,	nRst,	$04,	nD5,	nD5,	$02
	dc.b		$04,	$02,	nRst,	$04,	nD5,	$08,	nA4,	$02
	dc.b		nRst,	nA4,	nA3,	nRst,	$04,	nA3,	$02,	nRst
	dc.b		$04,	nA3,	$02,	nRst,	$04,	nA3,	$02,	nRst
	dc.b		$04,	nA3,	$02
	smpsReturn

Boss_S1_SMSGG_Call0F:
	dc.b		nRst,	$04,	nA3,	$02,	nRst,	$04,	nA3,	$02
	dc.b		nRst,	$04,	nA4,	$02,	nRst,	nA4,	nA3,	nRst
	dc.b		$04,	nA3,	$02,	nRst,	$04,	nA3,	$02,	nRst
	dc.b		$04,	nA3,	nBb3,	$02,	nRst,	$04,	nB3,	$02
	dc.b		nRst,	$04,	nC4,	$02,	nRst,	$04,	nCs4,	$02
	smpsReturn

Boss_S1_SMSGG_Call10:
	dc.b		nRst,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$0C,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	$04
	smpsReturn

Boss_S1_SMSGG_Call11:
	dc.b		smpsNoAttack,	$14
	smpsPSGvoice	$02
	dc.b		nCs0,	$0C,	nCs0,	nCs0,	$54
	smpsReturn

Boss_S1_SMSGG_Call12:
	dc.b		smpsNoAttack,	$24
	smpsPSGvoice	$02
	dc.b		nCs0,	$0C,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$08
	smpsReturn

Boss_S1_SMSGG_Call13:
	dc.b		smpsNoAttack,	$04
	smpsPSGvoice	$02
	dc.b		nCs0,	$0C,	nCs0,	nCs0,	$18,	$0C,	$40
	smpsReturn

Boss_S1_SMSGG_Call14:
	dc.b		smpsNoAttack,	$40
	smpsReturn

Boss_S1_SMSGG_Call15:
	dc.b		dKick,	$02,	nRst,	$04,	dSnare,	dKick,	$02,	dKick
	dc.b		nRst,	$04,	dSnare,	dKick,	$02,	dKick,	nRst,	$04
	dc.b		dSnare,	dKick,	$02,	dKick,	nRst,	$04,	dSnare,	dKick
	dc.b		$02,	dKick,	nRst,	$04,	dSnare,	dKick,	$02,	dKick
	dc.b		nRst,	$04,	dSnare,	dKick,	$02,	dKick,	nRst,	$04
	dc.b		dSnare,	dKick,	$02,	dKick,	nRst,	$04,	dSnare,	dKick
	dc.b		$02,	dKick,	nRst,	$04,	dSnare,	dKick,	$02,	dKick
	dc.b		nRst,	$04,	dSnare,	dKick,	$02,	dKick,	nRst,	$04
	dc.b		dSnare,	$02
	smpsReturn

Boss_S1_SMSGG_Call16:
	dc.b		nRst,	$02,	dKick,	dKick,	nRst,	dKick,	dSnare,	$04
	dc.b		dKick,	$02,	dKick,	nRst,	$04,	dSnare,	dKick,	$02
	dc.b		dKick,	nRst,	$04,	dSnare,	dKick,	$02,	dKick,	nRst
	dc.b		$04,	dSnare,	dKick,	$02,	dKick,	nRst,	dKick,	dSnare
	dc.b		$04,	dKick,	$02,	dSnare,	nRst,	dSnare,	dKick,	$06
	dc.b		dKick,	dKick,	dKick,	$02,	nRst,	dKick,	dSnare,	$04
	dc.b		dKick,	$02,	dKick,	nRst,	dKick,	dSnare,	$04,	dKick
	dc.b		$02,	dSnare,	nRst,	dSnare,	dKick,	$06,	$04
	smpsReturn

Boss_S1_SMSGG_Call17:
	dc.b		nRst,	$02,	dKick,	$06,	$02,	nRst,	dKick,	dSnare
	dc.b		$04,	dKick,	$02,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dKick,	nRst,	$04,	dSnare,	dKick,	$02,	dKick
	dc.b		nRst,	$04,	dSnare,	dKick,	$02,	dKick,	nRst,	$04
	dc.b		dSnare,	dKick,	$02,	dKick,	nRst,	$04,	dSnare,	dKick
	dc.b		$02,	dKick,	nRst,	$04,	dSnare,	dKick,	$02,	dKick
	dc.b		nRst,	$04,	dSnare,	dKick,	$02,	dKick,	nRst,	$04
	dc.b		dSnare,	dKick,	$02,	dKick,	nRst,	$04,	dSnare,	dKick
	dc.b		$02
	smpsReturn

Boss_S1_SMSGG_Call18:
	dc.b		dKick,	$02,	nRst,	$04,	dSnare,	dKick,	$02,	dKick
	dc.b		nRst,	$04,	dSnare,	dKick,	$02,	dKick,	nRst,	$04
	dc.b		dSnare,	dKick,	$02,	dKick,	nRst,	dKick,	dSnare,	$04
	dc.b		dKick,	$02,	dKick,	nRst,	$04,	dSnare,	dKick,	$02
	dc.b		dKick,	nRst,	$04,	dSnare,	dKick,	$02,	dKick,	nRst
	dc.b		dKick,	dSnare,	$04,	dKick,	$02,	dKick,	nRst,	dKick
	dc.b		dSnare,	$04,	dKick,	$02,	dSnare,	nRst,	dSnare,	dKick
	dc.b		$06,	dKick,	dKick,	dKick,	$02,	nRst,	dKick,	dSnare
	smpsReturn

Boss_S1_SMSGG_Call19:
	dc.b		nRst,	$02,	dKick,	dKick,	nRst,	dKick,	dSnare,	$04
	dc.b		dKick,	$02,	dSnare,	nRst,	dSnare,	dKick,	$06,	dKick
	dc.b		dKick,	dKick,	$02,	nRst,	dKick,	dSnare,	$04,	dKick
	dc.b		$02,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
	smpsReturn

Boss_S1_SMSGG_Voices:
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 00
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$80;			Voice 01
	dc.b		$3D,$12,$21,$51,$12,$12,$14,$14,$0F,$0A,$05,$05,$05,$00,$00,$00
	dc.b		$00,$2B,$2B,$2B,$1B,$19,$80,$80,$80;			Voice 02
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 03
	even
