; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Sat Jul 6 2013, 15:52:53
; -------------------------------------------------------

OrangeRocket_Header:
	smpsHeaderVoice	OrangeRocket_Voices
	smpsHeaderChan	$04,	$00
	smpsHeaderTempo	$02,	$02

	smpsHeaderFM	OrangeRocket_FM1,	smpsPitch00,	$10
	smpsHeaderFM	OrangeRocket_FM2,	smpsPitch00,	$10
	smpsHeaderFM	OrangeRocket_FM3,	smpsPitch00,	$14
	smpsHeaderFM	OrangeRocket_FM4,	smpsPitch00,	$14

; FM1 Data
OrangeRocket_FM1:
	smpsCall	OrangeRocket_Call01
	smpsStop

; FM2 Data
OrangeRocket_FM2:
	smpsCall	OrangeRocket_Call02
	smpsStop

; FM3 Data
OrangeRocket_FM3:
	smpsCall	OrangeRocket_Call03
	smpsStop

; FM4 Data
OrangeRocket_FM4:
	smpsCall	OrangeRocket_Call04
	smpsStop

OrangeRocket_Call01:
	smpsFMvoice	$00
	dc.b		nF1,	$01,	nBb1,	nC2,	nF2,	nG2,	nC3,	nF2
	dc.b		nBb2,	nC3,	nF3,	nG3,	nC4,	nF3,	nBb3,	nC4
	dc.b		nF4,	nG4,	nC5,	nF4,	nBb4,	nC5,	nF5,	nG5
	dc.b		nC6,	nF5,	nBb5,	nC6,	nF6,	nG6,	nC7,	nF6
	dc.b		nBb6,	nC7,	nF7,	nG7,	$02,	nF7,	$01,	nBb7
	dc.b		$04,	nRst,	$0D
	smpsReturn

OrangeRocket_Call02:
	smpsFMvoice	$01
	dc.b		nF1,	$01,	nBb1,	nC2,	nF2,	nG2,	nC3,	nF2
	dc.b		nBb2,	nC3,	nF3,	nG3,	nC4,	nF3,	nBb3,	nC4
	dc.b		nF4,	nG4,	nC5,	nF4,	nBb4,	nC5,	nF5,	nG5
	dc.b		nC6,	nF5,	nBb5,	nC6,	nF6,	nG6,	nC7,	nF6
	dc.b		nBb6,	nC7,	nF7,	nG7,	$02,	nF7,	$01,	nBb7
	dc.b		$04,	nRst,	$0D
	smpsReturn

OrangeRocket_Call03:
	dc.b		smpsNoAttack,	$02
	smpsFMvoice	$02
	dc.b		nF1,	$01,	nBb1,	nC2,	nF2,	nG2,	nC3,	nF2
	dc.b		nBb2,	nC3,	nF3,	nG3,	nC4,	nF3,	nBb3,	nC4
	dc.b		nF4,	nG4,	nC5,	nF4,	nBb4,	nC5,	nF5,	nG5
	dc.b		nC6,	nF5,	nBb5,	nC6,	nF6,	nG6,	nC7,	nF6
	dc.b		nBb6,	nC7,	nF7,	nG7,	$02,	nF7,	$01,	nBb7
	dc.b		$04,	nRst,	$0B
	smpsReturn

OrangeRocket_Call04:
	dc.b		smpsNoAttack,	$03
	smpsFMvoice	$02
	dc.b		nF1,	$01,	nBb1,	nC2,	nF2,	nG2,	nC3,	nF2
	dc.b		nBb2,	nC3,	nF3,	nG3,	nC4,	nF3,	nBb3,	nC4
	dc.b		nF4,	nG4,	nC5,	nF4,	nBb4,	nC5,	nF5,	nG5
	dc.b		nC6,	nF5,	nBb5,	nC6,	nF6,	nG6,	nC7,	nF6
	dc.b		nBb6,	nC7,	nF7,	nG7,	$02,	nF7,	$01,	nBb7
	dc.b		$04,	nRst,	$0A
	smpsReturn

OrangeRocket_Voices:
;	Voice $00
;	$3B
;	$01, $02, $04, $02, 	$18, $1B, $19, $16, 	$1C, $19, $1D, $1F
;	$0A, $02, $02, $03, 	$0F, $1F, $1F, $1E, 	$26, $1B, $1B, $80
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 00

;	Voice $01
;	$25
;	$31, $12, $0A, $22, 	$1F, $1F, $1F, $1F, 	$0E, $0B, $10, $0E
;	$10, $00, $00, $00, 	$E7, $3F, $3F, $3F, 	$0B, $88, $88, $88
	dc.b		$3D,$01,$01,$03,$01,$50,$52,$58,$59,$0F,$02,$02,$02,$04,$00,$00
	dc.b		$00,$17,$09,$19,$19,$13,$0C,$14,$80;			Voice 01

;	Voice $00
;	$3B
;	$01, $02, $04, $02, 	$18, $1B, $19, $16, 	$1C, $19, $1D, $1F
;	$0A, $02, $02, $03, 	$0F, $1F, $1F, $1E, 	$26, $1B, $1B, $80
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 00

;	Voice $01
;	$25
;	$31, $12, $0A, $22, 	$1F, $1F, $1F, $1F, 	$0E, $0B, $10, $0E
;	$10, $00, $00, $00, 	$E7, $3F, $3F, $3F, 	$0B, $88, $88, $88
	dc.b		$3D,$01,$01,$03,$01,$50,$52,$58,$59,$0F,$02,$02,$02,$04,$00,$00
	dc.b		$00,$17,$09,$19,$19,$13,$0C,$14,$80;			Voice 01