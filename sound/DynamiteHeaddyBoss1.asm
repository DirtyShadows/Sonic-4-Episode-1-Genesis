; =============================================================================================
; Project Name:		BossHeaddy
; Created:		11st July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

BossHeaddy_Header:
	smpsHeaderVoice	BossHeaddy_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$04

	smpsHeaderDAC	BossHeaddy_DAC
	smpsHeaderFM	BossHeaddy_FM1,	smpsPitch00,	$10
	smpsHeaderFM	BossHeaddy_FM2,	smpsPitch00,	$10
	smpsHeaderFM	BossHeaddy_FM3,	smpsPitch00,	$10
	smpsHeaderFM	BossHeaddy_FM4,	smpsPitch00,	$10
	smpsHeaderFM	BossHeaddy_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	BossHeaddy_PSG1,	smpsPitch04lo,	$03,	$00
	smpsHeaderPSG	BossHeaddy_PSG2,	smpsPitch04lo,	$03,	$00
	smpsHeaderPSG	BossHeaddy_PSG3,	smpsPitch00,	$02,	$03

; FM1 Data
BossHeaddy_FM1:
	smpsFMvoice	$02
	smpsAlterVol	$FA
	smpsModSet	$0C,	$01,	$04,	$04
	dc.b		nRst,	$18,	nRst,	$16,	nC5,	$02,	nD5,	$04
	dc.b		nF5,	nD6,	nC6,	nA5,	nF5,	nE5,	$3C,	nRst
	dc.b		$06,	nA5,	$02,	nB5,	nC6,	nD6,	$18,	nAb5
	dc.b		$02,	nBb5,	nEb5,	nE5,	$2A,	nA4,	$02,	nG4
	dc.b		nE4,	$22,	nG4,	$02,	nA4,	$10,	nC5,	$02
	dc.b		nD5,	$0E,	nRst,	$10,	nG5,	$04,	nA5,	nC6
	dc.b		$02,	nE6,	nC6,	nA5,	nE5,	nD5,	nC5,	$1C
	dc.b		nE5,	$02,	nD5,	$16,	nE5,	$02,	nG5,	$04
	dc.b		nD5,	$02,	nC5,	nA4,	nG4,	$0A,	nE6,	$02
	dc.b		nE5,	nD5,	$04,	nC5,	$18,	nB4,	$02,	nA4
	dc.b		$1E,	nD5,	$04
	smpsAlterVol	$03
	dc.b		nG5,	$02
	smpsAlterVol	$01
	dc.b		nA5,	$04
	smpsAlterVol	$01
	dc.b		nD6,	$02
	smpsAlterVol	$01
	dc.b		nE6,	$06
	smpsFMvoice	$42
	dc.b		nG4,	$0C,	nG3,	$06,	nFs4,	$0C,	nG3,	$06
	dc.b		nE4,	$0C,	nG3,	$06,	nD4,	$0C,	nG3,	$06
	dc.b		nC4,	nG3,	nB3,	nG3,	nG4,	$0C,	nG3,	$06
	dc.b		nFs4,	$0C,	nG3,	$06,	nE4,	$0C,	nG3,	$06
	dc.b		nD4,	$0C,	nG3,	$06,	nC4,	nG3,	nG4,	$0C
	dc.b		nG3,	$06,	nFs4,	$0C,	nG3,	$06,	nE4,	$0C
	dc.b		nG3,	$06,	nD4,	$0C,	nG3,	$06,	nC4,	nG3
	dc.b		nB3,	nG3,	nG4,	$0C,	nB3,	$06,	nFs4,	$0C
	dc.b		nB3,	$06,	nE4,	nB3,	nD3,	nEb3,	nRst,	nE3
	dc.b		nRst,	nB3,	$12
	smpsAlterVol	$01
BossHeaddy_Jump01:
	smpsFMvoice	$40
	dc.b		nB5,	$06,	nFs5,	nRst,	nG5,	$0C,	nC5,	$06
	dc.b		nB5,	nFs5,	nRst,	nG5,	$0C,	nC5,	$06,	nD5
	dc.b		$04,	nC5,	nB4,	$02,	nA4,	nG4,	$04,	nFs4
	dc.b		$08,	nB5,	$06,	nFs5,	nRst,	nG5,	$0C,	nC5
	dc.b		$06,	nB5,	nFs5,	nRst,	nG5,	$0C,	nC5,	$06
	dc.b		nD5,	$04,	nC5,	nB4,	$02,	nA4,	nG4,	$04
	dc.b		nFs4,	$08,	nD4,	$03,	nFs4,	nAb4,	nC5,	nD5
	dc.b		nEb5,	nFs5,	nG5,	nA5,	$18,	nD4,	$03,	nFs4
	dc.b		nAb4,	nC5,	nD5,	nEb5,	nFs5,	nG5,	nA5,	$18
	dc.b		nRst,	$06,	nD6,	nEb6,	nE6,	nRst,	nA5,	nBb5
	dc.b		nB5,	nRst,	nD5,	nEb5,	nE5,	nA4,	$04,	nB4
	dc.b		nC5,	nD5,	nE5,	nFs5,	nB5,	$06,	nFs5,	nRst
	dc.b		nG5,	$0C,	nC5,	$06,	nB5,	nFs5,	nRst,	nG5
	dc.b		$0C,	nC5,	$06,	nD5,	$04,	nC5,	nB4,	$02
	dc.b		nA4,	nG4,	$04,	nFs4,	$08,	nB5,	$06,	nFs5
	dc.b		nRst,	nG5,	$0C,	nC5,	$06,	nB5,	nFs5,	nRst
	dc.b		nG5,	$0C,	nC5,	$06,	nD5,	$04,	nC5,	nB4
	dc.b		$02,	nA4,	nG4,	$04,	nFs4,	$08,	nD4,	$03
	dc.b		nFs4,	nAb4,	nC5,	nD5,	nEb5,	nFs5,	nG5,	nA5
	dc.b		$18,	nD4,	$03,	nFs4,	nAb4,	nC5,	nD5,	nEb5
	dc.b		nFs5,	nG5,	nA5,	$18,	nRst,	$06,	nD6,	nEb6
	dc.b		nE6,	nRst,	nA5,	nBb5,	nB5,	nRst,	nD5,	nEb5
	dc.b		nE5,	nA4,	$04,	nB4,	nC5,	nD5,	nE5,	nFs5
	smpsAlterVol	$03
	smpsFMvoice	$04
	dc.b		nG5,	$06,	nBb4,	nC5,	$12,	nBb4,	$06,	nBb4
	dc.b		nC5,	nG5,	nBb4,	nC5,	$12,	nBb4,	$06,	nBb4
	dc.b		nC5,	nG4,	nBb4,	nRst,	nC5,	nRst,	nBb4,	nRst
	dc.b		nG4,	nF4,	nG4,	nF4,	nG4,	nF4,	nEb4,	nC4
	dc.b		$0C,	nRst,	$06,	nG4,	nAb4,	nA4,	nRst,	nG4
	dc.b		nAb4,	nA4,	nRst,	nD5,	nEb5,	nE5,	nG5,	nAb5
	dc.b		nA5,	nC6,	nRst,	nD6,	nEb6,	nE6,	nRst,	nA5
	dc.b		nBb5,	nB5,	$0C
	smpsAlterVol	$FD
	smpsFMvoice	$0D
	smpsAlterVol	$03
	dc.b		nBb5,	$03,	nA5,	nAb5,	nG5,	nFs5,	nE5,	nEb5
	dc.b		nD5,	nCs5,	nC5,	nB4,	nBb4,	nA4,	nAb4
	smpsAlterVol	$FD
	smpsFMvoice	$40
	dc.b		nB5,	$06,	nFs5,	nRst,	nG5,	$0C,	nC5,	$06
	dc.b		nB5,	nFs5,	nRst,	nG5,	$0C,	nC5,	$06,	nD5
	dc.b		$04,	nC5,	nB4,	$02,	nA4,	nG4,	$04,	nFs4
	dc.b		$08,	nB5,	$06,	nFs5,	nRst,	nG5,	$0C,	nC5
	dc.b		$06,	nB5,	nFs5,	nRst,	nG5,	$0C,	nC5,	$06
	dc.b		nD5,	$04,	nC5,	nB4,	$02,	nA4,	nG4,	$04
	dc.b		nFs4,	$08,	nD4,	$03,	nFs4,	nAb4,	nC5,	nD5
	dc.b		nEb5,	nFs5,	nG5,	nA5,	$18,	nD4,	$03,	nFs4
	dc.b		nAb4,	nC5,	nD5,	nEb5,	nFs5,	nG5,	nA5,	$18
	dc.b		nRst,	$06,	nD6,	nEb6,	nE6,	nRst,	nA5,	nBb5
	dc.b		nB5,	nRst,	nD5,	nEb5,	nE5,	nA4,	$04,	nB4
	dc.b		nC5,	nD5,	nE5,	nFs5,	nB5,	$06,	nFs5,	nRst
	dc.b		nG5,	$0C,	nC5,	$06,	nB5,	nFs5,	nRst,	nG5
	dc.b		$0C,	nC5,	$06,	nD5,	$04,	nC5,	nB4,	$02
	dc.b		nA4,	nG4,	$04,	nFs4,	$08,	nB5,	$06,	nFs5
	dc.b		nRst,	nG5,	$0C,	nC5,	$06,	nB5,	nFs5,	nRst
	dc.b		nG5,	$0C,	nC5,	$06,	nD5,	$04,	nC5,	nB4
	dc.b		$02,	nA4,	nG4,	$04,	nFs4,	$08,	nD4,	$03
	dc.b		nFs4,	nAb4,	nC5,	nD5,	nEb5,	nFs5,	nG5,	nA5
	dc.b		$18,	nD4,	$03,	nFs4,	nAb4,	nC5,	nD5,	nEb5
	dc.b		nFs5,	nG5,	nA5,	$18,	nRst,	$06,	nD6,	nEb6
	dc.b		nE6,	nRst,	nA5,	nBb5,	nB5,	nRst,	nD5,	nEb5
	dc.b		nE5,	nA4,	$04,	nB4,	nC5,	nD5,	nE5,	nFs5
	smpsAlterVol	$03
	smpsFMvoice	$04
	dc.b		nG5,	$06,	nBb4,	nC5,	$12,	nBb4,	$06,	nBb4
	dc.b		nC5,	nG5,	nBb4,	nC5,	$12,	nBb4,	$06,	nBb4
	dc.b		nC5,	nG4,	nBb4,	nRst,	nC5,	nRst,	nBb4,	nRst
	dc.b		nG4,	nF4,	nG4,	nF4,	nG4,	nF4,	nEb4,	nC4
	dc.b		$0C,	nRst,	$06,	nG4,	nAb4,	nA4,	nRst,	nG4
	dc.b		nAb4,	nA4,	nRst,	nD5,	nEb5,	nE5,	nG5,	nAb5
	dc.b		nA5,	nC6,	nRst,	nD6,	nEb6,	nE6,	nRst,	nA5
	dc.b		nBb5,	nB5,	$0C
	smpsAlterVol	$FD
	smpsFMvoice	$0D
	smpsAlterVol	$03
	dc.b		nBb5,	$03,	nA5,	nAb5,	nG5,	nFs5,	nE5,	nEb5
	dc.b		nD5,	nCs5,	nC5,	nB4,	nBb4,	nA4,	nAb4
	smpsAlterVol	$FD
	smpsJump	BossHeaddy_Jump01

