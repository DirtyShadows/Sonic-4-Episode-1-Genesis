; =============================================================================================
; Project Name:		asd
; Created:		8th March 2011
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

asd_Header:
	smpsHeaderVoice	asd_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$00

	smpsHeaderDAC	asd_DAC
	smpsHeaderFM	asd_FM1,	smpsPitch01hi,	$0F	;0C
	smpsHeaderFM	asd_FM2,	smpsPitch01hi,	$0F	;0C
	smpsHeaderFM	asd_FM3,	smpsPitch01hi,	$0F	;0C
	smpsHeaderFM	asd_FM4,	smpsPitch01hi,	$0F	;0C
	smpsHeaderFM	asd_FM5,	smpsPitch01hi,	$1A	;13
	smpsHeaderPSG	asd_PSG1,	smpsPitch02lo,	$03,	$00
	smpsHeaderPSG	asd_PSG2,	smpsPitch02lo,	$02,	$00
	smpsHeaderPSG	asd_PSG3,	smpsPitch02lo,	$02,	$00

; FM1 Data
asd_FM1:
	smpsModSet	$0D,	$01,	$02,	$06
asd_Loop01:
	smpsPan		panCentre,	$00
	smpsFMvoice	$02
	dc.b		nB5,	$06,	nRst,	nB5,	nRst,	nB5,	nRst,	nB5
	dc.b		nRst,	nB5,	nRst,	nB5,	nRst,	nB5,	nRst,	nB5
	dc.b		nRst,	nB5,	nRst
	smpsFMvoice	$07
	dc.b		nE3,	$24,	nFs3,	$30
	smpsLoop	$00,	$02,	asd_Loop01
	smpsFMvoice	$00
	dc.b		nE4,	$3C,	nFs4,	$0C,	nG4,	nA4,	nB4,	$18
	dc.b		nA4,	nG4,	nFs4,	nG4,	$0C,	nE4,	$06,	nRst
	dc.b		nE4,	nRst,	nE4,	$0C,	nB3,	$06,	nRst,	nB3
	dc.b		nRst,	nE4,	$0C,	nFs4,	$06,	nRst,	nA4,	$0C
	dc.b		nG4,	nFs4,	nA4,	$3C,	nE4,	nFs4,	$0C,	nG4
	dc.b		nA4,	nB4,	$18,	nA4,	nG4,	nFs4,	nG4,	$0C
	dc.b		nE4,	$06,	nRst,	nE4,	nRst,	nE4,	$0C,	nB3
	dc.b		$06,	nRst,	nB3,	nRst,	nE4,	$0C,	nFs4,	$06
	dc.b		nRst,	nA4,	$0C,	nG4,	nFs4,	nA4,	$18,	nA4
	dc.b		$0C,	nB4,	nA4,	nG4,	nE4,	$06,	nRst,	nC4
	dc.b		nRst,	nG4,	$0C,	nE4,	$06,	nRst,	nC4,	nRst
	dc.b		nG4,	$0C,	nE4,	$06,	nRst,	nA4,	$0C,	nFs4
	dc.b		$06,	nRst,	nD4,	nRst,	nA4,	$0C,	nFs4,	$06
	dc.b		nRst,	nD4,	nRst,	nA4,	$0C,	nFs4,	$06,	nRst
	dc.b		nB4,	$0C,	nG4,	$06,	nRst,	nE4,	nRst,	nB4
	dc.b		$0C,	nG4,	$06,	nRst,	nE4,	nRst,	nD5,	$0C
	dc.b		nC5,	$06,	nRst,	nB4,	$0C,	nC5,	$06,	nRst
	dc.b		nB4,	nRst,	nG4,	$3C,	nG4,	$0C,	nE4,	$06
	dc.b		nRst,	nC4,	nRst,	nG4,	$0C,	nE4,	$06,	nRst
	dc.b		nC4,	nRst,	nG4,	$0C,	nE4,	$06,	nRst,	nA4
	dc.b		$0C,	nFs4,	$06,	nRst,	nD4,	nRst,	nA4,	$0C
	dc.b		nFs4,	$06,	nRst,	nD4,	nRst,	nA4,	$0C,	nFs4
	dc.b		$06,	nRst,	nB4,	$0C,	nG4,	$06,	nRst,	nE4
	dc.b		nRst,	nB4,	$0C,	nG4,	$06,	nRst,	nE4,	nRst
	dc.b		nD5,	$0C,	nC5,	$06,	nRst,	nB4,	$0C,	nA4
	dc.b		$06,	nRst,	nB4,	nRst,	nE5,	$3C
	smpsJump	asd_FM1
	smpsStop

