; =============================================================================================
; Project Name:		SuperSonicRacing_SonicR
; Created:		12nd January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SuperSonicRacing_SonicR_Header:
	smpsHeaderVoice	SuperSonicRacing_SonicR_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$04

	smpsHeaderDAC	SuperSonicRacing_SonicR_DAC
	smpsHeaderFM	SuperSonicRacing_SonicR_FM1,	smpsPitch00,	$0C
	smpsHeaderFM	SuperSonicRacing_SonicR_FM2,	smpsPitch00,	$08
	smpsHeaderFM	SuperSonicRacing_SonicR_FM3,	smpsPitch00,	$12
	smpsHeaderFM	SuperSonicRacing_SonicR_FM4,	smpsPitch00,	$1A
	smpsHeaderFM	SuperSonicRacing_SonicR_FM5,	smpsPitch00,	$26
	smpsHeaderPSG	SuperSonicRacing_SonicR_PSG1,	smpsPitch00,	$04,	$00
	smpsHeaderPSG	SuperSonicRacing_SonicR_PSG2,	smpsPitch00,	$0B,	$00
	smpsHeaderPSG	SuperSonicRacing_SonicR_PSG3,	smpsPitch00,	$02,	$00
	dc.b		$53,	$75,	$70,	$65,	$72,	$20,	$53,	$6F
	dc.b		$6E,	$69,	$63,	$20,	$52,	$61,	$63,	$69
	dc.b		$6E,	$67,	$20,	$28,	$53,	$6F,	$6E,	$69
	dc.b		$63,	$20,	$52,	$29,	$00,	$00,	$00,	$00

; DAC Data
SuperSonicRacing_SonicR_DAC:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$20,	dKick
SuperSonicRacing_SonicR_Loop01:
	dc.b		dKick,	$08,	$18,	$20
	smpsLoop	$00,	$07,	SuperSonicRacing_SonicR_Loop01
	dc.b		$08,	$18,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	$0C,	dKick,	$04,	$10,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	$08,	dKick,	dKick
	dc.b		$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		$0C,	dKick,	$04,	$10,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	$08,	$08,	dSnare,	dKick,	dKick,	$10
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$0C
	dc.b		dKick,	$04,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	$08,	dKick,	dKick,	$10,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	$08,	$08,	dSnare,	$0C
	dc.b		dKick,	$04,	$10,	dSnare,	dKick,	dSnare,	dKick,	$08
	dc.b		dSnare,	dSnare,	$0C,	$04,	$08,	$08,	$04,	$04
	dc.b		$04,	$04
SuperSonicRacing_SonicR_Jump01:
	dc.b		dKick,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	$0C,	dKick,	$04,	$10,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	$08,	dKick,	dKick,	$10
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$0C
	dc.b		dKick,	$04,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		$0C,	$04,	dKick,	$10,	dSnare,	$04,	dHiTimpaniS1,	dMidTimpaniS1
	dc.b		dVLowTimpani,	dKick,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	$0C,	dKick,	$04,	$10,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	$08,	dKick,	dKick
	dc.b		$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		$0C,	dKick,	$04,	$10,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	$0C,	$04,	dKick,	$10,	dSnare
SuperSonicRacing_SonicR_Loop04:
	dc.b		$08
SuperSonicRacing_SonicR_Loop02:
	dc.b		dKick,	dKick,	$10
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop02
	dc.b		$0C,	$04
SuperSonicRacing_SonicR_Loop03:
	dc.b		$10
	smpsLoop	$00,	$07,	SuperSonicRacing_SonicR_Loop03
	smpsLoop	$01,	$03,	SuperSonicRacing_SonicR_Loop04
	dc.b		$08,	$08
SuperSonicRacing_SonicR_Loop05:
	dc.b		$10
	smpsLoop	$00,	$07,	SuperSonicRacing_SonicR_Loop05
	dc.b		$0C,	$04,	$10,	$10,	$10,	$08,	$08,	$08
	dc.b		dSnare,	dSnare,	$0C,	$04,	$08,	$08,	$04,	$04
	dc.b		$04,	$04,	dKick,	$10,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	$0C,	dKick,	$04,	$10,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$08,	dKick
	dc.b		dKick,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	$0C,	dKick,	$04,	$10,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	$0C,	$04,	dKick,	$10,	dSnare,	$04
	dc.b		dHiTimpaniS1,	dMidTimpaniS1,	dVLowTimpani,	dKick,	$10,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	$0C,	dKick,	$04,	$10
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$08
	dc.b		dKick,	dKick,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	$0C,	dKick,	$04,	$10,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	$0C,	$04,	dSnare,	$08
	dc.b		dVLowTimpani
SuperSonicRacing_SonicR_Loop06:
	dc.b		dKick,	$60,	$18,	$08
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop06
	dc.b		$60,	$08,	$10,	$08,	$7F,	nRst,	$71,	dKick
	dc.b		$08,	$08,	$78,	$08,	$68,	$10,	$08,	$10
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$0C
	dc.b		dKick,	$04,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	$08,	$08,	dSnare,	dKick,	dKick,	$10,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	$08,	$08,	dSnare
	dc.b		$0C,	dKick,	$04,	$10,	dSnare,	dKick,	dSnare,	dKick
	dc.b		$08,	dSnare,	dSnare,	$0C,	$04,	dHiTimpaniS1,	dMidTimpaniS1,	dLowTimpaniS1
	dc.b		dVLowTimpani,	dSnare,	dVLowTimpani,	dSnare,	dSnare
	smpsJump	SuperSonicRacing_SonicR_Jump01

; FM1 Data
SuperSonicRacing_SonicR_FM1:
	smpsPan		panCentre,	$00
	smpsFMvoice	$00
	dc.b		nRst,	$20,	nBb1,	$08
SuperSonicRacing_SonicR_Loop07:
	dc.b		smpsNoAttack,	nEb2,	$01,	smpsNoAttack,	nF2,	$07,	smpsNoAttack,	nAb2
	dc.b		$01,	smpsNoAttack,	nBb2,	$07,	smpsNoAttack,	nEb2,	$01,	smpsNoAttack
	dc.b		nBb1,	$07,	smpsNoAttack,	nEb2,	$01,	smpsNoAttack,	nF2,	$07
	dc.b		smpsNoAttack,	nCs2,	$01,	smpsNoAttack,	nBb1,	$07,	smpsNoAttack,	nEb2
	dc.b		$01,	smpsNoAttack,	nF2,	$07,	smpsNoAttack,	nEb2,	$08,	smpsNoAttack
	dc.b		nC2,	$01,	smpsNoAttack,	nBb1,	$07
	smpsLoop	$00,	$07,	SuperSonicRacing_SonicR_Loop07
	dc.b		smpsNoAttack,	nEb2,	$01,	smpsNoAttack,	nF2,	$07,	smpsNoAttack,	nAb2
	dc.b		$01,	smpsNoAttack,	nBb2,	$07,	smpsNoAttack,	nEb2,	$01,	smpsNoAttack
	dc.b		nBb1,	$07,	smpsNoAttack,	nEb2,	$01,	smpsNoAttack,	nF2,	$07
	dc.b		smpsNoAttack,	nCs2,	$01,	smpsNoAttack,	nBb1,	$07,	smpsNoAttack,	nEb2
	dc.b		$01,	smpsNoAttack,	nF2,	$07,	smpsNoAttack,	nEb2,	$08
	smpsFMvoice	$05
