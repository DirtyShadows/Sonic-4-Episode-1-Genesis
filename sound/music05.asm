; =============================================================================================
; Project Name:		CandyConstellation
; Created:		10th June 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

CandyConstellation_Header:
	smpsHeaderVoice	CandyConstellation_Voices
	smpsHeaderChan	$05,	$02
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	CandyConstellation_DAC
	smpsHeaderFM	CandyConstellation_FM1,	smpsPitch00,	$10
	smpsHeaderFM	CandyConstellation_FM2,	smpsPitch01lo,	$10
	smpsHeaderFM	CandyConstellation_FM3,	smpsPitch01lo,	$10
	smpsHeaderFM	CandyConstellation_FM4,	smpsPitch01hi,	$0A
	smpsHeaderPSG	CandyConstellation_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	CandyConstellation_PSG2,	smpsPitch03lo,	$02,	$00

; FM1 Data
CandyConstellation_FM1:
	smpsSetTempoMod     $FF
	smpsCall	CandyConstellation_Call01
	smpsSetTempoMod     $03
	smpsCall	CandyConstellation_Call02
CandyConstellation_Jump01:
	smpsSetTempoMod     $03
	smpsCall	CandyConstellation_Call03
	smpsSetTempoMod     $03
	smpsCall	CandyConstellation_Call04
	smpsSetTempoMod     $03
	smpsCall	CandyConstellation_Call05
	smpsCall	CandyConstellation_Call06
	smpsCall	CandyConstellation_Call07
	smpsCall	CandyConstellation_Call08
	smpsCall	CandyConstellation_Call09
	smpsCall	CandyConstellation_Call0A
	smpsCall	CandyConstellation_Call0B
	smpsJump	CandyConstellation_Jump01

; FM2 Data
CandyConstellation_FM2:
	smpsCall	CandyConstellation_Call0C
	smpsCall	CandyConstellation_Call0D
CandyConstellation_Jump02:
	smpsCall	CandyConstellation_Call0E
	smpsCall	CandyConstellation_Call0F
	smpsCall	CandyConstellation_Call10
	smpsCall	CandyConstellation_Call11
	smpsCall	CandyConstellation_Call12
	smpsCall	CandyConstellation_Call13
	smpsCall	CandyConstellation_Call14
	smpsCall	CandyConstellation_Call15
	smpsCall	CandyConstellation_Call16
	smpsJump	CandyConstellation_Jump02

; FM3 Data
CandyConstellation_FM3:
	smpsCall	CandyConstellation_Call17
	smpsCall	CandyConstellation_Call18
CandyConstellation_Jump03:
	smpsCall	CandyConstellation_Call19
	smpsCall	CandyConstellation_Call1A
	smpsCall	CandyConstellation_Call1B
	smpsCall	CandyConstellation_Call1C
	smpsCall	CandyConstellation_Call1D
	smpsCall	CandyConstellation_Call1E
	smpsCall	CandyConstellation_Call1F
	smpsCall	CandyConstellation_Call20
	smpsCall	CandyConstellation_Call21
	smpsJump	CandyConstellation_Jump03

; FM4 Data
CandyConstellation_FM4:
	smpsCall	CandyConstellation_Call22
	smpsCall	CandyConstellation_Call23
CandyConstellation_Jump04:
	smpsCall	CandyConstellation_Call24
	smpsCall	CandyConstellation_Call24
	smpsCall	CandyConstellation_Call25
	smpsCall	CandyConstellation_Call26
	smpsCall	CandyConstellation_Call27
	smpsCall	CandyConstellation_Call28
	smpsCall	CandyConstellation_Call29
	smpsCall	CandyConstellation_Call2A
	smpsCall	CandyConstellation_Call2B
	smpsJump	CandyConstellation_Jump04

; PSG1 Data
CandyConstellation_PSG1:
	smpsCall	CandyConstellation_Call2C
	smpsCall	CandyConstellation_Call2D
CandyConstellation_Jump05:
	smpsCall	CandyConstellation_Call2E
	smpsCall	CandyConstellation_Call2F
	smpsCall	CandyConstellation_Call30
	smpsCall	CandyConstellation_Call31
	smpsCall	CandyConstellation_Call2C
	smpsCall	CandyConstellation_Call32
	smpsCall	CandyConstellation_Call33
	smpsCall	CandyConstellation_Call34
	smpsCall	CandyConstellation_Call35
	smpsJump	CandyConstellation_Jump05

; PSG2 Data
CandyConstellation_PSG2:
	smpsPSGform	$E7
	smpsCall	CandyConstellation_Call36
	smpsCall	CandyConstellation_Call37
CandyConstellation_Jump06:
	smpsCall	CandyConstellation_Call38
	smpsCall	CandyConstellation_Call39
	smpsCall	CandyConstellation_Call3A
	smpsCall	CandyConstellation_Call3B
	smpsCall	CandyConstellation_Call3C
	smpsCall	CandyConstellation_Call3D
	smpsCall	CandyConstellation_Call3E
	smpsCall	CandyConstellation_Call3F
	smpsCall	CandyConstellation_Call40
	smpsJump	CandyConstellation_Jump06

; DAC Data
CandyConstellation_DAC:
	smpsCall	CandyConstellation_Call41
	smpsCall	CandyConstellation_Call42