; FM2 Data
asd_FM2:
	smpsFMvoice	$01
	smpsModSet	$0D,	$01,	$02,	$06
	smpsPan		panCentre,	$00
asd_Loop02:
	dc.b		nE3,	$0C,	nE3,	$06,	nRst,	nE3,	nRst,	nE3
	dc.b		$0C,	nE3,	$06,	nRst,	nE3,	nRst,	nE3,	$0C
	dc.b		nE3,	nRst,	nC3,	$24,	nD3,	$30
	smpsLoop	$00,	$02,	asd_Loop02
asd_Loop03:
	dc.b		nE2,	$0C,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2
	dc.b		nE3,	nE2,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2
	dc.b		nE3,	nE2,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2
	dc.b		nE3,	nD3,	nD4,	nD3,	nD4,	nD3,	nD4,	nD3
	dc.b		nD4
	smpsLoop	$00,	$02,	asd_Loop03
	dc.b		nC3,	$0C,	nC3,	nC4,	nC4,	nG3,	nG3,	nC4
	dc.b		nC4,	nD3,	nD3,	nD4,	nD4,	nA3,	nA3,	nD4
	dc.b		nD4,	nE2,	nE2,	nE3,	nE3,	nB2,	nB2,	nE2
	dc.b		nE2,	nE3,	nD3,	nE3,	nE2,	nE2,	nB2,	nE3
	dc.b		nB3,	nC3,	nC3,	nC4,	nC4,	nG3,	nG3,	nC4
	dc.b		nC4,	nD3,	nD3,	nD4,	nD4,	nA3,	nA3,	nD4
	dc.b		nD4,	nE2,	nE3,	nE3,	nE2,	nE3,	nE3,	nD3
	dc.b		nE3,	nA3,	nB3,	nD3,	nE3,	nA2,	nB2,	nE2
	dc.b		$18
	smpsJump	asd_FM2
	smpsStop

; FM3 Data
asd_FM3:
	smpsFMvoice	$03
	smpsModSet	$0D,	$01,	$02,	$06
asd_Loop04:
	smpsPan		panRight,	$00
	dc.b		nE5,	$0C,	nB4,	$06,	nRst,	nB4,	nRst,	nB4
	dc.b		$0C,	nG4,	$06,	nRst,	nG4,	nRst,	nG4,	$0C
	dc.b		nE4,	$06,	nRst,	nE4,	nRst,	nG4,	$24,	nA4
	dc.b		$30
	smpsLoop	$00,	$02,	asd_Loop04
	smpsFMvoice	$04
	dc.b		nB3,	$0C,	nRst,	$54,	nG3,	$0C,	nRst,	$54
	dc.b		nB3,	$0C,	nRst,	$54
	smpsFMvoice	$05
	dc.b		nC5,	$0C,	nB4,	nA4,	nA4,	$3C
	smpsFMvoice	$04
	dc.b		nB3,	$0C,	nRst,	$54,	nG3,	$0C,	nRst,	$54
	dc.b		nB3,	$0C,	nRst,	$54
	smpsFMvoice	$05
	dc.b		nC5,	$0C,	nB4,	nA4,	nD5,	$3C
asd_Loop05:
	smpsFMvoice	$06
	dc.b		nG3,	$30,	nC4,	nA3,	nD4,	nG3,	nB3,	nE4
	dc.b		$18,	nB3,	nG3,	nE3
	smpsLoop	$00,	$02,	asd_Loop05
	smpsJump	asd_FM3
	smpsStop

; FM4 Data
asd_FM4:
	smpsFMvoice	$03
	smpsModSet	$0D,	$01,	$02,	$06
