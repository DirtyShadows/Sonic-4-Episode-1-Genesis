; =============================================================================================
; Project Name:		Jungle
; Created:		19th July 2011
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Jungle_Header:
	smpsHeaderVoice	Jungle_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$22

	smpsHeaderDAC	Jungle_DAC
	smpsHeaderFM	Jungle_FM1,	smpsPitch00,	$10
	smpsHeaderFM	Jungle_FM2,	smpsPitch00,	$10
	smpsHeaderFM	Jungle_FM3,	smpsPitch00,	$10
	smpsHeaderFM	Jungle_FM4,	smpsPitch00,	$10
	smpsHeaderFM	Jungle_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	Jungle_PSG1,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	Jungle_PSG2,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	Jungle_PSG3,	smpsPitch00+$0B,	$00,	$00

; FM1 Data
Jungle_FM1:
	dc.b		nRst,	$14
	smpsPan		panCentre,	$00
	smpsFMvoice	$00
	dc.b		nFs5,	$07,	nRst,	$0D,	nD5,	$0E,	nFs5,	$06
	dc.b		nRst,	$0E,	nFs5,	$06,	nRst,	$0E,	nD5,	$06
	dc.b		nRst,	$0E,	nD5,	$06,	nRst,	$0E,	nA4,	$06
	dc.b		$07,	nRst,	$0D,	nG4,	$07,	nRst,	$0D,	nG4
	dc.b		$07,	nRst,	$0D,	nB4,	$07,	nRst,	nB4,	$06
	dc.b		nRst,	$0E,	nA4,	$06,	nRst,	$0E	
	smpsFMvoice	$01
	smpsaltervol	$0A
	dc.b		nA4,	$06
	dc.b		nFs4,	$07,	nRst,	nD4,	$06,	nA4,	$07,	nRst
	dc.b		nA4,	$06,	nB4,	$07,	nRst,	nA4,	$06,	nRst
	dc.b		$14	
	smpsFMvoice	$00
	smpsaltervol	-$0A
	dc.b		nG4,	nB4,	nD5,	nFs5,	nA4,	$0E,	$06
	dc.b		nRst,	$0E,	nB4,	$06,	$07,	nRst,	$0D,	nB4
	dc.b		$07,	nRst,	$0D,	nB4,	$07,	nRst,	$0D,	nB4
	dc.b		$07,	nRst,	$0D,	nB4,	$07,	nRst,	nCs5,	$06
	smpsFMvoice	$01
	smpsaltervol	$0A
	dc.b		nRst,	$0E,	nD5,	$06,	nE5,	$07,	nRst,	nFs5
	dc.b		$06,	nE5,	$07,	nRst,	nCs5,	$06,	nA4,	$07
	dc.b		nRst,	nFs4,	$06
	smpsFMvoice	$00
	smpsaltervol	-$0A
	dc.b		nRst,	$14	
	dc.b		nFs5,	$07,	nRst
	dc.b		$0D,	nD5,	$0E,	nFs5,	$06,	nRst,	$0E,	nFs5
	dc.b		$06,	nRst,	$0E,	nD5,	$06,	nRst,	$0E,	nD5
	dc.b		$06,	nRst,	$0E	
	dc.b		nA4,	$06,	$07,	nRst,	$0D
	dc.b		nG4,	$07,	nRst,	$0D,	nG4,	$07,	nRst,	$0D
	dc.b		nB4,	$07,	nRst,	nB4,	$06,	nRst,	$0E,	nA4
	dc.b		$06,	nRst,	$0E	
	smpsFMvoice	$01
	smpsaltervol	$0A
	dc.b		nA4,	$06,	nFs4,	$07,	nRst
	dc.b		nD4,	$06,	nA4,	$07,	nRst,	nA4,	$06,	nB4
	dc.b		$07,	nRst,	nA4,	$06,	nRst,	$14	
	smpsFMvoice	$00
	smpsaltervol	-$0A
	dc.b		nG4,	nB4
	dc.b		nD5,	nFs5,	nA4,	$0E,	$06,	nRst,	$0E,	nB4
	dc.b		$06,	$07,	nRst,	$0D,	nB4,	$07,	nRst,	$0D
	dc.b		nB4,	$07,	nRst,	$0D,	nE4,	$0E,	$06,	$0E
	dc.b		nA4,	$2E	
	smpsFMvoice	$01
	smpsaltervol	$0A
	dc.b		nD3,	$07,	nRst,	nFs3,	$06,	nRst
	dc.b		$01,	nA3,	$07,	nRst,	$06,	nFs4,	nG5,	$07
	dc.b		nRst,	$0D,	nG5,	$07,	nRst,	$0D,	nG5,	$07
	dc.b		nRst,	$0D,	nD5,	$07,	nRst,	nB4,	$06,	nRst
	dc.b		$0E,	nG5,	$06,	nRst,	$0E,	nG5,	$06,	nB5
	dc.b		$07,	nRst,	$0D,	nG5,	$07,	nRst,	$1B,	nFs5
	dc.b		$06,	nRst,	$0E,	nFs5,	$06,	nA5,	$07,	nRst
	dc.b		$0D,	nD5,	$07,	nRst,	nFs5,	$1A,	nD4,	$14
	dc.b		nE4,	nFs4,	nG4,	nG5,	$07,	nRst,	$0D,	nG5
	dc.b		$07,	nRst,	$0D,	nD5,	$07,	nRst,	nB4,	$06
	dc.b		nRst,	$0E,	nD5,	$06,	nRst,	$0E,	nD5,	$06
	dc.b		$07,	nRst,	$0D,	nD5,	$07,	nRst,	$0D,	nE5
	dc.b		$07,	nRst,	$49,	nE5,	$07,	nRst,	nE5,	$06
	dc.b		nRst,	$0E,	nE5,	$2E
	smpsFMvoice	$00
	smpsaltervol	-$0A
	smpsJump	Jungle_FM1

