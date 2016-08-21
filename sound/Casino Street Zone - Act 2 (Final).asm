; =============================================================================================
; Project Name:		CasinoStreetActII
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

CasinoStreetActII_Header:
	smpsHeaderVoice	CasinoStreetActII_Voices
	smpsHeaderChan	$06,	$02
	smpsHeaderTempo	$01,	$02

	smpsHeaderDAC	CasinoStreetActII_DAC
	smpsHeaderFM	CasinoStreetActII_FM1,	smpsPitch01lo,	$04
	smpsHeaderFM	CasinoStreetActII_FM2,	smpsPitch01lo,	$04
	smpsHeaderFM	CasinoStreetActII_FM3,	smpsPitch01hi,	$06
	smpsHeaderFM	CasinoStreetActII_FM4,	smpsPitch01lo,	$02
	smpsHeaderFM	CasinoStreetActII_FM5,	smpsPitch01lo,	$02
	smpsHeaderPSG	CasinoStreetActII_PSG1,	smpsPitch04lo,	$02,	$00
	smpsHeaderPSG	CasinoStreetActII_PSG2,	smpsPitch04lo,	$02,	$00

; FM1 Data
CasinoStreetActII_FM1:
	smpsCall	CasinoStreetActII_Call01
	smpsCall	CasinoStreetActII_Call02
	smpsCall	CasinoStreetActII_Call03
	smpsCall	CasinoStreetActII_Call04
	smpsCall	CasinoStreetActII_Call05
	smpsCall	CasinoStreetActII_Call06
	smpsCall	CasinoStreetActII_Call07
	smpsCall	CasinoStreetActII_Call08
	smpsCall	CasinoStreetActII_Call09
	smpsCall	CasinoStreetActII_Call0A
	smpsCall	CasinoStreetActII_Call0A
	smpsCall	CasinoStreetActII_Call0B
	smpsJump	CasinoStreetActII_FM1

; FM2 Data
CasinoStreetActII_FM2:
	smpsCall	CasinoStreetActII_Call0C
	smpsCall	CasinoStreetActII_Call0D
	smpsCall	CasinoStreetActII_Call0E
	smpsCall	CasinoStreetActII_Call0F
	smpsCall	CasinoStreetActII_Call10
	smpsCall	CasinoStreetActII_Call11
	smpsCall	CasinoStreetActII_Call12
	smpsCall	CasinoStreetActII_Call13
	smpsCall	CasinoStreetActII_Call14
	smpsCall	CasinoStreetActII_Call15
	smpsCall	CasinoStreetActII_Call15
	smpsCall	CasinoStreetActII_Call16
	smpsJump	CasinoStreetActII_FM2

; FM3 Data
CasinoStreetActII_FM3:
	smpsCall	CasinoStreetActII_Call17
	smpsCall	CasinoStreetActII_Call18
	smpsCall	CasinoStreetActII_Call19
	smpsCall	CasinoStreetActII_Call1A
	smpsCall	CasinoStreetActII_Call1B
	smpsCall	CasinoStreetActII_Call1C
	smpsCall	CasinoStreetActII_Call1D
	smpsCall	CasinoStreetActII_Call1A
	smpsCall	CasinoStreetActII_Call1E
	smpsCall	CasinoStreetActII_Call1F
	smpsCall	CasinoStreetActII_Call1F
	smpsCall	CasinoStreetActII_Call20
	smpsJump	CasinoStreetActII_FM3

; FM4 Data
CasinoStreetActII_FM4:
	smpsCall	CasinoStreetActII_Call21
	smpsCall	CasinoStreetActII_Call22
	smpsCall	CasinoStreetActII_Call23
	smpsCall	CasinoStreetActII_Call24
	smpsCall	CasinoStreetActII_Call25
	smpsCall	CasinoStreetActII_Call26
	smpsCall	CasinoStreetActII_Call27
	smpsCall	CasinoStreetActII_Call28
	smpsCall	CasinoStreetActII_Call29
	smpsCall	CasinoStreetActII_Call2A
	smpsCall	CasinoStreetActII_Call2A
	smpsCall	CasinoStreetActII_Call2B
	smpsJump	CasinoStreetActII_FM4

; FM5 Data
CasinoStreetActII_FM5:
	smpsCall	CasinoStreetActII_Call2C
	smpsCall	CasinoStreetActII_Call2D
	smpsCall	CasinoStreetActII_Call2E
	smpsCall	CasinoStreetActII_Call2F
	smpsCall	CasinoStreetActII_Call30
	smpsCall	CasinoStreetActII_Call31
	smpsCall	CasinoStreetActII_Call32
	smpsCall	CasinoStreetActII_Call33
	smpsCall	CasinoStreetActII_Call34
	smpsCall	CasinoStreetActII_Call35
	smpsCall	CasinoStreetActII_Call36
	smpsCall	CasinoStreetActII_Call37
	smpsJump	CasinoStreetActII_FM5