SuperSonicRacing_SonicR_Loop08:
	dc.b		nBb2,	nBb3
	smpsLoop	$00,	$3C,	SuperSonicRacing_SonicR_Loop08
	dc.b		nBb2,	$40
SuperSonicRacing_SonicR_Loop0B:
	dc.b		nAb2,	$08,	nAb3,	nAb2,	nAb3,	nG2,	nG3,	nG2
	dc.b		nG3
SuperSonicRacing_SonicR_Loop09:
	dc.b		nF2,	nF3
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop09
	dc.b		nAb2,	nAb3,	nAb2,	nAb3,	nG2,	nG3,	nG2,	nG3
SuperSonicRacing_SonicR_Loop0A:
	dc.b		nC3,	nC4
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop0A
	smpsLoop	$01,	$04,	SuperSonicRacing_SonicR_Loop0B
SuperSonicRacing_SonicR_Loop0C:
	dc.b		nC2,	nC3
	smpsLoop	$00,	$3C,	SuperSonicRacing_SonicR_Loop0C
	dc.b		nC2,	nRst,	$38
SuperSonicRacing_SonicR_Loop0F:
	dc.b		nAb2,	$08,	nAb3,	nAb2,	nAb3,	nG2,	nG3,	nG2
	dc.b		nG3
SuperSonicRacing_SonicR_Loop0D:
	dc.b		nF2,	nF3
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop0D
	dc.b		nAb2,	nAb3,	nAb2,	nAb3,	nG2,	nG3,	nG2,	nG3
SuperSonicRacing_SonicR_Loop0E:
	dc.b		nC3,	nC4
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop0E
	smpsLoop	$01,	$04,	SuperSonicRacing_SonicR_Loop0F
	smpsAlterVol	$04
	dc.b		nF2,	$38
	smpsAlterVol	$FF
	dc.b		nG2,	$48
	smpsAlterVol	$01
	dc.b		nAb2,	$38,	$48,	nA2,	$38,	nAb2,	$48,	nA2
	dc.b		$38,	$40,	nRst,	$08
	smpsAlterVol	$FC
SuperSonicRacing_SonicR_Loop10:
	dc.b		nA2,	$20,	nAb2,	$18,	nFs2,	$38,	nAb2,	$10
	dc.b		nA2,	$20,	nAb2,	$18,	nCs3,	$48
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop10
	dc.b		nA2,	$20,	nAb2,	$18,	nFs2,	$38,	nAb2,	$10
	dc.b		nA2,	$20,	nAb2,	$18,	nCs3,	$28,	nRst,	$08
	dc.b		nCs4,	nC3,	nC4
	smpsJump	SuperSonicRacing_SonicR_Loop0B

; FM2 Data
SuperSonicRacing_SonicR_FM2:
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	smpsAlterVol	$06
	dc.b		nAb3,	$02,	nBb3,	nCs4,	nEb4,	nF4,	nAb4,	nBb4
	dc.b		nCs5,	nEb5,	nF5,	nAb5,	nBb5,	nCs6,	nEb6,	nF6
	dc.b		nAb6,	nBb6,	$08,	nRst
	smpsFMvoice	$02
SuperSonicRacing_SonicR_Loop11:
	dc.b		nG1,	$20
	smpsLoop	$00,	$0D,	SuperSonicRacing_SonicR_Loop11
	dc.b		$0C
	smpsAlterVol	$09
	dc.b		$04
	smpsFMvoice	$04
	smpsAlterVol	$FF
	dc.b		$04,	$04,	$04,	$04
	smpsAlterVol	$FD
	dc.b		$04,	$04,	$04,	$04
	smpsAlterVol	$FE
	dc.b		$04,	$04,	$04,	$04
	smpsAlterVol	$FD
	dc.b		$04,	$04,	$04,	$04
	smpsPan		panRight,	$00
	smpsFMvoice	$06
	smpsAlterVol	$01
SuperSonicRacing_SonicR_Loop12:
	dc.b		nF5,	$02,	nRst,	nF5,	nRst,	nF5,	$08
	smpsLoop	$00,	$08,	SuperSonicRacing_SonicR_Loop12
SuperSonicRacing_SonicR_Loop13:
	dc.b		nEb5,	$02,	nRst,	nEb5,	nRst,	nEb5,	$08
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop13
SuperSonicRacing_SonicR_Loop14:
	dc.b		nCs5,	$02,	nRst,	nCs5,	nRst,	nCs5,	$08
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop14
SuperSonicRacing_SonicR_Loop15:
	dc.b		nF5,	$02,	nRst,	nF5,	nRst,	nF5,	$08
	smpsLoop	$00,	$08,	SuperSonicRacing_SonicR_Loop15
SuperSonicRacing_SonicR_Loop16:
	dc.b		nFs5,	$02,	nRst,	nFs5,	nRst,	nFs5,	$08
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop16
SuperSonicRacing_SonicR_Loop17:
	dc.b		nAb5,	$02,	nRst,	nAb5,	nRst,	nAb5,	$08
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop17
	smpsLoop	$01,	$02,	SuperSonicRacing_SonicR_Loop12
SuperSonicRacing_SonicR_Jump02:
	smpsFMvoice	$07
	smpsPan		panCentre,	$00
	smpsAlterVol	$FF
SuperSonicRacing_SonicR_Loop18:
	dc.b		nC4,	$20,	nD4,	$18,	nE4,	$28,	nC4,	$10
	dc.b		nD4,	nEb4,	$20,	nF4,	$18,	nE4,	$48
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop18
	smpsFMvoice	$01
	smpsPan		panCentre,	$00
	smpsAlterVol	$06
SuperSonicRacing_SonicR_Loop19:
	dc.b		nC4,	$08,	nG4,	nC5,	nC4,	nG4,	nC4,	nG4
	dc.b		nF4
	smpsLoop	$00,	$0F,	SuperSonicRacing_SonicR_Loop19
	dc.b		nC4,	nRst,	$38
	smpsFMvoice	$07
	smpsPan		panCentre,	$00
	smpsAlterVol	$FA