CandyConstellation_Jump07:
	smpsCall	CandyConstellation_Call43
	smpsCall	CandyConstellation_Call44
	smpsCall	CandyConstellation_Call45
	smpsCall	CandyConstellation_Call46
	smpsCall	CandyConstellation_Call47
	smpsCall	CandyConstellation_Call48
	smpsCall	CandyConstellation_Call49
	smpsCall	CandyConstellation_Call4A
	smpsCall	CandyConstellation_Call4B
	smpsJump	CandyConstellation_Jump07

CandyConstellation_Call01:
	smpsFMvoice	$04
	dc.b		nA4,	$10,	nE4,	nD4,	nD4,	nD4,	$17,	nRst
	dc.b		$01,	nE4,	$17,	nRst,	$11
	smpsReturn

CandyConstellation_Call02:
	dc.b		smpsNoAttack,	$08,	nA3,	$0B,	nRst,	$01,	nE3,	$08
	dc.b		nCs3,	$04,	nD3,	nE3,	$02,	nRst,	nD3,	$08
	dc.b		nF3,	nA3,	nD4,	nCs4,	$06,	nD4,	nCs4,	$08
	dc.b		nA3,	$06,	nE3,	nD3,	$18
	smpsReturn

CandyConstellation_Call03:
	dc.b		smpsNoAttack,	$07,	nRst,	$01,	nEb4,	nE4,	$05,	nCs4
	dc.b		$06,	nA3,	$08,	nE3,	$04,	nCs3,	nE3,	$02
	dc.b		nRst,	nF3,	$08,	nA3,	nD4,	nB3,	nCs4,	$06
	dc.b		nD4,	nCs4,	$08,	nA3,	$06,	nE4,	nD4,	$0F
	dc.b		nRst,	$01,	nE4,	nF4,	$07
	smpsReturn

CandyConstellation_Call04:
	dc.b		nD4,	$07,	nRst,	$01,	nCs4,	$0B,	nRst,	$01
	dc.b		nA3,	$08,	nE3,	$04,	nCs3,	nE3,	$02,	nRst
	dc.b		nD3,	$08,	nF3,	nA3,	nD4,	nCs4,	$06,	nD4
	dc.b		nCs4,	$08,	nA3,	$06,	nE3,	nD3,	$08,	nA3
	dc.b		nD4
	smpsReturn

CandyConstellation_Call05:
	dc.b		nF4,	$08,	nEb4,	$01,	nE4,	$05,	nCs4,	$06
	dc.b		nA3,	$08,	nE3,	$04,	nCs3,	nE3,	$02,	nRst
	dc.b		nF3,	$08,	nA3,	nD4,	nB3,	nCs4,	$06,	nD4
	dc.b		nE4,	$08,	nCs4,	$06,	nA3,	nB3,	$0F,	nRst
	dc.b		$01,	nD4,	$08
	smpsReturn

CandyConstellation_Call06:
	dc.b		smpsNoAttack,	$07,	nRst,	$05,	nCs5,	$01,	nD5,	$05
	dc.b		nB4,	$06,	nG4,	$02,	nRst,	$04,	nE4,	$06
	dc.b		nG4,	$02,	nRst,	nF4,	$07,	nRst,	$01,	nA4
	dc.b		$07,	nRst,	$01,	nB4,	nC5,	$06,	nRst,	$01
	dc.b		nA4,	$06,	nRst,	$02,	nB4,	$06,	nC5,	nB4
	dc.b		$07,	nRst,	$01,	nFs4,	nG4,	$03,	nE4,	$04
	dc.b		nG4,	$02,	nRst,	nF4,	$18
	smpsReturn

CandyConstellation_Call07:
	dc.b		smpsNoAttack,	$03,	nRst,	$09,	nCs5,	$01,	nD5,	$05
	dc.b		nB4,	$06,	nG4,	$02,	nRst,	nG4,	nE4,	$06
	dc.b		nG4,	$02,	nRst,	nF4,	$07,	nRst,	$01,	nA4
	dc.b		$07,	nRst,	$01,	nB4,	nC5,	$06,	nRst,	$01
	dc.b		nA4,	$07,	nRst,	$01,	nB4,	$06,	nC5,	nB4
	dc.b		$07,	nRst,	$01,	nFs4,	nG4,	$03,	nB4,	$04
	dc.b		nD5,	$02,	nRst,	nC5,	$0F,	nRst,	$01,	nF5
	dc.b		$08
	smpsReturn

CandyConstellation_Call08:
	dc.b		smpsNoAttack,	$07,	nRst,	$01,	nE4,	$0B,	nRst,	$01
	dc.b		nCs4,	$13,	nRst,	$01,	nD4,	$08,	nF4,	nA4
	dc.b		nF4,	nE4,	$0B,	nRst,	$01,	nCs4,	$08,	nA3
	dc.b		$0B,	nRst,	$01,	nA3,	$0F,	nRst,	$01,	nF4
	dc.b		$08
	smpsReturn

CandyConstellation_Call09:
	dc.b		nD4,	$08,	nE4,	$06,	nCs4,	nA3,	$08,	nE3
	dc.b		$04,	nCs3,	nE3,	nF3,	$08,	nA3,	nD4,	nA3
	dc.b		nCs4,	$0B,	nRst,	$01,	nE4,	$13,	nRst,	$01
	dc.b		nF4,	$0F,	nRst,	$01,	nD4,	$08
	smpsReturn

