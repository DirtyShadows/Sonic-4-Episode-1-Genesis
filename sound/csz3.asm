; =============================================================================================
; Project Name:		Casino_Street_Zone3
; Created:		10th February 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Casino_Street_Zone3_Header:
	smpsHeaderVoice	Casino_Street_Zone3_Voices
	smpsHeaderChan	$05,	$01
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	Casino_Street_Zone3_DAC
	smpsHeaderFM	Casino_Street_Zone3_FM1,	smpsPitch01hi,	$10
	smpsHeaderFM	Casino_Street_Zone3_FM2,	smpsPitch00,	$0E
	smpsHeaderFM	Casino_Street_Zone3_FM3,	smpsPitch00,	$10
	smpsHeaderFM	Casino_Street_Zone3_FM4,	smpsPitch00,	$14
	smpsHeaderPSG	Casino_Street_Zone3_PSG1,	smpsPitch03lo,	$00,	$00

; FM1 Data
Casino_Street_Zone3_FM1:
	smpsCall	Casino_Street_Zone3_Call01
Casino_Street_Zone3_Jump01:
	smpsCall	Casino_Street_Zone3_Call02
	smpsCall	Casino_Street_Zone3_Call03
	smpsCall	Casino_Street_Zone3_Call04
	smpsCall	Casino_Street_Zone3_Call05
	smpsCall	Casino_Street_Zone3_Call06
	smpsCall	Casino_Street_Zone3_Call01
	smpsJump	Casino_Street_Zone3_Jump01

; FM2 Data
Casino_Street_Zone3_FM2:
	smpsCall	Casino_Street_Zone3_Call07
Casino_Street_Zone3_Jump02:
	smpsCall	Casino_Street_Zone3_Call08
	smpsCall	Casino_Street_Zone3_Call09
	smpsCall	Casino_Street_Zone3_Call08
	smpsCall	Casino_Street_Zone3_Call0A
	smpsCall	Casino_Street_Zone3_Call0B
	smpsCall	Casino_Street_Zone3_Call0C
	smpsJump	Casino_Street_Zone3_Jump02

; FM3 Data
Casino_Street_Zone3_FM3:
	smpsCall	Casino_Street_Zone3_Call0D
Casino_Street_Zone3_Jump03:
	smpsCall	Casino_Street_Zone3_Call0E
	smpsCall	Casino_Street_Zone3_Call0F
	smpsCall	Casino_Street_Zone3_Call10
	smpsCall	Casino_Street_Zone3_Call11
	smpsCall	Casino_Street_Zone3_Call12
	smpsCall	Casino_Street_Zone3_Call13
	smpsJump	Casino_Street_Zone3_Jump03

; FM4 Data
Casino_Street_Zone3_FM4:
	smpsCall	Casino_Street_Zone3_Call14
Casino_Street_Zone3_Jump04:
	smpsCall	Casino_Street_Zone3_Call15
	smpsCall	Casino_Street_Zone3_Call16
	smpsCall	Casino_Street_Zone3_Call17
	smpsCall	Casino_Street_Zone3_Call18
	smpsCall	Casino_Street_Zone3_Call19
	smpsCall	Casino_Street_Zone3_Call1A
	smpsJump	Casino_Street_Zone3_Jump04

; PSG1 Data
Casino_Street_Zone3_PSG1:
	smpsPSGform	$E7
	smpsCall	Casino_Street_Zone3_Call1B
Casino_Street_Zone3_Jump05:
	smpsCall	Casino_Street_Zone3_Call1C
	smpsCall	Casino_Street_Zone3_Call1D
	smpsCall	Casino_Street_Zone3_Call1E
	smpsCall	Casino_Street_Zone3_Call1F
	smpsCall	Casino_Street_Zone3_Call20
	smpsCall	Casino_Street_Zone3_Call1B
	smpsJump	Casino_Street_Zone3_Jump05

; DAC Data
Casino_Street_Zone3_DAC:
	smpsCall	Casino_Street_Zone3_Call21
