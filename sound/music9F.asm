; =============================================================================================
; Project Name:		SylvCastle1
; Created:		8th September 2015
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SylvCastle1_Header:
;	Voice Pointer	location
	smpsHeaderVoice	SylvCastle1_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$01
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$02,	$03

;	DAC Pointer	location
	smpsHeaderDAC	SylvCastle1_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	SylvCastle1_FM1,	smpsPitch00,	$00
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	SylvCastle1_FM2,	smpsPitch00,	$00
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	SylvCastle1_FM3,	smpsPitch01hi,	$00
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	SylvCastle1_FM4,	smpsPitch01hi,	$00
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	SylvCastle1_FM5,	smpsPitch00,	$00
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	SylvCastle1_PSG1,	smpsPitch03lo,	$02,	$00

; FM1 Data
SylvCastle1_FM1:
;	Call At	 	location
	smpsCall	SylvCastle1_Call01
;	Call At	 	location
	smpsCall	SylvCastle1_Call02
;	Call At	 	location
	smpsCall	SylvCastle1_Call03
;	Call At	 	location
	smpsCall	SylvCastle1_Call03
;	Call At	 	location
	smpsCall	SylvCastle1_Call04
;	Call At	 	location
	smpsCall	SylvCastle1_Call05
;	Call At	 	location
	smpsCall	SylvCastle1_Call06
;	Call At	 	location
	smpsCall	SylvCastle1_Call07
;	Call At	 	location
	smpsCall	SylvCastle1_Call08
;	Jump To	 	location
	smpsJump	SylvCastle1_FM1

; FM2 Data
SylvCastle1_FM2:
;	Call At	 	location
	smpsCall	SylvCastle1_Call09
;	Call At	 	location
	smpsCall	SylvCastle1_Call0A
;	Call At	 	location
	smpsCall	SylvCastle1_Call0B
;	Call At	 	location
	smpsCall	SylvCastle1_Call0C
;	Call At	 	location
	smpsCall	SylvCastle1_Call0D
;	Call At	 	location
	smpsCall	SylvCastle1_Call0E
;	Call At	 	location
	smpsCall	SylvCastle1_Call0F
;	Call At	 	location
	smpsCall	SylvCastle1_Call10
;	Call At	 	location
	smpsCall	SylvCastle1_Call11
;	Jump To	 	location
	smpsJump	SylvCastle1_FM2

; FM3 Data
SylvCastle1_FM3:
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
;	Call At	 	location
	smpsCall	SylvCastle1_Call12
;	Call At	 	location
	smpsCall	SylvCastle1_Call13
;	Call At	 	location
	smpsCall	SylvCastle1_Call14
;	Call At	 	location
	smpsCall	SylvCastle1_Call15
;	Call At	 	location
	smpsCall	SylvCastle1_Call15
;	Call At	 	location
	smpsCall	SylvCastle1_Call15
;	Call At	 	location
	smpsCall	SylvCastle1_Call16
;	Call At	 	location
	smpsCall	SylvCastle1_Call17
;	Call At	 	location
	smpsCall	SylvCastle1_Call18
;	Jump To	 	location
	smpsJump	SylvCastle1_FM3

; FM4 Data
SylvCastle1_FM4:
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
;	Call At	 	location
	smpsCall	SylvCastle1_Call19
;	Call At	 	location
	smpsCall	SylvCastle1_Call1A
;	Call At	 	location
	smpsCall	SylvCastle1_Call1B
;	Call At	 	location
	smpsCall	SylvCastle1_Call1C
;	Call At	 	location
	smpsCall	SylvCastle1_Call1C
;	Call At	 	location
	smpsCall	SylvCastle1_Call1D
;	Call At	 	location
	smpsCall	SylvCastle1_Call1E
;	Call At	 	location
	smpsCall	SylvCastle1_Call1F
;	Call At	 	location
	smpsCall	SylvCastle1_Call20
;	Jump To	 	location
	smpsJump	SylvCastle1_FM4

; FM5 Data
SylvCastle1_FM5:
;	Call At	 	location
	smpsCall	SylvCastle1_Call21
;	Call At	 	location
	smpsCall	SylvCastle1_Call21
;	Call At	 	location
	smpsCall	SylvCastle1_Call22
;	Call At	 	location
	smpsCall	SylvCastle1_Call23
;	Call At	 	location
	smpsCall	SylvCastle1_Call24
;	Call At	 	location
	smpsCall	SylvCastle1_Call25
;	Call At	 	location
	smpsCall	SylvCastle1_Call26
;	Call At	 	location
	smpsCall	SylvCastle1_Call27
;	Call At	 	location
	smpsCall	SylvCastle1_Call28
;	Jump To	 	location
	smpsJump	SylvCastle1_FM5

; PSG1 Data
SylvCastle1_PSG1:
;	Set PSG WvForm	#
	smpsPSGform	$E7
