; =============================================================================================
; Project Name:		LostLabyrinthActII
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

LostLabyrinthActII_Header:
	smpsHeaderVoice	LostLabyrinthActII_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	LostLabyrinthActII_DAC
	smpsHeaderFM	LostLabyrinthActII_FM1,	smpsPitch01hi,	$10
	smpsHeaderFM	LostLabyrinthActII_FM2,	smpsPitch01hi,	$10
	smpsHeaderFM	LostLabyrinthActII_FM3,	smpsPitch00,	$10
	smpsHeaderFM	LostLabyrinthActII_FM4,	smpsPitch00,	$10
	smpsHeaderFM	LostLabyrinthActII_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	LostLabyrinthActII_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	LostLabyrinthActII_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	LostLabyrinthActII_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
LostLabyrinthActII_FM1:
	smpsCall	LostLabyrinthActII_Call01
LostLabyrinthActII_Jump01:
	smpsCall	LostLabyrinthActII_Call02
	smpsCall	LostLabyrinthActII_Call02
	smpsCall	LostLabyrinthActII_Call03
	smpsCall	LostLabyrinthActII_Call04
	smpsCall	LostLabyrinthActII_Call05
	smpsCall	LostLabyrinthActII_Call05
	smpsCall	LostLabyrinthActII_Call06
	smpsCall	LostLabyrinthActII_Call06
	smpsCall	LostLabyrinthActII_Call07
	smpsCall	LostLabyrinthActII_Call08
	smpsJump	LostLabyrinthActII_Jump01

; FM2 Data
LostLabyrinthActII_FM2:
	smpsCall	LostLabyrinthActII_Call09
LostLabyrinthActII_Jump02:
	smpsCall	LostLabyrinthActII_Call0A
	smpsCall	LostLabyrinthActII_Call0A
	smpsCall	LostLabyrinthActII_Call0B
	smpsCall	LostLabyrinthActII_Call0C
	smpsCall	LostLabyrinthActII_Call0D
	smpsCall	LostLabyrinthActII_Call0D
	smpsCall	LostLabyrinthActII_Call0E
	smpsCall	LostLabyrinthActII_Call0E
	smpsCall	LostLabyrinthActII_Call0F
	smpsCall	LostLabyrinthActII_Call10
	smpsJump	LostLabyrinthActII_Jump02

; FM3 Data
LostLabyrinthActII_FM3:
	smpsCall	LostLabyrinthActII_Call11
LostLabyrinthActII_Jump03:
	smpsCall	LostLabyrinthActII_Call12
	smpsCall	LostLabyrinthActII_Call13
	smpsCall	LostLabyrinthActII_Call14
	smpsCall	LostLabyrinthActII_Call15
	smpsCall	LostLabyrinthActII_Call16
	smpsCall	LostLabyrinthActII_Call17
	smpsCall	LostLabyrinthActII_Call18
	smpsCall	LostLabyrinthActII_Call19
	smpsCall	LostLabyrinthActII_Call1A
	smpsCall	LostLabyrinthActII_Call1B
	smpsJump	LostLabyrinthActII_Jump03

; FM4 Data
LostLabyrinthActII_FM4:
	smpsCall	LostLabyrinthActII_Call1C
LostLabyrinthActII_Jump04:
	smpsCall	LostLabyrinthActII_Call1D
	smpsCall	LostLabyrinthActII_Call1E
	smpsCall	LostLabyrinthActII_Call1F
	smpsCall	LostLabyrinthActII_Call20
	smpsCall	LostLabyrinthActII_Call21
	smpsCall	LostLabyrinthActII_Call22
	smpsCall	LostLabyrinthActII_Call23
	smpsCall	LostLabyrinthActII_Call24
	smpsCall	LostLabyrinthActII_Call25
	smpsCall	LostLabyrinthActII_Call26
	smpsJump	LostLabyrinthActII_Jump04

; FM5 Data
LostLabyrinthActII_FM5:
	smpsCall	LostLabyrinthActII_Call27
LostLabyrinthActII_Jump05:
	smpsCall	LostLabyrinthActII_Call28
	smpsCall	LostLabyrinthActII_Call29
	smpsCall	LostLabyrinthActII_Call27
	smpsCall	LostLabyrinthActII_Call27
	smpsCall	LostLabyrinthActII_Call2A
	smpsCall	LostLabyrinthActII_Call2A
	smpsCall	LostLabyrinthActII_Call27
	smpsCall	LostLabyrinthActII_Call27
	smpsCall	LostLabyrinthActII_Call27
	smpsCall	LostLabyrinthActII_Call2B
	smpsJump	LostLabyrinthActII_Jump05

