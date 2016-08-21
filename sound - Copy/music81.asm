; =============================================================================================
; Project Name:		CGZ
; Created:		12nd June 2011
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

CGZ_Header:
	smpsHeaderVoice	CGZ_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$09

	smpsHeaderDAC	CGZ_DAC
	smpsHeaderFM	CGZ_FM1,	smpsPitch02hi,	$0C
	smpsHeaderFM	CGZ_FM2,	smpsPitch01hi,	$02
	smpsHeaderFM	CGZ_FM3,	smpsPitch01hi,	$0C
	smpsHeaderFM	CGZ_FM4,	smpsPitch01hi,	$0B
	smpsHeaderFM	CGZ_FM5,	smpsPitch01hi,	$0B
	smpsHeaderPSG	CGZ_PSG1,	smpsPitch02lo,	$02,	$0C
	smpsHeaderPSG	CGZ_PSG2,	smpsPitch02lo,	$03,	$0C
	smpsHeaderPSG	CGZ_PSG3,	smpsPitch00+$01,	$02,	$0C
	smpsStop
	smpsStop

CGZ_Call01:
	dc.b		dKick,	$12,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dKick,	$06,	dKick,	$12,	dKick,	$06,	dSnare,	$18
	smpsReturn

CGZ_Call02:
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dSnare,	$12,	dSnare,	$0C,	dKick,	$06,	dSnare,	$18
	smpsReturn

CGZ_Call04:
	dc.b		dKick,	$12,	dKick,	$06,	dSnare,	$06,	dKick,	$06
	dc.b		dKick,	$18,	dKick,	$06,	dKick,	$06,	dSnare,	$18
	smpsReturn

CGZ_Call03:
	dc.b		dKick,	$12,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dKick,	$0C,	dKick,	$0C,	dKick,	$06,	dSnare,	$18
	smpsReturn

; DAC Data
CGZ_DAC:
	smpsCall	CGZ_Call01
	smpsLoop	$01,	$03,	CGZ_DAC
	dc.b		dKick,	$12,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dKick,	$06,	dKick,	$12,	dKick,	$06,	dSnare,	$0C
	dc.b		dSnare,	$06,	dSnare,	$06
CGZ_Loop01:
	smpsCall	CGZ_Call01
	smpsLoop	$01,	$03,	CGZ_Loop01
	dc.b		dKick,	$12,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dKick,	$06,	dKick,	$12,	dKick,	$06,	dSnare,	$0C
	dc.b		dSnare,	$06,	dSnare,	$06
	smpsCall	CGZ_Call02
	smpsCall	CGZ_Call03
	smpsCall	CGZ_Call02
	dc.b		dKick,	$12,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dSnare,	$06
	dc.b		dSnare,	$06,	dSnare,	$06,	dSnare,	$06
	smpsCall	CGZ_Call02
	smpsCall	CGZ_Call03
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dSnare,	$06,	dKick,	$0C,	dSnare,	$0C,	dKick,	$06
	dc.b		dSnare,	$12,	dSnare,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dSnare,	$06,	dSnare,	$0C,	dSnare,	$06,	dSnare,	$06
	dc.b		dKick,	$12,	dKick,	$06,	dSnare,	$02,	dSnare,	$04
	dc.b		dSnare,	$06,	dSnare,	$06,	dSnare,	$06
CGZ_Loop02:
	smpsCall	CGZ_Call04
	smpsLoop	$01,	$03,	CGZ_Loop02
	dc.b		dKick,	$12,	dKick,	$06,	dSnare,	$06,	dKick,	$06
	dc.b		dKick,	$18,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dSnare,	$06,	dSnare,	$06
CGZ_Loop03:
	smpsCall	CGZ_Call04
	smpsLoop	$01,	$03,	CGZ_Loop03
	dc.b		dKick,	$12,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$06,	dSnare,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dSnare,	$06,	dSnare,	$06
	dc.b		dSnare,	$06
CGZ_Loop04:
	smpsCall	CGZ_Call04
	smpsLoop	$01,	$03,	CGZ_Loop04
	dc.b		dKick,	$12,	dKick,	$06,	dSnare,	$06,	dKick,	$06
	dc.b		dKick,	$12,	dSnare,	$06,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$0C,	dSnare,	$06,	dSnare,	$06
CGZ_Loop05:
	smpsCall	CGZ_Call04
	smpsLoop	$01,	$02,	CGZ_Loop05
	dc.b		dSnare,	$12,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$12,	dKick,	$06,	dSnare,	$18
	dc.b		dSnare,	$0C,	dSnare,	$06,	dSnare,	$06,	dSnare,	$06
	dc.b		dSnare,	$06,	dSnare,	$06,	dSnare,	$06,	dKick,	$12
	dc.b		dKick,	$06,	dSnare,	$02,	dSnare,	$04,	dSnare,	$06
	dc.b		dSnare,	$06,	dSnare,	$06
	smpsJump	CGZ_DAC
	smpsStop

; FM1 Data
CGZ_FM1:
	smpsFMvoice	$14
	smpsAlterNote	$00
	smpsModSet	$02,	$01,	$01,	$02