;	Call At	 	location
	smpsCall	SylvCastle1_Call29
;	Call At	 	location
	smpsCall	SylvCastle1_Call2A
;	Call At	 	location
	smpsCall	SylvCastle1_Call2B
;	Call At	 	location
	smpsCall	SylvCastle1_Call2A
;	Call At	 	location
	smpsCall	SylvCastle1_Call2A
;	Call At	 	location
	smpsCall	SylvCastle1_Call2C
;	Call At	 	location
	smpsCall	SylvCastle1_Call2D
;	Call At	 	location
	smpsCall	SylvCastle1_Call2E
;	Call At	 	location
	smpsCall	SylvCastle1_Call2F
;	Jump To	 	location
	smpsJump	SylvCastle1_PSG1

; DAC Data
SylvCastle1_DAC:
;	Call At	 	location
	smpsCall	SylvCastle1_Call30
;	Call At	 	location
	smpsCall	SylvCastle1_Call31
;	Call At	 	location
	smpsCall	SylvCastle1_Call32
;	Call At	 	location
	smpsCall	SylvCastle1_Call33
;	Call At	 	location
	smpsCall	SylvCastle1_Call34
;	Call At	 	location
	smpsCall	SylvCastle1_Call35
;	Call At	 	location
	smpsCall	SylvCastle1_Call36
;	Call At	 	location
	smpsCall	SylvCastle1_Call37
;	Call At	 	location
	smpsCall	SylvCastle1_Call38
;	Jump To	 	location
	smpsJump	SylvCastle1_DAC

SylvCastle1_Call01:
;	Set FM Voice	#
	smpsFMvoice	$00
	smpsModSet	$10,	$01,	$02,	$04
	dc.b		nC4,	$08,	nD4,	$04,	nE4,	$03,	nRst,	$05
	dc.b		nC4,	$07,	nRst,	$01,	nG4,	$18,	nRst,	$04
	dc.b		nC5,	$02,	nBb4,	nA4,	nG4,	nBb4,	$08,	nA4
	dc.b		$04,	nF4,	$0C,	nRst,	$08,	nAb4,	nG4,	$04
	dc.b		nEb4,	$08,	nF4,	nRst,	$04
	smpsReturn

SylvCastle1_Call02:
	dc.b		nC4,	$08,	nD4,	$04,	nE4,	nRst,	nC4,	$08
	dc.b		nG4,	$18,	nRst,	$04,	nC5,	$02,	nBb4,	nA4
	dc.b		nG4,	nBb4,	$08,	nA4,	$04,	nF4,	$0C,	nRst
	dc.b		$08,	nAb4,	nG4,	$04,	nEb4,	$08,	nF4,	nRst
	dc.b		$04
	smpsReturn

SylvCastle1_Call03:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

SylvCastle1_Call04:
	dc.b		smpsNoAttack,	$20
;	Set FM Voice	#
	smpsFMvoice	$00
	dc.b		nG3,	$08,	nRst,	$04,	nE4,	$08,	nG3,	$04
	dc.b		nC4,	nE4,	$03,	nRst,	$01,	nD4,	$06,	nRst
	dc.b		$02,	nC4,	$06,	nRst,	$02,	nA3,	$06,	nRst
	dc.b		$02,	nG3,	$06,	nRst,	$02,	nF4,	$08,	nD4
	dc.b		$04,	nBb3,	$10,	nRst,	$04
	smpsReturn

SylvCastle1_Call05:
	dc.b		smpsNoAttack,	$20,	nG3,	$08,	nRst,	$04,	nE4,	$08
	dc.b		nG3,	$04,	nC4,	nE4,	$03,	nRst,	$01,	nC4
	dc.b		$06,	nRst,	$02,	nC4,	$06,	nRst,	$02,	nE4
	dc.b		$06,	nRst,	$02,	nG4,	$06,	nRst,	$02,	nF4
	dc.b		$1C,	nRst,	$04
	smpsReturn

SylvCastle1_Call06:
	dc.b		nC4,	$10,	nD4,	$08,	nB3,	$04,	nE4,	$08
	dc.b		nC4,	$02,	nRst,	nE4,	nRst,	nF4,	nRst,	nG4
	dc.b		$04,	nE4,	nC4,	nF4,	$08,	nE4,	$03,	nRst
	dc.b		$01,	nE4,	$06,	nRst,	$02,	nE4,	$04,	nC4
	dc.b		nA3,	nD4,	$08,	nC4,	$03,	nRst,	$01,	nC4
	dc.b		$06,	nRst,	$02,	nA3,	$04,	nB3,	nC4,	nE4
	smpsReturn