CandyConstellation_Call0A:
	dc.b		smpsNoAttack,	$07,	nRst,	$01,	nCs4,	$1F,	nRst,	$01
	dc.b		nD4,	$04,	nRst,	$02,	nD4,	$04,	nRst,	$01
	dc.b		nD4,	$04,	nRst,	$01,	nD4,	$04,	nRst,	$02
	dc.b		nD4,	$04,	nRst,	$06,	nA3,	$0B,	nRst,	$01
	dc.b		nE3,	$08,	nCs3,	$04,	nD3,	nE3,	$02,	nRst
	dc.b		nD3,	$08,	nF3,	nA3
	smpsReturn

CandyConstellation_Call0B:
	dc.b		nD4,	$08,	nCs4,	$06,	nD4,	nCs4,	$08,	nA3
	dc.b		$06,	nE3,	nD3,	$18
	smpsReturn

CandyConstellation_Call0C:
	smpsFMvoice	$02
	dc.b		nB2,	$10,	nFs3,	nE3,	nA3,	nFs4,	$17,	nRst
	dc.b		$01,	nAb3,	$17,	nRst,	$09,	nAb3,	$02,	nA3
	dc.b		nB3,	nCs4
	smpsReturn

CandyConstellation_Call0D:
	dc.b		nD4,	$02,	nE4,	nFs4,	nAb4,	nCs4,	$0B,	nRst
	dc.b		$01,	nA3,	$13,	nRst,	$01,	nF3,	$0F,	nRst
	dc.b		$01,	nD4,	$08,	nF4,	nA3,	$06,	nB3,	nA3
	dc.b		$13,	nRst,	$01,	nF3,	$0F,	nRst,	$01,	nA3
	dc.b		$08
	smpsReturn

CandyConstellation_Call0E:
	dc.b		nD4,	$08,	nCs4,	$06,	nA3,	nE3,	$13,	nRst
	dc.b		$01,	nA3,	$08,	nD4,	nF4,	nD4,	nA3,	$06
	dc.b		nB3,	nA3,	$13,	nRst,	$01,	nF3,	$0F,	nRst
	dc.b		$01,	nA3,	$08
	smpsReturn

CandyConstellation_Call0F:
	dc.b		nD4,	$08,	nA4,	$0B,	nRst,	$01,	nE4,	$08
	dc.b		nA3,	$04,	nB3,	nCs4,	nF3,	$08,	nA3,	nD4
	dc.b		nF4,	nA3,	$06,	nB3,	nA3,	$08,	nE3,	$06
	dc.b		nCs3,	nF3,	$0F,	nRst,	$01,	nA3,	$08
	smpsReturn

CandyConstellation_Call10:
	dc.b		nD4,	$08,	nCs4,	$06,	nA3,	nE3,	$13,	nRst
	dc.b		$01,	nA3,	$08,	nD4,	nF4,	nD4,	nA3,	$06
	dc.b		nB3,	nCs4,	$13,	nRst,	$01,	nD4,	$0F,	nRst
	dc.b		$01,	nG4,	$08
	smpsReturn

CandyConstellation_Call11:
	dc.b		smpsNoAttack,	$07,	nRst,	$09,	nCs5,	$01,	nD5,	$05
	dc.b		nB4,	$06,	nG4,	$02,	nRst,	$04,	nE4,	$06
	dc.b		nG4,	$02,	nRst,	nF4,	$07,	nRst,	$01,	nA4
	dc.b		$07,	nRst,	$01,	nB4,	nC5,	$06,	nRst,	$01
	dc.b		nA4,	$05,	nRst,	$03,	nB4,	$06,	nC5,	nB4
	dc.b		$07,	nRst,	$01,	nFs4,	nG4,	$03,	nE4,	$04
	dc.b		nG4,	$02,	nRst,	nF4,	$14
	smpsReturn

CandyConstellation_Call12:
	dc.b		smpsNoAttack,	$07,	nRst,	$05,	nBb4,	$01,	nB4,	$05
	dc.b		nG4,	$06,	nE4,	$02,	nRst,	nE4,	nC4,	$06
	dc.b		nE4,	$02,	nRst,	nD4,	$07,	nRst,	$01,	nF4
	dc.b		$07,	nRst,	$01,	nAb4,	nA4,	$06,	nRst,	$01
	dc.b		nF4,	$07,	nRst,	$01,	nG4,	$06,	nA4,	nG4
	dc.b		$07,	nRst,	$01,	nEb4,	nE4,	$03,	nG4,	$04
	dc.b		nB4,	$02,	nRst,	nA4,	$0F,	nRst,	$01,	nC5
	dc.b		$08
	smpsReturn

CandyConstellation_Call13:
	dc.b		nA3,	$02,	nB3,	nC4,	nD4,	nA4,	$0B,	nRst
	dc.b		$01,	nE4,	$13,	nRst,	$01,	nA3,	$08,	nD4
	dc.b		nF4,	nD4,	nA4,	$06,	nB4,	nA4,	$08,	nE4
	dc.b		$06,	nCs4,	nF4,	$18
	smpsReturn

CandyConstellation_Call14:
	dc.b		smpsNoAttack,	$06,	nRst,	$02,	nCs5,	$06,	nA4,	nE4
	dc.b		$08,	nCs4,	$04,	nA3,	nCs4,	$03,	nRst,	$01
	dc.b		nA3,	$08,	nD4,	nF4,	nD4,	nA4,	$0B,	nRst
	dc.b		$01,	nE4,	$13,	nRst,	$01,	nD4,	$08,	nF4
	dc.b		nA4
	smpsReturn