SuperSonicRacing_SonicR_Loop1A:
	dc.b		nC4,	$20,	nD4,	$18,	nE4,	$28,	nC4,	$10
	dc.b		nD4,	nEb4,	$20,	nF4,	$18,	nE4,	$48
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop1A
	dc.b		nRst,	$20
	smpsFMvoice	$0A
	smpsModSet	$24,	$01,	$03,	$05
	dc.b		nEb5,	$10,	nC5,	$08,	nF5,	$48,	nRst,	$10
	dc.b		nC5,	nEb5,	nF5,	nG5,	nAb5,	nG5,	nF5,	$1C
	dc.b		nRst,	$14,	nE5,	$10,	nCs5,	$08,	nFs5,	$48
	dc.b		nRst,	$10,	nCs5,	nE5,	nFs5,	nAb5,	nA5,	nAb5
	dc.b		nFs5
	smpsModSet	$34,	$01,	$03,	$05
	dc.b		$02,	smpsNoAttack,	nG5,	smpsNoAttack,	nAb5,	$7C
	smpsAlterVol	$FB
SuperSonicRacing_SonicR_Loop1B:
	dc.b		smpsNoAttack,	$08
	smpsAlterVol	$01
	smpsLoop	$00,	$0D,	SuperSonicRacing_SonicR_Loop1B
	dc.b		smpsNoAttack,	$08,	$F4
SuperSonicRacing_SonicR_Loop1C:
	dc.b		nRst,	$70
	smpsLoop	$00,	$07,	SuperSonicRacing_SonicR_Loop1C
	smpsAlterVol	$F9
	smpsJump	SuperSonicRacing_SonicR_Jump02

; FM3 Data
SuperSonicRacing_SonicR_FM3:
	smpsPan		panRight,	$00
	smpsFMvoice	$01
	dc.b		nRst,	$10,	nAb3,	$02,	nBb3,	nCs4,	nEb4,	nF4
	dc.b		nAb4,	nBb4,	nCs5,	nEb5,	nF5,	nAb5,	nBb5,	nCs6
	dc.b		nEb6,	nF6,	nAb6,	nBb6,	$08,	nRst
	smpsAlterVol	$18
	dc.b		nAb3,	$02,	nBb3,	nCs4,	nEb4,	nF4,	nAb4,	nBb4
	dc.b		nCs5,	nEb5,	nF5,	nAb5,	nBb5,	nCs6,	nEb6,	nF6
	dc.b		nAb6,	nBb6,	$08,	nRst,	$7F,	$7F,	$7F,	$3B
	smpsFMvoice	$06
	smpsPan		panLeft,	$00
	smpsAlterVol	$E3
SuperSonicRacing_SonicR_Loop1D:
	dc.b		nBb3,	$02,	nRst,	nBb3,	nRst,	nBb3,	$08
	smpsLoop	$00,	$08,	SuperSonicRacing_SonicR_Loop1D
SuperSonicRacing_SonicR_Loop1E:
	dc.b		nAb3,	$02,	nRst,	nAb3,	nRst,	nAb3,	$08
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop1E
SuperSonicRacing_SonicR_Loop1F:
	dc.b		nFs3,	$02,	nRst,	nFs3,	nRst,	nFs3,	$08
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop1F
SuperSonicRacing_SonicR_Loop20:
	dc.b		nBb3,	$02,	nRst,	nBb3,	nRst,	nBb3,	$08
	smpsLoop	$00,	$0C,	SuperSonicRacing_SonicR_Loop20
SuperSonicRacing_SonicR_Loop21:
	dc.b		nC4,	$02,	nRst,	nC4,	nRst,	nC4,	$08
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop21
	smpsLoop	$01,	$02,	SuperSonicRacing_SonicR_Loop1D
	smpsFMvoice	$08
	smpsPan		panLeft,	$00
SuperSonicRacing_SonicR_Jump03:
	smpsAlterVol	$FD
SuperSonicRacing_SonicR_Loop22:
	dc.b		nG4,	$10,	$10,	nF4,	nF4,	$08,	nE4,	$10
	dc.b		$18,	$10,	$10,	nG4,	nG4,	nF4,	nF4,	$08
	dc.b		nG4,	$38,	$10
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop22
SuperSonicRacing_SonicR_Loop23:
	dc.b		nRst,	$40
	smpsLoop	$00,	$10,	SuperSonicRacing_SonicR_Loop23
	smpsFMvoice	$08
	smpsPan		panLeft,	$00
SuperSonicRacing_SonicR_Loop24:
	dc.b		nG4,	$10,	$10,	nF4,	nF4,	$08,	nE4,	$10
	dc.b		$18,	$10,	$10,	nG4,	nG4,	nF4,	nF4,	$08
	dc.b		nG4,	$38,	$10
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop24
	dc.b		nEb4,	$38,	nF4,	$48,	nG4,	$38,	$48,	nAb4
	dc.b		$38,	nFs4,	$48,	nAb4,	$38,	$48
SuperSonicRacing_SonicR_Loop25:
	dc.b		$10,	$10,	nFs4,	nFs4,	$08,	nF4,	$10,	$18
	dc.b		$10,	$10,	nAb4,	nAb4,	nFs4,	nFs4,	$08,	nAb4
	dc.b		$38,	$10
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop25
	dc.b		$10,	$10,	nFs4,	nFs4,	$08,	nF4,	$10,	$18
	dc.b		$10,	$10,	nAb4,	nAb4,	nFs4,	nFs4,	$08,	nAb4
	dc.b		$38,	nG4,	$10
	smpsAlterVol	$03
	smpsJump	SuperSonicRacing_SonicR_Jump03

; FM4 Data
SuperSonicRacing_SonicR_FM4:
	smpsPan		panLeft,	$00
	smpsFMvoice	$01
	dc.b		nRst,	$20,	nAb3,	$02,	nBb3,	nCs4,	nEb4,	nF4
	dc.b		nAb4,	nBb4,	nCs5,	nEb5,	nF5,	nAb5,	nBb5,	nCs6
	dc.b		nEb6,	nF6,	nAb6,	nBb6,	$08,	nRst
	smpsAlterVol	$18
	dc.b		nAb3,	$02,	nBb3,	nCs4,	nEb4,	nF4,	nAb4,	nBb4
	dc.b		nCs5,	nEb5,	nF5,	nAb5,	nBb5,	nCs6,	nEb6,	nF6
	dc.b		nAb6,	nBb6,	$08,	nRst,	$7F,	$29
	smpsFMvoice	$03
	smpsPan		panLeft,	$00
	smpsAlterVol	$D8
SuperSonicRacing_SonicR_Loop26:
	dc.b		nF4,	$08
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop26
	dc.b		nEb4
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nCs4,	$08
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nBb3
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nCs4
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nBb3,	$04,	nRst,	nEb4,	$08
SuperSonicRacing_SonicR_Loop27:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nF4
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop27
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nEb4
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nCs4,	$08
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nBb3
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nCs4
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nBb3,	$04,	nRst,	nEb4,	$08
	smpsAlterVol	$10
	dc.b		$08,	nRst