; PSG1 Data
CasinoStreetActII_PSG1:
	smpsCall	CasinoStreetActII_Call38
	smpsCall	CasinoStreetActII_Call39
	smpsCall	CasinoStreetActII_Call39
	smpsCall	CasinoStreetActII_Call39
	smpsCall	CasinoStreetActII_Call38
	smpsCall	CasinoStreetActII_Call39
	smpsCall	CasinoStreetActII_Call39
	smpsCall	CasinoStreetActII_Call39
	smpsCall	CasinoStreetActII_Call39
	smpsCall	CasinoStreetActII_Call3A
	smpsCall	CasinoStreetActII_Call3A
	smpsCall	CasinoStreetActII_Call3B
	smpsJump	CasinoStreetActII_PSG1

; PSG2 Data
CasinoStreetActII_PSG2:
	smpsPSGform	$E7
	smpsCall	CasinoStreetActII_Call3C
	smpsCall	CasinoStreetActII_Call3D
	smpsCall	CasinoStreetActII_Call3E
	smpsCall	CasinoStreetActII_Call3F
	smpsCall	CasinoStreetActII_Call40
	smpsCall	CasinoStreetActII_Call3D
	smpsCall	CasinoStreetActII_Call3E
	smpsCall	CasinoStreetActII_Call3F
	smpsCall	CasinoStreetActII_Call41
	smpsCall	CasinoStreetActII_Call42
	smpsCall	CasinoStreetActII_Call43
	smpsCall	CasinoStreetActII_Call44
	smpsJump	CasinoStreetActII_PSG2

; DAC Data
CasinoStreetActII_DAC:
	smpsCall	CasinoStreetActII_Call45
	smpsCall	CasinoStreetActII_Call46
	smpsCall	CasinoStreetActII_Call47
	smpsCall	CasinoStreetActII_Call48
	smpsCall	CasinoStreetActII_Call49
	smpsCall	CasinoStreetActII_Call46
	smpsCall	CasinoStreetActII_Call47
	smpsCall	CasinoStreetActII_Call48
	smpsCall	CasinoStreetActII_Call4A
	smpsCall	CasinoStreetActII_Call4B
	smpsCall	CasinoStreetActII_Call4B
	smpsCall	CasinoStreetActII_Call4C
	smpsJump	CasinoStreetActII_DAC

CasinoStreetActII_Call01:
	smpsFMvoice	$02
	dc.b		nA5,	$0C,	nG5,	nFs5,	$08,	nRst,	$04,	nG5
	dc.b		$0C,	nFs5,	$04,	nRst,	nD5,	nRst,	nB4,	nRst
	dc.b		nB4,	nRst,	nCs5,	$05,	nRst,	$01,	nCs5,	$02
	dc.b		$04,	nD5,	nRst,	$08,	nA4,	$05,	nRst,	$01
	dc.b		nA4,	$02,	nCs5,	$05,	nRst,	$01,	nD5,	$02
	dc.b		nE5,	$08
	smpsReturn

CasinoStreetActII_Call02:
	dc.b		nFs5,	$05,	nRst,	$0B,	nG5,	$0C,	nA5,	$04
	dc.b		nRst,	$08,	nD6,	$04,	nRst,	nCs6,	nRst,	nA5
	dc.b		nRst,	nB5,	$0C,	nA5,	nG5,	$20,	nRst,	$08
	smpsReturn

CasinoStreetActII_Call03:
	dc.b		nD5,	$0C,	nE5,	nFs5,	nG5,	nA5,	$04,	nRst
	dc.b		nD6,	nRst,	nC6,	$28,	nRst,	$08,	nBb5,	$0C
	dc.b		nRst,	$04
	smpsReturn

CasinoStreetActII_Call04:
	dc.b		nB5,	$0C,	nA5,	nG5,	nD5,	nB5,	$04,	nRst
	dc.b		nG5,	nRst,	nA5,	$20,	nFs5,	$08,	nRst,	nA5
	dc.b		$0C,	nAb5,	$04
	smpsReturn

CasinoStreetActII_Call05:
	dc.b		smpsNoAttack,	$08,	nFs5,	$04,	nRst,	nE5,	$0C,	nB5
	dc.b		$06,	nRst,	$02,	nB5,	nRst,	nB5,	$04,	nRst
	dc.b		nA5,	nRst,	nAb5,	nA5,	$20,	nRst,	$0C,	nA4
	dc.b		$05,	nRst,	$01,	nA4,	$02,	nCs5,	$05,	nRst
	dc.b		$01,	nD5,	$02,	nE5,	$08
	smpsReturn

CasinoStreetActII_Call06:
	dc.b		nFs5,	$10,	nG5,	$0C,	nA5,	$04,	nRst,	$08
	dc.b		nD6,	$04,	nRst,	nCs6,	nRst,	nA5,	nRst,	nB5
	dc.b		$0C,	nA5,	nG5,	$20,	nRst,	$08
	smpsReturn

CasinoStreetActII_Call07:
	dc.b		nD5,	$0C,	nE5,	nFs5,	nG5,	nA5,	$04,	nRst
	dc.b		nB5,	nRst,	nC6,	$20,	nRst,	$04,	nC6,	$0C
	dc.b		nB5,	$04,	nRst,	nA5,	nRst
	smpsReturn

