; =============================================================================================
; Project Name:		WackyWorkbenchPast
; Created:		20th October 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

WackyWorkbenchPast_Header:
	smpsHeaderVoice	WackyWorkbenchPast_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$07

	smpsHeaderDAC	WackyWorkbenchPast_DAC
	smpsHeaderFM	WackyWorkbenchPast_FM1,	smpsPitch01hi,	$09
	smpsHeaderFM	WackyWorkbenchPast_FM2,	smpsPitch00,	$0C
	smpsHeaderFM	WackyWorkbenchPast_FM3,	smpsPitch00,	$0E
	smpsHeaderFM	WackyWorkbenchPast_FM4,	smpsPitch00,	$0E
	smpsHeaderFM	WackyWorkbenchPast_FM5,	smpsPitch00,	$0E
	smpsHeaderPSG	WackyWorkbenchPast_PSG1,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	WackyWorkbenchPast_PSG2,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	WackyWorkbenchPast_PSG3,	smpsPitch00,	$00,	$00

; FM1 Data
WackyWorkbenchPast_FM1:
	smpsFMvoice	$00
WackyWorkbenchPast_Loop01:
	dc.b		nC2,	$0C,	$0C,	nRst,	nC2,	nRst,	$24,	nG1
	dc.b		$06,	nBb1
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop01
WackyWorkbenchPast_Loop02:
	dc.b		nC2,	nRst,	nEb2,	nRst,	nF2,	nRst,	nFs2,	nC2
	dc.b		$0C,	$06,	nEb2,	nRst,	nF2,	nRst,	nFs2,	nRst
	smpsLoop	$00,	$18,	WackyWorkbenchPast_Loop02
WackyWorkbenchPast_Loop03:
	dc.b		nC2,	$0C,	nG1,	nBb1,	nB1
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop03
WackyWorkbenchPast_Loop04:
	dc.b		nC2,	$06,	nRst,	nG1,	nRst,	nBb1,	nRst,	nB1
	dc.b		nRst
	smpsLoop	$00,	$03,	WackyWorkbenchPast_Loop04
	dc.b		nC2,	nRst,	nG1,	nRst,	nBb1,	nRst,	nB1,	nB1
	smpsLoop	$01,	$02,	WackyWorkbenchPast_Loop04
WackyWorkbenchPast_Loop05:
	dc.b		nBb1,	nRst,	nF1,	nRst,	nAb1,	nRst,	nA1,	nRst
	smpsLoop	$00,	$03,	WackyWorkbenchPast_Loop05
	dc.b		nBb1,	nRst,	nF1,	nRst,	nAb1,	nRst,	nA1,	nA1
	smpsLoop	$01,	$04,	WackyWorkbenchPast_Loop05
WackyWorkbenchPast_Loop06:
	dc.b		nC2,	nRst,	nEb2,	nRst,	nF2,	nRst,	nFs2,	nC2
	dc.b		nRst,	nEb2,	nRst,	nEb2,	nF2,	nRst,	nFs2,	nRst
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop06
	smpsJump	WackyWorkbenchPast_FM1

; FM2 Data
WackyWorkbenchPast_FM2:
	smpsFMvoice	$02
WackyWorkbenchPast_Loop07:
	dc.b		nC5,	$06,	nBb4,	nG4
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop07
WackyWorkbenchPast_Loop08:
	dc.b		nC5,	nRst,	nBb4,	nRst
	smpsLoop	$00,	$05,	WackyWorkbenchPast_Loop08
	smpsLoop	$01,	$03,	WackyWorkbenchPast_Loop07
WackyWorkbenchPast_Loop09:
	dc.b		nC5,	nBb4,	nG4
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop09
WackyWorkbenchPast_Loop0A:
	dc.b		nC5,	nRst,	nBb4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop0A
	dc.b		nC5,	nRst,	nBb4,	nRst,	$12
