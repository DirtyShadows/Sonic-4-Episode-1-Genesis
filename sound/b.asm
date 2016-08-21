; =============================================================================================
; Project Name:		UnknownTrackfromS1HL
; Created:		29th December 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

UnknownTrackfromS1HL_Header:
	smpsHeaderVoice	UnknownTrackfromS1HL_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$0A

	smpsHeaderDAC	UnknownTrackfromS1HL_DAC
	smpsHeaderFM	UnknownTrackfromS1HL_FM1,	smpsPitch01lo,	$19
	smpsHeaderFM	UnknownTrackfromS1HL_FM2,	smpsPitch01lo,	$16
	smpsHeaderFM	UnknownTrackfromS1HL_FM3,	smpsPitch01lo,	$08
	smpsHeaderFM	UnknownTrackfromS1HL_FM4,	smpsPitch01lo,	$16
	smpsHeaderFM	UnknownTrackfromS1HL_FM5,	smpsPitch01lo,	$22
	smpsHeaderPSG	UnknownTrackfromS1HL_PSG1,	smpsPitch04lo,	$04,	$03
	smpsHeaderPSG	UnknownTrackfromS1HL_PSG2,	smpsPitch04lo,	$04,	$03
	smpsHeaderPSG	UnknownTrackfromS1HL_PSG3,	smpsPitch04lo,	$04,	$03

; FM1 Data
UnknownTrackfromS1HL_FM1:
	smpsFMvoice	$02
	smpsModSet	$05,	$01,	$02,	$02
	dc.b		nE6,	$03,	nEb6,	nE6,	nEb6,	nE6,	$03,	nRst
	dc.b		nF6,	nRst,	nG6,	$0C,	nF6,	$03,	nRst,	nE6
	dc.b		nRst,	nF6,	$0C,	nE6,	$03,	nRst,	nD6,	nRst
	dc.b		nC6,	$0C,	nD6,	nE6,	$03,	nEb6,	nE6,	nEb6
	dc.b		nE6,	nRst,	nF6,	nRst,	nG6,	$0C,	nA6,	nBb6
	dc.b		$06,	nA6,	$03,	nRst,	nG6,	nRst,	nF6,	nRst
	dc.b		nG6,	$18,	nE6,	$03,	nEb6,	nE6,	nEb6,	nE6
	dc.b		$03,	nRst,	nF6,	nRst,	nG6,	$0C,	nF6,	$03
	dc.b		nRst,	nE6,	nRst,	nF6,	$0C,	nE6,	$03,	nRst
	dc.b		nD6,	nRst,	nC6,	$0C,	nD6,	nE6,	$03,	nEb6
	dc.b		nE6,	nEb6,	nE6,	nEb6,	nE6,	nEb6,	nE6,	$15
	dc.b		nRst,	$03,	nF6,	$03,	nE6,	nF6,	nF6,	$06
	dc.b		nE6,	$03,	nF6,	nE6,	nF6,	$15,	nRst,	$03
	smpsLoop	$00,	$02,	UnknownTrackfromS1HL_FM1
	smpsAlterVol	$FA
	smpsFMvoice	$06
	dc.b		nA5,	$0C,	nB5,	$06,	nC6,	nD6,	$0C,	nE6
	dc.b		$06,	nF6,	nG6,	$0C,	nE6,	$06,	nD6,	nC6
	dc.b		$0C,	nB5,	nA5,	nB5,	$06,	nC6,	nD6,	$0C
	dc.b		nE6,	$06,	nF6,	nG6,	$30,	nA5,	$0C,	nB5
	dc.b		$06,	nC6,	nD6,	$0C,	nE6,	$06,	nF6,	nG6
	dc.b		$0C,	nA6,	$06,	nB6,	nC7,	$0C,	nD7,	$06
	dc.b		nE7,	nF7,	$0C,	nE7,	$06,	nD7,	nC7,	$0C
	dc.b		nB6,	nC7,	$30
	smpsAlterVol	$06
	smpsJump	UnknownTrackfromS1HL_FM1

; FM2 Data
UnknownTrackfromS1HL_FM2:
	smpsAlterVol	$05
