; =============================================================================================
; Project Name:		Sylvcastleact2
; Created:		18th December 2015
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Sylvcastleact2_Header:
;	Voice Pointer	location
	smpsHeaderVoice	Sylvcastleact2_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$05,	$02
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$02,	$03

;	DAC Pointer	location
	smpsHeaderDAC	Sylvcastleact2_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	Sylvcastleact2_FM1,	smpsPitch00,	$00
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	Sylvcastleact2_FM2,	smpsPitch00,	$00
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	Sylvcastleact2_FM3,	smpsPitch00,	$00
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	Sylvcastleact2_FM4,	smpsPitch00,	$00
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Sylvcastleact2_PSG1,	smpsPitch03lo,	$06,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Sylvcastleact2_PSG2,	smpsPitch03lo,	$06,	$00

; FM1 Data
Sylvcastleact2_FM1:
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call01
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call01
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call02
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call03
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call04
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call05
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call06
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call07
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call08
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call09
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call0A
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call0B
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call0C
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call0D
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call0E
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call0F
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call10
;	Jump To	 	location
	smpsJump	Sylvcastleact2_FM1

; FM2 Data
Sylvcastleact2_FM2:
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call11
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call11
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call12
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call13
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call14
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call15
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call16
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call17
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call18
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call19
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call1A
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call1B
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call1C
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call1D
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call1E
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call1F
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call20
;	Jump To	 	location
	smpsJump	Sylvcastleact2_FM2

; FM3 Data
Sylvcastleact2_FM3:
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call21
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call22
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call23
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call24
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call25
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call26
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call27
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call27
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call28
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call29
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call2A
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call2B
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call2C
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call2D
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call2E
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call27
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call2F
;	Jump To	 	location
	smpsJump	Sylvcastleact2_FM3

; FM4 Data
Sylvcastleact2_FM4:
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call30
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call31
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call32
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call33
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call34
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call35
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call36
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call37
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call38
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call39
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call3A
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call3B
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call3C
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call3D
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call3E
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call3F
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call40
;	Jump To	 	location
	smpsJump	Sylvcastleact2_FM4

; PSG1 Data
Sylvcastleact2_PSG1:
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call41
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call42
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call43
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call44
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call45
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call46
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call47
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call48
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call49
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call4A
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call4B
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call4C
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call4D
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call4E
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call4F
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call50
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call51
;	Jump To	 	location
	smpsJump	Sylvcastleact2_PSG1

; PSG2 Data
Sylvcastleact2_PSG2:
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call52
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call53
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call54
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call55
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call56
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call57
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call58
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call59
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call5A
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call5B
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call5C
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call5D
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call5E
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call5F
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call60
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call61
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call62
;	Jump To	 	location
	smpsJump	Sylvcastleact2_PSG2

; DAC Data
Sylvcastleact2_DAC:
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call63
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call64
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call65
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call66
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call65
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call67
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call68
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call69
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call6A
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call6B
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call6C
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call65
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call6D
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call6E
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call6F
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call70
;	Call At	 	location
	smpsCall	Sylvcastleact2_Call71
;	Jump To	 	location
	smpsJump	Sylvcastleact2_DAC

Sylvcastleact2_Call01:
;	Set FM Voice	#
	smpsFMvoice	$05
	dc.b		nE2,	$08,	nB1,	$04,	$02,	nE2,	nRst,	nD2
	dc.b		$04,	nD2,	nA1,	$02,	nD2,	nA2,	nD2,	$08
	dc.b		nA1,	$06,	nD2,	$02,	nRst,	nC2,	$04,	nC2
	dc.b		nG1,	$02,	nC2,	nG2,	nC2,	$08,	nE2,	$04
	dc.b		nG2,	$02,	nC2,	nD2,	nRst,	nB1,	nB1,	nD2
	dc.b		$04,	nC2,	$02,	nD2,	nE2,	$06,	nRst,	$02
	dc.b		nD2,	$06,	nRst,	$02,	nC2,	$06,	nRst,	$02
	dc.b		nB1,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call02:
	dc.b		nE2,	$04,	nB1,	$02,	nE1,	nRst,	nB1,	nE2
	dc.b		nB2,	nRst,	nE2,	nRst,	nE2,	nB1,	$04,	nE1
	dc.b		$02,	nA2,	nD2,	$04,	nA1,	$02,	nD1,	nRst
	dc.b		nA1,	nD2,	nA2,	nRst,	nD2,	nRst,	nD2,	nA1
	dc.b		nD2,	nA2,	nD3,	nG2,	$04,	nD2,	$02,	nG1
	dc.b		nRst,	nD2,	nG2,	nD3,	nRst,	nG2,	nRst,	nG2
	dc.b		nD2,	nG1,	nD2,	nG2,	nE2,	$04,	nB1,	$02
	dc.b		nB2,	nRst,	nD2,	nG2,	$04,	nC2,	nG1,	$02
	dc.b		nE2,	nC2,	nG2,	nE2,	nD2
	smpsReturn

Sylvcastleact2_Call03:
	dc.b		nC2,	$04,	nG2,	$02,	nC2,	nRst,	nG2,	nC2
	dc.b		nG2,	nRst,	nC2,	nRst,	nC2,	nG2,	$04,	nC2
	dc.b		$02,	nG2,	nD2,	$04,	nA1,	$02,	nD1,	nRst
	dc.b		nD2,	nFs2,	nA2,	nRst,	nD2,	nRst,	nD2,	nA1
	dc.b		nD2,	nFs2,	nD3,	nE2,	$04,	nB1,	$02,	nE1
	dc.b		nRst,	nB1,	nE2,	nB2,	nRst,	nE2,	nRst,	nE2
	dc.b		nB1,	nE1,	nB1,	nE2,	nEb2,	$04,	nB1,	$02
	dc.b		nB2,	nRst,	nEb2,	nFs2,	$04,	nB1,	nEb2,	$02
	dc.b		nFs2,	nA2,	nG2,	nFs2,	nEb2
	smpsReturn

Sylvcastleact2_Call04:
	dc.b		nE2,	$04,	nB1,	$02,	nE1,	nRst,	nB1,	nE2
	dc.b		nB2,	nRst,	nE2,	nRst,	nE2,	nB1,	$04,	nE1
	dc.b		$02,	nA2,	nD2,	$04,	nA1,	$02,	nD1,	nRst
	dc.b		nA1,	nD2,	nA2,	nRst,	nD2,	nRst,	nD2,	nA1
	dc.b		nD2,	nA2,	nD3,	nG2,	$04,	nD2,	$02,	nG1
	dc.b		nRst,	nD2,	nG2,	nD3,	nRst,	nG2,	nRst,	nG2
	dc.b		nD2,	nG1,	nD2,	nA2,	nG2,	$04,	nD2,	$02
	dc.b		nB2,	nRst,	nB1,	nG2,	$04,	nE2,	nG2,	$02
	dc.b		nD3,	nC3,	nB2,	nA2,	nG2
	smpsReturn

Sylvcastleact2_Call05:
	dc.b		nC2,	$04,	nG2,	$02,	nC2,	nRst,	nG2,	nC2
	dc.b		nG2,	nRst,	nC2,	nRst,	nC2,	nG2,	$04,	nC2
	dc.b		$02,	nG2,	nD2,	$04,	nA1,	$02,	nD1,	nRst
	dc.b		nA1,	nD2,	nA2,	nRst,	nD2,	nRst,	nD2,	nA1
	dc.b		nD2,	nA2,	nD3,	nE2,	$04,	nB1,	$02,	nE1
	dc.b		nRst,	nB1,	nE2,	nB2,	nRst,	nE2,	nRst,	nE2
	dc.b		nB1,	$04,	nE1,	$02,	nFs2,	nE2,	$04,	nB1
	dc.b		$02,	nFs2,	nRst,	nG2,	nA2,	nRst,	nB1,	nEb2
	dc.b		nFs2,	nB2,	nD3,	nB2,	nA2,	nAb2
	smpsReturn

Sylvcastleact2_Call06:
	dc.b		nF2,	$04,	nA2,	$02,	nF2,	nRst,	nC2,	nF2
	dc.b		$04,	nF1,	nA1,	$02,	nC2,	nF2,	nA2,	nF2
	dc.b		nC2,	nE2,	$04,	nD2,	$02,	nE2,	nRst,	nG2
	dc.b		nD2,	nE2,	nG2,	$06,	nRst,	$02,	nE2,	$04
	dc.b		nD2,	nB1,	nD2,	$02,	nB1,	nRst,	nFs2,	nB1
	dc.b		$04,	nD2,	nD2,	nE2,	nFs2,	nE2,	$06,	nRst
	dc.b		$02,	nD2,	$06,	nRst,	$02,	nCs2,	$06,	nRst
	dc.b		$02,	nAb2,	$08
	smpsReturn

Sylvcastleact2_Call07:
	dc.b		nF1,	$04,	nF2,	$02,	nC2,	nRst,	nC2,	nF2
	dc.b		$04,	nF1,	nA1,	$02,	nC2,	nF2,	nA2,	nF2
	dc.b		nC2,	nE2,	$04,	nD2,	$02,	nE2,	nRst,	nG2
	dc.b		nD2,	nE2,	nB2,	$04,	nG2,	nE2,	nD2,	nB1
	dc.b		nD2,	$02,	nB1,	nRst,	nFs2,	nB1,	$04,	nD2
	dc.b		nD2,	nEb2,	nFs2,	nE2,	nRst,	$02,	nD2,	$04
	dc.b		nRst,	$02,	nE2,	$04,	nG2,	nD2,	nE2,	$08
	smpsReturn

