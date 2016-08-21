; =============================================================================================
; Project Name:		countdown
; Created:		22nd May 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

countdown_Header:
	smpsHeaderVoice	countdown_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$02

	smpsHeaderDAC	countdown_DAC
	smpsHeaderFM	countdown_FM1,	smpsPitch01hi,	$08
	smpsHeaderFM	countdown_FM2,	smpsPitch02lo,	$0E
	smpsHeaderFM	countdown_FM3,	smpsPitch01lo,	$40
	smpsHeaderFM	countdown_FM4,	smpsPitch00+$06,	$11
	smpsHeaderFM	countdown_FM5,	smpsPitch01hi,	$19
	smpsHeaderPSG	countdown_PSG1,	smpsPitch01hi,	$19,	$00
	smpsHeaderPSG	countdown_PSG2,	smpsPitch01hi,	$19,	$00
	smpsHeaderPSG	countdown_PSG3,	smpsPitch01hi,	$19,	$00

; FM1 Data
countdown_FM1:
	smpsFMvoice	$00
	smpsE2		$01
	smpsNoteFill	$03
	smpsCall	countdown_Call01
	smpsSetTempoMod	$03
	smpsCall	countdown_Call01
	smpsSetTempoMod	$04
	smpsCall	countdown_Call01
	smpsSetTempoMod	$06
	smpsCall	countdown_Call01
	smpsSetTempoMod	$0A
	smpsCall	countdown_Call01
	dc.b		nC5,	$0C
	smpsE2		$01
	smpsStop

; FM2 Data
countdown_FM2:
	smpsFMvoice	$01
countdown_Loop01:
	smpsAlterVol	$FF
	smpsCall	countdown_Call02
	smpsLoop	$00,	$0A,	countdown_Loop01
	dc.b		nC5,	$06
	smpsStop

; FM3 Data
countdown_FM3:
	smpsFMvoice	$02
countdown_Loop02:
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nC6,	$02,	smpsNoAttack,	nCs6,	smpsNoAttack,	nC6,	smpsNoAttack
	dc.b		nCs6,	smpsNoAttack,	nC6,	smpsNoAttack,	nCs6,	smpsNoAttack,	nC6,	smpsNoAttack
	dc.b		nCs6
	smpsLoop	$00,	$1E,	countdown_Loop02
	dc.b		nC6,	$0C
	smpsStop

; FM4 Data
countdown_FM4:
	smpsFMvoice	$03
	smpsNoteFill	$03
	dc.b		nRst,	$03
countdown_Loop03:
	smpsPan		panRight,	$00
	dc.b		nC4,	$06,	nC5
	smpsPan		panCentre,	$00
	dc.b		nC4,	nC5
	smpsPan		panLeft,	$00
	dc.b		nCs4,	nCs5
	smpsPan		panCentre,	$00
	dc.b		nCs4,	nCs5
	smpsLoop	$00,	$0A,	countdown_Loop03
	smpsStop

; FM5 Data
countdown_FM5:
	smpsFMvoice	$00
	smpsNoteFill	$03
	dc.b		nRst,	$04
countdown_Loop04:
	smpsPan		panLeft,	$00
	dc.b		nC4,	$06,	nC5
	smpsPan		panLeft,	$00
	dc.b		nC4,	nC5
	smpsPan		panRight,	$00
	dc.b		nCs4,	nCs5
	smpsPan		panRight,	$00
	dc.b		nCs4,	nCs5
	smpsLoop	$00,	$0A,	countdown_Loop04
	smpsStop

; DAC Data
countdown_DAC:
	dc.b		dSnare,	$0C,	dSnare,	dSnare,	dSnare
	smpsLoop	$00,	$0A,	countdown_DAC
	dc.b		dSnare,	$06
	smpsStop

; PSG1 Data
countdown_PSG1:

; PSG2 Data
countdown_PSG2:

; PSG3 Data
countdown_PSG3:
	smpsStop

countdown_Call01:
	dc.b		nC4,	$06,	nC5,	nC4,	nC5,	nCs4,	nCs5,	nCs4
	dc.b		nCs5

countdown_Call02:
	dc.b		nC4,	$06,	nC5,	nC4,	nC5,	nCs4,	nCs5,	nCs4
	dc.b		nCs5
	smpsReturn

countdown_Voices:
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$1F,$0F,$1F,$0F,$1A,$80,$16,$80;			Voice 00
	dc.b		$18,$37,$30,$30,$31,$9E,$DC,$1C,$9C,$0D,$06,$04,$01,$08,$0A,$03
	dc.b		$05,$BF,$BF,$3F,$2F,$2C,$22,$14,$80;			Voice 01
	dc.b		$2C,$52,$58,$34,$34,$1F,$12,$1F,$12,$00,$0A,$00,$0A,$00,$00,$00
	dc.b		$00,$0F,$1F,$0F,$1F,$15,$82,$14,$82;			Voice 02
	dc.b		$07,$34,$31,$54,$51,$14,$14,$14,$14,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$0F,$0F,$0F,$0F,$91,$91,$91,$91;			Voice 03
	even
