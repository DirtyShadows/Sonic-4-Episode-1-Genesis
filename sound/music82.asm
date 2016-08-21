; =============================================================================================
; Project Name:		SplashHillActII
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SplashHillActII_Header:
	smpsHeaderVoice	SplashHillActII_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	SplashHillActII_DAC
	smpsHeaderFM	SplashHillActII_FM1,	smpsPitch01lo,	$10
	smpsHeaderFM	SplashHillActII_FM2,	smpsPitch01lo,	$10
	smpsHeaderFM	SplashHillActII_FM3,	smpsPitch00,	$0E
	smpsHeaderFM	SplashHillActII_FM4,	smpsPitch01lo,	$10
	smpsHeaderFM	SplashHillActII_FM5,	smpsPitch01lo,	$14
	smpsHeaderPSG	SplashHillActII_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	SplashHillActII_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	SplashHillActII_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
SplashHillActII_FM1:
	smpsCall	SplashHillActII_Call01
	smpsCall	SplashHillActII_Call02
	smpsCall	SplashHillActII_Call03
	smpsCall	SplashHillActII_Call04
	smpsCall	SplashHillActII_Call05
	smpsJump	SplashHillActII_FM1

; FM2 Data
SplashHillActII_FM2:
	smpsCall	SplashHillActII_Call06
	smpsCall	SplashHillActII_Call07
	smpsCall	SplashHillActII_Call08
	smpsCall	SplashHillActII_Call09
	smpsCall	SplashHillActII_Call0A
	smpsJump	SplashHillActII_FM2

; FM3 Data
SplashHillActII_FM3:
	smpsCall	SplashHillActII_Call0B
	smpsCall	SplashHillActII_Call0C
	smpsCall	SplashHillActII_Call0D
	smpsCall	SplashHillActII_Call0E
	smpsCall	SplashHillActII_Call0D
	smpsJump	SplashHillActII_FM3

; FM4 Data
SplashHillActII_FM4:
	smpsCall	SplashHillActII_Call0F
	smpsCall	SplashHillActII_Call10
	smpsCall	SplashHillActII_Call11
	smpsCall	SplashHillActII_Call12
	smpsCall	SplashHillActII_Call13
	smpsJump	SplashHillActII_FM4

; FM5 Data
SplashHillActII_FM5:
	smpsCall	SplashHillActII_Call14
	smpsCall	SplashHillActII_Call15
	smpsCall	SplashHillActII_Call16
	smpsCall	SplashHillActII_Call17
	smpsCall	SplashHillActII_Call18
	smpsJump	SplashHillActII_FM5

; PSG1 Data
SplashHillActII_PSG1:
	smpsCall	SplashHillActII_Call19
	smpsCall	SplashHillActII_Call1A
	smpsCall	SplashHillActII_Call1B
	smpsCall	SplashHillActII_Call1A
	smpsCall	SplashHillActII_Call1C
	smpsJump	SplashHillActII_PSG1

; PSG2 Data
SplashHillActII_PSG2:
	smpsCall	SplashHillActII_Call1D
	smpsCall	SplashHillActII_Call1E
	smpsCall	SplashHillActII_Call1F
	smpsCall	SplashHillActII_Call1E
	smpsCall	SplashHillActII_Call20
	smpsJump	SplashHillActII_PSG2

; PSG3 Data
SplashHillActII_PSG3:
	smpsPSGform	$E7
	smpsCall	SplashHillActII_Call21
	smpsCall	SplashHillActII_Call22
	smpsCall	SplashHillActII_Call23
	smpsCall	SplashHillActII_Call24
	smpsCall	SplashHillActII_Call25
	smpsJump	SplashHillActII_PSG3

; DAC Data
SplashHillActII_DAC:
	smpsCall	SplashHillActII_Call26
	smpsCall	SplashHillActII_Call27
	smpsCall	SplashHillActII_Call28
	smpsCall	SplashHillActII_Call29
	smpsCall	SplashHillActII_Call2A
	smpsJump	SplashHillActII_DAC