CGZ_Jump01:
	dc.b		nA0,	$0A,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nA1,	$0A,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nA1,	$04,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nA0,	$0A,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nA1,	$0A,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nA1,	$0A,	nRst,	$02,	nA0,	$0A,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nA1,	$0A,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nA1,	$04,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nA0,	$0A,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nA1,	$0A,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nA1,	$0A,	nRst,	$02
	dc.b		nAb0,	$0A,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nAb1,	$0A,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nAb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nAb0,	$0A,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nAb1,	$0A,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nAb1,	$0A,	nRst,	$02,	nAb0,	$0A,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nAb1,	$0A,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nAb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nAb0,	$0A,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nAb1,	$0A,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nAb1,	$0A,	nRst,	$02
	dc.b		nA0,	$0A,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nA1,	$0A,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nA1,	$04,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nA0,	$0A,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nA1,	$0A,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nA1,	$0A,	nRst,	$02,	nA0,	$0A,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nA1,	$0A,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nA1,	$04,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nA0,	$0A,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nA1,	$0A,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nA1,	$0A,	nRst,	$02
	dc.b		nAb0,	$0A,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nAb1,	$0A,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nAb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nAb0,	$0A,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nAb1,	$0A,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nAb1,	$0A,	nRst,	$02,	nAb0,	$0A,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nAb1,	$0A,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nAb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nAb0,	$0A,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nAb1,	$0A,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nAb1,	$0A,	nRst,	$02
	dc.b		nD1,	$0A,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$0A,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$10,	nRst,	$02,	nD2,	$0A,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$0A,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nCs1,	$0A,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nCs1,	$0A,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nCs1,	$10,	nRst,	$02,	nCs1,	$0A,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$02,	nCs1,	$0A,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nC1,	$0A,	nRst,	$02,	nC1,	$04,	nRst,	$02
	dc.b		nC1,	$0A,	nRst,	$02,	nC1,	$04,	nRst,	$02
	dc.b		nC1,	$10,	nRst,	$02,	nC2,	$0A,	nRst,	$02
	dc.b		nC1,	$04,	nRst,	$02,	nC1,	$0A,	nRst,	$02
	dc.b		nC1,	$04,	nRst,	$02,	nC1,	$04,	nRst,	$02
	dc.b		nCs1,	$0A,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nCs1,	$0A,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nCs1,	$10,	nRst,	$02,	nCs1,	$0A,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$02,	nCs1,	$0A,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nD1,	$0A,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$0A,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$10,	nRst,	$02,	nD2,	$0A,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$0A,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nCs1,	$0A,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nCs1,	$0A,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nCs1,	$10,	nRst,	$02,	nCs1,	$0A,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$02,	nCs1,	$0A,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nC1,	$0A,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nC1,	$0A,	nRst,	$02,	nC1,	$04,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nC1,	$04,	nRst,	$08
	dc.b		nEb2,	$04,	nRst,	$02,	nCs2,	$04,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nBb1,	$04,	nRst,	$02
	dc.b		nAb1,	$04,	nRst,	$02,	nG1,	$04,	nRst,	$02
	dc.b		nFs1,	$04,	nRst,	$08,	nFs1,	$04,	nRst,	$08
	dc.b		nFs1,	$04,	nRst,	$02,	nFs1,	$04,	nRst,	$08
	dc.b		nFs1,	$04,	nRst,	$02,	nAb1,	$04,	nRst,	$1A
	dc.b		nF1,	$16,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$08,	nEb2,	$0A,	nRst,	$02
	dc.b		nD2,	$04,	nRst,	$02,	nEb2,	$10,	nRst,	$08
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nBb1,	$04,	nRst,	$02,	nBb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$08
	dc.b		nEb2,	$0A,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nEb2,	$10,	nRst,	$08,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nBb1,	$04,	nRst,	$02
	dc.b		nBb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$08,	nD2,	$0A,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nD2,	$10,	nRst,	$08
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD2,	$04,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$08
	dc.b		nD2,	$0A,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nD2,	$10,	nRst,	$08,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nD2,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$08,	nEb2,	$0A,	nRst,	$02
	dc.b		nD2,	$04,	nRst,	$02,	nEb2,	$10,	nRst,	$08
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nBb1,	$04,	nRst,	$02,	nBb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$08
	dc.b		nEb2,	$0A,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nEb2,	$10,	nRst,	$08,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nBb1,	$04,	nRst,	$02
	dc.b		nBb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$08,	nD2,	$0A,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nD2,	$10,	nRst,	$08
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD2,	$04,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$08
	dc.b		nD2,	$0A,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nD2,	$10,	nRst,	$08,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nD2,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$08,	nEb2,	$0A,	nRst,	$02
	dc.b		nD2,	$04,	nRst,	$02,	nEb2,	$10,	nRst,	$08
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nBb1,	$04,	nRst,	$02,	nBb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$08
	dc.b		nEb2,	$0A,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nEb2,	$10,	nRst,	$08,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nBb1,	$04,	nRst,	$02
	dc.b		nBb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$08,	nD2,	$0A,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nD2,	$10,	nRst,	$08
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD2,	$04,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$08
	dc.b		nD2,	$0A,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nD2,	$10,	nRst,	$08,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nD2,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$08,	nCs2,	$0A,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nCs2,	$10,	nRst,	$08
	dc.b		nCs1,	$04,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nCs2,	$04,	nRst,	$02,	nCs2,	$04,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$02,	nCs1,	$04,	nRst,	$08
	dc.b		nCs2,	$0A,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nCs2,	$10,	nRst,	$08,	nCs1,	$04,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$02,	nCs2,	$04,	nRst,	$02
	dc.b		nCs2,	$04,	nRst,	$02,	nCs1,	$04,	nRst,	$02
	dc.b		nCs1,	$04,	nRst,	$02,	nC1,	$04,	nRst,	$08
	dc.b		nC1,	$04,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nC1,	$04,	nRst,	$08,	nC1,	$04,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nC1,	$04,	nRst,	$08
	dc.b		nC1,	$04,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nC1,	$04,	nRst,	$08,	nC1,	$04,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nC1,	$04,	nRst,	$08
	dc.b		nC1,	$04,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nC1,	$04,	nRst,	$08,	nC1,	$04,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$08,	nC1,	$04,	nRst,	$08
	dc.b		nC1,	$04,	nRst,	$02,	nC1,	$04,	nRst,	$02
	dc.b		nC1,	$04,	nRst,	$02,	nG1,	$04,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02
	smpsJump	CGZ_Jump01
	smpsStop

; FM2 Data
CGZ_FM2:
	smpsFMvoice	$0C
	smpsAlterNote	$02
	smpsModSet	$0F,	$01,	$07,	$07