Sylvcastleact2_Call08:
	dc.b		smpsNoAttack,	$04,	nE2,	nC2,	nB1,	nE2,	$08,	nB1
	dc.b		$04,	$02,	nE2,	nRst,	nD2,	$04,	nD2,	nA1
	dc.b		$02,	nD2,	nA2,	nD2,	$08,	nA1,	$06,	nD2
	dc.b		$02,	nRst,	nC2,	$04,	nC2,	nG1,	$02,	nC2
	dc.b		nG2,	nC2,	$08,	nE2,	$04,	nG2,	$02,	nC2
	dc.b		nD2,	nRst,	nB1,	nB1,	nD2,	$04,	nC2,	$02
	dc.b		nD2,	nE2,	$06,	nRst,	$02,	nD2,	$06,	nRst
	dc.b		$02
	smpsReturn

Sylvcastleact2_Call09:
	dc.b		nC2,	$06,	nRst,	$02,	nB1,	$06,	nRst,	$02
	dc.b		nE2,	$08,	nB1,	$04,	$02,	nE2,	nRst,	nD2
	dc.b		$04,	nD2,	nA1,	$02,	nD2,	nA2,	nD2,	$08
	dc.b		nA1,	$06,	nD2,	$02,	nRst,	nC2,	$04,	nC2
	dc.b		nG1,	$02,	nC2,	nG2,	nC2,	$08,	nE2,	$04
	dc.b		nG2,	$02,	nC2,	nD2,	nRst,	nB1,	nB1,	nD2
	dc.b		$04,	nC2,	$02,	nD2,	nE2,	$06,	nRst,	$02
	dc.b		nD2,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call0A:
	dc.b		nC2,	$06,	nRst,	$02,	nB1,	$06,	nRst,	$02
	dc.b		nE2,	$04,	nB1,	$02,	nE1,	nRst,	nB1,	nE2
	dc.b		nB2,	nRst,	nE2,	nRst,	nE2,	nB1,	$04,	nE1
	dc.b		$02,	nA2,	nD2,	$04,	nA1,	$02,	nD1,	nRst
	dc.b		nA1,	nD2,	nA2,	nRst,	nD2,	nRst,	nD2,	nA1
	dc.b		nD2,	nA2,	nD3,	nG2,	$04,	nD2,	$02,	nG1
	dc.b		nRst,	nD2,	nG2,	nD3,	nRst,	nG2,	nRst,	nG2
	dc.b		nD2,	nG1,	nD2,	nG2,	nE2,	$04,	nB1,	$02
	dc.b		nB2,	nRst,	nD2,	nG2,	$04
	smpsReturn

Sylvcastleact2_Call0B:
	dc.b		nC2,	$04,	nG1,	$02,	nE2,	nC2,	nG2,	nE2
	dc.b		nD2,	nC2,	$04,	nG2,	$02,	nC2,	nRst,	nG2
	dc.b		nC2,	nG2,	nRst,	nC2,	nRst,	nC2,	nG2,	$04
	dc.b		nC2,	$02,	nG2,	nD2,	$04,	nA1,	$02,	nD1
	dc.b		nRst,	nD2,	nFs2,	nA2,	nRst,	nD2,	nRst,	nD2
	dc.b		nA1,	nD2,	nFs2,	nD3,	nE2,	$04,	nB1,	$02
	dc.b		nE1,	nRst,	nB1,	nE2,	nB2,	nRst,	nE2,	nRst
	dc.b		nE2,	nB1,	nE1,	nB1,	nE2,	nEb2,	$04,	nB1
	dc.b		$02,	nB2,	nRst,	nEb2,	nFs2,	$04
	smpsReturn

Sylvcastleact2_Call0C:
	dc.b		nB1,	$04,	nEb2,	$02,	nFs2,	nA2,	nG2,	nFs2
	dc.b		nEb2,	nE2,	$04,	nB1,	$02,	nE1,	nRst,	nB1
	dc.b		nE2,	nB2,	nRst,	nE2,	nRst,	nE2,	nB1,	$04
	dc.b		nE1,	$02,	nA2,	nD2,	$04,	nA1,	$02,	nD1
	dc.b		nRst,	nA1,	nD2,	nA2,	nRst,	nD2,	nRst,	nD2
	dc.b		nA1,	nD2,	nA2,	nD3,	nG2,	$04,	nD2,	$02
	dc.b		nG1,	nRst,	nD2,	nG2,	nD3,	nRst,	nG2,	nRst
	dc.b		nG2,	nD2,	nG1,	nD2,	nA2,	nG2,	$04,	nD2
	dc.b		$02,	nB2,	nRst,	nB1,	nG2,	$04
	smpsReturn

Sylvcastleact2_Call0D:
	dc.b		nE2,	$04,	nG2,	$02,	nD3,	nC3,	nB2,	nA2
	dc.b		nG2,	nC2,	$04,	nG2,	$02,	nC2,	nRst,	nG2
	dc.b		nC2,	nG2,	nRst,	nC2,	nRst,	nC2,	nG2,	$04
	dc.b		nC2,	$02,	nG2,	nD2,	$04,	nA1,	$02,	nD1
	dc.b		nRst,	nA1,	nD2,	nA2,	nRst,	nD2,	nRst,	nD2
	dc.b		nA1,	nD2,	nA2,	nD3,	nE2,	$04,	nB1,	$02
	dc.b		nE1,	nRst,	nB1,	nE2,	nB2,	nRst,	nE2,	nRst
	dc.b		nE2,	nB1,	$04,	nE1,	$02,	nFs2,	nE2,	$04
	dc.b		nB1,	$02,	nFs2,	nRst,	nG2,	nA2,	nRst
	smpsReturn

Sylvcastleact2_Call0E:
	dc.b		nB1,	$02,	nEb2,	nFs2,	nB2,	nD3,	nB2,	nA2
	dc.b		nAb2,	nF2,	$04,	nA2,	$02,	nF2,	nRst,	nC2
	dc.b		nF2,	$04,	nF1,	nA1,	$02,	nC2,	nF2,	nA2
	dc.b		nF2,	nC2,	nE2,	$04,	nD2,	$02,	nE2,	nRst
	dc.b		nG2,	nD2,	nE2,	nG2,	$06,	nRst,	$02,	nE2
	dc.b		$04,	nD2,	nB1,	nD2,	$02,	nB1,	nRst,	nFs2
	dc.b		nB1,	$04,	nD2,	nD2,	nE2,	nFs2,	nE2,	$06
	dc.b		nRst,	$02,	nD2,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call0F:
	dc.b		nCs2,	$06,	nRst,	$02,	nAb2,	$08,	nF1,	$04
	dc.b		nF2,	$02,	nC2,	nRst,	nC2,	nF2,	$04,	nF1
	dc.b		nA1,	$02,	nC2,	nF2,	nA2,	nF2,	nC2,	nE2
	dc.b		$04,	nD2,	$02,	nE2,	nRst,	nG2,	nD2,	nE2
	dc.b		nB2,	$04,	nG2,	nE2,	nD2,	nB1,	nD2,	$02
	dc.b		nB1,	nRst,	nFs2,	nB1,	$04,	nD2,	nD2,	nEb2
	dc.b		nFs2,	nE2,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nE2,	$04
	smpsReturn

Sylvcastleact2_Call10:
	dc.b		nG2,	$04,	nD2,	nE2,	$0C,	$04,	nC2,	nB1
	smpsReturn

Sylvcastleact2_Call11:
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE4,	$02,	nB3,	nFs4,	nRst,	nG4,	$04,	nB4
	dc.b		nA4,	$06,	nD4,	$08,	nRst,	$02,	nD4,	nA3
	dc.b		nE4,	nRst,	nFs4,	$04,	nA4,	nG4,	$06,	nC4
	dc.b		$08,	nRst,	$02,	nC4,	nG3,	nD4,	nRst,	nE4
	dc.b		$04,	nG4,	nFs4,	$06,	nG4,	nA4,	$04,	nG4
	dc.b		$06,	nRst,	$02,	nFs4,	$06,	nRst,	$02,	nE4
	dc.b		$06,	nRst,	$02,	nD4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call12:
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE4,	$0C,	nB4,	$08,	nE4,	$04,	nG4,	nB4
	dc.b		nA4,	$06,	nD4,	nD5,	$08,	nC5,	$04,	nB4
	dc.b		nA4,	nB4,	$0C,	nG4,	$30,	nRst,	$04
	smpsReturn

Sylvcastleact2_Call13:
	dc.b		nC4,	$0C,	nE4,	$08,	nC5,	$04,	nB4,	nA4
	dc.b		nB4,	$06,	nA4,	$04,	nRst,	$02,	nG4,	$08
	dc.b		nFs4,	$04,	nG4,	nA4,	nG4,	$0C,	nFs4,	$0A
	dc.b		nRst,	$02,	nE4,	$04,	nFs4,	$02,	nE4,	nEb4
	dc.b		$06,	nFs4,	$04,	nRst,	$02,	nA4,	$10,	nRst
	dc.b		$04
	smpsReturn

Sylvcastleact2_Call14:
	dc.b		nE4,	$0C,	nB4,	$08,	nE4,	$04,	nG4,	nB4
	dc.b		nA4,	$06,	nRst,	$02,	nG4,	$06,	nRst,	$02
	dc.b		nFs4,	$06,	nRst,	$02,	nD4,	$06,	nRst,	$02
	dc.b		nD5,	$06,	nC5,	$04,	nRst,	$02,	nB4,	$24
	dc.b		nRst,	$04,	nG4,	nA4,	nB4
	smpsReturn