; PSG1 Data
LostLabyrinthActII_PSG1:
	smpsCall	LostLabyrinthActII_Call2C
LostLabyrinthActII_Jump06:
	smpsCall	LostLabyrinthActII_Call2C
	smpsCall	LostLabyrinthActII_Call2D
	smpsCall	LostLabyrinthActII_Call2E
	smpsCall	LostLabyrinthActII_Call2F
	smpsCall	LostLabyrinthActII_Call2C
	smpsCall	LostLabyrinthActII_Call2C
	smpsCall	LostLabyrinthActII_Call30
	smpsCall	LostLabyrinthActII_Call31
	smpsCall	LostLabyrinthActII_Call32
	smpsCall	LostLabyrinthActII_Call33
	smpsJump	LostLabyrinthActII_Jump06

; PSG2 Data
LostLabyrinthActII_PSG2:
	smpsCall	LostLabyrinthActII_Call34
LostLabyrinthActII_Jump07:
	smpsCall	LostLabyrinthActII_Call34
	smpsCall	LostLabyrinthActII_Call35
	smpsCall	LostLabyrinthActII_Call36
	smpsCall	LostLabyrinthActII_Call37
	smpsCall	LostLabyrinthActII_Call34
	smpsCall	LostLabyrinthActII_Call34
	smpsCall	LostLabyrinthActII_Call38
	smpsCall	LostLabyrinthActII_Call39
	smpsCall	LostLabyrinthActII_Call3A
	smpsCall	LostLabyrinthActII_Call3B
	smpsJump	LostLabyrinthActII_Jump07

; PSG3 Data
LostLabyrinthActII_PSG3:
	smpsPSGform	$E7
	smpsCall	LostLabyrinthActII_Call3C
LostLabyrinthActII_Jump08:
	smpsCall	LostLabyrinthActII_Call3D
	smpsCall	LostLabyrinthActII_Call3E
	smpsCall	LostLabyrinthActII_Call3F
	smpsCall	LostLabyrinthActII_Call40
	smpsCall	LostLabyrinthActII_Call3D
	smpsCall	LostLabyrinthActII_Call3D
	smpsCall	LostLabyrinthActII_Call3F
	smpsCall	LostLabyrinthActII_Call3F
	smpsCall	LostLabyrinthActII_Call41
	smpsCall	LostLabyrinthActII_Call42
	smpsJump	LostLabyrinthActII_Jump08

; DAC Data
LostLabyrinthActII_DAC:
	smpsCall	LostLabyrinthActII_Call43
LostLabyrinthActII_Jump09:
	smpsCall	LostLabyrinthActII_Call44
	smpsCall	LostLabyrinthActII_Call44
	smpsCall	LostLabyrinthActII_Call44
	smpsCall	LostLabyrinthActII_Call45
	smpsCall	LostLabyrinthActII_Call44
	smpsCall	LostLabyrinthActII_Call44
	smpsCall	LostLabyrinthActII_Call44
	smpsCall	LostLabyrinthActII_Call44
	smpsCall	LostLabyrinthActII_Call46
	smpsCall	LostLabyrinthActII_Call47
	smpsJump	LostLabyrinthActII_Jump09

LostLabyrinthActII_Call01:
	smpsFMvoice	$00
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst,	nAb1
	dc.b		$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst,	nAb1
	dc.b		nAb1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst
	dc.b		nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst
	dc.b		nAb1,	nAb1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1
	dc.b		nRst,	nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1
	dc.b		nRst,	nAb1,	nAb1,	nBb1,	$04,	nRst,	$02,	nBb1
	dc.b		nBb1,	nRst,	nBb1,	$06,	nRst,	$02,	nBb1,	nRst
	dc.b		nBb1,	nRst,	nBb1,	nBb1
	smpsReturn

LostLabyrinthActII_Call02:
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	nB1,	nRst,	nB1
	dc.b		$06,	nRst,	$02,	nB1,	nRst,	nB1,	nRst,	nB1
	dc.b		nB1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nA1,	$06,	nRst,	$02,	nA1,	nRst,	nA1,	nRst
	dc.b		nA1,	nA1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1
	dc.b		nRst,	nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1
	dc.b		nRst,	nAb1,	nAb1,	nBb1,	$04,	nRst,	$02,	nBb1
	dc.b		nBb1,	nRst,	nBb1,	$06,	nRst,	$02,	nBb1,	nRst
	dc.b		nBb1,	nRst,	nBb1,	nBb1
	smpsReturn

