; =============================================================================================
; Project Name:		LevClr
; Created:		29th January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

LevClr_Header:
	smpsHeaderVoice	LevClr_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$08

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
	smpsFMvoice	$00
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
	dc.b		$00,$02,$13,$05,$00,$03,$04,$00,$1A,$00,$00,$00,$77,$00,$01,$00
	dc.b		$C7,$00,$04,$01,$34,$00,$04,$01,$A6;			Voice 03
	dc.b		$00,$04,$80,$40,$96,$10,$1C,$02,$02,$04,$97,$97,$08,$96,$08,$97
	dc.b		$04,$96,$96,$08,$97,$04,$96,$96,$08;			Voice 04
	dc.b		$97,$04,$96,$02,$02,$04,$04,$97,$96,$96,$08,$97,$04,$96,$96,$08
	dc.b		$97,$04,$96,$96,$08,$97,$04,$96,$96;			Voice 05
	dc.b		$97,$97,$97,$96,$08,$97,$96,$97,$96,$97,$0C,$96,$04,$97,$08,$F7
	dc.b		$00,$03,$FF,$F0,$96,$08,$97,$96,$97;			Voice 06
	dc.b		$97,$04,$96,$02,$97,$04,$96,$02,$97,$97,$97,$04,$96,$97,$02,$02
	dc.b		$04,$F6,$FF,$AF,$F8,$00,$0C,$F8,$00;			Voice 07
	dc.b		$09,$F8,$00,$19,$C4,$08,$F6,$FF,$F6,$EF,$00,$B9,$02,$E7,$BB,$02
	dc.b		$E7,$B9,$02,$E7,$BB,$02,$F7,$00,$1F;			Voice 08
	dc.b		$FF,$F6,$E3,$EF,$03,$C7,$18,$E7,$C2,$08,$E7,$C4,$0C,$C0,$0C,$BD
	dc.b		$08,$BB,$18,$E7,$BF,$08,$E7,$C0,$0C;			Voice 09
	dc.b		$C5,$0C,$C9,$08,$C7,$18,$E7,$C9,$08,$E7,$C5,$0C,$C4,$0C,$C0,$08
	dc.b		$BB,$18,$BF,$08,$C0,$0C,$C5,$0C,$E3;			Voice 0A
	dc.b		$E0,$80,$F8,$00,$30,$F8,$00,$40,$F8,$00,$2A,$F8,$00,$4B,$E0,$80
	dc.b		$F8,$00,$22,$F8,$00,$32,$F8,$00,$1C;			Voice 0B
	dc.b		$F8,$00,$3D,$80,$02,$F0,$00,$01,$02,$08,$E6,$0B,$E0,$40,$F8,$FF
	dc.b		$A8,$C4,$06,$F4,$E6,$F5,$E0,$C0,$F6;			Voice 0C
	dc.b		$FF,$DB,$EF,$01,$AF,$04,$80,$02,$AF,$17,$E7,$F0,$00,$01,$E6,$3F
	dc.b		$02,$80,$01,$F4,$E3,$AF,$05,$80,$01;			Voice 0D
	dc.b		$AD,$17,$E7,$F0,$00,$01,$E6,$3F,$02,$80,$01,$F4,$E3,$AF,$05,$80
	dc.b		$01,$AC,$04,$80,$02,$AD,$11,$E7,$F0;			Voice 0E
	dc.b		$00,$01,$E6,$3F,$02,$80,$01,$F4,$E3,$E0,$40,$F8,$00,$35,$F8,$00
	dc.b		$45,$F8,$00,$2F,$F8,$00,$50,$E0,$40;			Voice 0F
	dc.b		$F8,$00,$27,$F8,$00,$37,$F8,$00,$21,$F8,$00,$42,$E0,$C0,$F8,$00
	dc.b		$19,$F8,$00,$29,$F8,$00,$13,$F8,$00;			Voice 10
	dc.b		$34,$F8,$00,$0D,$F8,$00,$1D,$F8,$00,$07,$F8,$00,$28,$F6,$FF,$D6
	dc.b		$EF,$01,$B6,$04,$80,$02,$B6,$17,$E7;			Voice 11
	dc.b		$F0,$00,$01,$E6,$3F,$02,$80,$01,$F4,$E3,$B6,$05,$80,$01,$B4,$17
	dc.b		$E7,$F0,$00,$01,$E6,$3F,$02,$80,$01;			Voice 12
	dc.b		$F4,$E3,$B6,$05,$80,$01,$B4,$04,$80,$02,$B4,$11,$E7,$F0,$00,$01
	dc.b		$E6,$3F,$02,$80,$01,$F4,$E3,$F8,$00;			Voice 13
	dc.b		$4C,$F8,$00,$54,$F8,$00,$46,$F8,$00,$57,$F8,$00,$40,$F8,$00,$48
	dc.b		$F8,$00,$3A,$F8,$00,$4B,$F8,$00,$22;			Voice 14
	dc.b		$A1,$04,$80,$02,$A1,$06,$AD,$02,$80,$A1,$80,$AD,$80,$A1,$80,$AD
	dc.b		$80,$F8,$00,$0E,$A1,$06,$A0,$A1,$14;			Voice 15
	dc.b		$F7,$00,$02,$FF,$E0,$F6,$FF,$D1,$A3,$02,$80,$AF,$80,$A3,$80,$AF
	dc.b		$80,$A3,$80,$AF,$80,$A3,$80,$AF,$80;			Voice 16
	dc.b		$E3,$EF,$01,$A3,$04,$80,$02,$A3,$19,$80,$01,$E3,$A3,$05,$80,$01
	dc.b		$A1,$19,$80,$01,$E3,$A3,$05,$80,$01;			Voice 17
	dc.b		$A0,$04,$80,$02,$A1,$14,$E3,$33,$00,$D0,$00,$00,$1F,$1F,$1F,$1F
	dc.b		$04,$1F,$1F,$00,$00,$00,$00,$00,$F3;			Voice 18
	dc.b		$03,$03,$03,$1E,$0C,$50,$17,$30,$01,$00,$10,$D0,$1F,$1F,$1F,$1F
	dc.b		$06,$1F,$1F,$1F,$00,$00,$00,$00,$FA;			Voice 19
	dc.b		$0A,$0A,$0A,$14,$15,$19,$16,$3D,$31,$20,$D0,$21,$1F,$DF,$1F,$5F
	dc.b		$00,$01,$00,$00,$07,$07,$07,$02,$B9;			Voice 1A
	dc.b		$E9,$07,$06,$18,$14,$14,$14,$2D,$31,$11,$D1,$10,$09,$CB,$0B,$4B
	dc.b		$00,$00,$00,$00,$00,$00,$00,$02,$04;			Voice 1B
	dc.b		$05,$04,$05,$18,$13,$13,$13,$00;			Voice 1C
	even