CGZ_Jump02:
	dc.b		nC4,	$04,	nRst,	$14,	nB3,	$10,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$0E,	nA3,	$16,	nRst,	$02
	dc.b		nB3,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nD4,	$22,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nB3,	$04,	nRst,	$02,	nA3,	$16,	nRst,	$02
	dc.b		nG3,	$04,	nRst,	$02,	nA3,	$04,	nRst,	$02
	dc.b		nB3,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nD4,	$34,	nRst,	$08,	nD4,	$04,	nRst,	$14
	dc.b		nBb3,	$34,	nRst,	$0E,	nC3,	$04,	nRst,	$02
	dc.b		nD3,	$04,	nRst,	$02,	nEb3,	$04,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$02,	nG3,	$04,	nRst,	$02
	dc.b		nAb3,	$04,	nRst,	$02,	nBb3,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$14,	nB3,	$10,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$0E,	nA3,	$16,	nRst,	$02
	dc.b		nB3,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nD4,	$22,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nB3,	$04,	nRst,	$02,	nA3,	$16,	nRst,	$02
	dc.b		nG3,	$04,	nRst,	$02,	nA3,	$04,	nRst,	$02
	dc.b		nB3,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nD4,	$34,	nRst,	$08,	nD4,	$04,	nRst,	$14
	dc.b		nBb3,	$34,	nRst,	$0E,	nC3,	$04,	nRst,	$02
	dc.b		nD3,	$04,	nRst,	$02,	nEb3,	$04,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$02,	nG3,	$04,	nRst,	$02
	dc.b		nAb3,	$04,	nRst,	$02,	nBb3,	$04,	nRst,	$02
	dc.b		nC4,	$52,	nRst,	$02,	nF3,	$04,	nRst,	$02
	dc.b		nG3,	$04,	nRst,	$02,	nAb3,	$10,	nRst,	$02
	dc.b		nG3,	$04,	nRst,	$0E,	nG3,	$0A,	nRst,	$02
	dc.b		nF3,	$10,	nRst,	$02,	nG3,	$10,	nRst,	$02
	dc.b		nAb3,	$0A,	nRst,	$02,	nAb3,	$22,	nRst,	$02
	dc.b		nEb3,	$2E,	nRst,	$02,	nAb3,	$04,	nRst,	$02
	dc.b		nEb4,	$04,	nRst,	$02,	nEb4,	$22,	nRst,	$02
	dc.b		nAb3,	$16,	nRst,	$0E,	nG3,	$0A,	nRst,	$02
	dc.b		nAb3,	$04,	nRst,	$02,	nBb3,	$04,	nRst,	$02
	dc.b		nC4,	$52,	nRst,	$02,	nF3,	$04,	nRst,	$02
	dc.b		nG3,	$04,	nRst,	$02,	nAb3,	$10,	nRst,	$02
	dc.b		nG3,	$04,	nRst,	$0E,	nG3,	$0A,	nRst,	$02
	dc.b		nF3,	$10,	nRst,	$02,	nG3,	$10,	nRst,	$02
	dc.b		nAb3,	$0A,	nRst,	$02,	nBb3,	$0A,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$02,	nEb4,	$0A,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	dc.b		nEb4,	$28,	nRst,	$02,	nG3,	$04,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$08,	nBb3,	$04,	nRst,	$08
	dc.b		nCs4,	$04,	nRst,	$02,	nCs4,	$04,	nRst,	$08
	dc.b		nCs4,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nBb3,	$02,	nAb3,	$02,	nFs3,	$02,	nF3,	$02
	dc.b		nEb3,	$02,	nCs3,	$02,	nC3,	$02,	nBb2,	$02
	dc.b		nAb2,	$02,	nFs2,	$02,	nF2,	$02,	nEb2,	$02
	dc.b		nEb3,	$04,	nRst,	$02,	nF3,	$04,	nRst,	$02
	dc.b		nG3,	$04,	nRst,	$02,	nA3,	$04,	nRst,	$02
	dc.b		nBb3,	$10,	nRst,	$02,	nA3,	$04,	nRst,	$0E
	dc.b		nBb3,	$10,	nRst,	$02,	nG3,	$10,	nRst,	$02
	dc.b		nA3,	$04,	nRst,	$08,	nBb3,	$04,	nRst,	$08
	dc.b		nBb3,	$10,	nRst,	$02,	nA3,	$04,	nRst,	$0E
	dc.b		nBb3,	$10,	nRst,	$02,	nC4,	$04,	nRst,	$08
	dc.b		nBb3,	$04,	nRst,	$02,	nC4,	$0A,	nRst,	$02
	dc.b		nBb3,	$0A,	nRst,	$02,	nBb3,	$28,	nRst,	$02
	dc.b		nF3,	$34,	nRst,	$38,	nBb4,	$04,	nRst,	$0E
	dc.b		nA4,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	dc.b		nBb3,	$10,	nRst,	$02,	nA3,	$04,	nRst,	$0E
	dc.b		nBb3,	$10,	nRst,	$02,	nG3,	$10,	nRst,	$02
	dc.b		nA3,	$04,	nRst,	$08,	nBb3,	$04,	nRst,	$08
	dc.b		nBb3,	$0A,	nRst,	$02,	nBb3,	$04,	nRst,	$02
	dc.b		nA3,	$04,	nRst,	$08,	nA3,	$04,	nRst,	$02
	dc.b		nBb3,	$10,	nRst,	$02,	nC4,	$04,	nRst,	$08
	dc.b		nBb3,	$04,	nRst,	$02,	nC4,	$0A,	nRst,	$02
	dc.b		nBb3,	$0A,	nRst,	$02,	nBb3,	$1C,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$02
	dc.b		nD4,	$10,	nRst,	$02,	nD4,	$04,	nRst,	$02
	dc.b		nEb4,	$04,	nRst,	$02,	nD4,	$0A,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$02,	nBb3,	$34,	nRst,	$08
	dc.b		nC4,	$04,	nRst,	$02,	nBb3,	$0A,	nRst,	$02
	dc.b		nF3,	$16,	nRst,	$02,	nBb3,	$10,	nRst,	$02
	dc.b		nA3,	$04,	nRst,	$0E,	nBb3,	$10,	nRst,	$02
	dc.b		nG3,	$10,	nRst,	$02,	nA3,	$04,	nRst,	$08
	dc.b		nBb3,	$04,	nRst,	$08,	nBb3,	$10,	nRst,	$02
	dc.b		nA3,	$04,	nRst,	$0E,	nBb3,	$10,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$08,	nBb3,	$04,	nRst,	$02
	dc.b		nC4,	$0A,	nRst,	$02,	nBb3,	$0A,	nRst,	$02
	dc.b		nBb3,	$28,	nRst,	$02,	nF3,	$34,	nRst,	$38
	dc.b		nBb4,	$04,	nRst,	$0E,	nA4,	$04,	nRst,	$08
	dc.b		nBb4,	$04,	nRst,	$08,	nBb3,	$0A,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$02,	nAb3,	$04,	nRst,	$08
	dc.b		nAb3,	$04,	nRst,	$02,	nBb3,	$10,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$0E,	nEb3,	$04,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$02,	nG3,	$04,	nRst,	$02
	dc.b		nAb3,	$04,	nRst,	$02,	nBb3,	$0A,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$02,	nAb3,	$04,	nRst,	$08
	dc.b		nAb3,	$04,	nRst,	$02,	nBb3,	$10,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$08,	nF3,	$04,	nRst,	$02
	dc.b		nG3,	$04,	nRst,	$02,	nAb3,	$04,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nG3,	$60,	$2E,	nRst,	$08,	nBb3,	$04,	nRst
	dc.b		$08,	nG3,	$04,	nRst,	$08,	nBb3,	$04,	nRst
	dc.b		$02,	nC4,	$0A,	nRst,	$02
	smpsJump	CGZ_Jump02
	smpsStop

; FM3 Data
CGZ_FM3:
	dc.b		nRst,	$08
	smpsFMvoice	$0C
	smpsAlterNote	$FE
	smpsModSet	$0F,	$01,	$07,	$07
cgz_Jump03:
	smpsJump	CGZ_Jump02
	smpsJump	CGZ_Jump03
	smpsStop

; FM4 Data
CGZ_FM4:
	smpsPan		panLeft,	$00
	smpsFMvoice	$0A
	smpsAlterNote	$02
	smpsModSet	$0A,	$01,	$03,	$06