UnknownTrackfromS1HL_Loop01:
	smpsFMvoice	$02
	smpsPan		panLeft,	$00
	dc.b		nC6,	$03,	nB5,	nC6,	nB5,	nC6,	nRst,	nD6
	dc.b		nRst,	nE6,	$0C,	nD6,	$03,	nRst,	nC6,	nRst
	dc.b		nA5,	$18,	nG5,	nC6,	$03,	nB5,	nC6,	nB5
	dc.b		nC6,	nRst,	nD6,	nRst,	nE6,	$18,	nF6,	$0C
	dc.b		nC6,	nB5,	$18,	nC6,	$03,	nB5,	nC6,	nB5
	dc.b		nC6,	nRst,	nD6,	nRst,	nE6,	$0C,	nD6,	$03
	dc.b		nRst,	nC6,	nRst,	nA5,	$18,	nG5,	nC6,	$03
	dc.b		nB5,	nC6,	nB5,	nC6,	nB5,	nC6,	nB5,	nC6
	dc.b		$18,	nD6,	$03,	nCs6,	nD6,	nCs6,	nD6,	nCs6
	dc.b		nD6,	nCs6,	nD6,	$18
	smpsLoop	$00,	$02,	UnknownTrackfromS1HL_Loop01
	smpsAlterVol	$FB
	smpsFMvoice	$07
	smpsAlterVol	$FF
	dc.b		nF5,	nG5,	nC6,	nA5,	nF5,	nG5,	nC6,	$0C
	dc.b		nE6,	$06,	nG6,	nC7,	$18,	nF5,	nG5,	nC6
	dc.b		nA5,	nF5,	nG5,	nC6,	$0C,	nE6,	$06,	nG6
	dc.b		nC7,	$18
	smpsAlterVol	$01
	smpsJump	UnknownTrackfromS1HL_FM2

; FM3 Data
UnknownTrackfromS1HL_FM3:
	smpsFMvoice	$01
UnknownTrackfromS1HL_Loop02:
	dc.b		nC4,	$0C,	nG3,	nA3,	nE3,	nF3,	nD3,	nG3
	dc.b		nD3,	nC4,	nG3,	nA3,	nE3,	nF3,	nD3,	nG3
	dc.b		nA3,	$06,	nB3
	smpsLoop	$00,	$04,	UnknownTrackfromS1HL_Loop02
	dc.b		nF4,	$0C,	nD4,	nG4,	nD4,	nC4,	nG3,	nA3
	dc.b		nE3,	nF4,	nD4,	nG4,	nD4,	nC4,	nG3,	nA3
	dc.b		nE3,	nF4,	nD4,	nG4,	nD4,	nC4,	nG3,	nA3
	dc.b		nE3,	nF4,	nD4,	nG4,	nD4,	nC4,	nG3,	nC4
	dc.b		$18
	smpsJump	UnknownTrackfromS1HL_Loop02

; FM4 Data
UnknownTrackfromS1HL_FM4:
	smpsPan		panRight,	$00
	smpsFMvoice	$09
	dc.b		nC6,	$03,	nB5,	nC6,	nB5,	nC6,	$06,	nD6
	dc.b		nE6,	$02,	$02,	$02,	$02,	$02,	$02,	nD6
	dc.b		$06,	nC6,	nA5,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$06,	nA5,	$06,	nG5,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$06,	$06,	nC6,	$03,	nB5
	dc.b		nC6,	nB5,	nC6,	$06,	nD6,	nE6,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$06,	$06,	nF6,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	nC6,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	nB5,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	nB5,	$06
	dc.b		nC6,	$03,	nB5,	nC6,	nB5,	nC6,	$06,	nD6
	dc.b		nE6,	$02,	$02,	$02,	$02,	$02,	$02,	nD6
	dc.b		$06,	nC6,	nA5,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$06,	$06,	nG5,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$06,	$06,	nC6,	$03,	nB5,	nC6
	dc.b		nB5,	nC6,	nB5,	nC6,	nB5,	nC6,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	nC6,	$0C,	nD6,	$03
	dc.b		nCs6,	nD6,	nCs6,	nD6,	nCs6,	nD6,	nCs6,	nD6
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	nD6,	$0C
	smpsLoop	$00,	$02,	UnknownTrackfromS1HL_FM4
	smpsFMvoice	$00
	smpsAlterVol	$07
	dc.b		nA5,	$03,	nC5,	nA5,	nC5,	nA5,	nC5,	nA5
	dc.b		nC5,	nB5,	nD5,	nB5,	nD5,	nB5,	nD5,	nB5
	dc.b		nD5,	nC6,	nE5,	nC6,	nE5,	nC6,	nE5,	nC6
	dc.b		nE5,	nC6,	nE5,	nC6,	nE5,	nC6,	nE5,	nC6
	dc.b		nE5,	nA5,	nC5,	nA5,	nC5,	nA5,	nC5,	nA5
	dc.b		nC5,	nB5,	nD5,	nB5,	nD5,	nB5,	nD5,	nB5
	dc.b		nD5,	nC6,	nE5,	nC6,	nE5,	nC6,	nE5,	nC6
	dc.b		nE5,	nC6,	nE5,	nC6,	nE5,	nC6,	nE5,	nC6
	dc.b		nE5,	nA5,	nC5,	nA5,	nC5,	nA5,	nC5,	nA5
	dc.b		nC5,	nB5,	nD5,	nB5,	nD5,	nB5,	nD5,	nB5
	dc.b		nD5,	nC6,	nE5,	nC6,	nE5,	nC6,	nE5,	nC6
	dc.b		nE5,	nC6,	nE5,	nC6,	nE5,	nC6,	nE5,	nC6
	dc.b		nE5,	nA5,	nC5,	nA5,	nC5,	nA5,	nC5,	nA5
	dc.b		nC5,	nB5,	nD5,	nB5,	nD5,	nB5,	nD5,	nB5
	dc.b		nD5,	nC6,	nE5,	nC6,	nE5,	nC6,	nE5,	nC6
	dc.b		nE5,	nC6,	$18
	smpsAlterVol	$F9
	smpsJump	UnknownTrackfromS1HL_FM4