Casino_Street_Zone3_Jump06:
	smpsCall	Casino_Street_Zone3_Call22
	smpsCall	Casino_Street_Zone3_Call23
	smpsCall	Casino_Street_Zone3_Call24
	smpsCall	Casino_Street_Zone3_Call25
	smpsCall	Casino_Street_Zone3_Call26
	smpsCall	Casino_Street_Zone3_Call21
	smpsJump	Casino_Street_Zone3_Jump06

Casino_Street_Zone3_Call01:
	smpsFMvoice	$04
	dc.b		nF2,	$14,	nRst,	$01,	nC2,	$03,	nC3,	$04
	dc.b		nRst,	$01,	nBb2,	$03,	nRst,	$08,	nBb2,	$04
	dc.b		nRst,	$01,	nA2,	$03,	nRst,	$05,	nG2,	$03
	dc.b		nF2,	$08,	nG2,	$03,	nRst,	$05,	nG2,	$08
	dc.b		nF2,	$03,	nRst,	$05,	nF2,	$04,	nRst,	$01
	dc.b		nE2,	$03,	nRst,	$08,	nC2,	$0C,	nRst,	$01
	dc.b		nC3,	$07,	nRst,	$01,	nC2,	$03
	smpsReturn

Casino_Street_Zone3_Call02:
	dc.b		nF2,	$0B,	nRst,	$02,	nF2,	$03,	nC2,	$0B
	dc.b		nRst,	$02,	nC2,	$03,	nF2,	$08,	nC2,	$04
	dc.b		nRst,	$01,	nG2,	$07,	nRst,	$01,	nF2,	$03
	dc.b		nRst,	$05,	nF2,	$03,	nD2,	$0B,	nRst,	$02
	dc.b		nD2,	$03,	nA2,	$0B,	nRst,	$02,	nA2,	$03
	dc.b		nD2,	$04,	nRst,	$01,	nE2,	$03,	nF2,	$04
	dc.b		nRst,	$01,	nD2,	$07,	nRst,	$01,	nA2,	$03
	dc.b		nRst,	$05,	nA2,	$03
	smpsReturn

Casino_Street_Zone3_Call03:
	dc.b		nG2,	$0B,	nRst,	$02,	nG2,	$03,	nD2,	$0B
	dc.b		nRst,	$02,	nD2,	$03,	nG2,	$04,	nRst,	$01
	dc.b		nD2,	$03,	nA2,	$04,	nRst,	$01,	nG2,	$03
	dc.b		nRst,	$05,	nF2,	$03,	nRst,	$05,	nF2,	$03
	dc.b		nE2,	$0B,	nRst,	$02,	nE2,	$03,	nC2,	nRst
	dc.b		$02,	nC2,	$03,	nE2,	$04,	nRst,	$01,	nF2
	dc.b		$03,	nG2,	nF2,	$01,	nRst,	nG2,	$03,	nBb2
	dc.b		$04,	nRst,	$01,	nC3,	$07,	nRst,	$01,	nC2
	dc.b		$03,	nRst,	$05,	nC2,	$03
	smpsReturn

Casino_Street_Zone3_Call04:
	dc.b		nF2,	$0B,	nRst,	$02,	nF2,	$03,	nC2,	$0B
	dc.b		nRst,	$02,	nC2,	$03,	nF2,	nRst,	$02,	nF2
	dc.b		$03,	nG2,	$04,	nRst,	$01,	nA2,	$07,	nRst
	dc.b		$01,	nF2,	$03,	nRst,	$05,	nF2,	$03,	nD2
	dc.b		$0B,	nRst,	$02,	nD2,	$03,	nA2,	$0B,	nRst
	dc.b		$02,	nA2,	$03,	nD2,	nRst,	$02,	nD2,	$03
	dc.b		nE2,	$04,	nRst,	$01,	nF2,	$07,	nRst,	$01
	dc.b		nA2,	$02,	nRst,	$06,	nA2,	$03
	smpsReturn

