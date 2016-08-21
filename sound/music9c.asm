; =============================================================================================
; Project Name:		ICZSKC
; Created:		2nd July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

ICZSKC_Header:
	smpsHeaderVoice	ICZSKC_Voices
	smpsHeaderChan	$05,	$02
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	ICZSKC_DAC
	smpsHeaderFM	ICZSKC_FM1,	smpsPitch00,	$10
	smpsHeaderFM	ICZSKC_FM2,	smpsPitch01hi,	$0D
	smpsHeaderFM	ICZSKC_FM3,	smpsPitch00,	$10
	smpsHeaderFM	ICZSKC_FM4,	smpsPitch00,	$10
;	smpsHeaderFM	ICZSKC_FM5,	smpsPitch00,	$00
;	smpsHeaderPSG	ICZSKC_PSG1,	smpsPitch00,	$00,	$00
	smpsHeaderPSG	ICZSKC_PSG2,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	ICZSKC_PSG3,	smpsPitch02hi+$0B,	$00,	$00

; FM1 Data
ICZSKC_FM1:
	dc.b		nRst,	$40
ICZSKC_Jump01:
	smpsFMvoice	$01
	dc.b		nB5,	$08,	nG5,	$04,	nD5,	$24,	nB5,	$04
	dc.b		$08,	nC6,	$08,	nB5,	$04,	nA5,	$32,	nRst
	dc.b		$06,	nB5,	$08,	nG5,	$04,	nD5,	$24,	nD6
	dc.b		$04,	$08,	nC6,	$08,	nB5,	$04,	nA5,	$32
	dc.b		nRst,	$06,	nB5,	$08,	nG5,	$04,	nD5,	$24
	dc.b		nB5,	$04,	$08,	nC6,	$08,	nB5,	$04,	nA5
	dc.b		$32,	nRst,	$06,	nB5,	$08,	nG5,	$04,	nD5
	dc.b		$24,	nD6,	$04,	$08,	nC6,	$08,	nB5,	$04
	dc.b		nA5,	$32,	nRst,	$06,	$03
	smpsFMvoice	$02
	dc.b		nG4,	$01,	nA4,	$03,	nG4,	$01,	nA4,	$02
	dc.b		nG4,	$04,	nA4,	$0A,	nRst,	$0B,	nG4,	$01
	dc.b		nA4,	$03,	nG4,	$01,	nA4,	$02,	nG4,	$04
	dc.b		nC5,	$06,	nB4,	$04,	nA4,	nG4,	nC5,	$06
	dc.b		nD5,	nA4,	$12,	nG4,	$02,	nF4,	$04,	nE4
	dc.b		$02,	nF4,	$04,	nE4,	$02,	nD4,	$14,	nRst
	dc.b		$03,	nG4,	$01,	nA4,	$03,	nG4,	$01,	nA4
	dc.b		$02,	nG4,	$04,	nA4,	$0A,	nRst,	$0B,	nG4
	dc.b		$01,	nA4,	$03,	nG4,	$01,	nA4,	$02,	nG4
	dc.b		$04,	nC5,	$06,	nB4,	$04,	nA4,	nG4,	nC5
	dc.b		$06,	nD5,	nE5,	$12,	nRst,	$02,	nA4,	nG4
	dc.b		$01,	nA4,	nB4,	$02,	nA4,	$01,	nB4,	nC5
	dc.b		$02,	nB4,	$01,	nC5,	nD5,	$02,	nC5,	$01
	dc.b		nD5,	nE5,	$02,	nD5,	$01,	nE5,	nF5,	$02
	dc.b		nE5,	$01,	nF5,	nG5,	$02,	nF5,	$01,	nG5
	dc.b		nA5,	$02,	nG5,	$01,	nA5,	nRst,	$7F,	$7F
	dc.b		$02
	smpsJump	ICZSKC_Jump01

; FM2 Data
ICZSKC_FM2:
	smpsFMvoice	$03
	dc.b		nD2,	$02,	$02,	nRst,	$02,	nD2,	nD2,	nRst
	dc.b		nD2,	nD2,	nRst,	nD2,	nD2,	nRst,	nD2,	nRst
	dc.b		nD2,	nRst,	nG1,	nRst,	$0E,	nD2,	$02,	$02
	dc.b		nRst,	$02,	nD2,	nRst,	nD2,	nD2,	nRst
ICZSKC_Jump02:
	smpsFMvoice	$03
	dc.b		nG1,	$04,	$02,	$04,	nD2,	$02,	nG2,	$04
	dc.b		nG1,	nG1,	nG1,	nG1,	nG1,	nG1,	$02,	$04
	dc.b		nD2,	$02,	nG2,	$04,	nG1,	nG1,	nG1,	nG1
	dc.b		nF1,	nF1,	$02,	$04,	nC2,	$02,	nF2,	$04
	dc.b		nF1,	nF1,	nF1,	nF1,	nF1,	nF1,	$02,	$04
	dc.b		nC2,	$02,	nF2,	$04,	nF1,	nF1,	nF1,	nF1
	smpsJump	ICZSKC_Jump02

