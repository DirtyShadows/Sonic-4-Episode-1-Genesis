; =============================================================================================
; Project Name:		atdawn
; Created:		15th April 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

atdawn_Header:
	smpsHeaderVoice	atdawn_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$02

	smpsHeaderDAC	atdawn_DAC
	smpsHeaderFM	atdawn_FM1,	smpsPitch01lo-3,	$0C
	smpsHeaderFM	atdawn_FM2,	smpsPitch02lo-3,	$18
	smpsHeaderFM	atdawn_FM3,	smpsPitch02lo-3,	$18
	smpsHeaderFM	atdawn_FM4,	smpsPitch01lo-3,	$0D
	smpsHeaderFM	atdawn_FM5,	smpsPitch01lo-3,	$0D
	smpsHeaderPSG	atdawn_PSG1,	smpsPitch04lo-3,	$04,	$00
	smpsHeaderPSG	atdawn_PSG2,	smpsPitch04lo-3,	$02,	$00
	smpsHeaderPSG	atdawn_PSG3,	smpsPitch02hi+$0B,	$02,	$00

; FM1 Data
atdawn_FM1:
	smpsFMvoice	$00
	dc.b		nAb3,	$08,	nC4,	nEb4,	nAb4,	nRst,	nAb4,	nEb4
	dc.b		nC4,	nBb3,	nD4,	nF4,	nBb4,	nRst,	nBb4,	nF4
	dc.b		nD4,	nG3,	nBb3,	nD4,	nG4,	nRst,	nG4,	nD4
	dc.b		nBb3,	nC4,	nEb4,	nG4,	nC5,	nRst,	nC5,	nG4
	dc.b		nEb4,	nAb3,	nC4,	nEb4,	nAb4,	nRst,	nAb4,	nEb4
	dc.b		nC4,	nBb3,	nD4,	nF4,	nBb4,	nRst,	nBb4,	nF4
	dc.b		nD4,	nG3,	nBb3,	nD4,	nG4,	nRst,	nG4,	nD4
	dc.b		nBb3,	nC4,	nEb4,	nG4,	nC5,	nRst,	nC5,	nG4
	dc.b		nEb4,	nAb3,	nC4,	nEb4,	nAb4,	nRst,	nAb4,	nEb4
	dc.b		nC4,	nBb3,	nD4,	nF4,	nBb4,	nRst,	nBb4,	nF4
	dc.b		nD4,	nG3,	nBb3,	nD4,	nG4,	nRst,	nG4,	nD4
	dc.b		nBb3,	nC4,	nEb4,	nG4,	nC5,	nRst,	nC5,	nG4
	dc.b		nEb4,	nAb3,	nC4,	nEb4,	nAb4,	nRst,	nAb4,	nEb4
	dc.b		nC4,	nBb3,	nD4,	nF4,	nBb4,	nRst,	nBb4,	nF4
	dc.b		nD4,	nG3,	nBb3,	nD4,	nG4,	nRst,	nG4,	nD4
	dc.b		nBb3,	nC4,	nEb4,	nG4,	nC5,	nG4,	nEb4,	nC4
	dc.b		nG3,	nC3,	nEb3,	nG3,	nC4,	$24,	nRst,	$04
	dc.b		nC3,	$08,	nF3,	nAb3,	nC4,	$24,	nRst,	$04
	dc.b		nBb2,	$08,	nD3,	nF3,	nBb3,	$24,	nRst,	$04
	dc.b		nB2,	$08,	nD3,	nF3,	nB3,	$24,	nRst,	$04
	dc.b		nC3,	$08,	nEb3,	nG3,	nC4,	$24,	nRst,	$04
	dc.b		nAb2,	$08,	nC3,	nEb3,	nAb3,	$24,	nRst,	$04
	dc.b		nBb2,	$08,	nD3,	nF3,	nBb3,	$24,	nRst,	$04
	dc.b		nG2,	$08,	nBb2,	nD3,	nG3,	$24,	nRst,	$04
	dc.b		nC3,	$08,	nEb3,	nG3,	nC4,	$24,	nRst,	$04
	dc.b		nC3,	$08,	nF3,	nAb3,	nC4,	$24,	nRst,	$04
	dc.b		nBb2,	$08,	nD3,	nF3,	nBb3,	$24,	nRst,	$04
	dc.b		nB2,	$08,	nD3,	nF3,	nB3,	$24,	nRst,	$04
	dc.b		nC3,	$08,	nEb3,	nG3,	nC4,	$24,	nRst,	$04
	dc.b		nAb2,	$08,	nC3,	nEb3,	nAb3,	$24,	nRst,	$04
	dc.b		nBb2,	$08,	nD3,	nF3,	nBb3,	$24,	nRst,	$04
	dc.b		nG2,	$08,	nBb2,	nD3,	nG3,	$24,	nRst,	$04
	dc.b		nG2,	$08,	nBb2,	nD3,	nG3,	nD3,	nBb2,	nG2
	dc.b		nBb2,	nC3,	nEb3,	nG3,	nC4,	nEb4,	nG4,	nC5
	dc.b		$0D,	nRst,	$03,	nC3,	$08,	nF3,	nAb3,	nC4
	dc.b		nF4,	nAb4,	nC5,	$0D,	nRst,	$03,	nBb2,	$08
	dc.b		nD3,	nF3,	nBb3,	nD4,	nF4,	nBb4,	$0D,	nRst
	dc.b		$03,	nB2,	$08,	nD3,	nF3,	nB3,	nD4,	nF4
	dc.b		nB4,	$0D,	nRst,	$03,	nC3,	$08,	nEb3,	nG3
	dc.b		nC4,	nEb4,	nG4,	nC5,	$0D,	nRst,	$03,	nAb2
	dc.b		$08,	nC3,	nEb3,	nAb3,	nC4,	nEb4,	nAb4,	$0D
	dc.b		nRst,	$03,	nBb2,	$08,	nD3,	nF3,	nBb3,	nD4
	dc.b		nF4,	nBb4,	$0D,	nRst,	$03,	nG2,	$08,	nB2
	dc.b		nD3,	nG3,	nB3,	nD4,	nG4,	$0D,	nRst,	$03
	dc.b		nC3,	$08,	nEb3,	nG3,	nC4,	nEb4,	nG4,	nC5
	dc.b		$0D,	nRst,	$03,	nAb2,	$08,	nC3,	nEb3,	nAb3
	dc.b		nC4,	nEb4,	nAb4,	$0D,	nRst,	$03,	nBb2,	$08
	dc.b		nD3,	nF3,	nBb3,	nD4,	nF4,	nBb4,	$0D,	nRst
	dc.b		$03,	nG2,	$08,	nB2,	nD3,	nG3,	nB3,	nD4
	dc.b		nG4,	$0D,	nRst,	$03,	nC3,	$08,	nEb3,	nG3
	dc.b		nC4,	nEb4,	nG4,	nC5,	$0D,	nRst,	$03,	nAb2
	dc.b		$08,	nC3,	nEb3,	nAb3,	nC4,	nEb4,	nAb4,	$0D
	dc.b		nRst,	$03,	nBb2,	$08,	nD3,	nF3,	nBb3,	nD4
	dc.b		nF4,	nBb4,	$0D,	nRst,	$03,	nG2,	$08,	nB2
	dc.b		nD3,	nG3,	nB3,	nD4,	nG4,	nD4,	nB3,	nG3
	dc.b		nD3,	nB2,	nG2,	nB2,	nG2,	nD2,	nAb2,	nC3
	dc.b		nEb3,	nAb3,	nC4,	nEb4,	nAb4,	$0D,	nRst,	$03
	dc.b		nBb2,	$08,	nD3,	nF3,	nBb3,	nD4,	nF4,	nBb4
	dc.b		$0D,	nRst,	$03,	nG2,	$08,	nBb2,	nD3,	nG3
	dc.b		nBb3,	nD4,	nG4,	$0D,	nRst,	$03,	nC3,	$08
	dc.b		nEb3,	nG3,	nC4,	nEb4,	nG4,	nC5,	$0D,	nRst
	dc.b		$03,	nAb2,	$08,	nC3,	nEb3,	nAb3,	nC4,	nEb4
	dc.b		nAb4,	$0D,	nRst,	$03,	nBb2,	$08,	nD3,	nF3
	dc.b		nBb3,	nD4,	nF4,	nBb4,	$0D,	nRst,	$03,	nG2
	dc.b		$08,	nBb2,	nD3,	nG3,	nBb3,	nD4,	nG4,	$0D
	dc.b		nRst,	$03,	nC3,	$08,	nC4,	nG3,	nEb3,	nC3
	dc.b		nG2,	nEb2,	nC2,	nAb2,	nC3,	nEb3,	nAb3,	nC4
	dc.b		nEb4,	nAb4,	$0D,	nRst,	$03,	nBb2,	$08,	nD3
	dc.b		nF3,	nBb3,	nD4,	nF4,	nBb4,	$0D,	nRst,	$03
	dc.b		nG2,	$08,	nBb2,	nD3,	nG3,	nBb3,	nD4,	nG4
	dc.b		$0D,	nRst,	$03,	nC3,	$08,	nEb3,	nG3,	nC4
	dc.b		nEb4,	nG4,	nC5,	$0D,	nRst,	$03,	nAb2,	$08
	dc.b		nC3,	nEb3,	nAb3,	nC4,	nEb4,	nAb4,	$0D,	nRst
	dc.b		$03,	nBb2,	$08,	nD3,	nF3,	nBb3,	nD4,	nF4
	dc.b		nBb4,	$0D,	nRst,	$03,	nG2,	$08,	nBb2,	nD3
	dc.b		nG3,	nBb3,	nD4,	nG4,	$0D,	nRst,	$03,	nC3
	dc.b		$08,	nEb3,	nG3,	nC4,	nEb4,	nG4,	nC5,	$0D
	dc.b		nRst,	$03,	nC3,	$08,	nBb2,	nC3,	nBb2,	$04
	dc.b		nC3,	$0C,	$04,	nBb2,	$08,	nC3,	nBb2,	$04
	dc.b		nC3,	$08,	nBb2,	nC3,	nBb2,	$04,	nC3,	$20
	dc.b		nRst,	$04
	smpsJump	atdawn_FM1