SuperSonicRacing_SonicR_Loop28:
	smpsAlterVol	$F0
	dc.b		nF4,	$04,	nRst,	nF4,	$08
	smpsAlterVol	$10
	dc.b		$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop28
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop29:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nF4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop29
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop2A:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nEb4,	$04,	nRst,	nEb4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop2A
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop2B:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nCs4,	$04,	nRst,	nCs4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop2B
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop2C:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nF4,	$04,	nRst,	nF4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop2C
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop2D:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nF4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop2D
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop2E:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nFs4,	$04,	nRst,	nFs4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop2E
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop2F:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nAb4,	$04,	nRst,	nAb4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop2F
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop30:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nF4,	$04,	nRst,	nF4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop30
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop31:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nF4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop31
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop32:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nEb4,	$04,	nRst,	nEb4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop32
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop33:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nCs4,	$04,	nRst,	nCs4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop33
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop34:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nF4,	$04,	nRst,	nF4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop34
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop35:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nF4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop35
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop36:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nFs4,	$04,	nRst,	nFs4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop36
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop37:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nAb4,	$04,	nRst,	nAb4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop37
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
	smpsFMvoice	$08
SuperSonicRacing_SonicR_Jump04:
	smpsPan		panRight,	$00
SuperSonicRacing_SonicR_Loop38:
	dc.b		nEb4,	$10,	$10,	nD4,	nD4,	$08,	nC4,	$10
	dc.b		$18,	$10,	nD4,	nEb4,	nEb4,	nD4,	nD4,	$08
	dc.b		nE4,	$38,	$10
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop38
	smpsFMvoice	$09
	smpsAlterVol	$06
SuperSonicRacing_SonicR_Loop39:
	dc.b		nC4,	$08,	nG4,	$04,	nRst,	nG4,	$08,	nC4
	dc.b		nBb4,	nC4,	nG4,	nC4
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop39
	dc.b		nC4,	nF4,	$04,	nRst,	nF4,	$08,	nC4,	nBb4
	dc.b		nC4,	nF4,	nC4,	nC4,	nEb4,	$04,	nRst,	nEb4
	dc.b		$08,	nC4,	nBb4,	nC4,	nEb4
SuperSonicRacing_SonicR_Loop3A:
	dc.b		nC4,	nC4,	nG4,	$04,	nRst,	nG4,	$08,	nC4
	dc.b		nBb4,	nC4,	nG4
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop3A
	dc.b		nC4,	nC4,	nAb4,	$04,	nRst,	nAb4,	$08,	nC4
	dc.b		nBb4,	nC4,	nAb4,	nC4,	nC4,	nF4,	$04,	nRst
	dc.b		nF4,	$08,	nC4,	nBb4,	nC4,	nF4
SuperSonicRacing_SonicR_Loop3B:
	dc.b		nC4,	nC4,	nG4,	$04,	nRst,	nG4,	$08,	nC4
	dc.b		nBb4,	nC4,	nG4
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop3B
	dc.b		nC4,	nC4,	nF4,	$04,	nRst,	nF4,	$08,	nC4
	dc.b		nBb4,	nC4,	nF4,	nC4,	nC4,	nEb4,	$04,	nRst
	dc.b		nEb4,	$08,	nC4,	nBb4,	nC4,	nEb4
SuperSonicRacing_SonicR_Loop3C:
	dc.b		nC4,	nC4,	nG4,	$04,	nRst,	nG4,	$08,	nC4
	dc.b		nBb4,	nC4,	nG4
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop3C
	dc.b		nC4,	nC4,	nAb4,	$04,	nRst,	nAb4,	$08,	nC4
	dc.b		nBb4,	nC4,	nAb4,	nC4,	nC4,	nRst,	$38
	smpsFMvoice	$08
	smpsPan		panRight,	$00
	smpsAlterVol	$FA
SuperSonicRacing_SonicR_Loop3D:
	dc.b		nEb4,	$10,	$10,	nD4,	nD4,	$08,	nC4,	$10
	dc.b		$18,	$10,	nD4,	nEb4,	nEb4,	nD4,	nD4,	$08
	dc.b		nE4,	$38,	$10
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop3D
	dc.b		nAb3,	$38,	nBb3,	$48,	nC4,	$38,	$48,	nCs4
	dc.b		$38,	nB3,	$48,	nCs4,	$38,	$48
SuperSonicRacing_SonicR_Loop3E:
	dc.b		nE4,	$10,	$10,	nEb4,	nEb4,	$08,	nCs4,	$10
	dc.b		$18,	$10,	nEb4,	nE4,	nE4,	nEb4,	nEb4,	$08
	dc.b		nF4,	$38,	$10
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop3E
	dc.b		nE4,	nE4,	nEb4,	nEb4,	$08,	nCs4,	$10,	$18
	dc.b		$10,	nEb4,	nE4,	nE4,	nEb4,	nEb4,	$08,	nF4
	dc.b		$38,	nE4,	$10
	smpsJump	SuperSonicRacing_SonicR_Jump04

; FM5 Data
SuperSonicRacing_SonicR_FM5:
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	dc.b		nRst,	$30,	nAb3,	$02,	nBb3,	nCs4,	nEb4,	nF4
	dc.b		nAb4,	nBb4,	nCs5,	nEb5,	nF5,	nAb5,	nBb5,	nCs6
	dc.b		nEb6,	nF6,	nAb6,	nBb6,	$08,	nRst,	$7F,	$49
	smpsFMvoice	$03
	smpsPan		panRight,	$00
	smpsAlterVol	$E4
SuperSonicRacing_SonicR_Loop3F:
	dc.b		nBb3,	$08
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop3F
	dc.b		$04,	nRst
SuperSonicRacing_SonicR_Loop40:
	dc.b		nBb3,	$08
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop40
	dc.b		$04,	nRst
SuperSonicRacing_SonicR_Loop41:
	dc.b		nBb3,	$08
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop41
	dc.b		$04,	nRst
SuperSonicRacing_SonicR_Loop42:
	dc.b		nBb3,	$08
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop42
	dc.b		$04,	nRst,	nBb3,	$08
	smpsAlterVol	$10
	dc.b		$08,	nRst
SuperSonicRacing_SonicR_Loop43:
	smpsAlterVol	$F0
	dc.b		nBb3,	$04,	nRst,	nBb3,	$08
	smpsAlterVol	$10
	dc.b		$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop43
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop44:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop44
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop45:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop45
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop46:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop46
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop47:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop47
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop48:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop48
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop49:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop49
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop4A:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nC4,	$04,	nRst,	nC4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop4A
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop4B:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nBb3,	$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop4B
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop4C:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop4C
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop4D:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop4D
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop4E:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop4E
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop4F:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop4F
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop50:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop50
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop51:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$04,	nRst,	nBb3,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop51
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		$08
SuperSonicRacing_SonicR_Loop52:
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$F0
	dc.b		nC4,	$04,	nRst,	nC4,	$08
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop52
	smpsAlterVol	$10
	dc.b		$08
	smpsAlterVol	$00
	dc.b		$08
	smpsFMvoice	$08
	smpsPan		panCentre,	$00