; FM2 Data
Jungle_FM2:
	smpsPan		panCentre,	$00
	smpsFMvoice	$04
	dc.b		nD3,	$0E,	nA2,	$06,	nB2,	$07,	nRst,	nD3
	dc.b		$06,	nA2,	$07,	nRst,	nB2,	$06,	nRst,	$0E
	dc.b		nD3,	$14,	$06,	nRst,	$0E,	nD3,	$06,	nRst
	dc.b		$0E,	nE3,	$06,	nFs3,	$07,	nRst,	$0D,	nG3
	dc.b		$07,	nRst,	$0D,	nG3,	$07,	nRst,	nG3,	$06
	dc.b		nAb3,	$07,	nRst,	$0D,	nAb3,	$07,	nRst,	nA3
	dc.b		$06,	nRst,	$0E,	nA3,	$06,	$07,	nRst,	$0D
	dc.b		nA2,	$07,	nRst,	nA2,	$06,	nB2,	$07,	nRst
	dc.b		nA2,	$06,	nG3,	$0E,	nD3,	$06,	nG3,	$07
	dc.b		nRst,	nD3,	$14,	nE3,	$06,	nG3,	$07,	nRst
	dc.b		$0D,	nFs3,	$0E,	nB2,	$06,	nFs3,	$07,	nRst
	dc.b		nB2,	$06,	nRst,	$0E,	nCs3,	$06,	nD3,	$07
	dc.b		nRst,	$0D,	nE3,	$07,	nRst,	$0D,	nE3,	$07
	dc.b		nRst,	$0D,	nE3,	$07,	nRst,	$0D,	nE3,	$07
	dc.b		nRst,	$06,	nA3,	$07,	nRst,	$0E,	nE3,	$06
	dc.b		nCs4,	$0E,	nB3,	$06,	nA3,	$0E,	nG3,	$06
	dc.b		nE3,	$07,	nRst,	nA2,	$06,	nD3,	$0E,	nA2
	dc.b		$06,	nB2,	$07,	nRst,	nD3,	$06,	nA2,	$07
	dc.b		nRst,	nB2,	$06,	nRst,	$0E,	nD3,	$14,	$06
	dc.b		nRst,	$0E,	nD3,	$06,	nRst,	$0E,	nE3,	$06
	dc.b		nFs3,	$07,	nRst,	$0D,	nG3,	$07,	nRst,	$0D
	dc.b		nG3,	$07,	nRst,	nG3,	$06,	nAb3,	$07,	nRst
	dc.b		$0D,	nAb3,	$07,	nRst,	nA3,	$06,	nRst,	$0E
	dc.b		nA3,	$06,	$07,	nRst,	$0D,	nA2,	$07,	nRst
	dc.b		nA2,	$06,	nB2,	$07,	nRst,	nA2,	$06,	nG3
	dc.b		$0E,	nD3,	$06,	nG3,	$07,	nRst,	nD3,	$14
	dc.b		nE3,	$06,	nG3,	$07,	nRst,	$0D,	nFs3,	$0E
	dc.b		nB2,	$06,	nFs3,	$07,	nRst,	nB2,	$06,	nRst
	dc.b		$0E,	nCs3,	$06,	nD3,	$07,	nRst,	$0D,	nE3
	dc.b		$07,	nRst,	nD3,	$06,	nE3,	$07,	nRst,	nE3
	dc.b		$06,	nA3,	$07,	nRst,	nA2,	$06,	nB2,	$07
	dc.b		nRst,	nCs3,	$06,	nD3,	$07,	nRst,	$0D,	nA2
	dc.b		$07,	nRst,	$0D,	nD3,	$07,	nRst,	nD3,	$06
	dc.b		nE3,	$07,	nRst,	nFs3,	$06,	nG3,	$14,	nD3
	dc.b		nE3,	nD3,	nG3,	nFs3,	nE3,	nD3,	nD3,	nA2
	dc.b		nB2,	nA2,	nD3,	nCs3,	nB2,	nA2,	nG3,	nD3
	dc.b		nE3,	nD3,	nG3,	nFs3,	nE3,	nD3,	nA3,	$07
	dc.b		nRst,	$0D,	nA2,	$07,	nRst,	nBb2,	$06,	nB2
	dc.b		$07,	nRst,	nBb2,	$06,	nA2,	$07,	nRst,	$0D
	dc.b		nA3,	$07,	nRst,	nA2,	$06,	nRst,	$0E,	nA2
	dc.b		$06,	nB2,	$07,	nRst,	$0D,	nCs3,	$07,	nRst
	dc.b		$0D
	smpsJump	Jungle_FM2