WackyWorkbenchPast_Loop0B:
	dc.b		nC5,	$06,	nRst,	nC5,	nRst,	nC5,	nRst,	nBb4
	dc.b		nC5,	nRst,	nEb5,	nRst,	$24,	nC5,	$06,	nRst
	dc.b		nC5,	nRst,	nC5,	nRst,	nBb4,	nC5,	nRst,	nFs4
	dc.b		$0C,	nF4,	$06,	nEb4,	nC4,	nRst,	$0C
	smpsLoop	$00,	$03,	WackyWorkbenchPast_Loop0B
	dc.b		nC5,	$06,	nRst,	nC5,	nRst,	nC5,	nRst,	nBb4
	dc.b		nC5,	nRst,	nEb5,	nRst,	$24,	nC5,	$06,	nRst
	dc.b		nC5,	nRst,	nC5,	nRst,	nBb4,	nC5,	nRst,	nFs4
	dc.b		$0C,	nF4,	$06,	nEb4,	nC4
WackyWorkbenchPast_Loop0C:
	dc.b		nG4,	nRst
	smpsLoop	$00,	$05,	WackyWorkbenchPast_Loop0C
	dc.b		nG4,	nG4,	nBb4,	nG4,	nBb4
WackyWorkbenchPast_Loop0D:
	dc.b		nRst,	nC5
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop0D
	dc.b		nRst
	smpsLoop	$01,	$03,	WackyWorkbenchPast_Loop0C
WackyWorkbenchPast_Loop0E:
	dc.b		nG4,	nRst
	smpsLoop	$00,	$05,	WackyWorkbenchPast_Loop0E
	dc.b		nG4,	nG4,	nBb4,	nG4,	nBb4
WackyWorkbenchPast_Loop0F:
	dc.b		nRst,	nC5
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop0F
	dc.b		nRst,	$12
WackyWorkbenchPast_Loop10:
	dc.b		nC5,	$06,	nRst,	nC5,	nRst,	nC5,	nRst,	nBb4
	dc.b		nC5,	nRst,	nEb5,	nRst,	$24,	nC5,	$06,	nRst
	dc.b		nC5,	nRst,	nC5,	nRst,	nBb4,	nC5,	nRst,	nFs4
	dc.b		$0C,	nF4,	$06,	nEb4,	nC4,	nRst,	$0C
	smpsLoop	$00,	$03,	WackyWorkbenchPast_Loop10
	dc.b		nC5,	$06,	nRst,	nC5,	nRst,	nC5,	nRst,	nBb4
	dc.b		nC5,	nRst,	nEb5,	nRst,	$24,	nC5,	$06,	nRst
	dc.b		nC5,	nRst,	nC5,	nRst,	nBb4,	nC5,	nRst,	nFs4
	dc.b		$0C,	nF4,	$06,	nEb4,	nC4
WackyWorkbenchPast_Loop12:
	dc.b		nBb4,	nC5,	nA4
WackyWorkbenchPast_Loop11:
	dc.b		nRst,	nG4
	smpsLoop	$00,	$06,	WackyWorkbenchPast_Loop11
	dc.b		nG4
	smpsLoop	$01,	$08,	WackyWorkbenchPast_Loop12
WackyWorkbenchPast_Loop14:
	dc.b		nAb4,	nBb4,	nG4
WackyWorkbenchPast_Loop13:
	dc.b		nRst,	nF4
	smpsLoop	$00,	$06,	WackyWorkbenchPast_Loop13
	dc.b		nF4
	smpsLoop	$01,	$08,	WackyWorkbenchPast_Loop14
WackyWorkbenchPast_Loop15:
	dc.b		nC4,	nRst,	nEb4,	nRst,	nF4,	nRst,	nFs4,	nC4
	dc.b		nRst,	nEb4,	nRst,	nEb4,	nF4,	nRst,	nFs4,	nRst
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop15
	smpsJump	WackyWorkbenchPast_FM2

; FM3 Data
WackyWorkbenchPast_FM3:
	smpsFMvoice	$01
WackyWorkbenchPast_Loop16:
	dc.b		nG4,	$0C,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop16
WackyWorkbenchPast_Loop17:
	dc.b		nF4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop17
WackyWorkbenchPast_Loop18:
	dc.b		nAb4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop18