SplashHillActII_Call01:
	smpsFMvoice	$02
	dc.b		nG3,	$02,	nB3,	nD4,	nG4,	nG4,	$04,	nE4
	dc.b		$02,	nRst,	$06,	nC4,	$02,	nF4,	nE4,	$04
	dc.b		nC4,	$02,	nRst,	$06,	nB3,	$02,	nD4,	nC4
	dc.b		$04,	nB3,	nC4,	nD4,	$0C,	nG3,	$02,	nB3
	dc.b		nD4,	nG4,	nG4,	$04,	nE4,	$02,	nRst,	$06
	dc.b		nC4,	$02,	nF4,	nE4,	$04,	nC4,	$02,	nRst
	dc.b		$06,	nB3,	$02,	nD4,	nC4,	$04,	nB3,	nA3
	dc.b		nG3,	$0C
	smpsReturn

SplashHillActII_Call02:
	dc.b		smpsNoAttack,	$02,	nRst,	$0A
	smpsFMvoice	$01
	dc.b		nC6,	$02,	nRst,	nC6,	$06,	nRst,	$02,	nC6
	dc.b		$03,	nRst,	nC6,	nRst,	nC6,	nRst,	$05,	nB5
	dc.b		$02,	nRst,	nB5,	$06,	nRst,	$02,	nB5,	$03
	dc.b		nRst,	nB5,	nRst,	nB5,	nRst,	$05,	nC6,	$02
	dc.b		nRst,	nC6,	$06,	nRst,	$02,	nC6,	$03,	nRst
	dc.b		nC6,	nRst,	nC6,	nRst,	$05,	nC6,	$02,	nRst
	dc.b		nBb5,	$06,	nRst,	$02,	nBb5,	$03,	nRst,	nBb5
	dc.b		$02
	smpsReturn

SplashHillActII_Call03:
	dc.b		smpsNoAttack,	$01,	nRst,	$03,	nBb5,	nRst,	$05,	nC6
	dc.b		$02,	nRst,	nC6,	$08,	nRst,	$04,	nC6,	$02
	dc.b		nRst,	$06,	nB5,	$04,	nRst,	nA5,	$02,	nRst
	dc.b		nB5,	$06,	nRst,	$02,	nB5,	$03,	nRst,	nB5
	dc.b		nRst,	nB5,	nRst,	$05,	nC6,	$02,	nRst,	nC6
	dc.b		$08,	nRst,	$04,	nC6,	$02,	nRst,	$06,	nB5
	dc.b		$04,	nRst,	nA5,	$02,	nRst,	nB5,	$06,	nRst
	dc.b		$0A
	smpsReturn

SplashHillActII_Call04:
	dc.b		nD6,	$02,	nE6,	nF6,	nG6,	nRst,	$04,	nC6
	dc.b		$02,	nRst,	nC6,	$06,	nRst,	$02,	nC6,	$03
	dc.b		nRst,	nC6,	nRst,	nC6,	nRst,	$05,	nB5,	$02
	dc.b		nRst,	nB5,	$06,	nRst,	$02,	nB5,	$03,	nRst
	dc.b		nB5,	nRst,	nB5,	nRst,	$05,	nC6,	$02,	nRst
	dc.b		nC6,	$06,	nRst,	$02,	nC6,	$03,	nRst,	nC6
	dc.b		nRst,	nC6,	nRst,	$05,	nC6,	$02,	nRst,	nBb5
	dc.b		$06,	nRst,	$02,	nBb5,	$03,	nRst,	nBb5,	$02
	smpsReturn

SplashHillActII_Call05:
	dc.b		smpsNoAttack,	$01,	nRst,	$03,	nBb5,	nRst,	$05,	nC6
	dc.b		$02,	nRst,	nC6,	$08,	nRst,	$04,	nC6,	$02
	dc.b		nRst,	$06,	nB5,	$04,	nRst,	nA5,	$02,	nRst
	dc.b		nB5,	$06,	nRst,	$02,	nB5,	$03,	nRst,	nB5
	dc.b		nRst,	nB5,	nRst,	$05,	nC6,	$02,	nRst,	nC6
	dc.b		$08,	nRst,	$04,	nC6,	$02,	nRst,	$06,	nB5
	dc.b		$04,	nRst,	nA5,	$02,	nRst,	nB5,	$06,	nRst
	dc.b		$02,	nD6,	nE6,	nF6,	nG6
	smpsReturn