Casino_Street_Zone3_Call05:
	dc.b		nG2,	$0B,	nRst,	$02,	nG2,	$03,	nD2,	$0B
	dc.b		nRst,	$02,	nD2,	$03,	nG2,	nRst,	$02,	nG2
	dc.b		$03,	nA2,	$04,	nRst,	$01,	nG2,	$07,	nRst
	dc.b		$01,	nF2,	$03,	nRst,	$05,	nF2,	$03,	nE2
	dc.b		$0A,	nRst,	$03,	nE2,	nC2,	nRst,	$02,	nC2
	dc.b		$03,	nE2,	$04,	nRst,	$01,	nF2,	$03,	nG2
	dc.b		$05,	nRst,	$03,	nC2,	$05,	nRst,	$03,	nF2
	dc.b		$05,	nRst,	$03,	nE2,	$05,	nRst,	$03
	smpsReturn

Casino_Street_Zone3_Call06:
	dc.b		nD2,	$03,	nRst,	$05,	nD2,	$04,	nRst,	$01
	dc.b		nF2,	$07,	nRst,	$01,	nF2,	$03,	nA2,	nRst
	dc.b		$05,	nA2,	$04,	nRst,	$01,	nF2,	$07,	nRst
	dc.b		$01,	nF2,	$03,	nG2,	nRst,	$05,	nF2,	$08
	dc.b		nE2,	$03,	nRst,	$05,	nE2,	$08,	nC2,	$03
	dc.b		nRst,	$02,	nC2,	$03,	nE2,	nF2,	$02,	nRst
	dc.b		$01,	nG2,	$02,	nA2,	$03,	nRst,	$05,	nC3
	dc.b		$0C,	nRst,	$01,	nC3,	$03,	nC2,	$08
	smpsReturn

Casino_Street_Zone3_Call07:
	smpsFMvoice	$02
	dc.b		nC4,	$03,	nRst,	$05,	nC5,	$04,	nRst,	$01
	dc.b		nBb4,	$03,	nA4,	$04,	nRst,	$01,	nBb4,	$03
	dc.b		nA4,	$04,	nRst,	$01,	nF4,	$03,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$01,	nA4,	$03,	nRst,	$05
	dc.b		nBb4,	$03,	nA4,	$08,	nG4,	$03,	nRst,	$05
	dc.b		nA4,	$08,	nBb4,	$03,	nRst,	$05,	nB4,	$04
	dc.b		nRst,	$01,	nC5,	$03,	nRst,	$08,	nC4,	$04
	dc.b		nRst,	$01,	nC4,	$03,	nRst,	$05,	nF4,	$03
	dc.b		nG4,	$08
	smpsReturn

Casino_Street_Zone3_Call08:
	dc.b		nA4,	$0C,	nRst,	$01,	nC5,	$08,	nRst,	$13
	dc.b		nC4,	$04,	nRst,	$01,	nC4,	$03,	nRst,	$05
	dc.b		nF4,	$03,	nG4,	$08,	nA4,	$0C,	nRst,	$01
	dc.b		nD5,	$08,	nRst,	$13,	nC5,	$04,	nRst,	$01
	dc.b		nBb4,	$03,	nRst,	$05,	nC5,	$03,	nA4,	$08
	smpsReturn

Casino_Street_Zone3_Call09:
	dc.b		nBb4,	$0C,	nRst,	$01,	nG4,	$08,	nRst,	$13
	dc.b		nC5,	$04,	nRst,	$01,	nBb4,	$03,	nRst,	$05
	dc.b		nC5,	$03,	nA4,	$08,	nBb4,	$0C,	nRst,	$01
	dc.b		nG4,	$07,	nRst,	$14,	nC4,	$04,	nRst,	$01
	dc.b		nC4,	$03,	nRst,	$05,	nF4,	$03,	nG4,	$08
	smpsReturn

Casino_Street_Zone3_Call0A:
	dc.b		nBb4,	$0C,	nRst,	$01,	nG4,	$1B,	nD5,	$04
	dc.b		nRst,	$01,	nC5,	$03,	nRst,	$05,	nBb4,	$03
	dc.b		nA4,	$08,	nBb4,	$10,	nG4,	nC5,	$03,	nRst
	dc.b		$05,	nBb4,	$08,	nA4,	$03,	nRst,	$05,	nG4
	dc.b		$08
	smpsReturn