LostLabyrinthActII_Call03:
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	nB1,	nRst,	nB1
	dc.b		$06,	nRst,	$02,	nB1,	nRst,	nB1,	nRst,	nB1
	dc.b		nB1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nBb1,	$04,	nRst,	nA1,	$06,	nRst,	$02,	nA1
	dc.b		nA1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst
	dc.b		nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst
	dc.b		nAb1,	nAb1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1
	dc.b		nRst,	nBb1,	$06,	nRst,	$02,	nBb1,	nRst,	nBb1
	dc.b		nRst,	nBb1,	nBb1
	smpsReturn

LostLabyrinthActII_Call04:
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	nB1,	nRst,	nB1
	dc.b		$06,	nRst,	$02,	nB1,	nRst,	nB1,	nRst,	nB1
	dc.b		nB1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nBb1,	$04,	nRst,	nA1,	$06,	nRst,	$02,	nA1
	dc.b		nA1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst
	dc.b		nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst
	dc.b		nAb1,	nAb1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1
	dc.b		nRst,	nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1
	dc.b		nRst,	nAb1,	nAb1
	smpsReturn

LostLabyrinthActII_Call05:
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst,	nAb1
	dc.b		$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst,	nAb1
	dc.b		nAb1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nBb1,	$06,	nRst,	$02,	nBb1,	nRst,	nBb1,	nRst
	dc.b		nBb1,	nBb1,	nB1,	$04,	nRst,	$02,	nB1,	nB1
	dc.b		nRst,	nB1,	$06,	nRst,	$02,	nB1,	nRst,	nB1
	dc.b		nRst,	nB1,	nB1,	nBb1,	$04,	nRst,	$02,	nBb1
	dc.b		nBb1,	nRst,	nA1,	$06,	nRst,	$02,	nA1,	nRst
	dc.b		nA1,	nRst,	nA1,	nA1
	smpsReturn

LostLabyrinthActII_Call06:
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst,	nAb1
	dc.b		$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst,	nAb1
	dc.b		nAb1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nBb1,	$06,	nRst,	$02,	nBb1,	nRst,	nBb1,	nRst
	dc.b		nBb1,	nBb1,	nB1,	$04,	nRst,	$02,	nB1,	nB1
	dc.b		nRst,	nB1,	$06,	nRst,	$02,	nB1,	nRst,	nB1
	dc.b		nRst,	nB1,	nB1,	nBb1,	$04,	nRst,	$02,	nBb1
	dc.b		nBb1,	nRst,	nBb1,	$04,	nRst,	nA1,	$06,	nRst
	dc.b		$02,	nA1,	nA1
	smpsReturn

LostLabyrinthActII_Call07:
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst,	nAb1
	dc.b		$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst,	nAb1
	dc.b		nAb1,	nAb1,	$04,	nRst,	$02,	nAb1,	nB1,	nRst
	dc.b		nB1,	$06,	nRst,	$02,	nCs2,	nRst,	nD2,	nRst
	dc.b		nEb2,	nEb2,	nAb1,	$04,	nRst,	$02,	nAb1,	nEb2
	dc.b		nRst,	nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nB1
	dc.b		nRst,	nAb1,	nFs1,	nAb1,	$04,	nRst,	$02,	nAb1
	dc.b		nEb2,	nRst,	nAb1,	$06,	nRst,	$02,	nAb1,	nRst
	dc.b		nFs2,	nRst,	nFs2,	nAb2
	smpsReturn

LostLabyrinthActII_Call08:
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst,	nAb1
	dc.b		$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst,	nAb1
	dc.b		nAb1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nBb1,	$06,	nRst,	$02,	nBb1,	nRst,	nBb1,	nRst
	dc.b		nBb1,	nBb1
	smpsReturn

LostLabyrinthActII_Call09:
	smpsFMvoice	$01
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst,	nAb1
	dc.b		$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst,	nAb1
	dc.b		nAb1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst
	dc.b		nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst
	dc.b		nAb1,	nAb1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1
	dc.b		nRst,	nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1
	dc.b		nRst,	nAb1,	nAb1,	nBb1,	$04,	nRst,	$02,	nBb1
	dc.b		nBb1,	nRst,	nBb1,	$06,	nRst,	$02,	nBb1,	nRst
	dc.b		nBb1,	nRst,	nBb1,	nBb1
	smpsReturn