; FM2 Data
BossHeaddy_FM2:
	smpsPan		panRight,	$00
	smpsAlterVol	$F8
	smpsFMvoice	$05
	smpsNoteFill	$02
	dc.b		nA2,	$03,	nD3,	nE3,	nG3,	nA3,	nC4,	nD4
	dc.b		nE4,	nA4,	nC5,	nD5,	nG5,	nA5,	nD6,	nE6
	dc.b		nA6,	nG6,	nE6,	nD6,	nC6,	nD6,	nC6,	nA5
	dc.b		nG5,	nA5,	nD5,	nA4,	nG4,	nE4,	nD4,	nG3
	dc.b		nD3,	nA2,	nD3,	nE3,	nG3,	nA3,	nC4,	nD4
	dc.b		nE4,	nA4,	nC5,	nD5,	nG5,	nA5,	nD6,	nE6
	dc.b		nA6,	nG6,	nE6,	nD6,	nC6,	nD6,	nC6,	nA5
	dc.b		nG5,	nA5,	nD5,	nA4,	nG4,	nE4,	nD4,	nG3
	dc.b		nD3,	nA2,	nD3,	nE3,	nG3,	nA3,	nC4,	nD4
	dc.b		nE4,	nA4,	nC5,	nD5,	nG5,	nA5,	nD6,	nE6
	dc.b		nA6,	nG6,	nE6,	nD6,	nC6,	nD6,	nC6,	nA5
	dc.b		nG5,	nA5,	nD5,	nA4,	nG4,	nE4,	nD4,	nG3
	dc.b		nD3,	nA2,	nD3,	nE3,	nG3,	nA3,	nC4,	nD4
	dc.b		nE4,	nA4,	nC5,	nD5,	nG5,	nA5,	nD6,	nE6
	dc.b		nA6,	nG6,	nE6,	nD6,	nC6,	nD6,	nC6,	nA5
	dc.b		nG5,	nA5,	nD5,	nA4,	nG4,	nE4,	nD4,	nG3
	dc.b		nD3,	nA2,	nD3,	nE3,	nG3,	nA3,	nC4,	nD4
	dc.b		nE4,	nA4,	nC5,	nD5,	nG5,	nA5,	nD6,	nE6
	dc.b		nA6,	nG6,	nE6,	nD6,	nC6,	nD6,	nC6,	nA5
	dc.b		nG5,	nA5,	nD5,	nA4,	nG4,	nE4,	nD4,	nG3
	dc.b		nD3
	smpsNoteFill	$00
	smpsAlterVol	$08
	smpsAlterVol	$F6
	smpsPan		panCentre,	$00
	smpsAlterPitch	$E8
	smpsFMvoice	$26
	smpsNoteFill	$00
	dc.b		nRst,	$06,	nA4,	nB4,	nC5,	nD5,	$1E,	nA4
	dc.b		$06,	nC5,	nA4,	nEb5,	nE5,	nD5,	nC5,	nRst
	dc.b		$06,	nA4,	nB4,	nC5,	nD5,	$1E,	nA4,	$06
	dc.b		nC5,	nA4,	nEb5,	nE5,	nRst,	$06,	nA4,	nB4
	dc.b		nC5,	nD5,	$1E,	nA4,	$06,	nC5,	nA4,	nEb5
	dc.b		nE5,	nD5,	nC5,	nRst,	nD5,	nF5,	nFs5,	nG5
	dc.b		nAb5,	nA5,	nC6,	nD6,	nEb6,	nRst,	nE6,	nRst
	smpsAlterVol	$FE
	dc.b		nG6,	smpsNoAttack,	nFs6,	$03,	smpsNoAttack,	nF6
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nE6
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nEb6,	$01,	smpsNoAttack,	nD6,	smpsNoAttack,	nCs6
	smpsAlterVol	$0A
	smpsAlterPitch	$18
BossHeaddy_Jump02:
	smpsAlterPitch	$F4
	smpsAlterVol	$FA
BossHeaddy_Loop01:
	smpsFMvoice	$39
	dc.b		nA3,	$0C,	nA3,	$04,	nA3,	nA3,	nA3,	$0C
	dc.b		nA3,	$04,	nA3,	nA3,	nA3,	$0C,	nA3,	$04
	dc.b		nA3,	nA3,	nEb4,	$08,	nD4,	nC4
	smpsLoop	$00,	$08,	BossHeaddy_Loop01
BossHeaddy_Loop02:
	smpsFMvoice	$39
	dc.b		nC4,	$0C,	nC4,	$04,	nC4,	nC4,	nC4,	$0C
	dc.b		nC4,	$04,	nC4,	nC4,	nC4,	$0C,	nC4,	$04
	dc.b		nC4,	nC4,	nFs4,	$08,	nF4,	nEb4
	smpsLoop	$00,	$02,	BossHeaddy_Loop02
	dc.b		nD4,	$0C,	nD4,	$04,	nD4,	nD4,	nD4,	$0C
	dc.b		nD4,	$04,	nD4,	nD4,	nD4,	$0C,	nD4,	$04
	dc.b		nD4,	nD4,	nAb4,	$08,	nG4,	nF4,	nE3,	$0C
	dc.b		nE3,	$04,	nE3,	nE3,	nE3,	$0C,	nE3,	$04
	dc.b		nE3,	nE3
	smpsModSet	$03,	$01,	$15,	$04
	dc.b		nE3,	$24,	smpsModOn,	smpsNoAttack,	nEb3,	$02,	smpsNoAttack,	nD3
	dc.b		smpsNoAttack,	nCs3,	smpsNoAttack,	nC3,	smpsNoAttack,	nB2,	smpsNoAttack,	nBb2