Casino_Street_Zone3_Call0B:
	dc.b		nA4,	$0C,	nRst,	$01,	nD5,	$0B,	nC5,	$0C
	dc.b		nRst,	$01,	nA4,	$0B,	nBb4,	$03,	nRst,	$05
	dc.b		nC5,	$08,	nBb4,	$10,	nG4,	nA4,	$03,	nRst
	dc.b		$05,	nF4,	$08,	nC4,	$03,	nRst,	$02,	nF4
	dc.b		$03,	nG4,	$08
	smpsReturn

Casino_Street_Zone3_Call0C:
	dc.b		nC4,	$03,	nRst,	$05,	nC5,	$04,	nRst,	$01
	dc.b		nBb4,	$03,	nA4,	$04,	nRst,	$01,	nBb4,	$03
	dc.b		nA4,	$04,	nRst,	$01,	nF4,	$03,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$01,	nA4,	$03,	nRst,	$05
	dc.b		nBb4,	$03,	nA4,	$08,	nG4,	$03,	nRst,	$05
	dc.b		nA4,	$08,	nBb4,	$03,	nRst,	$05,	nB4,	$04
	dc.b		nRst,	$01,	nC5,	$03,	nRst,	$08,	nC4,	$04
	dc.b		nRst,	$01,	nC4,	$03,	nRst,	$05,	nF4,	$03
	dc.b		nG4,	$08
	smpsReturn

Casino_Street_Zone3_Call0D:
	smpsFMvoice	$02
	dc.b		nA3,	$03,	nRst,	$05,	nA4,	$04,	nRst,	$01
	dc.b		nG4,	$03,	nF4,	$04,	nRst,	$01,	nG4,	$03
	dc.b		nF4,	$04,	nRst,	$01,	nC4,	$03,	nRst,	$08
	dc.b		nE4,	$04,	nRst,	$01,	nF4,	$03,	nRst,	$05
	dc.b		nD4,	$03,	nF4,	$08,	nD4,	$03,	nRst,	$05
	dc.b		nF4,	$08,	nD4,	$03,	nRst,	$05,	nF4,	$04
	dc.b		nRst,	$01,	nE4,	$03,	nRst,	$08,	nG3,	$04
	dc.b		nRst,	$01,	nA3,	$03,	nRst,	$05,	nC4,	$03
	dc.b		nE4,	$08
	smpsReturn

Casino_Street_Zone3_Call0E:
	dc.b		nF4,	$0C,	nRst,	$01,	nA4,	$08,	nRst,	$13
	dc.b		nG3,	$04,	nRst,	$01,	nA3,	$03,	nRst,	$05
	dc.b		nC4,	$03,	nE4,	$08,	nF4,	$0C,	nRst,	$01
	dc.b		nA4,	$08,	nRst,	$13,	nA4,	$04,	nRst,	$01
	dc.b		nF4,	$03,	nRst,	$05,	nA4,	$03,	nD4,	$08
	smpsReturn

Casino_Street_Zone3_Call0F:
	dc.b		nG4,	$0C,	nRst,	$01,	nD4,	$1B,	nA4,	$04
	dc.b		nRst,	$01,	nG4,	$03,	nRst,	$05,	nA4,	$03
	dc.b		nF4,	$08,	nG4,	$0C,	nRst,	$01,	nC4,	$07
	dc.b		nRst,	$14,	nG3,	$04,	nRst,	$01,	nA3,	$03
	dc.b		nRst,	$05,	nC4,	$03,	nE4,	$08
	smpsReturn

Casino_Street_Zone3_Call10:
	dc.b		nF4,	$0C,	nRst,	$01,	nA4,	$1B,	nG3,	$04
	dc.b		nRst,	$01,	nA3,	$03,	nRst,	$05,	nD4,	$03
	dc.b		nE4,	$08,	nF4,	$0C,	nRst,	$01,	nA4,	$08
	dc.b		nRst,	$13,	nA4,	$04,	nRst,	$01,	nF4,	$03
	dc.b		nRst,	$05,	nA4,	$03,	nD4,	$08
	smpsReturn