; FM5 Data
UnknownTrackfromS1HL_FM5:
	dc.b		nRst,	$06
	smpsAlterNote	$F9
	smpsPan		panRight,	$00
	smpsJump	UnknownTrackfromS1HL_FM1

; PSG1 Data
UnknownTrackfromS1HL_PSG1:
	dc.b		nRst,	$06,	nE6,	nRst,	nE6,	nRst,	nG6,	nRst
	dc.b		nG6,	nRst,	nF6,	nRst,	nF6,	nRst,	nG6,	nRst
	dc.b		nG6,	nRst,	nE6,	nRst,	nE6,	nRst,	nE6,	nRst
	dc.b		nE6,	nRst,	nF6,	nRst,	nF6,	nRst,	nG6,	nRst
	dc.b		nG6,	nRst,	nE6,	nRst,	nE6,	nRst,	nG6,	nRst
	dc.b		nG6,	nRst,	nF6,	nRst,	nF6,	nRst,	nG6,	nRst
	dc.b		nG6,	nRst,	nE6,	nRst,	nE6,	nRst,	nE6,	nRst
	dc.b		nE6,	nRst,	nF6,	nRst,	nF6,	nRst,	nF6,	nRst
	dc.b		nF6
	smpsLoop	$00,	$02,	UnknownTrackfromS1HL_PSG1
	dc.b		nA5,	$06,	nC5,	nA5,	nF5,	nG5,	nD5,	nB5
	dc.b		nG5,	nG5,	nE5,	nC6,	nG5,	nA5,	nE5,	nC6
	dc.b		nA5,	nF5,	nC5,	nA5,	nF5,	nG5,	nD5,	nB5
	dc.b		nG5,	nG5,	nE5,	nC6,	nG5,	nA5,	nE5,	nC6
	dc.b		nA5,	nF5,	nC5,	nA5,	nF5,	nG5,	nD5,	nB5
	dc.b		nG5,	nG5,	nE5,	nC6,	nG5,	nA5,	nE5,	nC6
	dc.b		nA5,	nF5,	nC5,	nA5,	nF5,	nG5,	nD5,	nB5
	dc.b		nG5,	nE5,	nG5,	nC6,	nE6,	nG6,	nRst,	$12
	smpsJump	UnknownTrackfromS1HL_PSG1

; PSG2 Data
UnknownTrackfromS1HL_PSG2:
	dc.b		nRst,	$06,	nC6,	nRst,	nC6,	nRst,	nE6,	nRst
	dc.b		nE6,	nRst,	nC6,	nRst,	nC6,	nRst,	nD6,	nRst
	dc.b		nD6,	nRst,	nC6,	nRst,	nC6,	nRst,	nC6,	nRst
	dc.b		nC6,	nRst,	nC6,	nRst,	nC6,	nRst,	nD6,	nRst
	dc.b		nD6,	nRst,	nC6,	nRst,	nC6,	nRst,	nE6,	nRst
	dc.b		nE6,	nRst,	nC6,	nRst,	nC6,	nRst,	nD6,	nRst
	dc.b		nD6,	nRst,	nC6,	nRst,	nC6,	nRst,	nC6,	nRst
	dc.b		nC6,	nRst,	nD6,	nRst,	nD6,	nRst,	nD6,	nRst
	dc.b		nD6
	smpsLoop	$00,	$02,	UnknownTrackfromS1HL_PSG2
	dc.b		nF5,	$06,	nF5,	nC6,	nA5,	nB5,	nG5,	nD6
	dc.b		nB5,	nC6,	nG5,	nE6,	nC6,	nC6,	nA5,	nE6
	dc.b		nC6,	nA5,	nF5,	nC6,	nA5,	nB5,	nG5,	nD6
	dc.b		nB5,	nC6,	nG5,	nE6,	nC6,	nC6,	nA5,	nE6
	dc.b		nC6,	nA5,	nF5,	nC6,	nA5,	nB5,	nG5,	nD6
	dc.b		nB5,	nC6,	nG5,	nE6,	nC6,	nC6,	nA5,	nE6
	dc.b		nC6,	nA5,	nF5,	nC6,	nA5,	nB5,	nG5,	nD6
	dc.b		nB5,	nG5,	nC6,	nE6,	nG6,	nC7,	nRst,	$12
	smpsJump	UnknownTrackfromS1HL_PSG2