WackyWorkbenchPast_Loop19:
	dc.b		nBb4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop19
	smpsLoop	$01,	$07,	WackyWorkbenchPast_Loop16
WackyWorkbenchPast_Loop1A:
	dc.b		nG4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop1A
WackyWorkbenchPast_Loop1B:
	dc.b		nF4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop1B
WackyWorkbenchPast_Loop1C:
	dc.b		nAb4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop1C
	dc.b		nBb4,	nRst,	nBb4,	nRst,	nBb4,	nRst,	nBb4
WackyWorkbenchPast_Loop1D:
	dc.b		nRst,	$7F
	smpsLoop	$00,	$0C,	WackyWorkbenchPast_Loop1D
	dc.b		$18
WackyWorkbenchPast_Loop1E:
	dc.b		nG4,	$0C,	nRst,	$18,	nG4,	$0C,	nRst,	$30
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop1E
	smpsJump	WackyWorkbenchPast_FM3

; FM4 Data
WackyWorkbenchPast_FM4:
	smpsPan		panLeft,	$00
WackyWorkbenchPast_Jump01:
	smpsFMvoice	$01
WackyWorkbenchPast_Loop1F:
	dc.b		nEb4,	$0C,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop1F
WackyWorkbenchPast_Loop20:
	dc.b		nD4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop20
WackyWorkbenchPast_Loop21:
	dc.b		nEb4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop21
WackyWorkbenchPast_Loop22:
	dc.b		nF4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop22
	smpsLoop	$01,	$07,	WackyWorkbenchPast_Loop1F
WackyWorkbenchPast_Loop23:
	dc.b		nEb4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop23
WackyWorkbenchPast_Loop24:
	dc.b		nD4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop24
WackyWorkbenchPast_Loop25:
	dc.b		nEb4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop25
	dc.b		nF4,	nRst,	nF4,	nRst,	nF4,	nRst,	nF4,	nRst
	dc.b		$18
	smpsFMvoice	$03
WackyWorkbenchPast_Loop26:
	dc.b		nG4,	$06,	nRst,	nG4,	nRst,	$12,	nC5,	$06
	dc.b		nRst,	$0C,	nC5,	$06,	nRst,	$0C,	nC5,	$06
	dc.b		nRst,	$12,	nG4,	$06,	nRst,	nG4,	nRst,	$12
	dc.b		nC6,	$06,	nRst,	nC6,	nRst,	nBb5,	nRst,	$1E
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop26
WackyWorkbenchPast_Loop27:
	dc.b		nF4,	$06,	nRst,	nF4,	nRst,	$12,	nBb4,	$06
	dc.b		nRst,	$0C,	nBb4,	$06,	nRst,	$0C,	nBb4,	$06
	dc.b		nRst,	$12,	nF4,	$06,	nRst,	nF4,	nRst,	$12
	dc.b		nAb5,	$06,	nRst,	nAb5,	nRst,	nG5,	nRst,	$1E
	smpsLoop	$00,	$03,	WackyWorkbenchPast_Loop27
	dc.b		nF4,	$06,	nRst,	nF4,	nRst,	$12,	nBb4,	$06
	dc.b		nRst,	$0C,	nBb4,	$06,	nRst,	$0C,	nBb4,	$06
	dc.b		nRst,	$12,	nF4,	$06,	nRst,	nF4,	nRst,	$12
	dc.b		nAb5,	$06,	nRst,	nAb5,	nRst,	nG5,	nRst,	$12
	smpsFMvoice	$01
WackyWorkbenchPast_Loop28:
	dc.b		nEb4,	$0C,	nRst,	$18,	nEb4,	$0C,	nRst,	$30
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop28
	smpsJump	WackyWorkbenchPast_Jump01

; FM5 Data
WackyWorkbenchPast_FM5:
	smpsPan		panRight,	$00
WackyWorkbenchPast_Jump02:
	smpsFMvoice	$01
WackyWorkbenchPast_Loop29:
	dc.b		nC4,	$0C,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop29
WackyWorkbenchPast_Loop2A:
	dc.b		nBb3,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop2A
