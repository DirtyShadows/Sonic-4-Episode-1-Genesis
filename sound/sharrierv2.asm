; =============================================================================================
; Project Name:		SonicRetro
; Created:		4th November 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SonicRetro_Header:
	smpsHeaderVoice	SonicRetro_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$03

	smpsHeaderDAC	SonicRetro_DAC
	smpsHeaderFM	SonicRetro_FM1,	smpsPitch02lo-$03,	$04
	smpsHeaderFM	SonicRetro_FM2,	smpsPitch00-$03,	$0D
	smpsHeaderFM	SonicRetro_FM3,	smpsPitch00-$03,	$10
	smpsHeaderFM	SonicRetro_FM4,	smpsPitch00-$03,	$0F
	smpsHeaderFM	SonicRetro_FM5,	smpsPitch00-$03,	$10
	smpsHeaderPSG	SonicRetro_PSG1,	smpsPitch03lo-$03,	$00,	$03
	smpsHeaderPSG	SonicRetro_PSG2,	smpsPitch03lo-$03,	$00,	$05
	smpsHeaderPSG	SonicRetro_PSG3,	smpsPitch02hi-$0B,	$05,	$05

; FM1 Data
SonicRetro_FM1:
	smpsFMvoice	$00
	dc.b		nRst,	$20
SonicRetro_Loop01:
	dc.b		nEb3,	$08,	nEb4,	$04,	nRst
	smpsLoop	$00,	$18,	SonicRetro_Loop01
	dc.b		nAb2,	$08,	nAb2,	nAb2,	nRst,	nRst,	nF3,	nRst
	dc.b		nEb3,	nRst,	nRst,	nRst,	nRst,	nEb3
	smpsStop
	dc.b		$00

; FM2 Data
SonicRetro_FM2:
	smpsFMvoice	$01
	dc.b		nRst,	$20
SonicRetro_Loop02:
	smpsPan		panLeft,	$00
	dc.b		nEb5,	$04
	smpsPan		panCentre,	$00
	dc.b		nBb4,	$04
	smpsPan		panRight,	$00
	dc.b		nEb4,	$04
	smpsPan		panCentre,	$00
	dc.b		nBb4,	$04
	smpsLoop	$00,	$04,	SonicRetro_Loop02
SonicRetro_Loop03:
	smpsPan		panLeft,	$00
	dc.b		nEb5,	$04
	smpsPan		panCentre,	$00
	dc.b		nAb4,	$04
	smpsPan		panRight,	$00
	dc.b		nEb4,	$04
	smpsPan		panCentre,	$00
	dc.b		nAb4,	$04
	smpsLoop	$00,	$04,	SonicRetro_Loop03
SonicRetro_Loop04:
	smpsPan		panLeft,	$00
	dc.b		nEb5,	$04
	smpsPan		panCentre,	$00
	dc.b		nAb4,	$04
	smpsPan		panRight,	$00
	dc.b		nEb4,	$04
	smpsPan		panCentre,	$00
	dc.b		nAb4,	$04
	smpsLoop	$00,	$04,	SonicRetro_Loop04
SonicRetro_Loop05:
	smpsPan		panLeft,	$00
	dc.b		nEb5,	$04
	smpsPan		panCentre,	$00
	dc.b		nBb4,	$04
	smpsPan		panRight,	$00
	dc.b		nEb4,	$04
	smpsPan		panCentre,	$00
	dc.b		nBb4,	$04
	smpsLoop	$00,	$04,	SonicRetro_Loop05
SonicRetro_Loop06:
	smpsPan		panLeft,	$00
	dc.b		nEb5,	$04
	smpsPan		panCentre,	$00
	dc.b		nBb4,	$04
	smpsPan		panRight,	$00
	dc.b		nEb4,	$04
	smpsPan		panCentre,	$00
	dc.b		nBb4,	$04
	smpsLoop	$00,	$04,	SonicRetro_Loop06