; FM2 Data
atdawn_FM2:
	smpsFMvoice	$01
	dc.b		nC6,	$15,	nRst,	$03,	nEb6,	$24,	nRst,	$04
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nEb6,	$0D,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nF6,	$24,	nRst,	$04,	nF6,	$15,	nRst,	$03
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$0D,	nRst,	$03
	dc.b		nC6,	$15,	nRst,	$03,	nEb6,	$24,	nRst,	$04
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nC6,	$0D,	nRst,	$03,	nBb5,	$1C,	nRst,	$04
	dc.b		nD6,	$1C,	nRst,	$04,	nC6,	$3C,	nRst,	$04
	dc.b		nC6,	$15,	nRst,	$03,	nEb6,	$24,	nRst,	$04
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nEb6,	$0D,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nF6,	$24,	nRst,	$04,	nF6,	$15,	nRst,	$03
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$0D,	nRst,	$03
	dc.b		nC6,	$15,	nRst,	$03,	nEb6,	$24,	nRst,	$04
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nC6,	$0D,	nRst,	$03,	nBb5,	$1C,	nRst,	$04
	dc.b		nD6,	$1C,	nRst,	$04,	nC6,	$3C,	nRst,	$04
	dc.b		nC6,	$1C,	nRst,	$0C,	nC6,	$08,	nD6,	nEb6
	dc.b		nC6,	$1C,	nRst,	$0C,	nC6,	$08,	nD6,	nEb6
	dc.b		nEb6,	nD6,	nD6,	nC6,	nC6,	nBb5,	nBb5,	$0D
	dc.b		nRst,	$03,	nB5,	$15,	nRst,	$03,	nC6,	$15
	dc.b		nRst,	$03,	nD6,	$0D,	nRst,	$03,	nC6,	$1C
	dc.b		nRst,	$0C,	nC6,	$08,	nD6,	nEb6,	nC6,	$1C
	dc.b		nRst,	$0C,	nC6,	$08,	nD6,	nEb6,	nEb6,	nD6
	dc.b		nD6,	nC6,	nC6,	nBb5,	nBb5,	$0D,	nRst,	$03
	dc.b		nEb6,	$15,	nRst,	$03,	nF6,	$08,	nD6,	$15
	dc.b		nRst,	$03,	nG5,	$08,	nC6,	$1C,	nRst,	$0C
	dc.b		nC6,	$08,	nD6,	nEb6,	nC6,	$1C,	nRst,	$0C
	dc.b		nC6,	$08,	nD6,	nEb6,	nEb6,	nD6,	nD6,	nC6
	dc.b		nC6,	nBb5,	nBb5,	$0D,	nRst,	$03,	nB5,	$15
	dc.b		nRst,	$03,	nC6,	$15,	nRst,	$03,	nD6,	$0D
	dc.b		nRst,	$03,	nC6,	$1C,	nRst,	$0C,	nC6,	$08
	dc.b		nD6,	nEb6,	nC6,	$1C,	nRst,	$0C,	nC6,	$08
	dc.b		nD6,	nEb6,	nEb6,	nD6,	nD6,	nC6,	nC6,	nBb5
	dc.b		nBb5,	$0D,	nRst,	$03,	nEb6,	$15,	nRst,	$03
	dc.b		nF6,	$08,	nD6,	$1C,	nRst,	$44,	nC6,	$15
	dc.b		nRst,	$03,	nBb5,	$15,	nRst,	$03,	nC6,	$0D
	dc.b		nRst,	$03,	nD6,	$15,	nRst,	$03,	nEb6,	$15
	dc.b		nRst,	$03,	nC6,	$0D,	nRst,	$03,	nC6,	$0D
	dc.b		nRst,	$03,	nD6,	$08,	nBb5,	$15,	nRst,	$13
	dc.b		nB5,	$15,	nRst,	$03,	nC6,	$15,	nRst,	$03
	dc.b		nD6,	$0D,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$0D,	nRst,	$03
	dc.b		nC6,	$15,	nRst,	$03,	nF6,	$15,	nRst,	$03
	dc.b		nEb6,	$0D,	nRst,	$03,	nEb6,	$0D,	nRst,	$03
	dc.b		nD6,	$08,	$15,	nRst,	$03,	nC6,	$0D,	nRst
	dc.b		$03,	nB5,	$2C,	nRst,	$04,	nG5,	$0D,	nRst
	dc.b		$03,	nC6,	$15,	nRst,	$03,	nBb5,	$15,	nRst
	dc.b		$03,	nC6,	$0D,	nRst,	$03,	nD6,	$15,	nRst
	dc.b		$03,	nEb6,	$15,	nRst,	$03,	nC6,	$0D,	nRst
	dc.b		$03,	nC6,	$0D,	nRst,	$03,	nD6,	$08,	nBb5
	dc.b		$15,	nRst,	$13,	nB5,	$15,	nRst,	$03,	nC6
	dc.b		$15,	nRst,	$03,	nD6,	$0D,	nRst,	$03,	nD6
	dc.b		$15,	nRst,	$03,	nEb6,	$15,	nRst,	$03,	nD6
	dc.b		$0D,	nRst,	$03,	nC6,	$15,	nRst,	$03,	nF6
	dc.b		$15,	nRst,	$03,	nEb6,	$0D,	nRst,	$03,	nEb6
	dc.b		$0D,	nRst,	$03,	nD6,	$08,	$15,	nRst,	$03
	dc.b		nC6,	$0D,	nRst,	$03,	nB5,	$1C,	nRst,	$04
	dc.b		nD6,	$1C,	nRst,	$04,	nB5,	$2C,	nRst,	$14
	dc.b		nC6,	$1C,	nRst,	$04,	nC6,	$08,	nD6,	nEb6
	dc.b		nF6,	nEb6,	$0D,	nRst,	$03,	nD6,	$0D,	nRst
	dc.b		$03,	nC6,	$0D,	nRst,	$03,	nD6,	$08,	nBb5
	dc.b		$30,	nG5,	$08,	nD6,	$0D,	nRst,	$03,	nF6
	dc.b		$0D,	nRst,	$03,	nEb6,	$0D,	nRst,	$03,	nD6
	dc.b		$0D,	nRst,	$03,	nEb6,	$08,	nC6,	$24,	nRst
	dc.b		$04,	nC6,	$08,	nD6,	nEb6,	nF6,	nEb6,	$0D
	dc.b		nRst,	$03,	nD6,	$0D,	nRst,	$03,	nC6,	$0D
	dc.b		nRst,	$03,	nD6,	$08,	nBb5,	$24,	nRst,	$04
	dc.b		nD6,	$1C,	nRst,	$04,	nC6,	$2C,	nRst,	$14
	dc.b		nC6,	$1C,	nRst,	$04,	nC6,	$08,	nD6,	nEb6
	dc.b		nF6,	nEb6,	$0D,	nRst,	$03,	nD6,	$0D,	nRst
	dc.b		$03,	nC6,	$0D,	nRst,	$03,	nD6,	$08,	nBb5
	dc.b		$30,	nG5,	$08,	nD6,	$0D,	nRst,	$03,	nF6
	dc.b		$0D,	nRst,	$03,	nEb6,	$0D,	nRst,	$03,	nD6
	dc.b		$0D,	nRst,	$03,	nEb6,	$08,	nC6,	$24,	nRst
	dc.b		$04,	nC6,	$08,	nD6,	nEb6,	nF6,	nEb6,	$0D
	dc.b		nRst,	$03,	nD6,	$0D,	nRst,	$03,	nC6,	$0D
	dc.b		nRst,	$03,	nD6,	$08,	nBb5,	$24,	nRst,	$04
	dc.b		nD6,	$1C,	nRst,	$04,	nC6,	$2C,	nRst,	$14
	dc.b		$40,	$40
	smpsJump	atdawn_FM2