BossHeaddy_Loop03:
	smpsFMvoice	$39
	dc.b		nA3,	$0C,	nA3,	$04,	nA3,	nA3,	nA3,	$0C
	dc.b		nA3,	$04,	nA3,	nA3,	nA3,	$0C,	nA3,	$04
	dc.b		nA3,	nA3,	nEb4,	$08,	nD4,	nC4
	smpsLoop	$00,	$08,	BossHeaddy_Loop03
BossHeaddy_Loop04:
	smpsFMvoice	$39
	dc.b		nC4,	$0C,	nC4,	$04,	nC4,	nC4,	nC4,	$0C
	dc.b		nC4,	$04,	nC4,	nC4,	nC4,	$0C,	nC4,	$04
	dc.b		nC4,	nC4,	nFs4,	$08,	nF4,	nEb4
	smpsLoop	$00,	$02,	BossHeaddy_Loop04
	dc.b		nD4,	$0C,	nD4,	$04,	nD4,	nD4,	nD4,	$0C
	dc.b		nD4,	$04,	nD4,	nD4,	nD4,	$0C,	nD4,	$04
	dc.b		nD4,	nD4,	nAb4,	$08,	nG4,	nF4,	nE3,	$0C
	dc.b		nE3,	$04,	nE3,	nE3,	nE3,	$0C,	nE3,	$04
	dc.b		nE3,	nE3
	smpsModSet	$03,	$01,	$15,	$04
	dc.b		nE3,	$24,	smpsModOn,	smpsNoAttack,	nEb3,	$02,	smpsNoAttack,	nD3
	dc.b		smpsNoAttack,	nCs3,	smpsNoAttack,	nC3,	smpsNoAttack,	nB2,	smpsNoAttack,	nBb2
	smpsAlterPitch	$0C
	smpsAlterVol	$06
	smpsJump	BossHeaddy_Jump02

; FM3 Data
BossHeaddy_FM3:
	smpsModSet	$07,	$01,	$BA,	$15
	smpsFMvoice	$50
	smpsAlterVol	$F9
	dc.b		nRst,	$0B,	nAb4,	$02,	nA4,	$05,	nA4,	$06
	dc.b		nA4,	nRst,	$04
	smpsAlterVol	$12
	dc.b		nA4,	$02
	smpsAlterVol	$EE
	dc.b		nA4,	$06,	nRst,	$04
	smpsAlterVol	$12
	dc.b		nA4,	$02
	smpsAlterVol	$EE
	dc.b		nA4,	$06,	nRst,	$04
	smpsAlterVol	$12
	dc.b		nA4,	$02
	smpsAlterVol	$EE
	dc.b		nFs4,	$01,	nG4,	$06,	nRst,	$03
	smpsAlterVol	$12
	dc.b		nG4,	$02
	smpsAlterVol	$EE
	dc.b		nA4,	$06,	nRst,	$04
	smpsAlterVol	$12
	dc.b		nA4,	$06,	nRst,	$02
	smpsAlterVol	$EE
	dc.b		nRst,	$06
	smpsAlterVol	$07
	smpsAlterVol	$07
	smpsNoteFill	$06
	smpsModSet	$08,	$01,	$04,	$05
BossHeaddy_Loop05:
	smpsFMvoice	$22
	dc.b		nE4,	$02,	nRst,	$10,	nB3,	$02,	nRst,	$10
	dc.b		nG3,	$02,	nRst,	$10,	nA3,	$02,	nRst,	$10
	dc.b		nC4,	$02,	nRst,	$0A,	nD4,	$02,	nRst,	$0A
	smpsLoop	$00,	$04,	BossHeaddy_Loop05
	smpsPan		panLeft,	$00
	smpsAlterVol	$F5
	dc.b		nE4,	$02,	nRst,	$10,	nB3,	$02,	nRst,	$10
	dc.b		nG3,	$02,	nRst,	$10,	nA3,	$02,	nRst,	$10
	dc.b		nC4,	$02,	nRst,	$0A,	nD4,	$02,	nRst,	$0A
	dc.b		nE4,	$02,	nRst,	$10,	nB3,	$02,	nRst,	$10
	dc.b		nG3,	$02,	nRst,	$10,	nA3,	$02,	nRst,	$10
	dc.b		nC4,	$02,	nRst,	$0A
BossHeaddy_Loop06:
	dc.b		nE4,	$02,	nRst,	$10,	nB3,	$02,	nRst,	$10
	dc.b		nG3,	$02,	nRst,	$10,	nA3,	$02,	nRst,	$10
	dc.b		nC4,	$02,	nRst,	$0A,	nD4,	$02,	nRst,	$0A
	smpsLoop	$00,	$02,	BossHeaddy_Loop06
	smpsAlterVol	$04
	smpsModSet	$06,	$01,	$04,	$05
BossHeaddy_Jump03:
	smpsPan		panRight,	$00
	smpsAlterVol	$FA
BossHeaddy_Loop07:
	smpsFMvoice	$42
	smpsNoteFill	$0F
	dc.b		nE3,	$0C
	smpsNoteFill	$08
	dc.b		nE3,	$04,	nE3,	nE3
	smpsNoteFill	$0F
	dc.b		nE3,	$0C
	smpsNoteFill	$08
	dc.b		nE3,	$04,	nE3,	nE3
	smpsNoteFill	$0F
	dc.b		nE3,	$0C
	smpsNoteFill	$08
	dc.b		nE3,	$04,	nE3,	nE3
	smpsNoteFill	$09
	dc.b		nA3,	$08,	nA3,	nG3
	smpsLoop	$00,	$08,	BossHeaddy_Loop07
BossHeaddy_Loop08:
	smpsFMvoice	$42
	smpsNoteFill	$0F
	dc.b		nG3,	$0C
	smpsNoteFill	$08
	dc.b		nG3,	$04,	nG3,	nG3
	smpsNoteFill	$0F
	dc.b		nG3,	$0C
	smpsNoteFill	$08
	dc.b		nG3,	$04,	nG3,	nG3
	smpsNoteFill	$0F
	dc.b		nG3,	$0C
	smpsNoteFill	$08
	dc.b		nG3,	$04,	nG3,	nG3
	smpsNoteFill	$09
	dc.b		nC4,	$08,	nC4,	nBb3
	smpsLoop	$00,	$02,	BossHeaddy_Loop08
	smpsNoteFill	$0F
	dc.b		nA3,	$0C
	smpsNoteFill	$08
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$0F
	dc.b		nA3,	$0C
	smpsNoteFill	$08
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$0F
	dc.b		nA3,	$0C
	smpsNoteFill	$08
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$09
	dc.b		nD4,	$08,	nD4,	nC4
	smpsNoteFill	$0F
	dc.b		nB3,	$0C
	smpsNoteFill	$08
	dc.b		nB3,	$04,	nB3,	nB3
	smpsNoteFill	$0F
	dc.b		nB3,	$0C
	smpsNoteFill	$08
	dc.b		nB3,	$06
	smpsNoteFill	$00
	smpsAlterVol	$F6
	smpsPan		panCentre,	$00
	smpsFMvoice	$4D
	dc.b		nAb1,	$36
	smpsAlterVol	$0A
	smpsPan		panRight,	$00
BossHeaddy_Loop09:
	smpsFMvoice	$42
	smpsNoteFill	$0F
	dc.b		nE3,	$0C
	smpsNoteFill	$08
	dc.b		nE3,	$04,	nE3,	nE3
	smpsNoteFill	$0F
	dc.b		nE3,	$0C
	smpsNoteFill	$08
	dc.b		nE3,	$04,	nE3,	nE3
	smpsNoteFill	$0F
	dc.b		nE3,	$0C
	smpsNoteFill	$08
	dc.b		nE3,	$04,	nE3,	nE3
	smpsNoteFill	$09
	dc.b		nA3,	$08,	nA3,	nG3
	smpsLoop	$00,	$08,	BossHeaddy_Loop09