SonicRetro_Loop07:
	smpsPan		panLeft,	$00
	dc.b		nEb5,	$04
	smpsPan		panCentre,	$00
	dc.b		nAb4,	$04
	smpsPan		panRight,	$00
	dc.b		nEb4,	$04
	smpsPan		panCentre,	$00
	dc.b		nAb4,	$04
	smpsLoop	$00,	$04,	SonicRetro_Loop07
	smpsPan		panLeft,	$00
	dc.b		nAb5,	$04,	nRst
	smpsPan		panCentre,	$00
	dc.b		nEb5,	$04,	nRst
	smpsPan		panRight,	$00
	dc.b		nAb4,	$04,	nRst
	smpsPan		panCentre,	$00
	dc.b		nEb5,	$04,	nRst
	smpsPan		panLeft,	$00
	dc.b		nAb5,	$04,	nRst
	smpsPan		panCentre,	$00
	dc.b		nEb5,	$04,	nRst
	smpsPan		panRight,	$00
	dc.b		nRst,	$04,	nRst
	smpsPan		panCentre,	$00
	dc.b		nEb5
	smpsStop
	dc.b		$00

; FM3 Data
SonicRetro_FM3:
	smpsFMvoice	$02
	dc.b		nRst,	$21
	smpsPan		panRight,	$00
	dc.b		nG5,	$28,	nRst,	$08,	nG5,	$04,	nRst,	nAb5
	dc.b		$38,	nRst,	$10,	nB5,	$24,	nRst,	$04,	nEb6
	dc.b		$08,	nRst,	nEb6,	$38,	nRst,	$10,	nBb5,	$28
	dc.b		nRst,	$08,	nEb6,	$04,	nRst,	nEb6,	$38,	nRst
	dc.b		$10,	nB5,	$04,	nRst,	nF6,	nRst,	nB5,	$08
	dc.b		nRst,	nRst,	nB5,	nRst,	nEb6,	nRst,	$20,	nBb4
	dc.b		$08
	smpsStop

; FM4 Data
SonicRetro_FM4:
	smpsFMvoice	$02
	dc.b		nRst,	$20
	smpsPan		panCentre,	$0C
	dc.b		nBb5,	$28,	nRst,	$08,	nBb5,	$04,	nRst,	nC6
	dc.b		$38,	nRst,	$10,	nEb6,	$24,	nRst,	$04,	nB5
	dc.b		$08,	nRst,	nBb5,	$38,	nRst,	$10,	nG5,	$28
	dc.b		nRst,	$08,	nBb5,	$04,	nRst,	nC6,	$38,	nRst
	dc.b		$10,	nAb5,	$04,	nRst,	nB5,	nRst,	nF6,	$08
	dc.b		nRst,	nRst,	nF6,	nRst,	nBb5,	nRst,	$20,	nEb5
	dc.b		$08
	smpsStop

; FM5 Data
SonicRetro_FM5:
	smpsFMvoice	$02
	dc.b		nRst,	$21
	smpsPan		panLeft,	$00
	dc.b		nEb6,	$28,	nRst,	$08,	nEb6,	$04,	nRst,	nEb6
	dc.b		$38,	nRst,	$10,	nAb5,	$24,	nRst,	$04,	nAb5
	dc.b		$08,	nRst,	nG5,	$38,	nRst,	$10,	nEb6,	$28
	dc.b		nRst,	$08,	nG5,	$04,	nRst,	nAb5,	$38,	nRst
	dc.b		$10,	nF6,	$04,	nRst,	nAb5,	nRst,	nAb5,	$08
	dc.b		nRst,	nRst,	nAb5,	nRst,	nG5,	nRst,	$20,	nG5
	dc.b		$08
	smpsStop

; PSG1 Data
SonicRetro_PSG1:
	dc.b		nRst,	$20,	nRst,	$10,	nEb5,	$03,	nRst,	$05
	dc.b		nEb5,	$03,	nRst,	$05,	nBb4,	$08,	nRst,	$04
	dc.b		nBb4,	$04,	nRst,	$20,	nEb5,	$03,	nRst,	$05
	dc.b		nEb5,	$03,	nRst,	$05,	nC5,	$08,	nRst,	$04
	dc.b		nC5,	$04,	nRst,	$20,	nB4,	$03,	nRst,	$05
	dc.b		nEb5,	$03,	nRst,	$05,	nB4,	$08,	nRst,	$04
	dc.b		nB4,	$04,	nRst,	$20,	nBb4,	$03,	nRst,	$05
	dc.b		nBb4,	$03,	nRst,	$05,	nG5,	$08,	nRst,	$04
	dc.b		nF5,	$08,	nRst,	$04,	nBb4,	$08,	nRst,	$10
	dc.b		nEb5,	$03,	nRst,	$05,	nEb5,	$03,	nRst,	$05
	dc.b		nBb4,	$08,	nRst,	$04,	nBb4,	$04,	nRst,	$20
	dc.b		nEb5,	$03,	nRst,	$05,	nEb5,	$03,	nRst,	$05
	dc.b		nC5,	$08,	nRst,	$04,	nC5,	$04,	nRst,	$10
	dc.b		nEb5,	$03,	nRst,	$05,	nAb5,	$03,	nRst,	$05
	dc.b		nAb5,	$08,	nRst,	$10,	nEb5,	$08,	nRst,	nG5
	dc.b		nRst,	$20,	nEb4,	$08
	smpsStop
	dc.b		$00