Sylvcastleact2_Call15:
	dc.b		nC5,	$0A,	nRst,	$02,	nB4,	$08,	nA4,	nG4
	dc.b		$04,	nA4,	$06,	nRst,	$02,	nG4,	$06,	nRst
	dc.b		$02,	nFs4,	$06,	nRst,	$02,	nA4,	$08,	nAb4
	dc.b		$0A,	nRst,	$02,	nE4,	$0A,	nRst,	$02,	nB4
	dc.b		$16,	nRst,	$06
;	Set FM Voice	#
	smpsFMvoice	$06
	dc.b		nAb5,	$04,	nA5,	$02,	nRst,	nB5,	$04
	smpsReturn

Sylvcastleact2_Call16:
	dc.b		nC6,	$06,	nB5,	$04,	nRst,	$02,	nA5,	$07
	dc.b		nRst,	$01,	nC6,	$04,	nB5,	$02,	nRst,	nA5
	dc.b		$04,	nB5,	$06,	nG5,	$04,	nRst,	$02,	nD6
	dc.b		$12,	nRst,	$02,	nFs5,	$06,	nG5,	$04,	nRst
	dc.b		$02,	nA5,	$07,	nRst,	$01,	nC6,	$04,	nB5
	dc.b		$02,	nRst,	nA5,	$04,	nB5,	$06,	nRst,	$02
	dc.b		nA5,	$06,	nRst,	$02,	nAb5,	$06,	nRst,	$02
	dc.b		nA5,	nRst,	nB5,	nRst
	smpsReturn

Sylvcastleact2_Call17:
	dc.b		nC6,	$06,	nB5,	$04,	nRst,	$02,	nA5,	$06
	dc.b		nRst,	$02,	nC6,	$04,	nB5,	$02,	nRst,	nA5
	dc.b		$04,	nB5,	$06,	nG5,	$04,	nRst,	$02,	nE5
	dc.b		$08,	nG5,	$02,	nRst,	nE5,	$06,	nRst,	$02
	dc.b		nEb5,	$06,	nE5,	$04,	nRst,	$02,	nFs5,	$06
	dc.b		nRst,	$02,	nA5,	$04,	nG5,	$02,	nRst,	nFs5
	dc.b		$04,	nB5,	$02,	nRst,	$04,	nB5,	$02,	nRst
	dc.b		$04,	nA5,	$02,	nRst,	nB5,	$04,	nA5,	nG5
	dc.b		$08
	smpsReturn

Sylvcastleact2_Call18:
	dc.b		smpsNoAttack,	$10
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE4,	$02,	nB3,	nFs4,	nRst,	nG4,	$04,	nB4
	dc.b		nA4,	$06,	nD4,	$08,	nRst,	$02,	nD4,	nA3
	dc.b		nE4,	nRst,	nFs4,	$04,	nA4,	nG4,	$06,	nC4
	dc.b		$08,	nRst,	$02,	nC4,	nG3,	nD4,	nRst,	nE4
	dc.b		$04,	nG4,	nFs4,	$06,	nG4,	nA4,	$04,	nG4
	dc.b		$06,	nRst,	$02,	nFs4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call19:
	dc.b		nE4,	$06,	nRst,	$02,	nD4,	$06,	nRst,	$02
	dc.b		nE4,	nB3,	nFs4,	nRst,	nG4,	$04,	nB4,	nA4
	dc.b		$06,	nD4,	$08,	nRst,	$02,	nD4,	nA3,	nE4
	dc.b		nRst,	nFs4,	$04,	nA4,	nG4,	$06,	nC4,	$08
	dc.b		nRst,	$02,	nC4,	nG3,	nD4,	nRst,	nE4,	$04
	dc.b		nG4,	nFs4,	$06,	nG4,	nA4,	$04,	nG4,	$06
	dc.b		nRst,	$02,	nFs4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call1A:
	dc.b		nE4,	$06,	nRst,	$02,	nD4,	$06,	nRst,	$02
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE4,	$0C,	nB4,	$08,	nE4,	$04,	nG4,	nB4
	dc.b		nA4,	$06,	nD4,	nD5,	$08,	nC5,	$04,	nB4
	dc.b		nA4,	nB4,	$0C,	nG4,	$24
	smpsReturn

Sylvcastleact2_Call1B:
	dc.b		smpsNoAttack,	$0C,	nRst,	$04,	nC4,	$0C,	nE4,	$08
	dc.b		nC5,	$04,	nB4,	nA4,	nB4,	$06,	nA4,	$04
	dc.b		nRst,	$02,	nG4,	$08,	nFs4,	$04,	nG4,	nA4
	dc.b		nG4,	$0C,	nFs4,	$0A,	nRst,	$02,	nE4,	$04
	dc.b		nFs4,	$02,	nE4,	nEb4,	$06,	nFs4,	$04,	nRst
	dc.b		$02,	nA4,	$04
	smpsReturn

Sylvcastleact2_Call1C:
	dc.b		smpsNoAttack,	$0C,	nRst,	$04,	nE4,	$0C,	nB4,	$08
	dc.b		nE4,	$04,	nG4,	nB4,	nA4,	$06,	nRst,	$02
	dc.b		nG4,	$06,	nRst,	$02,	nFs4,	$06,	nRst,	$02
	dc.b		nD4,	$06,	nRst,	$02,	nD5,	$06,	nC5,	$04
	dc.b		nRst,	$02,	nB4,	$24
	smpsReturn

Sylvcastleact2_Call1D:
	dc.b		nRst,	$04,	nG4,	nA4,	nB4,	nC5,	$0A,	nRst
	dc.b		$02,	nB4,	$08,	nA4,	nG4,	$04,	nA4,	$06
	dc.b		nRst,	$02,	nG4,	$06,	nRst,	$02,	nFs4,	$06
	dc.b		nRst,	$02,	nA4,	$08,	nAb4,	$0A,	nRst,	$02
	dc.b		nE4,	$0A,	nRst,	$02,	nB4,	$18
	smpsReturn

Sylvcastleact2_Call1E:
	dc.b		smpsNoAttack,	$04
;	Set FM Voice	#
	smpsFMvoice	$06
	dc.b		nAb5,	nA5,	$02,	nRst,	nB5,	$04,	nC6,	$06
	dc.b		nB5,	$04,	nRst,	$02,	nA5,	$07,	nRst,	$01
	dc.b		nC6,	$04,	nB5,	$02,	nRst,	nA5,	$04,	nB5
	dc.b		$06,	nG5,	$04,	nRst,	$02,	nD6,	$12,	nRst
	dc.b		$02,	nFs5,	$06,	nG5,	$04,	nRst,	$02,	nA5
	dc.b		$07,	nRst,	$01,	nC6,	$04,	nB5,	$02,	nRst
	dc.b		nA5,	$04,	nB5,	$06,	nRst,	$02,	nA5,	$06
	dc.b		nRst,	$02
	smpsReturn

Sylvcastleact2_Call1F:
	dc.b		nAb5,	$06,	nRst,	$02,	nA5,	nRst,	nB5,	nRst
	dc.b		nC6,	$06,	nB5,	$04,	nRst,	$02,	nA5,	$06
	dc.b		nRst,	$02,	nC6,	$04,	nB5,	$02,	nRst,	nA5
	dc.b		$04,	nB5,	$06,	nG5,	$04,	nRst,	$02,	nE5
	dc.b		$08,	nG5,	$02,	nRst,	nE5,	$06,	nRst,	$02
	dc.b		nEb5,	$06,	nE5,	$04,	nRst,	$02,	nFs5,	$06
	dc.b		nRst,	$02,	nA5,	$04,	nG5,	$02,	nRst,	nFs5
	dc.b		$04,	nB5,	$02,	nRst,	$04,	nB5,	$02,	nRst
	dc.b		$04,	nA5,	$02,	nRst
	smpsReturn

Sylvcastleact2_Call20:
	dc.b		nB5,	$04,	nA5,	nG5,	$0E,	nRst,	$0A
	smpsReturn