CasinoStreetActII_Call08:
	dc.b		nB5,	$0C,	nA5,	nG5,	nD5,	$0A,	nRst,	$02
	dc.b		nB5,	$04,	nRst,	nG5,	nRst,	nA5,	$20,	nFs5
	dc.b		$08,	nRst,	nA5,	$0C,	nAb5,	$04
	smpsReturn

CasinoStreetActII_Call09:
	dc.b		smpsNoAttack,	$08,	nFs5,	$04,	nRst,	nE5,	$0A,	nRst
	dc.b		$02,	nB5,	$06,	nRst,	$02,	nB5,	$04,	nB5
	dc.b		nRst,	nA5,	$05,	nRst,	$03,	nAb5,	$04,	nA5
	dc.b		$24,	nRst,	$10,	nG5,	$03,	nA5,	$02,	nRst
	dc.b		$01,	nB5,	$02,	nCs6,	$03,	nD6,	$02,	nRst
	dc.b		$01,	nE6,	$02
	smpsReturn

CasinoStreetActII_Call0A:
	dc.b		nD6,	$04,	nRst,	nA5,	nRst,	nE6,	$08,	nD6
	dc.b		$04,	nD6,	nRst,	nD6,	nA5,	nRst,	nE6,	$08
	dc.b		nD6,	$04,	nRst,	nG6,	nRst,	nFs6,	nRst,	nE6
	dc.b		$08,	nFs6,	$04,	nG6,	nRst,	nG6,	nFs6,	nRst
	dc.b		nE6,	$08,	nD6,	$04,	nRst
	smpsReturn

CasinoStreetActII_Call0B:
	dc.b		nE5,	$0C,	nRst,	$04,	nFs5,	$0C,	nRst,	$04
	dc.b		nG5,	$0C,	nRst,	$04,	nAb5,	$0C,	nRst,	$04
	smpsReturn

CasinoStreetActII_Call0C:
	smpsFMvoice	$02
	dc.b		nFs5,	$0C,	nE5,	nD5,	$08,	nRst,	$04,	nE5
	dc.b		$0C,	nD5,	$04,	nRst,	nA4,	nRst,	nG4,	nRst
	dc.b		nG4,	nRst,	nA4,	$05,	nRst,	$01,	nB4,	$02
	dc.b		nA4,	$04,	nFs4,	nRst,	$08,	nE4,	$05,	nRst
	dc.b		$01,	nFs4,	$02,	nA4,	$05,	nRst,	$01,	nB4
	dc.b		$02,	nCs5,	$08
	smpsReturn

CasinoStreetActII_Call0D:
	dc.b		nD5,	$05,	nRst,	$0B,	nE5,	$0C,	nFs5,	$04
	dc.b		nRst,	$08,	nA5,	$04,	nRst,	nA5,	nRst,	nFs5
	dc.b		nRst,	nD5,	$0C,	nE5,	nD5,	$20,	nRst,	$08
	smpsReturn

CasinoStreetActII_Call0E:
	dc.b		nA4,	$0C,	nCs5,	nD5,	nE5,	nFs5,	$04,	nRst
	dc.b		nG5,	nRst,	nA5,	$28,	nRst,	$08,	nFs5,	$0C
	dc.b		nRst,	$04
	smpsReturn

CasinoStreetActII_Call0F:
	dc.b		nG5,	$0C,	nE5,	nD5,	$0A,	nRst,	$02,	nB4
	dc.b		$0C,	nG5,	$04,	nRst,	nE5,	nRst,	nFs5,	$1E
	dc.b		nRst,	$02,	nD5,	$08,	nRst,	nFs5,	$0C,	nE5
	dc.b		$04
	smpsReturn

CasinoStreetActII_Call10:
	dc.b		smpsNoAttack,	$08,	nD5,	$04,	nRst,	nB4,	$0C,	nAb5
	dc.b		$06,	nRst,	$02,	nAb5,	nRst,	nAb5,	$04,	nRst
	dc.b		nE5,	nRst,	nD5,	nCs5,	$20,	nRst,	$0C,	nE4
	dc.b		$05,	nRst,	$01,	nFs4,	$02,	nA4,	$05,	nRst
	dc.b		$01,	nB4,	$02,	nA4,	$08
	smpsReturn

CasinoStreetActII_Call11:
	dc.b		nA4,	$10,	nCs5,	$0C,	nD5,	$04,	nRst,	$08
	dc.b		nFs5,	$04,	nRst,	nA5,	nRst,	nFs5,	nRst,	nD5
	dc.b		$0C,	nC5,	nB4,	$20,	nRst,	$08
	smpsReturn

CasinoStreetActII_Call12:
	dc.b		nA4,	$0C,	nCs5,	nA4,	nB4,	nCs5,	$04,	nRst
	dc.b		nD5,	nRst,	nE5,	$20,	nRst,	$04,	nFs5,	$0C
	dc.b		nG5,	$04,	nRst,	nFs5,	nRst
	smpsReturn