SplashHillActII_Call06:
	smpsFMvoice	$02
	dc.b		nC4,	$02,	nE4,	nG4,	nC5,	nB4,	$04,	nG4
	dc.b		$02,	nRst,	$06,	nF4,	$02,	nA4,	nG4,	$04
	dc.b		nE4,	$02,	nRst,	$06,	nE4,	$02,	nG4,	nF4
	dc.b		$04,	nE4,	nF4,	nG4,	$0C,	nC4,	$02,	nE4
	dc.b		nG4,	nC5,	nB4,	$04,	nG4,	$02,	nRst,	$06
	dc.b		nE4,	$02,	nA4,	nG4,	$04,	nE4,	$02,	nRst
	dc.b		$06,	nE4,	$02,	nG4,	nF4,	$04,	nE4,	nD4
	dc.b		nC4,	$0C
	smpsReturn

SplashHillActII_Call07:
	dc.b		smpsNoAttack,	$02,	nRst,	$0A
	smpsFMvoice	$01
	dc.b		nG5,	$02,	nRst,	nG5,	$06,	nRst,	$02,	nG5
	dc.b		$03,	nRst,	nG5,	nRst,	nG5,	nRst,	$05,	nG5
	dc.b		$02,	nRst,	nG5,	$06,	nRst,	$02,	nG5,	$03
	dc.b		nRst,	nG5,	nRst,	nG5,	nRst,	$05,	nG5,	$02
	dc.b		nRst,	nG5,	$06,	nRst,	$02,	nG5,	$03,	nRst
	dc.b		nG5,	nRst,	nG5,	nRst,	$05,	nG5,	$02,	nRst
	dc.b		nG5,	$06,	nRst,	$02,	nG5,	$03,	nRst,	nG5
	dc.b		$02
	smpsReturn

SplashHillActII_Call08:
	dc.b		smpsNoAttack,	$01,	nRst,	$03,	nG5,	nRst,	$05,	nF5
	dc.b		$02,	nRst,	nF5,	$08,	nRst,	$04,	nF5,	$02
	dc.b		nRst,	$06,	nG5,	$04,	nRst,	nG5,	$02,	nRst
	dc.b		nG5,	$06,	nRst,	$02,	nG5,	$03,	nRst,	nG5
	dc.b		nRst,	nG5,	nRst,	$05,	nF5,	$02,	nRst,	nF5
	dc.b		$08,	nRst,	$04,	nF5,	$02,	nRst,	$06,	nG5
	dc.b		$04,	nRst,	nG5,	$02,	nRst,	nG5,	$06,	nRst
	dc.b		$02,	nG5,	nA5,	nB5,	nC6
	smpsReturn

SplashHillActII_Call09:
	dc.b		nRst,	$0C,	nG5,	$02,	nRst,	nG5,	$06,	nRst
	dc.b		$02,	nG5,	$03,	nRst,	nG5,	nRst,	nG5,	nRst
	dc.b		$05,	nG5,	$02,	nRst,	nG5,	$06,	nRst,	$02
	dc.b		nG5,	$03,	nRst,	nG5,	nRst,	nG5,	nRst,	$05
	dc.b		nG5,	$02,	nRst,	nG5,	$06,	nRst,	$02,	nG5
	dc.b		$03,	nRst,	nG5,	nRst,	nG5,	nRst,	$05,	nG5
	dc.b		$02,	nRst,	nG5,	$06,	nRst,	$02,	nG5,	$03
	dc.b		nRst,	nG5,	$02
	smpsReturn

SplashHillActII_Call0A:
	dc.b		smpsNoAttack,	$01,	nRst,	$03,	nG5,	nRst,	$05,	nF5
	dc.b		$02,	nRst,	nF5,	$08,	nRst,	$04,	nF5,	$02
	dc.b		nRst,	$06,	nG5,	$04,	nRst,	nG5,	$02,	nRst
	dc.b		nG5,	$06,	nRst,	$02,	nG5,	$03,	nRst,	nG5
	dc.b		nRst,	nG5,	nRst,	$05,	nF5,	$02,	nRst,	nF5
	dc.b		$08,	nRst,	$04,	nF5,	$02,	nRst,	$06,	nG5
	dc.b		$04,	nRst,	nG5,	$02,	nRst,	nG5,	nA5,	nB5
	dc.b		nC6,	nRst,	$08
	smpsReturn