CGZ_Jump04:
	dc.b		nE3,	$05,	nRst,	$13,	nD3,	$11,	nRst,	$01
	dc.b		nE3,	$03,	nRst,	$09,	nC3,	$05,	nRst,	$01
	dc.b		nC4,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$19
	dc.b		nG2,	$11,	nRst,	$01,	nG2,	$05,	nRst,	$0D
	dc.b		nG2,	$23,	nRst,	$01,	nG3,	$17,	nRst,	$01
	dc.b		nF3,	$3B,	nRst,	$01,	nF3,	$05,	nRst,	$13
	dc.b		nD3,	$23,	nRst,	$01,	nD4,	$05,	nRst,	$01
	dc.b		nD4,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$01
	dc.b		nD4,	$05,	nRst,	$19,	nF3,	$17,	nRst,	$01
	dc.b		nE3,	$05,	nRst,	$13,	nD3,	$11,	nRst,	$01
	dc.b		nE3,	$03,	nRst,	$09,	nC3,	$05,	nRst,	$01
	dc.b		nC4,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$19
	dc.b		nG2,	$11,	nRst,	$01,	nG2,	$05,	nRst,	$0D
	dc.b		nG2,	$23,	nRst,	$01,	nG3,	$17,	nRst,	$01
	dc.b		nF3,	$3B,	nRst,	$01,	nF3,	$05,	nRst,	$13
	dc.b		nD3,	$23,	nRst,	$01,	nD4,	$05,	nRst,	$01
	dc.b		nD4,	$05,	nRst,	$01,	nC4,	$05,	nRst,	$01
	dc.b		nD4,	$05,	nRst,	$19,	nF3,	$17,	nRst,	$0D
	dc.b		nG2,	$05,	nRst,	$01,	nBb2,	$0B,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$01,	nBb2,	$23,	nRst,	$01
	dc.b		nF3,	$17,	nRst,	$01,	nF3,	$11,	nRst,	$01
	dc.b		nEb3,	$05,	nRst,	$0D,	nEb3,	$0B,	nRst,	$01
	dc.b		nC3,	$11,	nRst,	$01,	nEb3,	$11,	nRst,	$01
	dc.b		nF3,	$0B,	nRst,	$0D,	nAb2,	$05,	nRst,	$01
	dc.b		nC3,	$0B,	nRst,	$01,	nAb2,	$05,	nRst,	$01
	dc.b		nC3,	$24,	nEb3,	$17,	nRst,	$01,	nF3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$0D,	nC3,	$2F
	dc.b		nRst,	$19,	nG2,	$05,	nRst,	$01,	nBb2,	$0B
	dc.b		nRst,	$01,	nG2,	$05,	nRst,	$01,	nBb2,	$23
	dc.b		nRst,	$01,	nF3,	$17,	nRst,	$01,	nF3,	$11
	dc.b		nRst,	$01,	nEb3,	$05,	nRst,	$0D,	nEb3,	$0B
	dc.b		nRst,	$01,	nC3,	$11,	nRst,	$01,	nEb3,	$11
	dc.b		nRst,	$01,	nF3,	$0B,	nRst,	$0D,	nC3,	$05
	dc.b		nRst,	$01,	nG3,	$0B,	nRst,	$01,	nC3,	$05
	dc.b		nRst,	$01,	nG3,	$05,	nRst,	$01,	nG3,	$29
	dc.b		nRst,	$01,	nEb3,	$05,	nRst,	$01,	nCs3,	$05
	dc.b		nRst,	$07,	nCs3,	$05,	nRst,	$07,	nF3,	$05
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$07,	nF3,	$05
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$19,	nEb3,	$17
	dc.b		nRst,	$01,	nF3,	$11,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$0D,	nF3,	$11,	nRst,	$01,	nBb2,	$11
	dc.b		nRst,	$01,	nC3,	$05,	nRst,	$07,	nEb3,	$05
	dc.b		nRst,	$07,	nF3,	$11,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$0D,	nF3,	$11,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$07,	nEb3,	$05,	nRst,	$01,	nF3,	$0B
	dc.b		nRst,	$01,	nEb3,	$0B,	nRst,	$01,	nD3,	$11
	dc.b		nRst,	$01,	nD3,	$05,	nRst,	$07,	nD3,	$05
	dc.b		nRst,	$07,	nD3,	$35,	nRst,	$07,	nD3,	$05
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$01,	nD4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$0D,	nF4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$07,	nF3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$0D,	nF3,	$11
	dc.b		nRst,	$01,	nBb2,	$11,	nRst,	$01,	nC3,	$05
	dc.b		nRst,	$07,	nEb3,	$05,	nRst,	$07,	nF3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$0D,	nF3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$07,	nEb3,	$05
	dc.b		nRst,	$01,	nF3,	$0B,	nRst,	$01,	nEb3,	$0B
	dc.b		nRst,	$01,	nD3,	$11,	nRst,	$01,	nD3,	$05
	dc.b		nRst,	$07,	nD3,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nF3,	$11,	nRst,	$2B,	nD3,	$05
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$01,	nD4,	$05
	dc.b		nRst,	$07,	nF4,	$05,	nRst,	$01,	nD4,	$05
	dc.b		nRst,	$07,	nBb3,	$17,	nRst,	$01,	nF3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$0D,	nF3,	$11
	dc.b		nRst,	$01,	nBb2,	$11,	nRst,	$01,	nC3,	$05
	dc.b		nRst,	$07,	nEb3,	$05,	nRst,	$07,	nF3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$0D,	nF3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$07,	nEb3,	$05
	dc.b		nRst,	$01,	nF3,	$0B,	nRst,	$01,	nEb3,	$0B
	dc.b		nRst,	$01,	nD3,	$11,	nRst,	$01,	nD3,	$05
	dc.b		nRst,	$07,	nD3,	$05,	nRst,	$07,	nD3,	$35
	dc.b		nRst,	$07,	nD3,	$05,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nD4,	$05,	nRst,	$07,	nF4,	$05
	dc.b		nRst,	$0D,	nF4,	$05,	nRst,	$07,	nF4,	$05
	dc.b		nRst,	$07,	nF3,	$11,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$0D,	nF3,	$11,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$0D,	nF3,	$0B,	nRst,	$01,	nF3,	$0B
	dc.b		nRst,	$01,	nF3,	$11,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$0D,	nF3,	$11,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$0D,	nF3,	$0B,	nRst,	$01,	nF3,	$0B
	dc.b		nRst,	$01,	nF3,	$5F,	nRst,	$01,	nE3,	$2F
	dc.b		nRst,	$07,	nE3,	$05,	nRst,	$07,	nC3,	$05
	dc.b		nRst,	$07,	nE3,	$05,	nRst,	$01,	nE3,	$0B
	dc.b		nRst,	$01
	smpsFMvoice	$0A
	smpsAlterNote	$02
	smpsModSet	$0A,	$01,	$03,	$06
	smpsJump	CGZ_Jump04
	smpsStop