; FM3 Data
atdawn_FM3:
	smpsFMvoice	$01
	dc.b		nAb5,	$15,	nRst,	$03,	nC6,	$24,	nRst,	$04
	dc.b		nBb5,	$15,	nRst,	$03,	nD5,	$15,	nRst,	$03
	dc.b		nF5,	$0D,	nRst,	$03,	nG5,	$15,	nRst,	$03
	dc.b		nBb5,	$24,	nRst,	$04,	nC6,	$15,	nRst,	$03
	dc.b		nEb5,	$15,	nRst,	$03,	nG5,	$0D,	nRst,	$03
	dc.b		nAb5,	$15,	nRst,	$03,	nC6,	$24,	nRst,	$04
	dc.b		nBb5,	$15,	nRst,	$03,	nD5,	$15,	nRst,	$03
	dc.b		nF5,	$0D,	nRst,	$03,	nG5,	$1C,	nRst,	$04
	dc.b		nBb5,	$1C,	nRst,	$04,	nC5,	$3C,	nRst,	$04
	dc.b		nAb5,	$15,	nRst,	$03,	nC6,	$24,	nRst,	$04
	dc.b		nBb5,	$15,	nRst,	$03,	nD5,	$15,	nRst,	$03
	dc.b		nF5,	$0D,	nRst,	$03,	nG5,	$15,	nRst,	$03
	dc.b		nBb5,	$24,	nRst,	$04,	nC6,	$15,	nRst,	$03
	dc.b		nEb5,	$15,	nRst,	$03,	nG5,	$0D,	nRst,	$03
	dc.b		nAb5,	$15,	nRst,	$03,	nC6,	$24,	nRst,	$04
	dc.b		nBb5,	$15,	nRst,	$03,	nD5,	$15,	nRst,	$03
	dc.b		nF5,	$0D,	nRst,	$03,	nG5,	$1C,	nRst,	$04
	dc.b		nBb5,	$1C,	nRst,	$04,	nC5,	$3C,	nRst,	$04
	dc.b		nC5,	$1C,	nRst,	$0C,	nEb5,	$08,	nG5,	nC6
	dc.b		nC5,	$1C,	nRst,	$0C,	nF5,	$08,	nAb5,	nC6
	dc.b		nBb5,	nD5,	nF5,	nBb5,	nF5,	nD5,	nF5,	$0D
	dc.b		nRst,	$03,	nB4,	$15,	nRst,	$03,	nD5,	$15
	dc.b		nRst,	$03,	nF5,	$0D,	nRst,	$03,	nC5,	$1C
	dc.b		nRst,	$0C,	nEb5,	$08,	nG5,	nC6,	nAb5,	$1C
	dc.b		nRst,	$0C,	nC5,	$08,	nEb5,	nAb5,	nBb5,	nD5
	dc.b		nF5,	nBb5,	nF5,	nD5,	nF5,	$0D,	nRst,	$03
	dc.b		nG5,	$15,	nRst,	$03,	nBb5,	$08,	nD5,	$15
	dc.b		nRst,	$03,	nG4,	$08,	nC5,	$1C,	nRst,	$0C
	dc.b		nEb5,	$08,	nG5,	nC6,	nAb5,	$1C,	nRst,	$0C
	dc.b		nC5,	$08,	nEb5,	nAb5,	nBb5,	nD5,	nF5,	nBb5
	dc.b		nF5,	nD5,	nF5,	$0D,	nRst,	$03,	nG5,	$15
	dc.b		nRst,	$03,	nD5,	$15,	nRst,	$03,	nF5,	$0D
	dc.b		nRst,	$03,	nC5,	$1C,	nRst,	$0C,	nEb5,	$08
	dc.b		nG5,	nC6,	nAb5,	$1C,	nRst,	$0C,	nC5,	$08
	dc.b		nEb5,	nAb5,	nBb5,	nD5,	nF5,	nBb5,	nF5,	nD5
	dc.b		nF5,	$0D,	nRst,	$03,	nG5,	$15,	nRst,	$03
	dc.b		nBb5,	$08,	nD5,	$1C,	nRst,	$44,	nEb5,	$15
	dc.b		nRst,	$03,	nEb5,	$15,	nRst,	$03,	nEb5,	$0D
	dc.b		nRst,	$03,	nAb5,	$15,	nRst,	$03,	nAb5,	$15
	dc.b		nRst,	$03,	nAb5,	$0D,	nRst,	$03,	nF5,	$0D
	dc.b		nRst,	$03,	nF5,	$08,	$15,	nRst,	$13,	nF5
	dc.b		$15,	nRst,	$03,	nF5,	$15,	nRst,	$03,	nB5
	dc.b		$0D,	nRst,	$03,	nG5,	$15,	nRst,	$03,	nG5
	dc.b		$15,	nRst,	$03,	nG5,	$0D,	nRst,	$03,	nAb5
	dc.b		$15,	nRst,	$03,	nAb5,	$15,	nRst,	$03,	nAb5
	dc.b		$0D,	nRst,	$03,	nF5,	$0D,	nRst,	$03,	nF5
	dc.b		$08,	$15,	nRst,	$03,	nF5,	$0D,	nRst,	$03
	dc.b		nD5,	$2C,	nRst,	$04,	nD5,	$0D,	nRst,	$03
	dc.b		nG5,	$15,	nRst,	$03,	nG5,	$15,	nRst,	$03
	dc.b		nG5,	$0D,	nRst,	$03,	nAb5,	$15,	nRst,	$03
	dc.b		nAb5,	$15,	nRst,	$03,	nAb5,	$0D,	nRst,	$03
	dc.b		nF5,	$0D,	nRst,	$03,	nF5,	$08,	$15,	nRst
	dc.b		$13,	nG5,	$15,	nRst,	$03,	nG5,	$15,	nRst
	dc.b		$03,	nG5,	$0D,	nRst,	$03,	nG5,	$15,	nRst
	dc.b		$03,	nG5,	$15,	nRst,	$03,	nG5,	$0D,	nRst
	dc.b		$03,	nAb5,	$15,	nRst,	$03,	nAb5,	$15,	nRst
	dc.b		$03,	nAb5,	$0D,	nRst,	$03,	nF5,	$0D,	nRst
	dc.b		$03,	nF5,	$08,	$15,	nRst,	$03,	nF5,	$0D
	dc.b		nRst,	$03,	nG5,	$1C,	nRst,	$04,	nG5,	$1C
	dc.b		nRst,	$04,	nG5,	$2C,	nRst,	$14,	nAb5,	$1C
	dc.b		nRst,	$04,	nAb5,	$08,	$08,	$08,	$08,	nBb5
	dc.b		$0D,	nRst,	$03,	nBb5,	$0D,	nRst,	$03,	nBb5
	dc.b		$0D,	nRst,	$03,	nBb5,	$08,	$30,	nG5,	$08
	dc.b		$0D,	nRst,	$03,	nC6,	$0D,	nRst,	$03,	nC6
	dc.b		$0D,	nRst,	$03,	nC6,	$0D,	nRst,	$03,	nC6
	dc.b		$08,	$24,	nRst,	$04,	nAb5,	$08,	$08,	$08
	dc.b		$08,	nBb5,	$0D,	nRst,	$03,	nBb5,	$0D,	nRst
	dc.b		$03,	nBb5,	$0D,	nRst,	$03,	nBb5,	$08,	$24
	dc.b		nRst,	$04,	nG5,	$1C,	nRst,	$04,	nC5,	$2C
	dc.b		nRst,	$14,	nAb5,	$1C,	nRst,	$04,	nAb5,	$08
	dc.b		$08,	$08,	$08,	nBb5,	$0D,	nRst,	$03,	nBb5
	dc.b		$0D,	nRst,	$03,	nBb5,	$0D,	nRst,	$03,	nBb5
	dc.b		$08,	$30,	nG5,	$08,	$0D,	nRst,	$03,	nC6
	dc.b		$0D,	nRst,	$03,	nC6,	$0D,	nRst,	$03,	nC6
	dc.b		$0D,	nRst,	$03,	nC6,	$08,	$24,	nRst,	$04
	dc.b		nAb5,	$08,	$08,	$08,	$08,	nBb5,	$0D,	nRst
	dc.b		$03,	nBb5,	$0D,	nRst,	$03,	nBb5,	$0D,	nRst
	dc.b		$03,	nBb5,	$08,	$24,	nRst,	$04,	nG5,	$1C
	dc.b		nRst,	$04,	nC5,	$2C,	nRst,	$14,	$40,	$40
	smpsJump	atdawn_FM3