SplashHillActII_Call0B:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$00
	dc.b		nC3,	$06,	$02,	nC4,	nRst,	nC4,	nC3,	nE2
	dc.b		$06,	$02,	nE3,	nRst,	nE3,	nE2,	nF2,	$06
	dc.b		$02,	nF3,	nRst,	nF3,	nF2,	nG2,	nRst,	nG2
	dc.b		nG3,	nE3,	nC3,	nB2,	nG2,	nA2,	$06,	$02
	dc.b		nA3,	nRst,	nA3,	nA2,	nE2,	$06,	$02,	nE3
	dc.b		nRst,	nE3,	nE2,	nF3,	$04,	$02,	nG3,	nG2
	dc.b		nG3,	nC3,	$06,	nC4,	$02,	nE3,	nF3
	smpsReturn

SplashHillActII_Call0C:
	dc.b		nFs3,	$02,	nG3,	nG2,	$04,	nC3,	$06,	nRst
	dc.b		$02,	nC3,	$04,	$02,	nG2,	nC3,	nRst,	nC3
	dc.b		$04,	nRst,	$02,	nC3,	nD3,	$04,	nE3,	$06
	dc.b		nD3,	$02,	nB2,	$06,	nG2,	$02,	nE2,	$04
	dc.b		nE3,	nRst,	$02,	nE3,	nG2,	$04,	nA2,	$06
	dc.b		nRst,	$02,	nA2,	$04,	$02,	nE2,	nA2,	nRst
	dc.b		nA2,	$04,	nRst,	$02,	nA2,	nC3,	$04,	nBb2
	dc.b		$06,	$02,	$06,	nC3,	$02,	nBb2,	nRst,	nBb2
	dc.b		$04
	smpsReturn

SplashHillActII_Call0D:
	dc.b		nA2,	$02,	nRst,	nG2,	$04,	nF2,	$06,	$02
	dc.b		$06,	nG2,	$02,	nF2,	nRst,	nD3,	nC3,	nB2
	dc.b		nRst,	nG2,	nRst,	$04,	nG2,	$02,	nG3,	nG2
	dc.b		nA2,	nG2,	$06,	nB2,	$02,	nG2,	nD3,	$04
	dc.b		nC3,	$02,	nB2,	nA2,	nG2,	nD3,	$06,	nC3
	dc.b		$02,	nD3,	$06,	nE3,	$02,	nD3,	$04,	nC3
	dc.b		$02,	nB2,	nA2,	nRst,	nG2,	$04,	nRst,	nG3
	dc.b		$02,	nG2,	nRst,	nG2,	nD3,	nG2,	nC3,	nB2
	dc.b		nC3,	nD3
	smpsReturn

SplashHillActII_Call0E:
	dc.b		nG3,	$02,	nB2,	nA2,	nG2,	nC3,	$06,	nRst
	dc.b		$02,	nC3,	$04,	$02,	nG2,	nC3,	nRst,	nC3
	dc.b		$04,	nRst,	$02,	nC3,	nD3,	$04,	nE3,	$06
	dc.b		nD3,	$02,	nB2,	$06,	nG2,	$02,	nE2,	$04
	dc.b		nE3,	nRst,	$02,	nE3,	nG2,	$04,	nA2,	$06
	dc.b		nRst,	$02,	nA2,	$04,	$02,	nE2,	nA2,	nRst
	dc.b		nA2,	$04,	nRst,	$02,	nA2,	nC3,	$04,	nBb2
	dc.b		$06,	$02,	$06,	nC3,	$02,	nBb2,	nRst,	nBb2
	dc.b		$04
	smpsReturn

SplashHillActII_Call0F:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$04
	dc.b		nG5,	$04,	nE5,	nRst,	nC5,	nF5,	nE5,	nRst
	dc.b		nC5,	nA4,	nC5,	nA4,	nD5,	$0C,	nRst,	$08
	dc.b		nG5,	$04,	nE5,	nRst,	nA4,	nF5,	nE5,	nRst
	dc.b		nC5,	nA4,	nC5,	nB4,	nG4,	$08
	smpsFMvoice	$01
	dc.b		nG5,	$04
	smpsReturn

SplashHillActII_Call10:
	dc.b		nB5,	$02,	nRst,	nC6,	nRst,	$06,	nC6,	$04
	dc.b		nD6,	$02,	nRst,	nE6,	$08,	nC6,	$04,	nD6
	dc.b		$02,	nRst,	nE6,	$04,	nD6,	nB5,	$02,	nRst
	dc.b		nB5,	$04,	nG5,	nRst,	nG5,	nD6,	$02,	nRst
	dc.b		nC6,	$04,	nRst,	nA5,	nD6,	$02,	nRst,	nC6
	dc.b		$06,	nRst,	$02,	nA5,	$04,	nB5,	$02,	nRst
	dc.b		nC6,	$04,	nD6,	$02,	nRst,	nC6,	$04,	nE6
	dc.b		nC6,	nG5,	nRst
	smpsReturn