SylvCastle1_Call07:
	dc.b		smpsNoAttack,	$04,	nD4,	$03,	nRst,	$01,	nD4,	$0F
	dc.b		nRst,	$05,	nC4,	$08,	nE4,	$04,	nE4,	nC4
	dc.b		nA4,	nG4,	nRst,	nC4,	$08,	nC5,	$04,	nB4
	dc.b		nC4,	nA4,	nG4,	nRst,	nF4,	$08,	nE4,	$04
	dc.b		nC4,	nRst,	nF4,	nG4,	nF4,	nG4
	smpsReturn

SylvCastle1_Call08:
	dc.b		smpsNoAttack,	$02,	nRst,	nA4,	$04,	nA4,	nB4,	nRst
	dc.b		$10
	smpsReturn

SylvCastle1_Call09:
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC2,	$04,	nC3,	nC2,	nC3,	nC2,	nG2,	nC3
	dc.b		nBb2,	$08,	nG2,	$04,	nC2,	nBb2,	nG2,	nC2
	dc.b		nC3,	nD3,	nF2,	nD2,	nBb2,	nF2,	nD2,	nD3
	dc.b		nBb2,	nF2,	nEb2,	nAb2,	nC3,	nAb2,	nD3,	nBb2
	dc.b		$08,	nG2,	$04
	smpsReturn

SylvCastle1_Call0A:
	dc.b		nC2,	$04,	nC3,	nC2,	nC3,	nC2,	nG2,	nC3
	dc.b		nBb2,	$07,	nRst,	$01,	nG2,	$04,	nC2,	nBb2
	dc.b		nG2,	nC2,	nC3,	nD3,	nF2,	nD2,	nBb2,	nF2
	dc.b		nD2,	nD3,	nBb2,	nF2,	nEb2,	nAb2,	nC3,	nAb2
	dc.b		nD3,	nBb2,	$08,	nG2,	$04
	smpsReturn

SylvCastle1_Call0B:
	dc.b		nD2,	$04,	nRst,	$02,	nE2,	$04,	nRst,	$02
	dc.b		nF2,	$04,	nRst,	nG2,	$0C,	nC2,	$04,	nC3
	dc.b		nC2,	nC3,	nC2,	nE2,	nG2,	nC3,	nBb2,	$02
	dc.b		nBb2,	nG2,	$04,	nC2,	nBb2,	$02,	nBb2,	nG2
	dc.b		$04,	nC2,	nBb2,	nG2,	nF2,	$02,	nF2,	nBb2
	dc.b		$04,	nD2,	nF2,	nBb2,	nD3,	nBb2,	nF2
	smpsReturn

SylvCastle1_Call0C:
	dc.b		smpsNoAttack,	$02,	nRst,	nAb2,	nAb2,	nC3,	$04,	nAb2
	dc.b		nEb3,	nBb2,	$08,	nG2,	$04,	nC2,	nC3,	nC2
	dc.b		nC3,	nC2,	nE2,	nG2,	nC3,	nBb2,	$02,	nBb2
	dc.b		nG2,	$04,	nC2,	nBb2,	$02,	nBb2,	nG2,	$04
	dc.b		nC2,	nBb2,	nG2,	nF2,	$02,	nF2,	nBb2,	$04
	dc.b		nD2,	nF2,	nBb2,	nD3,	nBb2,	nF2
	smpsReturn

SylvCastle1_Call0D:
	dc.b		smpsNoAttack,	$02,	nRst,	nAb2,	nAb2,	nEb2,	$04,	nAb2
	dc.b		nC3,	nBb2,	nAb2,	$02,	nG2,	nF2,	nEb2,	nC2
	dc.b		$04,	nC3,	nC2,	nC3,	nC2,	nE2,	nG2,	nC3
	dc.b		nBb2,	$02,	nBb2,	nG2,	$04,	nC2,	nBb2,	$02
	dc.b		nBb2,	nG2,	$04,	nC2,	nBb2,	nG2,	nF2,	$02
	dc.b		nF2,	nBb2,	$04,	nD2,	nF2,	nBb2,	nD3,	nBb2
	dc.b		nF2
	smpsReturn

SylvCastle1_Call0E:
	dc.b		smpsNoAttack,	$02,	nRst,	nAb2,	nAb2,	nC3,	$04,	nAb2
	dc.b		nEb3,	nBb2,	$08,	nG2,	$04,	nC2,	nC3,	nC2
	dc.b		nC3,	nC2,	nE2,	nG2,	nC3,	nBb2,	$02,	nBb2
	dc.b		nG2,	$04,	nC2,	nBb2,	$02,	nBb2,	nG2,	$04
	dc.b		nC2,	nBb2,	nG2,	nBb2,	$02,	nBb2,	nF2,	$04
	dc.b		nD2,	nBb2,	$02,	nBb2,	nF2,	$04,	nD2,	nBb2
	dc.b		nF2
	smpsReturn