; FM4 Data
atdawn_FM4:
	smpsFMvoice	$02
	dc.b		nAb3,	$3C,	nRst,	$04,	nBb3,	$3C,	nRst,	$04
	dc.b		nG3,	$3C,	nRst,	$04,	nC4,	$3C,	nRst,	$04
	dc.b		nAb3,	$3C,	nRst,	$04,	nBb3,	$3C,	nRst,	$04
	dc.b		nG3,	$3C,	nRst,	$04,	nC4,	$3C,	nRst,	$04
	dc.b		nAb3,	$3C,	nRst,	$04,	nBb3,	$3C,	nRst,	$04
	dc.b		nG3,	$3C,	nRst,	$04,	nC4,	$3C,	nRst,	$04
	dc.b		nAb3,	$3C,	nRst,	$04,	nBb3,	$3C,	nRst,	$04
	dc.b		nG3,	$3C,	nRst,	$04,	nC4,	$3C,	nRst,	$04
	dc.b		nC4,	$3C,	nRst,	$04,	nC4,	$3C,	nRst,	$04
	dc.b		nBb3,	$3C,	nRst,	$04,	nB3,	$3C,	nRst,	$04
	dc.b		nC4,	$3C,	nRst,	$04,	nAb3,	$3C,	nRst,	$04
	dc.b		nBb3,	$3C,	nRst,	$04,	nG3,	$3C,	nRst,	$04
	dc.b		nC4,	$3C,	nRst,	$04,	nC4,	$3C,	nRst,	$04
	dc.b		nBb3,	$3C,	nRst,	$04,	nB3,	$3C,	nRst,	$04
	dc.b		nC4,	$3C,	nRst,	$04,	nAb3,	$3C,	nRst,	$04
	dc.b		nBb3,	$3C,	nRst,	$04,	nG3,	$3C,	nRst,	$04
	dc.b		nG3,	$3C,	nRst,	$04,	nC4,	$3C,	nRst,	$04
	dc.b		nC4,	$3C,	nRst,	$04,	nBb3,	$3C,	nRst,	$04
	dc.b		nB3,	$3C,	nRst,	$04,	nC4,	$3C,	nRst,	$04
	dc.b		nAb3,	$3C,	nRst,	$04,	nBb3,	$3C,	nRst,	$04
	dc.b		nG3,	$3C,	nRst,	$04,	nC4,	$3C,	nRst,	$04
	dc.b		nAb3,	$3C,	nRst,	$04,	nBb3,	$3C,	nRst,	$04
	dc.b		nG3,	$3C,	nRst,	$04,	nC4,	$3C,	nRst,	$04
	dc.b		nAb3,	$3C,	nRst,	$04,	nBb3,	$3C,	nRst,	$04
	dc.b		nG3,	$3C,	nRst,	$04,	nG3,	$3C,	nRst,	$04
	dc.b		nAb3,	$08,	$08,	$08,	$08,	$08,	$08,	$08
	dc.b		$08,	nBb3,	$08,	$08,	$08,	$08,	$08,	$08
	dc.b		$08,	$08,	nG3,	$08,	$08,	$08,	$08,	$08
	dc.b		$08,	$08,	$08,	nC4,	$08,	$08,	$08,	$08
	dc.b		$08,	$08,	$08,	$08,	nAb3,	$08,	$08,	$08
	dc.b		$08,	$08,	$08,	$08,	$08,	nBb3,	$08,	$08
	dc.b		$08,	$08,	$08,	$08,	$08,	$08,	nG3,	$08
	dc.b		$08,	$08,	$08,	$08,	$08,	$08,	$08,	nC4
	dc.b		$08,	$08,	$08,	$08,	$08,	$08,	$08,	$08
	dc.b		nAb3,	$08,	$08,	$08,	$08,	$08,	$08,	$08
	dc.b		$08,	nBb3,	$08,	$08,	$08,	$08,	$08,	$08
	dc.b		$08,	$08,	nG3,	$08,	$08,	$08,	$08,	$08
	dc.b		$08,	$08,	$08,	nC4,	$08,	$08,	$08,	$08
	dc.b		$08,	$08,	$08,	$08,	nAb3,	$08,	$08,	$08
	dc.b		$08,	$08,	$08,	$08,	$08,	nBb3,	$08,	$08
	dc.b		$08,	$08,	$08,	$08,	$08,	$08,	nG3,	$08
	dc.b		$08,	$08,	$08,	$08,	$08,	$08,	$08,	nC4
	dc.b		$08,	$08,	$08,	$08,	$08,	$08,	$08,	$08
	dc.b		$08,	nBb3,	$08,	nC4,	nBb3,	$04,	nC4,	$0C
	dc.b		$04,	nBb3,	$08,	nC4,	nBb3,	$04,	nC4,	$08
	dc.b		nBb3,	nC4,	nBb3,	$04,	nC4,	$20,	nRst,	$04
	smpsJump	atdawn_FM4