Sylvcastleact2_Call21:
;	Set FM Voice	#
	smpsFMvoice	$03
	dc.b		nE4,	$10,	nRst,	$02,	nD4,	nRst,	nD4,	nE4
	dc.b		$04,	nFs4,	nD4,	$10,	nRst,	$02,	nC4,	nRst
	dc.b		nC4,	nD4,	$04,	nE4,	nE4,	$10,	nRst,	$02
	dc.b		nD4,	$04,	nB3,	$02,	nD4,	$04,	nFs4,	nE4
	dc.b		$06,	nRst,	$02,	nD4,	$06,	nRst,	$02,	nC4
	dc.b		$06,	nRst,	$02,	nD4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call22:
	dc.b		nE4,	$10,	nRst,	$02,	nD4,	nRst,	nD4,	nE4
	dc.b		$04,	nFs4,	nD4,	$10,	nRst,	$02,	nC4,	nRst
	dc.b		nC4,	nD4,	$04,	nE4,	nE4,	$10,	nRst,	$02
	dc.b		nD4,	$04,	nB3,	$02,	nD4,	$04,	nFs4,	nE4
	dc.b		$06,	nRst,	$02,	nD4,	$06,	nRst,	$02,	nC4
	dc.b		$06,	nRst,	$02,	nD4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call23:
	dc.b		nE4,	$04,	nRst,	$02,	nD4,	$04,	nRst,	$02
	dc.b		nE4,	$08,	nRst,	$04,	nE4,	$06,	nRst,	$02
	dc.b		nA4,	$04,	nRst,	$02,	nA4,	$04,	nRst,	$02
	dc.b		nA4,	$08,	nRst,	$04,	nA4,	$06,	nRst,	$02
	dc.b		nB4,	$04,	nRst,	$02,	nB4,	$04,	nRst,	$02
	dc.b		nB4,	$06,	nRst,	$02,	nB4,	$0C,	nE4,	$06
	dc.b		nRst,	$02,	nD4,	$06,	nRst,	$02,	nC4,	$06
	dc.b		nRst,	$02,	nB3,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call24:
	dc.b		nG3,	$04,	nRst,	$02,	nG3,	$04,	nRst,	$02
	dc.b		nG3,	$08,	nRst,	$04,	nE4,	$06,	nRst,	$02
	dc.b		nFs4,	$06,	nRst,	$02,	nD5,	$06,	nRst,	$02
	dc.b		nB4,	$06,	nRst,	$02,	nD5,	$06,	nRst,	$02
	dc.b		nB4,	$04,	nRst,	$02,	nB4,	$04,	nRst,	$02
	dc.b		nB4,	$06,	nRst,	$02,	nB4,	nRst,	nB4,	$04
	dc.b		nRst,	nB4,	$06,	nRst,	$02,	nD5,	$06,	nRst
	dc.b		$02,	nFs5,	$06,	nRst,	$0A
	smpsReturn

Sylvcastleact2_Call25:
	dc.b		nB4,	$04,	nRst,	$02,	nB4,	$04,	nRst,	$02
	dc.b		nB4,	$08,	nRst,	$04,	nB4,	$08,	nA4,	$04
	dc.b		nRst,	$02,	nA4,	$04,	nRst,	$02,	nA4,	$08
	dc.b		nRst,	$04,	nA4,	$08,	nB4,	$04,	nRst,	$02
	dc.b		nB4,	$04,	nRst,	$02,	nB4,	$06,	nRst,	$02
	dc.b		nB4,	$06,	nRst,	nB4,	$08,	nB4,	nD5,	nD5
	smpsReturn

Sylvcastleact2_Call26:
	dc.b		nG4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$02
	dc.b		nG4,	$08,	nRst,	$04,	nC5,	$08,	nD5,	$06
	dc.b		nRst,	$02,	nD5,	$06,	nRst,	$02,	nB4,	$06
	dc.b		nRst,	$02,	nD5,	$06,	nRst,	$02,	nB4,	$04
	dc.b		nRst,	$02,	nB4,	$04,	nRst,	$02,	nB4,	$06
	dc.b		nRst,	$02,	nB4,	$04,	$08,	nE4,	nFs4,	nAb4
	dc.b		nRst
	smpsReturn

Sylvcastleact2_Call27:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

Sylvcastleact2_Call28:
	dc.b		smpsNoAttack,	$10
;	Set FM Voice	#
	smpsFMvoice	$03
	dc.b		nE4,	nRst,	$02,	nD4,	nRst,	nD4,	nE4,	$04
	dc.b		nFs4,	nD4,	$10,	nRst,	$02,	nC4,	nRst,	nC4
	dc.b		nD4,	$04,	nE4,	nE4,	$10,	nRst,	$02,	nD4
	dc.b		$04,	nB3,	$02,	nD4,	$04,	nFs4,	nE4,	$06
	dc.b		nRst,	$02,	nD4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call29:
	dc.b		nC4,	$06,	nRst,	$02,	nD4,	$06,	nRst,	$02
	dc.b		nE4,	$10,	nRst,	$02,	nD4,	nRst,	nD4,	nE4
	dc.b		$04,	nFs4,	nD4,	$10,	nRst,	$02,	nC4,	nRst
	dc.b		nC4,	nD4,	$04,	nE4,	nE4,	$10,	nRst,	$02
	dc.b		nD4,	$04,	nB3,	$02,	nD4,	$04,	nFs4,	nE4
	dc.b		$06,	nRst,	$02,	nD4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call2A:
	dc.b		nC4,	$06,	nRst,	$02,	nD4,	$06,	nRst,	$02
	dc.b		nE4,	$04,	nRst,	$02,	nD4,	$04,	nRst,	$02
	dc.b		nE4,	$08,	nRst,	$04,	nE4,	$06,	nRst,	$02
	dc.b		nA4,	$04,	nRst,	$02,	nA4,	$04,	nRst,	$02
	dc.b		nA4,	$08,	nRst,	$04,	nA4,	$06,	nRst,	$02
	dc.b		nB4,	$04,	nRst,	$02,	nB4,	$04,	nRst,	$02
	dc.b		nB4,	$06,	nRst,	$02,	nB4,	$0C,	nE4,	$06
	dc.b		nRst,	$02,	nD4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call2B:
	dc.b		nC4,	$06,	nRst,	$02,	nB3,	$06,	nRst,	$02
	dc.b		nG3,	$04,	nRst,	$02,	nG3,	$04,	nRst,	$02
	dc.b		nG3,	$08,	nRst,	$04,	nE4,	$06,	nRst,	$02
	dc.b		nFs4,	$06,	nRst,	$02,	nD5,	$06,	nRst,	$02
	dc.b		nB4,	$06,	nRst,	$02,	nD5,	$06,	nRst,	$02
	dc.b		nB4,	$04,	nRst,	$02,	nB4,	$04,	nRst,	$02
	dc.b		nB4,	$06,	nRst,	$02,	nB4,	nRst,	nB4,	$04
	dc.b		nRst,	nB4,	$06,	nRst,	$02,	nD5,	$06,	nRst
	dc.b		$02
	smpsReturn

Sylvcastleact2_Call2C:
	dc.b		nFs5,	$06,	nRst,	$0A,	nB4,	$04,	nRst,	$02
	dc.b		nB4,	$04,	nRst,	$02,	nB4,	$08,	nRst,	$04
	dc.b		nB4,	$08,	nA4,	$04,	nRst,	$02,	nA4,	$04
	dc.b		nRst,	$02,	nA4,	$08,	nRst,	$04,	nA4,	$08
	dc.b		nB4,	$04,	nRst,	$02,	nB4,	$04,	nRst,	$02
	dc.b		nB4,	$06,	nRst,	$02,	nB4,	$06,	nRst,	nB4
	dc.b		$08,	nB4
	smpsReturn

Sylvcastleact2_Call2D:
	dc.b		nD5,	$08,	nD5,	nG4,	$04,	nRst,	$02,	nG4
	dc.b		$04,	nRst,	$02,	nG4,	$08,	nRst,	$04,	nC5
	dc.b		$08,	nD5,	$06,	nRst,	$02,	nD5,	$06,	nRst
	dc.b		$02,	nB4,	$06,	nRst,	$02,	nD5,	$06,	nRst
	dc.b		$02,	nB4,	$04,	nRst,	$02,	nB4,	$04,	nRst
	dc.b		$02,	nB4,	$06,	nRst,	$02,	nB4,	$04,	$08
	dc.b		nE4,	nFs4
	smpsReturn

Sylvcastleact2_Call2E:
	dc.b		nAb4,	$08,	nRst,	$78
	smpsReturn

Sylvcastleact2_Call2F:
	dc.b		smpsNoAttack,	$20
	smpsReturn

Sylvcastleact2_Call30:
;	Set FM Voice	#
	smpsFMvoice	$03
	dc.b		nG4,	$10,	nRst,	$02,	nFs4,	nRst,	nFs4,	nG4
	dc.b		$04,	nA4,	nFs4,	$10,	nRst,	$02,	nE4,	nRst
	dc.b		nE4,	nFs4,	$04,	nG4,	nG4,	$10,	nRst,	$02
	dc.b		nFs4,	$04,	nD4,	$02,	nFs4,	$04,	nA4,	nG4
	dc.b		$06,	nRst,	$02,	nFs4,	$06,	nRst,	$02,	nG4
	dc.b		$06,	nRst,	$02,	nA4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call31:
	dc.b		nG4,	$10,	nRst,	$02,	nFs4,	nRst,	nFs4,	nG4
	dc.b		$04,	nA4,	nFs4,	$10,	nRst,	$02,	nE4,	nRst
	dc.b		nE4,	nFs4,	$04,	nG4,	nG4,	$10,	nRst,	$02
	dc.b		nFs4,	$04,	nD4,	$02,	nFs4,	$04,	nA4,	nG4
	dc.b		$06,	nRst,	$02,	nFs4,	$06,	nRst,	$02,	nG4
	dc.b		$06,	nRst,	$02,	nA4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call32:
	dc.b		nG4,	$04,	nRst,	$02,	nFs4,	$04,	nRst,	$02
	dc.b		nG4,	$08,	nRst,	$04,	nG4,	$08,	nFs4,	$04
	dc.b		nRst,	$02,	nG4,	$04,	nRst,	$02,	nFs4,	$08
	dc.b		nRst,	$04,	nFs4,	$08,	nB4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nA4,	$06,	nRst,	$02
	dc.b		nG4,	$0A,	nRst,	$02,	nG4,	$08,	nFs4,	$04
	dc.b		nG4,	$02,	nFs4,	nE4,	$08,	nD4
	smpsReturn

