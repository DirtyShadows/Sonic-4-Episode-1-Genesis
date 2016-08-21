sharrierz80_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     sharrierz80_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       sharrierz80_DAC
	smpsHeaderFM        sharrierz80_FM1,	$E5, $04
	smpsHeaderFM        sharrierz80_FM2,	$FD, $0D
	smpsHeaderFM        sharrierz80_FM3,	$FD, $10
	smpsHeaderFM        sharrierz80_FM4,	$FD, $0F
	smpsHeaderFM        sharrierz80_FM5,	$FD, $10
	smpsHeaderPSG       sharrierz80_PSG1,	$D9, $00, $00, fTone_03
	smpsHeaderPSG       sharrierz80_PSG2,	$D9, $00, $00, fTone_05
	smpsHeaderPSG       sharrierz80_PSG3,	$0D, $05, $00, fTone_05

; FM1 Data
sharrierz80_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $20

sharrierz80_Loop07:
	dc.b	nEb3, $08, nEb4, $04, nRst
	smpsLoop            $00, $18, sharrierz80_Loop07
	dc.b	nAb2, $08, nAb2, nAb2, nRst, nRst, nF3, nRst, nEb3, nRst, nRst, nRst
	dc.b	nRst, nEb3
	smpsStop

; FM2 Data
sharrierz80_FM2:
	smpsSetvoice        $01
	dc.b	nRst, $20

sharrierz80_Loop01:
	smpsPan             panLeft, $00
	dc.b	nEb5, $04
	smpsPan             panCenter, $00
	dc.b	nBb4, $04
	smpsPan             panRight, $00
	dc.b	nEb4, $04
	smpsPan             panCenter, $00
	dc.b	nBb4, $04
	smpsLoop            $00, $04, sharrierz80_Loop01

sharrierz80_Loop02:
	smpsPan             panLeft, $00
	dc.b	nEb5, $04
	smpsPan             panCenter, $00
	dc.b	nAb4, $04
	smpsPan             panRight, $00
	dc.b	nEb4, $04
	smpsPan             panCenter, $00
	dc.b	nAb4, $04
	smpsLoop            $00, $04, sharrierz80_Loop02

sharrierz80_Loop03:
	smpsPan             panLeft, $00
	dc.b	nEb5, $04
	smpsPan             panCenter, $00
	dc.b	nAb4, $04
	smpsPan             panRight, $00
	dc.b	nEb4, $04
	smpsPan             panCenter, $00
	dc.b	nAb4, $04
	smpsLoop            $00, $04, sharrierz80_Loop03

sharrierz80_Loop04:
	smpsPan             panLeft, $00
	dc.b	nEb5, $04
	smpsPan             panCenter, $00
	dc.b	nBb4, $04
	smpsPan             panRight, $00
	dc.b	nEb4, $04
	smpsPan             panCenter, $00
	dc.b	nBb4, $04
	smpsLoop            $00, $04, sharrierz80_Loop04

sharrierz80_Loop05:
	smpsPan             panLeft, $00
	dc.b	nEb5, $04
	smpsPan             panCenter, $00
	dc.b	nBb4, $04
	smpsPan             panRight, $00
	dc.b	nEb4, $04
	smpsPan             panCenter, $00
	dc.b	nBb4, $04
	smpsLoop            $00, $04, sharrierz80_Loop05

sharrierz80_Loop06:
	smpsPan             panLeft, $00
	dc.b	nEb5, $04
	smpsPan             panCenter, $00
	dc.b	nAb4, $04
	smpsPan             panRight, $00
	dc.b	nEb4, $04
	smpsPan             panCenter, $00
	dc.b	nAb4, $04
	smpsLoop            $00, $04, sharrierz80_Loop06
	smpsPan             panLeft, $00
	dc.b	nAb5, $04, nRst
	smpsPan             panCenter, $00
	dc.b	nEb5, $04, nRst
	smpsPan             panRight, $00
	dc.b	nAb4, $04, nRst
	smpsPan             panCenter, $00
	dc.b	nEb5, $04, nRst
	smpsPan             panLeft, $00
	dc.b	nAb5, $04, nRst
	smpsPan             panCenter, $00
	dc.b	nEb5, $04, nRst
	smpsPan             panRight, $00
	dc.b	nRst, $04, nRst
	smpsPan             panCenter, $00
	dc.b	nEb5
	smpsStop

; FM3 Data
sharrierz80_FM3:
	smpsSetvoice        $02
	dc.b	nRst, $21
	smpsPan             panRight, $00
	dc.b	nG5, $28, nRst, $08, nG5, $04, nRst, nAb5, $38, nRst, $10, nB5
	dc.b	$24, nRst, $04, nEb6, $08, nRst, nEb6, $38, nRst, $10, nBb5, $28
	dc.b	nRst, $08, nEb6, $04, nRst, nEb6, $38, nRst, $10, nB5, $04, nRst
	dc.b	nF6, nRst, nB5, $08, nRst, nRst, nB5, nRst, nEb6, nRst, $20, nBb4
	dc.b	$08
	smpsStop

; FM4 Data
sharrierz80_FM4:
	smpsSetvoice        $02
	dc.b	nRst, $20
	smpsPan             panCenter, $0C
	dc.b	nBb5, $28, nRst, $08, nBb5, $04, nRst, nC6, $38, nRst, $10, nEb6
	dc.b	$24, nRst, $04, nB5, $08, nRst, nBb5, $38, nRst, $10, nG5, $28
	dc.b	nRst, $08, nBb5, $04, nRst, nC6, $38, nRst, $10, nAb5, $04, nRst
	dc.b	nB5, nRst, nF6, $08, nRst, nRst, nF6, nRst, nBb5, nRst, $20, nEb5
	dc.b	$08
	smpsStop