WackyWorkbenchPast_Loop2B:
	dc.b		nC4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop2B
WackyWorkbenchPast_Loop2C:
	dc.b		nD4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop2C
	smpsLoop	$01,	$07,	WackyWorkbenchPast_Loop29
WackyWorkbenchPast_Loop2D:
	dc.b		nC4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop2D
WackyWorkbenchPast_Loop2E:
	dc.b		nBb3,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop2E
WackyWorkbenchPast_Loop2F:
	dc.b		nC4,	nRst
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop2F
	dc.b		nD4,	nRst,	nD4,	nRst,	nD4,	nRst,	nD4,	nRst
	dc.b		$18
	smpsFMvoice	$03
WackyWorkbenchPast_Loop30:
	dc.b		nD5,	$06,	nRst,	nD5,	nRst,	$12,	nE5,	$06
	dc.b		nRst,	$0C,	nE5,	$06,	nRst,	$0C,	nE5,	$06
	dc.b		nRst,	$12,	nD5,	$06,	nRst,	nD5,	nRst,	$12
	dc.b		nE6,	$06,	nRst,	nE6,	nRst,	nD6,	nRst,	$1E
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop30
WackyWorkbenchPast_Loop31:
	dc.b		nC5,	$06,	nRst,	nC5,	nRst,	$12,	nD5,	$06
	dc.b		nRst,	$0C,	nD5,	$06,	nRst,	$0C,	nD5,	$06
	dc.b		nRst,	$12,	nC5,	$06,	nRst,	nC5,	nRst,	$12
	dc.b		nD6,	$06,	nRst,	nD6,	nRst,	nC6,	nRst,	$1E
	smpsLoop	$00,	$03,	WackyWorkbenchPast_Loop31
	dc.b		nC5,	$06,	nRst,	nC5,	nRst,	$12,	nD5,	$06
	dc.b		nRst,	$0C,	nD5,	$06,	nRst,	$0C,	nD5,	$06
	dc.b		nRst,	$12,	nC5,	$06,	nRst,	nC5,	nRst,	$12
	dc.b		nD6,	$06,	nRst,	nD6,	nRst,	nC6,	nRst,	$12
	smpsFMvoice	$01
WackyWorkbenchPast_Loop32:
	dc.b		nC4,	$0C,	nRst,	$18,	nC4,	$0C,	nRst,	$30
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop32
	smpsJump	WackyWorkbenchPast_Jump02

; PSG1 Data
WackyWorkbenchPast_PSG1:
	dc.b		nRst,	$7F
	smpsLoop	$00,	$18,	WackyWorkbenchPast_PSG1
	dc.b		$24
WackyWorkbenchPast_Jump03:
	smpsPSGvoice	$03
WackyWorkbenchPast_Loop33:
	dc.b		nG4,	$06,	nRst,	nG4,	nRst,	$12,	nC5,	$06
	dc.b		nRst,	$0C,	nC5,	$06,	nRst,	$0C,	nC5,	$06
	dc.b		nRst,	$12
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop33
WackyWorkbenchPast_Loop34:
	dc.b		nF4,	$06,	nRst,	nF4,	nRst,	$12,	nBb4,	$06
	dc.b		nRst,	$0C,	nBb4,	$06,	nRst,	$0C,	nBb4,	$06
	dc.b		nRst,	$12,	nF4,	$06,	nRst,	nF4,	nRst,	$12
	dc.b		nBb4,	$06,	nRst,	nBb4,	nRst,	nBb4,	nRst,	$1E
	smpsLoop	$00,	$03,	WackyWorkbenchPast_Loop34
	dc.b		nF4,	$06,	nRst,	nF4,	nRst,	$12,	nBb4,	$06
	dc.b		nRst,	$0C,	nBb4,	$06,	nRst,	$0C,	nBb4,	$06
	dc.b		nRst,	$12,	nF4,	$06,	nRst,	nF4,	nRst,	$12
	dc.b		nBb4,	$06,	nRst,	nBb4,	nRst,	nBb4