CasinoStreetActII_Call13:
	dc.b		nD5,	$0C,	nC5,	nB4,	$0A,	nRst,	$02,	nB4
	dc.b		$0C,	nD5,	$04,	nRst,	nE5,	nRst,	nD5,	$20
	dc.b		nA4,	$08,	nRst,	nD5,	$0C,	nE5,	$04
	smpsReturn

CasinoStreetActII_Call14:
	dc.b		smpsNoAttack,	$08,	nD5,	$04,	nRst,	nB4,	$0C,	nE5
	dc.b		$06,	nRst,	$02,	nE5,	$04,	nAb5,	nRst,	nE5
	dc.b		$05,	nRst,	$03,	nD5,	$04,	nCs5,	$24,	nRst
	dc.b		$10,	nCs5,	$03,	nD5,	$02,	nRst,	$01,	nE5
	dc.b		$02,	nFs5,	$03,	nA5,	$02,	nRst,	$01,	nCs6
	dc.b		$02
	smpsReturn

CasinoStreetActII_Call15:
	dc.b		nFs5,	$04,	nRst,	nFs5,	nRst,	nG5,	$08,	nA5
	dc.b		$04,	nFs5,	nRst,	nA5,	nFs5,	nRst,	nA5,	$08
	dc.b		nFs5,	$04,	nRst,	nB5,	nRst,	nA5,	nRst,	nG5
	dc.b		$08,	nA5,	$04,	nB5,	nRst,	nB5,	nD6,	nRst
	dc.b		nG5,	$08,	nFs5,	$04,	nRst
	smpsReturn

CasinoStreetActII_Call16:
	dc.b		nB4,	$0C,	nRst,	$04,	nCs5,	$0C,	nRst,	$04
	dc.b		nE5,	$0C,	nRst,	$04,	nD5,	$0C,	nRst,	$04
	smpsReturn

CasinoStreetActII_Call17:
	smpsFMvoice	$01
	dc.b		nD2,	$0C,	nE2,	nFs2,	nE2,	nFs2,	$04,	nRst
	dc.b		nD2,	nRst,	nG2,	nRst,	nG2,	nRst,	nA2,	nRst
	dc.b		$02,	nA2,	nA2,	$04,	nD2,	nRst,	$08,	nA1
	dc.b		nE2,	$05,	nRst,	$01,	nA2,	$02,	nA1,	$08
	smpsReturn

CasinoStreetActII_Call18:
	dc.b		nD2,	$05,	nRst,	$0B,	nA1,	$0C,	nD2,	$04
	dc.b		nRst,	nD2,	nE2,	$05,	nRst,	$03,	nFs2,	$04
	dc.b		nRst,	nD2,	nRst,	nE2,	$0C,	nFs2,	nE2,	$08
	dc.b		nRst,	$04,	nG2,	$0C,	nFs2,	$04,	nRst,	nE2
	dc.b		nRst
	smpsReturn

CasinoStreetActII_Call19:
	dc.b		nD2,	$0C,	nA1,	nD2,	nE2,	nD2,	$04,	nRst
	dc.b		nA1,	nRst,	nC2,	nRst,	nC2,	$08,	nE2,	$04
	dc.b		nRst,	nE2,	$08,	nG2,	$04,	nRst,	nG2,	$08
	dc.b		nBb2,	$04,	nRst,	nBb2,	$08
	smpsReturn

CasinoStreetActII_Call1A:
	dc.b		nG2,	$04,	nRst,	nG2,	nD2,	nRst,	nD2,	nA2
	dc.b		nRst,	$08,	nG2,	$0C,	nA2,	$04,	nRst,	nE2
	dc.b		nRst,	nFs2,	nRst,	nFs2,	$08,	nA2,	$04,	nRst
	dc.b		nA2,	$08,	nB2,	$04,	nRst,	nB2,	$08,	nD3
	dc.b		$04,	nRst,	nD3,	nE3
	smpsReturn

CasinoStreetActII_Call1B:
	dc.b		smpsNoAttack,	$03,	nRst,	$05,	nB2,	$04,	nRst,	nE2
	dc.b		$0C,	nAb2,	$03,	nRst,	$05,	nA2,	$04,	nB2
	dc.b		nRst,	nE2,	nRst,	nAb2,	nA2,	$0D,	nRst,	$07
	dc.b		nG2,	$05,	nRst,	$01,	nAb2,	$02,	nA2,	$04
	dc.b		nE2,	nRst,	$08,	nA1,	$0D,	nRst,	$01,	nA2
	dc.b		$02,	nA1,	$08
	smpsReturn

CasinoStreetActII_Call1C:
	dc.b		nD2,	$05,	nRst,	$0B,	nA1,	$0C,	nD2,	$04
	dc.b		nRst,	nD2,	nE2,	$05,	nRst,	$03,	nFs2,	$04
	dc.b		nRst,	nD2,	nRst,	nE2,	$0C,	nFs2,	nG2,	$08
	dc.b		nRst,	$04,	nG2,	$0C,	nFs2,	$04,	nRst,	nE2
	dc.b		nRst
	smpsReturn