; FM3 Data
Jungle_FM3:
	smpsPan		panCentre,	$00

Jungle_Call_xD:
	dc.b		nRst,	$14
	smpsFMvoice	$00
	dc.b		nA5,	$07,	nRst,	$0D,	nFs5,	$0E,	nA5,	$06
	dc.b		nRst,	$0E,	nB5,	$06,	nRst,	$0E,	nFs5,	$06
	dc.b		nRst,	$0E,	nFs5,	$06,	nRst,	$0E,	nE5,	$06
	dc.b		nD5,	$07,	nRst,	$0D,	nB4,	$07,	nRst,	$0D
	dc.b		nD5,	$07,	nRst,	nD5,	$06,	nE5,	$07,	nRst
	dc.b		nFs5,	$06,	nRst,	$0E,	nE5,	$32,	nRst,	$10
	dc.b		$28,	nB4,	$14,	nD5,	nB5,	nA5,	nFs5,	$0E
	dc.b		nD5,	$06,	nRst,	$0E,	nE5,	$06,	nFs5,	$07
	dc.b		nRst,	$0D,	nG5,	$07,	nRst,	$0D,	nG5,	$07
	dc.b		nRst,	$0D,	nAb5,	$07,	nRst,	$0D,	nAb5,	$07
	dc.b		nRst,	nA5,	$32,	nRst,	$10,	$28,	nA5,	$07
	dc.b		nRst,	$0D,	nFs5,	$0E,	nA5,	$06,	nRst,	$0E
	dc.b		nB5,	$06,	nRst,	$0E,	nFs5,	$06,	nRst,	$0E
	dc.b		nFs5,	$06,	nRst,	$0E,	nE5,	$06,	nD5,	$07
	dc.b		nRst,	$0D,	nB4,	$07,	nRst,	$0D,	nD5,	$07
	dc.b		nRst,	nD5,	$06,	nE5,	$07,	nRst,	nFs5,	$06
	dc.b		nRst,	$0E,	nE5,	$32,	nRst,	$10,	$28,	nB4
	dc.b		$14,	nD5,	nB5,	nA5,	nFs5,	$0E,	nD5,	$06
	dc.b		nRst,	$0E,	nE5,	$06,	nFs5,	$07,	nRst,	$0D
	dc.b		nE5,	$07,	nRst,	$0D,	nE5,	$07,	nRst,	nE5
	dc.b		$06,	nA4,	$0E,	nB4,	$06,	nCs5,	$0E,	nD5
	dc.b		$32,	nRst,	$10,	$28,	nBb5,	$04,	nG5,	$03
	dc.b		nRst,	$0D,	nBb5,	$04,	nG5,	$03,	nRst,	$0D
	dc.b		nG5,	$04,	nD5,	$03,	nRst,	$07,	nG5,	$03
	dc.b		nD5,	nRst,	$0E,	nG5,	$03,	nB5,	nRst,	$0E
	dc.b		nG5,	$03,	nB5,	nB5,	$04,	nD6,	$03,	nRst
	dc.b		$0D,	nG5,	$04,	nB5,	$03,	nRst,	$1B,	nFs5
	dc.b		$03,	nA5,	nRst,	$0E,	nFs5,	$03,	nA5,	nA5
	dc.b		$04,	nD6,	$03,	nRst,	$0D,	nA5,	$04,	nFs5
	dc.b		$03,	nRst,	$07,	nFs5,	$03,	nA5,	nFs5,	$04
	dc.b		nA5,	$03,	nFs5,	nA5,	$04,	nFs5,	$03,	nA5
	dc.b		nFs5,	$04,	nA5,	$03,	nFs5,	nA5,	$04,	nFs5
	dc.b		$03,	nA5,	nFs5,	$04,	nA5,	$03,	nFs5,	nA5
	dc.b		$04,	nFs5,	$03,	nA5,	nFs5,	$04,	nA5,	$03
	dc.b		nFs5,	nA5,	$04,	nFs5,	$03,	nA5,	nRst,	$14
	dc.b		nBb5,	$04,	nG5,	$03,	nRst,	$0D,	nBb5,	$04
	dc.b		nG5,	$03,	nRst,	$0D,	nG5,	$04,	nD5,	$03
	dc.b		nRst,	$07,	nG5,	$03,	nD5,	nRst,	$0E,	nG5
	dc.b		$06,	nRst,	$0E,	nG5,	$06,	nA5,	$07,	nRst
	dc.b		$0D,	nB5,	$07,	nRst,	$0D,	nA5,	$07,	nRst
	dc.b		$14,	$14,	$14,	$0D,	nA5,	$07,	nRst,	nB5
	dc.b		$06,	nRst,	$0E,	nA5,	$2E
	smpsJump	Jungle_Call_xD