LostLabyrinthActII_Call0A:
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	nB1,	nRst,	nB1
	dc.b		$06,	nRst,	$02,	nB1,	nRst,	nB1,	nRst,	nB1
	dc.b		nB1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nA1,	$06,	nRst,	$02,	nA1,	nRst,	nA1,	nRst
	dc.b		nA1,	nA1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1
	dc.b		nRst,	nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1
	dc.b		nRst,	nAb1,	nAb1,	nBb1,	$04,	nRst,	$02,	nBb1
	dc.b		nBb1,	nRst,	nBb1,	$06,	nRst,	$02,	nBb1,	nRst
	dc.b		nBb1,	nRst,	nBb1,	nBb1
	smpsReturn

LostLabyrinthActII_Call0B:
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	nB1,	nRst,	nB1
	dc.b		$06,	nRst,	$02,	nB1,	nRst,	nB1,	nRst,	nB1
	dc.b		nB1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nBb1,	$04,	nRst,	nA1,	$06,	nRst,	$02,	nA1
	dc.b		nA1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst
	dc.b		nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst
	dc.b		nAb1,	nAb1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1
	dc.b		nRst,	nBb1,	$06,	nRst,	$02,	nBb1,	nRst,	nBb1
	dc.b		nRst,	nBb1,	nBb1
	smpsReturn

LostLabyrinthActII_Call0C:
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	nB1,	nRst,	nB1
	dc.b		$06,	nRst,	$02,	nB1,	nRst,	nB1,	nRst,	nB1
	dc.b		nB1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nBb1,	$04,	nRst,	nA1,	$06,	nRst,	$02,	nA1
	dc.b		nA1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst
	dc.b		nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst
	dc.b		nAb1,	nAb1,	nAb1,	$04,	nRst,	$02,	nAb1,	nAb1
	dc.b		nRst,	nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nAb1
	dc.b		nRst,	nAb1,	nAb1
	smpsReturn

LostLabyrinthActII_Call0D:
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst,	nAb1
	dc.b		$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst,	nAb1
	dc.b		nAb1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nBb1,	$06,	nRst,	$02,	nBb1,	nRst,	nBb1,	nRst
	dc.b		nBb1,	nBb1,	nB1,	$04,	nRst,	$02,	nB1,	nB1
	dc.b		nRst,	nB1,	$06,	nRst,	$02,	nB1,	nRst,	nB1
	dc.b		nRst,	nB1,	nB1,	nBb1,	$04,	nRst,	$02,	nBb1
	dc.b		nBb1,	nRst,	nA1,	$06,	nRst,	$02,	nA1,	nRst
	dc.b		nA1,	nRst,	nA1,	nA1
	smpsReturn

LostLabyrinthActII_Call0E:
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst,	nAb1
	dc.b		$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst,	nAb1
	dc.b		nAb1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nBb1,	$06,	nRst,	$02,	nBb1,	nRst,	nBb1,	nRst
	dc.b		nBb1,	nBb1,	nB1,	$04,	nRst,	$02,	nB1,	nB1
	dc.b		nRst,	nB1,	$06,	nRst,	$02,	nB1,	nRst,	nB1
	dc.b		nRst,	nB1,	nB1,	nBb1,	$04,	nRst,	$02,	nBb1
	dc.b		nBb1,	nRst,	nBb1,	$04,	nRst,	nA1,	$06,	nRst
	dc.b		$02,	nA1,	nA1
	smpsReturn

LostLabyrinthActII_Call0F:
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst,	nAb1
	dc.b		$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst,	nAb1
	dc.b		nAb1,	nAb1,	$04,	nRst,	$02,	nAb1,	nB1,	nRst
	dc.b		nB1,	$06,	nRst,	$02,	nCs2,	nRst,	nD2,	nRst
	dc.b		nEb2,	nEb2,	nAb1,	$04,	nRst,	$02,	nAb1,	nEb2
	dc.b		nRst,	nAb1,	$06,	nRst,	$02,	nAb1,	nRst,	nB1
	dc.b		nRst,	nAb1,	nFs1,	nAb1,	$04,	nRst,	$02,	nAb1
	dc.b		nEb2,	nRst,	nAb1,	$06,	nRst,	$02,	nAb1,	nRst
	dc.b		nFs2,	nRst,	nFs2,	nAb2
	smpsReturn

