; =============================================================================================
; Project Name:		music88
; Created:		28th May 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

music88_Header:
	smpsHeaderVoice	music88_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$33

	smpsHeaderDAC	music88_DAC
	smpsHeaderFM	music88_FM1,	smpsPitch01hi,	$08
	smpsHeaderFM	music88_FM2,	smpsPitch01hi,	$19
	smpsHeaderFM	music88_FM3,	smpsPitch00,	$0D
	smpsHeaderFM	music88_FM4,	smpsPitch02hi,	$1B
	smpsHeaderFM	music88_FM5,	smpsPitch01hi,	$12
	smpsHeaderPSG	music88_PSG1,	smpsPitch01lo,	$01,	$00
	smpsHeaderPSG	music88_PSG2,	smpsPitch01lo,	$01,	$00
	smpsHeaderPSG	music88_PSG3,	smpsPitch00,	$00,	$00

; FM1 Data
music88_FM1:
	smpsFMvoice	$01
	smpsModSet	$13,	$01,	$06,	$05
	dc.b		nB3,	$03,	nRst,	nB3,	$06,	nC4,	$03,	nRst
	dc.b		nC4,	$06,	nD4,	$03,	smpsNoAttack,	nEb4,	$02,	smpsNoAttack
	dc.b		nE4,	$02,	smpsNoAttack,	nF4,	$02,	smpsNoAttack,	nFs4,	$09
	dc.b		nD4,	$06,	nG4,	$03,	nRst,	nG4,	$02,	nRst
	dc.b		$01,	nG4,	$02,	nRst,	$01,	nG4,	$04,	nRst
	dc.b		$02,	nG4,	$04,	nRst,	$02,	nG4,	$0C,	nRst
	dc.b		$01
	smpsStop

; FM2 Data
music88_FM2:
	smpsFMvoice	$03
	smpsModSet	$14,	$01,	$06,	$05
	dc.b		nRst,	$01
	smpsAlterNote	$03
	dc.b		nG3,	$03,	nRst,	nG3,	$06,	nA3,	$03,	nRst
	dc.b		nA3,	$06,	nB3,	$09,	nRst,	$03,	nA3,	$09
	dc.b		nRst,	$03,	nG3,	$03,	nRst,	nG3,	$02,	nRst
	dc.b		$01,	nG3,	$02,	nRst,	$01,	nG3,	$04,	nRst
	dc.b		$02,	nG3,	$04,	nRst,	$02,	nG3,	$0C,	nRst
	dc.b		$01
	smpsStop

; FM3 Data
music88_FM3:
	smpsFMvoice	$00
	dc.b		nG2,	$02,	nRst,	$01,	nRst,	$03,	nG3,	$02
	dc.b		nRst,	$01,	nG3,	$02,	nRst,	$01,	nA2,	$02
	dc.b		nRst,	$01,	nRst,	$03,	nA3,	$02,	nRst,	$01
	dc.b		nA3,	$02,	nRst,	$01,	nB2,	$02,	nRst,	$01
	dc.b		nRst,	$03,	nB3,	$02,	nRst,	$01,	nB3,	$02
	dc.b		nRst,	$01,	nA2,	$02,	nRst,	$01,	nRst,	$03
	dc.b		nA3,	$02,	nRst,	$01,	nA3,	$02,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$01,	nD2,	$05,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$01,	nD2,	$05,	nRst,	$01
	dc.b		nG2,	$0C
	smpsStop

; FM4 Data
music88_FM4:
	smpsFMvoice	$03
	dc.b		nG4,	$03,	nF4,	nD4,	nF4,	nG4,	$03,	nF4
	dc.b		nD4,	nF4,	nG4,	$03,	nF4,	nD4,	nF4,	nA4
	dc.b		$03,	nG4,	nE4,	nG4,	nG4,	$01,	smpsNoAttack,	nAb4
	dc.b		smpsNoAttack,	nA4,	smpsNoAttack,	nBb4,	smpsNoAttack,	nB4,	smpsNoAttack,	nC5
	dc.b		smpsNoAttack,	nCs5,	smpsNoAttack,	nD5,	smpsNoAttack,	nEb5,	smpsNoAttack,	nE5
	dc.b		smpsNoAttack,	nF5,	smpsNoAttack,	nFs5,	smpsNoAttack,	nG5,	smpsNoAttack,	nFs5
	dc.b		smpsNoAttack,	nF5,	smpsNoAttack,	nE5,	smpsNoAttack,	nEb5,	smpsNoAttack,	nD5
	dc.b		smpsNoAttack,	nCs5,	smpsNoAttack,	nC5,	smpsNoAttack,	nB4,	smpsNoAttack,	nBb4
	dc.b		smpsNoAttack,	nA4,	smpsNoAttack,	nAb4,	smpsNoAttack,	nG4,	$0C,	nRst
	dc.b		$01
	smpsStop

; FM5 Data
music88_FM5:
	dc.b		nRst,	$02
	smpsJump	music88_FM1

; PSG1 Data
music88_PSG1:
	smpsPSGvoice	$D+$0A
	dc.b		nG3,	$18,	nA3,	$18,	nB3,	$24
	smpsStop

; PSG2 Data
music88_PSG2:
	smpsPSGvoice	$D+$0A
	dc.b		nD4,	$18,	nFs4,	$18,	nG4,	$24
	smpsStop

; PSG3 Data
music88_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$D+$03
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$FC
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$04
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$FC
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$04
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$FC
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$04
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$FC
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$04
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$FC
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$04
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$FC
	dc.b		nB6,	$03,	nB6
	smpsSetVol	$04
	dc.b		nB6,	$0C
	smpsStop

; DAC Data
music88_DAC:
	dc.b	nRst, $30, dHiTimpani, $06, dLowTimpani, dHiTimpani, dLowTimpani, dHiTimpani, $0C, nRst
	smpsFade
	smpsStop

music88_Voices:
	dc.b		$3B,$0D,$01,$00,$00,$9F,$1F,$1F,$1F,$0E,$0D,$09,$09,$00,$00,$00
	dc.b		$00,$DF,$DF,$DF,$DF,$33,$15,$17,$80;			Voice 00
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$07,$1F,$FF,$1F,$0F,$18,$28,$27,$80;			Voice 01
	dc.b		$3C,$01,$02,$0F,$04,$8D,$52,$9F,$1F,$09,$00,$00,$0D,$00,$00,$00
	dc.b		$00,$23,$08,$02,$F7,$15,$80,$1D,$87;			Voice 02
	dc.b		$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04
	dc.b		$04,$25,$1A,$1A,$1A,$15,$80,$80,$80;			Voice 03
	even