; FM5 Data
atdawn_FM5:
	smpsFMvoice	$02
	dc.b		nEb4,	$3C,	nRst,	$04,	nF4,	$3C,	nRst,	$04
	dc.b		nD4,	$3C,	nRst,	$04,	nG4,	$3C,	nRst,	$04
	dc.b		nEb4,	$3C,	nRst,	$04,	nF4,	$3C,	nRst,	$04
	dc.b		nD4,	$3C,	nRst,	$04,	nG4,	$3C,	nRst,	$04
	dc.b		nEb4,	$3C,	nRst,	$04,	nF4,	$3C,	nRst,	$04
	dc.b		nD4,	$3C,	nRst,	$04,	nG4,	$3C,	nRst,	$04
	dc.b		nEb4,	$3C,	nRst,	$04,	nF4,	$3C,	nRst,	$04
	dc.b		nD4,	$3C,	nRst,	$04,	nG4,	$3C,	nRst,	$04
	dc.b		nG4,	$3C,	nRst,	$04,	nAb4,	$3C,	nRst,	$04
	dc.b		nF4,	$3C,	nRst,	$04,	nF4,	$3C,	nRst,	$04
	dc.b		nG4,	$3C,	nRst,	$04,	nEb4,	$3C,	nRst,	$04
	dc.b		nF4,	$3C,	nRst,	$04,	nD4,	$3C,	nRst,	$04
	dc.b		nG4,	$3C,	nRst,	$04,	nAb4,	$3C,	nRst,	$04
	dc.b		nF4,	$3C,	nRst,	$04,	nF4,	$3C,	nRst,	$04
	dc.b		nG4,	$3C,	nRst,	$04,	nEb4,	$3C,	nRst,	$04
	dc.b		nF4,	$3C,	nRst,	$04,	nD4,	$3C,	nRst,	$04
	dc.b		nD4,	$3C,	nRst,	$04,	nG4,	$3C,	nRst,	$04
	dc.b		nAb4,	$3C,	nRst,	$04,	nF4,	$3C,	nRst,	$04
	dc.b		nF4,	$3C,	nRst,	$04,	nG4,	$3C,	nRst,	$04
	dc.b		nEb4,	$3C,	nRst,	$04,	nF4,	$3C,	nRst,	$04
	dc.b		nD4,	$3C,	nRst,	$04,	nG4,	$3C,	nRst,	$04
	dc.b		nEb4,	$3C,	nRst,	$04,	nF4,	$3C,	nRst,	$04
	dc.b		nD4,	$3C,	nRst,	$04,	nG4,	$3C,	nRst,	$04
	dc.b		nEb4,	$3C,	nRst,	$04,	nF4,	$3C,	nRst,	$04
	dc.b		nD4,	$3C,	nRst,	$04,	nD4,	$3C,	nRst,	$7F
	dc.b		$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$0C
	dc.b		$40,	$40
	smpsJump	atdawn_FM5