LostLabyrinthActII_Call10:
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	nAb1,	nRst,	nAb1
	dc.b		$06,	nRst,	$02,	nAb1,	nRst,	nAb1,	nRst,	nAb1
	dc.b		nAb1,	nBb1,	$04,	nRst,	$02,	nBb1,	nBb1,	nRst
	dc.b		nBb1,	$06,	nRst,	$02,	nBb1,	nRst,	nBb1,	nRst
	dc.b		nBb1,	nBb1
	smpsReturn

LostLabyrinthActII_Call11:
	dc.b		smpsNoAttack,	$40
	smpsFMvoice	$02
	dc.b		nEb5,	$18,	nAb5,	$08,	nFs5,	$18,	nCs5,	$08
	smpsReturn

LostLabyrinthActII_Call12:
	dc.b		nEb5,	$20,	nRst,	nEb5,	$18,	nAb5,	$08,	nBb5
	dc.b		$10,	nFs5
	smpsReturn

LostLabyrinthActII_Call13:
	dc.b		nEb5,	$20,	nRst,	nEb5,	$10,	nAb5,	nEb5,	nFs5
	smpsReturn

LostLabyrinthActII_Call14:
	dc.b		nEb5,	$0C,	nFs5,	$14,	nAb5,	$10,	nFs5,	$08
	dc.b		nE5,	nEb5,	$10,	nAb5,	nEb5,	nFs5
	smpsReturn

LostLabyrinthActII_Call15:
	dc.b		nEb5,	$0C,	nFs5,	$14,	nBb5,	$10,	nFs5,	$08
	dc.b		nA5,	nAb5,	$20,	nAb4,	$04,	nRst,	nAb4,	nRst
	dc.b		nAb4,	nRst,	$0C
	smpsReturn

LostLabyrinthActII_Call16:
	dc.b		nEb5,	$18,	nAb5,	$08,	nFs5,	nCs5,	$0C,	nFs5
	dc.b		nEb5,	$20,	nRst
	smpsReturn

LostLabyrinthActII_Call17:
	dc.b		nEb5,	$18,	nAb5,	$08,	nBb5,	nFs5,	$0C,	nCs5
	dc.b		nEb5,	$20,	nRst
	smpsReturn

LostLabyrinthActII_Call18:
	dc.b		nEb5,	$10,	nAb5,	nEb5,	nFs5,	nEb5,	$0C,	nFs5
	dc.b		$14,	nAb5,	$10,	nFs5,	$08,	nE5
	smpsReturn

LostLabyrinthActII_Call19:
	dc.b		nEb5,	$10,	nAb5,	nEb5,	nFs5,	nEb5,	$0C,	nFs5
	dc.b		$14,	nBb5,	$10,	nFs5,	$08,	nA5
	smpsReturn

LostLabyrinthActII_Call1A:
	dc.b		nAb5,	$20,	nAb4,	$04,	nRst,	nAb4,	nRst,	nAb4
	dc.b		nRst,	$4C
	smpsReturn

LostLabyrinthActII_Call1B:
	dc.b		nEb5,	$18,	nAb5,	$08,	nFs5,	$18,	nCs5,	$08
	smpsReturn

LostLabyrinthActII_Call1C:
	dc.b		smpsNoAttack,	$40
	smpsFMvoice	$02
	dc.b		nAb4,	$18,	nB4,	$08,	nBb4,	$16,	nRst,	$02
	dc.b		nBb4,	$08
	smpsReturn

LostLabyrinthActII_Call1D:
	dc.b		nB4,	$10,	nFs5,	nRst,	$20,	nAb4,	$18,	nB4
	dc.b		$08,	nCs5,	$0E,	nRst,	$02,	nCs5,	$10
	smpsReturn

LostLabyrinthActII_Call1E:
	dc.b		nB4,	$10,	nFs5,	nRst,	$20,	nAb4,	$14,	nRst
	dc.b		$04,	nAb4,	$08,	nBb4,	$14,	nRst,	$04,	nBb4
	dc.b		$08
	smpsReturn

LostLabyrinthActII_Call1F:
	dc.b		nB4,	$14,	nRst,	$04,	nB4,	$08,	nBb4,	$14
	dc.b		nRst,	$04,	nA4,	$08,	nAb4,	$14,	nRst,	$04
	dc.b		nAb4,	$08,	nBb4,	$14,	nRst,	$04,	nBb4,	$08
	smpsReturn

