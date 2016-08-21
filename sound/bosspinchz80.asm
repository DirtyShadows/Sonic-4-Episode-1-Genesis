pinchmode_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     pinchmode_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $05

	smpsHeaderDAC       pinchmode_DAC
	smpsHeaderFM        pinchmode_FM1,	$18, $14
	smpsHeaderFM        pinchmode_FM2,	$00, $0C
	smpsHeaderFM        pinchmode_FM3,	$0C, $12
	smpsHeaderFM        pinchmode_FM4,	$18, $14
	smpsHeaderFM        pinchmode_FM5,	$0C, $12
	smpsHeaderPSG       pinchmode_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       pinchmode_PSG2,	$DC, $04, $00, $00
	smpsHeaderPSG       pinchmode_PSG3,	$0B, $00, $00, $00

; FM1 Data
pinchmode_FM1:
	smpsPan             panLeft, $00
	dc.b	nRst, $10
	smpsSetvoice        $00
	dc.b	nC4, $04, nC3, nF3, nG3, nEb4, nF3, nG3, nC4, nD4, nEb4, nD4
	dc.b	nCs4, $14, nC4, $04, nC3, nF3, nG3, nEb4, nF3, nG3, nC4, nD4
	dc.b	nEb4, nD4, nCs4, $14, nC3, $06, nRst, $02, nG2, $04, nC3, nRst
	dc.b	nEb3, nRst, nC3, nEb3, nRst, nEb3, nRst, nD3, nRst, nCs3, nRst, nC4
	dc.b	nC3, nF3, nG3, nEb4, nF3, nG3, nC4, nD4, nEb4, nD4, nCs4, $14
	dc.b	nC4, $04, nC3, nF3, nG3, nEb4, nF3, nG3, nC4, nD4, nEb4, nD4
	dc.b	nCs4, $14, nC3, $06, nRst, $02, nG2, $04, nC3, nRst, nEb3, nRst
	dc.b	nC3, nEb3, nRst, nEb3, nRst, nD3, nRst, nCs3, nRst, $24
	smpsPan             panLeft, $00

pinchmode_Jump05:
	smpsSetvoice        $00
	dc.b	nC4, $04, nC3, nF3, nG3, nEb4, nF3, nG3, nC4, nD4, nEb4, nD4
	dc.b	nCs4, $14, nC4, $04, nC3, nF3, nG3, nEb4, nF3, nG3, nC4, nD4
	dc.b	nEb4, nD4, nCs4, $14, nC3, $06, nRst, $02, nG2, $04, nC3, nRst
	dc.b	nEb3, nRst, nC3, nEb3, nRst, nEb3, nRst, nD3, nRst, nCs3, nRst, $24
	dc.b	nC4, $04, nC3, nF3, nG3, nEb4, nF3, nG3, nC4, nD4, nEb4, nD4
	dc.b	nCs4, $14, nC4, $04, nC3, nF3, nG3, nEb4, nF3, nG3, nC4, nD4
	dc.b	nEb4, nD4, nCs4, $14, nC3, $06, nRst, $02, nG2, $04, nC3, nRst
	dc.b	nEb3, nRst, nC3, nEb3, nRst, nEb3, nRst, nD3, nRst, nCs3, nRst
	smpsJump            pinchmode_Jump05

; FM2 Data
pinchmode_FM2:
	dc.b	nRst, $10
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nC2, $04, $04, nEb2, $04, nC2, nBb2, nC3, nRst, nC2, nBb2, nC3
	dc.b	nBb2, nCs2, $08, $08, $02, $02, nC2, $04, $04, nD2, $04, nC2
	dc.b	nBb2, nC3, nRst, nC2, nBb2, nC3, nRst, nCs2, $14, nC2, $04, $04
	dc.b	nB1, $04, nD2, nEb2, nD2, $08, nRst, $04, nEb2, nRst, nEb2, nRst
	dc.b	nD2, nRst, nCs2, nRst, nC2, nC2, nEb2, nC2, nBb2, nC3, nRst, nC2
	dc.b	nBb2, nC3, nBb2, nCs2, $08, $08, $02, $02, nC2, $04, $04, nD2
	dc.b	$04, nC2, nBb2, nC3, nRst, nC2, nBb2, nC3, nRst, nCs2, $14, nC2
	dc.b	$04, $04, nB1, $04, nD2, nEb2, nD2, $08, nRst, $04, nEb2, nRst
	dc.b	nEb2, nRst, nD2, nRst, nCs2, nRst, $24