; PSG1 Data
atdawn_PSG1:
	smpsPSGvoice	$00
	dc.b		nAb4,	$04,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nB4,	nB5,	nB5,	nB4,	nB5,	nB5,	nB4
	dc.b		nB5,	nB4,	nB5,	nB5,	nB4,	nB5,	nB5,	nB4
	dc.b		nB5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nB4,	nB5,	nB5,	nB4,	nB5,	nB5,	nB4
	dc.b		nB5,	nB4,	nB5,	nB5,	nB4,	nB5,	nB5,	nB4
	dc.b		nB5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nB4,	nB5,	nB5,	nB4,	nB5,	nB5,	nB4
	dc.b		nB5,	nB4,	nB5,	nB5,	nB4,	nB5,	nB5,	nB4
	dc.b		nB5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nAb4,	nAb5,	nAb5,	nAb4,	nAb5,	nAb5,	nAb4
	dc.b		nAb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nBb4,	nBb5,	nBb5,	nBb4,	nBb5,	nBb5,	nBb4
	dc.b		nBb5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nG4,	nG5,	nG5,	nG4,	nG5,	nG5,	nG4
	dc.b		nG5,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nC5,	nC6,	nC6,	nC5,	nC6,	nC6,	nC5
	dc.b		nC6,	nRst,	$40,	$40
	smpsJump	atdawn_PSG1