asd_Loop06:
	smpsPan		panLeft,	$00
	dc.b		nB4,	$0C,	nG4,	$06,	nRst,	nG4,	nRst,	nG4
	dc.b		$0C,	nE4,	$06,	nRst,	nE4,	nRst,	nE4,	$0C
	dc.b		nB3,	$06,	nRst,	nB3,	nRst,	nE4,	$24,	nFs4
	dc.b		$30
	smpsLoop	$00,	$02,	asd_Loop06
	smpsFMvoice	$04
	dc.b		nG3,	$0C,	nRst,	$54,	nE3,	$0C,	nRst,	$54
	dc.b		nG3,	$0C,	nRst,	$54
	smpsFMvoice	$05
	dc.b		nD4,	$0C,	nD4,	nD4,	nFs4,	$3C
	smpsFMvoice	$04
	dc.b		nG3,	$0C,	nRst,	$54,	nE3,	$0C,	nRst,	$54
	dc.b		nG3,	$0C,	nRst,	$54
	smpsFMvoice	$05
	dc.b		nD4,	$0C,	nD4,	nD4,	nFs4,	$3C
asd_Loop07:
	smpsFMvoice	$06
	dc.b		nE3,	$30,	nG3,	nFs3,	nA3,	nE3,	nG3,	nB3
	dc.b		$18,	nG3,	nE3,	nB2
	smpsLoop	$00,	$02,	asd_Loop07
	smpsJump	asd_FM4
	smpsStop

; FM5 Data
asd_FM5:
	dc.b		nRst,	$1D
asd_Jump01:
	smpsModSet	$0D,	$01,	$02,	$06
asd_Loop08:
	smpsPan		panCentre,	$00
	smpsFMvoice	$02
	dc.b		nB5,	$06,	nRst,	nB5,	nRst,	nB5,	nRst,	nB5
	dc.b		nRst,	nB5,	nRst,	nB5,	nRst,	nB5,	nRst,	nB5
	dc.b		nRst,	nB5,	nRst
	smpsFMvoice	$07
	dc.b		nE3,	$24,	nFs3,	$30
	smpsLoop	$00,	$02,	asd_Loop08
	smpsFMvoice	$00
	dc.b		nE4,	$3C,	nFs4,	$0C,	nG4,	nA4,	nB4,	$18
	dc.b		nA4,	nG4,	nFs4,	nG4,	$0C,	nE4,	$06,	nRst
	dc.b		nE4,	nRst,	nE4,	$0C,	nB3,	$06,	nRst,	nB3
	dc.b		nRst,	nE4,	$0C,	nFs4,	$06,	nRst,	nA4,	$0C
	dc.b		nG4,	nFs4,	nA4,	$3C,	nE4,	nFs4,	$0C,	nG4
	dc.b		nA4,	nB4,	$18,	nA4,	nG4,	nFs4,	nG4,	$0C
	dc.b		nE4,	$06,	nRst,	nE4,	nRst,	nE4,	$0C,	nB3
	dc.b		$06,	nRst,	nB3,	nRst,	nE4,	$0C,	nFs4,	$06
	dc.b		nRst,	nA4,	$0C,	nG4,	nFs4,	nA4,	$18,	nA4
	dc.b		$0C,	nB4,	nA4,	nG4,	nE4,	$06,	nRst,	nC4
	dc.b		nRst,	nG4,	$0C,	nE4,	$06,	nRst,	nC4,	nRst
	dc.b		nG4,	$0C,	nE4,	$06,	nRst,	nA4,	$0C,	nFs4
	dc.b		$06,	nRst,	nD4,	nRst,	nA4,	$0C,	nFs4,	$06
	dc.b		nRst,	nD4,	nRst,	nA4,	$0C,	nFs4,	$06,	nRst
	dc.b		nB4,	$0C,	nG4,	$06,	nRst,	nE4,	nRst,	nB4
	dc.b		$0C,	nG4,	$06,	nRst,	nE4,	nRst,	nD5,	$0C
	dc.b		nC5,	$06,	nRst,	nB4,	$0C,	nC5,	$06,	nRst
	dc.b		nB4,	nRst,	nG4,	$3C,	nG4,	$0C,	nE4,	$06
	dc.b		nRst,	nC4,	nRst,	nG4,	$0C,	nE4,	$06,	nRst
	dc.b		nC4,	nRst,	nG4,	$0C,	nE4,	$06,	nRst,	nA4
	dc.b		$0C,	nFs4,	$06,	nRst,	nD4,	nRst,	nA4,	$0C
	dc.b		nFs4,	$06,	nRst,	nD4,	nRst,	nA4,	$0C,	nFs4
	dc.b		$06,	nRst,	nB4,	$0C,	nG4,	$06,	nRst,	nE4
	dc.b		nRst,	nB4,	$0C,	nG4,	$06,	nRst,	nE4,	nRst
	dc.b		nD5,	$0C,	nC5,	$06,	nRst,	nB4,	$0C,	nA4
	dc.b		$06,	nRst,	nB4,	nRst,	nE5,	$3C
	smpsJump	asd_Jump01
	smpsStop