Sylvcastleact2_Call33:
	dc.b		nE4,	$04,	nRst,	$02,	nD4,	$04,	nRst,	$02
	dc.b		nE4,	$08,	nRst,	$04,	nG4,	$06,	nRst,	$02
	dc.b		nFs4,	$08,	nA4,	nG4,	nFs4,	nG4,	$04,	nRst
	dc.b		$02,	nA4,	$04,	nRst,	$02,	nG4,	$06,	nRst
	dc.b		$02,	nFs4,	$04,	nG4,	$08,	nFs4,	nA4,	nC5
	dc.b		$04,	nC5,	nB4,	nA4
	smpsReturn

Sylvcastleact2_Call34:
	dc.b		nG4,	$04,	nRst,	$02,	nFs4,	$04,	nRst,	$02
	dc.b		nG4,	$08,	nRst,	$04,	nG4,	$08,	nFs4,	$04
	dc.b		nRst,	$02,	nG4,	$04,	nRst,	$02,	nFs4,	$08
	dc.b		nRst,	$04,	nFs4,	$08,	nG4,	$04,	nRst,	$02
	dc.b		nA4,	$04,	nRst,	$02,	nA4,	$06,	nRst,	$02
	dc.b		nG4,	$0A,	nRst,	$02,	nB3,	$06,	nRst,	$02
	dc.b		nFs4,	$04,	nD4,	$02,	nFs4,	nG4,	$08,	nA4
	smpsReturn

Sylvcastleact2_Call35:
	dc.b		nE4,	$04,	nRst,	$02,	nD4,	$04,	nRst,	$02
	dc.b		nE4,	$0A,	nRst,	$02,	nG4,	$08,	nFs4,	$06
	dc.b		nRst,	$02,	nA4,	$06,	nRst,	$02,	nG4,	$08
	dc.b		nFs4,	nAb4,	$04,	nRst,	$02,	nA4,	$04,	nRst
	dc.b		$02,	nAb4,	$06,	nRst,	$02,	nA4,	$04,	nAb4
	dc.b		$08,	nAb4,	nB4,	nD5,	$04,	nD5,	nC5,	nB4
	smpsReturn

Sylvcastleact2_Call36:
	dc.b		nC5,	$02,	nB4,	nG4,	nE4,	nD4,	nC4,	nE3
	dc.b		nD3,	nC3,	nD3,	nE3,	nG3,	nD4,	nE4,	nG4
	dc.b		nC5,	nB4,	nA4,	nG4,	nE4,	nD4,	nC4,	nB3
	dc.b		nG3,	nE3,	nD3,	nE3,	nG3,	nA3,	nB3,	nD4
	dc.b		nE4,	nFs4,	nE4,	nEb4,	nC4,	nB3,	nA3,	nG3
	dc.b		nFs3,	nEb3,	nD3,	nEb3,	nFs3,	nA3,	nC4,	nEb4
	dc.b		nFs4,	nAb4,	nE4,	nC4,	nB3,	nB4,	nC4,	nB3
	dc.b		nA3,	nAb3,	nB3,	nE4,	nFs4,	nAb4,	nA4,	nAb4
	dc.b		nE4
	smpsReturn

Sylvcastleact2_Call37:
	dc.b		nC5,	$02,	nB4,	nG4,	nE4,	nD4,	nC4,	nE3
	dc.b		nD3,	nC3,	nD3,	nE3,	nG3,	nD4,	nE4,	nG4
	dc.b		nC5,	nB4,	nA4,	nG4,	nE4,	nD4,	nC4,	nB3
	dc.b		nG3,	nE3,	nD3,	nE3,	nG3,	nA3,	nB3,	nD4
	dc.b		nE4,	nFs4,	nE4,	nEb4,	nC4,	nB3,	nA3,	nG3
	dc.b		nFs3,	nEb3,	nD3,	nEb3,	nFs3,	nA3,	nC4,	nEb4
	dc.b		nFs4,	nAb4,	nE4,	nC4,	nA3,	nG3,	nB3,	nA3
	dc.b		nG3,	nFs4,	nG4,	nA4,	nG4,	$0A
	smpsReturn

Sylvcastleact2_Call38:
	dc.b		smpsNoAttack,	$08,	nRst,	nG4,	$10,	nRst,	$02,	nFs4
	dc.b		nRst,	nFs4,	nG4,	$04,	nA4,	nFs4,	$10,	nRst
	dc.b		$02,	nE4,	nRst,	nE4,	nFs4,	$04,	nG4,	nG4
	dc.b		$10,	nRst,	$02,	nFs4,	$04,	nD4,	$02,	nFs4
	dc.b		$04,	nA4,	nG4,	$06,	nRst,	$02,	nFs4,	$06
	dc.b		nRst,	$02
	smpsReturn

Sylvcastleact2_Call39:
	dc.b		nG4,	$06,	nRst,	$02,	nA4,	$06,	nRst,	$02
	dc.b		nG4,	$10,	nRst,	$02,	nFs4,	nRst,	nFs4,	nG4
	dc.b		$04,	nA4,	nFs4,	$10,	nRst,	$02,	nE4,	nRst
	dc.b		nE4,	nFs4,	$04,	nG4,	nG4,	$10,	nRst,	$02
	dc.b		nFs4,	$04,	nD4,	$02,	nFs4,	$04,	nA4,	nG4
	dc.b		$06,	nRst,	$02,	nFs4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call3A:
	dc.b		nG4,	$06,	nRst,	$02,	nA4,	$06,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nFs4,	$04,	nRst,	$02
	dc.b		nG4,	$08,	nRst,	$04,	nG4,	$08,	nFs4,	$04
	dc.b		nRst,	$02,	nG4,	$04,	nRst,	$02,	nFs4,	$08
	dc.b		nRst,	$04,	nFs4,	$08,	nB4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nA4,	$06,	nRst,	$02
	dc.b		nG4,	$0A,	nRst,	$02,	nG4,	$08,	nFs4,	$04
	dc.b		nG4,	$02,	nFs4
	smpsReturn

Sylvcastleact2_Call3B:
	dc.b		nE4,	$08,	nD4,	nE4,	$04,	nRst,	$02,	nD4
	dc.b		$04,	nRst,	$02,	nE4,	$08,	nRst,	$04,	nG4
	dc.b		$06,	nRst,	$02,	nFs4,	$08,	nA4,	nG4,	nFs4
	dc.b		nG4,	$04,	nRst,	$02,	nA4,	$04,	nRst,	$02
	dc.b		nG4,	$06,	nRst,	$02,	nFs4,	$04,	nG4,	$08
	dc.b		nFs4,	nA4
	smpsReturn

Sylvcastleact2_Call3C:
	dc.b		nC5,	$04,	nC5,	nB4,	nA4,	nG4,	nRst,	$02
	dc.b		nFs4,	$04,	nRst,	$02,	nG4,	$08,	nRst,	$04
	dc.b		nG4,	$08,	nFs4,	$04,	nRst,	$02,	nG4,	$04
	dc.b		nRst,	$02,	nFs4,	$08,	nRst,	$04,	nFs4,	$08
	dc.b		nG4,	$04,	nRst,	$02,	nA4,	$04,	nRst,	$02
	dc.b		nA4,	$06,	nRst,	$02,	nG4,	$0A,	nRst,	$02
	dc.b		nB3,	$06,	nRst,	$02,	nFs4,	$04,	nD4,	$02
	dc.b		nFs4
	smpsReturn

Sylvcastleact2_Call3D:
	dc.b		nG4,	$08,	nA4,	nE4,	$04,	nRst,	$02,	nD4
	dc.b		$04,	nRst,	$02,	nE4,	$0A,	nRst,	$02,	nG4
	dc.b		$08,	nFs4,	$06,	nRst,	$02,	nA4,	$06,	nRst
	dc.b		$02,	nG4,	$08,	nFs4,	nAb4,	$04,	nRst,	$02
	dc.b		nA4,	$04,	nRst,	$02,	nAb4,	$06,	nRst,	$02
	dc.b		nA4,	$04,	nAb4,	$08,	nAb4,	nB4
	smpsReturn

Sylvcastleact2_Call3E:
	dc.b		nD5,	$04,	nD5,	nC5,	nB4,	nC5,	$02,	nB4
	dc.b		nG4,	nE4,	nD4,	nC4,	nE3,	nD3,	nC3,	nD3
	dc.b		nE3,	nG3,	nD4,	nE4,	nG4,	nC5,	nB4,	nA4
	dc.b		nG4,	nE4,	nD4,	nC4,	nB3,	nG3,	nE3,	nD3
	dc.b		nE3,	nG3,	nA3,	nB3,	nD4,	nE4,	nFs4,	nE4
	dc.b		nEb4,	nC4,	nB3,	nA3,	nG3,	nFs3,	nEb3,	nD3
	dc.b		nEb3,	nFs3,	nA3,	nC4,	nEb4,	nFs4,	nAb4,	nE4
	dc.b		nC4,	nB3,	nB4,	nC4,	nB3,	nA3
	smpsReturn

Sylvcastleact2_Call3F:
	dc.b		nAb3,	$02,	nB3,	nE4,	nFs4,	nAb4,	nA4,	nAb4
	dc.b		nE4,	nC5,	nB4,	nG4,	nE4,	nD4,	nC4,	nE3
	dc.b		nD3,	nC3,	nD3,	nE3,	nG3,	nD4,	nE4,	nG4
	dc.b		nC5,	nB4,	nA4,	nG4,	nE4,	nD4,	nC4,	nB3
	dc.b		nG3,	nE3,	nD3,	nE3,	nG3,	nA3,	nB3,	nD4
	dc.b		nE4,	nFs4,	nE4,	nEb4,	nC4,	nB3,	nA3,	nG3
	dc.b		nFs3,	nEb3,	nD3,	nEb3,	nFs3,	nA3,	nC4,	nEb4
	dc.b		nFs4,	nAb4,	nE4,	nC4,	nA3,	nG3,	nB3,	nA3
	dc.b		nG3
	smpsReturn