; PSG2 Data
atdawn_PSG2:
	smpsPSGvoice	$00
	dc.b		nC6,	$15,	nRst,	$03,	nEb6,	$24,	nRst,	$04
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nEb6,	$0D,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nF6,	$24,	nRst,	$04,	nF6,	$15,	nRst,	$03
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$0D,	nRst,	$03
	dc.b		nC6,	$15,	nRst,	$03,	nEb6,	$24,	nRst,	$04
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nC6,	$0D,	nRst,	$03,	nBb5,	$1C,	nRst,	$04
	dc.b		nD6,	$1C,	nRst,	$04,	nC6,	$3C,	nRst,	$04
	dc.b		nC6,	$15,	nRst,	$03,	nEb6,	$24,	nRst,	$04
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nEb6,	$0D,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nF6,	$24,	nRst,	$04,	nF6,	$15,	nRst,	$03
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$0D,	nRst,	$03
	dc.b		nC6,	$15,	nRst,	$03,	nEb6,	$24,	nRst,	$04
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nC6,	$0D,	nRst,	$03,	nBb5,	$1C,	nRst,	$04
	dc.b		nD6,	$1C,	nRst,	$04,	nC6,	$3C,	nRst,	$04
	dc.b		nC6,	$1C,	nRst,	$0C,	nC6,	$08,	nD6,	nEb6
	dc.b		nC6,	$1C,	nRst,	$0C,	nC6,	$08,	nD6,	nEb6
	dc.b		nEb6,	nD6,	nD6,	nC6,	nC6,	nBb5,	nBb5,	$0D
	dc.b		nRst,	$03,	nB5,	$15,	nRst,	$03,	nC6,	$15
	dc.b		nRst,	$03,	nD6,	$0D,	nRst,	$03,	nC6,	$1C
	dc.b		nRst,	$0C,	nC6,	$08,	nD6,	nEb6,	nC6,	$1C
	dc.b		nRst,	$0C,	nC6,	$08,	nD6,	nEb6,	nEb6,	nD6
	dc.b		nD6,	nC6,	nC6,	nBb5,	nBb5,	$0D,	nRst,	$03
	dc.b		nEb6,	$15,	nRst,	$03,	nF6,	$08,	nD6,	$15
	dc.b		nRst,	$03,	nG5,	$08,	nC6,	$1C,	nRst,	$0C
	dc.b		nC6,	$08,	nD6,	nEb6,	nC6,	$1C,	nRst,	$0C
	dc.b		nC6,	$08,	nD6,	nEb6,	nEb6,	nD6,	nD6,	nC6
	dc.b		nC6,	nBb5,	nBb5,	$0D,	nRst,	$03,	nB5,	$15
	dc.b		nRst,	$03,	nC6,	$15,	nRst,	$03,	nD6,	$0D
	dc.b		nRst,	$03,	nC6,	$1C,	nRst,	$0C,	nC6,	$08
	dc.b		nD6,	nEb6,	nC6,	$1C,	nRst,	$0C,	nC6,	$08
	dc.b		nD6,	nEb6,	nEb6,	nD6,	nD6,	nC6,	nC6,	nBb5
	dc.b		nBb5,	$0D,	nRst,	$03,	nEb6,	$15,	nRst,	$03
	dc.b		nF6,	$08,	nD6,	$1C,	nRst,	$44,	nC6,	$15
	dc.b		nRst,	$03,	nBb5,	$15,	nRst,	$03,	nC6,	$0D
	dc.b		nRst,	$03,	nD6,	$15,	nRst,	$03,	nEb6,	$15
	dc.b		nRst,	$03,	nC6,	$0D,	nRst,	$03,	nC6,	$0D
	dc.b		nRst,	$03,	nD6,	$08,	nBb5,	$15,	nRst,	$13
	dc.b		nB5,	$15,	nRst,	$03,	nC6,	$15,	nRst,	$03
	dc.b		nD6,	$0D,	nRst,	$03,	nD6,	$15,	nRst,	$03
	dc.b		nEb6,	$15,	nRst,	$03,	nD6,	$0D,	nRst,	$03
	dc.b		nC6,	$15,	nRst,	$03,	nF6,	$15,	nRst,	$03
	dc.b		nEb6,	$0D,	nRst,	$03,	nEb6,	$0D,	nRst,	$03
	dc.b		nD6,	$08,	$15,	nRst,	$03,	nC6,	$0D,	nRst
	dc.b		$03,	nB5,	$2C,	nRst,	$04,	nG5,	$0D,	nRst
	dc.b		$03,	nC6,	$15,	nRst,	$03,	nBb5,	$15,	nRst
	dc.b		$03,	nC6,	$0D,	nRst,	$03,	nD6,	$15,	nRst
	dc.b		$03,	nEb6,	$15,	nRst,	$03,	nC6,	$0D,	nRst
	dc.b		$03,	nC6,	$0D,	nRst,	$03,	nD6,	$08,	nBb5
	dc.b		$15,	nRst,	$13,	nB5,	$15,	nRst,	$03,	nC6
	dc.b		$15,	nRst,	$03,	nD6,	$0D,	nRst,	$03,	nD6
	dc.b		$15,	nRst,	$03,	nEb6,	$15,	nRst,	$03,	nD6
	dc.b		$0D,	nRst,	$03,	nC6,	$15,	nRst,	$03,	nF6
	dc.b		$15,	nRst,	$03,	nEb6,	$0D,	nRst,	$03,	nEb6
	dc.b		$0D,	nRst,	$03,	nD6,	$08,	$15,	nRst,	$03
	dc.b		nC6,	$0D,	nRst,	$03,	nB5,	$1C,	nRst,	$04
	dc.b		nD6,	$1C,	nRst,	$04,	nB5,	$2C,	nRst,	$14
	dc.b		nC6,	$1C,	nRst,	$04,	nC6,	$08,	nD6,	nEb6
	dc.b		nF6,	nEb6,	$0D,	nRst,	$03,	nD6,	$0D,	nRst
	dc.b		$03,	nC6,	$0D,	nRst,	$03,	nD6,	$08,	nBb5
	dc.b		$30,	nG5,	$08,	nD6,	$0D,	nRst,	$03,	nF6
	dc.b		$0D,	nRst,	$03,	nEb6,	$0D,	nRst,	$03,	nD6
	dc.b		$0D,	nRst,	$03,	nEb6,	$08,	nC6,	$24,	nRst
	dc.b		$04,	nC6,	$08,	nD6,	nEb6,	nF6,	nEb6,	$0D
	dc.b		nRst,	$03,	nD6,	$0D,	nRst,	$03,	nC6,	$0D
	dc.b		nRst,	$03,	nD6,	$08,	nBb5,	$24,	nRst,	$04
	dc.b		nD6,	$1C,	nRst,	$04,	nC6,	$2C,	nRst,	$14
	dc.b		nC6,	$1C,	nRst,	$04,	nC6,	$08,	nD6,	nEb6
	dc.b		nF6,	nEb6,	$0D,	nRst,	$03,	nD6,	$0D,	nRst
	dc.b		$03,	nC6,	$0D,	nRst,	$03,	nD6,	$08,	nBb5
	dc.b		$30,	nG5,	$08,	nD6,	$0D,	nRst,	$03,	nF6
	dc.b		$0D,	nRst,	$03,	nEb6,	$0D,	nRst,	$03,	nD6
	dc.b		$0D,	nRst,	$03,	nEb6,	$08,	nC6,	$24,	nRst
	dc.b		$04,	nC6,	$08,	nD6,	nEb6,	nF6,	nEb6,	$0D
	dc.b		nRst,	$03,	nD6,	$0D,	nRst,	$03,	nC6,	$0D
	dc.b		nRst,	$03,	nD6,	$08,	nBb5,	$24,	nRst,	$04
	dc.b		nD6,	$1C,	nRst,	$04,	nC6,	$2C,	nRst,	$14
	dc.b		$50,	nEb6,	$0D,	nRst,	$03,	nD6,	$0D,	nRst
	dc.b		$03,	nEb6,	$0D,	nRst,	$03
	smpsJump	atdawn_PSG2

; PSG3 Data
atdawn_PSG3:
	smpsPSGform	$E7
atdawn_Jump01:
	smpsPSGvoice	$01
	dc.b		nAb6,	$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	dc.b		$04,	$04,	$04,	$04,	$04,	$04,	$04,	$04
	dc.b		nRst,	$40
	smpsJump	atdawn_Jump01