SuperSonicRacing_SonicR_Jump05:
	smpsAlterVol	$F4
SuperSonicRacing_SonicR_Loop53:
	dc.b		nC4,	$10,	$10,	nBb3,	nBb3,	$08,	nA3,	$10
	dc.b		$18,	$10,	$10,	nC4,	nC4,	nBb3,	nBb3,	$08
	dc.b		nC4,	$38,	$10
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop53
	smpsFMvoice	$09
	smpsAlterVol	$06
SuperSonicRacing_SonicR_Loop54:
	dc.b		nG3,	$08,	nC4,	$04,	nRst,	nC4,	$08,	nG3
	dc.b		nEb4,	nG3,	nC4,	nG3
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop54
	dc.b		nG3,	nBb3,	$04,	nRst,	nBb3,	$08,	nG3,	nEb4
	dc.b		nG3,	nBb3
SuperSonicRacing_SonicR_Loop55:
	dc.b		nG3,	nG3,	nC4,	$04,	nRst,	nC4,	$08,	nG3
	dc.b		nEb4,	nG3,	nC4
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop55
	dc.b		nG3,	nG3,	nC4,	$04,	nRst,	nC4,	$08,	nG3
	dc.b		nF4
SuperSonicRacing_SonicR_Loop56:
	dc.b		nG3,	nC4,	nG3,	nG3,	nC4,	$04,	nRst,	nC4
	dc.b		$08,	nG3,	nEb4
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop56
	dc.b		nG3,	nC4,	nG3,	nG3,	nBb3,	$04,	nRst,	nBb3
	dc.b		$08,	nG3,	nEb4,	nG3,	nBb3
SuperSonicRacing_SonicR_Loop57:
	dc.b		nG3,	nG3,	nC4,	$04,	nRst,	nC4,	$08,	nG3
	dc.b		nEb4,	nG3,	nC4
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop57
	dc.b		nG3,	nG3,	nRst,	$38
	smpsFMvoice	$08
	smpsPan		panCentre,	$00
	smpsAlterVol	$FA
SuperSonicRacing_SonicR_Loop58:
	dc.b		nC4,	$10,	$10,	nBb3,	nBb3,	$08,	nA3,	$10
	dc.b		$18,	$10,	$10,	nC4,	nC4,	nBb3,	nBb3,	$08
	dc.b		nC4,	$38,	$10
	smpsLoop	$00,	$04,	SuperSonicRacing_SonicR_Loop58
	dc.b		$38,	nD4,	$48,	nEb4,	$38,	$48,	nE4,	$38
	dc.b		nEb4,	$48,	nE4,	$38,	$48
SuperSonicRacing_SonicR_Loop59:
	dc.b		nCs4,	$10,	$10,	nB3,	nB3,	$08,	nBb3,	$10
	dc.b		$18,	$10,	$10,	nCs4,	nCs4,	nB3,	nB3,	$08
	dc.b		nCs4,	$38,	$10
	smpsLoop	$00,	$03,	SuperSonicRacing_SonicR_Loop59
	dc.b		$10,	$10,	nB3,	nB3,	$08,	nBb3,	$10,	$18
	dc.b		$10,	$10,	nCs4,	nCs4,	nB3,	nB3,	$08,	nCs4
	dc.b		$38,	nC4,	$10
	smpsAlterVol	$0C
	smpsJump	SuperSonicRacing_SonicR_Jump05

; PSG1 Data
SuperSonicRacing_SonicR_PSG1:
	smpsPSGvoice	$05
	dc.b		nAb0,	$02,	nBb0,	nCs1,	nEb1,	nF1,	nAb1,	nBb1
	dc.b		nCs2,	nEb2,	nF2,	nAb2,	nBb2,	nCs3,	nEb3,	nF3
	dc.b		nAb3,	nBb3,	$08
SuperSonicRacing_SonicR_Loop5A:
	dc.b		nRst,	$58
	smpsLoop	$00,	$11,	SuperSonicRacing_SonicR_Loop5A
SuperSonicRacing_SonicR_Jump06:
	smpsSetVol	$FC
	dc.b		nC2,	$08,	nD2,	$04,	nRst,	nEb2,	$08,	nF2
	dc.b		$04,	nRst
	smpsModSet	$10,	$01,	$01,	$05
	dc.b		nG2,	$08,	nRst,	nG2,	nRst,	nF2,	$10,	$04
	dc.b		nRst,	nE2,	$08,	nRst,	nC2,	$10,	nRst,	$08
	dc.b		nC2,	nD2,	$04,	nRst,	nEb2,	$08,	nF2,	$04
	dc.b		nRst,	nG2,	$08,	nRst,	nG2,	nRst,	nF2,	$0E
	dc.b		nRst,	$02,	nF2,	$08,	nG2,	$20,	nRst,	$10
	dc.b		nC2,	$04,	nRst,	nEb2,	$08,	nRst,	nG2,	nRst
	dc.b		nG2,	nRst,	nF2,	$10,	$04,	nRst,	nE2,	$08
	dc.b		nRst,	nC2,	$18,	nRst,	$08,	nEb2,	nF2,	nRst
	dc.b		nG2,	nRst,	$10,	nG2,	$04,	nRst,	nF2,	nRst
	dc.b		nF2,	$08,	nRst,	nG2,	$28,	nRst,	$08,	nC2
	dc.b		nEb2,	nRst,	nG2,	nRst,	nG2,	nRst,	nF2,	nRst
	dc.b		nF2,	nE2,	nRst,	nC2,	$10,	nRst,	$08,	nC2
	dc.b		nD2,	nEb2,	nF2,	nG2,	nRst,	nG2,	nRst,	nF2
	dc.b		nRst,	nF2,	nG2,	$20,	nRst,	$08,	nC2,	nD2
	dc.b		nEb2,	nF2,	$04,	nRst,	nG2,	$08,	nRst,	nG2
	dc.b		nRst,	nF2,	$10,	$04,	nRst,	nE2,	$08,	nRst
	dc.b		nC2,	$18,	nRst,	$08,	nEb2,	nF2,	nRst,	nG2
	dc.b		nRst,	$10,	nG2,	$08,	nF2,	$04,	nRst,	nF2
	dc.b		$08,	nRst,	nG2,	$38,	nRst,	$28
SuperSonicRacing_SonicR_Loop5B:
	dc.b		nB1,	$02,	smpsNoAttack,	nC2,	$0A,	nRst,	$04,	nC2
	dc.b		nRst,	nC2,	nRst,	nC2,	nRst,	$24,	nC2,	$08
	dc.b		$04,	nRst,	nC2,	$08,	$04,	nRst,	$24,	nBb1
	dc.b		$08,	nC2,	$04,	nRst,	nC2,	nRst,	nC2,	nRst
	dc.b		$5C
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop5B
	dc.b		nFs2,	$0C,	nRst,	$04,	nF2