LostLabyrinthActII_Call20:
	dc.b		nB4,	$14,	nRst,	$04,	nB4,	$08,	nBb4,	$14
	dc.b		nRst,	$04,	nCs5,	$08,	nEb5,	$0C,	nB4,	nCs5
	dc.b		$08,	nRst,	$20
	smpsReturn

LostLabyrinthActII_Call21:
	dc.b		nAb4,	$18,	nB4,	$08,	nBb4,	$04,	nRst,	nBb4
	dc.b		$08,	nRst,	$04,	nBb4,	$0C,	nB4,	$10,	nFs5
	dc.b		nRst,	$20
	smpsReturn

LostLabyrinthActII_Call22:
	dc.b		nAb4,	$18,	nB4,	$08,	nCs5,	nBb4,	nRst,	$04
	dc.b		nBb4,	$0C,	nB4,	$10,	nFs5,	nRst,	$20
	smpsReturn

LostLabyrinthActII_Call23:
	dc.b		nAb4,	$14,	nRst,	$04,	nAb4,	$08,	nBb4,	$14
	dc.b		nRst,	$04,	nBb4,	$08,	nB4,	$14,	nRst,	$04
	dc.b		nB4,	$08,	nBb4,	$14,	nRst,	$04,	nA4,	$08
	smpsReturn

LostLabyrinthActII_Call24:
	dc.b		nAb4,	$14,	nRst,	$04,	nAb4,	$08,	nBb4,	$14
	dc.b		nRst,	$04,	nBb4,	$08,	nB4,	$14,	nRst,	$04
	dc.b		nB4,	$08,	nBb4,	$14,	nRst,	$04,	nCs5,	$08
	smpsReturn

LostLabyrinthActII_Call25:
	dc.b		nEb5,	$0C,	nB4,	nCs5,	$08,	nRst,	$60
	smpsReturn

LostLabyrinthActII_Call26:
	dc.b		nAb4,	$18,	nB4,	$08,	nBb4,	$16,	nRst,	$02
	dc.b		nBb4,	$08
	smpsReturn

LostLabyrinthActII_Call27:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

LostLabyrinthActII_Call28:
	dc.b		smpsNoAttack,	$20
	smpsFMvoice	$04
	dc.b		nB5,	$02,	nFs6,	nB6,	nBb5,	nRst,	$58
	smpsReturn

LostLabyrinthActII_Call29:
	dc.b		smpsNoAttack,	$20,	nB5,	$02,	nFs6,	nB6,	nBb5,	nRst
	dc.b		$58
	smpsReturn

LostLabyrinthActII_Call2A:
	dc.b		smpsNoAttack,	$60
	smpsFMvoice	$04
	dc.b		nB5,	$02,	nFs6,	nB6,	nBb5,	nRst,	$18
	smpsReturn

LostLabyrinthActII_Call2B:
	dc.b		smpsNoAttack,	$40
	smpsReturn

LostLabyrinthActII_Call2C:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

LostLabyrinthActII_Call2D:
	dc.b		smpsNoAttack,	$48
	smpsPSGvoice	$00
	dc.b		nAb5,	$04,	nEb5,	nFs5,	nCs5,	$0C,	nEb5,	nB4
	dc.b		$04,	nRst,	nCs5,	$0C
	smpsReturn

LostLabyrinthActII_Call2E:
	dc.b		nAb4,	$0C,	nB4,	$04,	nRst,	nCs5,	$0C,	nRst
	dc.b		$04,	nEb5,	$0C,	nB4,	$04,	nRst,	nCs5,	$08
	dc.b		nRst,	nAb5,	$04,	nEb5,	nFs5,	nCs5,	$0C,	nEb5
	dc.b		nB4,	$04,	nRst,	nCs5,	$0C
	smpsReturn

LostLabyrinthActII_Call2F:
	dc.b		nAb4,	$0C,	nB4,	$04,	nRst,	nCs5,	$0C,	nRst
	dc.b		$04,	nEb5,	$0C,	nFs5,	$04,	nRst,	nG5,	$08
	dc.b		nAb5,	$20,	nRst
	smpsReturn

LostLabyrinthActII_Call30:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nAb5,	nEb5,	$04,	nFs5,	$08,	nCs5,	$04,	nEb5
	dc.b		$08,	nFs5,	$04,	nB4,	nRst,	nCs5,	$0C,	nRst
	dc.b		$04,	nAb4,	nEb5,	nB4,	nRst,	nCs5,	nRst,	nEb5
	dc.b		nRst,	nEb5,	nRst,	nEb5,	nB4,	nRst,	nCs5,	$08
	smpsReturn