CandyConstellation_Call15:
	dc.b		nF4,	$08,	nA4,	$1F,	nRst,	$11,	nAb3,	$02
	dc.b		nA3,	nB3,	nCs4,	nD4,	nE4,	nFs4,	nAb4,	nCs4
	dc.b		$0B,	nRst,	$01,	nA3,	$13,	nRst,	$01,	nF3
	dc.b		$0F,	nRst,	$01,	nD4,	$08
	smpsReturn

CandyConstellation_Call16:
	dc.b		nF4,	$08,	nA3,	$06,	nB3,	nA3,	$13,	nRst
	dc.b		$01,	nF3,	$0F,	nRst,	$01,	nA3,	$08
	smpsReturn

CandyConstellation_Call17:
	smpsFMvoice	$03
	dc.b		nE3,	$10,	nB3,	nA3,	nG4,	nD4,	nA3,	$08
	dc.b		nB3,	$17,	nRst,	$09,	nE3,	$02,	nFs3,	nAb3
	dc.b		nA3
	smpsReturn

CandyConstellation_Call18:
	dc.b		nA3,	$02,	nB3,	nD4,	nE4,	nE3,	$0B,	nRst
	dc.b		$01,	nCs3,	$13,	nRst,	$01,	nA2,	$0F,	nRst
	dc.b		$01,	nF3,	$08,	nB3,	nE3,	$06,	nE3,	nE3
	dc.b		$13,	nRst,	$01,	nA3,	$0F,	nRst,	$01,	nD4
	dc.b		$08
	smpsReturn

CandyConstellation_Call19:
	dc.b		nF4,	$08,	nA3,	$06,	nE3,	nCs3,	$13,	nRst
	dc.b		$01,	nD3,	$08,	nF3,	nA3,	nF3,	nE3,	$06
	dc.b		nD3,	nCs4,	$13,	nRst,	$01,	nA3,	$0F,	nRst
	dc.b		$01,	nF3,	$08
	smpsReturn

CandyConstellation_Call1A:
	dc.b		nA3,	$08,	nE3,	$0B,	nRst,	$01,	nCs3,	$13
	dc.b		nRst,	$01,	nA2,	$0F,	nRst,	$01,	nF3,	$08
	dc.b		nB3,	nE4,	$06,	nFs4,	nE4,	$13,	nRst,	$01
	dc.b		nA3,	$0F,	nRst,	$01,	nF4,	$08
	smpsReturn

CandyConstellation_Call1B:
	dc.b		nA4,	$07,	nRst,	$01,	nA4,	$06,	nE4,	nCs4
	dc.b		$13,	nRst,	$01,	nD4,	$08,	nF4,	nA4,	nF4
	dc.b		nE4,	$06,	nFs4,	nE4,	$13,	nRst,	$01,	nG4
	dc.b		$0F,	nRst,	$01,	nB4,	$08
	smpsReturn

CandyConstellation_Call1C:
	dc.b		smpsNoAttack,	$07,	nRst,	$03,	nG4,	$02,	nD5,	nG4
	dc.b		nRst,	$01,	nG4,	nB4,	$02,	nRst,	$01,	nB4
	dc.b		nE4,	$02,	nRst,	$01,	nE4,	nG4,	$02,	nRst
	dc.b		$01,	nG4,	nE4,	$02,	nG4,	nRst,	$01,	nG4
	dc.b		nB4,	$02,	nRst,	$01,	nB4,	nRst,	$02,	nF4
	dc.b		nC5,	nF4,	nRst,	$01,	nF4,	nA4,	$02,	nRst
	dc.b		$01,	nA4,	nF4,	$02,	nRst,	$01,	nF4,	nC5
	dc.b		$02,	nRst,	$01,	nC5,	nF4,	$02,	nA4,	nRst
	dc.b		$01,	nA4,	nC5,	$02,	nRst,	$01,	nC5,	nRst
	dc.b		$02,	nB4,	nD5,	nG4,	nRst,	$01,	nG4,	nB4
	dc.b		$02,	nRst,	$01,	nB4,	nE4,	$02,	nRst,	$01
	dc.b		nE4,	nG4,	$02,	nRst,	$01,	nG4,	nE4,	$02
	dc.b		nG4,	nRst,	$01,	nG4,	nB4,	$02,	nRst,	$01
	dc.b		nB4,	nF3,	$03,	nRst,	$02,	nF3,	$03,	nA3
	dc.b		nRst,	$02,	nA3,	$03,	nC4,	nRst,	$02,	nC4
	dc.b		$03
	smpsReturn

CandyConstellation_Call1D:
	dc.b		nA3,	$03,	nRst,	$02,	nA3,	$03,	nRst,	$02
	dc.b		nG4,	nD5,	nG4,	nRst,	$01,	nG4,	nB4,	$02
	dc.b		nRst,	$01,	nB4,	nE4,	$02,	nRst,	$01,	nE4
	dc.b		nG4,	$02,	nRst,	$01,	nG4,	nE4,	$02,	nG4
	dc.b		nRst,	$01,	nG4,	nB4,	$02,	nRst,	$01,	nB4
	dc.b		nRst,	$02,	nF4,	nC5,	nF4,	nRst,	$01,	nF4
	dc.b		nA4,	$02,	nRst,	$01,	nA4,	nF4,	$02,	nRst
	dc.b		$01,	nF4,	nC5,	$02,	nRst,	$01,	nC5,	nF4
	dc.b		$02,	nA4,	nRst,	$01,	nA4,	nC5,	$02,	nRst
	dc.b		$01,	nC5,	nRst,	$02,	nB4,	nD5,	nG4,	nRst
	dc.b		$01,	nG4,	nB4,	$02,	nRst,	$01,	nB4,	nE4
	dc.b		$02,	nRst,	$01,	nE4,	nG4,	$02,	nRst,	$01
	dc.b		nG4,	nE4,	$02,	nG4,	nRst,	$01,	nG4,	nB4
	dc.b		$02,	nRst,	$01,	nB4,	nRst,	$10,	nG3,	$02
	dc.b		nA3,	nB3,	nC4
	smpsReturn