pinchmode_Jump04:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nC2, $04, $04, nEb2, $04, nC2, nBb2, nC3, nRst, nC2, nBb2, nC3
	dc.b	nBb2, nCs2, $08, $08, $02, $02, nC2, $04, $04, nD2, $04, nC2
	dc.b	nBb2, nC3, nRst, nC2, nBb2, nC3, nRst, nCs2, $14, nC2, $04, $04
	dc.b	nB1, $04, nD2, nEb2, nD2, $08, nRst, $04, nEb2, nRst, nEb2, nRst
	dc.b	nD2, nRst, nCs2, nRst, $24, nC2, $04, $04, nEb2, $04, nC2, nBb2
	dc.b	nC3, nRst, nC2, nBb2, nC3, nBb2, nCs2, $08, $08, $02, $02, nC2
	dc.b	$04, $04, nD2, $04, nC2, nBb2, nC3, nRst, nC2, nBb2, nC3, nRst
	dc.b	nCs2, $14, nC2, $04, $04, nB1, $04, nD2, nEb2, nD2, $08, nRst
	dc.b	$04, nEb2, nRst, nEb2, nRst, nD2, nRst, nCs2, nRst
	smpsJump            pinchmode_Jump04

; FM3 Data
pinchmode_FM3:
	dc.b	nRst, $7F, nRst, $11
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nG3, $08
	smpsPan             panCenter, $00
	dc.b	nE3, $04, nG3, nRst, nC4, nRst, nG3, nC4, nRst, nAb3, nRst, nA3
	dc.b	nRst, nBb3, nRst, $7F, nRst, $05, nG3, $08, nE3, $04, nG3, nRst
	dc.b	nC4, nRst, nG3, nC4, nRst, nAb3, nRst, nA3, nRst, nBb3, nRst, $7F
	dc.b	nRst, $25

pinchmode_Jump03:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nG3, $08
	smpsPan             panCenter, $00
	dc.b	nE3, $04, nG3, nRst, nC4, nRst, nG3, nC4, nRst, nAb3, nRst, nA3
	dc.b	nRst, nBb3, nRst, $7F, nRst, $25
	smpsPan             panRight, $00
	dc.b	nG3, $08
	smpsPan             panCenter, $00
	dc.b	nE3, $04, nG3, nRst, nC4, nRst, nG3, nC4, nRst, nAb3, nRst, nA3
	dc.b	nRst, nBb3, nRst, $7F, nRst, $05
	smpsJump            pinchmode_Jump03

; FM4 Data
pinchmode_FM4:
	smpsPan             panRight, $00
	dc.b	nRst, $10
	smpsSetvoice        $00
	dc.b	nC3, $04, nC2, nF2, nG2, nEb3, nF2, nG2, nC3, nD3, nEb3, nD3
	dc.b	nCs3, $14, nC3, $04, nC2, nF2, nG2, nEb3, nF2, nG2, nC3, nD3
	dc.b	nEb3, nD3, nCs3, $14, nC2, $06, nRst, $02, nG1, $04, nC2, nRst
	dc.b	nEb2, nRst, nC2, nEb2, nRst, nEb2, nRst, nD2, nRst, nCs2, nRst, nC3
	dc.b	nC2, nF2, nG2, nEb3, nF2, nG2, nC3, nD3, nEb3, nD3, nCs3, $14
	dc.b	nC3, $04, nC2, nF2, nG2, nEb3, nF2, nG2, nC3, nD3, nEb3, nD3
	dc.b	nCs3, $14, nC2, $06, nRst, $02, nG1, $04, nC2, nRst, nEb2, nRst
	dc.b	nC2, nEb2, nRst, nEb2, nRst, nD2, nRst, nCs2, nRst, $24
	smpsPan             panRight, $00