SplashHillActII_Call11:
	dc.b		nBb5,	$08,	nA5,	$06,	nRst,	$02,	nA5,	nRst
	dc.b		nA5,	$04,	nRst,	nC6,	nRst,	nB5,	nRst,	nA5
	dc.b		$08,	nG5,	$04,	nRst,	nA5,	nB5,	$02,	nRst
	dc.b		nG5,	nRst,	nA5,	$08,	nG5,	$04,	nF5,	nRst
	dc.b		nC6,	nRst,	nB5,	nRst,	nA5,	$02,	nRst,	nG5
	dc.b		$0A,	nRst,	$02,	nB5,	$04
	smpsReturn

SplashHillActII_Call12:
	dc.b		nG5,	$02,	nRst,	nC6,	nRst,	$06,	nG5,	$04
	dc.b		nD6,	$02,	nRst,	nC6,	$08,	nG5,	$04,	nD6
	dc.b		$02,	nRst,	nC6,	$04,	nD6,	nB5,	$02,	nRst
	dc.b		nB5,	$04,	nG5,	nRst,	nG5,	nD6,	$02,	nRst
	dc.b		nC6,	$04,	nRst,	nA5,	nD6,	$02,	nRst,	nC6
	dc.b		$06,	nRst,	$02,	nA5,	$04,	nB5,	$02,	nRst
	dc.b		nC6,	$04,	nBb5,	$02,	nRst,	nD6,	$04,	nC6
	dc.b		$02,	nRst,	nC6,	$04,	nBb5,	nRst
	smpsReturn

SplashHillActII_Call13:
	dc.b		nBb5,	$08,	nC6,	$06,	nRst,	$02,	nA5,	nRst
	dc.b		nA5,	$04,	nRst,	nC6,	nRst,	nB5,	nRst,	nC6
	dc.b		$02,	nRst,	nB5,	$08,	nA5,	$02,	nRst,	nG5
	dc.b		$04,	nB5,	$02,	nRst,	nG5,	nRst,	nA5,	$06
	dc.b		nRst,	$02,	nC6,	nRst,	nA5,	$04,	nRst,	nF6
	dc.b		nRst,	nB5,	nRst,	nC6,	$02,	nRst,	nD6,	$0A
	dc.b		nRst,	$06
	smpsReturn

SplashHillActII_Call14:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

SplashHillActII_Call15:
	smpsFMvoice	$01
	dc.b		nG5,	$04,	nB5,	$02,	nRst,	nC6,	$06,	nRst
	dc.b		$02,	nC6,	$04,	nD6,	$02,	nRst,	nE6,	$08
	dc.b		nC6,	$04,	nD6,	$02,	nRst,	nE6,	$04,	nD6
	dc.b		nB5,	$02,	nRst,	nB5,	$04,	nG5,	nRst,	nG5
	dc.b		nD6,	$02,	nRst,	nC6,	$08,	nA5,	$04,	nD6
	dc.b		$02,	nRst,	nC6,	$06,	nRst,	$02,	nA5,	$04
	dc.b		nB5,	$02,	nRst,	nC6,	$04,	nD6,	$02,	nRst
	dc.b		nC6,	$04,	nE6,	nC6,	nG5
	smpsReturn

SplashHillActII_Call16:
	dc.b		nRst,	$04,	nBb5,	nRst,	nA5,	$06,	nRst,	$02
	dc.b		nA5,	nRst,	nA5,	$04,	nRst,	nC6,	nRst,	nB5
	dc.b		$08,	nA5,	nG5,	$04,	nRst,	nA5,	nB5,	$02
	dc.b		nRst,	nG5,	nRst,	nA5,	$08,	nG5,	$04,	nF5
	dc.b		nRst,	nC6,	nRst,	nB5,	$08,	nA5,	$02,	nRst
	dc.b		nG5,	$0A,	nRst,	$02
	smpsReturn