; PSG2 Data
SonicRetro_PSG2:
	dc.b		nRst,	$20,	nRst,	$10,	nBb4,	$03,	nRst,	$05
	dc.b		nBb4,	$03,	nRst,	$05,	nD5,	$08,	nRst,	$04
	dc.b		nEb5,	$04,	nRst,	$20,	nC5,	$03,	nRst,	$05
	dc.b		nC5,	$03,	nRst,	$05,	nF5,	$08,	nRst,	$04
	dc.b		nEb5,	$04,	nRst,	$20,	nEb5,	$03,	nRst,	$05
	dc.b		nB4,	$03,	nRst,	$05,	nD5,	$08,	nRst,	$04
	dc.b		nEb5,	$04,	nRst,	$20,	nEb5,	$03,	nRst,	$05
	dc.b		nF5,	$03,	nRst,	$05,	nBb4,	$08,	nRst,	$04
	dc.b		nBb4,	$08,	nRst,	$04,	nEb5,	$08,	nRst,	$10
	dc.b		nBb4,	$03,	nRst,	$05,	nBb4,	$03,	nRst,	$05
	dc.b		nD5,	$08,	nRst,	$04,	nEb5,	$04,	nRst,	$20
	dc.b		nC5,	$03,	nRst,	$05,	nC5,	$03,	nRst,	$05
	dc.b		nF5,	$08,	nRst,	$04,	nEb5,	$04,	nRst,	$10
	dc.b		nAb5,	$03,	nRst,	$05,	nEb5,	$03,	nRst,	$05
	dc.b		nEb5,	$08,	nRst,	$10,	nAb5,	$08,	nRst,	nEb5
	dc.b		nRst,	$20,	nEb5,	$08
	smpsStop
	dc.b		$00

; PSG3 Data
SonicRetro_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02
	dc.b		nRst,	$20
SonicRetro_Loop08:
	dc.b		nRst,	$08,	nAb6,	$04,	nAb6,	nRst,	$08,	nAb6
	dc.b		$04,	nAb6,	nRst,	$08,	nRst,	$04,	nAb6,	nRst
	dc.b		$08,	nAb6,	$04,	nAb6,	nRst,	$08,	nAb6,	$04
	dc.b		nAb6,	nRst,	$08,	nRst,	$04,	nAb6,	nAb6,	nAb6
	dc.b		nRst,	$04,	nAb6,	nRst,	$08,	nAb6,	$04,	nAb6
	smpsLoop	$00,	$03,	SonicRetro_Loop08
	smpsStop

; DAC Data
SonicRetro_DAC:
	dc.b		dSnare,	$04,	dKick,	dKick,	dKick,	dSnare,	nRst,	nRst
	dc.b		nRst
SonicRetro_Loop09:
	dc.b		dKick,	$08,	nRst,	dSnare,	nRst,	dKick,	dKick,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	dKick,	nRst,	dKick,	dSnare
	dc.b		nRst
	smpsLoop	$00,	$03,	SonicRetro_Loop09
	dc.b		dSnare,	$08,	dSnare,	dSnare
	smpsPan		panLeft,	$00
	dc.b		dHiTimpaniS1,	$04
	smpsPan		panCentre,	$00
	dc.b		dMidTimpaniS1,	$04
	smpsPan		panRight,	$00
	dc.b		dLowTimpaniS1,	$04,	nRst,	$04
	smpsPan		panCentre,	$00
	dc.b		dKick,	$08,	nRst,	dSnare,	nRst,	nRst,	nRst,	nRst
	dc.b		dCrashCymbal
	smpsStop
	dc.b		$00

SonicRetro_Voices:
	dc.b		$3B,$52,$31,$31,$51,$12,$14,$12,$14,$0D,$00,$0D,$02,$00,$00,$00
	dc.b		$01,$4F,$0F,$5F,$3F,$1E,$18,$2D,$00;			Voice 00
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 01
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$10,$07,$10,$07,$1A,$80,$16,$80;			Voice 02
	dc.b		$00;			Voice 03
	even