Sylvcastleact2_Call40:
	dc.b		nFs4,	$02,	nG4,	nA4,	nG4,	$12,	nRst,	$08
	smpsReturn

Sylvcastleact2_Call41:
	dc.b		smpsNoAttack,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$06
	dc.b		nE4,	nB3,	nFs4,	nRst,	nG4,	$04,	nB4,	nA4
	dc.b		$06,	nD4,	$08,	nRst,	$02,	nD4,	nA3,	nE4
	dc.b		nRst,	nFs4,	$04,	nA4,	nG4,	$06,	nC4,	$08
	dc.b		nRst,	$02,	nC4,	nG3,	nD4,	nRst,	nE4,	$04
	dc.b		nG4,	nFs4,	$06,	nG4,	nA4,	$04,	nG4,	$06
	dc.b		nRst,	$02,	nFs4,	$06,	nRst,	$02,	nE4,	$06
	dc.b		nRst,	$02,	nD4,	$06
	smpsReturn

Sylvcastleact2_Call42:
	dc.b		nRst,	$02,	nE4,	nB3,	nFs4,	nRst,	nG4,	$04
	dc.b		nB4,	nA4,	$06,	nD4,	$08,	nRst,	$02,	nD4
	dc.b		nA3,	nE4,	nRst,	nFs4,	$04,	nA4,	nG4,	$06
	dc.b		nC4,	$08,	nRst,	$02,	nC4,	nG3,	nD4,	nRst
	dc.b		nE4,	$04,	nG4,	nFs4,	$06,	nG4,	nA4,	$04
	dc.b		nG4,	$06,	nRst,	$02,	nFs4,	$06,	nRst,	$02
	dc.b		nE4,	$06,	nRst,	$02,	nD4,	$06
	smpsReturn

Sylvcastleact2_Call43:
	dc.b		nRst,	$04
;	Set PSG Voice	#
	smpsPSGvoice	$00
	dc.b		nE4,	$0C,	nB4,	$08,	nE4,	$04,	nG4,	nB4
	dc.b		nA4,	$06,	nD4,	nD5,	$08,	nC5,	$04,	nB4
	dc.b		nA4,	nB4,	$0C,	nG4,	$30
	smpsReturn

Sylvcastleact2_Call44:
	dc.b		nRst,	$04,	nC4,	$0C,	nE4,	$08,	nC5,	$04
	dc.b		nB4,	nA4,	nB4,	$06,	nA4,	$04,	nRst,	$02
	dc.b		nG4,	$08,	nFs4,	$04,	nG4,	nA4,	nG4,	$0C
	dc.b		nFs4,	$0A,	nRst,	$02,	nE4,	$04,	nFs4,	$02
	dc.b		nE4,	nEb4,	$06,	nFs4,	$04,	nRst,	$02,	nA4
	dc.b		$10
	smpsReturn

Sylvcastleact2_Call45:
	dc.b		nRst,	$04,	nE4,	$0C,	nB4,	$08,	nE4,	$04
	dc.b		nG4,	nB4,	nA4,	$06,	nRst,	$02,	nG4,	$06
	dc.b		nRst,	$02,	nFs4,	$06,	nRst,	$02,	nD4,	$06
	dc.b		nRst,	$02,	nD5,	$06,	nC5,	$04,	nRst,	$02
	dc.b		nB4,	$24,	nRst,	$04,	nG4,	nA4
	smpsReturn

Sylvcastleact2_Call46:
	dc.b		nB4,	$04,	nC5,	$0A,	nRst,	$02,	nB4,	$08
	dc.b		nA4,	nG4,	$04,	nA4,	$06,	nRst,	$02,	nG4
	dc.b		$06,	nRst,	$02,	nFs4,	$06,	nRst,	$02,	nA4
	dc.b		$08,	nAb4,	$0A,	nRst,	$02,	nE4,	$0A,	nRst
	dc.b		$02,	nB4,	$14,	nRst,	$10
	smpsReturn

Sylvcastleact2_Call47:
	dc.b		smpsNoAttack,	$34,	nG4,	$04,	nE4,	$06,	nRst,	$02
	dc.b		nEb4,	$0C,	nRst,	$04,	nC4,	$0C,	nRst,	$04
	dc.b		nE4,	$06,	nRst,	$02,	nC4,	$06,	nRst,	$02
	dc.b		nB3,	$06,	nRst,	$02,	nE4,	$06,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call48:
	dc.b		nA3,	$18,	nC4,	$08,	nE4,	$0C,	nRst,	$08
	dc.b		nB4,	$02,	nRst,	nG4,	$06,	nRst,	$02,	nFs4
	dc.b		$06,	nRst,	$02,	nEb4,	$06,	nRst,	$02,	nC4
	dc.b		$06,	nRst,	$02,	nB3,	$06,	nRst,	$02,	nE4
	dc.b		nRst,	$04,	nD4,	$02,	nRst,	$04,	nE4,	$02
	dc.b		nRst,	nG4,	$04,	nFs4,	nG4,	$08
	smpsReturn

Sylvcastleact2_Call49:
	dc.b		smpsNoAttack,	$06,	nRst,	$0C
;	Set PSG Voice	#
	smpsPSGvoice	$06
	dc.b		nE4,	$02,	nB3,	nFs4,	nRst,	nG4,	$04,	nB4
	dc.b		nA4,	$06,	nD4,	$08,	nRst,	$02,	nD4,	nA3
	dc.b		nE4,	nRst,	nFs4,	$04,	nA4,	nG4,	$06,	nC4
	dc.b		$08,	nRst,	$02,	nC4,	nG3,	nD4,	nRst,	nE4
	dc.b		$04,	nG4,	nFs4,	$06,	nG4,	nA4,	$04,	nG4
	dc.b		$06,	nRst,	$02,	nFs4,	$06
	smpsReturn

Sylvcastleact2_Call4A:
	dc.b		nRst,	$02,	nE4,	$06,	nRst,	$02,	nD4,	$06
	dc.b		nRst,	$02,	nE4,	nB3,	nFs4,	nRst,	nG4,	$04
	dc.b		nB4,	nA4,	$06,	nD4,	$08,	nRst,	$02,	nD4
	dc.b		nA3,	nE4,	nRst,	nFs4,	$04,	nA4,	nG4,	$06
	dc.b		nC4,	$08,	nRst,	$02,	nC4,	nG3,	nD4,	nRst
	dc.b		nE4,	$04,	nG4,	nFs4,	$06,	nG4,	nA4,	$04
	dc.b		nG4,	$06,	nRst,	$02,	nFs4,	$06
	smpsReturn

Sylvcastleact2_Call4B:
	dc.b		nRst,	$02,	nE4,	$06,	nRst,	$02,	nD4,	$06
	dc.b		nRst,	$04
;	Set PSG Voice	#
	smpsPSGvoice	$00
	dc.b		nE4,	$0C,	nB4,	$08,	nE4,	$04,	nG4,	nB4
	dc.b		nA4,	$06,	nD4,	nD5,	$08,	nC5,	$04,	nB4
	dc.b		nA4,	nB4,	$0C,	nG4,	$20
	smpsReturn

Sylvcastleact2_Call4C:
	dc.b		smpsNoAttack,	$14,	nC4,	$0C,	nE4,	$08,	nC5,	$04
	dc.b		nB4,	nA4,	nB4,	$06,	nA4,	$04,	nRst,	$02
	dc.b		nG4,	$08,	nFs4,	$04,	nG4,	nA4,	nG4,	$0C
	dc.b		nFs4,	$0A,	nRst,	$02,	nE4,	$04,	nFs4,	$02
	dc.b		nE4,	nEb4,	$06,	nFs4,	$04,	nRst,	$02
	smpsReturn

Sylvcastleact2_Call4D:
	dc.b		nA4,	$10,	nRst,	$04,	nE4,	$0C,	nB4,	$08
	dc.b		nE4,	$04,	nG4,	nB4,	nA4,	$06,	nRst,	$02
	dc.b		nG4,	$06,	nRst,	$02,	nFs4,	$06,	nRst,	$02
	dc.b		nD4,	$06,	nRst,	$02,	nD5,	$06,	nC5,	$04
	dc.b		nRst,	$02,	nB4,	$20
	smpsReturn

Sylvcastleact2_Call4E:
	dc.b		smpsNoAttack,	$04,	nRst,	nG4,	nA4,	nB4,	nC5,	$0A
	dc.b		nRst,	$02,	nB4,	$08,	nA4,	nG4,	$04,	nA4
	dc.b		$06,	nRst,	$02,	nG4,	$06,	nRst,	$02,	nFs4
	dc.b		$06,	nRst,	$02,	nA4,	$08,	nAb4,	$0A,	nRst
	dc.b		$02,	nE4,	$0A,	nRst,	$02,	nB4,	$14
	smpsReturn

Sylvcastleact2_Call4F:
	dc.b		nRst,	$08