SylvCastle1_Call0F:
	dc.b		nRst,	$04,	nF2,	$02,	nF2,	nA2,	$04,	nF2
	dc.b		nC3,	nG2,	nF2,	nA1,	$08,	nA2,	$02,	nA2
	dc.b		nA1,	$04,	nA2,	$02,	nA2,	nA1,	$04,	nE2
	dc.b		$02,	nA2,	nG2,	nA2,	nC2,	$08,	nG2,	$02
	dc.b		nG2,	nC2,	$04,	nG2,	$02,	nG2,	nC2,	$04
	dc.b		nE2,	$02,	nG2,	nF2,	nG2,	nD2,	$08,	nA2
	dc.b		$02,	nA2,	nD2,	$04,	nA2,	$02,	nA2,	nD2
	dc.b		$04,	nFs2,	$02,	nA2,	nG2,	nA2,	nE2,	$04
	smpsReturn

SylvCastle1_Call10:
	dc.b		smpsNoAttack,	$04,	nG2,	$02,	nG2,	nE2,	$04,	nG2
	dc.b		$02,	nG2,	nE2,	$04,	nA2,	$02,	nG2,	nC3
	dc.b		nB2,	nA1,	$08,	nA2,	$02,	nA2,	nA1,	$04
	dc.b		nA2,	$02,	nA2,	nA1,	$04,	nE2,	$02,	nA2
	dc.b		nG2,	nA2,	nC2,	$08,	nG2,	$02,	nA2,	nC2
	dc.b		$04,	nG2,	$02,	nA2,	nC2,	$04,	nG2,	$02
	dc.b		nA2,	nC2,	nE2,	nF2,	$08,	nA2,	$02,	nA2
	dc.b		nF2,	$04,	nA2,	$02,	nE2,	nD2,	$04,	nFs2
	dc.b		$02,	nA2,	nG2,	nA2,	nG2,	$04
	smpsReturn

SylvCastle1_Call11:
	dc.b		smpsNoAttack,	$04,	nD2,	nA2,	nG2,	nRst,	$10
	smpsReturn

SylvCastle1_Call12:
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC5,	$06,	$08,	nRst,	$06,	nC5,	nRst,	$02
	dc.b		nBb4,	$08,	$06,	nRst,	$0A,	nBb4,	$08,	nRst
	dc.b		$04,	nBb4,	$06,	$08,	nRst,	$06,	nBb4,	$08
	dc.b		nRst,	$04,	nC5,	$0A,	nRst,	$02,	nC5,	$06
	dc.b		nRst,	$02,	nD5,	$08,	nRst,	$04
	smpsReturn

SylvCastle1_Call13:
	dc.b		nC5,	$06,	$08,	nRst,	$06,	nC5,	nRst,	$02
	dc.b		nBb4,	$08,	$06,	nRst,	$0A,	nBb4,	$08,	nRst
	dc.b		$04,	nBb4,	$06,	$08,	nRst,	$06,	nBb4,	$08
	dc.b		nRst,	$04,	nC5,	$0A,	nRst,	$02,	nC5,	$06
	dc.b		nRst,	$02,	nD5,	$08,	nRst,	$04
	smpsReturn

SylvCastle1_Call14:
	dc.b		nE5,	$05,	nRst,	$01,	nD5,	$05,	nRst,	$01
	dc.b		nA5,	$05,	nRst,	$03,	nG5,	$0C,	nC5,	$06
	dc.b		$08,	nRst,	$06,	nC5,	nRst,	$02,	nC5,	$04
	dc.b		nBb4,	$06,	$08,	nRst,	$06,	nBb4,	$08,	nRst
	dc.b		$04,	nBb4,	$06,	nBb4,	nRst,	$08,	nD5,	$06
	dc.b		nRst,	$02,	nD5,	$04
	smpsReturn

SylvCastle1_Call15:
	dc.b		nC5,	$08,	nRst,	$04,	nC5,	$06,	nRst,	$02
	dc.b		nD5,	$08,	nRst,	$04,	nC5,	$06,	$08,	nRst
	dc.b		$06,	nC5,	nRst,	$02,	nC5,	$04,	nBb4,	$06
	dc.b		$08,	nRst,	$06,	nBb4,	$08,	nRst,	$04,	nBb4
	dc.b		$06,	nBb4,	nRst,	$08,	nD5,	$06,	nRst,	$02
	dc.b		nD5,	$04
	smpsReturn

SylvCastle1_Call16:
	dc.b		nC5,	$08,	nF5,	$06,	nRst,	$02,	nD5,	$08
	dc.b		nB4,	$04,	nC5,	$08,	nA4,	$06,	nRst,	$0A
	dc.b		nC5,	$06,	nRst,	$02,	nE5,	$06,	nRst,	$02
	dc.b		nD5,	$04,	$08,	nC5,	$04,	nA4,	nG4,	nC5
	dc.b		$08,	nA4,	$06,	nRst,	nA4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nB4,	$04
	smpsReturn