; FM3 Data
ICZSKC_FM3:
	smpsFMvoice	$00
	dc.b		nC6,	$02,	$02,	nRst,	$02,	nC6,	nC6,	nRst
	dc.b		nC6,	nC6,	nRst,	nC6,	nC6,	nRst,	nC6,	nRst
	dc.b		nC6,	nRst,	nB5,	nRst,	$0E,	nA5,	$02,	$02
	dc.b		nRst,	$02,	nA5,	nRst,	nA5,	nA5,	nRst
ICZSKC_Jump03:
	smpsFMvoice	$00
	dc.b		nG4,	$02,	nRst,	nD4,	nG4,	nRst,	nD4,	nG4
	dc.b		nRst,	nG4,	nRst,	$0A,	nG4,	$02,	nRst,	nG4
	dc.b		nRst,	nD4,	nG4,	nRst,	nD4,	nG4,	nRst,	nG4
	dc.b		nRst,	nB4,	nRst,	nB4,	nRst,	nD4,	nRst,	nF4
	dc.b		nRst,	nC4,	nF4,	nRst,	nC4,	nF4,	nRst,	nF4
	dc.b		nRst,	$0A,	nF4,	$02,	nRst,	nF4,	nRst,	nC4
	dc.b		nF4,	nRst,	nC4,	nF4,	nRst,	nF4,	nRst,	nA4
	dc.b		nRst,	nA4,	nRst,	nC4,	nRst
	smpsJump	ICZSKC_Jump03

; FM4 Data
ICZSKC_FM4:
	smpsFMvoice	$00
	dc.b		nF6,	$02,	$02,	nRst,	$02,	nF6,	nF6,	nRst
	dc.b		nF6,	nF6,	nRst,	nF6,	nF6,	nRst,	nF6,	nRst
	dc.b		nF6,	nRst,	nD6,	nRst,	$0E,	nD6,	$02,	$02
	dc.b		nRst,	$02,	nD6,	nRst,	nD6,	nD6,	nRst
ICZSKC_Jump04:
	smpsFMvoice	$00
	dc.b		nB4,	$02,	nRst,	$04,	nB4,	$02,	nRst,	$04
	dc.b		nB4,	$02,	nRst,	nB4,	nRst,	$0A,	nB4,	$02
	dc.b		nRst,	nB4,	nRst,	$04,	nB4,	$02,	nRst,	$04
	dc.b		nB4,	$02,	nRst,	nB4,	nRst,	nD5,	nRst,	nD5
	dc.b		nRst,	$06,	nA4,	$02,	nRst,	$04,	nA4,	$02
	dc.b		nRst,	$04,	nA4,	$02,	nRst,	nA4,	nRst,	$0A
	dc.b		nA4,	$02,	nRst,	nA4,	nRst,	$04,	nA4,	$02
	dc.b		nRst,	$04,	nA4,	$02,	nRst,	nA4,	nRst,	nC5
	dc.b		nRst,	nC5,	nRst,	$06
	smpsJump	ICZSKC_Jump04

; PSG2 Data
ICZSKC_PSG2:
	dc.b		nRst,	$40
ICZSKC_Jump05:
	smpsPSGvoice	$00
	dc.b		nG5,	$02,	nRst,	nB5,	nD6,	nRst,	nC6,	nB5
	dc.b		nRst,	nG5,	nRst,	$0A,	nG5,	$02,	nRst,	nG5
	dc.b		nRst,	nB5,	nD6,	nRst,	nC6,	nB5,	nRst,	nG5
	dc.b		nRst,	$0A,	nG5,	$02,	nRst,	nF5,	nRst,	nA5
	dc.b		nC6,	nRst,	nB5,	nA5,	nRst,	nF5,	nRst,	$0A
	dc.b		nF5,	$02,	nRst,	nF5,	nRst,	nA5,	nC6,	nRst
	dc.b		nB5,	nA5,	nRst,	nF5,	nRst,	nF5,	nRst,	nF5
	dc.b		nRst,	nF5,	nRst
	smpsJump	ICZSKC_Jump05

; PSG3 Data
ICZSKC_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02
	dc.b		nAb6,	$02,	$04,	$02
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$02,	$04,	$02
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$10,	$10
	smpsPSGform	$E7
ICZSKC_Jump06:
	smpsPSGvoice	$01
	dc.b		nAb6,	$04
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		$02
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02
	smpsJump	ICZSKC_Jump06

; DAC Data
ICZSKC_DAC:
	dc.b		dKick,	$08,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		$02,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