;	Set PSG Voice	#
	smpsPSGvoice	$05
	dc.b		nAb4,	$04,	nA4,	$02,	nRst,	nB4,	$04,	nC5
	dc.b		$06,	nB4,	$04,	nRst,	$02,	nA4,	$07,	nRst
	dc.b		$01,	nC5,	$04,	nB4,	$02,	nRst,	nA4,	$04
	dc.b		nB4,	$06,	nG4,	$04,	nRst,	$02,	nD5,	$12
	dc.b		nRst,	$02,	nFs4,	$06,	nG4,	$04,	nRst,	$02
	dc.b		nA4,	$07,	nRst,	$01,	nC5,	$04,	nB4,	$02
	dc.b		nRst,	nA4,	$04,	nB4,	$06,	nRst,	$02,	nA4
	dc.b		$04
	smpsReturn

Sylvcastleact2_Call50:
	dc.b		smpsNoAttack,	$02,	nRst,	nAb4,	$06,	nRst,	$02,	nA4
	dc.b		nRst,	nB4,	nRst,	nC5,	$06,	nB4,	$04,	nRst
	dc.b		$02,	nA4,	$06,	nRst,	$02,	nC5,	$04,	nB4
	dc.b		$02,	nRst,	nA4,	$04,	nB4,	$06,	nG4,	$04
	dc.b		nRst,	$02,	nE4,	$08,	nG4,	$02,	nRst,	nE4
	dc.b		$06,	nRst,	$02,	nEb4,	$06,	nE4,	$04,	nRst
	dc.b		$02,	nFs4,	$06,	nRst,	$02,	nA4,	$04,	nG4
	dc.b		$02,	nRst,	nFs4,	$04,	nB4,	$02,	nRst,	$04
	dc.b		nB4,	$02,	nRst,	$04
	smpsReturn

Sylvcastleact2_Call51:
	dc.b		nA4,	$02,	nRst,	nB4,	$04,	nA4,	nG4,	$0E
	dc.b		nRst,	$06
	smpsReturn

Sylvcastleact2_Call52:
	dc.b		smpsNoAttack,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$06
	dc.b		nE4,	nB3,	nFs4,	nRst,	nG4,	$04,	nB4,	nA4
	dc.b		$06,	nD4,	$08,	nRst,	$02,	nD4,	nA3,	nE4
	dc.b		nRst,	nFs4,	$04,	nA4,	nG4,	$06,	nC4,	$08
	dc.b		nRst,	$02,	nC4,	nG3,	nD4,	nRst,	nE4,	$04
	dc.b		nG4,	nFs4,	$06,	nG4,	nA4,	$04,	nG4,	$06
	dc.b		nRst,	$02,	nFs4,	$06,	nRst,	$02,	nE4,	$06
	dc.b		nRst,	$02,	nD4,	$06
	smpsReturn

Sylvcastleact2_Call53:
	dc.b		nRst,	$02,	nE4,	nB3,	nFs4,	nRst,	nG4,	$04
	dc.b		nB4,	nA4,	$06,	nD4,	$08,	nRst,	$02,	nD4
	dc.b		nA3,	nE4,	nRst,	nFs4,	$04,	nA4,	nG4,	$06
	dc.b		nC4,	$08,	nRst,	$02,	nC4,	nG3,	nD4,	nRst
	dc.b		nE4,	$04,	nG4,	nFs4,	$06,	nG4,	nA4,	$04
	dc.b		nG4,	$06,	nRst,	$02,	nFs4,	$06,	nRst,	$02
	dc.b		nE4,	$06,	nRst,	$02,	nD4,	$06
	smpsReturn

Sylvcastleact2_Call54:
	dc.b		nRst,	$60
;	Set PSG Voice	#
	smpsPSGvoice	$00
	dc.b		nE3,	$0C,	nD3,	$14
	smpsReturn

Sylvcastleact2_Call55:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

Sylvcastleact2_Call56:
	dc.b		smpsNoAttack,	$54
;	Set PSG Voice	#
	smpsPSGvoice	$00
	dc.b		nD4,	$06,	nC4,	$04,	nRst,	$02,	nB3,	$10
	dc.b		nRst
	smpsReturn

Sylvcastleact2_Call57:
	dc.b		smpsNoAttack,	$60,	nAb3,	$06,	nE3,	$04,	nRst,	$02
	dc.b		nB3,	$0C
;	Set PSG Voice	#
	smpsPSGvoice	$05
	dc.b		nAb4,	$04,	nA4,	$02,	nRst
	smpsReturn

Sylvcastleact2_Call58:
	dc.b		nB4,	$04,	nC5,	$06,	nB4,	$04,	nRst,	$02
	dc.b		nA4,	$07,	nRst,	$01,	nC5,	$04,	nB4,	$02
	dc.b		nRst,	nA4,	$04,	nB4,	$06,	nG4,	$04,	nRst
	dc.b		$02,	nD5,	$12,	nRst,	$02,	nFs4,	$06,	nG4
	dc.b		$04,	nRst,	$02,	nA4,	$07,	nRst,	$01,	nC5
	dc.b		$04,	nB4,	$02,	nRst,	nA4,	$04,	nB4,	$06
	dc.b		nRst,	$02,	nA4,	$06,	nRst,	$02,	nAb4,	$06
	dc.b		nRst,	$02,	nA4,	nRst
	smpsReturn

Sylvcastleact2_Call59:
	dc.b		nB4,	$02,	nRst,	nC5,	$06,	nB4,	$04,	nRst
	dc.b		$02,	nA4,	$06,	nRst,	$02,	nC5,	$04,	nB4
	dc.b		$02,	nRst,	nA4,	$04,	nB4,	$06,	nG4,	$04
	dc.b		nRst,	$02,	nE4,	$08,	nG4,	$02,	nRst,	nE4
	dc.b		$06,	nRst,	$02,	nEb4,	$06,	nE4,	$04,	nRst
	dc.b		$02,	nFs4,	$06,	nRst,	$02,	nA4,	$04,	nG4
	dc.b		$02,	nRst,	nFs4,	$04,	nB4,	$02,	nRst,	$04
	dc.b		nB4,	$02,	nRst,	$04,	nA4,	$02,	nRst,	nB4
	dc.b		$04,	nA4,	nG4
	smpsReturn

Sylvcastleact2_Call5A:
	dc.b		smpsNoAttack,	$0A,	nRst,	$08
;	Set PSG Voice	#
	smpsPSGvoice	$06
	dc.b		nE4,	$02,	nB3,	nFs4,	nRst,	nG4,	$04,	nB4
	dc.b		nA4,	$06,	nD4,	$08,	nRst,	$02,	nD4,	nA3
	dc.b		nE4,	nRst,	nFs4,	$04,	nA4,	nG4,	$06,	nC4
	dc.b		$08,	nRst,	$02,	nC4,	nG3,	nD4,	nRst,	nE4
	dc.b		$04,	nG4,	nFs4,	$06,	nG4,	nA4,	$04,	nG4
	dc.b		$06,	nRst,	$02,	nFs4,	$06
	smpsReturn

Sylvcastleact2_Call5B:
	dc.b		nRst,	$02,	nE4,	$06,	nRst,	$02,	nD4,	$06
	dc.b		nRst,	$02,	nE4,	nB3,	nFs4,	nRst,	nG4,	$04
	dc.b		nB4,	nA4,	$06,	nD4,	$08,	nRst,	$02,	nD4
	dc.b		nA3,	nE4,	nRst,	nFs4,	$04,	nA4,	nG4,	$06
	dc.b		nC4,	$08,	nRst,	$02,	nC4,	nG3,	nD4,	nRst
	dc.b		nE4,	$04,	nG4,	nFs4,	$06,	nG4,	nA4,	$04
	dc.b		nG4,	$06,	nRst,	$02,	nFs4,	$06
	smpsReturn

Sylvcastleact2_Call5C:
	dc.b		nRst,	$02,	nE4,	$06,	nRst,	$02,	nD4,	$06
	dc.b		nRst,	$60
;	Set PSG Voice	#
	smpsPSGvoice	$00
	dc.b		nE3,	$0C,	nD3,	$04
	smpsReturn

Sylvcastleact2_Call5D:
	dc.b		smpsNoAttack,	$10,	nRst,	$70
	smpsReturn

Sylvcastleact2_Call5E:
	dc.b		smpsNoAttack,	$64
;	Set PSG Voice	#
	smpsPSGvoice	$00
	dc.b		nD4,	$06,	nC4,	$04,	nRst,	$02,	nB3,	$10
	smpsReturn

Sylvcastleact2_Call5F:
	dc.b		nRst,	$70,	nAb3,	$06,	nE3,	$04,	nRst,	$02
	dc.b		nB3,	$04
	smpsReturn

Sylvcastleact2_Call60:
	dc.b		smpsNoAttack,	$10,	nRst,	$34,	nG4,	$04,	nE4,	$06
	dc.b		nRst,	$02,	nEb4,	$0C,	nRst,	$04,	nC4,	$0C
	dc.b		nRst,	$04,	nE4,	$06,	nRst,	$02,	nC4,	$06
	dc.b		nRst,	$02
	smpsReturn

Sylvcastleact2_Call61:
	dc.b		nB3,	$06,	nRst,	$02,	nE4,	$06,	nRst,	$02
	dc.b		nA3,	$18,	nC4,	$08,	nE4,	$0C,	nRst,	$08
	dc.b		nB4,	$02,	nRst,	nG4,	$06,	nRst,	$02,	nFs4
	dc.b		$06,	nRst,	$02,	nEb4,	$06,	nRst,	$02,	nC4
	dc.b		$06,	nRst,	$02,	nB3,	$06,	nRst,	$02,	nE4
	dc.b		nRst,	$04,	nD4,	$02,	nRst,	$04,	nE4,	$02
	dc.b		nRst
	smpsReturn