CasinoStreetActII_Call1D:
	dc.b		nD2,	$0C,	nA1,	nD2,	nE2,	nCs2,	$04,	nRst
	dc.b		nB1,	nRst,	nC2,	nRst,	nC2,	$08,	nE2,	$04
	dc.b		nRst,	nE2,	$05,	nRst,	$01,	nG2,	nRst,	$09
	dc.b		nG2,	$08,	nC3,	$04,	nRst,	nC3,	$08
	smpsReturn

CasinoStreetActII_Call1E:
	dc.b		smpsNoAttack,	$03,	nRst,	$05,	nB2,	$04,	nRst,	nE2
	dc.b		$0C,	nAb2,	$03,	nRst,	$05,	nA2,	$04,	nB2
	dc.b		nRst,	nE2,	nRst,	nAb2,	nA2,	$0D,	nRst,	$07
	dc.b		nG2,	$05,	nRst,	$01,	nAb2,	$02,	nA2,	$04
	dc.b		nE2,	nRst,	$08,	nA1,	$0D,	nRst,	$01,	nE2
	dc.b		$02,	nA2,	$08
	smpsReturn

CasinoStreetActII_Call1F:
	dc.b		nD2,	$05,	nRst,	$03,	nD3,	$05,	nRst,	$03
	dc.b		nA2,	$08,	nD2,	$04,	nC2,	nRst,	nC2,	nC3
	dc.b		$05,	nRst,	$03,	nA2,	$08,	nC2,	nB1,	$05
	dc.b		nRst,	$03,	nB2,	$05,	nRst,	$03,	nG2,	$08
	dc.b		nB1,	$04,	nE2,	nRst,	nE2,	nB2,	$08,	nG2
	dc.b		$05,	nRst,	$03,	nFs2,	$08
	smpsReturn

CasinoStreetActII_Call20:
	dc.b		nE2,	$0D,	nRst,	$03,	nFs2,	$0D,	nRst,	$03
	dc.b		nE2,	$04,	nF2,	nFs2,	nG2,	nAb2,	nRst,	nAb2
	dc.b		nA2
	smpsReturn

CasinoStreetActII_Call21:
	smpsFMvoice	$03
	dc.b		nA4,	$0C,	nG4,	nFs4,	$04,	nRst,	$08,	nG4
	dc.b		$0C,	nFs4,	$04,	nRst,	nD4,	nRst,	nB3,	nRst
	dc.b		nB3,	nRst,	nCs4,	$05,	nRst,	$01,	nCs4,	$02
	dc.b		$04,	nD4,	nRst,	$08,	nA3,	$05,	nRst,	$01
	dc.b		nA3,	$02,	nCs4,	$05,	nRst,	$01,	nD4,	$02
	dc.b		nE4,	$08
	smpsReturn

CasinoStreetActII_Call22:
	dc.b		nFs4,	$05,	nRst,	$0B,	nG4,	$0C,	nA4,	$04
	dc.b		nRst,	$08,	nD5,	$04,	nRst,	nCs5,	nRst,	nA4
	dc.b		nRst,	nB4,	$0C,	nA4,	nG4,	$20,	nRst,	$08
	smpsReturn

CasinoStreetActII_Call23:
	dc.b		nD4,	$0C,	nE4,	nFs4,	nG4,	nA4,	$04,	nRst
	dc.b		nD5,	nRst,	nC5,	$28,	nRst,	$08,	nBb4,	$0C
	dc.b		nRst,	$04
	smpsReturn

CasinoStreetActII_Call24:
	dc.b		nB4,	$0C,	nA4,	nG4,	nD4,	nB4,	$04,	nRst
	dc.b		nG4,	nRst,	nA4,	$20,	nFs4,	$08,	nRst,	nA4
	dc.b		$0C,	nAb4,	$04
	smpsReturn

CasinoStreetActII_Call25:
	dc.b		smpsNoAttack,	$08,	nFs4,	$04,	nRst,	nE4,	$0C,	nB4
	dc.b		$06,	nRst,	$02,	nB4,	nRst,	nB4,	$04,	nRst
	dc.b		nA4,	nRst,	nAb4,	nA4,	$20,	nRst,	$0C,	nA3
	dc.b		$05,	nRst,	$01,	nA3,	$02,	nCs4,	$05,	nRst
	dc.b		$01,	nD4,	$02,	nE4,	$08
	smpsReturn

CasinoStreetActII_Call26:
	dc.b		nFs4,	$10,	nG4,	$0C,	nA4,	$04,	nRst,	$08
	dc.b		nD5,	$04,	nRst,	nCs5,	nRst,	nA4,	nRst,	nB4
	dc.b		$0C,	nA4,	nG4,	$18,	nRst,	$10
	smpsReturn

CasinoStreetActII_Call27:
	dc.b		nD4,	$0C,	nE4,	nFs4,	$04,	nRst,	$08,	nG4
	dc.b		$0C,	nA4,	$04,	nRst,	nB4,	nRst,	nC5,	$20
	dc.b		nRst,	$04,	nC5,	$0C,	nB4,	$04,	nRst,	nA4
	dc.b		nRst
	smpsReturn