WackyWorkbenchPast_Loop35:
	dc.b		nRst,	$7F
	smpsLoop	$00,	$1E,	WackyWorkbenchPast_Loop35
	dc.b		$3C
	smpsJump	WackyWorkbenchPast_Jump03

; PSG2 Data
WackyWorkbenchPast_PSG2:
	dc.b		nRst,	$7F
	smpsLoop	$00,	$07,	WackyWorkbenchPast_PSG2
	dc.b		$47
WackyWorkbenchPast_Jump04:
	smpsPSGvoice	$01
	dc.b		nBb5,	$06,	nC6,	nEb6,	nC6,	nFs6,	$0C,	nC6
	dc.b		$06,	nF6,	$0C,	nC6,	$06,	nEb6,	$0C,	nC6
	dc.b		nRst,	nBb5,	$06,	nC6,	nEb6,	nC6,	nFs6,	$0C
	dc.b		nC6,	$06,	nF6,	$0C,	nC6,	$06,	nEb6,	$0C
	dc.b		nC6,	nRst,	$7F,	$4D
WackyWorkbenchPast_Loop36:
	dc.b		nBb5,	$06,	nC6,	nEb6,	nC6,	nFs6,	$0C,	nC6
	dc.b		$06,	nF6,	$0C,	nC6,	$06,	nEb6,	$0C,	nC6
	dc.b		nRst
	smpsLoop	$00,	$02,	WackyWorkbenchPast_Loop36
WackyWorkbenchPast_Loop37:
	dc.b		nF6,	$06,	nEb6,	nC6,	nBb5,	nC6,	nEb6
	smpsLoop	$00,	$02,	WackyWorkbenchPast_Loop37
	dc.b		nF6,	nEb6,	nC6,	nBb5
	smpsLoop	$01,	$08,	WackyWorkbenchPast_Loop37
	dc.b		nRst,	$7F,	$41,	nBb5,	$06,	nC6,	nEb6,	nC6
	dc.b		nFs6,	$0C,	nC6,	$06,	nF6,	$0C,	nC6,	$06
	dc.b		nEb6,	$0C,	nC6,	nRst,	nBb5,	$06,	nC6,	nEb6
	dc.b		nC6,	nFs6,	$0C,	nC6,	$06,	nF6,	$0C,	nC6
	dc.b		$06,	nEb6,	$0C,	nC6,	nRst,	$7F,	$4D,	nBb5
	dc.b		$06,	nC6,	nEb6,	nC6,	nFs6,	$0C,	nC6,	$06
	dc.b		nF6,	$0C,	nC6,	$06,	nEb6,	$0C,	nC6,	nRst
	dc.b		nBb5,	$06,	nC6,	nEb6,	nC6,	nFs6,	$0C,	nC6
	dc.b		$06,	nF6,	$0C,	nC6,	$06,	nEb6,	$0C,	nC6
	dc.b		nRst,	$18
	smpsPSGvoice	$03
WackyWorkbenchPast_Loop38:
	dc.b		nD5,	$06,	nRst,	nD5,	nRst,	$12,	nE5,	$06
	dc.b		nRst,	$0C,	nE5,	$06,	nRst,	$0C,	nE5,	$06
	dc.b		nRst,	$12
	smpsLoop	$00,	$08,	WackyWorkbenchPast_Loop38
WackyWorkbenchPast_Loop39:
	dc.b		nC5,	$06,	nRst,	nC5,	nRst,	$12,	nD5,	$06
	dc.b		nRst,	$0C,	nD5,	$06,	nRst,	$0C,	nD5,	$06
	dc.b		nRst,	$12,	nC5,	$06,	nRst,	nC5,	nRst,	$12
	dc.b		nD5,	$06,	nRst,	nD5,	nRst,	nD5,	nRst,	$1E
	smpsLoop	$00,	$03,	WackyWorkbenchPast_Loop39
	dc.b		nC5,	$06,	nRst,	nC5,	nRst,	$12,	nD5,	$06
	dc.b		nRst,	$0C,	nD5,	$06,	nRst,	$0C,	nD5,	$06
	dc.b		nRst,	$12,	nC5,	$06,	nRst,	nC5,	nRst,	$12
	dc.b		nD5,	$06,	nRst,	nD5,	nRst,	nD5,	nRst,	$12
	smpsPSGvoice	$01