pinchmode_Jump02:
	smpsSetvoice        $00
	dc.b	nC3, $04, nC2, nF2, nG2, nEb3, nF2, nG2, nC3, nD3, nEb3, nD3
	dc.b	nCs3, $14, nC3, $04, nC2, nF2, nG2, nEb3, nF2, nG2, nC3, nD3
	dc.b	nEb3, nD3, nCs3, $14, nC2, $06, nRst, $02, nG1, $04, nC2, nRst
	dc.b	nEb2, nRst, nC2, nEb2, nRst, nEb2, nRst, nD2, nRst, nCs2, nRst, $24
	dc.b	nC3, $04, nC2, nF2, nG2, nEb3, nF2, nG2, nC3, nD3, nEb3, nD3
	dc.b	nCs3, $14, nC3, $04, nC2, nF2, nG2, nEb3, nF2, nG2, nC3, nD3
	dc.b	nEb3, nD3, nCs3, $14, nC2, $06, nRst, $02, nG1, $04, nC2, nRst
	dc.b	nEb2, nRst, nC2, nEb2, nRst, nEb2, nRst, nD2, nRst, nCs2, nRst
	smpsJump            pinchmode_Jump02

; FM5 Data
pinchmode_FM5:
	dc.b	nRst, $7F, nRst, $11
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nG2, $08
	smpsPan             panCenter, $00
	dc.b	nE2, $04, nG2, nRst, nC3, nRst, nG2, nC3, nRst, nAb2, nRst, nA2
	dc.b	nRst, nBb2, nRst, $7F, nRst, $05, nG2, $08, nE2, $04, nG2, nRst
	dc.b	nC3, nRst, nG2, nC3, nRst, nAb2, nRst, nA2, nRst, nBb2, nRst, $7F
	dc.b	nRst, $25

pinchmode_Jump01:
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nG2, $08
	smpsPan             panCenter, $00
	dc.b	nE2, $04, nG2, nRst, nC3, nRst, nG2, nC3, nRst, nAb2, nRst, nA2
	dc.b	nRst, nBb2, nRst, $7F, nRst, $25
	smpsPan             panLeft, $00
	dc.b	nG2, $08
	smpsPan             panCenter, $00
	dc.b	nE2, $04, nG2, nRst, nC3, nRst, nG2, nC3, nRst, nAb2, nRst, nA2
	dc.b	nRst, nBb2, nRst, $7F, nRst, $05
	smpsJump            pinchmode_Jump01

; PSG1 Data
pinchmode_PSG1:
	smpsPSGvoice        $00
	dc.b	nFs5, $02, nCs5, nFs4, nF5, nC5, nF4, nE5, nCs5, nRst, $32, nG5
	dc.b	$02, nCs5, nG4, nFs5, nC5, nFs4, nF5, nRst, $32, nG5, $02, nCs5
	dc.b	nG4, nFs5, nC5, nFs4, nF5, nRst, $72, nG5, $02, nCs5, nG4, nFs5
	dc.b	nC5, nFs4, nF5, nRst, $32, nG5, $02, nCs5, nG4, nFs5, nC5, nFs4
	dc.b	nF5, nRst, $40, nC6, $02, nG5, nC5, nB5, nFs5, nB4, nBb5, nF5
	dc.b	nFs5, nCs5, nFs4, nF5, nC5, nF4, nE5, nCs5

pinchmode_Jump08:
	dc.b	nRst, $32
	smpsPSGvoice        $00
	dc.b	nG5, $02, nCs5, nG4, nFs5, nC5, nFs4, nF5, nRst, $32, nG5, $02
	dc.b	nCs5, nG4, nFs5, nC5, nFs4, nF5, nRst, $40, nC6, $02, nG5, nC5
	dc.b	nB5, nFs5, nB4, nBb5, nF5, nFs5, nCs5, nFs4, nF5, nC5, nF4, nE5
	dc.b	nCs5, nRst, $32, nG5, $02, nCs5, nG4, nFs5, nC5, nFs4, nF5, nRst
	dc.b	$32, nG5, $02, nCs5, nG4, nFs5, nC5, nFs4, nF5, nRst, $40
	smpsJump            pinchmode_Jump08