Casino_Street_Zone3_Call11:
	dc.b		nG4,	$0C,	nRst,	$01,	nD4,	$1B,	nBb4,	$04
	dc.b		nRst,	$01,	nA4,	$03,	nRst,	$05,	nG4,	$03
	dc.b		nF4,	$08,	nE4,	$10,	nC4,	nA4,	$03,	nRst
	dc.b		$05,	nG4,	$08,	nF4,	$03,	nRst,	$05,	nC4
	dc.b		$08
	smpsReturn

Casino_Street_Zone3_Call12:
	dc.b		nD4,	$0C,	nRst,	$01,	nA4,	$0B,	nF4,	$0C
	dc.b		nRst,	$01,	nD4,	$0B,	nG4,	$03,	nRst,	$05
	dc.b		nF4,	$08,	nG4,	$10,	nE4,	nF4,	$03,	nRst
	dc.b		$05,	nC4,	$08,	nA3,	$03,	nRst,	$02,	nC4
	dc.b		$03,	nE4,	$08
	smpsReturn

Casino_Street_Zone3_Call13:
	dc.b		nA3,	$03,	nRst,	$05,	nA4,	$04,	nRst,	$01
	dc.b		nG4,	$03,	nF4,	$04,	nRst,	$01,	nG4,	$03
	dc.b		nF4,	$04,	nRst,	$01,	nC4,	$03,	nRst,	$08
	dc.b		nE4,	$04,	nRst,	$01,	nF4,	$03,	nRst,	$05
	dc.b		nD4,	$03,	nF4,	$08,	nD4,	$03,	nRst,	$05
	dc.b		nF4,	$08,	nD4,	$03,	nRst,	$05,	nF4,	$04
	dc.b		nRst,	$01,	nE4,	$03,	nRst,	$08,	nG3,	$04
	dc.b		nRst,	$01,	nA3,	$03,	nRst,	$05,	nC4,	$03
	dc.b		nE4,	$08
	smpsReturn

Casino_Street_Zone3_Call14:
	dc.b		smpsNoAttack,	$04
	smpsFMvoice	$02
	dc.b		nC4,	$03,	nRst,	$05,	nC5,	nRst,	$01,	nBb4
	dc.b		$02,	nA4,	$05,	nRst,	$01,	nBb4,	$02,	nA4
	dc.b		$01,	nRst,	$05,	nF4,	$02,	nRst,	$08,	nG4
	dc.b		$05,	nRst,	$01,	nA4,	$02,	nRst,	$06,	nBb4
	dc.b		$02,	nA4,	$04,	nRst,	nG4,	$03,	nRst,	$05
	dc.b		nA4,	$08,	nBb4,	$03,	nRst,	$05,	nB4,	nRst
	dc.b		$01,	nC5,	$02,	nRst,	$08,	nC4,	$05,	nRst
	dc.b		$01,	nC4,	$02,	nRst,	$06,	nF4,	$02,	nG4
	dc.b		$04
	smpsReturn

Casino_Street_Zone3_Call15:
	dc.b		smpsNoAttack,	$04,	nA4,	$0D,	nRst,	$01,	nC5,	$0B
	dc.b		nRst,	$0F,	nC4,	$05,	nRst,	$01,	nC4,	$02
	dc.b		nRst,	$06,	nF4,	$02,	nG4,	$04,	nRst,	nA4
	dc.b		$0D,	nRst,	$01,	nD5,	$0B,	nRst,	$0F,	nC5
	dc.b		$05,	nRst,	$01,	nBb4,	$02,	nRst,	$06,	nC5
	dc.b		$02,	nA4,	$04
	smpsReturn

Casino_Street_Zone3_Call16:
	dc.b		nRst,	$04,	nBb4,	$0D,	nRst,	$01,	nG4,	$0B
	dc.b		nRst,	$0F,	nC5,	$05,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$06,	nC5,	$02,	nA4,	$04,	nRst,	nBb4
	dc.b		$0D,	nRst,	$01,	nG4,	$0B,	nRst,	$0F,	nC4
	dc.b		$05,	nRst,	$01,	nC4,	$02,	nRst,	$06,	nF4
	dc.b		$02,	nG4,	$04
	smpsReturn

