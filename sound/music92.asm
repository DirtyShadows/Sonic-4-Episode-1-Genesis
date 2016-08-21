; =============================================================================================
; Project Name:		music92
; Created:		22nd May 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

music92_Header:
	smpsHeaderVoice	music92_Voices
	smpsHeaderChan	$06,	$00
	smpsHeaderTempo	$01,	$02

	smpsHeaderDAC	music92_DAC
	smpsHeaderFM	music92_FM1,	smpsPitch01hi,	$08
	smpsHeaderFM	music92_FM2,	smpsPitch02lo,	$0E
	smpsHeaderFM	music92_FM3,	smpsPitch01lo,	$40
	smpsHeaderFM	music92_FM4,	smpsPitch00+$06,	$11
	smpsHeaderFM	music92_FM5,	smpsPitch01hi,	$19

; FM1 Data
music92_FM1:
	smpsFMvoice	$00
	smpsE2		$01
	smpsNoteFill	$05
	smpsCall	music92_Call01
	smpsSetTempoMod	$03
	smpsCall	music92_Call01
	smpsSetTempoMod	$04
	smpsCall	music92_Call01
	smpsSetTempoMod	$06
	smpsCall	music92_Call01
	smpsSetTempoMod	$0A
	smpsCall	music92_Call01
	dc.b		nC5,	$06
	smpsE2		$01
	smpsStop

; FM2 Data
music92_FM2:
	smpsFMvoice	$01
music92_Loop01:
	smpsAlterVol	$FF
	smpsCall	music92_Call02
	smpsLoop	$00,	$0A,	music92_Loop01
	dc.b		nC5,	$06
	smpsStop

; FM3 Data
music92_FM3:
	smpsFMvoice	$02
music92_Loop02:
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nC6,	$02,	smpsNoAttack,	nCs6,	smpsNoAttack,	nC6,	smpsNoAttack
	dc.b		nCs6,	smpsNoAttack,	nC6,	smpsNoAttack,	nCs6,	smpsNoAttack,	nC6,	smpsNoAttack
	dc.b		nCs6
	smpsLoop	$00,	$1E,	music92_Loop02
	dc.b		nC6,	$06
	smpsStop

; FM4 Data
music92_FM4:
	smpsFMvoice	$03
	smpsNoteFill	$05
	dc.b		nRst,	$03
music92_Loop03:
	smpsPan		panRight,	$00
	dc.b		nC4,	$06,	nC5
	smpsPan		panCentre,	$00
	dc.b		nC4,	nC5
	smpsPan		panLeft,	$00
	dc.b		nCs4,	nCs5
	smpsPan		panCentre,	$00
	dc.b		nCs4,	nCs5
	smpsLoop	$00,	$0A,	music92_Loop03
	smpsStop

; FM5 Data
music92_FM5:
	smpsFMvoice	$00
	smpsNoteFill	$05
	dc.b		nRst,	$04
music92_Loop04:
	smpsPan		panLeft,	$00
	dc.b		nC4,	$06,	nC5
	smpsPan		panLeft,	$00
	dc.b		nC4,	nC5
	smpsPan		panRight,	$00
	dc.b		nCs4,	nCs5
	smpsPan		panRight,	$00
	dc.b		nCs4,	nCs5
	smpsLoop	$00,	$0A,	music92_Loop04
	smpsStop

; DAC Data
music92_DAC:
	dc.b		dSnare,	$0C,	dSnare,	dSnare,	dSnare
	smpsLoop	$00,	$0A,	music92_DAC
	dc.b		dSnare,	$06
	smpsStop

music92_Call01:
	dc.b		nC4,	$06,	nC5,	nC4,	nC5,	nCs4,	nCs5,	nCs4
	dc.b		nCs5

music92_Call02:
	dc.b		nC4,	$06,	nC5,	nC4,	nC5,	nCs4,	nCs5,	nCs4
	dc.b		nCs5
	smpsReturn

music92_Voices:
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$1F,$0F,$1F,$0F,$1A,$80,$16,$80;			Voice 00
	dc.b		$18,$37,$30,$30,$31,$9E,$DC,$1C,$9C,$0D,$06,$04,$01,$08,$0A,$03
	dc.b		$05,$BF,$BF,$3F,$2F,$2C,$22,$14,$80;			Voice 01
	dc.b		$2C,$52,$58,$34,$34,$1F,$12,$1F,$12,$00,$0A,$00,$0A,$00,$00,$00
	dc.b		$00,$0F,$1F,$0F,$1F,$15,$82,$14,$82;			Voice 02
	dc.b		$07,$34,$31,$54,$51,$14,$14,$14,$14,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$0F,$0F,$0F,$0F,$91,$91,$91,$91;			Voice 03
	even