; FM4 Data
Jungle_FM4:
	smpsaltervol	$01
	smpsPan		panLeft,	$00
	dc.b		$01
	smpsJump	Jungle_Call_xD

; FM5 Data
Jungle_FM5:
	smpsaltervol	$01
	smpsPan		panRight,	$00
	dc.b		$02
	smpsJump	Jungle_Call_xD

; PSG1 Data
Jungle_PSG1:
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$0F
	smpsJump	Jungle_PSG1

; PSG2 Data
Jungle_PSG2:
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$0F
	smpsJump	Jungle_PSG2

; PSG3 Data
Jungle_PSG3:
	smpsPSGform	$E7
Jungle_Jump01:
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$0F
	smpsJump	Jungle_Jump01

; DAC Data
Jungle_DAC:
	smpsPan		panCentre,	$00
	dc.b		dKick,	$07,	nRst,	dKick,	$06,	dSnare,	$07,	nRst
	dc.b		dKick,	$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare
	dc.b		$07,	nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick
	dc.b		$06,	dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst
	dc.b		$07,	dKick,	$06,	dSnare,	$07,	nRst,	dKick,	$06
	dc.b		$07,	nRst,	$07,	dKick,	$06,	dSnare,	$07,	nRst
	dc.b		dKick,	$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare
	dc.b		$07,	nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick
	dc.b		$06,	dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst
	dc.b		$07,	dKick,	$06,	dSnare,	$07,	nRst,	dKick,	$06
	dc.b		$07,	nRst,	$07,	dKick,	$06,	dSnare,	$07,	nRst
	dc.b		dKick,	$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare
	dc.b		$07,	nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick
	dc.b		$06,	dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst
	dc.b		$07,	dKick,	$06,	dSnare,	$07,	nRst,	dKick,	$06
	dc.b		$07,	nRst,	$07,	dKick,	$06,	dSnare,	$07,	nRst
	dc.b		dKick,	$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare
	dc.b		$07,	nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick
	dc.b		$06,	dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst
	dc.b		$07,	dKick,	$06,	dSnare,	$07,	nRst,	dKick,	$06
	dc.b		$07,	nRst,	$07,	dKick,	$06,	dSnare,	$07,	nRst
	dc.b		dKick,	$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare
	dc.b		$07,	nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick
	dc.b		$06,	dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst
	dc.b		$07,	dKick,	$06,	dSnare,	$07,	nRst,	dKick,	$06
	dc.b		$07,	nRst,	$07,	dKick,	$06,	dSnare,	$07,	nRst
	dc.b		dKick,	$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare
	dc.b		$07,	nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick
	dc.b		$06,	dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst
	dc.b		$07,	dKick,	$06,	dSnare,	$07,	nRst,	dKick,	$06
	dc.b		$07,	nRst,	$07,	dKick,	$06,	dSnare,	$07,	nRst
	dc.b		dKick,	$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare
	dc.b		$07,	nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick
	dc.b		$06,	dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst
	dc.b		$07,	dKick,	$06,	dSnare,	$07,	nRst,	dKick,	$06
	dc.b		$07,	nRst,	$07,	dKick,	$06,	dSnare,	$07,	nRst
	dc.b		dKick,	$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare
	dc.b		$07,	nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick
	dc.b		$06,	dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst
	dc.b		$07,	dKick,	$06,	dSnare,	$07,	$07,	$06,	dKick
	dc.b		$07,	nRst,	dKick,	$06,	dSnare,	$07,	nRst,	dKick
	dc.b		$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare,	$07
	dc.b		nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick,	$06
	dc.b		dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst,	$07
	dc.b		dKick,	$06,	dSnare,	$07,	nRst,	dKick,	$06,	$07
	dc.b		nRst,	$07,	dKick,	$06,	dSnare,	$07,	nRst,	dKick
	dc.b		$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare,	$07
	dc.b		nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick,	$06
	dc.b		dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst,	$07
	dc.b		dKick,	$06,	dSnare,	$07,	nRst,	dKick,	$06,	$07
	dc.b		nRst,	$07,	dKick,	$06,	dSnare,	$07,	nRst,	dKick
	dc.b		$06,	$07,	nRst,	$07,	dKick,	$06,	dSnare,	$07
	dc.b		nRst,	dKick,	$06,	$07,	nRst,	$07,	dKick,	$06
	dc.b		dSnare,	$07,	nRst,	dKick,	$06,	$07,	nRst,	$07
	dc.b		dKick,	$06,	dSnare,	$07,	nRst,	dKick,	$06,	dSnare
	dc.b		$07,	nRst,	$0D,	dKick,	$07,	nRst,	$0D,	dKick
	dc.b		$07,	nRst,	$0D,	dKick,	$07,	nRst,	$0D,	dSnare
	dc.b		$07,	$07,	$06,	$07,	$07,	$06,	$07,	$07
	dc.b		$06,	$07,	$07,	$06
	smpsJump	Jungle_DAC

Jungle_Voices:
	dc.b		$39,$0D,$01,$02,$01,$9F,$1F,$1F,$5F,$0A,$09,$09,$04,$08,$07,$07
	dc.b		$07,$24,$24,$24,$28,$22,$26,$24,$05;			00
	dc.b		$1C,$73,$72,$33,$32,$94,$99,$94,$99,$08,$0A,$08,$0A,$00,$05,$00
	dc.b		$05,$3F,$4F,$3F,$4F,$1E,$80,$19,$00;			01
	dc.b		$07,$34,$74,$32,$71,$1F,$1F,$1F,$1F,$0A,$0A,$05,$03,$00,$00,$00
	dc.b		$00,$3F,$3F,$2F,$2F,$8A,$8A,$80,$80;			Voice 02
	dc.b		$1C,$73,$72,$33,$32,$94,$99,$94,$99,$08,$0A,$08,$0A,$00,$05,$00
	dc.b		$05,$3F,$4F,$3F,$4F,$1E,$80,$19,$80;			Voice 03
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$80;			Voice 04
	even