Casino_Street_Zone3_Call17:
	dc.b		nRst,	$04,	nA4,	$0D,	nRst,	$01,	nC5,	$0B
	dc.b		nRst,	$0F,	nC4,	$05,	nRst,	$01,	nC4,	$02
	dc.b		nRst,	$06,	nF4,	$02,	nG4,	$04,	nRst,	nA4
	dc.b		$0D,	nRst,	$01,	nD5,	$0B,	nRst,	$0F,	nC5
	dc.b		$05,	nRst,	$01,	nBb4,	$02,	nRst,	$06,	nC5
	dc.b		$02,	nA4,	$04
	smpsReturn

Casino_Street_Zone3_Call18:
	dc.b		nRst,	$04,	nBb4,	$0D,	nRst,	$01,	nG4,	$1A
	dc.b		nD5,	$05,	nRst,	$01,	nC5,	$02,	nRst,	$06
	dc.b		nBb4,	$02,	nA4,	$08,	nBb4,	$10,	nG4,	nC5
	dc.b		$03,	nRst,	$05,	nBb4,	$08,	nA4,	$03,	nRst
	dc.b		$05,	nG4,	$04
	smpsReturn

Casino_Street_Zone3_Call19:
	dc.b		smpsNoAttack,	$04,	nA4,	$0D,	nRst,	$01,	nD5,	$0A
	dc.b		nC5,	$0D,	nRst,	$01,	nA4,	$0A,	nBb4,	$03
	dc.b		nRst,	$05,	nC5,	$08,	nBb4,	$10,	nG4,	nA4
	dc.b		$03,	nRst,	$05,	nF4,	$08,	nC4,	$03,	nRst
	dc.b		nF4,	$02,	nG4,	$04
	smpsReturn

Casino_Street_Zone3_Call1A:
	dc.b		nRst,	$04,	nC4,	$03,	nRst,	$05,	nC5,	nRst
	dc.b		$01,	nBb4,	$02,	nA4,	$05,	nRst,	$01,	nBb4
	dc.b		$02,	nA4,	$01,	nRst,	$05,	nF4,	$02,	nRst
	dc.b		$08,	nG4,	$05,	nRst,	$01,	nA4,	$02,	nRst
	dc.b		$06,	nBb4,	$02,	nA4,	$04,	nRst,	nG4,	$03
	dc.b		nRst,	$05,	nA4,	$08,	nBb4,	$03,	nRst,	$05
	dc.b		nB4,	nRst,	$01,	nC5,	$02,	nRst,	$08,	nC4
	dc.b		$05,	nRst,	$01,	nC4,	$02,	nRst,	$06,	nF4
	dc.b		$02,	nG4,	$04
	smpsReturn

Casino_Street_Zone3_Call1B:
	smpsPSGvoice	$02
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$07
	dc.b		nCs0,	$02,	nRst,	$01,	nCs0,	nRst,	$04,	nCs0
	dc.b		$02,	nRst,	$06,	nCs0,	$01,	nRst,	$02,	nCs0
	dc.b		$01,	nRst,	$04,	nCs0,	$01,	nRst,	$07,	nCs0
	dc.b		$01,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$01,	nCs0,	$02,	nRst,	$01,	nCs0,	nRst
	dc.b		$07,	nCs0,	$01,	nRst,	$04,	nCs0,	$02,	nRst
	dc.b		$01,	nCs0,	nRst,	$07,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$02,	nRst,	$01,	nCs0,	nRst,	$04,	nCs0
	dc.b		$01,	nRst,	$0A,	nCs0,	$01,	nRst,	$07,	nCs0
	dc.b		$01,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0,	$02
	dc.b		nRst,	$01,	nCs0,	nRst,	$07
	smpsReturn

Casino_Street_Zone3_Call1C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$04,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	nCs0,	nRst,	$02,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	nCs0,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$04,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$04,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst
	smpsReturn