SuperSonicRacing_SonicR_Loop5C:
	dc.b		nRst,	nF2,	$08,	nEb2,	$04,	nRst,	$24,	nFs2
	dc.b		$08,	nF2,	$04
	smpsLoop	$00,	$02,	SuperSonicRacing_SonicR_Loop5C
	dc.b		nRst,	nF2,	$08,	nEb2,	$04,	nRst,	$5C,	nB1
	dc.b		$02,	smpsNoAttack,	nC2,	$0A,	nRst,	$04,	nC2,	nRst
	dc.b		nC2,	nRst,	nC2,	nRst,	$44,	nBb2,	$08,	$04
	dc.b		nRst,	nBb2,	$06,	nA2,	$01,	nBb2,	nC3,	$20
	smpsPSGvoice	$06
	dc.b		$01,	smpsNoAttack,	nBb2,	smpsNoAttack,	nG2,	smpsNoAttack,	nE2,	smpsNoAttack
	dc.b		nC2,	smpsNoAttack,	nBb1,	smpsNoAttack,	nG1,	smpsNoAttack,	nE1
	smpsPSGvoice	$05
	dc.b		nC1,	$08,	nRst,	$18,	nC2,	$08,	nD2,	$04
	dc.b		nRst,	nEb2,	$08,	nF2,	$04,	nRst,	nG2,	$08
	dc.b		nRst,	nG2,	nRst,	nF2,	$10,	$04,	nRst,	nE2
	dc.b		$08,	nRst,	nC2,	$10,	nRst,	$08,	nC2,	nD2
	dc.b		$04,	nRst,	nEb2,	$08,	nF2,	$04,	nRst,	nG2
	dc.b		$08,	nRst,	nG2,	nRst,	nF2,	$0E,	nRst,	$02
	dc.b		nF2,	$08,	nG2,	$20,	nRst,	$10,	nC2,	$04
	dc.b		nRst,	nEb2,	$08,	nRst,	nG2,	nRst,	nG2,	nRst
	dc.b		nF2,	$10,	$04,	nRst,	nE2,	$08,	nRst,	nC2
	dc.b		$18,	nRst,	$08,	nEb2,	nF2,	nRst,	nG2,	nRst
	dc.b		$10,	nG2,	$04,	nRst,	nF2,	nRst,	nF2,	$08
	dc.b		nRst,	nG2,	$28,	nRst,	$08,	nC2,	nEb2,	nRst
	dc.b		nG2,	nRst,	nG2,	nRst,	nF2,	nRst,	nF2,	nE2
	dc.b		nRst,	nC2,	$10,	nRst,	$08,	nC2,	nD2,	nEb2
	dc.b		nF2,	nG2,	nRst,	nG2,	nRst,	nF2,	nRst,	nF2
	dc.b		nG2,	$20,	nRst,	$08,	nC2,	nD2,	nEb2,	nF2
	dc.b		$04,	nRst,	nG2,	$08,	nRst,	nG2,	nRst,	nF2
	dc.b		$10,	$04,	nRst,	nE2,	$08,	nRst,	nC2,	$18
	dc.b		nRst,	$08,	nEb2,	nF2,	nRst,	nG2,	nRst,	$10
	dc.b		nG2,	$08,	nF2,	$04,	nRst,	nF2,	$08,	nRst
	dc.b		nG2,	$38,	nRst,	$58,	$58,	$58,	$58,	$58
	dc.b		$58,	nAb1,	$38,	nCs2,	$08,	nRst,	nAb1,	$28
	dc.b		nFs1,	$10,	nE1,	$20,	nEb1,	$18,	nF1,	$20
	dc.b		nAb1,	$08,	nCs2,	$10,	nEb2,	nE2,	$08,	nCs2
	dc.b		nAb1,	$10,	nFs1,	$08,	nB1,	nEb2,	nCs2,	$18
	dc.b		nAb1,	$08,	nF1,	$10,	nCs1,	$08,	nEb1,	$10
	dc.b		nE1,	$08,	nEb1,	nCs1,	$10,	nFs1,	$08,	nE1
	dc.b		nFs1,	nAb1,	$28,	nCs2,	$08,	nAb1,	nCs2,	$01
	dc.b		smpsNoAttack,	nEb2,	$0F,	nCs2,	$10,	nFs2,	$01,	smpsNoAttack
	dc.b		nAb2,	$0F,	nFs2,	$08,	nEb2,	nB1,	nAb1,	$18
	dc.b		nB1,	$01,	smpsNoAttack,	nCs2,	$27,	nEb2,	$08,	nE2
	dc.b		$10,	nEb2,	$08,	nE2,	nFs2,	$18,	nAb2,	$28
	dc.b		nC3,	$01,	smpsNoAttack,	nCs3,	$07,	smpsNoAttack,	nAb2,	$08
	dc.b		nCs3,	$01,	smpsNoAttack,	nEb3,	$0E,	nRst,	$01,	nE3
	dc.b		$04,	nEb3,	nCs3,	nAb2,	nFs2,	$08,	nAb2,	nFs2
	dc.b		nAb2,	nFs2,	nF2,	$18,	nAb2,	$08,	nCs3,	$20
	dc.b		nCs2,	$08,	nE2,	nCs2,	nAb1,	nE1,	nEb1,	nB1
	dc.b		nEb2,	nCs2,	$20,	nRst,	$08
	smpsSetVol	$04
	smpsJump	SuperSonicRacing_SonicR_Jump06

; PSG2 Data
SuperSonicRacing_SonicR_PSG2:
	smpsPSGvoice	$05
	dc.b		nRst,	$10,	nAb0,	$02,	nBb0,	nCs1,	nEb1,	nF1
	dc.b		nAb1,	nBb1,	nCs2,	nEb2,	nF2,	nAb2,	nBb2,	nCs3
	dc.b		nEb3,	nF3,	nAb3,	nBb3,	$08
SuperSonicRacing_SonicR_Loop5D:
	dc.b		nRst,	$7C
	smpsLoop	$00,	$0C,	SuperSonicRacing_SonicR_Loop5D