WackyWorkbenchPast_Loop3A:
	dc.b		nF6,	$06,	nEb6,	nC6,	nBb5,	nC6,	nEb6
	smpsLoop	$00,	$02,	WackyWorkbenchPast_Loop3A
	dc.b		nF6,	nEb6,	nC6,	nBb5
	smpsLoop	$01,	$07,	WackyWorkbenchPast_Loop3A
	dc.b		nC6,	nRst,	nEb6,	nRst,	nF6,	nRst,	nFs6,	nC6
	dc.b		nRst,	nEb6,	nRst,	nEb6,	nF6,	nRst,	nFs6
WackyWorkbenchPast_Loop3B:
	dc.b		nRst,	$7F
	smpsLoop	$00,	$07,	WackyWorkbenchPast_Loop3B
	dc.b		$4D
	smpsJump	WackyWorkbenchPast_Jump04

; DAC Data
WackyWorkbenchPast_DAC:
	dc.b		dKick,	$0C,	dVLowTimpani,	dSnareS1,	dSnareS1,	dKick,	dVLowTimpani,	$06
	dc.b		$06,	dSnareS1,	$0C,	$0C
	smpsLoop	$00,	$07,	WackyWorkbenchPast_DAC
	dc.b		dKick,	dVLowTimpani,	dSnareS1,	dSnareS1,	dHiTimpaniS1,	$03,	$03,	$03
	dc.b		$03,	dMidTimpaniS1,	$06,	$06,	dSnareS1,	dSnareS1,	dVLowTimpani
WackyWorkbenchPast_Loop3C:
	dc.b		dSnareS1
WackyWorkbenchPast_Loop3D:
	dc.b		dKick,	$0C,	dVLowTimpani,	dSnareS1,	dSnareS1,	dKick,	dVLowTimpani,	$06
	dc.b		$06,	dSnareS1,	$0C
	smpsLoop	$00,	$07,	WackyWorkbenchPast_Loop3C
	dc.b		$0C,	dKick,	dVLowTimpani,	dSnareS1,	dSnareS1,	dHiTimpaniS1,	$06,	$06
	dc.b		dMidTimpaniS1,	dMidTimpaniS1,	dLowTimpaniS1,	dLowTimpaniS1,	dVLowTimpani,	dVLowTimpani
	smpsLoop	$01,	$02,	WackyWorkbenchPast_Loop3D
WackyWorkbenchPast_Loop3E:
	dc.b		dKick,	$0C,	dVLowTimpani,	dSnareS1,	dSnareS1,	dKick,	dVLowTimpani,	$06
	dc.b		$06,	dSnareS1,	$0C,	$0C
	smpsLoop	$00,	$07,	WackyWorkbenchPast_Loop3E
	dc.b		dKick,	dVLowTimpani,	dSnareS1,	dSnareS1,	dHiTimpaniS1,	$06,	$06,	dMidTimpaniS1
	dc.b		dMidTimpaniS1,	dSnareS1,	dSnareS1,	dVLowTimpani
WackyWorkbenchPast_Loop3F:
	dc.b		dSnareS1,	dMidTimpaniS1,	$0C,	dVLowTimpani,	dLowTimpaniS1,	dMidTimpaniS1,	dKick,	dVLowTimpani
	dc.b		$06,	$06,	dLowTimpaniS1,	$0C
	smpsLoop	$00,	$0F,	WackyWorkbenchPast_Loop3F
	dc.b		dSnareS1,	dMidTimpaniS1,	dVLowTimpani,	dLowTimpaniS1,	dMidTimpaniS1,	dHiTimpaniS1,	$06,	$06
	dc.b		dMidTimpaniS1,	dMidTimpaniS1,	dSnareS1,	dSnareS1,	dVLowTimpani