SplashHillActII_Call17:
	dc.b		nB5,	$04,	nG5,	$02,	nRst,	nC6,	$06,	nRst
	dc.b		$02,	nG5,	$04,	nD6,	$02,	nRst,	nC6,	$08
	dc.b		nG5,	$04,	nD6,	$02,	nRst,	nC6,	$04,	nD6
	dc.b		nB5,	$02,	nRst,	nB5,	$04,	nG5,	nRst,	nG5
	dc.b		nD6,	$02,	nRst,	nC6,	$08,	nA5,	$04,	nD6
	dc.b		$02,	nRst,	nC6,	$06,	nRst,	$02,	nA5,	$04
	dc.b		nB5,	$02,	nRst,	nC6,	$04,	nBb5,	$02,	nRst
	dc.b		nD6,	$04,	nC6,	$02,	nRst,	nC6,	$04,	nBb5
	smpsReturn

SplashHillActII_Call18:
	dc.b		nRst,	$04,	nBb5,	nRst,	nC6,	$06,	nRst,	$02
	dc.b		nA5,	nRst,	nA5,	$04,	nRst,	nC6,	nRst,	nB5
	dc.b		$08,	nC6,	$02,	nRst,	nB5,	$08,	nA5,	$02
	dc.b		nRst,	nG5,	$04,	nB5,	$02,	nRst,	nG5,	nRst
	dc.b		nA5,	$06,	nRst,	$02,	nC6,	nRst,	nA5,	$04
	dc.b		nRst,	nF6,	nRst,	nB5,	$08,	nC6,	$02,	nRst
	dc.b		nD6,	$0A,	nRst,	$02
	smpsReturn

SplashHillActII_Call19:
	dc.b		smpsNoAttack,	$10
	smpsPSGvoice	$01
	dc.b		nG6,	$02,	nRst,	$0E,	nE6,	$02,	nRst,	$0A
	dc.b		nF6,	$02,	nRst,	$06,	nG6,	$0E,	nRst,	nG6
	dc.b		$02,	nRst,	$0E,	nE6,	$02,	nRst,	$0A,	nF6
	dc.b		$02,	nRst,	$06,	nE6,	$08
	smpsPSGvoice	$00
	dc.b		nE5,	$04
	smpsReturn

SplashHillActII_Call1A:
	dc.b		nF5,	$02,	nRst,	nG5,	$08,	nE5,	$04,	nF5
	dc.b		$02,	nRst,	nG5,	$08,	nE5,	$04,	nF5,	$02
	dc.b		nRst,	nG5,	$04,	nA5,	nG5,	nE5,	nC5,	nRst
	dc.b		nE5,	nF5,	$02,	nRst,	nG5,	$08,	nE5,	$04
	dc.b		nF5,	$02,	nRst,	nG5,	$08,	nE5,	$04,	nF5
	dc.b		$02,	nRst,	nG5,	$04,	nA5,	$02,	nRst,	nA5
	dc.b		$04,	nG5,	nE5,	nC5,	$08
	smpsReturn

SplashHillActII_Call1B:
	dc.b		nE5,	$04,	nRst,	nF5,	$08,	nE5,	$04,	nC5
	dc.b		nRst,	nE5,	nRst,	nD5,	$10,	nRst,	$08,	nC5
	dc.b		$04,	nD5,	$02,	nRst,	nE5,	nRst,	nF5,	$08
	dc.b		nE5,	$04,	nC5,	nRst,	nA5,	nRst,	nG5,	$14
	dc.b		nRst,	$04,	nE5
	smpsReturn

SplashHillActII_Call1C:
	dc.b		nE5,	$04,	nRst,	nF5,	$08,	nE5,	$04,	nC5
	dc.b		nRst,	nE5,	nRst,	nD5,	$10,	nRst,	$08,	nC5
	dc.b		$04,	nD5,	$02,	nRst,	nE5,	nRst,	nF5,	$08
	dc.b		nE5,	$04,	nC5,	nRst,	nA5,	nRst,	nG5,	$14
	dc.b		nRst,	$08
	smpsReturn

SplashHillActII_Call1D:
	dc.b		smpsNoAttack,	$10
	smpsPSGvoice	$01
	dc.b		nC6,	$02,	nRst,	$0E,	nC6,	$02,	nRst,	$0A
	dc.b		nC6,	$02,	nRst,	$06,	nB5,	$0E,	nRst,	nC6
	dc.b		$02,	nRst,	$0E,	nC6,	$02,	nRst,	$0A,	nC6
	dc.b		$02,	nRst,	$06,	nC6,	$08
	smpsPSGvoice	$00
	dc.b		nE4,	$04
	smpsReturn