Casino_Street_Zone3_Call1D:
	smpsPSGvoice	$02
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$04,	nCs0,	$02
	dc.b		nRst,	$01,	nCs0,	nRst,	$02,	nCs0,	$01,	nRst
	dc.b		$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst
	dc.b		$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst
	dc.b		nCs0,	$02,	nRst,	$01,	nCs0,	nRst,	$04,	nCs0
	dc.b		$01,	nRst,	$02,	nCs0,	$01,	nRst,	$02,	nCs0
	dc.b		$01,	nRst,	$04,	nCs0,	$01,	nRst,	$04,	nCs0
	dc.b		$01,	nRst,	$02,	nCs0,	$01,	nRst,	$02,	nCs0
	dc.b		$01,	nRst,	nCs0,	nRst,	$02,	nCs0,	$01,	nRst
	dc.b		$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst
	dc.b		$02,	nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst
	dc.b		$04,	nCs0,	$01,	nRst,	$0A
	smpsReturn

Casino_Street_Zone3_Call1E:
	smpsPSGvoice	$02
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$04,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	nCs0,	nRst,	$02,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	nCs0,	$02,	nRst,	$01,	nCs0
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$04,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$04,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	nCs0,	nRst,	$02
	smpsReturn

Casino_Street_Zone3_Call1F:
	smpsPSGvoice	$02
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	nCs0
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$04,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	nCs0,	nRst,	$02,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	nCs0,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$02,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$04,	nCs0,	$01
	dc.b		nRst,	$04,	nCs0,	$01,	nRst,	$0A
	smpsReturn

Casino_Street_Zone3_Call20:
	smpsPSGvoice	$02
	dc.b		nCs0,	$01,	nRst,	$05,	nCs0,	$01,	nRst,	$06
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$07
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$0A,	nCs0,	$01,	nRst,	$04
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$02
	dc.b		nCs0,	$01,	nRst,	$02,	nCs0,	$01,	nRst,	$07
	dc.b		nCs0,	$01,	nRst,	$04,	nCs0,	$01,	nRst,	$05
	dc.b		nCs0,	$01,	nRst,	nCs0,	nRst,	$05,	nCs0,	$01
	dc.b		nRst,	nCs0,	nRst,	$05,	nCs0,	$01,	nRst,	nCs0
	dc.b		nRst,	$02,	nCs0,	$01,	nRst,	$07,	nCs0,	$01
	dc.b		nRst,	$02,	nCs0,	$01,	nRst
	smpsReturn

Casino_Street_Zone3_Call21:
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$0C
	dc.b		dKick,	$02,	nRst,	$01,	dSnare,	nRst,	$07,	dKick
	dc.b		$01,	nRst,	$07,	dSnare,	$01,	nRst,	$04,	dKick
	dc.b		$01,	nRst,	$07,	dKick,	$02,	nRst,	$01,	dSnare
	dc.b		nRst,	$07,	dKick,	$01,	nRst,	$07,	dKick,	$01
	dc.b		nRst,	$07,	dSnare,	$01,	nRst,	$04,	dSnare,	$01
	dc.b		nRst,	$02,	dSnare,	$01,	nRst,	$04,	dKick,	$01
	dc.b		nRst,	$0A,	dKick,	$01,	nRst,	$0C,	dSnare,	$02
	dc.b		nRst,	$01,	dSnare,	nRst,	$07
	smpsReturn

Casino_Street_Zone3_Call22:
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$04
	dc.b		dKick,	$02,	nRst,	$01,	dKick,	nRst,	$07,	dSnare
	dc.b		$01,	nRst,	$04,	dKick,	$01,	nRst,	$07,	dKick
	dc.b		$01,	nRst,	$02,	dSnare,	$01,	nRst,	$07,	dKick
	dc.b		$01,	nRst,	$07,	dSnare,	$01,	nRst,	$07,	dKick
	dc.b		$01,	nRst,	$07,	dSnare,	$01,	nRst,	$04,	dKick
	dc.b		$01,	nRst,	$02,	dKick,	$01,	nRst,	$07,	dSnare
	dc.b		$01,	nRst,	$04,	dKick,	$01,	nRst,	$07,	dKick
	dc.b		$01,	nRst,	$02,	dSnare,	$01,	nRst,	$07,	dKick
	dc.b		$01,	nRst,	$07,	dSnare,	$01,	nRst,	$07
	smpsReturn