WackyWorkbenchPast_Loop40:
	dc.b		dSnareS1,	dMidTimpaniS1,	$0C,	dVLowTimpani,	dLowTimpaniS1,	dMidTimpaniS1,	dKick,	dVLowTimpani
	dc.b		$06,	$06,	dLowTimpaniS1,	$0C
	smpsLoop	$00,	$07,	WackyWorkbenchPast_Loop40
	dc.b		dSnareS1,	dMidTimpaniS1,	dVLowTimpani,	dLowTimpaniS1,	dMidTimpaniS1,	dHiTimpaniS1,	$06,	$06
	dc.b		dMidTimpaniS1,	dMidTimpaniS1,	dSnareS1,	dSnareS1,	dVLowTimpani,	dSnareS1
	smpsJump	WackyWorkbenchPast_DAC

; PSG3 Data
WackyWorkbenchPast_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02
WackyWorkbenchPast_Loop43:
	smpsPSGvoice	$01
	dc.b		nEb5,	$06
	smpsPSGvoice	$02
	dc.b		nA5,	nA5
WackyWorkbenchPast_Loop41:
	dc.b		nA5
	smpsPSGvoice	$01
	dc.b		nEb5
	smpsPSGvoice	$02
	dc.b		nA5
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$03,	WackyWorkbenchPast_Loop41
	dc.b		$06
	smpsPSGvoice	$01
	dc.b		nEb5
	smpsPSGvoice	$02
	dc.b		nA5,	nA5,	nA5
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$06,	$06
WackyWorkbenchPast_Loop42:
	dc.b		$06
	smpsPSGvoice	$01
	dc.b		nEb5
	smpsPSGvoice	$02
	dc.b		nA5
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	WackyWorkbenchPast_Loop42
	dc.b		$06
	smpsLoop	$01,	$02,	WackyWorkbenchPast_Loop43
WackyWorkbenchPast_Loop44:
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	dc.b		$06
	smpsPSGvoice	$01
	dc.b		nEb5
	smpsPSGvoice	$02
	dc.b		nA5
	smpsLoop	$00,	$10,	WackyWorkbenchPast_Loop44
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
WackyWorkbenchPast_Loop48:
	dc.b		$06,	$06
WackyWorkbenchPast_Loop45:
	dc.b		$06
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$07,	WackyWorkbenchPast_Loop45
WackyWorkbenchPast_Loop46:
	dc.b		$06,	$06,	$06
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	WackyWorkbenchPast_Loop46
WackyWorkbenchPast_Loop47:
	dc.b		$06
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$04,	WackyWorkbenchPast_Loop47
	smpsLoop	$01,	$17,	WackyWorkbenchPast_Loop48
	dc.b		$06,	$06
WackyWorkbenchPast_Loop49:
	dc.b		$06
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$07,	WackyWorkbenchPast_Loop49
WackyWorkbenchPast_Loop4A:
	dc.b		$06,	$06,	$06
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$02,	WackyWorkbenchPast_Loop4A
WackyWorkbenchPast_Loop4B:
	dc.b		$06
	smpsPSGvoice	$01
	dc.b		$06
	smpsPSGvoice	$02
	smpsLoop	$00,	$03,	WackyWorkbenchPast_Loop4B
	dc.b		$06
	smpsJump	WackyWorkbenchPast_PSG3

WackyWorkbenchPast_Voices:
	dc.b		$2C,$01,$71,$70,$00,$DE,$DF,$DC,$DC,$06,$07,$04,$05,$08,$08,$01
	dc.b		$08,$B6,$B6,$56,$B6,$19,$7F,$18,$7F;			Voice 00
	dc.b		$07,$34,$74,$32,$71,$1F,$1F,$1F,$1F,$0A,$0A,$05,$03,$00,$00,$00
	dc.b		$00,$3F,$3F,$2F,$2F,$8A,$8A,$8A,$8A;			Voice 01
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 02
	dc.b		$3E,$38,$01,$7A,$34,$59,$D9,$5F,$9C,$0F,$04,$0F,$0A,$02,$02,$05
	dc.b		$05,$AF,$AF,$66,$66,$28,$80,$A3,$77;			Voice 03
	even