SuperSonicRacing_SonicR_Jump07:
	smpsSetVol	$F8
	dc.b		nC2,	$08,	nD2,	$04,	nRst,	nEb2,	$08,	nF2
	dc.b		$04,	nRst
	smpsModSet	$10,	$01,	$01,	$05
	dc.b		nG2,	$08,	nRst,	nG2,	nRst,	nF2,	$10,	$04
	dc.b		nRst,	nE2,	$08,	nRst,	nC2,	$10,	nRst,	$08
	dc.b		nC2,	nD2,	$04,	nRst,	nEb2,	$08,	nF2,	$04
	dc.b		nRst,	nG2,	$08,	nRst,	nG2,	nRst,	nF2,	$0E
	dc.b		nRst,	$02,	nF2,	$08,	nG2,	$20,	nRst,	$10
	dc.b		nC2,	$04,	nRst,	nEb2,	$08,	nRst,	nG2,	nRst
	dc.b		nG2,	nRst,	nF2,	$10,	$04,	nRst,	nE2,	$08
	dc.b		nRst,	nC2,	$18,	nRst,	$08,	nEb2,	nF2,	nRst
	dc.b		nG2,	nRst,	$10,	nG2,	$04,	nRst,	nF2,	nRst
	dc.b		nF2,	$08,	nRst,	nG2,	$28,	nRst,	$08,	nC2
	dc.b		nEb2,	nRst,	nG2,	nRst,	nG2,	nRst,	nF2,	nRst
	dc.b		nF2,	nE2,	nRst,	nC2,	$10,	nRst,	$08,	nC2
	dc.b		nD2,	$04,	nRst,	nEb2,	nRst,	nF2,	nRst,	nG2
	dc.b		$08,	nRst,	nG2,	nRst,	nF2,	nRst,	nF2,	nG2
	dc.b		$20,	nRst,	$08,	nC2,	nD2,	nEb2,	nF2,	$04
	dc.b		nRst,	nG2,	$08,	nRst,	nG2,	nRst,	nF2,	$10
	dc.b		$04,	nRst,	nE2,	$08,	nRst,	nC2,	$18,	nRst
	dc.b		$08,	nEb2,	nF2,	nRst,	nG2,	nRst,	$10,	nG2
	dc.b		$08,	nF2,	$04,	nRst,	nF2,	$08,	nRst,	nG2
	dc.b		$38
SuperSonicRacing_SonicR_Loop5E:
	dc.b		nRst,	$5D
	smpsLoop	$00,	$09,	SuperSonicRacing_SonicR_Loop5E
	dc.b		$61,	nA2,	$01,	nBb2,	nC3,	$20
	smpsPSGvoice	$06
	dc.b		$01,	smpsNoAttack,	nBb2,	smpsNoAttack,	nG2,	smpsNoAttack,	nE2,	smpsNoAttack
	dc.b		nC2,	smpsNoAttack,	nBb1,	smpsNoAttack,	nG1,	smpsNoAttack,	nE1
	smpsPSGvoice	$05
	dc.b		nC1,	$08,	nRst,	$18,	nC2,	$08,	nD2,	$04
	dc.b		nRst,	nEb2,	$08,	nF2,	$04,	nRst,	nG2,	$08
	dc.b		nRst,	nG2,	nRst,	nF2,	$10,	$04,	nRst,	nE2
	dc.b		$08,	nRst,	nC2,	$10,	nRst,	$08,	nC2,	nD2
	dc.b		$04,	nRst,	nEb2,	$08,	nF2,	$04,	nRst,	nG2
	dc.b		$08,	nRst,	nG2,	nRst,	nF2,	$0E,	nRst,	$02
	dc.b		nF2,	$08,	nG2,	$20,	nRst,	$10,	nC2,	$04
	dc.b		nRst,	nEb2,	$08,	nRst,	nG2,	nRst,	nG2,	nRst
	dc.b		nF2,	$10,	$04,	nRst,	nE2,	$08,	nRst,	nC2
	dc.b		$18,	nRst,	$08,	nEb2,	nF2,	nRst,	nG2,	nRst
	dc.b		$10,	nG2,	$04,	nRst,	nF2,	nRst,	nF2,	$08
	dc.b		nRst,	nG2,	$28,	nRst,	$08,	nC2,	nEb2,	nRst
	dc.b		nG2,	nRst,	nG2,	nRst,	nF2,	nRst,	nF2,	nE2
	dc.b		nRst,	nC2,	$10,	nRst,	$08,	nC2,	nD2,	$04
	dc.b		nRst,	nEb2,	nRst,	nF2,	nRst,	nG2,	$08,	nRst
	dc.b		nG2,	nRst,	nF2,	nRst,	nF2,	nG2,	$20,	nRst
	dc.b		$08,	nC2,	nD2,	nEb2,	nF2,	$04,	nRst,	nG2
	dc.b		$08,	nRst,	nG2,	nRst,	nF2,	$10,	$04,	nRst
	dc.b		nE2,	$08,	nRst,	nC2,	$18,	nRst,	$08,	nEb2
	dc.b		nF2,	nRst,	nG2,	nRst,	$10,	nG2,	$08,	nF2
	dc.b		$04,	nRst,	nF2,	$08
SuperSonicRacing_SonicR_Loop5F:
	dc.b		nRst,	$49
	smpsLoop	$00,	$08,	SuperSonicRacing_SonicR_Loop5F
	dc.b		nAb0,	$38,	nCs1,	$08,	nRst,	nAb0,	$28,	nFs0
	dc.b		$10,	nE0,	$20,	nEb0,	$18,	nF0,	$20,	nAb0
	dc.b		$08,	nCs1,	$10,	nEb1,	nE1,	$08,	nCs1,	nAb0
	dc.b		$10,	nFs0,	$08,	nB0,	nEb1,	nCs1,	$18,	nAb0
	dc.b		$08,	nF0,	$10,	nCs0,	$08,	nEb0,	$10,	nE0
	dc.b		$08,	nEb0,	nCs0,	$10,	nFs0,	$08,	nE0,	nFs0
	dc.b		nAb0,	$28,	nCs1,	$08,	nAb0,	nCs1,	$01,	smpsNoAttack
	dc.b		nEb1,	$0F,	nCs1,	$10,	nFs1,	$01,	smpsNoAttack,	nAb1
	dc.b		$0F,	nFs1,	$08,	nEb1,	nB0,	nAb0,	$18,	nB0
	dc.b		$01,	smpsNoAttack,	nCs1,	$27,	nEb1,	$08,	nE1,	$10
	dc.b		nEb1,	$08,	nE1,	nFs1,	$18,	nAb1,	$28,	nC2
	dc.b		$01,	smpsNoAttack,	nCs2,	$07,	smpsNoAttack,	nAb1,	$08,	nCs2
	dc.b		$01,	smpsNoAttack,	nEb2,	$0E,	nRst,	$01,	nE2,	$04
	dc.b		nEb2,	nCs2,	nAb1,	nFs1,	$08,	nAb1,	nFs1,	nAb1
	dc.b		nFs1,	nF1,	$18,	nAb1,	$08,	nCs2,	$20,	nCs1
	dc.b		$08,	nE1,	nCs1,	nAb0,	nE0,	nEb0,	nB0,	nEb1
	dc.b		nCs1,	$20,	nRst,	$10
	smpsSetVol	$08
	smpsJump	SuperSonicRacing_SonicR_Jump07