LostLabyrinthActII_Call31:
	dc.b		nRst,	$08,	nAb5,	nEb5,	$04,	nFs5,	$08,	nCs5
	dc.b		$04,	nEb5,	$08,	nFs5,	$04,	nB4,	nRst,	nCs5
	dc.b		$0C,	nRst,	$04,	nAb4,	nEb5,	nB4,	nRst,	nCs5
	dc.b		nRst,	nEb5,	nRst,	nEb5,	nRst,	nEb5,	nFs5,	nRst
	dc.b		nA5,	$08
	smpsReturn

LostLabyrinthActII_Call32:
	dc.b		nAb5,	$20,	nRst,	$60
	smpsReturn

LostLabyrinthActII_Call33:
	dc.b		smpsNoAttack,	$40
	smpsReturn

LostLabyrinthActII_Call34:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

LostLabyrinthActII_Call35:
	dc.b		smpsNoAttack,	$48
	smpsPSGvoice	$00
	dc.b		nB4,	$04,	nAb4,	nBb4,	nFs4,	$0C,	nAb4,	nEb4
	dc.b		$04,	nRst,	nFs4,	$0C
	smpsReturn

LostLabyrinthActII_Call36:
	dc.b		nEb4,	$0C,	nFs4,	$04,	nRst,	nAb4,	$0C,	nRst
	dc.b		$04,	nAb4,	$0C,	nFs4,	$04,	nRst,	nE4,	$08
	dc.b		nRst,	nB4,	$04,	nAb4,	nBb4,	nFs4,	$0C,	nAb4
	dc.b		nEb4,	$04,	nRst,	nFs4,	$0C
	smpsReturn

LostLabyrinthActII_Call37:
	dc.b		nEb4,	$0C,	nFs4,	$04,	nRst,	nAb4,	$0C,	nRst
	dc.b		$04,	nBb4,	$0C,	nCs5,	$04,	nRst,	nEb5,	$08
	dc.b		nB4,	$20,	nRst
	smpsReturn

LostLabyrinthActII_Call38:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nB4,	nAb4,	$04,	nBb4,	$08,	nFs4,	$04,	nAb4
	dc.b		$08,	nBb4,	$04,	nEb4,	nRst,	nFs4,	$0C,	nRst
	dc.b		$04,	nEb4,	nEb4,	nFs4,	nRst,	nAb4,	nRst,	nB4
	dc.b		nRst,	nB4,	nRst,	nAb4,	nFs4,	nRst,	nE4,	$08
	smpsReturn

LostLabyrinthActII_Call39:
	dc.b		nRst,	$08,	nB4,	nAb4,	$04,	nBb4,	$08,	nFs4
	dc.b		$04,	nAb4,	$08,	nBb4,	$04,	nEb4,	nRst,	nFs4
	dc.b		$0C,	nRst,	$04,	nEb4,	nEb4,	nFs4,	nRst,	nAb4
	dc.b		nRst,	nB4,	nRst,	nBb4,	nRst,	nBb4,	nCs5,	nRst
	dc.b		nCs5,	$08
	smpsReturn

LostLabyrinthActII_Call3A:
	dc.b		nB4,	$20,	nRst,	$60
	smpsReturn

LostLabyrinthActII_Call3B:
	dc.b		smpsNoAttack,	$40
	smpsReturn

LostLabyrinthActII_Call3C:
	dc.b		smpsNoAttack,	$02,	nRst
	smpsPSGvoice	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	nCs0
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04
	dc.b		nCs0,	nCs0,	nRst,	$02,	nCs0,	$06,	nRst,	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst
	smpsReturn

LostLabyrinthActII_Call3D:
	dc.b		smpsNoAttack,	$02,	nRst
	smpsPSGvoice	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst
	smpsReturn

LostLabyrinthActII_Call3E:
	dc.b		smpsNoAttack,	$02,	nRst
	smpsPSGvoice	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nRst,	$04,	nCs0,	$02,	nCs0,	nCs0,	$04
	dc.b		nRst,	$02,	nCs0,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$04,	$02,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nCs0,	$04,	nRst,	$02,	nCs0,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst
	smpsReturn