; DAC Data
asd_DAC:
	dc.b		dSnare,	$0C,	dKick,	dKick,	dSnare,	dKick,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	$24,	dKick,	$18,	dSnare,	$0C
	dc.b		dSnare,	dSnare,	dKick,	dKick,	dSnare,	dKick,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	$24,	dKick,	$0C,	dSnare,	dSnare
	dc.b		dSnare
asd_Loop09:
	dc.b		dKick,	$0C,	dSnare,	dSnare,	dSnare,	$06,	dSnare,	dKick
	dc.b		$0C,	dSnare,	dKick,	dSnare
	smpsLoop	$00,	$0F,	asd_Loop09
	dc.b		dKick,	$0C,	dSnare,	dSnare,	dSnare,	$06,	dSnare,	dKick
	dc.b		$0C,	dSnare,	dSnare,	dSnare
	smpsJump	asd_DAC
	smpsStop

; PSG1 Data
asd_PSG1:
	smpsModSet	$0D,	$01,	$02,	$06
	dc.b		nRst,	$60,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nD5,	$0C,	nE5,	$06,	nRst,	nD5,	nRst,	nB4
	dc.b		$3C,	nB4,	$0C,	nG4,	$06,	nRst,	nE4,	nRst
	dc.b		nB4,	$0C,	nG4,	$06,	nRst,	nE4,	nRst,	nB4
	dc.b		$0C,	nG4,	$06,	nRst,	nC5,	$0C,	nA4,	$06
	dc.b		nRst,	nFs4,	nRst,	nC5,	$0C,	nA4,	$06,	nRst
	dc.b		nFs4,	nRst,	nC5,	$0C,	nA4,	$06,	nRst,	nD5
	dc.b		$0C,	nB4,	$06,	nRst,	nG4,	nRst,	nD5,	$0C
	dc.b		nB4,	$06,	nRst,	nG4,	nRst,	nFs5,	$0C,	nE5
	dc.b		$06,	nRst,	nD5,	$0C,	nC5,	$06,	nRst,	nD5
	dc.b		nRst,	nG5,	$3C
	smpsJump	asd_PSG1
	smpsStop

; PSG2 Data
asd_PSG2:
	smpsStop
	smpsStop

; PSG3 Data
asd_PSG3:
	smpsStop

asd_Voices:
	dc.b		$3A,$48,$56,$54,$41,$0F,$14,$53,$14,$04,$06,$06,$03,$00,$0F,$00
	dc.b		$00,$1F,$3F,$5F,$1F,$22,$13,$26,$84;			Voice 00
	dc.b		$00,$71,$10,$70,$10,$18,$58,$18,$1A,$09,$08,$01,$01,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$1A,$17,$1C,$83;			Voice 01
	dc.b		$34,$74,$21,$16,$71,$11,$1F,$1F,$1F,$08,$05,$08,$09,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$17,$88,$10,$88;			Voice 02
	dc.b		$2C,$43,$01,$21,$71,$0E,$11,$12,$17,$00,$00,$00,$00,$08,$00,$09
	dc.b		$00,$89,$F8,$F9,$F8,$17,$8F,$0C,$89;			Voice 03
	dc.b		$3D,$31,$50,$21,$41,$0D,$13,$13,$14,$03,$01,$06,$05,$05,$01,$05
	dc.b		$01,$FF,$FF,$FF,$FF,$1D,$8A,$88,$87;			Voice 04
	dc.b		$07,$75,$53,$12,$31,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$0C,$13,$0C
	dc.b		$0B,$FF,$FF,$FF,$FF,$8E,$86,$85,$89;			Voice 05
	dc.b		$3D,$71,$23,$41,$41,$10,$18,$14,$14,$01,$04,$02,$03,$00,$06,$04
	dc.b		$07,$FF,$FC,$FF,$F8,$1D,$88,$86,$86;			Voice 06
	dc.b		$10,$21,$13,$38,$44,$1D,$1D,$1D,$1E,$04,$07,$04,$07,$00,$00,$00
	dc.b		$00,$5F,$5F,$5F,$5F,$25,$0A,$1F,$8B;			Voice 07
	even