; PSG3 Data
SuperSonicRacing_SonicR_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$20
SuperSonicRacing_SonicR_Loop60:
	smpsPSGvoice	$02
	dc.b		nA5,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$08
	smpsLoop	$00,	$10,	SuperSonicRacing_SonicR_Loop60
	smpsPSGvoice	$02
SuperSonicRacing_SonicR_Loop61:
	dc.b		$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04
	smpsLoop	$00,	$10,	SuperSonicRacing_SonicR_Loop61
	smpsPSGvoice	$01
	smpsSetVol	$FE
	dc.b		$0C
	smpsPSGvoice	$02
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop62:
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	smpsLoop	$00,	$1F,	SuperSonicRacing_SonicR_Loop62
	dc.b		$04
	smpsPSGvoice	$01
	smpsSetVol	$FE
	dc.b		$0C
	smpsPSGvoice	$02
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop63:
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	smpsLoop	$00,	$1B,	SuperSonicRacing_SonicR_Loop63
	dc.b		$24
	smpsPSGvoice	$01
	smpsSetVol	$FE
	dc.b		nAb5,	$10,	$10
SuperSonicRacing_SonicR_Jump08:
	dc.b		nA5,	$10
	smpsPSGvoice	$02
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop64:
	dc.b		$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04
	smpsLoop	$00,	$1F,	SuperSonicRacing_SonicR_Loop64
	smpsPSGvoice	$01
	smpsSetVol	$FE
	dc.b		$0C
	smpsPSGvoice	$02
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop65:
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	smpsLoop	$00,	$1F,	SuperSonicRacing_SonicR_Loop65
	dc.b		$04
	smpsPSGvoice	$01
	smpsSetVol	$FE
	dc.b		$0C
	smpsPSGvoice	$02
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop66:
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	smpsLoop	$00,	$1F,	SuperSonicRacing_SonicR_Loop66
	dc.b		$04
	smpsPSGvoice	$01
	smpsSetVol	$FE
	dc.b		$0C
	smpsPSGvoice	$02
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop67:
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	smpsLoop	$00,	$1B,	SuperSonicRacing_SonicR_Loop67
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$08
	smpsPSGvoice	$02
	dc.b		$04,	$04
	smpsPSGvoice	$01
	dc.b		$08
	smpsSetVol	$FE
	dc.b		nAb5,	$10,	$10,	nA5
	smpsPSGvoice	$02
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop68:
	dc.b		$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	dc.b		$04
	smpsLoop	$00,	$1F,	SuperSonicRacing_SonicR_Loop68
	smpsPSGvoice	$01
	smpsSetVol	$FE
	dc.b		$0C
	smpsPSGvoice	$02
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop69:
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	smpsLoop	$00,	$1F,	SuperSonicRacing_SonicR_Loop69
	dc.b		$04
	smpsPSGvoice	$01
	smpsSetVol	$FE
	dc.b		$10
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop6A:
	dc.b		$10
	smpsPSGvoice	$02
	smpsSetVol	$05
	dc.b		$10
	smpsPSGvoice	$01
	smpsSetVol	$FB
	smpsLoop	$00,	$0F,	SuperSonicRacing_SonicR_Loop6A
	dc.b		$10
	smpsSetVol	$FE
	dc.b		$10
	smpsPSGvoice	$02
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop6B:
	dc.b		$08
	smpsPSGvoice	$01
	dc.b		$08
	smpsPSGvoice	$02
	smpsLoop	$00,	$0E,	SuperSonicRacing_SonicR_Loop6B
	dc.b		$08
	smpsPSGvoice	$01
	dc.b		$08
	smpsSetVol	$FE
	dc.b		$0C
	smpsPSGvoice	$02
	smpsSetVol	$02
SuperSonicRacing_SonicR_Loop6C:
	dc.b		$04,	$04,	$04
	smpsPSGvoice	$01
	dc.b		$04
	smpsPSGvoice	$02
	smpsLoop	$00,	$2D,	SuperSonicRacing_SonicR_Loop6C
	dc.b		$04
	smpsPSGvoice	$01
	smpsSetVol	$FE
	dc.b		nAb5,	$10,	$10
	smpsJump	SuperSonicRacing_SonicR_Jump08

SuperSonicRacing_SonicR_Voices:
	dc.b		$24,$71,$31,$72,$32,$17,$0F,$17,$0F,$00,$0B,$00,$0B,$00,$00,$00
	dc.b		$00,$07,$08,$07,$08,$18,$04,$10,$08;			Voice 00
	dc.b		$05,$01,$00,$01,$02,$1F,$1F,$1F,$1F,$07,$02,$02,$07,$00,$00,$00
	dc.b		$00,$2F,$2F,$2F,$8F,$1E,$06,$02,$0A;			Voice 01
	dc.b		$3C,$0F,$7F,$45,$40,$1F,$1F,$1F,$1F,$0C,$0F,$13,$0F,$00,$13,$17
	dc.b		$0B,$F7,$29,$1F,$29,$00,$08,$0D,$00;			Voice 02
	dc.b		$35,$21,$31,$20,$14,$8E,$8E,$91,$91,$00,$05,$00,$80,$01,$02,$02
	dc.b		$02,$48,$36,$17,$08,$17,$01,$0B,$00;			Voice 03
	dc.b		$3C,$0F,$7F,$45,$40,$1F,$1F,$1F,$1F,$0C,$0F,$13,$0F,$00,$13,$17
	dc.b		$0B,$F7,$29,$1F,$29,$00,$00,$0D,$00;			Voice 04
	dc.b		$2C,$70,$40,$21,$60,$9F,$1F,$1F,$5F,$0C,$09,$0C,$15,$04,$04,$06
	dc.b		$06,$56,$46,$46,$4F,$0C,$00,$10,$00;			Voice 05
	dc.b		$38,$75,$13,$71,$11,$D1,$52,$14,$14,$0A,$07,$01,$01,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$1E,$1E,$1E,$00;			Voice 06
	dc.b		$3C,$71,$72,$31,$01,$14,$0C,$16,$0D,$0A,$00,$0C,$00,$00,$00,$00
	dc.b		$00,$04,$06,$05,$06,$16,$08,$0B,$0D;			Voice 07
	dc.b		$3A,$71,$0C,$33,$01,$1C,$16,$1D,$1F,$04,$06,$04,$08,$00,$01,$03
	dc.b		$00,$16,$17,$16,$A6,$25,$2F,$25,$00;			Voice 08
	dc.b		$3A,$01,$07,$31,$71,$8E,$8E,$8D,$53,$0E,$0E,$0E,$07,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$1F,$18,$28,$27,$00;			Voice 09
	dc.b		$3B,$46,$42,$42,$43,$10,$12,$19,$4F,$08,$05,$01,$01,$01,$01,$01
	dc.b		$01,$76,$F1,$F7,$F9,$41,$23,$2B,$00;			Voice 0A
	even