ICZSKC_Jump07:
	dc.b		$87,	$08,	dSnare,	$06,	dKick,	$04,	dSnare,	$02
	dc.b		dKick,	$04,	dSnare,	$08,	dKick,	dSnare,	$06,	dKick
	dc.b		$04,	dSnare,	$02,	dKick,	$04,	dSnare,	$08,	dKick
	dc.b		dSnare,	$06,	dKick,	$04,	dSnare,	$02,	dKick,	$04
	dc.b		dSnare,	$08,	dKick,	dSnare,	$06,	dKick,	$04,	dSnare
	dc.b		$02,	dKick,	$04,	dSnare,	$08,	dKick,	dSnare,	$06
	dc.b		dKick,	$04,	dSnare,	$02,	dKick,	$04,	dSnare,	$08
	dc.b		dKick,	dSnare,	$06,	dKick,	$04,	dSnare,	$02,	dKick
	dc.b		$04,	dSnare,	$08,	dKick,	dSnare,	$06,	dKick,	$04
	dc.b		dSnare,	$02,	dKick,	$04,	dSnare,	$08,	dKick,	dSnare
	dc.b		$06,	dKick,	$04,	dSnare,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	dKick,	$08,	dSnare,	$06,	dKick
	dc.b		$04,	dSnare,	$02,	dKick,	$04,	dSnare,	$08,	dKick
	dc.b		dSnare,	$06,	dKick,	$04,	dSnare,	$02,	dKick,	$04
	dc.b		dSnare,	$08,	dKick,	dSnare,	$06,	dKick,	$04,	dSnare
	dc.b		$02,	dKick,	$04,	dSnare,	$08,	dKick,	dSnare,	$06
	dc.b		dKick,	$04,	dSnare,	$02,	dKick,	$04,	dSnare,	$08
	dc.b		dKick,	dSnare,	$06,	dKick,	$04,	dSnare,	$02,	dKick
	dc.b		$04,	dSnare,	$08,	dKick,	dSnare,	$06,	dKick,	$04
	dc.b		dSnare,	$02,	dKick,	$04,	dSnare,	$08,	dKick,	dSnare
	dc.b		$06,	dKick,	$04,	dSnare,	$02,	dKick,	$04,	dSnare
	dc.b		$08,	dKick,	dSnare,	$06,	dKick,	$04,	dSnare,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	dKick,	$08
	dc.b		dSnare,	$06,	dKick,	$04,	dSnare,	$02,	dKick,	$04
	dc.b		dSnare,	$08,	dKick,	dSnare,	$06,	dKick,	$04,	dSnare
	dc.b		$02,	dKick,	$04,	dSnare,	$08,	dKick,	dSnare,	$06
	dc.b		dKick,	$04,	dSnare,	$02,	dKick,	$04,	dSnare,	$08
	dc.b		dKick,	dSnare,	$06,	dKick,	$04,	dSnare,	$02,	dKick
	dc.b		$04,	dSnare,	$08,	dKick,	dSnare,	$06,	dKick,	$04
	dc.b		dSnare,	$02,	dKick,	$04,	dSnare,	$08,	dKick,	dSnare
	dc.b		$06,	dKick,	$04,	dSnare,	$02,	dKick,	$04,	dSnare
	dc.b		$08,	dKick,	dSnare,	$06,	dKick,	$04,	dSnare,	$02
	dc.b		dKick,	$04,	dSnare,	$08,	dKick,	dSnare,	$06,	dKick
	dc.b		$04,	dSnare,	$02,	dKick,	$04,	dSnare,	$08,	dKick
	dc.b		dSnare,	$06,	dKick,	$04,	dSnare,	$02,	dKick,	$04
	dc.b		dSnare,	$08,	dKick,	dSnare,	$06,	dKick,	$04,	dSnare
	dc.b		$02,	dKick,	$04,	dSnare,	$08,	dKick,	dSnare,	$06
	dc.b		dKick,	$04,	dSnare,	$02,	dKick,	$04,	dSnare,	$08
	dc.b		dKick,	dSnare,	$06,	dKick,	$04,	dSnare,	$02,	dKick
	dc.b		$04,	dSnare,	$08,	dKick,	dSnare,	$06,	dKick,	$04
	dc.b		dSnare,	$02,	dKick,	$04,	dSnare,	$08,	dKick,	dSnare
	dc.b		$06,	dKick,	$04,	dSnare,	$02,	dKick,	$04,	dSnare
	dc.b		$08,	dKick,	dSnare,	$06,	dKick,	$04,	dSnare,	$02
	dc.b		dKick,	$04,	dSnare,	$08,	dKick,	dSnare,	$06,	dKick
	dc.b		$04,	dSnare,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02
	smpsJump	ICZSKC_Jump07

ICZSKC_Voices:
	dc.b		$32,$12,$02,$51,$01,$10,$1F,$1F,$10,$19,$14,$1B,$00,$00,$00,$00
	dc.b		$00,$15,$0A,$05,$0A,$1A,$35,$18,$00;			Voice 00
	dc.b		$3D,$01,$00,$01,$02,$12,$1F,$1F,$14,$07,$02,$02,$0A,$05,$05,$05
	dc.b		$05,$2F,$2F,$2F,$AF,$1C,$80,$82,$80;			Voice 01
	dc.b		$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04
	dc.b		$04,$25,$1A,$1A,$1A,$15,$80,$80,$80;			Voice 02
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$80;			Voice 03
	even
