; Name: Labyrinth Zone
; Author: Trox

Lab_Header:
	smpsHeaderVoice	Lab_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$02

	smpsHeaderDAC	Lab_DAC
	smpsHeaderFM	Lab_FM1,	smpsPitch00,	$10
	smpsHeaderFM	Lab_FM2,	smpsPitch00,	$10
	smpsHeaderFM	Lab_FM3,	smpsPitch00,	$10
	smpsHeaderFM	Lab_FM4,	smpsPitch00,	$10
	smpsHeaderFM	Lab_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	Lab_PSG1,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	Lab_PSG2,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	Lab_PSG3,	smpsPitch00+$0B,	$00,	$00

; FM1 Data
Lab_FM1:
	smpsPan		panCentre,	$00
	smpsFMvoice	$00
	dc.b		nG5,	$32,	nRst,	$0A,	nEb5,	$07,	nF5,	nRst
	dc.b		$03,	nEb5,	nRst,	$07,	nC5,	$2B,	$04,	nRst
	dc.b		$06,	nEb5,	$04,	nRst,	$03,	nF5,	$07,	nRst
	dc.b		$06,	nG5,	$32,	nRst,	$0A,	nEb5,	$07,	nF5
	dc.b		nRst,	$03,	nEb5,	nRst,	$07,	nC5,	$2B,	$04
	dc.b		nRst,	$06,	nEb5,	$04,	nRst,	$03,	nC5,	$07
	dc.b		nRst,	$03,	nC5,	nRst,	$07,	nC5,	$03,	nBb4
	dc.b		$04,	nRst,	$06,	nG4,	$07,	nEb5,	$03,	nRst
	dc.b		$07,	nF5,	nRst,	$03,	nF5,	nEb5,	$04,	nRst
	dc.b		$06,	nG4,	$07,	nBb4,	$03,	nRst,	$07,	nC5
	dc.b		$32,	nRst,	$1E,	nC5,	$03,	nRst,	$07,	nC5
	dc.b		$03,	nBb4,	$04,	nRst,	$06,	nG4,	$07,	nEb5
	dc.b		$03,	nRst,	$07,	nF5,	nRst,	$03,	nF5,	nEb5
	dc.b		$04,	nRst,	$06,	nG4,	$07,	nBb4,	$03,	nRst
	dc.b		$07,	nC5,	$32,	nRst,	$1E,	nC6,	$0A,	$03
	dc.b		nBb5,	$0A,	nG5,	$07,	nEb5,	$0A,	nF5,	nF5
	dc.b		$03,	nEb5,	$0A,	nF5,	$07,	nG5,	$0A,	nF5
	dc.b		nF5,	$03,	nEb5,	$0A,	nC5,	$07,	nEb5,	$0A
	dc.b		nF5,	nF5,	$03,	nEb5,	$04,	nC5,	$03,	nEb5
	dc.b		nF5,	$07,	nG5,	$0A,	nC6,	nC6,	$03,	nBb5
	dc.b		$0A,	nG5,	$07,	nEb5,	$0A,	nF5,	nF5,	$03
	dc.b		nEb5,	$0A,	nF5,	$07,	nG5,	$0A,	nF5,	nF5
	dc.b		$03,	nEb5,	$0A,	nC5,	$07,	nEb5,	$0A,	nF5
	dc.b		nF5,	$03,	nEb5,	$04,	nC5,	$03,	nEb5,	nF5
	dc.b		$07,	nG5,	$0A,	$03
	smpsJump	Lab_FM1

; FM2 Data
Lab_FM2:
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	dc.b		nC3,	$0A,	nEb3,	nF3,	nFs3,	$07,	nG3,	$03
	dc.b		nRst,	$07,	nG3,	$03,	nA2,	$0A,	nBb2,	nB2
	dc.b		nC3,	nEb3,	nF3,	nFs3,	$07,	nG3,	$03,	nRst
	dc.b		$07,	nG3,	$03,	nA2,	$0A,	nBb2,	nB2,	nC3
	dc.b		nEb3,	nF3,	nFs3,	$07,	nG3,	$03,	nRst,	$07
	dc.b		nG3,	$03,	nA2,	$0A,	nBb2,	nB2,	nC3,	nEb3
	dc.b		nF3,	nFs3,	$07,	nG3,	$03,	nRst,	$07,	nG3
	dc.b		$03,	nA2,	$0A,	nBb2,	nB2,	nC3,	nEb3,	nF3
	dc.b		nFs3,	$07,	nG3,	$03,	nRst,	$07,	nG3,	$03
	dc.b		nA2,	$0A,	nBb2,	nB2,	nC3,	nEb3,	nF3,	nFs3
	dc.b		$07,	nG3,	$03,	nRst,	$07,	nG3,	$03,	nA2
	dc.b		$0A,	nBb2,	nB2,	nC3,	nEb3,	nF3,	nFs3,	$07
	dc.b		nG3,	$03,	nRst,	$07,	nG3,	$03,	nA2,	$0A
	dc.b		nBb2,	nB2,	nC3,	nEb3,	nF3,	nFs3,	$07,	nG3
	dc.b		$03,	nRst,	$07,	nG3,	$03,	nA2,	$0A,	nBb2
	dc.b		nB2,	nC3,	nC3,	nC3,	nC3,	$04,	$03,	$03
	dc.b		nBb2,	$0A,	$0A,	$0A,	$04,	$03,	$03,	nAb2
	dc.b		$0A,	$0A,	$0A,	$04,	$03,	$03,	nG2,	$0A
	dc.b		$0A,	$0A,	$04,	$03,	$03,	nC3,	$0A,	$0A
	dc.b		$0A,	$04,	$03,	$03,	nBb2,	$0A,	$0A,	$0A
	dc.b		$04,	$03,	$03
	smpsFMvoice	$00
	dc.b		nAb2,	$0A
	smpsFMvoice	$01
	dc.b		$0A,	$0A,	$04,	$03,	$03,	nG2,	$0A,	$0A
	dc.b		nAb2,	$04,	$03,	$03,	nBb2,	$04,	$03,	$03
	smpsJump	Lab_FM2