; PSG2 Data
pinchmode_PSG2:
	dc.b	nRst, $10
	smpsPSGvoice        $00
	dc.b	nC5, $14, nG4, $08, nC5, $04, nBb4, $08, nA4, $04, nAb4, $14
	dc.b	nC5, nG4, $08, nC5, $04, nBb4, $08, nA4, $04, nAb4, $14, nRst
	dc.b	$40, nC5, $14, nG4, $08, nC5, $04, nBb4, $08, nA4, $04, nAb4
	dc.b	$14, nC5, nG4, $08, nC5, $04, nBb4, $08, nA4, $04, nAb4, $14
	dc.b	nRst, $60

pinchmode_Jump07:
	smpsPSGvoice        $00
	dc.b	nC5, $14, nG4, $08, nC5, $04, nBb4, $08, nA4, $04, nAb4, $14
	dc.b	nC5, nG4, $08, nC5, $04, nBb4, $08, nA4, $04, nAb4, $14, nRst
	dc.b	$60, nC5, $14, nG4, $08, nC5, $04, nBb4, $08, nA4, $04, nAb4
	dc.b	$14, nC5, nG4, $08, nC5, $04, nBb4, $08, nA4, $04, nAb4, $14
	dc.b	nRst, $40
	smpsJump            pinchmode_Jump07

; PSG3 Data
pinchmode_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $10
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $02, $04, $02, $04, $04, $06, $02, $04, $04, $04
	dc.b	$02, $02, $04, $02, $02, $02, $02, $04, $04, $04, $02, $04
	dc.b	$02, $04, $04, $06, $02, $04, $04, $04, $02, $02, $04, $02
	dc.b	$02, $02, $02, $04, $04, $08, $04, $02, $04, $02, $04, $08
	dc.b	nRst, $04, nAb6, $08, $08, $08, $04, $04, $02, $04, $02, $04
	dc.b	$04, $06, $02, $04, $04, $04, $02, $02, $04, $02, $02, $02
	dc.b	$02, $04, $04, $04, $02, $04, $02, $04, $04, $06, $02, $04
	dc.b	$04, $04, $02, $02, $04, $02, $02, $02, $02, $04, $04, $08
	dc.b	$04, $02, $04, $02, $04, $08, nRst, $04, nAb6, $08, $08, $08
	dc.b	$04, nRst, $20
	smpsPSGform         $E7

pinchmode_Jump06:
	smpsPSGvoice        fTone_02
	dc.b	nAb6, $04, $02, $04, $02, $04, $04, $06, $02, $04, $04, $04
	dc.b	$02, $02, $04, $02, $02, $02, $02, $04, $04, $04, $02, $04
	dc.b	$02, $04, $04, $06, $02, $04, $04, $04, $02, $02, $04, $02
	dc.b	$02, $02, $02, $04, $04, $08, $04, $02, $04, $02, $04, $08
	dc.b	nRst, $04, nAb6, $08, $08, $08, $04, nRst, $20, nAb6, $04, $02
	dc.b	$04, $02, $04, $04, $06, $02, $04, $04, $04, $02, $02, $04
	dc.b	$02, $02, $02, $02, $04, $04, $04, $02, $04, $02, $04, $04
	dc.b	$06, $02, $04, $04, $04, $02, $02, $04, $02, $02, $02, $02
	dc.b	$04, $04, $08, $04, $02, $04, $02, $04, $08, nRst, $04, nAb6
	dc.b	$08, $08, $08, $04
	smpsJump            pinchmode_Jump06