SylvCastle1_Call17:
	dc.b		smpsNoAttack,	$04,	nRst,	nB4,	$08,	nD5,	$06,	nRst
	dc.b		$02,	nE5,	$04,	nC5,	$08,	nA4,	$04,	nRst
	dc.b		$0C,	nC5,	$06,	nRst,	$02,	nE5,	$08,	nC5
	dc.b		$04,	nRst,	$0C,	nB4,	$06,	nRst,	$02,	nC5
	dc.b		$08,	nA4,	$04,	nRst,	$08,	nA4,	$04,	nRst
	dc.b		$02,	nA4,	$04,	nRst,	$02,	nB4,	$04
	smpsReturn

SylvCastle1_Call18:
	dc.b		smpsNoAttack,	$02,	nRst,	nC5,	$04,	nC5,	nB4,	nRst
	dc.b		$10
	smpsReturn

SylvCastle1_Call19:
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nG4,	$06,	$08,	nRst,	$06,	nG4,	nRst,	$02
	dc.b		nE4,	$08,	$06,	nRst,	$0A,	nE4,	$08,	nRst
	dc.b		$04,	nF4,	$06,	nD4,	$08,	nRst,	$06,	nD4
	dc.b		$08,	nRst,	$04,	nEb4,	$0A,	nRst,	$02,	nEb4
	dc.b		$06,	nRst,	$02,	nF4,	$08,	nRst,	$04
	smpsReturn

SylvCastle1_Call1A:
	dc.b		nG4,	$06,	$08,	nRst,	$06,	nG4,	nRst,	$02
	dc.b		nE4,	$08,	$06,	nRst,	$0A,	nE4,	$08,	nRst
	dc.b		$04,	nF4,	$06,	nD4,	$08,	nRst,	$06,	nD4
	dc.b		$08,	nRst,	$04,	nEb4,	$0A,	nRst,	$02,	nEb4
	dc.b		$06,	nRst,	$02,	nF4,	$08,	nRst,	$04
	smpsReturn

SylvCastle1_Call1B:
	dc.b		nA4,	$05,	nRst,	$01,	nB4,	$05,	nRst,	$01
	dc.b		nC5,	$05,	nRst,	$03,	nB4,	$0C,	nG4,	$06
	dc.b		$08,	nRst,	$06,	nG4,	nRst,	$02,	nG4,	$04
	dc.b		nE4,	$06,	$08,	nRst,	$06,	nE4,	$08,	nRst
	dc.b		$04,	nF4,	$06,	nF4,	nRst,	$08,	nG4,	$06
	dc.b		nRst,	$02,	nG4,	$04
	smpsReturn

SylvCastle1_Call1C:
	dc.b		nAb4,	$08,	nRst,	$04,	nAb4,	$06,	nRst,	$02
	dc.b		nBb4,	$08,	nRst,	$04,	nG4,	$06,	$08,	nRst
	dc.b		$06,	nG4,	nRst,	$02,	nG4,	$04,	nE4,	$06
	dc.b		$08,	nRst,	$06,	nE4,	$08,	nRst,	$04,	nF4
	dc.b		$06,	nF4,	nRst,	$08,	nG4,	$06,	nRst,	$02
	dc.b		nG4,	$04
	smpsReturn

SylvCastle1_Call1D:
	dc.b		nAb4,	$08,	nRst,	$04,	nAb4,	$06,	nRst,	$02
	dc.b		nBb4,	$08,	nRst,	$04,	nG4,	$06,	$08,	nRst
	dc.b		$06,	nG4,	nRst,	$02,	nG4,	$04,	nE4,	$06
	dc.b		$08,	nRst,	$06,	nE4,	$08,	nRst,	$04,	nF4
	dc.b		$06,	nF4,	nRst,	$08,	nF4,	$06,	nRst,	$02
	dc.b		nF4,	$04
	smpsReturn

SylvCastle1_Call1E:
	dc.b		nA4,	$08,	nC5,	$06,	nRst,	$02,	nG4,	$08
	dc.b		nE4,	$04,	nG4,	$08,	nE4,	$06,	nRst,	$0A
	dc.b		nE4,	$06,	nRst,	$02,	nC5,	$06,	nRst,	$02
	dc.b		nG4,	$04,	$08,	$04,	nF4,	nE4,	nF4,	$08
	dc.b		$06,	nRst,	nF4,	$04,	nRst,	$02,	nA4,	$04
	dc.b		nRst,	$02,	nG4,	$04
	smpsReturn

SylvCastle1_Call1F:
	dc.b		smpsNoAttack,	$04,	nRst,	nG4,	$08,	nF4,	$06,	nRst
	dc.b		$02,	nA4,	$04,	nG4,	$08,	nE4,	$04,	nRst
	dc.b		$0C,	nE4,	$06,	nRst,	$02,	nE4,	$08,	$04
	dc.b		nRst,	$0C,	nG4,	$06,	nRst,	$02,	nF4,	$08
	dc.b		$04,	nRst,	$08,	nF4,	$04,	nRst,	$02,	nF4
	dc.b		$04,	nRst,	$02,	nG4,	$04
	smpsReturn