; FM5 Data
CGZ_FM5:
	smpsPan		panRight,	$00
	smpsFMvoice	$0A
	smpsAlterNote	$FE
	smpsModSet	$0A,	$01,	$03,	$06
CGZ_Jump05:
	dc.b		nG3,	$05,	nRst,	$13,	nG3,	$11,	nRst,	$01
	dc.b		nG3,	$03,	nRst,	$09,	nE3,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$19
	dc.b		nB2,	$11,	nRst,	$01,	nB2,	$05,	nRst,	$0D
	dc.b		nC3,	$23,	nRst,	$01,	nB3,	$17,	nRst,	$01
	dc.b		nBb3,	$3B,	nRst,	$01,	nBb3,	$05,	nRst,	$13
	dc.b		nF3,	$23,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nEb4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$19,	nAb3,	$17,	nRst,	$01
	dc.b		nG3,	$05,	nRst,	$13,	nG3,	$11,	nRst,	$01
	dc.b		nG3,	$03,	nRst,	$09,	nE3,	$05,	nRst,	$01
	dc.b		nE4,	$05,	nRst,	$01,	nE4,	$05,	nRst,	$19
	dc.b		nB2,	$11,	nRst,	$01,	nB2,	$05,	nRst,	$0D
	dc.b		nC3,	$23,	nRst,	$01,	nB3,	$17,	nRst,	$01
	dc.b		nBb3,	$3B,	nRst,	$01,	nBb3,	$05,	nRst,	$13
	dc.b		nF3,	$23,	nRst,	$01,	nF4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$01,	nEb4,	$05,	nRst,	$01
	dc.b		nF4,	$05,	nRst,	$19,	nAb3,	$17,	nRst,	$0D
	dc.b		nE3,	$05,	nRst,	$01,	nF3,	$0B,	nRst,	$01
	dc.b		nE3,	$05,	nRst,	$01,	nF3,	$23,	nRst,	$01
	dc.b		nBb3,	$17,	nRst,	$01,	nC4,	$11,	nRst,	$01
	dc.b		nBb3,	$05,	nRst,	$0D,	nBb3,	$0B,	nRst,	$01
	dc.b		nAb3,	$11,	nRst,	$01,	nBb3,	$11,	nRst,	$01
	dc.b		nC4,	$0B,	nRst,	$0D,	nC3,	$05,	nRst,	$01
	dc.b		nEb3,	$0B,	nRst,	$01,	nC3,	$05,	nRst,	$01
	dc.b		nEb3,	$24,	nAb3,	$17,	nRst,	$01,	nC4,	$11
	dc.b		nRst,	$01,	nC4,	$05,	nRst,	$0D,	nF3,	$2F
	dc.b		nRst,	$19,	nE3,	$05,	nRst,	$01,	nF3,	$0B
	dc.b		nRst,	$01,	nE3,	$05,	nRst,	$01,	nF3,	$23
	dc.b		nRst,	$01,	nBb3,	$17,	nRst,	$01,	nC4,	$11
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$0D,	nBb3,	$0B
	dc.b		nRst,	$01,	nAb3,	$11,	nRst,	$01,	nBb3,	$11
	dc.b		nRst,	$01,	nC4,	$0B,	nRst,	$0D,	nEb3,	$05
	dc.b		nRst,	$01,	nBb3,	$0B,	nRst,	$01,	nEb3,	$05
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$01,	nBb3,	$29
	dc.b		nRst,	$01,	nG3,	$05,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$07,	nF3,	$05,	nRst,	$07,	nBb3,	$05
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$07,	nBb3,	$05
	dc.b		nRst,	$01,	nC4,	$05,	nRst,	$19,	nA3,	$17
	dc.b		nRst,	$01,	nC4,	$11,	nRst,	$01,	nC4,	$05
	dc.b		nRst,	$0D,	nC4,	$11,	nRst,	$01,	nEb3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$07,	nG3,	$05
	dc.b		nRst,	$07,	nC4,	$11,	nRst,	$01,	nC4,	$05
	dc.b		nRst,	$0D,	nC4,	$11,	nRst,	$01,	nA3,	$05
	dc.b		nRst,	$07,	nG3,	$05,	nRst,	$01,	nA3,	$0B
	dc.b		nRst,	$01,	nG3,	$0B,	nRst,	$01,	nF3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$07,	nF3,	$05
	dc.b		nRst,	$07,	nBb3,	$35,	nRst,	$07,	nF3,	$05
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$01,	nD4,	$05
	dc.b		nRst,	$01,	nD4,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nD4,	$05,	nRst,	$01,	nF4,	$05
	dc.b		nRst,	$07,	nBb4,	$05,	nRst,	$0D,	nA4,	$05
	dc.b		nRst,	$07,	nBb4,	$05,	nRst,	$07,	nC4,	$11
	dc.b		nRst,	$01,	nC4,	$05,	nRst,	$0D,	nC4,	$11
	dc.b		nRst,	$01,	nEb3,	$11,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$07,	nG3,	$05,	nRst,	$07,	nC4,	$11
	dc.b		nRst,	$01,	nC4,	$05,	nRst,	$0D,	nC4,	$11
	dc.b		nRst,	$01,	nA3,	$05,	nRst,	$07,	nG3,	$05
	dc.b		nRst,	$01,	nA3,	$0B,	nRst,	$01,	nG3,	$0B
	dc.b		nRst,	$01,	nF3,	$11,	nRst,	$01,	nF3,	$05
	dc.b		nRst,	$07,	nF3,	$05,	nRst,	$01,	nD4,	$05
	dc.b		nRst,	$01,	nBb3,	$11,	nRst,	$01,	nF4,	$05
	dc.b		nRst,	$01,	nG4,	$05,	nRst,	$01,	nF4,	$0B
	dc.b		nRst,	$01,	nEb4,	$05,	nRst,	$01,	nD4,	$0B
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nD4,	$05,	nRst,	$01,	nD4,	$05
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$01,	nD4,	$05
	dc.b		nRst,	$01,	nF4,	$05,	nRst,	$07,	nA4,	$05
	dc.b		nRst,	$01,	nF4,	$05,	nRst,	$07,	nD4,	$17
	dc.b		nRst,	$01,	nC4,	$11,	nRst,	$01,	nC4,	$05
	dc.b		nRst,	$0D,	nC4,	$11,	nRst,	$01,	nEb3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$07,	nG3,	$05
	dc.b		nRst,	$07,	nC4,	$11,	nRst,	$01,	nC4,	$05
	dc.b		nRst,	$0D,	nC4,	$11,	nRst,	$01,	nA3,	$05
	dc.b		nRst,	$07,	nG3,	$05,	nRst,	$01,	nA3,	$0B
	dc.b		nRst,	$01,	nG3,	$0B,	nRst,	$01,	nF3,	$11
	dc.b		nRst,	$01,	nF3,	$05,	nRst,	$07,	nF3,	$05
	dc.b		nRst,	$07,	nBb3,	$35,	nRst,	$07,	nF3,	$05
	dc.b		nRst,	$01,	nBb3,	$05,	nRst,	$01,	nD4,	$05
	dc.b		nRst,	$01,	nD4,	$05,	nRst,	$01,	nBb3,	$05
	dc.b		nRst,	$01,	nD4,	$05,	nRst,	$01,	nF4,	$05
	dc.b		nRst,	$07,	nBb4,	$05,	nRst,	$0D,	nA4,	$05
	dc.b		nRst,	$07,	nBb4,	$05,	nRst,	$07,	nC4,	$11
	dc.b		nRst,	$01,	nC4,	$05,	nRst,	$0D,	nC4,	$11
	dc.b		nRst,	$01,	nC4,	$05,	nRst,	$0D,	nC4,	$0B
	dc.b		nRst,	$01,	nC4,	$0B,	nRst,	$01,	nC4,	$11
	dc.b		nRst,	$01,	nC4,	$05,	nRst,	$0D,	nC4,	$11
	dc.b		nRst,	$01,	nC4,	$05,	nRst,	$0D,	nC4,	$0B
	dc.b		nRst,	$01,	nC4,	$0B,	nRst,	$01,	nC4,	$5F
	dc.b		nRst,	$01,	nC4,	$2F,	nRst,	$07,	nG3,	$05
	dc.b		nRst,	$07,	nE3,	$05,	nRst,	$07,	nG3,	$05
	dc.b		nRst,	$01,	nG3,	$0B,	nRst,	$01
	smpsJump	CGZ_Jump05
	smpsStop