; PSG3 Data
UnknownTrackfromS1HL_PSG3:
	dc.b		nRst,	$06,	nG5,	nRst,	nG5,	nRst,	nC6,	nRst
	dc.b		nC6,	nRst,	nA5,	nRst,	nA5,	nRst,	nB5,	nRst
	dc.b		nB5,	nRst,	nG5,	nRst,	nG5,	nRst,	nA5,	nRst
	dc.b		nA5,	nRst,	nA5,	nRst,	nA5,	nRst,	nB5,	nRst
	dc.b		nB5,	nRst,	nG5,	nRst,	nG5,	nRst,	nC6,	nRst
	dc.b		nC6,	nRst,	nA5,	nRst,	nA5,	nRst,	nB5,	nRst
	dc.b		nB5,	nRst,	nG5,	nRst,	nG5,	nRst,	nA5,	nRst
	dc.b		nA5,	nRst,	nA5,	nRst,	nA5,	nRst,	nB5,	nRst
	dc.b		nB5
	smpsLoop	$00,	$02,	UnknownTrackfromS1HL_PSG3
UnknownTrackfromS1HL_Loop03:
	dc.b		nRst,	$30
	smpsLoop	$00,	$08,	UnknownTrackfromS1HL_Loop03
	smpsJump	UnknownTrackfromS1HL_PSG3

; DAC Data
UnknownTrackfromS1HL_DAC:
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	dQuickLooseSnare
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dElectricHighTom,	dElectricMidTom,	dElectricFloorTom
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	dQuickLooseSnare
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dElectricHighTom,	dElectricMidTom,	dElectricFloorTom
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	dKick
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$0C,	dQuickLooseSnare,	dKick,	$06,	dKick,	dQuickLooseSnare,	$0C
	dc.b		dKick,	$06,	dQuickLooseSnare,	dElectricMidTom,	$03,	dElectricMidTom,	dElectricFloorTom,	$06
	dc.b		dKick,	dQuickLooseSnare,	dQuickLooseSnare,	dQuickLooseSnare
	smpsJump	UnknownTrackfromS1HL_DAC