SylvCastle1_Call20:
	dc.b		smpsNoAttack,	$02,	nRst,	nG4,	$04,	nE4,	nF4,	nRst
	dc.b		$10
	smpsReturn

SylvCastle1_Call21:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

SylvCastle1_Call22:
	dc.b		smpsNoAttack,	$20
;	Set FM Voice	#
	smpsFMvoice	$03
	smpsModSet	$10,	$01,	$02,	$04		
	dc.b		nC4,	$08,	nRst,	$04,	nG4,	$08,	nC4,	$04
	dc.b		nE4,	$02,	nRst,	nG4,	nRst,	nF4,	$06,	nRst
	dc.b		$02,	nE4,	$06,	nRst,	$02,	nD4,	$06,	nRst
	dc.b		$02,	nC4,	$06,	nRst,	$02,	nBb4,	$08,	nA4
	dc.b		$03,	nRst,	$01,	nF4,	$10,	nRst,	$04
	smpsReturn

SylvCastle1_Call23:
	dc.b		smpsNoAttack,	$20,	nC4,	$08,	nRst,	$04,	nG4,	$08
	dc.b		nC4,	$04,	nE4,	$02,	nRst,	nG4,	nRst,	nF4
	dc.b		$06,	nRst,	$02,	nE4,	$06,	nRst,	$02,	nG4
	dc.b		$06,	nRst,	$02,	nC5,	$06,	nRst,	$02,	nBb4
	dc.b		$08,	nC5,	$03,	nRst,	$01,	nBb4,	$10,	nRst
	dc.b		$04
	smpsReturn

SylvCastle1_Call24:
	dc.b		smpsNoAttack,	$20,	nC4,	$08,	nRst,	$04,	nG4,	$08
	dc.b		nC4,	$04,	nE4,	nG4,	$03,	nRst,	$01,	nF4
	dc.b		$06,	nRst,	$02,	nE4,	$06,	nRst,	$02,	nD4
	dc.b		$06,	nRst,	$02,	nC4,	$06,	nRst,	$02,	nBb4
	dc.b		$08,	nA4,	$04,	nF4,	$10,	nRst,	$04
	smpsReturn

SylvCastle1_Call25:
	dc.b		smpsNoAttack,	$20,	nC4,	$08,	nRst,	$04,	nG4,	$08
	dc.b		nC4,	$04,	nE4,	nG4,	$03,	nRst,	$01,	nF4
	dc.b		$06,	nRst,	$02,	nE4,	$06,	nRst,	$02,	nG4
	dc.b		$06,	nRst,	$02,	nC5,	$06,	nRst,	$02,	nBb4
	dc.b		$1C,	nRst,	$04
	smpsReturn

SylvCastle1_Call26:
	dc.b		nA4,	$10,	nG4,	$08,	nF4,	$04,	nG4,	$08
	dc.b		nE4,	$02,	nRst,	nG4,	nRst,	nA4,	nRst,	nC5
	dc.b		$04,	nB4,	nG4,	nA4,	$08,	nG4,	$03,	nRst
	dc.b		$01,	nG4,	$06,	nRst,	$02,	nG4,	$04,	nF4
	dc.b		nE4,	nF4,	$08,	nE4,	$03,	nRst,	$01,	nE4
	dc.b		$06,	nRst,	$02,	nC4,	$04,	nD4,	nE4,	nA4
	smpsReturn

SylvCastle1_Call27:
	dc.b		smpsNoAttack,	$04,	nG4,	$03,	nRst,	$01,	nG4,	$10
	dc.b		nRst,	$04,	nE4,	$08,	nA4,	$04,	nG4,	nE4
	dc.b		nC5,	nB4,	nRst,	nE4,	$08,	nE5,	$04,	nD5
	dc.b		nE4,	nC5,	nB4,	nRst,	nA4,	$08,	nG4,	$04
	dc.b		nF4,	nRst,	nA4,	nB4,	nC5,	nE5
	smpsReturn

SylvCastle1_Call28:
	dc.b		smpsNoAttack,	$02,	nRst,	nE5,	$04,	nE5,	nD5,	nRst
	dc.b		$10
	smpsReturn

SylvCastle1_Call29:
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	$04,	$02,	$04
	dc.b		$02,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	$04,	$02,	$04,	$02
	dc.b		nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nCs0,	$04,	$02,	$04,	$02,	nRst
	dc.b		nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	$04,	$02,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	smpsReturn

SylvCastle1_Call2A:
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	$04,	$02,	$04
	dc.b		$02,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	$04,	$02,	$04,	$02
	dc.b		nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nCs0,	$04,	$02,	$04,	$02,	nRst
	dc.b		nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nCs0,	$04,	$02,	$04,	$02,	nRst,	nCs0
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nRst
	smpsReturn