BossHeaddy_Loop0A:
	smpsFMvoice	$42
	smpsNoteFill	$0F
	dc.b		nG3,	$0C
	smpsNoteFill	$08
	dc.b		nG3,	$04,	nG3,	nG3
	smpsNoteFill	$0F
	dc.b		nG3,	$0C
	smpsNoteFill	$08
	dc.b		nG3,	$04,	nG3,	nG3
	smpsNoteFill	$0F
	dc.b		nG3,	$0C
	smpsNoteFill	$08
	dc.b		nG3,	$04,	nG3,	nG3
	smpsNoteFill	$09
	dc.b		nC4,	$08,	nC4,	nBb3
	smpsLoop	$00,	$02,	BossHeaddy_Loop0A
	smpsNoteFill	$0F
	dc.b		nA3,	$0C
	smpsNoteFill	$08
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$0F
	dc.b		nA3,	$0C
	smpsNoteFill	$08
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$0F
	dc.b		nA3,	$0C
	smpsNoteFill	$08
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$09
	dc.b		nD4,	$08,	nD4,	nC4
	smpsNoteFill	$0F
	dc.b		nB3,	$0C
	smpsNoteFill	$08
	dc.b		nB3,	$04,	nB3,	nB3
	smpsNoteFill	$0F
	dc.b		nB3,	$0C
	smpsNoteFill	$08
	dc.b		nB3,	$06
	smpsNoteFill	$00
	smpsAlterVol	$F6
	smpsPan		panCentre,	$00
	smpsFMvoice	$4D
	dc.b		nAb1,	$36
	smpsAlterVol	$0A
	smpsPan		panCentre,	$00
	smpsAlterVol	$06
	smpsJump	BossHeaddy_Jump03

; FM4 Data
BossHeaddy_FM4:
	smpsPan		panCentre,	$00
	smpsAlterVol	$09
	dc.b		nRst,	$06
	smpsJump	BossHeaddy_FM1

; FM5 Data
BossHeaddy_FM5:
	smpsPan		panLeft,	$00
	dc.b		nRst,	$09
	smpsFMvoice	$05
	smpsNoteFill	$01
	smpsAlterVol	$FE
	dc.b		nA2,	$03,	nD3,	nE3,	nG3,	nA3,	nC4,	nD4
	dc.b		nE4,	nA4,	nC5,	nD5,	nG5,	nA5,	nD6,	nE6
	dc.b		nA6,	nG6,	nE6,	nD6,	nC6,	nD6,	nC6,	nA5
	dc.b		nG5,	nA5,	nD5,	nA4,	nG4,	nE4,	nD4,	nG3
	dc.b		nD3,	nA2,	nD3,	nE3,	nG3,	nA3,	nC4,	nD4
	dc.b		nE4,	nA4,	nC5,	nD5,	nG5,	nA5,	nD6,	nE6
	dc.b		nA6,	nG6,	nE6,	nD6,	nC6,	nD6,	nC6,	nA5
	dc.b		nG5,	nA5,	nD5,	nA4,	nG4,	nE4,	nD4,	nG3
	dc.b		nD3,	nA2,	nD3,	nE3,	nG3,	nA3,	nC4,	nD4
	dc.b		nE4,	nA4,	nC5,	nD5,	nG5,	nA5,	nD6,	nE6
	dc.b		nA6,	nG6,	nE6,	nD6,	nC6,	nD6,	nC6,	nA5
	dc.b		nG5,	nA5,	nD5,	nA4,	nG4,	nE4,	nD4,	nG3
	dc.b		nD3,	nA2,	nD3,	nE3,	nG3,	nA3,	nC4,	nD4
	dc.b		nE4,	nA4,	nC5,	nD5,	nG5,	nA5,	nD6,	nE6
	dc.b		nA6,	nG6,	nE6,	nD6,	nC6,	nD6,	nC6,	nA5
	dc.b		nG5,	nA5,	nD5,	nA4,	nG4,	nE4,	nD4,	nG3
	dc.b		nD3,	nA2,	nD3,	nE3,	nG3,	nA3,	nC4,	nD4
	dc.b		nE4,	nA4,	nC5,	nD5,	nG5,	nA5,	nD6,	nE6
	dc.b		nA6,	nG6,	nE6,	nD6,	nC6,	nD6,	nC6,	nA5
	dc.b		nG5,	nA5,	nD5,	nA4,	nG4,	nE4,	nD4,	nG3
	dc.b		nD3
	smpsNoteFill	$00
	smpsAlterVol	$02
	smpsAlterPitch	$E8
	smpsFMvoice	$26
	smpsNoteFill	$00
	dc.b		nRst,	$06,	nA4,	nB4,	nC5,	nD5,	$1E,	nA4
	dc.b		$06,	nC5,	nA4,	nEb5,	nE5,	nD5,	nC5,	nRst
	dc.b		$06,	nA4,	nB4,	nC5,	nD5,	$1E,	nA4,	$06
	dc.b		nC5,	nA4,	nEb5,	nE5,	nRst,	$06,	nA4,	nB4
	dc.b		nC5,	nD5,	$1E,	nA4,	$06,	nC5,	nA4,	nEb5
	dc.b		nE5,	nD5,	nC5,	nRst,	nD5,	nF5,	nFs5,	nG5
	dc.b		nAb5,	nA5,	nC6,	nD6,	nEb6,	nRst,	nE6,	nRst
	smpsAlterVol	$FE
	dc.b		nG6,	smpsNoAttack,	nFs6,	$03
	smpsAlterVol	$01
	smpsAlterVol	$01
	smpsAlterPitch	$18
	smpsModSet	$05,	$01,	$04,	$05
	smpsAlterVol	$FD
BossHeaddy_Loop0B:
	smpsFMvoice	$42
	smpsNoteFill	$0C
	dc.b		nA3,	$0C
	smpsNoteFill	$07
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$0C
	dc.b		nA3,	$0C
	smpsNoteFill	$07
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$0C
	dc.b		nA3,	$0C
	smpsNoteFill	$07
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$09
	dc.b		nEb4,	$08,	nD4,	nC4
	smpsLoop	$00,	$08,	BossHeaddy_Loop0B
BossHeaddy_Loop0C:
	smpsFMvoice	$42
	smpsNoteFill	$0C
	dc.b		nC4,	$0C
	smpsNoteFill	$07
	dc.b		nC4,	$04,	nC4,	nC4
	smpsNoteFill	$0C
	dc.b		nC4,	$0C
	smpsNoteFill	$07
	dc.b		nC4,	$04,	nC4,	nC4
	smpsNoteFill	$0C
	dc.b		nC4,	$0C
	smpsNoteFill	$07
	dc.b		nC4,	$04,	nC4,	nC4
	smpsNoteFill	$09
	dc.b		nFs4,	$08,	nF4,	nEb4
	smpsLoop	$00,	$02,	BossHeaddy_Loop0C
	smpsNoteFill	$0C
	dc.b		nD4,	$0C
	smpsNoteFill	$07
	dc.b		nD4,	$04,	nD4,	nD4
	smpsNoteFill	$0C
	dc.b		nD4,	$0C
	smpsNoteFill	$07
	dc.b		nD4,	$04,	nD4,	nD4
	smpsNoteFill	$0C
	dc.b		nD4,	$0C
	smpsNoteFill	$07
	dc.b		nD4,	$04,	nD4,	nD4
	smpsNoteFill	$09
	dc.b		nAb4,	$08,	nG4,	nF4
	smpsNoteFill	$0C
	dc.b		nE3,	$0C
	smpsNoteFill	$07
	dc.b		nE3,	$04,	nE3,	nE3
	smpsNoteFill	$0C
	dc.b		nE3,	$0C
	smpsNoteFill	$07
	dc.b		nE3,	$06
	smpsNoteFill	$00
	smpsFMvoice	$4D
	dc.b		nRst,	$36
BossHeaddy_Loop0D:
	smpsFMvoice	$42
	smpsNoteFill	$0C
	dc.b		nA3,	$0C
	smpsNoteFill	$07
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$0C
	dc.b		nA3,	$0C
	smpsNoteFill	$07
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$0C
	dc.b		nA3,	$0C
	smpsNoteFill	$07
	dc.b		nA3,	$04,	nA3,	nA3
	smpsNoteFill	$09
	dc.b		nEb4,	$08,	nD4,	nC4
	smpsLoop	$00,	$08,	BossHeaddy_Loop0D
