; =============================================================================================
; Project Name:		dp
; Created:		5th June 2010
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

dp_Header:
	smpsHeaderVoice	dp_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$00

	smpsHeaderDAC	dp_DAC
	smpsHeaderFM	dp_FM1,	smpsPitch00,	$18
	smpsHeaderFM	dp_FM2,	smpsPitch01lo,	$18
	smpsHeaderFM	dp_FM3,	smpsPitch00,	$0D
	smpsHeaderFM	dp_FM4,	smpsPitch00+$09,	$10
	smpsHeaderFM	dp_FM5,	smpsPitch00,	$0A
	smpsHeaderPSG	dp_PSG1,	smpsPitch01lo,	$04,	$00
	smpsHeaderPSG	dp_PSG2,	smpsPitch01lo,	$07,	$00
	smpsHeaderPSG	dp_PSG3,	smpsPitch02hi+$0B,	$00,	$00
	dc.b		nAb4,	nBb0,	$00,	$bf,	nD6,	nBb0,	$00,	$bf
	dc.b		nCs7,	nBb0,	$00,	$bf
	smpsNoteFill	$8B
	dc.b		$00,	$bf

; DAC Data
dp_DAC:
dp_Loop01:

	dc.b	$AA, $12, $81, $12, $82, $0C, $81, $06, $81, $0C, $81, $12, $82, $0C
	dc.b	$AA, $12, $81, $12, $82, $0C, $81, $06, $81, $0C, $81, $12, $82, $0C
	dc.b	$AA, $12, $81, $12, $82, $0C, $81, $06, $81, $0C, $81, $12, $82, $0C
	dc.b	$AA, $12, $81, $12, $82, $0C, $81, $06, $81, $0C, $81, $12, $82, $0C
	dc.b	$AA, $12, $81, $12, $82, $0C, $81, $06, $81, $0C, $81, $12, $82, $0C
	dc.b	$AA, $12, $81, $12, $82, $0C, $81, $06, $81, $0C, $81, $12, $82, $0C
	dc.b	$AA, $12, $81, $12, $82, $0C, $81, $06, $81, $0C, $81, $12, $82, $0C
	dc.b	$AA, $12, $81, $12, $82, $0C, $81, $06, $81, $0C, $86, $06, $86, $06, $86, $06, $82, $0C
	smpsJump	dp_Loop01
; FM1 Data
dp_FM1:
	smpsCall	dp_Call01

dp_Call01:
	smpsFMvoice	$01
	smpsPan		panCentre,	$00
	smpsModSet	$01,	$01,	$03,	$05
dp_Loop02:
	dc.b		nG4,	$30,	nFs4,	$18,	nF4,	nEb4,	$30,	nF4
	dc.b		$18,	nFs4
	smpsLoop	$00,	$03,	dp_Loop02
	dc.b		nG4,	$30,	nG5,	nFs5,	nFs4
	smpsJump	dp_Loop02

; FM2 Data
dp_FM2:
	smpsCall	dp_Call01

; FM3 Data
dp_FM3:
	smpsFMvoice	$02
	smpsPan		panLeft,	$00
dp_Loop03:
	dc.b		nBb1,	$60,	smpsNoAttack
	smpsLoop	$00,	$06,	dp_Loop03
	dc.b		nBb1,	nA1
	smpsJump	dp_Loop03

; FM4 Data
dp_FM4:
	smpsFMvoice	$02
	smpsPan		panRight,	$00
	smpsJump	dp_Loop03

; FM5 Data
dp_FM5:
	smpsFMvoice	$03
	smpsPan		panCentre,	$00
dp_Jump01:
	dc.b		nG3,	$06,	nRst,	$0C,	nG4,	$06,	nRst,	$30
	dc.b		nRst,	$18,	nRst,	$60
	smpsFMvoice	$04
	smpsAlterPitch	$18
	smpsAlterVol	$19
	dc.b		nD4,	$03,	nBb3,	nG3,	nBb3
	smpsAlterVol	$FC
	dc.b		nEb4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$FC
	dc.b		nE4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$FC
	dc.b		nEb4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$FC
	dc.b		nD4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$FC
	dc.b		nEb4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$FD
	dc.b		nE4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$FE
	dc.b		nF4,	nBb3,	nG3,	nBb3,	nFs4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$02
	dc.b		nEb4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$03
	dc.b		nE4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$04
	dc.b		nEb4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$04
	dc.b		nD4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$04
	dc.b		nEb4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$04
	dc.b		nF4,	nBb3,	nG3,	nBb3
	smpsAlterVol	$04
	dc.b		nFs4,	nBb3,	nG3,	nBb3
	smpsFMvoice	$03
	smpsAlterPitch	$E8
	smpsAlterVol	$E7
	dc.b		nG3,	$06,	nRst,	$0C,	nG4,	$06,	nRst,	$30
	dc.b		nRst,	$18,	nRst,	$60,	nG3,	$06,	nRst,	$0C
	dc.b		nG4,	$06,	nRst,	$30,	nRst,	$18
	smpsFMvoice	$04
	smpsAlterPitch	$18
	smpsAlterVol	$14
	dc.b		nFs2,	$03,	nBb2,	nCs3,	nE3
	smpsAlterVol	$FA
	dc.b		nFs3,	nBb3,	nCs4,	nE4
	smpsAlterVol	$FA
	dc.b		nFs3,	nBb3,	nCs4,	nE4
	smpsAlterVol	$FA
	dc.b		nFs4,	nBb4,	nCs5,	nE5,	nFs5,	nE5,	nCs5,	nBb4
	smpsAlterVol	$06
	dc.b		nFs4,	nE4,	nCs4,	nBb3
	smpsAlterVol	$06
	dc.b		nFs3,	nE3,	nCs3,	nBb2
	smpsAlterVol	$06
	dc.b		nFs2,	nBb2,	nCs3,	nFs3
	smpsFMvoice	$03
	smpsAlterPitch	$E8
	smpsAlterVol	$EC
	smpsJump	dp_Jump01