SplashHillActII_Call1E:
	dc.b		nF4,	$04,	nG4,	$08,	nE4,	$04,	nF4,	nG4
	dc.b		$08,	nE4,	$04,	nF4,	nG4,	nA4,	nG4,	nE4
	dc.b		nC4,	$08,	nE4,	$04,	nF4,	nG4,	$08,	nE4
	dc.b		$04,	nF4,	nG4,	$08,	nE4,	$04,	nF4,	nG4
	dc.b		nA4,	nA4,	nG4,	nE4,	nC4,	$08
	smpsReturn

SplashHillActII_Call1F:
	dc.b		nE4,	$04,	nRst,	nF4,	$08,	nE4,	$04,	nC4
	dc.b		nRst,	nE4,	nRst,	nD4,	$10,	nRst,	$08,	nC4
	dc.b		$04,	nD4,	$02,	nRst,	nE4,	nRst,	nF4,	$08
	dc.b		nE4,	$04,	nC4,	nRst,	nA4,	nRst,	nG4,	$14
	dc.b		nRst,	$04,	nE4
	smpsReturn

SplashHillActII_Call20:
	dc.b		nE4,	$04,	nRst,	nF4,	$08,	nE4,	$04,	nC4
	dc.b		nRst,	nE4,	nRst,	nD4,	$10,	nRst,	$08,	nC4
	dc.b		$04,	nD4,	$02,	nRst,	nE4,	nRst,	nF4,	$08
	dc.b		nE4,	$04,	nC4,	nRst,	nA4,	nRst,	nG4,	$14
	dc.b		nRst,	$08
	smpsReturn

SplashHillActII_Call21:
	dc.b		nRst,	$0C
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	$02,	$08,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	$08,	$02,	nRst,	$04,	nCs0,	$02,	nCs0
	dc.b		nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	nCs0,	$02,	$08,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	$08,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	$04
	smpsReturn

SplashHillActII_Call22:
	dc.b		nRst,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	$06,	nCs0,	nCs0,	$02,	$08
	dc.b		$02,	nRst,	$04,	nCs0,	$02,	$08,	$06,	$02
	dc.b		$08,	$02,	nRst,	$04,	nCs0,	$02,	$08,	$06
	dc.b		$02,	$08,	$02,	nRst,	$04,	nCs0,	$02,	$08
	dc.b		$06,	$02,	$08,	$02,	nRst
	smpsReturn

SplashHillActII_Call23:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$08,	$06,	$02,	$08,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	nCs0
	dc.b		$02,	$08,	$02,	nRst,	$04,	nCs0,	$02,	$08
	dc.b		$06,	$02,	$08,	$02,	nRst,	$04,	nCs0,	$02
	dc.b		nCs0,	nRst,	$06,	nCs0,	$02,	nRst,	$04,	nCs0
	dc.b		$02,	$08,	$02,	nRst
	smpsReturn

SplashHillActII_Call24:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	nRst,	$06,	nCs0,	nCs0,	$02,	$08
	dc.b		$02,	nRst,	$04,	nCs0,	$02,	$08,	$06,	$02
	dc.b		$08,	$02,	nRst,	$04,	nCs0,	$02,	$08,	$06
	dc.b		$02,	$08,	$02,	nRst,	$04,	nCs0,	$02,	$08
	dc.b		$06,	$02,	$08,	$02,	nRst
	smpsReturn

SplashHillActII_Call25:
	dc.b		smpsNoAttack,	$02
	smpsPSGvoice	$02
	dc.b		nCs0,	nCs0,	$08,	$06,	$02,	$08,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	nCs0,	nRst,	$06,	nCs0,	$02
	dc.b		nRst,	$04,	nCs0,	$02,	$08,	$02,	nRst,	$04
	dc.b		nCs0,	$02,	$08,	$06,	$02,	$08,	$04,	nRst
	dc.b		$02,	nCs0,	nCs0,	nRst,	$06,	nCs0,	$02,	nRst
	dc.b		$04,	nCs0,	$02,	$08,	$02,	nRst
	smpsReturn