BossHeaddy_Loop0E:
	smpsFMvoice	$42
	smpsNoteFill	$0C
	dc.b		nC4,	$0C
	smpsNoteFill	$07
	dc.b		nC4,	$04,	nC4,	nC4
	smpsNoteFill	$0C
	dc.b		nC4,	$0C
	smpsNoteFill	$07
	dc.b		nC4,	$04,	nC4,	nC4
	smpsNoteFill	$0C
	dc.b		nC4,	$0C
	smpsNoteFill	$07
	dc.b		nC4,	$04,	nC4,	nC4
	smpsNoteFill	$09
	dc.b		nFs4,	$08,	nF4,	nEb4
	smpsLoop	$00,	$02,	BossHeaddy_Loop0E
	smpsNoteFill	$0C
	dc.b		nD4,	$0C
	smpsNoteFill	$07
	dc.b		nD4,	$04,	nD4,	nD4
	smpsNoteFill	$0C
	dc.b		nD4,	$0C
	smpsNoteFill	$07
	dc.b		nD4,	$04,	nD4,	nD4
	smpsNoteFill	$0C
	dc.b		nD4,	$0C
	smpsNoteFill	$07
	dc.b		nD4,	$04,	nD4,	nD4
	smpsNoteFill	$09
	dc.b		nAb4,	$08,	nG4,	nF4
	smpsNoteFill	$0C
	dc.b		nE3,	$0C
	smpsNoteFill	$07
	dc.b		nE3,	$04,	nE3,	nE3
	smpsNoteFill	$0C
	dc.b		nE3,	$0C
	smpsNoteFill	$07
	dc.b		nE3,	$06
	smpsNoteFill	$00
	smpsFMvoice	$4D
	dc.b		nRst,	$36
	smpsJump	BossHeaddy_Loop0B

; PSG1 Data
BossHeaddy_PSG1:
	dc.b		nRst,	$09
	smpsSetVol	$01
	smpsJump	BossHeaddy_PSG2

; PSG2 Data
BossHeaddy_PSG2:
	smpsSetVol	$FE
	smpsPSGvoice	$0B
	dc.b		nRst,	$30,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	$24
BossHeaddy_Jump04:
	dc.b		nRst,	$30,	nRst,	nRst,	nRst,	nRst,	$18,	nD5
	dc.b		$03,	nFs5,	nAb5,	nC6,	nD6,	nEb6,	nFs6,	nG6
	dc.b		nA6,	$18,	nD5,	$03,	nFs5,	nAb5,	nC6,	nD6
	dc.b		nEb6,	nFs6,	nG6,	nA6,	$06
	smpsNoteFill	$08
	dc.b		nA5,	nBb5,	nB5,	nRst,	nE5,	nF5,	nFs5,	nRst
	dc.b		nA4,	nBb4,	nB4,	nA4,	$04,	nB4,	nC5,	nD5
	dc.b		nE5,	nFs5,	nRst,	$30,	nRst,	nRst,	nRst
	smpsNoteFill	$00
	dc.b		nRst,	$18,	nD5,	$03,	nFs5,	nAb5,	nC6,	nD6
	dc.b		nEb6,	nFs6,	nG6,	nA6,	$18,	nD5,	$03,	nFs5
	dc.b		nAb5,	nC6,	nD6,	nEb6,	nFs6,	nG6,	nA6,	$06
	smpsNoteFill	$08
	dc.b		nA5,	nBb5,	nB5,	nRst,	nE5,	nF5,	nFs5,	nRst
	dc.b		nA4,	nBb4,	nB4,	nA4,	$04,	nB4,	nC5,	nD5
	dc.b		nE5,	nFs5
	smpsNoteFill	$00
	dc.b		nBb5,	nC6,	nD6,	nEb6,	nE6,	nG6,	nBb6,	$06
	dc.b		nF5,	nF5,	nG5,	nBb5,	$04,	nC6,	nD6,	nEb6
	dc.b		nE6,	nG6,	nBb6,	$06,	nF5,	nF5,	nG5,	nD5
	dc.b		nF5,	nRst,	nG5,	nRst,	nF5,	nRst,	nD5,	nC5
	dc.b		nD5,	nC5,	nD5,	nC5,	nBb4,	nG4,	$0C,	nRst
	dc.b		$06,	nC5,	nCs5,	nD5,	nRst,	nC5,	nCs5,	nD5
	dc.b		nRst,	nG5,	nAb5,	nA5,	nC6,	nC6,	nCs6,	nD6
	dc.b		nRst,	nG6,	nAb6,	nA6,	nRst,	nD6,	nEb6,	nE6
	dc.b		$0C,	nEb6,	$03,	nD6,	nCs6,	nC6,	nB5,	nA5
	dc.b		nAb5,	nG5,	nFs5,	nF5,	nE5,	nEb5,	nD5,	nCs5
	dc.b		nRst,	$30,	nRst,	nRst,	nRst,	nRst,	$18,	nD5
	dc.b		$03,	nFs5,	nAb5,	nC6,	nD6,	nEb6,	nFs6,	nG6
	dc.b		nA6,	$18,	nD5,	$03,	nFs5,	nAb5,	nC6,	nD6
	dc.b		nEb6,	nFs6,	nG6,	nA6,	$06
	smpsNoteFill	$08
	dc.b		nA5,	nBb5,	nB5,	nRst,	nE5,	nF5,	nFs5,	nRst
	dc.b		nA4,	nBb4,	nB4,	nA4,	$04,	nB4,	nC5,	nD5
	dc.b		nE5,	nFs5
	smpsNoteFill	$00
	dc.b		nRst,	$30,	nRst,	nRst,	nRst,	nRst,	$18,	nD5
	dc.b		$03,	nFs5,	nAb5,	nC6,	nD6,	nEb6,	nFs6,	nG6
	dc.b		nA6,	$18,	nD5,	$03,	nFs5,	nAb5,	nC6,	nD6
	dc.b		nEb6,	nFs6,	nG6,	nA6,	$06
	smpsNoteFill	$08
	dc.b		nA5,	nBb5,	nB5,	nRst,	nE5,	nF5,	nFs5,	nRst
	dc.b		nA4,	nBb4,	nB4,	nA4,	$04,	nB4,	nC5,	nD5
	dc.b		nE5,	nFs5
	smpsNoteFill	$00
	dc.b		nBb5,	nC6,	nD6,	nEb6,	nE6,	nG6,	nBb6,	$06
	dc.b		nF5,	nF5,	nG5,	nBb5,	$04,	nC6,	nD6,	nEb6
	dc.b		nE6,	nG6,	nBb6,	$06,	nF5,	nF5,	nG5,	nD5
	dc.b		nF5,	nRst,	nG5,	nRst,	nF5,	nRst,	nD5,	nC5
	dc.b		nD5,	nC5,	nD5,	nC5,	nBb4,	nG4,	$0C,	nRst
	dc.b		$06,	nC5,	nCs5,	nD5,	nRst,	nC5,	nCs5,	nD5
	dc.b		nRst,	nG5,	nAb5,	nA5,	nC6,	nC6,	nCs6,	nD6
	dc.b		nRst,	nG6,	nAb6,	nA6,	nRst,	nD6,	nEb6,	nE6
	dc.b		$0C,	nEb6,	$03,	nD6,	nCs6,	nC6,	nB5,	nA5
	dc.b		nAb5,	nG5,	nFs5,	nF5,	nE5,	nEb5,	nD5,	nCs5
	smpsJump	BossHeaddy_Jump04

; PSG3 Data
BossHeaddy_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$60,	nRst,	nRst,	nRst
	smpsPSGvoice	$04
	smpsNoteFill	$01
	dc.b		nA5,	$0C,	$12,	$0C
	smpsNoteFill	$08
	dc.b		nA5,	$06
	smpsNoteFill	$01
	dc.b		nRst,	$24,	nA5,	$0C
	smpsNoteFill	$01
	dc.b		nRst,	$24,	nA5,	$06,	nA5,	nRst,	$24,	nA5
	dc.b		$06,	nA5,	nRst,	$24,	nA5,	$06,	nA5,	nRst
	dc.b		$1E,	nA5,	$06,	nRst,	$0C,	nRst,	$18,	nA5
	dc.b		$06,	nA5,	nRst,	$24,	nA5,	$06,	nA5,	nRst
	dc.b		$0C,	nRst,	$18,	nA5,	$06,	$0C,	nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5,	nA5,	$06
BossHeaddy_Jump05:
	dc.b		nRst,	$0C,	nA5,	$06,	nRst,	$12
	smpsNoteFill	$08
	dc.b		nA5,	$0C
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5,	nRst
	smpsNoteFill	$01
	dc.b		nRst,	$06,	nA5,	nRst,	$0C
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5,	nA5,	nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5,	nA5,	nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsCall	BossHeaddy_Call01
	smpsCall	BossHeaddy_Call02
	smpsCall	BossHeaddy_Call01
	smpsCall	BossHeaddy_Call01
	smpsCall	BossHeaddy_Call02
	dc.b		nA5,	$18,	$0C,	nA5,	nA5,	nA5,	$08,	nA5
	dc.b		nA5
	smpsJump	BossHeaddy_Jump05