; PSG1 Data
CGZ_PSG1:
	smpsPSGvoice	$04
	smpsAlterNote	$FF
CGZ_Jump06:
	smpsPSGvoice	$04
	dc.b		nRst,	$60,	nRst,	nRst,	$24,	nBb3,	$04,	nRst
	dc.b		$02,	nC4,	$04,	nRst,	$02,	nD4,	$34,	nRst
	dc.b		$08,	nD4,	$04,	nRst,	$14,	nBb3,	$34,	nRst
	dc.b		$60,	nRst,	nRst,	$2C,	nBb3,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$02,	nD4,	$34,	nRst,	$08
	dc.b		nD4,	$04,	nRst,	$14,	nBb3,	$34,	nRst,	$14
	dc.b		nE4,	$04,	nRst,	$02,	nF4,	$0A,	nRst,	$02
	dc.b		nE4,	$04,	nRst,	$02,	nF4,	$10,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$02,	nF3,	$04,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$1A,	nC4,	$10,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$0E,	nBb3,	$0A,	nRst,	$02
	dc.b		nAb3,	$10,	nRst,	$02,	nBb3,	$10,	nRst,	$02
	dc.b		nC4,	$0A,	nRst,	$0E,	nEb4,	$04,	nRst,	$02
	dc.b		nAb4,	$0A,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	dc.b		nAb4,	$10,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	dc.b		nEb4,	$04,	nRst,	$02,	nEb4,	$04,	nRst,	$1A
	dc.b		nC4,	$10,	nRst,	$02,	nC4,	$04,	nRst,	$0E
	dc.b		nF3,	$10,	nRst,	$02,	nF3,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF3,	$04,	nRst,	$08
	dc.b		nF3,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$14
	dc.b		nE4,	$04,	nRst,	$02,	nF4,	$0A,	nRst,	$02
	dc.b		nE4,	$04,	nRst,	$02,	nF4,	$10,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$02,	nF3,	$04,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$1A,	nC4,	$10,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$0E,	nBb3,	$0A,	nRst,	$02
	dc.b		nAb3,	$10,	nRst,	$02,	nBb3,	$10,	nRst,	$02
	dc.b		nC4,	$0A,	nRst,	$0E,	nEb4,	$04,	nRst,	$02
	dc.b		nBb4,	$0A,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	dc.b		nBb4,	$10,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	dc.b		nEb4,	$04,	nRst,	$02,	nEb4,	$04,	nRst,	$20
	dc.b		nBb3,	$04,	nRst,	$08,	nCs4,	$04,	nRst,	$02
	dc.b		nCs4,	$04,	nRst,	$08,	nCs4,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$32
	smpsPSGvoice	$00
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$26
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$08,	nF5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF5,	$04,	nRst,	$02
	dc.b		nE4,	$04,	nRst,	$08,	nE5,	$04,	nRst,	$02
	dc.b		nE4,	$04,	nRst,	$08,	nE5,	$04,	nRst,	$02
	dc.b		nE5,	$04,	nRst,	$02,	nE4,	$04,	nRst,	$32
	smpsJump	CGZ_Jump06
	smpsStop

; PSG2 Data
CGZ_PSG2:
	smpsPSGvoice	$04