CasinoStreetActII_Call28:
	dc.b		nB4,	$0C,	nA4,	nG4,	$04,	nRst,	$08,	nD4
	dc.b		$0A,	nRst,	$02,	nB4,	$04,	nRst,	nG4,	nRst
	dc.b		nA4,	$20,	nFs4,	$08,	nRst,	nA4,	$0C,	nAb4
	dc.b		$04
	smpsReturn

CasinoStreetActII_Call29:
	dc.b		smpsNoAttack,	$04,	nRst,	nFs4,	nRst,	nE4,	$0A,	nRst
	dc.b		$02,	nB4,	nRst,	$06,	nB4,	$04,	nB4,	nRst
	dc.b		nA4,	$05,	nRst,	$03,	nAb4,	$04,	nA4,	$20
	dc.b		nRst,	$14,	nG4,	$03,	nA4,	$02,	nRst,	$01
	dc.b		nB4,	$02,	nCs5,	$03,	nD5,	$02,	nRst,	$01
	dc.b		nE5,	$02
	smpsReturn

CasinoStreetActII_Call2A:
	dc.b		nD5,	$04,	nRst,	nA4,	nRst,	nE5,	$08,	nD5
	dc.b		$04,	nD5,	nRst,	nD5,	nA4,	nRst,	nE5,	$08
	dc.b		nD5,	$04,	nRst,	nG5,	nRst,	nFs5,	nRst,	nE5
	dc.b		$08,	nFs5,	$04,	nG5,	nRst,	nG5,	nFs5,	nRst
	dc.b		nE5,	$08,	nD5,	$04,	nRst
	smpsReturn

CasinoStreetActII_Call2B:
	dc.b		nE4,	$0C,	nRst,	$04,	nFs4,	$0C,	nRst,	$04
	dc.b		nG4,	$0C,	nRst,	$04,	nAb4,	$0C,	nRst,	$04
	smpsReturn

CasinoStreetActII_Call2C:
	smpsFMvoice	$03
	dc.b		nFs4,	$0C,	nE4,	nD4,	$04,	nRst,	$08,	nE4
	dc.b		$0C,	nD4,	$04,	nRst,	nA3,	nRst,	nG3,	nRst
	dc.b		nG3,	nRst,	nA3,	$05,	nRst,	$01,	nB3,	$02
	dc.b		nA3,	$04,	nFs3,	nRst,	$08,	nE3,	$05,	nRst
	dc.b		$01,	nFs3,	$02,	nA3,	$05,	nRst,	$01,	nB3
	dc.b		$02,	nCs4,	$08
	smpsReturn

CasinoStreetActII_Call2D:
	dc.b		nD4,	$05,	nRst,	$0B,	nE4,	$0C,	nFs4,	$04
	dc.b		nRst,	$08,	nA4,	$04,	nRst,	nA4,	nRst,	nFs4
	dc.b		nRst,	nD4,	$0C,	nE4,	nD4,	$20,	nRst,	$08
	smpsReturn

CasinoStreetActII_Call2E:
	dc.b		nA3,	$0C,	nCs4,	nD4,	nE4,	nFs4,	$04,	nRst
	dc.b		nG4,	nRst,	nA4,	$28,	nRst,	$08,	nFs4,	$0C
	dc.b		nRst,	$04
	smpsReturn

CasinoStreetActII_Call2F:
	dc.b		nG4,	$0C,	nE4,	nD4,	$0A,	nRst,	$02,	nB3
	dc.b		$0C,	nG4,	$04,	nRst,	nE4,	nRst,	nFs4,	$1E
	dc.b		nRst,	$02,	nD4,	$08,	nRst,	nFs4,	$0C,	nE4
	dc.b		$04
	smpsReturn

CasinoStreetActII_Call30:
	dc.b		smpsNoAttack,	$08,	nD4,	$04,	nRst,	nB3,	$0C,	nAb4
	dc.b		$06,	nRst,	$02,	nAb4,	nRst,	nAb4,	$04,	nRst
	dc.b		nE4,	nRst,	nD4,	nCs4,	$20,	nRst,	$0C,	nE3
	dc.b		$05,	nRst,	$01,	nFs3,	$02,	nA3,	$05,	nRst
	dc.b		$01,	nB3,	$02,	nA3,	$08
	smpsReturn

CasinoStreetActII_Call31:
	dc.b		nA3,	$10,	nCs4,	$0C,	nD4,	$04,	nRst,	$08
	dc.b		nFs4,	$04,	nRst,	nA4,	nRst,	nFs4,	nRst,	nD4
	dc.b		$0C,	nC4,	nB3,	$18,	nRst,	$10
	smpsReturn

CasinoStreetActII_Call32:
	dc.b		nA3,	$0C,	nCs4,	nA3,	$04,	nRst,	$08,	nB3
	dc.b		$0C,	nCs4,	$04,	nRst,	nD4,	nRst,	nE4,	$20
	dc.b		nRst,	$04,	nFs4,	$0C,	nG4,	$04,	nRst,	nFs4
	dc.b		nRst
	smpsReturn