CandyConstellation_Call1E:
	dc.b		nD4,	$02,	nE4,	nF4,	nG4,	nCs4,	$0B,	nRst
	dc.b		$01,	nA3,	$13,	nRst,	$01,	nF3,	$08,	nA3
	dc.b		nD4,	nB3,	nCs4,	$06,	nD4,	nCs4,	$08,	nA3
	dc.b		$06,	nE3,	nD3,	$18
	smpsReturn

CandyConstellation_Call1F:
	dc.b		smpsNoAttack,	$06,	nRst,	$02,	nA3,	$06,	nE3,	nCs3
	dc.b		$08,	nA2,	$04,	nE2,	nA2,	nD3,	$08,	nF3
	dc.b		nA3,	nD4,	nE4,	$0B,	nRst,	$01,	nCs4,	$13
	dc.b		nRst,	$01,	nA3,	$08,	nD4,	nF4
	smpsReturn

CandyConstellation_Call20:
	dc.b		nA4,	$08,	nCs5,	$28,	nRst,	$08,	nE3,	$02
	dc.b		nFs3,	nAb3,	nA3,	nA3,	nB3,	nD4,	nE4,	nE3
	dc.b		$0B,	nRst,	$01,	nCs3,	$13,	nRst,	$01,	nA2
	dc.b		$0F,	nRst,	$01,	nF3,	$08
	smpsReturn

CandyConstellation_Call21:
	dc.b		nB3,	$08,	nE3,	$06,	nE3,	nE3,	$13,	nRst
	dc.b		$01,	nA3,	$0F,	nRst,	$01,	nD4,	$08
	smpsReturn

CandyConstellation_Call22:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

CandyConstellation_Call23:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$00
	dc.b		nA1,	$02,	nRst,	$04,	nA1,	$02,	nRst,	$04
	dc.b		nA1,	$02,	nRst,	$12,	nD2,	$02,	nRst,	$04
	dc.b		nD2,	$02,	nRst,	$04,	nD2,	$02,	nRst,	$12
	dc.b		nA1,	$02,	nRst,	$04,	nA1,	$02,	nRst,	$04
	dc.b		nA1,	$02,	nRst,	$12,	nD2,	$02,	nRst,	$04
	dc.b		nD2,	$02,	nRst,	$04,	nD2,	$02,	nRst,	$06
	dc.b		nD2,	$01,	nRst,	nD2,	nRst
	smpsReturn

CandyConstellation_Call24:
	dc.b		nCs3,	$02,	nD3,	nD2,	$04,	nA1,	$02,	nRst
	dc.b		$04,	nA1,	$02,	nRst,	$04,	nA1,	$02,	nRst
	dc.b		$12,	nD2,	$02,	nRst,	$04,	nD2,	$02,	nRst
	dc.b		$04,	nD2,	$02,	nRst,	$12,	nA1,	$02,	nRst
	dc.b		$04,	nA1,	$02,	nRst,	$04,	nA1,	$02,	nRst
	dc.b		$12,	nD2,	$02,	nRst,	$04,	nD2,	$02,	nRst
	dc.b		$04,	nD2,	$02,	nRst,	$06,	nD2,	$01,	nRst
	dc.b		nD2,	nRst
	smpsReturn

CandyConstellation_Call25:
	dc.b		nCs3,	$02,	nD3,	$01,	nRst,	nD2,	$04,	nA1
	dc.b		$02,	nRst,	$04,	nA1,	$02,	nRst,	$04,	nA1
	dc.b		$02,	nRst,	$12,	nD2,	$02,	nRst,	$04,	nD2
	dc.b		$02,	nRst,	$04,	nD2,	$02,	nRst,	$12,	nA1
	dc.b		$02,	nRst,	$04,	nA1,	$02,	nRst,	$04,	nA1
	dc.b		$02,	nRst,	$12,	nG1,	$02,	nRst,	$04,	nG1
	dc.b		$02,	nRst,	$04,	nG1,	$02,	nRst,	$04,	nFs2
	dc.b		$02,	nG2,	nD2
	smpsReturn

CandyConstellation_Call26:
	dc.b		nB1,	$02,	nG1,	nD2,	nG1,	nC2,	nRst,	$04
	dc.b		nC2,	$02,	nRst,	$04,	nC2,	$02,	nRst,	$12
	dc.b		nD2,	$02,	nRst,	$04,	nD2,	$02,	nRst,	$04
	dc.b		nD2,	$02,	nRst,	$12,	nE2,	$02,	nRst,	$04
	dc.b		nE2,	$02,	nRst,	$04,	nE2,	$02,	nRst,	$12
	dc.b		nD2,	$02,	nRst,	$04,	nD2,	$02,	nRst,	$04
	dc.b		nD2,	$02,	nRst,	$04,	nB2,	$02,	nC3,	nA2
	smpsReturn