CGZ_Jump07:
	dc.b		nRst,	$60,	nRst,	nRst,	$24,	nBb3,	$04,	nRst
	dc.b		$02,	nC4,	$04,	nRst,	$02,	nD4,	$34,	nRst
	dc.b		$08,	nD4,	$04,	nRst,	$14,	nBb3,	$34,	nRst
	dc.b		$60,	nRst,	nRst,	$2C,	nBb3,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$02,	nD4,	$34,	nRst,	$08
	dc.b		nD4,	$04,	nRst,	$14,	nBb3,	$34,	nRst,	$14
	dc.b		nE4,	$04,	nRst,	$02,	nF4,	$0A,	nRst,	$02
	dc.b		nE4,	$04,	nRst,	$02,	nF4,	$10,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$02,	nF3,	$04,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$1A,	nC4,	$10,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$0E,	nBb3,	$0A,	nRst,	$02
	dc.b		nAb3,	$10,	nRst,	$02,	nBb3,	$10,	nRst,	$02
	dc.b		nC4,	$0A,	nRst,	$0E,	nEb4,	$04,	nRst,	$02
	dc.b		nAb4,	$0A,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	dc.b		nAb4,	$10,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	dc.b		nEb4,	$04,	nRst,	$02,	nEb4,	$04,	nRst,	$1A
	dc.b		nC4,	$10,	nRst,	$02,	nC4,	$04,	nRst,	$0E
	dc.b		nF3,	$10,	nRst,	$02,	nF3,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$02,	nF3,	$04,	nRst,	$08
	dc.b		nF3,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$14
	dc.b		nE4,	$04,	nRst,	$02,	nF4,	$0A,	nRst,	$02
	dc.b		nE4,	$04,	nRst,	$02,	nF4,	$10,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$02,	nF3,	$04,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$1A,	nC4,	$10,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$0E,	nBb3,	$0A,	nRst,	$02
	dc.b		nAb3,	$10,	nRst,	$02,	nBb3,	$10,	nRst,	$02
	dc.b		nC4,	$0A,	nRst,	$0E,	nEb4,	$04,	nRst,	$02
	dc.b		nBb4,	$0A,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	dc.b		nBb4,	$10,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	dc.b		nEb4,	$04,	nRst,	$02,	nEb4,	$04,	nRst,	$20
	dc.b		nBb3,	$04,	nRst,	$08,	nCs4,	$04,	nRst,	$02
	dc.b		nCs4,	$04,	nRst,	$08,	nCs4,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$32
	smpsPSGvoice	$00
	dc.b		nBb3,	$04,	nRst,	$08,	nBb3,	$04,	nRst,	$02
	dc.b		nA3,	$04,	nRst,	$08,	nA3,	$04,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$38,	nBb3,	$04,	nRst,	$08
	dc.b		nBb3,	$04,	nRst,	$02,	nA3,	$04,	nRst,	$08
	dc.b		nA3,	$04,	nRst,	$02,	nBb3,	$04,	nRst,	$38
	dc.b		nD4,	$04,	nRst,	$08,	nC4,	$04,	nRst,	$02
	dc.b		nD4,	$04,	nRst,	$08,	nC4,	$04,	nRst,	$08
	dc.b		nD4,	$04,	nRst,	$08,	nD4,	$04,	nRst,	$02
	dc.b		nEb4,	$04,	nRst,	$08,	nF4,	$04,	nRst,	$08
	dc.b		nBb4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$60
	dc.b		nRst,	$02,	nBb3,	$04,	nRst,	$08,	nBb3,	$04
	dc.b		nRst,	$02,	nA3,	$04,	nRst,	$08,	nA3,	$04
	dc.b		nRst,	$02,	nBb3,	$04,	nRst,	$38,	nBb3,	$04
	dc.b		nRst,	$08,	nBb3,	$04,	nRst,	$02,	nA3,	$04
	dc.b		nRst,	$08,	nA3,	$04,	nRst,	$02,	nBb3,	$04
	dc.b		nRst,	$38,	nD4,	$04,	nRst,	$08,	nC4,	$04
	dc.b		nRst,	$02,	nD4,	$04,	nRst,	$08,	nBb3,	$04
	dc.b		nRst,	$02,	nF4,	$04,	nRst,	$02,	nD4,	$04
	dc.b		nRst,	$60,	nRst,	$1A,	nD3,	$04,	nRst,	$02
	dc.b		nF3,	$04,	nRst,	$02,	nBb3,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$02,	nD4,	$0A,	nRst,	$02
	dc.b		nEb4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$0E
	dc.b		nF4,	$10,	nRst,	$02,	nG4,	$10,	nRst,	$02
	dc.b		nA4,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	dc.b		nC5,	$0A,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nA4,	$04,	nRst,	$08,	nA4,	$04,	nRst,	$02
	dc.b		nBb4,	$10,	nRst,	$02,	nC5,	$04,	nRst,	$08
	dc.b		nBb4,	$04,	nRst,	$02,	nA4,	$0A,	nRst,	$02
	dc.b		nG4,	$0A,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nD4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nD4,	$0A,	nRst,	$02,	nF4,	$04,	nRst,	$08
	dc.b		nD4,	$04,	nRst,	$02,	nEb4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$02
	dc.b		nF4,	$04,	nRst,	$38,	nBb4,	$10,	nRst,	$02
	dc.b		nC5,	$0A,	nRst,	$02,	nD5,	$0A,	nRst,	$02
	dc.b		nEb5,	$0A,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nAb4,	$0A,	nRst,	$02,	nF4,	$04,	nRst,	$02
	dc.b		nBb4,	$10,	nRst,	$02,	nBb4,	$04,	nRst,	$0E
	dc.b		nC5,	$0A,	nRst,	$02,	nEb5,	$0A,	nRst,	$02
	dc.b		nF5,	nG5,	$08,	nRst,	$02,	nEb5,	$04,	nRst
	dc.b		$02,	nC5,	$0A,	nRst,	$02,	nAb4,	$04,	nRst
	dc.b		$02,	nF4,	$10,	nRst,	$02,	nF4,	$04,	nRst
	dc.b		$1A,	nBb3,	$04,	nRst,	$02,	nF3,	$04,	nRst
	dc.b		$02,	nC3,	$04,	nRst,	$02,	nD3,	$04,	nRst
	dc.b		$02,	nF3,	$04,	nRst,	$02,	nG3,	$04,	nRst
	dc.b		$02,	nD3,	$04,	nRst,	$02,	nF3,	$04,	nRst
	dc.b		$02,	nG3,	$04,	nRst,	$02,	nC4,	$04,	nRst
	dc.b		$02,	nF3,	$04,	nRst,	$02,	nG3,	$04,	nRst
	dc.b		$02,	nC4,	$04,	nRst,	$02,	nD4,	$04,	nRst
	dc.b		$02,	nG3,	$04,	nRst,	$02,	nC4,	$04,	nRst
	dc.b		$02,	nD4,	$04,	nRst,	$02,	nF4,	$04,	nRst
	dc.b		$02,	nC3,	$04,	nRst,	$02,	nD3,	$04,	nRst
	dc.b		$02,	nE3,	$04,	nRst,	$02,	nG3,	$04,	nRst
	dc.b		$02,	nD3,	$04,	nRst,	$02,	nE3,	$04,	nRst
	dc.b		$02,	nG3,	$04,	nRst,	$02,	nC4,	$04,	nRst
	dc.b		$32
	smpsJump	CGZ_PSG2
	smpsStop

; PSG3 Data
CGZ_PSG3:
	smpsPSGvoice	$02
	smpsPSGform	$E7
CGZ_Loop06:
	smpsCall	CGZ_Call05
	smpsLoop	$01,	$20,	CGZ_Loop06