Sylvcastleact2_Call62:
	dc.b		nG4,	$04,	nFs4,	nG4,	$08,	nRst,	$10
	smpsReturn

Sylvcastleact2_Call63:
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$04
	dc.b		dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	dsnares1,	dsnares1
	smpsReturn

Sylvcastleact2_Call64:
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$04
	dc.b		dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$06,	dkicks1,	$02,	dsnares1,	nRst,	dsnares1,	dsnares1
	dc.b		nRst,	$06
	smpsReturn

Sylvcastleact2_Call65:
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	smpsReturn

Sylvcastleact2_Call66:
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	dsnares1
	dc.b		dsnares1
	smpsReturn

Sylvcastleact2_Call67:
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	dsnares1,	nRst,	dkicks1,	dsnares1,	nRst
	dc.b		$04,	dkicks1,	$02,	nRst,	$04,	dsnares1,	$02,	dsnares1
	dc.b		nRst,	$06
	smpsReturn

Sylvcastleact2_Call68:
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$04
	dc.b		dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1
	dc.b		$02,	nRst,	$06,	dkicks1,	$02,	nRst,	$06,	dsnares1
	dc.b		$02,	nRst,	$04,	dsnares1,	$02,	dkicks1,	nRst,	dsnares1
	dc.b		nRst,	dsnares1,	dsnares1,	nRst,	dsnares1
	smpsReturn

Sylvcastleact2_Call69:
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$04
	dc.b		dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1
	dc.b		$02,	nRst,	$06,	dkicks1,	$02,	nRst,	dkicks1,	dsnares1
	dc.b		nRst,	$04,	dkicks1,	$02,	dkicks1,	dsnares1,	nRst,	dkicks1
	dc.b		dkicks1,	nRst,	$08
	smpsReturn

Sylvcastleact2_Call6A:
	dc.b		dsnares1,	$02,	dkicks1,	nRst,	dkicks1,	dsnares1,	nRst,	dsnares1
	dc.b		nRst,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$04
	dc.b		dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$06
	smpsReturn

Sylvcastleact2_Call6B:
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	dsnares1
	dc.b		dsnares1,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$04
	dc.b		dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$06
	smpsReturn

Sylvcastleact2_Call6C:
	dc.b		dkicks1,	$02,	dsnares1,	nRst,	dsnares1,	dsnares1,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	smpsReturn

Sylvcastleact2_Call6D:
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	dsnares1
	dc.b		dsnares1,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	smpsReturn

Sylvcastleact2_Call6E:
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst,	$06
	dc.b		dkicks1,	$02,	nRst,	dsnares1,	nRst,	dkicks1,	dsnares1,	nRst
	dc.b		$04
	smpsReturn

Sylvcastleact2_Call6F:
	dc.b		dkicks1,	$02,	nRst,	$04,	dsnares1,	$02,	dsnares1,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1
	dc.b		$02,	nRst,	$06,	dkicks1,	$02,	nRst,	$06,	dsnares1
	dc.b		$02,	nRst,	$04,	dsnares1,	$02,	dkicks1,	nRst,	$06
	dc.b		dsnares1,	$02,	nRst,	$06,	dkicks1,	$02,	nRst,	$06
	dc.b		dsnares1,	$02,	nRst,	$04,	dsnares1,	$02
	smpsReturn

Sylvcastleact2_Call70:
	dc.b		dkicks1,	$02,	nRst,	dsnares1,	nRst,	dsnares1,	dsnares1,	nRst
	dc.b		dsnares1,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst,	$04
	dc.b		dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02,	nRst
	dc.b		$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$06,	dkicks1,	$02,	nRst,	$06,	dsnares1,	$02
	dc.b		nRst,	$04,	dsnares1,	$02,	dkicks1,	nRst,	$06,	dsnares1
	dc.b		$02,	nRst,	$06,	dkicks1,	$02,	nRst,	dkicks1,	dsnares1
	dc.b		nRst,	$04,	dkicks1,	$02,	dkicks1
	smpsReturn

Sylvcastleact2_Call71:
	dc.b		dsnares1,	$02,	nRst,	dkicks1,	dkicks1,	nRst,	$08,	dsnares1
	dc.b		$02,	dkicks1,	nRst,	dkicks1,	dsnares1,	nRst,	dsnares1,	nRst
	smpsReturn

Sylvcastleact2_Voices:
;	Voice 00
;	$3C,$01,$00,$00,$00,$1F,$1F,$15,$1F,$11,$0D,$12,$05,$07,$04,$09,$02,$55,$3A,$25,$1A,$1A,$0E,$07,$0E
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$15,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$05,	$12,	$0D,	$11
	smpsVcDecayRate2	$02,	$09,	$04,	$07
	smpsVcDecayLevel	$01,	$02,	$03,	$05
	smpsVcReleaseRate	$0A,	$05,	$0A,	$05
	smpsVcTotalLevel	$0E,	$07,	$0E,	$1A

;	Voice 01
;	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A,$1A,$15,$10,$10,$10
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$01,	$01,	$01,	$01
	smpsVcRateScale		$00,	$00,	$00,	$02
	smpsVcAttackRate	$19,	$19,	$19,	$14
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0D,	$0D,	$0D,	$0F
	smpsVcDecayRate2	$04,	$04,	$04,	$07
	smpsVcDecayLevel	$01,	$01,	$01,	$02
	smpsVcReleaseRate	$0A,	$0A,	$0A,	$05
	smpsVcTotalLevel	$10,	$10,	$10,	$15

;	Voice 02
;	$3D,$12,$14,$12,$11,$50,$1B,$1B,$1A,$0F,$0A,$0A,$0A,$05,$07,$08,$06,$1F,$1F,$1F,$1F,$15,$1B,$10,$10
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$01,	$01,	$01,	$01
	smpsVcCoarseFreq	$01,	$02,	$04,	$02
	smpsVcRateScale		$00,	$00,	$00,	$01
	smpsVcAttackRate	$1A,	$1B,	$1B,	$10
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$0A,	$0A,	$0F
	smpsVcDecayRate2	$06,	$08,	$07,	$05
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$10,	$10,	$1B,	$15

;	Voice 03
;	$3A,$31,$25,$D3,$01,$5F,$1F,$1F,$9C,$08,$05,$04,$05,$03,$04,$02,$02,$2F,$2F,$1F,$2F,$29,$27,$1F,$13
;				#
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$0D,	$02,	$03
	smpsVcCoarseFreq	$01,	$03,	$05,	$01
	smpsVcRateScale		$02,	$00,	$00,	$01
	smpsVcAttackRate	$1C,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$05,	$04,	$05,	$08
	smpsVcDecayRate2	$02,	$02,	$04,	$03
	smpsVcDecayLevel	$02,	$01,	$02,	$02
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$13,	$1F,	$27,	$29

;	Voice 04
;	$3D,$01,$01,$03,$01,$50,$52,$58,$59,$0F,$02,$02,$02,$04,$00,$00,$00,$17,$09,$19,$19,$13,$1C,$24,$10
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$01,	$03,	$01,	$01
	smpsVcRateScale		$01,	$01,	$01,	$01
	smpsVcAttackRate	$19,	$18,	$12,	$10
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$02,	$02,	$02,	$0F
	smpsVcDecayRate2	$00,	$00,	$00,	$04
	smpsVcDecayLevel	$01,	$01,	$00,	$01
	smpsVcReleaseRate	$09,	$09,	$09,	$07
	smpsVcTotalLevel	$10,	$24,	$1C,	$13

;	Voice 05
;	$3A,$31,$20,$01,$E1,$8F,$8F,$8E,$54,$0E,$03,$0E,$03,$00,$00,$00,$00,$13,$F3,$13,$0A,$17,$21,$19,$0E
;				#
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$0E,	$00,	$02,	$03
	smpsVcCoarseFreq	$01,	$01,	$00,	$01
	smpsVcRateScale		$01,	$02,	$02,	$02
	smpsVcAttackRate	$14,	$0E,	$0F,	$0F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$03,	$0E,	$03,	$0E
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$00,	$01,	$0F,	$01
	smpsVcReleaseRate	$0A,	$03,	$03,	$03
	smpsVcTotalLevel	$0E,	$19,	$21,	$17

;	Voice 06
;	$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06,$08,$20,$10,$10,$F8,$19,$37,$13,$14
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$04
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$03,	$03
	smpsVcCoarseFreq	$01,	$00,	$05,	$06
	smpsVcRateScale		$02,	$02,	$03,	$03
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$06,	$09,	$06,	$07
	smpsVcDecayRate2	$08,	$06,	$06,	$07
	smpsVcDecayLevel	$0F,	$01,	$01,	$02
	smpsVcReleaseRate	$08,	$00,	$00,	$00
	smpsVcTotalLevel	$14,	$13,	$37,	$19

;	Voice 07
;	$3D,$12,$14,$12,$11,$50,$1B,$1B,$1A,$0F,$0A,$0A,$0A,$05,$07,$08,$06,$1F,$1F,$1F,$1F,$15,$1A,$0F,$0F
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$01,	$01,	$01,	$01
	smpsVcCoarseFreq	$01,	$02,	$04,	$02
	smpsVcRateScale		$00,	$00,	$00,	$01
	smpsVcAttackRate	$1A,	$1B,	$1B,	$10
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$0A,	$0A,	$0F
	smpsVcDecayRate2	$06,	$08,	$07,	$05
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$0F,	$0F,	$1A,	$15
	even