CandyConstellation_Call27:
	dc.b		nF2,	$02,	nD2,	nA2,	nD2,	nC2,	nRst,	$04
	dc.b		nC2,	$02,	nRst,	$04,	nC2,	$02,	nRst,	$12
	dc.b		nD2,	$02,	nRst,	$04,	nD2,	$02,	nRst,	$04
	dc.b		nD2,	$02,	nRst,	$12,	nE2,	$02,	nRst,	$04
	dc.b		nE2,	$02,	nRst,	$04,	nE2,	$02,	nRst,	$12
	dc.b		nF2,	$02,	nRst,	$04,	nF2,	$02,	nRst,	$04
	dc.b		nF2,	$02,	nRst,	$04,	nB2,	$02,	nC3,	nA2
	smpsReturn

CandyConstellation_Call28:
	dc.b		nD2,	$02,	nE2,	nF2,	nG2,	nA1,	nRst,	$04
	dc.b		nA1,	$02,	nRst,	$04,	nA1,	$02,	nRst,	$06
	dc.b		nA1,	$01,	nRst,	nA1,	nRst,	nEb2,	nRst,	nE2
	dc.b		$02,	nA1,	$04,	nD2,	$02,	nRst,	$04,	nD2
	dc.b		$02,	nRst,	$04,	nD2,	$02,	nRst,	$06,	nD2
	dc.b		$01,	nRst,	nD2,	nRst,	nE2,	nRst,	nF2,	$02
	dc.b		nA2,	$04,	nA1,	$02,	nRst,	$04,	nA1,	$02
	dc.b		nRst,	$04,	nA1,	$02,	nRst,	$12,	nD2,	$02
	dc.b		nRst,	$04,	nD2,	$02,	nRst,	$04,	nD2,	$02
	dc.b		nRst,	$04,	nD3,	nA2,	$02
	smpsReturn

CandyConstellation_Call29:
	dc.b		nD2,	$04,	nA2,	nA1,	$02,	nRst,	$04,	nA1
	dc.b		$02,	nRst,	$04,	nA1,	$02,	nRst,	$06,	nA1
	dc.b		$01,	nRst,	nA1,	nRst,	nEb2,	nRst,	nE2,	$02
	dc.b		nA1,	$04,	nD2,	$02,	nRst,	$04,	nD2,	$02
	dc.b		nRst,	$04,	nD2,	$02,	nRst,	$06,	nD2,	$01
	dc.b		nRst,	nD2,	nRst,	nF2,	$04,	nA2,	nA1,	$02
	dc.b		nRst,	$04,	nA1,	$02,	nRst,	$04,	nA1,	$02
	dc.b		nRst,	$12,	nD2,	$02,	nRst,	$04,	nD2,	$02
	dc.b		nRst,	$04,	nD2,	$02,	nRst,	$06,	nD2,	$01
	dc.b		nRst,	nD2,	nRst
	smpsReturn

CandyConstellation_Call2A:
	dc.b		nA2,	$04,	nD2,	nA1,	$02,	nRst,	$04,	nA1
	dc.b		$02,	nRst,	$04,	nA1,	$02,	nRst,	$12,	nD2
	dc.b		$02,	nRst,	$04,	nD2,	$02,	nRst,	$04,	nD2
	dc.b		$02,	nRst,	$04,	nD3,	$02,	nA2,	nF2,	nD2
	dc.b		nF2,	nA2,	nD2,	nA1,	nRst,	$04,	nA1,	$02
	dc.b		nRst,	$04,	nA1,	$02,	nRst,	$12,	nD2,	$02
	dc.b		nRst,	$04,	nD2,	$02,	nRst,	$04,	nD2,	$02
	dc.b		nRst,	$0A
	smpsReturn

CandyConstellation_Call2B:
	dc.b		smpsNoAttack,	$08,	nA1,	$02,	nRst,	$04,	nA1,	$02
	dc.b		nRst,	$04,	nA1,	$02,	nRst,	$12,	nD2,	$02
	dc.b		nRst,	$04,	nD2,	$02,	nRst,	$04,	nD2,	$02
	dc.b		nRst,	$06,	nD2,	$01,	nRst,	nD2,	nRst
	smpsReturn

CandyConstellation_Call2C:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

CandyConstellation_Call2D:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nA4,	$0B,	nRst,	$01,	nE4,	$12,	nRst,	$02
	dc.b		nD4,	$08,	nF4,	nA4,	nD5,	nCs5,	$0A,	nRst
	dc.b		$2E
	smpsReturn

CandyConstellation_Call2E:
	dc.b		smpsNoAttack,	$08,	nCs5,	$0B,	nRst,	$15,	nF4,	$08
	dc.b		nA4,	nD5,	nB4,	nCs5,	$0A,	nRst,	$26,	nF5
	dc.b		$08
	smpsReturn

CandyConstellation_Call2F:
	dc.b		nD5,	$07,	nRst,	$21,	nA4,	$08,	nD4,	nF4
	dc.b		nA4,	nCs5,	$0A,	nRst,	$16,	nA3,	$08,	nF4
	dc.b		nA4
	smpsReturn

CandyConstellation_Call30:
	dc.b		nD5,	$08,	nCs5,	$06,	nA4,	nE4,	$08,	nRst
	dc.b		$0C,	nD4,	$08,	nF4,	nA4,	nD5,	nA4,	nRst
	dc.b		$18,	nG3,	$01,	nRst,	nB3,	nG3,	nD4,	nB3
	dc.b		nFs4,	nD4,	nG4,	nFs4,	nB4,	nG4,	nD5,	nB4
	dc.b		nFs5,	nD5,	nG5,	nFs5,	nB5,	nG5,	nD6,	nB5
	dc.b		nFs6,	nD6
	smpsReturn