; FM3 Data
Lab_FM3:
	dc.b		nRst,	$6E
	smpsPan		panCentre,	$00
	smpsFMvoice	$00
	dc.b		nC5,	$04,	nEb5,	$03,	nF5,	nG5,	$04,	nF5
	dc.b		$03,	nEb5,	nC5,	$04,	nEb5,	$03,	nC5,	nBb4
	dc.b		$04,	nC5,	$03,	nBb4,	nG4,	$04,	nBb4,	$03
	dc.b		nG4,	nRst,	$6E,	nC5,	$04,	nEb5,	$03,	nF5
	dc.b		nG5,	$04,	nF5,	$03,	nEb5,	nC5,	$04,	nEb5
	dc.b		$03,	nC5,	nBb4,	$04,	nC5,	$03,	nBb4,	nG4
	dc.b		$04,	nBb4,	$03,	nG4,	nRst,	$7F,	nG5,	$03
	dc.b		nRst,	$07,	nG5,	$03,	nRst,	$07,	nG5,	$03
	dc.b		nRst,	$7F,	$0A,	nG5,	$03,	nRst,	$07,	nG5
	dc.b		$03,	nRst,	$07,	nG5,	$03,	nRst,	$7F,	$7F
	dc.b		$4C
	smpsJump	Lab_FM3

; FM4 Data
Lab_FM4:
	smpsAlterVol	$0E
	dc.b		$0A
	smpsJump	Lab_FM3

; FM5 Data
Lab_FM5:
	dc.b		$0A
	smpsAlterVol	$0E
	smpsJump	Lab_FM1

; PSG1 Data
Lab_PSG1:
	smpsPSGvoice	$04
	dc.b		nC6,	$04,	nRst,	$06	
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$06
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$56
	smpsAlterVol	-$12
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$06
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$06
	smpsAlterVol	$03
	dc.b		nC6,	$04,	nRst,	$7F
	smpsAlterVol	-$12
	dc.b		$7F,	$7F,	$7F,	$7F,	$5B
	smpsJump	Lab_PSG1

; PSG2 Data
Lab_PSG2:
	dc.b		$03
	smpsAlterVol	$03
	smpsJump	Lab_PSG1

; PSG3 Data
Lab_PSG3:
	smpsPSGform	$E7
Lab_Jump01:
	smpsPSGvoice	$02
	dc.b		nAb6,	$05,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst,	nAb6,	$04,	$03,	$03,	$05,	nRst
	dc.b		$05
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst,	nAb6,	$04,	$03,	$03,	$05,	nRst
	dc.b		$05
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst,	nAb6,	$04,	$03,	$03,	$05,	nRst
	dc.b		$05
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst,	nAb6,	$04,	$03,	$03,	$05,	nRst
	dc.b		$05
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst,	nAb6,	$04,	$03,	$03,	$05,	nRst
	dc.b		$05
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst,	nAb6,	$04,	$03,	$03,	$05,	nRst
	dc.b		$05
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst,	nAb6,	$04,	$03,	$03,	$05,	nRst
	dc.b		$05
	smpsPSGvoice	$01
	dc.b		nAb6,	nRst
	smpsPSGvoice	$02
	dc.b		nAb6,	nRst,	nAb6,	$04,	$03,	nRst,	$03
	smpsJump	Lab_Jump01

; DAC Data
Lab_DAC:
	smpsPan		panCentre,	$00
	dc.b		dKick,	$05,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst,	dKick,	nRst,	dSnare,	nRst,	dKick,	nRst,	dSnare
	dc.b		nRst
	smpsJump	Lab_DAC

Lab_Voices:
	dc.b		$07,$34,$74,$32,$71,$1F,$1F,$1F,$1F,$0A,$0A,$05,$03,$00,$00,$00 
	dc.b		$00,$3F,$3F,$2F,$2F,$8A,$8A,$80,$80
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$80
	dc.b	'Created by Trox.'
	even