UnknownTrackfromS1HL_Voices:
	dc.b		$2D,$01,$62,$03,$21,$30,$1F,$13,$26,$08,$08,$08,$03,$05,$00,$03
	dc.b		$00,$1F,$1B,$1B,$1B,$1A,$80,$80,$80;			Voice 00
	dc.b		$35,$01,$31,$70,$00,$1F,$1F,$1F,$1F,$0D,$0B,$0B,$0B,$12,$12,$12
	dc.b		$12,$80,$9F,$9F,$9F,$15,$8F,$8F,$8F;			Voice 01
	dc.b		$3D,$01,$62,$03,$21,$30,$1F,$13,$26,$08,$08,$08,$03,$05,$00,$03
	dc.b		$00,$0F,$1B,$1B,$1B,$1A,$80,$80,$80;			Voice 02
	dc.b		$38,$04,$12,$30,$71,$1F,$1F,$1F,$1F,$0B,$0B,$0A,$0A,$00,$00,$00
	dc.b		$00,$4F,$4F,$AF,$AB,$14,$1B,$18,$80;			Voice 03
	dc.b		$3C,$01,$62,$01,$22,$17,$1F,$1F,$1F,$07,$08,$07,$08,$05,$00,$03
	dc.b		$00,$0F,$1B,$1B,$1B,$11,$80,$09,$80;			Voice 04
	dc.b		$59,$04,$11,$34,$71,$1F,$1F,$1F,$1F,$0E,$0E,$0E,$0B,$11,$0C,$0E
	dc.b		$00,$3F,$3F,$3F,$7F,$1F,$11,$1A,$80;			Voice 05
	dc.b		$2C,$01,$01,$20,$00,$1D,$1D,$1D,$1D,$06,$02,$06,$02,$10,$03,$00
	dc.b		$03,$4F,$5F,$AF,$8F,$16,$85,$10,$85;			Voice 06
	dc.b		$24,$01,$02,$04,$41,$1E,$1E,$1E,$1E,$0B,$09,$18,$04,$0B,$19,$18
	dc.b		$1D,$2F,$4F,$4F,$4F,$0F,$80,$40,$80;			Voice 07
	dc.b		$0C,$0A,$01,$38,$72,$1F,$1D,$1F,$1D,$0C,$06,$07,$06,$10,$13,$00
	dc.b		$13,$47,$57,dElectricMidTom,$87,$1F,$81,$22,$82;			Voice 08
	dc.b		$0C,$02,$01,$38,$71,$1F,$1D,$1F,$1D,$13,$0D,$11,$07,$10,$15,$00
	dc.b		$15,$47,$57,dElectricMidTom,$87,$19,$81,$1B,$82;			Voice 09
	dc.b		$00,$06,$E6,$06,$03,$01,$04,$06,$40,$00,$00,$00,$30,$F6,$15,$02
	dc.b		$2B,$DE,$09,$02,$96,$F6,$15,$03,$DF;			Voice 0A
	dc.b		$F6,$15,$05,$00,$F6,$15,$05,$6B,$D2,$06,$00,$00,$05,$69,$D2,$0A
	dc.b		$00,$00,$05,$F0,$03,$07,$00,$00,$80;			Voice 0B
	dc.b		$30,$80,$60,$F7,$00,$07,$FF,$FA,$EF,$03,$80,$50,$F8,$00,$9D,$F8
	dc.b		$00,$ED,$BA,$4C,$E7,$30,$80,$30,$EF;			Voice 0C
	dc.b		$02,$F0,$08,$0E,$02,$07,$F8,$01,$2B,$F8,$01,$7F,$F8,$01,$25,$D4
	dc.b		$04,$80,$E6,$0F,$D4,$E6,$0A,$D4,$06;			Voice 0D
	dc.b		$80,$02,$E6,$05,$D4,$04,$E6,$E2,$D2,$80,$E6,$0F,$D2,$E6,$0A,$D2
	dc.b		$80,$E6,$05,$D2,$E6,$E2,$D0,$80,$E6;			Voice 0E
	dc.b		$0F,$D0,$E6,$0A,$D0,$80,$E6,$05,$D0,$E6,$E2,$CF,$80,$E6,$0F,$CF
	dc.b		$E6,$0A,$CF,$80,$E6,$05,$CF,$E6,$E2;			Voice 0F
	dc.b		$D0,$0C,$80,$08,$D0,$04,$80,$08,$D0,$02,$80,$CF,$09,$80,$03,$D0
	dc.b		$04,$80,$14,$D2,$E9,$0C,$F0,$08,$0C;			Voice 10
	dc.b		$05,$18,$CB,$64,$F0,$08,$0C,$03,$04,$CD,$30,$E6,$FD,$D0,$08,$CC
	dc.b		$04,$CB,$08,$C9,$04,$CB,$08,$C9,$04;			Voice 11
	dc.b		$CB,$08,$CC,$04,$C9,$08,$C6,$58,$E7,$60,$E7,$60,$E6,$03,$E9,$F4
	dc.b		$80,$60,$F6,$FF,$57,$CD,$04,$D0,$08;			Voice 12
	dc.b		$CD,$04,$D5,$08,$CD,$04,$D4,$08,$CD,$04,$D0,$08,$D2,$04,$F0,$08
	dc.b		$03,$3C,$08,$CB,$0C,$80,$18,$F0,$10;			Voice 13
	dc.b		$01,$01,$05,$CC,$04,$CB,$C9,$C6,$06,$80,$CB,$80,$C9,$80,$02,$C6
	dc.b		$06,$80,$C4,$80,$C6,$80,$BF,$04,$E6;			Voice 14
	dc.b		$0F,$C0,$E6,$F1,$BF,$BD,$BF,$08,$BD,$04,$BF,$08,$BD,$04,$F0,$08
	dc.b		$02,$3C,$08,$BF,$0C,$F0,$10,$01,$06;			Voice 15
	dc.b		$05,$C4,$54,$E3,$E7,$50,$CD,$04,$D0,$08,$CD,$04,$D5,$08,$CD,$04
	dc.b		$D4,$08,$CD,$04,$D0,$08,$D2,$04,$F0;			Voice 16
	dc.b		$08,$03,$3C,$08,$CB,$0C,$80,$18,$F0,$10,$01,$06,$05,$CC,$04,$CB
	dc.b		$C9,$C6,$06,$80,$CB,$80,$C9,$80,$02;			Voice 17
	dc.b		$C6,$06,$80,$C4,$80,$C6,$80,$BF,$04,$E6,$0F,$C0,$E6,$F1,$BF,$BD
	dc.b		$BF,$08,$BD,$04,$BF,$08,$BD,$04,$BF;			Voice 18
	dc.b		$06,$80,$02,$BD,$06,$80,$E3,$D4,$04,$80,$E6,$0F,$D4,$E6,$0A,$D4
	dc.b		$06,$80,$02,$E6,$05,$D4,$04,$E6,$E2;			Voice 19
	dc.b		$D2,$80,$E6,$0F,$D2,$E6,$0A,$D2,$80,$E6,$05,$D2,$E6,$E2,$D0,$80
	dc.b		$E6,$0F,$D0,$E6,$0A,$D0,$80,$E6,$05;			Voice 1A
	dc.b		$D0,$E6,$E2,$CF,$80,$E6,$0F,$CF,$E6,$0A,$CF,$80,$E6,$05,$CF,$E6
	dc.b		$E2,$D0,$0C,$80,$08,$D0,$04,$80,$08;			Voice 1B
	dc.b		$D0,$02,$80,$CF,$09,$80,$03,$D0,$04,$80,$14,$CF,$CD,$04,$E7,$60
	dc.b		$E7,$60,$E3,$D4,$04,$80,$E6,$0F,$D4;			Voice 1C
	dc.b		$E6,$0A,$D4,$06,$80,$02,$E6,$05,$D4,$04,$E6,$E2,$D2,$80,$E6,$0F
	dc.b		$D2,$E6,$0A,$D2,$80,$E6,$05,$D2,$E6;			Voice 1D
	dc.b		$E2,$D0,$80,$E6,$0F,$D0,$E6,$0A,$D0,$80,$E6,$05,$D0,$E6,$E2,$CF
	dc.b		$80,$E6,$0F,$CF,$E6,$0A,$CF,$80,$E6;			Voice 1E
	dc.b		$05,$CF,$E6,$E2,$D0,$0C,$80,$08,$D0,$04,$80,$08,$D0,$02,$80,$CF
	dc.b		$09,$80,$03,$D0,$04,$80,$14,$D2,$D9;			Voice 1F
	dc.b		$04,$E7,$60,$E7,$60,$E3,$80,$30,$EF,$00,$F8,$00,$2F,$F7,$00,$07
	dc.b		$FF,$F9,$80,$60,$F7,$01,$02,$FF,$F2;			Voice 20
	dc.b		$F8,$00,$38,$F7,$00,$06,$FF,$F9,$F8,$00,$3F,$F8,$00,$3C,$F7,$01
	dc.b		$02,$FF,$EE,$F8,$00,$0D,$F8,$00,$0A;			Voice 21
	dc.b		$F8,$00,$07,$F8,$00,$04,$F6,$FF,$D0,$BA,$08,$C6,$0C,$BA,$04,$C4
	dc.b		$08,$C6,$04,$BA,$0C,$C6,$BF,$08,$C1;			Voice 22
	dc.b		$04,$B8,$08,$BA,$04,$BD,$0C,$E3,$BA,$0C,$B5,$B8,$B5,$08,$BA,$0C
	dc.b		$B5,$04,$B8,$0C,$B5,$BD,$E3,$BF,$0C;			Voice 23
	dc.b		$BA,$BD,$BA,$08,$BF,$0C,$BA,$04,$BD,$0C,$BA,$C2,$E3,$80,$30,$E6
	dc.b		$FD,$E0,$C0,$EF,$01,$F8,$00,$39,$F8;			Voice 24
	dc.b		$00,$36,$F8,$00,$33,$F8,$00,$65,$E0,$80,$80,$60,$F8,$00,$29,$F8
	dc.b		$00,$26,$F8,$00,$23,$F8,$00,$55,$80;			Voice 25
	dc.b		$60,$E6,$03,$F0,$40,$01,$06,$05,$EF,$02,$F8,$00,$6A,$F8,$00,$BE
	dc.b		$F8,$00,$64,$F8,$00,$B8,$80,$60,$80;			Voice 26
	dc.b		$80,$80,$F6,$FF,$C0,$CD,$03,$80,$09,$C6,$03,$80,$09,$CD,$03,$80
	dc.b		$09,$C6,$03,$80,$05,$CD,$03,$80,$09;			Voice 27
	dc.b		$C6,$03,$80,$01,$CF,$03,$80,$09,$C6,$07,$80,$01,$D0,$10,$CD,$03
	dc.b		$80,$09,$C6,$03,$80,$09,$CF,$0C,$C6;			Voice 28
	dc.b		$03,$80,$05,$CD,$03,$80,$31,$E3,$CD,$03,$80,$09,$C6,$03,$80,$09
	dc.b		$CD,$03,$80,$09,$C6,$03,$80,$05,$CD;			Voice 29
	dc.b		$03,$80,$09,$C6,$03,$80,$01,$CF,$03,$80,$09,$C6,$07,$80,$01,$D0
	dc.b		$10,$E3,$D0,$04,$80,$E6,$0F,$D0,$E6;			Voice 2A
	dc.b		$0A,$D0,$06,$80,$02,$E6,$05,$D0,$04,$E6,$E2,$CF,$80,$E6,$0F,$CF
	dc.b		$E6,$0A,$CF,$80,$E6,$05,$CF,$E6,$E2;			Voice 2B
	dc.b		$CD,$80,$E6,$0F,$CD,$E6,$0A,$CD,$80,$E6,$05,$CD,$E6,$E2,$CB,$80
	dc.b		$E6,$0F,$CB,$E6,$0A,$CB,$80,$E6,$05;			Voice 2C
	dc.b		$CB,$E6,$E2,$CD,$0C,$80,$08,$CD,$04,$80,$08,$CD,$02,$80,$CB,$09
	dc.b		$80,$03,$CD,$04,$80,$14,$CB,$C9,$04;			Voice 2D
	dc.b		$E7,$60,$E7,$60,$E3,$D0,$04,$80,$E6,$0F,$D0,$E6,$0A,$D0,$06,$80
	dc.b		$02,$E6,$05,$D0,$04,$E6,$E2,$CF,$80;			Voice 2E
	dc.b		$E6,$0F,$CF,$E6,$0A,$CF,$80,$E6,$05,$CF,$E6,$E2,$CD,$80,$E6,$0F
	dc.b		$CD,$E6,$0A,$CD,$80,$E6,$05,$CD,$E6;			Voice 2F
	dc.b		$E2,$CB,$80,$E6,$0F,$CB,$E6,$0A,$CB,$80,$E6,$05,$CB,$E6,$E2,$CD
	dc.b		$0C,$80,$08,$CD,$04,$80,$08,$CD,$02;			Voice 30
	dc.b		$80,$CB,$09,$80,$03,$CD,$04,$80,$14,$CB,$D2,$04,$E7,$60,$E7,$60
	dc.b		$E3,$80,$30,$E6,$FD,$EF,$01,$F8,$00;			Voice 31
	dc.b		$37,$F8,$00,$34,$F8,$00,$31,$F8,$00,$4D,$80,$60,$F8,$00,$29,$F8
	dc.b		$00,$26,$F8,$00,$23,$F8,$00,$3F,$80;			Voice 32
	dc.b		$60,$E6,$03,$F0,$20,$01,$06,$05,$EF,$02,$F8,$00,$44,$F8,$00,$99
	dc.b		$F8,$00,$3E,$F8,$00,$93,$80,$60,$80;			Voice 33
	dc.b		$80,$80,$F6,$FF,$C4,$C9,$03,$80,$15,$C9,$03,$80,$11,$C9,$03,$80
	dc.b		$0D,$CB,$03,$80,$11,$CD,$10,$C9,$03;			Voice 34
	dc.b		$80,$15,$CB,$0C,$80,$08,$C9,$03,$80,$31,$E3,$C9,$03,$80,$15,$C9
	dc.b		$03,$80,$11,$C9,$03,$80,$0D,$CB,$03;			Voice 35
	dc.b		$80,$11,$CD,$10,$E3,$CD,$04,$80,$E6,$0F,$CD,$E6,$0A,$CD,$06,$80
	dc.b		$02,$E6,$05,$CD,$04,$E6,$E2,$CB,$80;			Voice 36
	dc.b		$E6,$0F,$CB,$E6,$0A,$CB,$80,$E6,$05,$CB,$E6,$E2,$C9,$80,$E6,$0F
	dc.b		$C9,$E6,$0A,$C9,$80,$E6,$05,$C9,$E6;			Voice 37
	dc.b		$E2,$C6,$80,$E6,$0F,$C6,$E6,$0A,$C6,$80,$E6,$05,$C6,$E6,$E2,$C9
	dc.b		$0C,$80,$08,$C9,$04,$80,$08,$C9,$02;			Voice 38
	dc.b		$80,$C6,$09,$80,$03,$C9,$04,$80,$14,$C6,$C6,$04,$E7,$30,$C4,$C3
	dc.b		$C4,$E3,$CD,$04,$80,$E6,$0F,$CD,$E6;			Voice 39
	dc.b		$0A,$CD,$06,$80,$02,$E6,$05,$CD,$04,$E6,$E2,$CB,$80,$E6,$0F,$CB
	dc.b		$E6,$0A,$CB,$80,$E6,$05,$CB,$E6,$E2;			Voice 3A
	dc.b		$C9,$80,$E6,$0F,$C9,$E6,$0A,$C9,$80,$E6,$05,$C9,$E6,$E2,$C6,$80
	dc.b		$E6,$0F,$C6,$E6,$0A,$C6,$80,$E6,$05;			Voice 3B
	dc.b		$C6,$E6,$E2,$C9,$0C,$80,$08,$C9,$04,$80,$08,$C9,$02,$80,$C6,$09
	dc.b		$80,$03,$C9,$04,$80,$14,$C6,$C6,$04;			Voice 3C
	dc.b		$E7,$30,$C9,$CB,$C9,$E3,$80,$30,$80,$60,$F7,$00,$07,$FF,$FA,$E0
	dc.b		$40,$E6,$07,$EF,$03,$80,$0C,$80,$50;			Voice 3D
	dc.b		$F8,$FB,$C7,$F8,$FC,$17,$BA,$4C,$E7,$30,$80,$24,$E6,$F9,$EF,$04
	dc.b		$E6,$05,$E9,$F4,$F8,$00,$0F,$F7,$00;			Voice 3E
	dc.b		$13,$FF,$F9,$80,$60,$E9,$0C,$E6,$FB,$F6,$FF,$CB,$C9,$03,$80,$09
	dc.b		$C6,$03,$80,$09,$C9,$03,$80,$09,$C6;			Voice 3F
	dc.b		$03,$80,$09,$C9,$06,$80,$02,$CB,$03,$80,$09,$CC,$03,$80,$01,$E6
	dc.b		$F6,$CD,$03,$80,$01,$E6,$0A,$CB,$03;			Voice 40
	dc.b		$80,$01,$C9,$03,$80,$01,$C6,$06,$80,$E3,$F2,$80,$0C,$F5,$08,$80
	dc.b		$30,$F8,$00,$1C,$F7,$00,$10,$FF,$F9;			Voice 41
	dc.b		$EC,$02,$F5,$07,$F8,$00,$34,$F7,$00,$08,$FF,$F9,$80,$60,$80,$80
	dc.b		$80,$EC,$FE,$F6,$FF,$E3,$EC,$04,$BA;			Voice 42
	dc.b		$04,$BD,$BF,$C0,$C1,$C4,$EC,$FF,$C6,$C9,$CB,$CC,$CD,$EC,$FF,$D0
	dc.b		$D2,$D5,$D7,$D5,$D7,$EC,$FF,$D5,$D2;			Voice 43
	dc.b		$D0,$CD,$EC,$FF,$CC,$CB,$C9,$E3,$C6,$04,$80,$08,$CD,$04,$80,$08
	dc.b		$D2,$04,$80,$08,$C6,$04,$80,$CD,$80;			Voice 44
	dc.b		$08,$D2,$04,$80,$08,$C6,$04,$CD,$80,$08,$D2,$04,$80,$08,$C6,$04
	dc.b		$80,$08,$CD,$04,$80,$08,$D2,$04,$80;			Voice 45
	dc.b		$08,$C6,$04,$80,$CB,$80,$08,$D2,$04,$80,$08,$C6,$04,$CB,$80,$08
	dc.b		$D2,$04,$80,$08,$E3,$F3,$E7,$80,$30;			Voice 46
	dc.b		$F5,$02,$CF,$08,$04,$EC,$FC,$08,$EC,$04,$04,$08,$04,$EC,$FC,$08
	dc.b		$EC,$04,$04,$08,$04,$EC,$FC,$08,$EC;			Voice 47
	dc.b		$04,$04,$08,$04,$F5,$01,$EC,$FC,$0C,$EC,$04,$F5,$02,$CF,$08,$04
	dc.b		$EC,$FC,$08,$EC,$04,$04,$08,$04,$EC;			Voice 48
	dc.b		$FC,$08,$EC,$04,$04,$08,$04,$EC,$FC,$08,$EC,$04,$04,$08,$04,$EC
	dc.b		$FC,$08,$F5,$02,$EC,$04,$04,$F6,$FF;			Voice 49
	dc.b		$B5,$D2,$08,$04,$04,$04,$04,$8B,$18,$F8,$00,$66,$F8,$00,$63,$F8
	dc.b		$00,$60,$F8,$00,$81,$8B,$18,$8B,$B2;			Voice 4A
	dc.b		$0C,$08,$04,$D2,$D2,$D2,$D2,$D2,$D2,$F8,$00,$4D,$F8,$00,$4A,$F8
	dc.b		$00,$47,$F8,$00,$68,$8B,$18,$8B,$D2;			Voice 4B
	dc.b		$18,$D2,$04,$D2,$D2,$D2,$D2,$D2,$F8,$00,$35,$F8,$00,$32,$F8,$00
	dc.b		$2F,$F8,$00,$2C,$F8,$00,$29,$F8,$00;			Voice 4C
	dc.b		$26,$F8,$00,$23,$F8,$00,$20,$F8,$00,$1D,$F8,$00,$3E,$8B,$04,$04
	dc.b		$04,$04,$04,$04,$18,$D2,$04,$D2,$D2;			Voice 4D
	dc.b		$D2,$D2,$D2,$D2,$04,$D2,$D2,$D2,$D2,$D2,$F6,$FF,$99,$B2,$0C,$08
	dc.b		$04,$D2,$08,$B2,$0C,$10,$08,$04,$D2;			Voice 4E
	dc.b		$08,$B2,$0C,$D2,$04,$B2,$0C,$08,$04,$D2,$08,$B2,$0C,$0C,$D2,$04
	dc.b		$B2,$B2,$B2,$D2,$0C,$08,$04,$E3,$B2;			Voice 4F
	dc.b		$0C,$08,$04,$D2,$08,$B2,$0C,$10,$08,$04,$D2,$08,$B2,$0C,$D2,$04
	dc.b		$E3,$3C,$01,$01,$01,$01,$1F,$1F,$1F;			Voice 50
	dc.b		$1F,$0F,$0C,$08,$0B,$06,$0B,$0A,$0B,$FF,$FF,$FF,$FF,$1D,$80,$1F
	dc.b		$80,$3B,$11,$11,$21,$61,$3F,$1F,$1F;			Voice 51
	dc.b		$1F,$0F,$0E,$0E,$0D,$0F,$13,$05,$10,$2F,$3F,$5F,$3F,$1C,$10,$20
	dc.b		$80,$35,$11,$10,$30,$31,$1F,$1F,$04;			Voice 52
	dc.b		$1F,$01,$03,$03,$03,$01,$03,$03,$03,$2B,$3B,$5B,$3B,$14,$85,$82
	dc.b		$85,$3B,$31,$31,$01,$01,$1F,$1F,$1F;			Voice 53
	dc.b		$1F,$0F,$0C,$01,$05,$0F,$09,$02,$05,$FF,$FF,$FF,$FF,$1A,$16,$21
	dc.b		$80,$3D,$41,$21,$51,$31,$94,$19,$19;			Voice 54
	dc.b		$19,$0F,$0F,$0F,$0F,$05,$08,$09,$08,$25,$1A,$1A,$1A,$19,$80,$80
	dc.b		$80;			Voice 55
	even