BossHeaddy_Call01:
	smpsPSGvoice	$04
	smpsNoteFill	$01
	dc.b		nA5,	$18,	$0C
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5,	nA5,	$08,	nA5,	nA5,	nRst,	$0C,	nA5
	dc.b		$06,	nRst,	$12
	smpsNoteFill	$08
	dc.b		nA5,	$0C
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5,	nRst
	smpsNoteFill	$01
	dc.b		nRst,	$06,	nA5,	nRst,	$0C
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5,	nA5,	nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5,	nA5,	nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsReturn

BossHeaddy_Call02:
	smpsPSGvoice	$04
	smpsNoteFill	$01
	dc.b		nA5,	$18,	$0C
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5,	nA5,	$08,	nA5,	nA5,	nRst,	$0C,	nA5
	dc.b		$06,	nRst,	$12
	smpsNoteFill	$08
	dc.b		nA5,	$0C
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5,	nRst
	smpsNoteFill	$01
	dc.b		nRst,	$06,	nA5,	nRst,	$0C
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5,	nRst
	smpsNoteFill	$01
	dc.b		nRst,	$06,	nA5,	nRst,	$0C
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsNoteFill	$08
	dc.b		nA5
	smpsNoteFill	$01
	dc.b		nA5
	smpsReturn

; DAC Data
BossHeaddy_DAC:
	dc.b		$8F,	$30
	smpsPan		panLeft,	$00
	dc.b		$8F,	$18
	smpsPan		panRight,	$00
	dc.b		$8F,	$48
	smpsPan		panCentre,	$00
	dc.b		nRst,	$30,	nRst,	nRst,	nRst,	nRst,	dSnare,	$06
	dc.b		dSnare,	dLowTimpani,	$0C,	dSnare,	$06,	nRst,	$12,	dSnare
	dc.b		$06,	dHiTimpani,	$0C,	dLowTimpani,	$06,	dHiTimpani,	$04,	dHiTimpani
	dc.b		dHiTimpani,	dSnare,	dHiTimpani,	dHiTimpani,	dSnare,	$06,	dSnare,	dSnare
	dc.b		dSnare,	dHiTimpani,	nRst,	$12,	dSnare,	$06,	dSnare,	dSnare
	dc.b		dSnare,	dHiTimpani,	nRst,	$12,	dSnare,	$06,	dSnare,	dSnare
	dc.b		dSnare,	dHiTimpani,	nRst,	$12,	dSnare,	$06,	dSnare,	dSnare
	dc.b		dSnare,	dHiTimpani,	dHiTimpani,	dSnare,	dSnare,	dSnare,	dSnare,	dHiTimpani
	dc.b		nRst,	$12,	dSnare,	$06,	dSnare,	dSnare,	dSnare,	dHiTimpani
	dc.b		nRst,	$12,	dSnare,	$06,	dSnare,	dSnare,	nRst,	dHiTimpani
	dc.b		dHiTimpani,	dSnare,	dSnare,	dSnare,	dHiTimpani,	dMidTimpani,	dSnare,	dHiTimpani
	dc.b		dSnare,	dHiTimpani,	$04,	dLowTimpani,	dHiTimpani
BossHeaddy_Loop0F:
	dc.b		dSnare,	$06,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dLowTimpani,	$04,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	dKick,	$06,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dSnare,	$04,	dSnare,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	$06,	dSnare,	dSnare,	dSnare,	dMidTimpani,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dLowTimpani,	$0C
	smpsPan		panCentre,	$00
	smpsLoop	$00,	$03,	BossHeaddy_Loop0F
	dc.b		dSnare,	$06,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dLowTimpani,	$04,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	dKick,	$0C
	smpsPan		panLeft,	$00
	dc.b		dSnare,	$04,	dSnare,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	$06,	dSnare,	dSnare,	dSnare,	dKick,	dHiTimpani,	dHiTimpani
	dc.b		$04,	dMidTimpani,	dLowTimpani
BossHeaddy_Loop10:
	dc.b		dSnare,	$06,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dLowTimpani,	$04,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	dKick,	$06,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dSnare,	$04,	dSnare,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	$06,	dSnare,	dSnare,	dSnare,	dMidTimpani,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dLowTimpani,	$0C
	smpsPan		panCentre,	$00
	smpsLoop	$00,	$03,	BossHeaddy_Loop10
	dc.b		dSnare,	$06,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dLowTimpani,	$04,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	dKick,	$0C
	smpsPan		panLeft,	$00
	dc.b		dSnare,	$04,	dSnare,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	$06,	dSnare,	dSnare,	dSnare,	dKick,	dHiTimpani,	dHiTimpani
	dc.b		$04,	dMidTimpani,	dLowTimpani
BossHeaddy_Loop11:
	dc.b		dSnare,	$06,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dLowTimpani,	$04,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	dKick,	$06,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dSnare,	$04,	dSnare,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	$06,	dSnare,	dSnare,	dSnare,	dMidTimpani,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dLowTimpani,	$0C
	smpsPan		panCentre,	$00
	smpsLoop	$00,	$03,	BossHeaddy_Loop11
	dc.b		dSnare,	$06,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dLowTimpani,	$04,	dLowTimpani
	smpsPan		panCentre,	$00
	dc.b		dSnare,	dKick,	$06,	dSnare,	dSnare,	$06,	$9E,	$04
	dc.b		nRst,	$02,	nRst,	$06,	nRst,	nRst,	nRst,	$06
	dc.b		dSnare,	$04,	dHiTimpani,	dHiTimpani,	dHiTimpani,	$04,	dMidTimpani,	dLowTimpani
	smpsJump	BossHeaddy_Loop0F