LostLabyrinthActII_Call3F:
	dc.b		smpsNoAttack,	$02,	nRst
	smpsPSGvoice	$02
	dc.b		nCs0,	nRst,	$04,	nCs0,	$02,	nCs0,	nCs0,	$04
	dc.b		nRst,	$02,	nCs0,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$04,	$02,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nCs0,	$04,	nRst,	$02,	nCs0,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nCs0,	$04,	nRst,	$02
	dc.b		nCs0,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst,	$04
	dc.b		$02,	nCs0,	nRst,	$04,	nCs0,	$02,	nCs0,	nCs0
	dc.b		$04,	nRst,	$02,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst
	smpsReturn

LostLabyrinthActII_Call40:
	dc.b		smpsNoAttack,	$02,	nRst
	smpsPSGvoice	$02
	dc.b		nCs0,	nRst,	$04,	nCs0,	$02,	nCs0,	nCs0,	$04
	dc.b		nRst,	$02,	nCs0,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$04,	$02,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nCs0,	$04,	nRst,	$02,	nCs0,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nCs0,	$04,	nRst,	$02
	dc.b		nCs0,	nRst,	$04,	nCs0,	$02,	nCs0,	nRst,	$04
	dc.b		$02,	nCs0,	nRst,	$04,	nCs0,	$02,	nCs0,	nCs0
	dc.b		$04,	nRst,	$02,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		$04
	smpsReturn

LostLabyrinthActII_Call41:
	dc.b		smpsNoAttack,	$02,	nRst
	smpsPSGvoice	$02
	dc.b		nCs0,	nRst,	$04,	nCs0,	$02,	nCs0,	nCs0,	$04
	dc.b		nRst,	$02,	nCs0,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$04,	$02,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nCs0,	$04,	nRst,	$02,	nCs0,	nRst,	$04
	dc.b		nCs0,	$02,	$06,	nRst,	$02,	nCs0,	nRst,	$04
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nCs0,	$04
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nCs0,	$04
	dc.b		$02,	$04
	smpsReturn

LostLabyrinthActII_Call42:
	dc.b		smpsNoAttack,	$02,	nRst
	smpsPSGvoice	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nRst,	$04,	$02,	nCs0,	nRst,	$04,	$02
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst
	smpsReturn

LostLabyrinthActII_Call43:
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$08,	dKick,	dKick,	$04,	dSnare,	dSnare,	$02
	dc.b		nRst,	dSnare,	dSnare,	dKick,	$08,	dKick,	dKick,	dSnare
	dc.b		$02,	nRst,	$06,	dKick,	$08,	dKick,	dKick,	dSnare
	dc.b		$02,	nRst,	$06
	smpsReturn

LostLabyrinthActII_Call44:
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	smpsReturn

LostLabyrinthActII_Call45:
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$08,	dKick,	dKick,	$04,	dSnare,	$02,	nRst
	dc.b		dSnare,	nRst,	dSnare,	dSnare
	smpsReturn

LostLabyrinthActII_Call46:
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$04,	dSnare,	$02,	nRst,	dKick,	dSnare,	nRst
	dc.b		$04,	dSnare,	$02,	nRst,	dSnare,	nRst,	dSnare,	nRst
	dc.b		dSnare,	dSnare,	dKick,	$08,	dKick,	dKick,	dSnare,	$02
	dc.b		nRst,	$06,	dKick,	$08,	dKick,	dKick,	$04,	dSnare
	dc.b		$02,	nRst,	dSnare,	nRst,	dSnare,	dSnare
	smpsReturn

LostLabyrinthActII_Call47:
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	dc.b		dKick,	$08,	dKick,	dKick,	dSnare,	$02,	nRst,	$06
	smpsReturn

LostLabyrinthActII_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3A,$30,$71,$01,$00,$5F,$5A,$5F,$1F,$0D,$12,$0F,$09,$09,$07,$07
	dc.b		$06,$40,$38,$48,$17,$20,$15,$15,$00;			Voice 01
	dc.b		$3D,$01,$21,$12,$31,$14,$0E,$0F,$0F,$00,$04,$03,$04,$00,$00,$00
	dc.b		$00,$00,$16,$16,$16,$1B,$05,$05,$05;			Voice 02
	dc.b		$3D,$01,$21,$12,$31,$14,$0E,$0F,$0F,$00,$04,$03,$04,$00,$00,$00
	dc.b		$00,$00,$16,$16,$16,$1B,$05,$05,$05;			Voice 03
	dc.b		$2C,$31,$71,$31,$71,$5F,$5F,$54,$5F,$05,$03,$0A,$0C,$00,$03,$03
	dc.b		$03,$00,$00,$87,$A7,$17,$19,$00,$02;			Voice 04
	even