; DAC Data
pinchmode_DAC:
	smpsPan             panCenter, $00
	dc.b	dSnare, $02, $02, $02, $02, $02, nRst, $02, dSnare, dSnare, dKick, $04
	dc.b	$04, dSnare, $08, dKick, $04, $04, dSnare, $08, dKick, $04, $04, dSnare
	dc.b	$04, dKick, $08, $04, dSnare, $04, $02, $02, dKick, $04, $04, dSnare
	dc.b	$08, dKick, $04, $04, dSnare, $08, dKick, $04, $04, dSnare, $04, dKick
	dc.b	$08, $04, dSnare, $04, $02, nRst, $02, dKick, $04, $10, dKick, $02
	dc.b	$02, dSnare, $08, dKick, dKick, dKick, $04, dSnare, $02, $02, $02, $02
	dc.b	$02, $02, dKick, $04, $04, dSnare, $08, dKick, $04, $04, dSnare, $08
	dc.b	dKick, $04, $04, dSnare, $04, dKick, $08, $04, dSnare, $04, $02, $02
	dc.b	dKick, $04, $04, dSnare, $08, dKick, $04, $04, dSnare, $08, dKick, $04
	dc.b	$04, dSnare, $04, dKick, $08, $04, dSnare, $04, $02, nRst, $02, dKick
	dc.b	$04, $10, dKick, $02, $02, dSnare, $08, dKick, dKick, dKick, $04, dSnare
	dc.b	$02, $02, $02, $02, $02, $02, nRst, $10, dSnare, $02, nRst, dSnare
	dc.b	nRst, dSnare, dSnare, dSnare, dSnare

pinchmode_Jump00:
	smpsPan             panCenter, $00
	dc.b	dKick, $04, $04, dSnare, $08, dKick, $04, $04, dSnare, $08, dKick, $04
	dc.b	$04, dSnare, $04, dKick, $08, $04, dSnare, $04, $02, $02, dKick, $04
	dc.b	$04, dSnare, $08, dKick, $04, $04, dSnare, $08, dKick, $04, $04, dSnare
	dc.b	$04, dKick, $08, $04, dSnare, $04, $02, nRst, $02, dKick, $04, $10
	dc.b	dKick, $02, $02, dSnare, $08, dKick, dKick, dKick, $04, dSnare, $02, $02
	dc.b	$02, $02, $02, $02, nRst, $10, dSnare, $02, nRst, dSnare, nRst, dSnare
	dc.b	dSnare, dSnare, dSnare, dKick, $04, $04, dSnare, $08, dKick, $04, $04, dSnare
	dc.b	$08, dKick, $04, $04, dSnare, $04, dKick, $08, $04, dSnare, $04, $02
	dc.b	$02, dKick, $04, $04, dSnare, $08, dKick, $04, $04, dSnare, $08, dKick
	dc.b	$04, $04, dSnare, $04, dKick, $08, $04, dSnare, $04, $02, nRst, $02
	dc.b	dKick, $04, $10, dKick, $02, $02, dSnare, $08, dKick, dKick, dKick, $04
	dc.b	dSnare, $02, $02, $02, $02, $02, $02
	smpsJump            pinchmode_Jump00

pinchmode_Voices:
;	Voice $00
;	$35
;	$00, $01, $00, $00, 	$1F, $1F, $1F, $1E, 	$08, $0C, $08, $08
;	$08, $1C, $0C, $04, 	$06, $06, $06, $06, 	$90, $80, $80, $78
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $0C, $08
	smpsVcDecayRate2    $04, $0C, $1C, $08
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $78, $00, $00, $90

;	Voice $01
;	$3A
;	$33, $70, $0A, $01, 	$5F, $5F, $97, $DF, 	$0E, $0D, $10, $07
;	$03, $03, $04, $05, 	$20, $3B, $3C, $19, 	$21, $1B, $1E, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $03
	smpsVcCoarseFreq    $01, $0A, $00, $03
	smpsVcRateScale     $03, $02, $01, $01
	smpsVcAttackRate    $1F, $17, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $10, $0D, $0E
	smpsVcDecayRate2    $05, $04, $03, $03
	smpsVcDecayLevel    $01, $03, $03, $02
	smpsVcReleaseRate   $09, $0C, $0B, $00
	smpsVcTotalLevel    $00, $1E, $1B, $21

;	Voice $02
;	$3D
;	$01, $02, $02, $02, 	$10, $50, $50, $50, 	$07, $08, $08, $08
;	$01, $00, $00, $00, 	$20, $17, $17, $17, 	$1C, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $07
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $07, $07, $07, $00
	smpsVcTotalLevel    $08, $08, $08, $1C