CasinoStreetActII_Call33:
	dc.b		nD4,	$0C,	nC4,	nB3,	$02,	nRst,	$0A,	nB3
	dc.b		$0C,	nD4,	$04,	nRst,	nE4,	nRst,	nD4,	$20
	dc.b		nA3,	$08,	nRst,	nD4,	$0C,	nE4,	$04
	smpsReturn

CasinoStreetActII_Call34:
	dc.b		smpsNoAttack,	$04,	nRst,	nD4,	nRst,	nB3,	$0C,	nE4
	dc.b		$02,	nRst,	$06,	nE4,	$04,	nAb4,	nRst,	nE4
	dc.b		$05,	nRst,	$03,	nD4,	$04,	nCs4,	$20,	nRst
	dc.b		$14,	nCs4,	$03,	nD4,	$02,	nRst,	$01,	nE4
	dc.b		$02,	nFs4,	$03,	nA4,	$02,	nRst,	$01,	nCs5
	dc.b		$02
	smpsReturn

CasinoStreetActII_Call35:
	dc.b		nA4,	$04,	nRst,	nFs4,	nRst,	nB4,	$08,	nA4
	dc.b		$04,	nFs4,	nRst,	nA4,	nFs4,	nRst,	nB4,	$08
	dc.b		nA4,	$04,	nRst,	nD5,	nRst,	nA4,	nRst,	nB4
	dc.b		$08,	nCs5,	$04,	nB4,	nRst,	nB4,	nD5,	nRst
	dc.b		nB4,	$08,	nA4,	$04,	nRst
	smpsReturn

CasinoStreetActII_Call36:
	dc.b		nFs4,	$04,	nRst,	nFs4,	nRst,	nG4,	$08,	nA4
	dc.b		$04,	nFs4,	nRst,	nA4,	nFs4,	nRst,	nA4,	$08
	dc.b		nFs4,	$04,	nRst,	nB4,	nRst,	nA4,	nRst,	nG4
	dc.b		$08,	nA4,	$04,	nB4,	nRst,	nB4,	nD5,	nRst
	dc.b		nG4,	$08,	nFs4,	$04,	nRst
	smpsReturn

CasinoStreetActII_Call37:
	dc.b		nB3,	$0C,	nRst,	$04,	nCs4,	$0C,	nRst,	$04
	dc.b		nE4,	$0C,	nRst,	$04,	nD4,	$0C,	nRst,	$04
	smpsReturn

CasinoStreetActII_Call38:
	dc.b		smpsNoAttack,	$7C,	nRst,	$04
	smpsReturn

CasinoStreetActII_Call39:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

CasinoStreetActII_Call3A:
	smpsPSGvoice	$01
	dc.b		nD5,	$04,	nRst,	nA4,	nRst,	nE5,	$08,	nD5
	dc.b		$04,	nD5,	nRst,	nD5,	nA4,	nRst,	nE5,	$08
	dc.b		nD5,	$04,	nRst,	nG5,	nRst,	nFs5,	nRst,	nE5
	dc.b		$08,	nFs5,	$04,	nG5,	nRst,	nG5,	nFs5,	nRst
	dc.b		nE5,	$08,	nD5,	$04,	nRst
	smpsReturn

CasinoStreetActII_Call3B:
	dc.b		smpsNoAttack,	$0C,	nRst,	$10,	$24
	smpsReturn

CasinoStreetActII_Call3C:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	nCs0,	nCs0,	nRst,	nCs0,	$08
	dc.b		$04,	nRst,	nCs0,	nRst,	nCs0,	nCs0,	nRst,	$02
	dc.b		nCs0,	nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0,	nRst
	dc.b		nCs0,	nRst,	$02,	nCs0,	$06,	$04,	nRst,	$08
	dc.b		nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0,	$02,	nRst
	dc.b		$06
	smpsReturn

CasinoStreetActII_Call3D:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		$08,	nCs0,	nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	$08,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0,	nRst
	smpsReturn

CasinoStreetActII_Call3E:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		$08,	nCs0,	nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		$08,	nCs0,	nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst
	smpsReturn

CasinoStreetActII_Call3F:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	nCs0,	$08,	nCs0,	nCs0,	$04
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		$08,	nCs0,	nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0
	dc.b		$08
	smpsReturn

CasinoStreetActII_Call40:
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	$04,	nRst,	nCs0,	nRst,	nCs0,	$08
	dc.b		nCs0,	nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0,	$08
	dc.b		$04,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nRst,	$0C,	$04,	nCs0,	nRst,	nCs0,	$02,	nRst
	dc.b		$06
	smpsReturn

CasinoStreetActII_Call41:
	smpsPSGvoice	$02
	dc.b		nCs0,	$08,	$04,	nRst,	nCs0,	nRst,	nCs0,	$08
	dc.b		nCs0,	nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0,	$08
	dc.b		$04,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nCs0
	dc.b		nRst,	$0C,	$04,	nCs0,	nRst,	nCs0,	nRst
	smpsReturn