SplashHillActII_Call26:
	dc.b		dSnare,	$04,	$02,	dSnare,	dKick,	$06,	nRst,	$02
	dc.b		dSnare,	$06,	$02,	dKick,	nRst,	dKick,	$04,	dSnare
	dc.b		$06,	$02,	dKick,	nRst,	dKick,	$04,	dSnare,	dKick
	dc.b		nRst,	dKick,	dSnare,	dSnare,	$02,	dSnare,	dKick,	$06
	dc.b		nRst,	$02,	dSnare,	$06,	$02,	dKick,	nRst,	dKick
	dc.b		$04,	dSnare,	$06,	$02,	dKick,	nRst,	dSnare,	$04
	dc.b		dSnare,	dKick,	dSnare,	$02,	dSnare,	dKick,	dSnare
	smpsReturn

SplashHillActII_Call27:
	dc.b		dSnare,	$04,	dSnare,	dKick,	$06,	nRst,	$02,	dSnare
	dc.b		$06,	$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$06
	dc.b		nRst,	$02,	dKick,	$06,	nRst,	$02,	dSnare,	$06
	dc.b		$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$06,	nRst
	dc.b		$02,	dKick,	$06,	nRst,	$02,	dSnare,	$06,	$02
	dc.b		dKick,	nRst,	dKick,	$04,	dSnare,	$06,	nRst,	$02
	dc.b		dKick,	$06,	nRst,	$02,	dSnare,	$06,	$02,	dKick
	dc.b		nRst,	dKick,	$04
	smpsReturn

SplashHillActII_Call28:
	dc.b		dSnare,	$06,	nRst,	$02,	dKick,	$06,	nRst,	$02
	dc.b		dSnare,	$06,	$02,	dKick,	nRst,	dSnare,	$04,	dSnare
	dc.b		dKick,	dKick,	$06,	nRst,	$02,	dSnare,	$06,	$02
	dc.b		dKick,	nRst,	dKick,	$04,	dSnare,	$06,	$02,	dKick
	dc.b		nRst,	$04,	$02,	dSnare,	$06,	$02,	dKick,	nRst
	dc.b		dSnare,	$04,	dSnare,	dKick,	nRst,	dKick,	dSnare,	$06
	dc.b		$02,	dKick,	nRst,	dKick,	$04
	smpsReturn

SplashHillActII_Call29:
	dc.b		dSnare,	$02,	dSnare,	dSnare,	dSnare,	dKick,	$06,	nRst
	dc.b		$02,	dSnare,	$06,	$02,	dKick,	nRst,	dKick,	$04
	dc.b		dSnare,	$06,	nRst,	$02,	dKick,	$06,	nRst,	$02
	dc.b		dSnare,	$06,	$02,	dKick,	nRst,	dKick,	$04,	dSnare
	dc.b		$06,	nRst,	$02,	dKick,	$06,	nRst,	$02,	dSnare
	dc.b		$06,	$02,	dKick,	nRst,	dKick,	$04,	dSnare,	$06
	dc.b		nRst,	$02,	dKick,	$06,	nRst,	$02,	dSnare,	$06
	dc.b		$02,	dKick,	nRst,	dKick,	$04
	smpsReturn

SplashHillActII_Call2A:
	dc.b		dSnare,	$06,	nRst,	$02,	dKick,	$06,	nRst,	$02
	dc.b		dSnare,	$06,	$02,	dKick,	nRst,	dSnare,	$04,	dSnare
	dc.b		dKick,	nRst,	dKick,	dSnare,	$06,	$02,	dKick,	nRst
	dc.b		dKick,	$04,	dSnare,	$06,	$02,	dKick,	nRst,	$04
	dc.b		$02,	dSnare,	$06,	$02,	dKick,	nRst,	dSnare,	$04
	dc.b		dSnare,	dKick,	nRst,	dKick,	dSnare,	$06,	$02,	dKick
	dc.b		nRst,	dKick,	$04
	smpsReturn

SplashHillActII_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 01
	dc.b		$35,$32,$31,$7A,$02,$4D,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 02
	dc.b		$3D,$01,$21,$51,$01,$12,$14,$14,$0F,$0A,$05,$05,$05,$00,$00,$00
	dc.b		$00,$2B,$2B,$2B,$1B,$19,$0E,$0E,$0E;			Voice 03
	dc.b		$35,$32,$DA,$31,$02,$8D,$4F,$15,$52,$06,$08,$07,$04,$00,$00,$00
	dc.b		$00,$18,$18,$28,$29,$0E,$1E,$23,$00;			Voice 04
	even