SylvCastle1_Call2B:
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$04,	nCs0,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$02,	nRst,	nCs0
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nCs0,	$04
	dc.b		$02,	$04,	$02,	nRst,	nCs0,	nCs0,	nCs0,	nRst
	dc.b		nCs0,	nRst,	nCs0,	nRst,	nCs0,	nCs0,	$04,	$02
	dc.b		$04,	$02,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nCs0,	$04,	$02,	$04
	dc.b		$02,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	smpsReturn

SylvCastle1_Call2C:
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	$04,	$02,	nCs0
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nCs0,	$04,	$02,	$04
	dc.b		$02,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	$04,	$02,	$04,	$02
	dc.b		nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nCs0,	$04,	$02,	$04,	$02,	nRst
	dc.b		nCs0,	nCs0,	nCs0,	nRst,	nCs0,	nRst
	smpsReturn

SylvCastle1_Call2D:
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nCs0,	nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	$06,	nRst,	$02,	nCs0
	dc.b		nCs0,	nRst,	nRst,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	nCs0,	nRst,	nCs0,	$06,	nRst,	$02
	dc.b		nCs0,	nCs0,	nRst,	nRst,	nCs0,	nRst,	$04,	nCs0
	dc.b		$02,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	$06,	nRst
	dc.b		$02,	nCs0,	nCs0,	nRst,	nRst,	nCs0,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst
	smpsReturn

SylvCastle1_Call2E:
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	$06,	nRst,	$02,	nCs0
	dc.b		nCs0,	nRst,	nRst,	nCs0,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	nCs0,	nRst,	nCs0,	$06,	nRst,	$02
	dc.b		nCs0,	nCs0,	nRst,	nRst,	nCs0,	nRst,	$04,	nCs0
	dc.b		$02,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	$06,	nRst
	dc.b		$02,	nCs0,	nCs0,	nRst,	nRst,	nCs0,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	$06
	dc.b		nRst,	$02,	nCs0,	nCs0,	nRst,	nRst,	nCs0,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nRst
	smpsReturn

SylvCastle1_Call2F:
	dc.b		smpsNoAttack,	$04
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	nCs0,	nRst,	nCs0,	nRst,	$04
	dc.b		$02,	nCs0,	nRst,	$04,	$02,	nCs0,	nRst
	smpsReturn

SylvCastle1_Call30:
	dc.b		nRst,	$08,	dSnareS1,	$06,	$02,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnareS1,	nRst,	$06,	dKick,	$02,	nRst,	$06
	dc.b		dSnareS1,	dSnareS1,	$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	$06,	dSnareS1,	dSnareS1
	dc.b		$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1,	nRst,	dKick
	dc.b		nRst,	dSnareS1,	nRst,	dKick,	nRst,	dKick,	$04,	dSnareS1
	dc.b		$02,	nRst,	dKick,	nRst,	dSnareS1,	dSnareS1,	dSnareS1,	dSnareS1
	dc.b		dSnareS1,	dSnareS1
	smpsReturn

SylvCastle1_Call31:
	dc.b		dKick,	$02,	nRst,	$06,	dSnareS1,	dSnareS1,	$02,	dKick
	dc.b		nRst,	dKick,	nRst,	dSnareS1,	nRst,	$06,	dKick,	$02
	dc.b		nRst,	$06,	dSnareS1,	dSnareS1,	$02,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnareS1,	nRst,	$06,	dKick,	$02,	nRst,	$06
	dc.b		dSnareS1,	dSnareS1,	$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	$06,	dSnareS1,	dSnareS1
	dc.b		$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1,	nRst,	dSnareS1
	dc.b		nRst
	smpsReturn

SylvCastle1_Call32:
	dc.b		dSnareS1,	$02,	nRst,	$04,	dSnareS1,	$02,	nRst,	$04
	dc.b		dSnareS1,	$02,	nRst,	$06,	dSnareS1,	$02,	dSnareS1,	dSnareS1
	dc.b		dSnareS1,	dSnareS1,	dSnareS1,	$0A,	$06,	$02,	dKick,	nRst
	dc.b		dKick,	nRst,	dSnareS1,	nRst,	$06,	dKick,	$02,	nRst
	dc.b		$06,	dSnareS1,	dSnareS1,	$02,	dKick,	nRst,	dKick,	nRst
	dc.b		dSnareS1,	nRst,	$06,	dKick,	$02,	nRst,	$06,	dSnareS1
	dc.b		dSnareS1,	$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1,	nRst
	dc.b		$06
	smpsReturn

