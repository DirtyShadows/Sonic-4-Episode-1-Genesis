; =============================================================================================
; Project Name:		LevClr
; Created:		29th January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

LevClr_Header:
	smpsHeaderVoice	LevClr_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$09

	smpsHeaderDAC	LevClr_DAC
	smpsHeaderFM	LevClr_FM1,	smpsPitch01hi,	$12
	smpsHeaderFM	LevClr_FM2,	smpsPitch01hi,	$16
	smpsHeaderFM	LevClr_FM3,	smpsPitch01hi,	$16
	smpsHeaderFM	LevClr_FM4,	smpsPitch01hi,	$16
	smpsHeaderFM	LevClr_FM5,	smpsPitch01hi,	$1A
	smpsHeaderPSG	LevClr_PSG1,	smpsPitch01lo,	$06,	$00
	smpsHeaderPSG	LevClr_PSG2,	smpsPitch01lo,	$06,	$00
	smpsHeaderPSG	LevClr_PSG3,	smpsPitch00,	$05,	$0C
	smpsStop
	smpsStop

; DAC Data
LevClr_DAC:
	dc.b	dSnare, $06, dKick, dKick, dSnare, dKick, dKick, dSnare, dKick, dSnare, dKick, dKick
	dc.b	dSnare, dKick, dKick, dSnare, dKick, $01, nRst, dKick, dKick, nRst, dKick, dHiTom
	dc.b	$06, dMidTom, dLowTom, dHiTom, dMidTom, dLowTom, dHiTom, dMidTom, dLowTom, dSnare
	smpsStop

; FM1 Data
LevClr_FM1:
	smpsFMvoice	$03
	dc.b		nG0,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nG0,	$05,	nRst,	$01,	nD1,	$05,	nRst,	$07
	dc.b		nG1,	$05,	nRst,	$01,	nG0,	$05,	nRst,	$07
	dc.b		nA0,	$05,	nRst,	$01,	nA1,	$05,	nRst,	$01
	dc.b		nA0,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$07
	dc.b		nA1,	$05,	nRst,	$01,	nA0,	$05,	nRst,	$07
	dc.b		nD1,	$05,	nRst,	$01,	nD2,	$05,	nRst,	$01
	dc.b		nD1,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$01
	dc.b		nE2,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$01
	dc.b		nG1,	$05,	nRst,	$01,	nG2,	$05,	nRst,	$01
	dc.b		nG1,	$05,	nRst,	$01,	nA1,	$5F,	nRst,	$01
	smpsStop

; FM2 Data
LevClr_FM2:
	smpsAlterNote	$03
	smpsFMvoice	$01
LevClr_Jump01:
	dc.b		nD3,	$06,	nD3,	nD3,	nD3,	$07,	nRst,	$05
	dc.b		nD3,	$07,	nRst,	$05,	nE3,	$05,	nRst,	$07
	dc.b		nE3,	$05,	nRst,	$07,	nE3,	$07,	nRst,	$05
	dc.b		nE3,	$11,	nRst,	$01,	nG3,	$05,	nRst,	$0D
	dc.b		nA3,	$05,	nRst,	$0D,	nC4,	$11,	nRst,	$01
	dc.b		nD4,	$5F,	nRst,	$01
	smpsStop

; FM3 Data
LevClr_FM3:
	smpsAlterNote	$FF
	smpsFMvoice	$02
	dc.b		nC3,	$06,	nC3,	nC3,	nB2,	nRst,	nB2,	nRst
	dc.b		nD3,	nRst,	$06,	nD3,	$06,	nRst,	$06,	nCs3
	dc.b		$06,	nRst,	nCs3,	$11,	nRst,	$01,	nE3,	$05
	dc.b		nRst,	$0D,	nFs3,	$05,	nRst,	$0D,	nA3,	$11
	dc.b		nRst,	$01,	nB3,	$5F,	nRst,	$01
	smpsStop

; FM4 Data
LevClr_FM4:
	smpsAlterNote	$01
	smpsFMvoice	$02
LevClr_Jump02:
	dc.b		nG2,	$06,	nG2,	nG2,	nG2,	nRst,	nG2,	nRst
	dc.b		nA2,	nRst,	nA2,	$03,	nRst,	$09,	nA2,	$05
	dc.b		nRst,	$07,	nA2,	$11,	nRst,	$01,	nC3,	$05
	dc.b		nRst,	$0D,	nD3,	$05,	nRst,	$0D,	nF3,	$11
	dc.b		nRst,	$01,	nG3,	$5F,	nRst,	$01
	smpsStop

; FM5 Data
LevClr_FM5:
	smpsAlterNote	$FD
	smpsPSGvoice	$03
	dc.b		nRst,	$01
	smpsFMvoice	$02
	smpsJump	LevClr_Jump01
	smpsStop

; PSG1 Data
LevClr_PSG1:
	smpsAlterNote	$01
	smpsPSGvoice	$03
	smpsJump	LevClr_Jump01
	smpsFMvoice	$02
	dc.b		nD3,	$06,	nD3,	nD3,	nD3,	$05,	nRst,	$07
	dc.b		nD3,	$05,	nRst,	$07,	nE3,	$03,	nRst,	$09
	dc.b		nE3,	$03,	nRst,	$09,	nE3,	$05,	nRst,	$07
	dc.b		nE3,	$11,	nRst,	$01,	nG3,	$05,	nRst,	$0D
	dc.b		nA3,	$05,	nRst,	$0D,	nC4,	$11,	nRst,	$01
	dc.b		nD4,	$5F,	nRst,	$01
	smpsStop

; PSG2 Data
LevClr_PSG2:
	smpsAlterNote	$FF
	smpsFMvoice	$02
	smpsPSGvoice	$03
	smpsJump	LevClr_Jump02
	smpsStop

; PSG3 Data
LevClr_PSG3:
	smpsPSGvoice	$02
	smpsPSGform	$E7
	dc.b		nB6,	$06,	nB6,	nB6,	nB6,	$05,	nRst,	$07
	dc.b		nB6,	$05,	nRst,	$07,	nB6,	$03,	nRst,	$09
	dc.b		nB6,	$03,	nRst,	$09,	nB6,	$05,	nRst,	$07
	dc.b		nB6,	$11,	nRst,	$01,	nB6,	$05,	nRst,	$0D
	dc.b		nB6,	$05,	nRst,	$0D,	nB6,	$11,	nRst,	$01
	dc.b		nB6,	$5F,	nRst,	$01
	smpsStop

LevClr_Voices:
	dc.b		$28,$71,$00,$30,$01,$1F,$1F,$1D,$1F,$13,$13,$06,$05,$03,$03,$02
	dc.b		$05,$4F,$4F,$2F,$3F,$0E,$14,$1E,$80;			Voice 00
	dc.b		$3C,$71,$72,$3F,$34,$8D,$52,$9F,$1F,$09,$00,$00,$0D,$00,$00,$00
	dc.b		$00,$23,$08,$02,$F7,$15,$80,$1D,$87;			Voice 01
	dc.b		$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04
	dc.b		$04,$25,$1A,$1A,$1A,$15,$80,$80,$80;			Voice 02
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$10,$07,$10,$07,$1A,$80,$16,$80;			Voice 03
	even