CandyConstellation_Call31:
	dc.b		nG6,	$01,	nFs6,	nB6,	nG6,	nD7,	nB6,	nFs7
	dc.b		nD7,	nRst,	$78
	smpsReturn

CandyConstellation_Call32:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nA4,	$01,	nRst,	nCs5,	nA4,	nE5,	nCs5,	nAb5
	dc.b		nE5,	nE5,	nAb5,	nAb5,	nE5,	nA5,	nAb5,	nCs6
	dc.b		nA5,	nA5,	nCs6,	nCs6,	nA5,	nE6,	nCs6,	nAb6
	dc.b		nE6,	nCs6,	nAb6,	nE6,	nCs6,	nA6,	nE6,	nCs7
	dc.b		nA6,	nD5,	nRst,	nF5,	nD5,	nA5,	nF5,	nD6
	dc.b		nA5,	nF5,	nD6,	nA5,	nF5,	nD6,	nA5,	nF6
	dc.b		nD6,	nA5,	nF6,	nD6,	nA5,	nF6,	nD6,	nA6
	dc.b		nF6,	nD6,	nA6,	nF6,	nD6,	nA6,	nF6,	nD7
	dc.b		nA6,	nA5,	nRst,	nCs6,	nA5,	nE6,	nCs6,	nAb6
	dc.b		nE6,	nA5,	nAb6,	nCs6,	nA5,	nE6,	nCs6,	nAb6
	dc.b		nE6,	nA5,	nAb6,	nCs6,	nA5,	nE6,	nCs6,	nAb6
	dc.b		nE6,	nA5,	nAb6,	nCs6,	nA5,	nE6,	nCs6,	nAb6
	dc.b		nE6,	nD5,	nRst,	nF5,	nD5,	nA5,	nF5,	nD6
	dc.b		nA5,	nF5,	nD6,	nA5,	nF5,	nD6,	nA5,	nF6
	dc.b		nD6,	nA5,	nF6,	nD6,	nA5,	nF6,	nD6,	nA6
	dc.b		nF6
	smpsReturn

CandyConstellation_Call33:
	dc.b		nD6,	$01,	nA6,	nF6,	nD6,	nA6,	nF6,	nD7
	dc.b		nA6,	nE5,	$06,	nCs5,	nA4,	$08,	nE4,	$04
	dc.b		nCs4,	nE4,	nF4,	$08,	nA4,	nD5,	nA4,	nCs5
	dc.b		$0B,	nRst,	$01,	nE5,	$0B,	nRst,	$09,	nA4
	dc.b		$01,	nRst,	nD5,	nA4,	nF5,	nD5,	nA5,	nF5
	dc.b		nD5,	nA5,	nF5,	nD5,	nA5,	nF5,	nD6,	nA5
	dc.b		nF5,	nD6,	nA5,	nF5,	nD6,	nA5,	nF6,	nD6
	smpsReturn

CandyConstellation_Call34:
	dc.b		nA5,	$01,	nF6,	nD6,	nA5,	nF6,	nD6,	nA6
	dc.b		nF6,	nD6,	nRst,	nCs6,	nD6,	nB5,	nCs6,	nA5
	dc.b		nB5,	nD6,	nA5,	nCs6,	nD6,	nB5,	nCs6,	nA5
	dc.b		nB5,	nD6,	nA5,	nCs6,	nD6,	nB5,	nCs6,	nA5
	dc.b		nB5,	nD6,	nA5,	nCs6,	nD6,	nB5,	nCs6,	nA5
	dc.b		nB5,	nD4,	$04,	nRst,	$02,	nD4,	$04,	nRst
	dc.b		$01,	nD4,	$04,	nRst,	$01,	nD4,	$04,	nRst
	dc.b		$02,	nD4,	$04,	nRst,	$06,	nA4,	$0B,	nRst
	dc.b		$01,	nE4,	$12,	nRst,	$02,	nD4,	$08,	nF4
	dc.b		nA4
	smpsReturn

CandyConstellation_Call35:
	dc.b		nD5,	$08,	nCs5,	$0A,	nRst,	$2E
	smpsReturn

CandyConstellation_Call36:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

CandyConstellation_Call37:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	$04,	$06,	$02,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		$04,	$06,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		$04,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	$06
	dc.b		$02,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	$02
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	$04,	nCs0
	smpsReturn

CandyConstellation_Call38:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$02,	$04,	$02,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$06,	$02,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$04,	$06,	$02,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		$06,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		$02,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	nCs0
	smpsReturn

CandyConstellation_Call39:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$02,	$04,	$02,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$06,	$02,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$04,	$06,	$02,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		$06,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		$02,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	nCs0
	smpsReturn

CandyConstellation_Call3A:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$02,	$04,	$02,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$06,	$02,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$04,	$06,	$02,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		$06,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		$02,	nCs0,	nCs0,	nCs0,	nCs0,	$08
	smpsReturn

CandyConstellation_Call3B:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	$02,	$04,	$02,	$04,	$02,	$04
	dc.b		$06,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04
	dc.b		$02,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	$06,	$02
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	$02,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$06,	$02,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$04,	nCs0
	smpsReturn

CandyConstellation_Call3C:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	$02
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	$04,	$06,	$02,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	$04,	$06,	$02,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		$04,	$06,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		$04,	$02,	nCs0,	nCs0,	nCs0,	nCs0,	$04,	nCs0
	smpsReturn

CandyConstellation_Call3D:
	dc.b		smpsNoAttack,	$0A
	smpsPSGvoice	$02
	dc.b		nCs0,	$02
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nRst,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$04
	smpsPSGvoice	$02
	dc.b		$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$06
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$04
	smpsReturn