BossHeaddy_Voices:
	dc.b		$06,$01,$33,$72,$31,$0A,$8C,$4C,$52,$00,$00,$00,$00,$01,$00,$01
	dc.b		$00,$03,$05,$26,$06,$4D,$87,$80,$91;			Voice 00
	dc.b		$3D,$01,$21,$51,$01,$12,$14,$14,$0F,$0A,$05,$05,$05,$00,$00,$00
	dc.b		$00,$26,$28,$28,$18,$19,$80,$80,$80;			Voice 01
	dc.b		$15,$71,$72,$31,$31,$0F,$12,$0F,$0F,$00,$0F,$09,$0A,$01,$02,$01
	dc.b		$01,$06,$A7,$06,$07,$32,$80,$A8,$80;			Voice 02
	dc.b		$16,$7A,$74,$3C,$31,$1F,$1F,$1F,$1F,$0A,$08,$0C,$0A,$07,$0A,$07
	dc.b		$05,$25,$A7,$A7,$55,$14,$85,$8A,$80;			Voice 03
	dc.b		$2D,$62,$33,$92,$31,$53,$14,$1F,$54,$0F,$05,$05,$07,$00,$02,$02
	dc.b		$02,$17,$67,$16,$3F,$14,$80,$0E,$80;			Voice 04
	dc.b		$38,$72,$14,$71,$31,$D6,$DC,$DB,$D9,$08,$04,$04,$09,$05,$05,$02
	dc.b		$03,$24,$13,$24,$13,$1C,$2F,$20,$80;			Voice 05
	dc.b		$3A,$32,$02,$02,$72,$8F,$8F,$4F,$4D,$09,$09,$00,$03,$00,$00,$00
	dc.b		$00,$15,$F5,$05,$08,$19,$1F,$19,$80;			Voice 06
	dc.b		$30,$30,$3A,$30,$30,$9E,$D8,$DC,$DC,$0E,$0A,$04,$05,$08,$08,$08
	dc.b		$08,$B6,$B6,$B6,$B6,$14,$2F,$14,$80;			Voice 07
	dc.b		$3A,$60,$66,$60,$61,$1F,$94,$1F,$1F,$0F,$10,$05,$0D,$07,$06,$06
	dc.b		$07,$2F,$4F,$1F,$5F,$21,$14,$22,$80;			Voice 08
	dc.b		$3C,$52,$36,$63,$52,$DF,$59,$CF,$8A,$0A,$0A,$01,$05,$14,$14,$0A
	dc.b		$14,$AF,$5F,$AF,$5F,$1E,$85,$28,$82;			Voice 09
	dc.b		$0C,$00,$00,$06,$01,$1B,$59,$DA,$59,$02,$06,$02,$0C,$0A,$0A,$09
	dc.b		$0F,$14,$15,$02,$A5,$14,$80,$1A,$80;			Voice 0A
	dc.b		$3B,$61,$02,$24,$05,$5F,$5F,$5F,$4F,$03,$03,$03,$07,$00,$00,$00
	dc.b		$04,$23,$22,$22,$27,$1F,$20,$25,$80;			Voice 0B
	dc.b		$3D,$01,$02,$02,$02,$10,$50,$50,$50,$07,$08,$08,$08,$01,$00,$00
	dc.b		$00,$24,$18,$18,$18,$1C,$89,$89,$89;			Voice 0C
	dc.b		$3C,$21,$02,$01,$62,$CF,$0D,$CF,$0C,$00,$04,$00,$04,$00,$00,$00
	dc.b		$00,$02,$37,$02,$38,$1E,$80,$1F,$80;			Voice 0D
	dc.b		$34,$33,$41,$7E,$74,$5B,$9F,$5F,$1F,$04,$07,$07,$08,$00,$00,$00
	dc.b		$00,$FF,$FF,$EF,$FF,$23,$90,$29,$97;			Voice 0E
	dc.b		$3E,$34,$00,$75,$02,$5E,$DF,$5F,$9C,$0F,$04,$0F,$0A,$02,$02,$05
	dc.b		$05,$A7,$A2,$FA,$F6,$28,$80,$A3,$80;			Voice 0F
	dc.b		$3A,$01,$02,$01,$01,$14,$14,$17,$14,$0A,$0C,$03,$07,$02,$08,$08
	dc.b		$03,$07,$F9,$A8,$18,$1C,$2B,$28,$80;			Voice 10
	dc.b		$3A,$01,$07,$01,$01,$0F,$0F,$0F,$14,$0A,$0A,$0A,$05,$02,$02,$02
	dc.b		$02,$56,$A6,$56,$18,$19,$28,$28,$80;			Voice 11
	dc.b		$38,$0F,$0F,$0F,$0F,$1F,$1F,$1F,$11,$00,$00,$00,$0E,$00,$00,$00
	dc.b		$19,$03,$03,$03,$1A,$07,$07,$07,$80;			Voice 12
	dc.b		$3D,$01,$02,$02,$02,$10,$50,$50,$50,$07,$08,$08,$08,$01,$00,$00
	dc.b		$00,$24,$18,$18,$18,$1C,$82,$82,$82;			Voice 13
	dc.b		$20,$02,$11,$32,$31,$1F,$1F,$14,$12,$02,$03,$04,$04,$01,$02,$03
	dc.b		$03,$20,$20,$20,$27,$21,$14,$1F,$80;			Voice 14
	dc.b		$3B,$08,$04,$0F,$0C,$1F,$1F,$1F,$1F,$1F,$1F,$1C,$1F,$00,$04,$00
	dc.b		$06,$10,$10,$00,$07,$0D,$21,$4D,$80;			Voice 15
	dc.b		$3B,$61,$02,$23,$02,$59,$59,$59,$4A,$03,$03,$03,$05,$00,$00,$00
	dc.b		$00,$22,$22,$22,$27,$1E,$20,$25,$80;			Voice 16
	dc.b		$38,$6A,$0A,$11,$02,$19,$18,$0F,$0F,$05,$08,$02,$08,$00,$00,$00
	dc.b		$00,$A6,$16,$16,$17,$1C,$2D,$28,$80;			Voice 17
	dc.b		$32,$71,$0D,$33,$01,$5F,$99,$5F,$94,$05,$05,$05,$07,$02,$02,$02
	dc.b		$02,$11,$11,$11,$72,$23,$2D,$26,$80;			Voice 18
	dc.b		$2C,$71,$71,$31,$31,$5F,$54,$5F,$5F,$05,$0A,$03,$0C,$00,$03,$00
	dc.b		$03,$00,$87,$00,$A7,$17,$80,$19,$82;			Voice 19
	dc.b		$3A,$01,$03,$02,$03,$D6,$D6,$16,$11,$08,$08,$0A,$09,$00,$0C,$01
	dc.b		$01,$33,$33,$13,$07,$18,$18,$2F,$80;			Voice 1A
	dc.b		$3A,$32,$56,$32,$42,$8D,$4F,$15,$52,$06,$08,$07,$04,$02,$00,$00
	dc.b		$00,$1F,$1F,$2F,$2F,$19,$20,$2A,$80;			Voice 1B
	dc.b		$3A,$31,$37,$31,$31,$8D,$8D,$8E,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$17,$25,$23,$80;			Voice 1C
	dc.b		$3A,$41,$45,$32,$41,$59,$59,$5C,$4E,$0A,$0B,$0D,$04,$00,$00,$00
	dc.b		$00,$1F,$5F,$2F,$0F,$1D,$0F,$20,$80;			Voice 1D
	dc.b		$2A,$21,$39,$31,$74,$1E,$1F,$1F,$1F,$17,$1B,$02,$03,$00,$08,$03
	dc.b		$0B,$3F,$3F,$0F,$6F,$11,$0C,$1C,$8A;			Voice 1E
	dc.b		$3D,$0A,$65,$14,$31,$8E,$52,$14,$4C,$08,$08,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$1B,$1F,$16,$10,$80,$80,$80;			Voice 1F
	dc.b		$02,$00,$00,$00,$00,$5C,$54,$1C,$D0,$0C,$08,$0A,$05,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$24,$1B,$22,$80;			Voice 20
	dc.b		$39,$01,$51,$00,$00,$1F,$5F,$5F,$5F,$10,$11,$09,$09,$07,$00,$00
	dc.b		$00,$CF,$FF,$FF,$FF,$1C,$1D,$1F,$80;			Voice 21
	dc.b		$2D,$62,$33,$93,$31,$53,$14,$1F,$54,$0F,$05,$05,$07,$00,$02,$02
	dc.b		$02,$17,$65,$12,$3F,$14,$80,$0E,$80;			Voice 22
	dc.b		$3D,$01,$02,$02,$02,$1F,$08,$8A,$0A,$08,$08,$08,$08,$00,$01,$00
	dc.b		$00,$0F,$1F,$1F,$1F,$1F,$88,$88,$87;			Voice 23
	dc.b		$3B,$03,$01,$30,$01,$1C,$DC,$DC,$5E,$14,$13,$0F,$0C,$0C,$05,$0A
	dc.b		$07,$AF,$AF,$5F,$6F,$16,$11,$11,$80;			Voice 24
	dc.b		$3D,$08,$01,$01,$01,$1F,$1F,$1F,$1F,$19,$19,$19,$11,$05,$11,$00
	dc.b		$0F,$0F,$7F,$FF,$FF,$00,$80,$80,$80;			Voice 25
	dc.b		$3A,$60,$66,$60,$61,$1F,$94,$1F,$1F,$0F,$10,$05,$0D,$07,$06,$06
	dc.b		$07,$2F,$4F,$1F,$5F,$21,$14,$28,$80;			Voice 26
	dc.b		$00,$60,$32,$32,$30,$06,$06,$08,$0E,$06,$00,$00,$04,$02,$00,$00
	dc.b		$04,$3F,$2F,$2F,$4F,$10,$19,$1A,$80;			Voice 27
	dc.b		$3C,$78,$78,$34,$34,$1F,$12,$1F,$1F,$00,$0F,$00,$0F,$00,$01,$00
	dc.b		$01,$0F,$3F,$0F,$3F,$21,$90,$18,$87;			Voice 28
	dc.b		$3C,$78,$78,$34,$34,$1F,$12,$1F,$1F,$00,$0F,$00,$0F,$00,$09,$00
	dc.b		$09,$0F,$3F,$0F,$3F,$21,$90,$18,$87;			Voice 29
	dc.b		$2C,$72,$72,$32,$32,$1F,$12,$1F,$1F,$00,$0F,$00,$0F,$00,$09,$00
	dc.b		$09,$0F,$3F,$0F,$3F,$0E,$88,$0E,$88;			Voice 2A
	dc.b		$3C,$52,$36,$63,$52,$DF,$59,$CF,$8A,$0A,$0A,$01,$05,$14,$14,$0A
	dc.b		$14,$AF,$5F,$AF,$5F,$1E,$85,$28,$82;			Voice 2B
	dc.b		$38,$20,$62,$70,$30,$14,$12,$0A,$0A,$0E,$0E,$09,$1F,$00,$00,$00
	dc.b		$00,$5F,$5F,$AF,$0F,$1C,$28,$14,$85;			Voice 2C
	dc.b		$3A,$3C,$4F,$31,$23,$1F,$DF,$1F,$9F,$0C,$02,$0C,$05,$04,$04,$04
	dc.b		$07,$1F,$FF,$0F,$2F,$20,$39,$1E,$80;			Voice 2D
	dc.b		$1C,$6B,$33,$37,$92,$DF,$DF,$5F,$DF,$0E,$07,$10,$0F,$00,$0B,$05
	dc.b		$04,$FF,$17,$AF,$1F,$14,$80,$27,$85;			Voice 2E
	dc.b		$2A,$21,$39,$31,$74,$1E,$1F,$1F,$1F,$17,$1B,$02,$03,$00,$08,$03
	dc.b		$0B,$3F,$3F,$0F,$6F,$1A,$0D,$27,$87;			Voice 2F
	dc.b		$38,$63,$31,$31,$31,$10,$13,$1A,$1B,$0E,$00,$00,$00,$00,$00,$00
	dc.b		$00,$3F,$0F,$0F,$0F,$1A,$19,$1A,$80;			Voice 30
	dc.b		$3D,$65,$28,$02,$61,$DF,$1F,$1F,$1F,$12,$04,$0F,$0F,$00,$00,$00
	dc.b		$00,$2F,$0F,$0F,$0F,$27,$91,$9B,$80;			Voice 31
	dc.b		$1F,$16,$61,$03,$52,$1C,$9F,$1F,$1F,$12,$0F,$0F,$0F,$00,$00,$00
	dc.b		$00,$FF,$0F,$0F,$0F,$91,$8A,$8A,$80;			Voice 32
	dc.b		$30,$75,$75,$71,$31,$D8,$58,$96,$94,$01,$0B,$03,$08,$01,$04,$01
	dc.b		$01,$F3,$23,$34,$35,$34,$29,$10,$80;			Voice 33
	dc.b		$1C,$76,$74,$36,$34,$94,$99,$94,$99,$08,$0A,$08,$0A,$00,$05,$00
	dc.b		$05,$35,$47,$35,$47,$1E,$80,$19,$80;			Voice 34
	dc.b		$3A,$42,$4A,$32,$42,$5C,$53,$5C,$4D,$07,$09,$07,$04,$00,$00,$00
	dc.b		$00,$1F,$3F,$1F,$0F,$1B,$18,$33,$80;			Voice 35
	dc.b		$16,$7A,$74,$3C,$31,$1F,$1F,$1F,$1F,$0A,$07,$0C,$06,$07,$0A,$07
	dc.b		$05,$25,$A7,$A7,$55,$14,$85,$8A,$80;			Voice 36
	dc.b		$30,$31,$3A,$30,$31,$9E,$D8,$DC,$DC,$0E,$0A,$01,$05,$08,$08,$08
	dc.b		$08,$BF,$B6,$B6,$BA,$14,$2F,$14,$80;			Voice 37
	dc.b		$3A,$41,$45,$32,$41,$59,$4F,$5C,$4E,$0A,$0B,$0D,$04,$00,$01,$00
	dc.b		$00,$1F,$5F,$2F,$08,$1D,$0F,$20,$80;			Voice 38
	dc.b		$30,$30,$3A,$30,$31,$9E,$D8,$DC,$DC,$0E,$0A,$01,$05,$08,$08,$08
	dc.b		$08,$B6,$B6,$B6,$B6,$14,$34,$12,$80;			Voice 39
	dc.b		$3A,$32,$02,$02,$72,$8F,$8F,$4F,$4D,$09,$09,$00,$03,$00,$00,$00
	dc.b		$00,$15,$F5,$05,$08,$19,$1F,$19,$80;			Voice 3A
	dc.b		$3A,$20,$29,$20,$01,$1E,$1F,$1F,$1F,$0A,$0A,$0B,$0A,$05,$07,$0A
	dc.b		$08,$A4,$85,$96,$77,$21,$25,$28,$80;			Voice 3B
	dc.b		$3F,$14,$04,$12,$01,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$AA,$AA,$AA,$9A,$AF,$88,$80,$80;			Voice 3C
	dc.b		$3D,$01,$22,$42,$02,$19,$52,$52,$53,$07,$08,$08,$0A,$01,$00,$00
	dc.b		$04,$24,$1A,$1A,$16,$1C,$87,$87,$87;			Voice 3D
	dc.b		$08,$0A,$30,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$26,$26,$26,$26,$24,$2D,$13,$80;			Voice 3E
	dc.b		$14,$70,$70,$30,$30,$5F,$5F,$5F,$5F,$17,$0A,$19,$0A,$00,$00,$00
	dc.b		$00,$FF,$F7,$FF,$F7,$00,$80,$00,$80;			Voice 3F
	dc.b		$3C,$0B,$02,$0A,$02,$1F,$1E,$1F,$1F,$0F,$0E,$11,$10,$13,$0F,$11
	dc.b		$0E,$24,$07,$17,$08,$20,$80,$1B,$80;			Voice 40
	dc.b		$28,$03,$0F,$17,$71,$1F,$12,$1F,$1F,$04,$01,$04,$0C,$01,$01,$01
	dc.b		$00,$10,$19,$10,$17,$17,$26,$1B,$80;			Voice 41
	dc.b		$3A,$01,$40,$02,$31,$1F,$1F,$1F,$1F,$0B,$04,$04,$04,$02,$04,$03
	dc.b		$02,$53,$1C,$53,$29,$18,$0F,$11,$80;			Voice 42
	dc.b		$20,$66,$65,$60,$61,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$2F,$1F,$1F,$FF,$1C,$2E,$16,$81;			Voice 43
	dc.b		$29,$02,$01,$02,$01,$1F,$1F,$1F,$1F,$01,$03,$03,$0D,$02,$05,$05
	dc.b		$09,$30,$30,$36,$A6,$19,$23,$2F,$80;			Voice 44
	dc.b		$31,$35,$32,$33,$34,$DF,$DF,$9F,$9F,$0C,$07,$0C,$09,$07,$07,$07
	dc.b		$08,$6F,$5F,$5F,$6F,$17,$32,$14,$80;			Voice 45
	dc.b		$06,$01,$01,$01,$01,$1F,$0F,$0F,$0F,$0A,$0A,$08,$08,$00,$00,$00
	dc.b		$00,$03,$07,$07,$07,$32,$94,$80,$80;			Voice 46
	dc.b		$38,$73,$02,$01,$31,$DF,$DF,$DF,$DF,$07,$05,$05,$0A,$03,$03,$03
	dc.b		$03,$23,$13,$25,$27,$1E,$1E,$1E,$9E;			Voice 47
	dc.b		$38,$03,$04,$01,$01,$DA,$DD,$DC,$DF,$0F,$05,$05,$0D,$05,$04,$02
	dc.b		$03,$25,$15,$35,$17,$1E,$1C,$1A,$80;			Voice 48
	dc.b		$3D,$01,$01,$01,$01,$1F,$9F,$9F,$9F,$0F,$09,$09,$09,$00,$00,$00
	dc.b		$00,$20,$F5,$F4,$F4,$1A,$84,$84,$84;			Voice 49
	dc.b		$38,$73,$02,$01,$31,$DF,$DF,$DF,$DF,$07,$05,$05,$0A,$03,$03,$03
	dc.b		$03,$23,$13,$25,$27,$1E,$1E,$1E,$80;			Voice 4A
	dc.b		$3A,$73,$04,$11,$31,$9F,$DF,$9F,$9F,$05,$05,$03,$0A,$03,$02,$03
	dc.b		$02,$63,$63,$54,$76,$1C,$20,$1E,$80;			Voice 4B
	dc.b		$3B,$52,$31,$51,$51,$0C,$0C,$12,$12,$0E,$00,$0E,$0C,$00,$00,$00
	dc.b		$0E,$4F,$0F,$5F,$3F,$15,$13,$1C,$80;			Voice 4C
	dc.b		$3C,$06,$00,$00,$00,$1F,$1F,$1C,$1F,$0A,$18,$13,$0F,$00,$00,$0A
	dc.b		$0A,$F8,$F9,$F8,$A9,$12,$80,$00,$80;			Voice 4D
	dc.b		$3C,$00,$00,$00,$00,$1F,$1F,$1F,$1F,$0A,$16,$10,$10,$01,$0A,$0A
	dc.b		$0A,$F8,$D9,$A8,$A9,$0A,$80,$0A,$80;			Voice 4E
	dc.b		$02,$02,$0A,$00,$00,$1F,$1F,$1F,$1F,$1C,$1C,$10,$10,$00,$00,$00
	dc.b		$00,$F8,$F8,$F8,$F9,$19,$28,$0A,$80;			Voice 4F
	dc.b		$32,$3A,$32,$33,$34,$DF,$DF,$9F,$9F,$0C,$07,$0C,$09,$07,$07,$07
	dc.b		$08,$67,$58,$58,$68,$17,$29,$12,$80;			Voice 50
	even