; FM5 Data
sharrierz80_FM5:
	smpsSetvoice        $02
	dc.b	nRst, $21
	smpsPan             panLeft, $00
	dc.b	nEb6, $28, nRst, $08, nEb6, $04, nRst, nEb6, $38, nRst, $10, nAb5
	dc.b	$24, nRst, $04, nAb5, $08, nRst, nG5, $38, nRst, $10, nEb6, $28
	dc.b	nRst, $08, nG5, $04, nRst, nAb5, $38, nRst, $10, nF6, $04, nRst
	dc.b	nAb5, nRst, nAb5, $08, nRst, nRst, nAb5, nRst, nG5, nRst, $20, nG5
	dc.b	$08
	smpsStop

; PSG1 Data
sharrierz80_PSG1:
	dc.b	nRst, $20, nRst, $10, nEb5, $03, nRst, $05, nEb5, $03, nRst, $05
	dc.b	nBb4, $08, nRst, $04, nBb4, $04, nRst, $20, nEb5, $03, nRst, $05
	dc.b	nEb5, $03, nRst, $05, nC5, $08, nRst, $04, nC5, $04, nRst, $20
	dc.b	nB4, $03, nRst, $05, nEb5, $03, nRst, $05, nB4, $08, nRst, $04
	dc.b	nB4, $04, nRst, $20, nBb4, $03, nRst, $05, nBb4, $03, nRst, $05
	dc.b	nG5, $08, nRst, $04, nF5, $08, nRst, $04, nBb4, $08, nRst, $10
	dc.b	nEb5, $03, nRst, $05, nEb5, $03, nRst, $05, nBb4, $08, nRst, $04
	dc.b	nBb4, $04, nRst, $20, nEb5, $03, nRst, $05, nEb5, $03, nRst, $05
	dc.b	nC5, $08, nRst, $04, nC5, $04, nRst, $10, nEb5, $03, nRst, $05
	dc.b	nAb5, $03, nRst, $05, nAb5, $08, nRst, $10, nEb5, $08, nRst, nG5
	dc.b	nRst, $20, nEb4, $08
	smpsStop

; PSG2 Data
sharrierz80_PSG2:
	dc.b	nRst, $20, nRst, $10, nBb4, $03, nRst, $05, nBb4, $03, nRst, $05
	dc.b	nD5, $08, nRst, $04, nEb5, $04, nRst, $20, nC5, $03, nRst, $05
	dc.b	nC5, $03, nRst, $05, nF5, $08, nRst, $04, nEb5, $04, nRst, $20
	dc.b	nEb5, $03, nRst, $05, nB4, $03, nRst, $05, nD5, $08, nRst, $04
	dc.b	nEb5, $04, nRst, $20, nEb5, $03, nRst, $05, nF5, $03, nRst, $05
	dc.b	nBb4, $08, nRst, $04, nBb4, $08, nRst, $04, nEb5, $08, nRst, $10
	dc.b	nBb4, $03, nRst, $05, nBb4, $03, nRst, $05, nD5, $08, nRst, $04
	dc.b	nEb5, $04, nRst, $20, nC5, $03, nRst, $05, nC5, $03, nRst, $05
	dc.b	nF5, $08, nRst, $04, nEb5, $04, nRst, $10, nAb5, $03, nRst, $05
	dc.b	nEb5, $03, nRst, $05, nEb5, $08, nRst, $10, nAb5, $08, nRst, nEb5
	dc.b	nRst, $20, nEb5, $08
	smpsStop

; PSG3 Data
sharrierz80_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_02
	dc.b	nRst, $20

sharrierz80_Loop08:
	dc.b	nRst, $08, nAb6, $04, nAb6, nRst, $08, nAb6, $04, nAb6, nRst, $08
	dc.b	nRst, $04, nAb6, nRst, $08, nAb6, $04, nAb6, nRst, $08, nAb6, $04
	dc.b	nAb6, nRst, $08, nRst, $04, nAb6, nAb6, nAb6, nRst, $04, nAb6, nRst
	dc.b	$08, nAb6, $04, nAb6
	smpsLoop            $00, $03, sharrierz80_Loop08
	smpsStop

; DAC Data
sharrierz80_DAC:
	dc.b	dSnare, $04, dKick, dKick, dKick, dSnare, nRst, nRst, nRst

sharrierz80_Loop00:
	dc.b	dKick, $08, nRst, dSnare, nRst, dKick, dKick, dSnare, nRst, dKick, nRst, dSnare
	dc.b	dKick, nRst, dKick, dSnare, nRst
	smpsLoop            $00, $03, sharrierz80_Loop00
	dc.b	dSnare, $08, dSnare, dSnare
	smpsPan             panLeft, $00
	dc.b	$CC, $04
	smpsPan             panCenter, $00
	dc.b	$CD, $04
	smpsPan             panRight, $00
	dc.b	$CE, $04, nRst, $04
	smpsPan             panCenter, $00
	dc.b	dKick, $08, nRst, dSnare, nRst, nRst, nRst, nRst, dHiTimpani
	smpsStop

sharrierz80_Voices:
;	Voice $00
;	$3B
;	$52, $31, $31, $51, 	$12, $14, $12, $14, 	$0D, $00, $0D, $02
;	$00, $00, $00, $01, 	$4F, $0F, $5F, $3F, 	$1E, $18, $2D, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $03, $05
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $12, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $0D, $00, $0D
	smpsVcDecayRate2    $01, $00, $00, $00
	smpsVcDecayLevel    $03, $05, $00, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2D, $18, $1E

;	Voice $01
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $02
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$10, $07, $10, $07, 	$1A, $80, $16, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $00, $16, $00, $1A