CGZ_Loop07:
	smpsPSGvoice	$02
	dc.b		nBb6,	$06,	nBb6,	$06,	nBb6,	$06,	nBb6,	$06
	dc.b		nBb6,	$06,	nBb6,	$06,	nBb6,	$06,	nBb6,	$06
	dc.b		nBb6,	$06,	nBb6,	$06,	nBb6,	$06,	nBb6,	$06
	dc.b		nBb6,	$06,	nBb6,	$06
	smpsPSGvoice	$01
	dc.b		nBb6,	$06
	smpsPSGvoice	$01
	dc.b		nBb6,	$06
	smpsLoop	$01,	$06,	CGZ_Loop07
	dc.b		nBb6,	$06,	nBb6,	$06,	nBb6,	$06,	nBb6,	$06
	dc.b		nBb6,	$06,	nBb6,	$06,	nBb6,	$06,	nBb6,	$06
	dc.b		nBb6,	$06,	nBb6,	$06,	nBb6,	$06,	nBb6,	$06
	dc.b		nBb6,	$06,	nBb6,	$06
	smpsPSGvoice	$02
	dc.b		nBb6,	$06
	smpsPSGvoice	$01
	dc.b		nBb6,	$60,	$06
CGZ_Loop08:
	smpsCall	CGZ_Call05
	smpsLoop	$01,	$1E,	CGZ_Loop08
	dc.b		nBb6,	$06,	nBb6,	$06
	smpsPSGvoice	$01
	dc.b		nBb6,	$06
	smpsPSGvoice	$01
	dc.b		nBb6,	$1E
CGZ_Loop09:
	smpsCall	CGZ_Call05
	smpsLoop	$01,	$1D,	CGZ_Loop09
	dc.b		nBb6,	$06,	nBb6,	$06
	smpsPSGvoice	$02
	dc.b		nBb6,	$06
	smpsPSGvoice	$01
	dc.b		nBb6,	$36
	smpsJump	CGZ_Loop06
	smpsStop

CGZ_Call05:
	smpsPSGvoice	$02
	dc.b		nBb6,	$06,	nBb6,	$06
	smpsPSGvoice	$01
	dc.b		nBb6,	$06
	smpsPSGvoice	$02
	dc.b		nBb6,	$06
	smpsReturn

CGZ_Voices:
	dc.b		$3C,$01,$00,$00,$00,$1F,$1F,$15,$1F,$11,$0D,$12,$05,$07,$04,$09
	dc.b		$02,$55,$3A,$25,$1A,$1A,$80,$07,$80;			Voice 00
	dc.b		$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04
	dc.b		$04,$25,$1A,$1A,$1A,$15,$80,$80,$80;			Voice 01
	dc.b		$03,$00,$D7,$33,$02,$5F,$9F,$5F,$1F,$13,$0F,$0A,$0A,$10,$0F,$02
	dc.b		$09,$35,$15,$25,$1A,$13,$16,$15,$80;			Voice 02
	dc.b		$34,$70,$72,$31,$31,$1F,$1F,$1F,$1F,$10,$06,$06,$06,$01,$06,$06
	dc.b		$06,$35,$1A,$15,$1A,$10,$83,$18,$83;			Voice 03
	dc.b		$3E,$77,$71,$32,$31,$1F,$1F,$1F,$1F,$0D,$06,$00,$00,$08,$06,$00
	dc.b		$00,$15,$0A,$0A,$0A,$1B,$80,$80,$80;			Voice 04
	dc.b		$34,$33,$41,$7E,$74,$5B,$9F,$5F,$1F,$04,$07,$07,$08,$00,$00,$00
	dc.b		$00,$FF,$FF,$EF,$FF,$23,$80,$29,$87;			Voice 05
	dc.b		$3A,$01,$07,$31,$71,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 06
	dc.b		$3C,$32,$32,$71,$42,$1F,$18,$1F,$1E,$07,$1F,$07,$1F,$00,$00,$00
	dc.b		$00,$1F,$0F,$1F,$0F,$1E,$80,$0C,$80;			Voice 07
	dc.b		$3C,$71,$72,$3F,$34,$8D,$52,$9F,$1F,$09,$00,$00,$0D,$00,$00,$00
	dc.b		$00,$23,$08,$02,$F7,$15,$80,$1D,$87;			Voice 08
	dc.b		$3D,$01,$01,$00,$00,$8E,$52,$14,$4C,$08,$08,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$1F,$1F,$1F,$1B,$80,$80,$9B;			Voice 09
	dc.b		$3A,$01,$01,$01,$02,$8D,$07,$07,$52,$09,$00,$00,$03,$01,$02,$02
	dc.b		$00,$52,$02,$02,$28,$18,$22,$18,$80;			Voice 0A
	dc.b		$3C,$36,$31,$76,$71,$94,$9F,$96,$9F,$12,$00,$14,$0F,$04,$0A,$04
	dc.b		$0D,$2F,$0F,$4F,$2F,$33,$80,$1A,$80;			Voice 0B
	dc.b		$34,$33,$41,$7E,$74,$5B,$9F,$5F,$1F,$04,$07,$07,$08,$00,$00,$00
	dc.b		$00,$FF,$FF,$EF,$FF,$23,$90,$29,$97;			Voice 0C
	dc.b		$38,$63,$31,$31,$31,$10,$13,$1A,$1B,$0E,$00,$00,$00,$00,$00,$00
	dc.b		$00,$3F,$0F,$0F,$0F,$1A,$19,$1A,$80;			Voice 0D
	dc.b		$3A,$31,$25,$73,$41,$5F,$1F,$1F,$9C,$08,$05,$04,$05,$03,$04,$02
	dc.b		$02,$2F,$2F,$1F,$2F,$29,$27,$1F,$80;			Voice 0E
	dc.b		$04,$71,$41,$31,$31,$12,$12,$12,$12,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$0F,$0F,$0F,$0F,$23,$80,$23,$80;			Voice 0F
	dc.b		$14,$75,$72,$35,$32,$9F,$9F,$9F,$9F,$05,$05,$00,$0A,$05,$05,$07
	dc.b		$05,$2F,$FF,$0F,$2F,$1E,$80,$14,$80;			Voice 10
	dc.b		$3D,$01,$00,$01,$02,$12,$1F,$1F,$14,$07,$02,$02,$0A,$05,$05,$05
	dc.b		$05,$2F,$2F,$2F,$AF,$1C,$80,$82,$80;			Voice 11
	dc.b		$1C,$73,$72,$33,$32,$94,$99,$94,$99,$08,$0A,$08,$0A,$00,$05,$00
	dc.b		$05,$3F,$4F,$3F,$4F,$1E,$80,$19,$80;			Voice 12
	dc.b		$31,$33,$01,$00,$00,$9F,$1F,$1F,$1F,$0D,$0A,$0A,$0A,$0A,$07,$07
	dc.b		$07,$FF,$AF,$AF,$AF,$1E,$1E,$1E,$80;			Voice 13
	dc.b		$3A,$70,$76,$30,$71,$1F,$95,$1F,$1F,$0E,$0F,$05,$0C,$07,$06,$06
	dc.b		$07,$2F,$4F,$1F,$5F,$21,$12,$28,$80;			Voice 14
	even