CandyConstellation_Call3E:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$08
	smpsReturn

CandyConstellation_Call3F:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$04
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$02
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	$02
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$10,	$02,	nCs0,	nCs0,	$04,	$02
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	$04,	$06,	$02,	nCs0
	dc.b		nCs0,	$04,	$02,	$04,	$02,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$04,	nCs0
	smpsReturn

CandyConstellation_Call40:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$02,	$04,	$02,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	$04,	$06,	$02,	nCs0,	nCs0
	dc.b		$04,	$02,	$04,	$02,	$04,	$02,	$04,	nCs0
	smpsReturn

CandyConstellation_Call41:
	dc.b		dKick,	$1C,	nRst,	$04,	dKick,	$1C,	nRst,	$04
	dc.b		dKick,	$16,	nRst,	$02,	dKick,	$0E,	nRst,	$1A
	smpsReturn

CandyConstellation_Call42:
	dc.b		dSnare,	$02,	dSnare,	dKick,	$04,	$06,	dSnare,	dKick
	dc.b		dKick,	$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare
	dc.b		dKick,	dKick,	$04,	$02,	dSnare,	$08,	dKick,	$06
	dc.b		dSnare,	dKick,	dKick,	$04,	$02,	dSnare,	$08,	dKick
	dc.b		$06,	dSnare,	dKick,	dKick,	$04,	$02
	smpsReturn

CandyConstellation_Call43:
	dc.b		dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick,	$04
	dc.b		$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick
	dc.b		$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick
	dc.b		dKick,	$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare
	dc.b		dKick,	dKick,	$04,	$02
	smpsReturn

CandyConstellation_Call44:
	dc.b		dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick,	$04
	dc.b		$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick
	dc.b		$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick
	dc.b		dKick,	$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare
	dc.b		dKick,	dKick,	$04,	$02
	smpsReturn

CandyConstellation_Call45:
	dc.b		dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick,	$04
	dc.b		$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick
	dc.b		$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick
	dc.b		dKick,	$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare
	dc.b		dKick,	dSnare,	$02,	dSnare,	dKick
	smpsReturn

CandyConstellation_Call46:
	dc.b		dSnare,	$04,	$02,	dSnare,	dKick,	$06,	dSnare,	dKick
	dc.b		dKick,	$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare
	dc.b		dKick,	dKick,	$04,	$02,	dSnare,	$08,	dKick,	$06
	dc.b		dSnare,	dKick,	dKick,	$04,	$02,	dSnare,	$08,	dKick
	dc.b		$06,	dSnare,	dKick,	dKick,	$04,	$02
	smpsReturn

CandyConstellation_Call47:
	dc.b		dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick,	$04
	dc.b		$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dSnare,	dKick
	dc.b		$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick
	dc.b		dKick,	$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare
	dc.b		dKick,	$02,	nRst,	$04,	dKick,	dKick,	$02
	smpsReturn

CandyConstellation_Call48:
	dc.b		dSnare,	$02,	dSnare,	dSnare,	dSnare,	dKick,	$06,	dSnare
	dc.b		dKick,	dKick,	$04,	$02,	dSnare,	$08,	dKick,	$06
	dc.b		dSnare,	dKick,	dKick,	$04,	$02,	dSnare,	$08,	dKick
	dc.b		$06,	dSnare,	dKick,	$0A,	$02,	dSnare,	$08,	dKick
	dc.b		$06,	dSnare,	dKick,	$0A,	$02
	smpsReturn

CandyConstellation_Call49:
	dc.b		dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick,	$04
	dc.b		$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick
	dc.b		$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick
	dc.b		dKick,	$04,	$02,	dSnare,	$08,	dKick,	$06,	dSnare
	dc.b		dKick,	dSnare,	$02,	dSnare,	dKick
	smpsReturn

CandyConstellation_Call4A:
	dc.b		dSnare,	$04,	$02,	dSnare,	dKick,	$0C,	$06,	$04
	dc.b		$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dSnare
	dc.b		$02,	dSnare,	dKick,	dSnare,	dSnare,	$01,	dSnare,	dSnare
	dc.b		$02,	dSnare,	dKick,	$06,	dSnare,	dKick,	dKick,	$04
	dc.b		$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick
	dc.b		$04,	$02
	smpsReturn

CandyConstellation_Call4B:
	dc.b		dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick,	$04
	dc.b		$02,	dSnare,	$08,	dKick,	$06,	dSnare,	dKick,	dKick
	dc.b		$04,	$02
	smpsReturn

CandyConstellation_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3D,$01,$21,$12,$31,$14,$0E,$0F,$0F,$00,$04,$03,$04,$00,$00,$00
	dc.b		$00,$00,$16,$16,$16,$1B,$05,$05,$05;			Voice 01
	dc.b		$35,$32,$31,$7A,$02,$4F,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 02
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 03
	dc.b		$39,$03,$61,$22,$21,$1F,$1F,$12,$1F,$05,$05,$05,$0B,$00,$00,$00
	dc.b		$00,$10,$10,$18,$18,$1E,$1D,$15,$00;			Voice 04
	dc.b		$2C,$31,$71,$31,$71,$5F,$5F,$54,$5F,$05,$03,$0A,$0C,$00,$03,$03
	dc.b		$03,$00,$00,$87,$A7,$17,$19,$00,$02;			Voice 05
	even