; DAC Data
atdawn_DAC:
	dc.b		dKickS1,	$0C,	$04,	dSnareS1,	$0C,	dKickS1,	dKickS1,	$08
	dc.b		dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	dKickS1
	dc.b		dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	dKickS1,	dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C
	dc.b		$04,	dSnareS1,	$0C,	dKickS1,	dKickS1,	$08,	dSnareS1,	dSnareS1
	dc.b		dKickS1,	$0C,	$04,	dSnareS1,	$0C,	dKickS1,	dKickS1,	$08
	dc.b		dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	dKickS1
	dc.b		dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	dKickS1,	dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C
	dc.b		$04,	dSnareS1,	$0C,	dKickS1,	dKickS1,	$08,	dSnareS1,	dSnareS1
	dc.b		$04,	$04,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	dKickS1
	dc.b		dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	dKickS1,	dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C
	dc.b		$04,	dSnareS1,	$0C,	dKickS1,	dKickS1,	$08,	dSnareS1,	$10
	dc.b		dKickS1,	$0C,	$04,	dSnareS1,	$0C,	dKickS1,	dKickS1,	$08
	dc.b		dSnareS1,	dSnareS1,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	dKickS1
	dc.b		dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	dKickS1,	dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C
	dc.b		$04,	dSnareS1,	$0C,	dKickS1,	dKickS1,	$08,	dSnareS1,	$10
	dc.b		dKickS1,	$0C,	$04,	dSnareS1,	$0C,	dKickS1,	dKickS1,	$08
	dc.b		dSnareS1,	$04,	$04,	$04,	$04,	dKickS1,	$0C,	$04
	dc.b		dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1,	$10,	dKickS1
	dc.b		$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1
	dc.b		$10,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1
	dc.b		$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1,	$0C
	dc.b		$0C,	dKickS1,	$08,	dSnareS1,	$04,	$04,	$04,	$04
	dc.b		dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08
	dc.b		dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C
	dc.b		dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	$0C,	dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C
	dc.b		$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1,	$04
	dc.b		$04,	$04,	$04,	dKickS1,	$0C,	$04,	dSnareS1,	$0C
	dc.b		dKickS1,	dKickS1,	$04,	dSnareS1,	dSnareS1,	$10,	dKickS1,	$0C
	dc.b		$04,	dSnareS1,	$0C,	dKickS1,	dKickS1,	$04,	dSnareS1,	dSnareS1
	dc.b		$10,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	dKickS1,	dKickS1
	dc.b		$04,	dSnareS1,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	dKickS1,	dKickS1,	$04,	dSnareS1,	dSnareS1,	$08,	$04
	dc.b		$04,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	dKickS1,	dKickS1
	dc.b		$04,	dSnareS1,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	dKickS1,	dKickS1,	$04,	dSnareS1,	dSnareS1,	$10,	dKickS1
	dc.b		$0C,	$04,	dSnareS1,	$0C,	dKickS1,	dKickS1,	$04,	dSnareS1
	dc.b		dSnareS1,	$10,	dKickS1,	$08,	dSnareS1,	$04,	dKickS1,	dSnareS1
	dc.b		$0C,	$0C,	dKickS1,	$04,	dSnareS1,	dSnareS1,	$08,	$04
	dc.b		$04,	dKickS1,	$08,	dSnareS1,	$04,	dKickS1,	dSnareS1,	$0C
	dc.b		$0C,	dKickS1,	$04,	dSnareS1,	dSnareS1,	dSnareS1,	$08,	$04
	dc.b		dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08
	dc.b		dSnareS1,	dSnareS1,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C
	dc.b		dKickS1,	$08,	dSnareS1,	dSnareS1,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1,	dKickS1,	$0C
	dc.b		$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1
	dc.b		$04,	$04,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C
	dc.b		dKickS1,	$08,	dSnareS1,	dSnareS1,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1,	dKickS1,	$0C
	dc.b		$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1
	dc.b		dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08
	dc.b		dSnareS1,	$04,	$04,	$04,	$04,	dKickS1,	$0C,	$04
	dc.b		dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1,	dKickS1
	dc.b		$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1
	dc.b		dSnareS1,	dKickS1,	$0C,	$04,	$0C,	dSnareS1,	$0C,	dKickS1
	dc.b		$08,	dSnareS1,	dSnareS1,	dKickS1,	$0C,	$04,	dSnareS1,	$0C
	dc.b		$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1,	$04,	$04,	dKickS1
	dc.b		$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1
	dc.b		dSnareS1,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1
	dc.b		$08,	dSnareS1,	dSnareS1,	dKickS1,	$0C,	$04,	dSnareS1,	$0C
	dc.b		$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1,	dKickS1,	$0C,	$04
	dc.b		dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1,	$04
	dc.b		$04,	dKickS1,	$08,	dSnareS1,	$04,	dKickS1,	dSnareS1,	$0C
	dc.b		$0C,	dKickS1,	$04,	dSnareS1,	dSnareS1,	$08,	$04,	$04
	dc.b		dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08
	dc.b		dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C
	dc.b		dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1,	dKickS1,	$0C
	dc.b		$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1,	$10
	dc.b		dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08
	dc.b		dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C
	dc.b		dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1
	dc.b		$0C,	$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1,	dKickS1,	dSnareS1
	dc.b		$04,	dKickS1,	dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1
	dc.b		dSnareS1,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1
	dc.b		$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04,	dSnareS1,	$0C
	dc.b		$0C,	dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04
	dc.b		dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1,	dSnareS1,	dKickS1
	dc.b		$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1
	dc.b		$10,	dKickS1,	$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1
	dc.b		$08,	dSnareS1,	dSnareS1,	dKickS1,	$0C,	$04,	dSnareS1,	$0C
	dc.b		$0C,	dKickS1,	$08,	dSnareS1,	$10,	dKickS1,	$0C,	$04
	dc.b		dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1,	$10,	dKickS1
	dc.b		$0C,	$04,	dSnareS1,	$0C,	$0C,	dKickS1,	$08,	dSnareS1
	dc.b		dSnareS1,	$04,	$04,	dKickS1,	$0C,	$04,	$30,	nRst
	dc.b		$40
	smpsJump	atdawn_DAC

atdawn_Voices:
	dc.b		$10,$09,$00,$00,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$25,$30,$13,$00;			Voice 00
	dc.b		$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$00,$00,$00,$00,$01,$00
	dc.b		$01,$0F,$3F,$0F,$3F,$16,$80,$17,$80;			Voice 01
	dc.b		$04,$7E,$31,$31,$01,$9F,$5F,$9F,$98,$06,$4D,$04,$44,$04,$08,$03
	dc.b		$03,$56,$56,$43,$45,$35,$80,$17,$80;			Voice 02
	dc.b		$00;			Voice 03
	even