Casino_Street_Zone3_Call23:
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	$02,	dKick,	$01,	nRst,	$07
	dc.b		dSnare,	$01,	nRst,	$04,	dKick,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	$02,	dKick,	$01,	nRst,	$07
	dc.b		dSnare,	$01,	nRst,	$04,	dKick,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	$04
	dc.b		dSnare,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	$02
	dc.b		dSnare,	$01,	nRst
	smpsReturn

Casino_Street_Zone3_Call24:
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	$02,	dKick,	$01,	nRst,	$07
	dc.b		dSnare,	$01,	nRst,	$04,	dKick,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	$02,	dKick,	$01,	nRst,	$07
	dc.b		dSnare,	$01,	nRst,	$04,	dKick,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$07
	smpsReturn

Casino_Street_Zone3_Call25:
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	$02,	dKick,	$01,	nRst,	$07
	dc.b		dSnare,	$01,	nRst,	$04,	dKick,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	$02,	dKick,	$01,	nRst,	$07
	dc.b		dSnare,	$01,	nRst,	$04,	dKick,	$01,	nRst,	$02
	dc.b		dSnare,	$01,	nRst,	$04,	dKick,	$01,	nRst,	$02
	dc.b		dSnare,	$01,	nRst,	$04,	dSnare,	$01,	nRst,	$02
	dc.b		dKick,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	dSnare
	dc.b		nRst,	$02,	dSnare,	$01,	nRst,	dSnare,	nRst,	$02
	dc.b		dSnare,	$01,	nRst,	$02
	smpsReturn

Casino_Street_Zone3_Call26:
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	$07,	dKick,	$01,	nRst,	$02
	dc.b		dSnare,	$01,	nRst,	$04,	dKick,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$04,	dKick,	$01,	nRst,	$02
	dc.b		dSnare,	$01,	nRst,	$07,	dKick,	$01,	nRst,	$04
	dc.b		dKick,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	$04
	dc.b		dSnare,	$01,	nRst,	$02,	dKick,	$01,	nRst,	$02
	dc.b		dSnare,	$01,	nRst,	dSnare,	nRst,	$02,	dSnare,	$01
	dc.b		nRst,	$02,	dSnare,	$01,	nRst,	$02,	dSnare,	$01
	dc.b		nRst,	dKick,	nRst,	$07,	dKick,	$01,	nRst,	$0C
	dc.b		dSnare,	$01,	nRst,	$02,	dSnare,	$01,	nRst,	$07
	smpsReturn

Casino_Street_Zone3_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$80;			Voice 00
	dc.b		$3D,$12,$21,$51,$12,$12,$14,$14,$0F,$0A,$05,$05,$05,$00,$00,$00
	dc.b		$00,$2B,$2B,$2B,$1B,$19,$80,$80,$80;			Voice 01
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 02
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 03
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$80;			Voice 04
	dc.b		$3D,$01,$01,$01,$11,$1C,$18,$18,$1B,$06,$05,$04,$05,$06,$05,$06
	dc.b		$06,$60,$89,$59,$79,$18,$80,$80,$80;			Voice 05
	dc.b		$36,$02,$74,$31,$0F,$5F,$5F,$5F,$5F,$0C,$0D,$09,$10,$09,$08,$08
	dc.b		$10,$30,$35,$36,$D5,$2B,$00,$00,$00;			Voice 06
	dc.b		$3B,$46,$42,$42,$43,$10,$12,$19,$4F,$08,$05,$01,$01,$01,$01,$01
	dc.b		$01,$76,$F1,$F7,$F9,$41,$23,$2B,$7F;			Voice 07
	dc.b		$07,$34,$74,$32,$71,$1F,$1F,$1F,$1F,$0A,$0A,$05,$03,$00,$00,$00
	dc.b		$00,$3F,$3F,$2F,$2F,$8A,$8A,$8A,$80;			Voice 08
	even