CasinoStreetActII_Call42:
	smpsPSGvoice	$02
	dc.b		nCs0,	$02,	nRst,	$06,	nCs0,	$04,	nRst,	nCs0
	dc.b		nRst,	nCs0,	$02,	nRst,	$04,	nCs0,	$02,	$08
	dc.b		$04,	nRst,	nCs0,	nRst,	$02,	nCs0,	nCs0,	$04
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		$02,	nRst,	$04,	nCs0,	$02,	$08,	$04,	nRst
	dc.b		nCs0,	nRst,	$02,	nCs0,	nCs0,	$04,	nRst
	smpsReturn

CasinoStreetActII_Call43:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0
	dc.b		$02,	nRst,	$04,	nCs0,	$02,	$08,	$04,	nRst
	dc.b		nCs0,	nRst,	$02,	nCs0,	nCs0,	$04,	nRst,	nCs0
	dc.b		nRst,	nCs0,	nRst,	nCs0,	nRst,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	$08,	$04,	nRst,	nCs0,	nRst
	dc.b		$02,	nCs0,	nCs0,	$04,	nRst
	smpsReturn

CasinoStreetActII_Call44:
	smpsPSGvoice	$02
	dc.b		nCs0,	$04,	nRst,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	$04,	nRst,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	$08,	nCs0,	nCs0,	$04,	nCs0,	nCs0,	nRst
	smpsReturn

CasinoStreetActII_Call45:
	dc.b		dKick,	$04,	nRst,	$08,	dKick,	$04,	nRst,	$08
	dc.b		dSnare,	$0C,	dKick,	$04,	nRst,	$08,	dSnare,	$04
	dc.b		nRst,	$02,	dSnare,	dSnare,	$04,	nRst,	dKick,	nRst
	dc.b		dKick,	nRst,	dSnare,	nRst,	$02,	dSnare,	dSnare,	$04
	dc.b		dKick,	nRst,	$08,	dKick,	$04,	nRst,	$0A,	dKick
	dc.b		$02,	dSnare,	$04,	nRst
	smpsReturn

CasinoStreetActII_Call46:
	dc.b		dKick,	$04,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		dKick,	$08,	$04,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	dKick,	$08,	$04,	dSnare
	dc.b		dKick,	$08,	$04,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst
	smpsReturn

CasinoStreetActII_Call47:
	dc.b		dKick,	$04,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		dKick,	$08,	$04,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		dKick,	$08,	$04,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst
	smpsReturn

CasinoStreetActII_Call48:
	dc.b		dKick,	$04,	nRst,	dSnare,	dKick,	$08,	$04,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		dKick,	$08,	$04,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		dKick
	smpsReturn

CasinoStreetActII_Call49:
	dc.b		nRst,	$04,	dKick,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		dKick,	$08,	$04,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		dKick,	$0C,	$04,	nRst,	dSnare,	nRst,	$02,	dSnare
	dc.b		dSnare,	$04,	dKick,	nRst,	$08,	dKick,	$0E,	$02
	dc.b		dSnare,	$04,	nRst
	smpsReturn

CasinoStreetActII_Call4A:
	dc.b		nRst,	$04,	dKick,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		dKick,	$08,	$04,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		dKick,	$0C,	$04,	nRst,	dSnare,	nRst,	$02,	dSnare
	dc.b		dSnare,	$04,	dKick,	nRst,	$08,	dKick,	dSnare,	$04
	dc.b		nRst,	$02,	dSnare,	dSnare,	$03,	dSnare,	dSnare,	$02
	smpsReturn

CasinoStreetActII_Call4B:
	dc.b		dKick,	$04,	nRst,	dSnare,	nRst,	dKick,	nRst,	$02
	dc.b		dKick,	dSnare,	$04,	dKick,	nRst,	dKick,	dSnare,	nRst
	dc.b		dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst
	dc.b		dKick,	nRst,	$02,	dKick,	dSnare,	$04,	dKick,	nRst
	dc.b		dKick,	dSnare,	nRst,	dKick,	nRst,	dSnare,	nRst
	smpsReturn

CasinoStreetActII_Call4C:
	dc.b		dKick,	$04,	nRst,	$02,	dKick,	dSnare,	$04,	nRst
	dc.b		dKick,	nRst,	$02,	dKick,	dSnare,	$04,	nRst,	dKick
	dc.b		dSnare,	$08,	$04,	dSnare,	nRst,	dSnare,	dSnare
	smpsReturn

CasinoStreetActII_Voices:
	dc.b		$3D,$01,$21,$51,$01,$12,$14,$14,$0F,$0A,$05,$05,$05,$00,$00,$00
	dc.b		$00,$2B,$2B,$2B,$1B,$19,$0E,$0E,$0E;			Voice 00
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$09;			Voice 01
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$0C;			Voice 02
	dc.b		$34,$33,$41,$7E,$74,$5B,$9F,$5F,$1F,$04,$07,$07,$08,$00,$00,$00
	dc.b		$00,$FF,$FF,$EF,$FF,$23,$10,$29,$17;			Voice 03
	even