; PSG1 Data
dp_PSG1:
	smpsPSGvoice	$02
	smpsCall	dp_Call02

dp_Call02:
	dc.b		nRst,	$60,	nRst,	$60,	nD4,	$03,	nBb3,	nG3
	dc.b		nBb3,	nEb4,	nBb3,	nG3,	nBb3
	smpsSetVol	$FF
	dc.b		nE4,	nBb3,	nG3,	nBb3,	nEb4,	nBb3,	nG3,	nBb3
	smpsSetVol	$FF
	dc.b		nD4,	nBb3,	nG3,	nBb3,	nEb4,	nBb3,	nG3,	nBb3
	smpsSetVol	$FF
	dc.b		nE4,	nBb3,	nG3,	nBb3,	nF4,	nBb3,	nG3,	nBb3
	dc.b		nFs4,	nBb3,	nG3,	nBb3,	nEb4,	nBb3,	nG3,	nBb3
	smpsSetVol	$01
	dc.b		nE4,	nBb3,	nG3,	nBb3,	nEb4,	nBb3,	nG3,	nBb3
	smpsSetVol	$01
	dc.b		nD4,	nBb3,	nG3,	nBb3,	nEb4,	nBb3,	nG3,	nBb3
	smpsSetVol	$01
	dc.b		nF4,	nBb3,	nG3,	nBb3,	nFs4,	nBb3,	nG3,	nBb3
	dc.b		nRst,	$60,	nRst,	$60,	nRst,	$60,	nFs2,	$03
	dc.b		nBb2,	nCs3,	nE3
	smpsSetVol	$FF
	dc.b		nFs3,	nBb3,	nCs4,	nE4
	smpsSetVol	$FF
	dc.b		nFs3,	nBb3,	nCs4,	nE4
	smpsSetVol	$FF
	dc.b		nFs4,	nBb4,	nCs5,	nE5,	nFs5,	nE5,	nCs5,	nBb4
	smpsSetVol	$01
	dc.b		nFs4,	nE4,	nCs4,	nBb3
	smpsSetVol	$01
	dc.b		nFs3,	nE3,	nCs3,	nBb2
	smpsSetVol	$01
	dc.b		nFs2,	nBb2,	nCs3,	nFs3
	smpsJump	dp_Call02

; PSG2 Data
dp_PSG2:
	smpsModSet	$01,	$01,	$02,	$05
	smpsPSGvoice	$02
	dc.b		nRst,	$03
	smpsCall	dp_Call02

; PSG3 Data
dp_PSG3:
	smpsPSGform	$E7
dp_Jump02:
	smpsPSGvoice	$04
dp_Loop04:
	dc.b		nC4,	$0C
	smpsSetVol	$04
	smpsPSGvoice	$09
	dc.b		nC4
	smpsSetVol	$FE
	dc.b		nC4
	smpsSetVol	$02
	dc.b		nC4
	smpsSetVol	$FC
	smpsLoop	$00,	$02,	dp_Loop04
	smpsJump	dp_Jump02
dp_Jump03:
	dc.b		nBb0,	$06,	nRst,	$0C,	nBb0,	$06,	nRst,	$18
	dc.b		nBb0,	$06,	nBb0,	nRst,	nBb0,	nRst,	$18
	smpsJump	dp_Jump03
dp_Jump04:
	dc.b		nA1,	$24,	nB0,	$0C,	nRst,	$24,	nB0,	$0C
	smpsJump	dp_Jump04
dp_Loop05:
	dc.b		nA1,	$60
	smpsLoop	$00,	$07,	dp_Loop05
	dc.b		$30,	$12,	nE0,	$06,	nF0,	nFs0,	nRst,	$0C
	smpsJump	dp_Loop05
dp_Jump05:
	dc.b		nAb0,	$60
	smpsJump	dp_Jump05

dp_Voices:
	dc.b		$38,$0A,$70,$30,$00,$1F,$1F,$1F,$1F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$26,$26,$26,$28,$24,$2D,$12,$80;			Voice 00
	dc.b		$0D,$40,$50,$1B,$7F,$4E,$5F,$5F,$5F,$07,$1F,$02,$0D,$05,$07,$00
	dc.b		$07,$65,$08,$08,$07,$00,$80,$80,$80;			Voice 01
	dc.b		$07,$34,$74,$02,$01,$1F,$1F,$1F,$1F,$0A,$0A,$05,$03,$00,$00,$00
	dc.b		$00,$37,$37,$27,$27,$8A,$8A,$80,$80;			Voice 02
	dc.b		$3D,$37,$74,$04,$34,$DF,$0A,$4A,$4A,$04,$0F,$0F,$02,$01,$03,$00
	dc.b		$03,$20,$13,$13,$13,$1C,$85,$85,$85;			Voice 03
	dc.b		$2C,$35,$76,$35,$36,$1F,$1D,$1F,$1C,$03,$0A,$03,$0A,$02,$02,$02
	dc.b		$02,$A3,$77,$A3,$77,$1E,$80,$28;			Voice 04
	even