SylvCastle1_Call33:
	dc.b		dKick,	$02,	nRst,	$06,	dSnareS1,	dSnareS1,	$02,	dKick
	dc.b		nRst,	dKick,	nRst,	dSnareS1,	nRst,	dSnareS1,	dSnareS1,	dKick
	dc.b		nRst,	$06,	dSnareS1,	dSnareS1,	$02,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnareS1,	nRst,	$06,	dKick,	$02,	nRst,	$06
	dc.b		dSnareS1,	dSnareS1,	$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	$06,	dSnareS1,	dSnareS1
	dc.b		$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1,	nRst,	$06
	smpsReturn

SylvCastle1_Call34:
	dc.b		dKick,	$02,	nRst,	$06,	dSnareS1,	dSnareS1,	$02,	dKick
	dc.b		nRst,	dSnareS1,	nRst,	dSnareS1,	dSnareS1,	dSnareS1,	nRst,	dKick
	dc.b		nRst,	$06,	dSnareS1,	dSnareS1,	$02,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnareS1,	nRst,	$06,	dKick,	$02,	nRst,	$06
	dc.b		dSnareS1,	dSnareS1,	$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	$06,	dSnareS1,	dSnareS1
	dc.b		$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1,	nRst,	$06
	smpsReturn

SylvCastle1_Call35:
	dc.b		dKick,	$02,	nRst,	$06,	dSnareS1,	$08,	dKick,	$02
	dc.b		nRst,	dSnareS1,	nRst,	dSnareS1,	dSnareS1,	dSnareS1,	nRst,	dKick
	dc.b		nRst,	$06,	dSnareS1,	dSnareS1,	$02,	dKick,	nRst,	dKick
	dc.b		nRst,	dSnareS1,	nRst,	$06,	dKick,	$02,	nRst,	$06
	dc.b		dSnareS1,	dSnareS1,	$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1
	dc.b		nRst,	$06,	dKick,	$02,	nRst,	$06,	dSnareS1,	dSnareS1
	dc.b		$02,	dKick,	nRst,	dKick,	nRst,	dSnareS1,	nRst,	$06
	smpsReturn

SylvCastle1_Call36:
	dc.b		dKick,	$02,	nRst,	$06,	dSnareS1,	$02,	nRst,	$04
	dc.b		dSnareS1,	$02,	dKick,	dSnareS1,	dKick,	dSnareS1,	dSnareS1,	nRst
	dc.b		$06,	dKick,	$02,	nRst,	$04,	dKick,	$02,	dSnareS1
	dc.b		$06,	$02,	dKick,	$04,	$02,	nRst,	dSnareS1,	$08
	dc.b		dKick,	$02,	nRst,	$04,	dKick,	$02,	dSnareS1,	$06
	dc.b		$02,	dKick,	$04,	$02,	nRst,	dSnareS1,	$08,	dKick
	dc.b		$02,	nRst,	$04,	dKick,	$02,	dSnareS1,	$06,	$02
	dc.b		dKick,	$04,	$02,	nRst,	dSnareS1,	$08
	smpsReturn

SylvCastle1_Call37:
	dc.b		dKick,	$02,	nRst,	$04,	dKick,	$02,	dSnareS1,	$06
	dc.b		$02,	dKick,	$04,	$02,	nRst,	dSnareS1,	$08,	dKick
	dc.b		$02,	nRst,	$04,	dKick,	$02,	dSnareS1,	$06,	$02
	dc.b		dKick,	$04,	$02,	nRst,	dSnareS1,	$08,	dKick,	$02
	dc.b		nRst,	$04,	dKick,	$02,	dSnareS1,	$06,	$02,	dKick
	dc.b		$04,	$02,	nRst,	dSnareS1,	$08,	dKick,	$02,	nRst
	dc.b		$04,	dKick,	$02,	dSnareS1,	$06,	$02,	dKick,	$04
	dc.b		$02,	nRst,	dSnareS1,	$04,	dKick,	$02,	nRst
	smpsReturn

SylvCastle1_Call38:
	dc.b		nRst,	$04,	dSnareS1,	$02,	nRst,	dKick,	nRst,	dSnareS1
	dc.b		nRst,	dSnareS1,	$04,	dKick,	$02,	dKick,	dSnareS1,	$04
	dc.b		dKick,	$02,	nRst
	smpsReturn

SylvCastle1_Voices:
	dc.b		$3D,$01,$01,$03,$01,$50,$52,$58,$59,$0F,$02,$02,$02,$04,$00,$00
	dc.b		$00,$17,$09,$19,$19,$13,$1C,$24,$10;			Voice 00
	dc.b		$3A,$31,$20,$01,$E1,$8F,$8F,$8E,$54,$0E,$03,$0E,$03,$00,$00,$00
	dc.b		$00,$13,$F3,$13,$0A,$17,$21,$19,$0E;			Voice 01
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$14;			Voice 02
	dc.b		$3D,$12,$14,$12,$11,$50,$1B,$1B,$1A,$0F,$0A,$0A,$0A,$05,$07,$08
	dc.b		$06,$1F,$1F,$1F,$1F,$15,$1A,$0F,$0F;			Voice 03
	even
