camino_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     camino_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $1D

	smpsHeaderDAC       camino_DAC
	smpsHeaderFM        camino_FM1,	$00, $03
	smpsHeaderFM        camino_FM2,	$00, $02
	smpsHeaderFM        camino_FM3,	$00, $02
	smpsHeaderFM        camino_FM4,	$00, $05
	smpsHeaderFM        camino_FM5,	$00, $05
	smpsHeaderPSG       camino_PSG1,	$0C, $04, $00, sTone_04
	smpsHeaderPSG       camino_PSG2,	$0C, $04, $00, sTone_13
	smpsHeaderPSG       camino_PSG3,	$0C, $00, $00, sTone_02

; DAC Data
camino_DAC:
	smpsPan             panCenter, $00
	dc.b	dCrashCymbal, $0C, $8E, $8F, $06, $8E, $0C, $86, $06, $8E, $86, $86
	dc.b	$8E, $8F, $8F, $8E, $86, $12, $8E, $0C, $8F, $06, $8E, $0C
	dc.b	$86, $06, $8E, $86, $86, $8E, $8F, $8F, $8E, $0C, $86, $8E
	dc.b	$8F, $06, $8E, $86, $86, $8E, $86, $86, $8E, $8F, $8F, $8E
	dc.b	$86, $12, $8E, $0C, $8F, $06, $8E, $0C, $86, $06, $8E, $86
	dc.b	$86, $8E, $8F, $8F, $8E, $0C, $86, $8E, $8F, $06, $8E, $0C
	dc.b	$86, $06, $8E, $86, $86, $8E, $8F, $8F, $8E, $86, $12, $8E
	dc.b	$0C, $8F, $06, $8E, $0C, $86, $06, $8E, $86, $86, $8E, $8F
	dc.b	$8F, $8E, $0C, $86, $8E, $8F, $06, $8E, $86, $86, $8E, $86
	dc.b	$86, $05, $01, $8E, $03, $86, $87, $05, $90, $04, $92, $05
	dc.b	$93, $04, dCrashCymbal, $12, dSnareS3, $0C, $87, $02, $03, $01, $03, $02
	dc.b	$01, $90, $05, $92, $04, $93, $03, dSnareS3, $06, $0C, $0C, $87
	dc.b	$06, $92, $93, dCrashCymbal, $0C, $8E, dSnareS3, $06, $8E, $0C, $86, $06
	dc.b	$8E, $86, $86, $8E, dSnareS3, $0C, $8E, $06, $86, $12, $8E, $0C
	dc.b	dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86, $8E, dSnareS3, $0C
	dc.b	$8E, $86, $8E, dSnareS3, $06, $8E, $86, $86, $8E, $86, $86, $8E
	dc.b	dSnareS3, $0C, $8E, $06, $86, $12, $8E, $0C, dSnareS3, $06, $8E, $0C
	dc.b	$86, $06, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $86, $8E, dSnareS3
	dc.b	$06, $8E, $0C, $86, $06, $8E, $86, $86, $8E, dSnareS3, $0C, $8E
	dc.b	$06, $86, $12, $8E, $0C, dSnareS3, $06, $8E, $0C, $86, $06, $8E
	dc.b	$86, $86, $8E, dSnareS3, $0C, $8E, $86, $8E, dSnareS3, $06, $8E, $86
	dc.b	$86, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $06, $86, $87, $02
	dc.b	$03, $01, $02, $01, $03, $90, $05, $92, $04, $93, $03, dSnareS3
	dc.b	$18, $12, $12, $0C, dCrashCymbal

camino_Loop00:
	dc.b	$8E, $06, $86, dSnareS3, $8E, $0C, $86, $06, $8E, $0C, $86, $06
	dc.b	$8E, dSnareS3, $86, $8E, $0C, $86
	smpsLoop            $00, $07, camino_Loop00
	dc.b	$8E, $06, $86, dSnareS3, $8E, $0C, $86, $06, $8E, $86, $86

camino_Loop01:
	dc.b	$8E, dSnareS3, $86, $8E, $0C, $86, $8E, $06, $86, dSnareS3, $8E, $0C
	dc.b	$86, $06, $8E, $0C, $86, $06
	smpsLoop            $00, $08, camino_Loop01
	dc.b	$8E, dSnareS3, $86, $8E, $87

camino_Jump00:
	dc.b	dCrashCymbal, $0C, $8E, $06, $86, dSnareS3, $8E, $86, $86, $8E, $0C, $86
	dc.b	$06, $8E, dSnareS3, $86, $8E, $86, $86, $0C, $8E, $06, $86, dSnareS3
	dc.b	$8E, $86, $0C, $8E, $86, $06, $8E, dSnareS3, $86, $8E, $86, $86
	dc.b	$0C, $8E, $06, $86, dSnareS3, $8E, $86, $86, $8E, $0C, $86, $06
	dc.b	$8E, dSnareS3, $86, $8E, $86, $86, $0C, $8E, dSnareS3, $06, $8E, $12
	dc.b	$0C, $86, $06, $8E, dSnareS3, $86, $8E, $86, $86, $0C, $8E, $06
	dc.b	$86, dSnareS3, $8E, $86, $86, $8E, $0C, $86, $06, $8E, dSnareS3, $86
	dc.b	$8E, $86, $86, $0C, $8E, $06, $86, dSnareS3, $8E, $86, $0C, $8E
	dc.b	$86, $06, $8E, dSnareS3, $86, $8E, $86, $86, $0C, $8E, $06, $86
	dc.b	dSnareS3, $8E, $86, $86, $8E, $0C, $86, $05, $01, $8E, $03, $86
	dc.b	$87, $05, $90, $04, $92, $05, $93, $04, dCrashCymbal, $12, dSnareS3, $0C
	dc.b	$87, $02, $03, $01, $03, $02, $01, $90, $05, $92, $04, $93
	dc.b	$03, dSnareS3, $06, $0C, $0C, $87, $06, $92, $93, dCrashCymbal, $0C, $8E
	dc.b	dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86, $8E, dSnareS3, $0C
	dc.b	$8E, $06, $86, $12, $8E, $0C, dSnareS3, $06, $8E, $0C, $86, $06
	dc.b	$8E, $86, $86, $8E, dSnareS3, $0C, $8E, $86, $8E, dSnareS3, $06, $8E
	dc.b	$86, $86, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $06, $86, $12
	dc.b	$8E, $0C, dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86, $8E
	dc.b	dSnareS3, $0C, $8E, $0E, $86, $0A, $8E, $0C, dSnareS3, $06, $8E, $0C
	dc.b	$86, $06, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $06, $86, $12
	dc.b	$8E, $0C, dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86, $8E
	dc.b	dSnareS3, $0C, $8E, $86, $8E, dSnareS3, $06, $8E, $86, $86, $8E, $86
	dc.b	$86, $8E, dSnareS3, $0C, $8E, $06, $86, $86, $0C, $8E, dSnareS3, $06
	dc.b	$8E, $86, $86, $8E, $0C, $86, $06, $8E, dSnareS3, $86, $87, $87
	dc.b	dCrashCymbal, $0C, $8E, dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86
	dc.b	$8E, dSnareS3, $0C, $8E, $06, $86, $12, $8E, $0C, dSnareS3, $06, $8E
	dc.b	$0C, $86, $06, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $86, $8E
	dc.b	dSnareS3, $06, $8E, $86, $86, $8E, $86, $86, $8E, dSnareS3, $0C, $8E
	dc.b	$06, $86, $12, $8E, $0C, dSnareS3, $06, $8E, $0C, $86, $06, $8E
	dc.b	$86, $86, $8E, dSnareS3, $0C, $8E, $86, $8E, dSnareS3, $06, $8E, $0C
	dc.b	$86, $06, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $06, $86, $12
	dc.b	$8E, $0C, dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86, $8E
	dc.b	dSnareS3, $0C, $8E, $86, $8E, dSnareS3, $06, $8E, $86, $86, $8E, $86
	dc.b	$86, $8E, dSnareS3, $0C, $8E, $06, $86, $86, $0C, $8E, dSnareS3, $06
	dc.b	$8E, $86, $86, $8E, $0C, $86, $06, $8E, dSnareS3, $86, $87, $87
	dc.b	dCrashCymbal, $0C, $8E, dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86
	dc.b	$8E, dSnareS3, $0C, $8E, $06, $86, $12, $8E, $0C, dSnareS3, $06, $8E
	dc.b	$0C, $86, $06, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $86, $8E
	dc.b	dSnareS3, $06, $8E, $86, $86, $8E, $86, $86, $8E, dSnareS3, $0C, $8E
	dc.b	$05, $86, $03, $04, $87, $02, $03, $01, $02, $03, $01, $90
	dc.b	$05, $92, $04, $93, $03, dSnareS3, $18, $12, $12, $0C, dCrashCymbal

camino_Loop02:
	dc.b	$8E, $06, $86, dSnareS3, $8E, $0C, $86, $06, $8E, $0C, $86, $06
	dc.b	$8E, dSnareS3, $86, $8E, $0C, $86
	smpsLoop            $00, $07, camino_Loop02
	dc.b	$8E, $06, $86, dSnareS3, $8E, $0C, $86, $06, $8E, $86, $86

camino_Loop03:
	dc.b	$8E, dSnareS3, $86, $8E, $0C, $86, $8E, $06, $86, dSnareS3, $8E, $0C
	dc.b	$86, $06, $8E, $0C, $86, $06
	smpsLoop            $00, $08, camino_Loop03
	dc.b	$8E, dSnareS3, $86, $8E, $87, dCrashCymbal, $0C, $8E, $06, $86, dSnareS3, $8E
	dc.b	$86, $86, $8E, $0C, $86, $06, $8E, dSnareS3, $86, $8E, $86, $86
	dc.b	$0C, $8E, $06, $86, dSnareS3, $8E, $86, $0C, $8E, $86, $06, $8E
	dc.b	dSnareS3, $86, $8E, $86, $86, $0C, $8E, $06, $86, dSnareS3, $8E, $86
	dc.b	$86, $8E, $0C, $86, $05, $01, $8E, $02, $86, $04, $87, $05
	dc.b	$90, $04, $92, $05, $93, $04, dCrashCymbal, $12, $86, $86, $86, dSnareS3
	dc.b	$87, $06, $06, dCrashCymbal, $0C, $8E, $06, $86, dSnareS3, $8E, $86, $86
	dc.b	$8E, $0C, $86, $06, $8E, dSnareS3, $86, $8E, $86, $86, $0C, $8E
	dc.b	$06, $86, dSnareS3, $8E, $86, $0C, $8E, $86, $06, $8E, dSnareS3, $86
	dc.b	$8E, $86, $86, $0C, $8E, $06, $86, dSnareS3, $8E, $86, $86, $8E
	dc.b	$0C, $86, $05, $01, $8E, $02, $86, $04, $87, $05, $90, $04
	dc.b	$92, $05, $93, $04, dCrashCymbal, $12, dSnareS3, $0C, $87, $02, $03, $01
	dc.b	$02, $03, $01, $90, $05, $92, $04, $93, $03, dSnareS3, $06, $0C
	dc.b	$0C, $87, $06, $92, $93

camino_Loop04:
	dc.b	dCrashCymbal, $0C, $8E, dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86
	dc.b	$8E, dSnareS3, $0C, $8E, $06, $86, $12, $8E, $0C, dSnareS3, $06, $8E
	dc.b	$0C, $86, $06, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $86, $8E
	dc.b	dSnareS3, $06, $8E, $86, $86, $8E, $86, $86, $8E, dSnareS3, $0C, $8E
	dc.b	$06, $86, $12, $8E, $0C, dSnareS3, $06, $8E, $0C, $86, $06, $8E
	dc.b	$86, $86, $8E, dSnareS3, $0C, $8E, $86, $8E, dSnareS3, $06, $8E, $0C
	dc.b	$86, $06, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $06, $86, $12
	dc.b	$8E, $0C, dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86, $8E
	dc.b	dSnareS3, $0C, $8E, $86, $8E, dSnareS3, $06, $8E, $86, $86, $8E, $86
	dc.b	$86, $8E, dSnareS3, $0C, $8E, $06, $86, $86, $0C, $8E, dSnareS3, $06
	dc.b	$8E, $86, $86, $8E, $0C, $86, $06, $8E, dSnareS3, $86, $87, $87
	smpsLoop            $00, $02, camino_Loop04
	dc.b	dCrashCymbal, $0C, $8E, dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86
	dc.b	$8E, dSnareS3, $0C, $8E, $06, $86, $12, $8E, $0C, dSnareS3, $06, $8E
	dc.b	$0C, $86, $06, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $86, $8E
	dc.b	dSnareS3, $06, $8E, $86, $86, $8E, $86, $86, $8E, dSnareS3, $0C, $8E
	dc.b	$06, $86, $12, $8E, $0C, dSnareS3, $06, $8E, $0C, $86, $06, $8E
	dc.b	$86, $86, $8E, dSnareS3, $0C, $8E, $86, $8E, dSnareS3, $06, $8E, $0C
	dc.b	$86, $06, $8E, $86, $86, $8E, dSnareS3, $0C, $8E, $06, $86, $12
	dc.b	$8E, $0C, dSnareS3, $06, $8E, $0C, $86, $06, $8E, $86, $86, $8E
	dc.b	dSnareS3, $0C, $8E, $86, $8E, dSnareS3, $06, $8E, $86, $86, $8E, $86
	dc.b	$86, $8E, dSnareS3, $0C, $8E, $06, $86, $86, $0C, $8E, dSnareS3, $06
	dc.b	$8E, $86, $86, $8E, $0C, $86, $03, $03, $8E, $02, $86, $04
	dc.b	dCrashCymbal, $06, $86, $8E, $86, $86, $86, $86, $86, $87, $86, $0C
	dc.b	$0C, $0C, $06, $87, $86, $09, $05, $04, $0C, $06, $06, $87
	dc.b	$86, $0C, $0C, $0C, $06, $87

camino_Loop05:
	dc.b	$86
	smpsLoop            $00, $07, camino_Loop05
	dc.b	$87, $86, $0C, $0C, $0C, $06, $87, $86, $0B, $03, $04, $0C
	dc.b	$06, $06, $87, $86, $0C, $0C, $0C, $06, $87, $08, $86, $04
	dc.b	$05, $03, $04, $06, $06, $06, $06, $87, $86, $0C, $0C, $0C
	dc.b	$06, $87, $86, $0B, $03, $04, $0C, $06, $06, $87, $86, $0C
	dc.b	$0C, $0C, $06, $87

camino_Loop06:
	dc.b	$86
	smpsLoop            $00, $07, camino_Loop06
	dc.b	$87, $86, $0C, $0C, $0C, $06, $87, $86, $09, $05, $04, $0C
	dc.b	$06, $06, $87, $08, $09, $07, dCrashCymbal, $0B, $90, $04, $92, $05
	dc.b	$93, $04, dSnareS3, $18
	smpsJump            camino_Jump00

; FM1 Data
camino_FM1:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	dc.b	nD3

camino_Loop16:
	dc.b	$60, smpsNoAttack
	smpsLoop            $00, $05, camino_Loop16
	dc.b	$60, nRst, $60, $0C
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nA2, $06, nRst, nA2, $12, nRst, $06, nA3, $11, nRst, $01, nE3
	dc.b	$12, nA2, $08, nRst, $04, nD3, $0C, nRst, $18, nC3, $06, nD3
	dc.b	nRst, nD3, nD2, nRst, $12, nC3, $05, nRst, $01, nD3, $06, nRst
	dc.b	$0C, nD3, $0B, nRst, $07, nD3, $06, nRst, nD3, nRst, nD3, nE3
	dc.b	nRst, nF3, nRst, nG3, nRst, nBb2, $0C, nRst, $18, nA2, $06, nBb2
	dc.b	nRst, nBb2, nBb1, nRst, $12, nA2, $06, nBb2, nRst, $0C, nBb2, $05
	dc.b	nRst, $0D, nBb2, $06, nRst, nBb2, $05, nRst, $01, nF3, $06, $06
	dc.b	nE3, nRst, nD3, nRst, nC3, nBb2, nG2, $0B, nRst, $19, nF2, $05
	dc.b	nRst, $01, nG2, $06, nRst, nG2, nG1, nRst, $12, nF2, $06, nG2
	dc.b	nRst, $0C, nG2, nRst, $06, nG2, nRst, nF2, nRst, nG2, nG1, $05
	dc.b	nRst, $07, nF2, $06, nG2, $03, nRst, nG3, $06, nD3, $03, nRst
	dc.b	nE2, $0C, nRst, $18, nD2, $06, nE2, nRst, nE2, nE2, $05, nRst
	dc.b	$13, nG2, $06, nE2, $05, nRst, $01, nA2, $06, nRst, $2A, nC3
	dc.b	$09, nRst, nC3, nRst, nC3, $08, nRst, $04, nF3, $0C, nRst, $06
	dc.b	nF3, $0C, nRst, nF3, nRst, $06, nF3, $0C, nRst, $06, nF3, $0B
	dc.b	nRst, $01, nC3, $03, nRst, nF3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b	nC3, $0B, nRst, $07, nF3, $0C, nRst, $06, nE3, $0C, nRst, $06
	dc.b	nD3, $0C, nRst, $06, nD3, $0C, nRst, nD3, nRst, $06, nD3, $0C
	dc.b	nRst, $06, nD3, $0C, nC3, $03, nRst, nD3, $0B, nRst, $07, nD3
	dc.b	$0C, nRst, nA2, nRst, $06, nD3, $0C, nRst, $06, nC3, $0C, nRst
	dc.b	$06, nBb2, $0B, nRst, $07, nBb2, $0C, nRst, nBb2, nRst, $06, nBb2
	dc.b	$0B, nRst, $07, nBb2, $0C, nA2, $03, nRst, nC3, $0C, nRst, $06
	dc.b	nC3, $0C, nRst, nG2, nRst, $06, nC3, $0C, nRst, $06, nA2, $0C
	dc.b	nRst, $06, nBb2, $0C, nRst, $06, nBb2, $0B, nRst, $0D, nBb2, $0C
	dc.b	nRst, $06, nBb2, $0C, nRst, $06, nBb2, $0B, nRst, $01, nA2, $02
	dc.b	nRst, $04, nC3, $0C, nRst, $06, nC3, $0B, nRst, $0D, nG2, $0B
	dc.b	nRst, $07, nC3, $0C, nRst, $06, nG2, $0B, nRst, $07, nF3, $0C
	dc.b	nRst, $06, nF3, $0C, nRst, nF3, $0B, nRst, $07, nF3, $0C, nRst
	dc.b	$06, nF3, $0C, nC3, $03, nRst, nF3, $0C, nRst, $06, nF3, $0C
	dc.b	nRst, nC3, nRst, $06, nF3, $0C, nRst, $06, nE3, $0C, nRst, $06
	dc.b	nD3, $0B, nRst, $07, nD3, $0C, nRst, nD3, nRst, $06, nD3, $0C
	dc.b	nRst, $06, nD3, $0C, nC3, $03, nRst, nD3, $0B, nRst, $07, nD3
	dc.b	$0C, nRst, nA2, nRst, $06, nD3, $0B, nRst, $07, nC3, $0C, nRst
	dc.b	$06, nBb2, $0C, nRst, $06, nBb2, $0B, nRst, $0D, nBb2, $0C, nRst
	dc.b	$06, nBb2, $0C, nRst, $06, nBb2, $0C, nA2, $03, nRst, nC3, $0C
	dc.b	nRst, $06, nC3, $0B, nRst, $0D, nG2, $0C, nRst, $06, nC3, $0C
	dc.b	nRst, $06, nA2, $0C, nRst, $06, nBb2, $0C, nRst, $06, nBb2, $0B
	dc.b	nRst, $0D, nBb2, $0B, nRst, $07, nBb2, $0C, nRst, $06, nBb2, $0B
	dc.b	nRst, $01, nA2, $02, nRst, $04, nC3, $0C, nRst, $06, nC3, $0C
	dc.b	nRst, nG2, $0B, nRst, $07, nC3, $0C, nRst, $06, nF2, $0C, nRst
	dc.b	$06

camino_Jump05:
	dc.b	nG2, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $0B, nRst, $06, nG2, $0C, nRst, $06, nF2, nG2, nRst, $0C
	dc.b	nG2, nRst, nG2, $06, nE2, $03, nRst, nA2, $0C, nRst, $06, nA2
	dc.b	$0C, nRst, $06, nA2, $0C, nRst, nC3, nRst, $06, nA2, $0C, nE2
	dc.b	$03, nRst, nG2, $0C, nRst, $06, nG2, $0C, nRst, $06, nF2, nG2
	dc.b	nRst, $0C, nG2, nRst, nG2, $06

camino_Loop17:
	dc.b	nA2, $0C, nRst, $06
	smpsLoop            $00, $03, camino_Loop17
	dc.b	nA2, $0C, nC3, $06, nD3, nRst, nA2, $0C, nE2, $03, nRst, nG2
	dc.b	$0C, nRst, $06, nG2, $0C, nRst, $06, nF2, nG2, nRst, $0C, nG2
	dc.b	nRst, nG2, $06, nE2, $03, nRst, nA2, $0C, nRst, $06, nA2, $0C
	dc.b	nRst, $06, nA2, $0C, nRst, nC3, nRst, $06, nA2, $0C, nE2, $03
	dc.b	nRst, nG2, $0C, nRst, $06, nG2, $0C, nRst, $06, nF2, nG2, nRst
	dc.b	$0C, nG2, $09, nRst, $03, nG2, $09, nRst, $03, nG2, $04, nRst
	dc.b	$02, nA2, $06, nRst, $0C, nCs3, $09, nRst, $03, nCs3, $0C, nA2
	dc.b	$02, nRst, nA2, nRst, nA2, nRst, nF3, $06, nE3, nRst, nCs3, $0C
	dc.b	nA2, $06, nE3, nF3, $03, nRst

camino_Loop18:
	dc.b	nD3, $0C, nRst, $18, nC3, $06, nD3, nRst, nD3, nD2, nRst, $12
	dc.b	nC3, $06, nD3, nRst, $0C, nD3, nRst, $06, nD3, nRst, nD3, nRst
	dc.b	nD3, nE3, nRst, nF3, nRst, nG3, nRst, nBb2, $0C, nRst, $18, nA2
	dc.b	$06, nBb2, nRst, nBb2, nBb1, nRst, $12, nA2, $06, nBb2, nRst, $0C
	dc.b	nBb2, $06, nRst, $0C, nBb2, $06, nRst, nBb2, nF3, nF3, nE3, nRst
	dc.b	nD3, nRst, nC3, nBb2, nG2, $0C, nRst, $18, nF2, $06, nG2, nRst
	dc.b	nG2, nG1, nRst, $12, nF2, $06, nG2, nRst, $0C, nG2, nRst, $06
	dc.b	nG2, nRst, nF2, nRst, nG2, nG1, nRst, nF2, nG2, $03, nRst, nG3
	dc.b	$06, nD3, $03, nRst, nE2, $0C, nRst, $18, nD2, $06, nE2, nRst
	dc.b	nE2, nE2, nRst, $12, nG2, $06, nE2, nA2, nRst, nA1, nRst, $12
	dc.b	nG2, $06, nA2, nRst, $0C, nCs3, nRst, $06, nA2, $0C, nRst, $06
	smpsLoop            $00, $02, camino_Loop18
	dc.b	nD2, $60, nRst, $7F, $71, nC3, $09, nRst, nC3, nRst, nC3, nRst
	dc.b	$03, nF3, $0C, nRst, $06, nF3, $0C, nRst, nF3, nRst, $06, nF3
	dc.b	$0C, nRst, $06, nF3, $0C, nC3, $03, nRst, nF3, $0C, nRst, $06
	dc.b	nF3, $0C, nRst, nC3, nRst, $06, nF3, $0C, nRst, $06, nE3, $0C
	dc.b	nRst, $06, nD3, $0C, nRst, $06, nD3, $0C, nRst, nD3, nRst, $06
	dc.b	nD3, $0C, nRst, $06, nD3, $0C, nC3, $03, nRst, nD3, $0C, nRst
	dc.b	$06, nD3, $0C, nRst, nA2, nRst, $06, nD3, $0C, nRst, $06, nC3
	dc.b	$0C, nRst, $06, nBb2, $0C, nRst, $06, nBb2, $0C, nRst, nBb2, nRst
	dc.b	$06, nBb2, $0C, nRst, $06, nBb2, $0C, nA2, $03, nRst, nC3, $0C
	dc.b	nRst, $06, nC3, $0C, nRst, nG2, nRst, $06, nC3, $0C, nRst, $06
	dc.b	nA2, $0C, nRst, $06, nBb2, $0C, nRst, $06, nBb2, $0C, nRst, nBb2
	dc.b	nRst, $06, nBb2, $0C, nRst, $06, nBb2, $0C, nA2, $03, nRst, nC3
	dc.b	$0C, nRst, $06, nC3, $0C, nRst, nG2, nRst, $06, nC3, $0C, nRst
	dc.b	$06, nG2, $0C, nRst, $06, nF3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b	nF3, nRst, $06, nF3, $0C, nRst, $06, nF3, $0C, nC3, $03, nRst
	dc.b	nF3, $0C, nRst, $06, nF3, $0C, nRst, nC3, nRst, $06, nF3, $0C
	dc.b	nRst, $06, nE3, $0C, nRst, $06, nD3, $0C, nRst, $06, nD3, $0C
	dc.b	nRst, nD3, nRst, $06, nD3, $0C, nRst, $06, nD3, $0C, nC3, $03
	dc.b	nRst, nD3, $0C, nRst, $06, nD3, $0C, nRst, nA2, nRst, $06, nD3
	dc.b	$0C, nRst, $06, nC3, $0C, nRst, $06, nBb2, $0C, nRst, $06, nBb2
	dc.b	$0C, nRst, nBb2, nRst, $06, nBb2, $0C, nRst, $06, nBb2, $0C, nA2
	dc.b	$03, nRst, nC3, $0C, nRst, $06, nC3, $0C, nRst, nG2, nRst, $06
	dc.b	nC3, $0C, nRst, $06, nA2, $0C, nRst, $06, nBb2, $0C, nRst, $06
	dc.b	nBb2, $0C, nRst, nBb2, nRst, $06, nBb2, $0C, nRst, $06, nBb2, $0C
	dc.b	nA2, $03, nRst, nC3, $0C, nRst, $06, nC3, $0C, nRst, nG2, nRst
	dc.b	$06, nC3, $0C, nRst, $06, nF2, $0C, nRst, $06, nG2, $0C, nRst
	dc.b	$06, nG2, $0C, nRst, $06, nF2, nG2, nRst, $0C, nG2, nRst, nG2
	dc.b	$06, nE2, $03, nRst, nA2, $0C, nRst, $06, nA2, $0C, nRst, $06
	dc.b	nA2, $0C, nRst, nC3, nRst, $06, nA2, $0C, nE2, $03, nRst, nG2
	dc.b	$0C, nRst, $06, nG2, $0C, nRst, $06, nF2, nG2, nRst, $0C, nG2
	dc.b	$09, nRst, $03, nG2, $09, nRst, $03, nG2, $04, nRst, $02, nA2
	dc.b	$06, nRst, $0C, nA3, $10, nRst, $02, nG3, $0C, nA3, $01, nRst
	dc.b	$05, nF3, $06, nE3, $01, nRst, $05, nA2, $03, nRst, nD3, $12
	dc.b	nC3, $06, nA2, $01, nRst, $05, nG2, $0C, nRst, $06, nG2, $0C
	dc.b	nRst, $06, nF2, nG2, nRst, $0C, nG2, nRst, nG2, $06, nE2, $03
	dc.b	nRst, nA2, $0C, nRst, $06, nA2, $0C, nRst, $06, nA2, $0C, nRst
	dc.b	nC3, nRst, $06, nA2, $0C, nE2, $03, nRst, nG2, $0C, nRst, $06
	dc.b	nG2, $0C, nRst, $06, nF2, nG2, nRst, $0C, nG2, $09, nRst, $03
	dc.b	nG2, $09, nRst, $03, nG2, $04, nRst, $02, nA2, $06, nRst, $0C
	dc.b	nCs3, $09, nRst, $03, nCs3, $0C, nA2, $02, nRst, nA2, nRst, nA2
	dc.b	nRst, nF3, $06, nE3, nRst, nCs3, $0C, nA2, $06, nE3, nF3, $03
	dc.b	nRst, nD3, $0C, nRst, $18, nC3, $06, nD3, nRst, nD3, nD2, nRst
	dc.b	$12, nC3, $06, nD3, nRst, $0C, nD3, nRst, $06, nD3, nRst, nD3
	dc.b	nRst, nD3, nE3, nRst, nF3, nRst, nG3, nRst, nBb2, $0C, nRst, $18
	dc.b	nA2, $06, nBb2, nRst, nBb2, nBb1, nRst, $12, nA2, $06, nBb2, nRst
	dc.b	$0C, nBb2, $06, nRst, $0C, nBb2, $06, nRst, nBb2, nF3, nF3, nE3
	dc.b	nRst, nD3, nRst, nC3, nBb2, nG2, $0C, nRst, $18, nF2, $06, nG2
	dc.b	nRst, nG2, nG1, nRst, $12, nF2, $06, nG2, nRst, $0C, nG2, nRst
	dc.b	$06, nG2, nRst, nF2, nRst, nG2, nG1, nRst, nF2, nG2, $03, nRst
	dc.b	nG3, $06, nD3, $03, nRst, nE2, $0C, nRst, $18, nD2, $06, nE2
	dc.b	nRst, nE2, nE2, nRst, $12, nG2, $06, nE2, nA2, nRst, nA1, nRst
	dc.b	$12, nG2, $06, nA2, nRst, $0C, nCs3, nRst, $06, nA2, $0C, nRst
	dc.b	$06, nD3, $0C, nRst, $18, nC3, $06, nD3, nRst, nD3, nD2, nRst
	dc.b	$12, nC3, $06, nD3, nRst, $0C, nD3, nRst, $06, nD3, nRst, nD3
	dc.b	nRst, nD3, nE3, nRst, nF3, $05, nRst, $07, nG3, $06, nRst, nBb2
	dc.b	$0B, nRst, $19, nA2, $06, nBb2, nRst, nBb2, nBb1, nRst, $12, nA2
	dc.b	$06, nBb2, nRst, $0C, nBb2, $06, nRst, $0C, nBb2, $06, nRst, nBb2
	dc.b	nF3, nF3, nE3, nRst, nD3, nRst, nC3, nBb2, nG2, $0C, nRst, $18
	dc.b	nF2, $06, nG2, nRst, nG2, nG1, nRst, $12, nF2, $06, nG2, $05
	dc.b	nRst, $0D, nG2, $0C, nRst, $06, nG2, nRst, nF2, nRst, nG2, $05
	dc.b	nRst, $01, nG1, $06, nRst, nF2, nG2, $03, nRst, nG3, $06, nD3
	dc.b	$03, nRst, nE2, $0C, nRst, $18, nD2, $06, nE2, nRst, nE2, nE2
	dc.b	nRst, $12, nG2, $06, nE2, nA2, nRst, nA1, nRst, $12, nG2, $06
	dc.b	nA2, nRst, $0C, nCs3, nRst, $06, nA2, $0C, nRst, $06, nD3, $0C
	dc.b	nRst, $18, nC3, $06, nD3, $05, nRst, $07, nD3, $06, nD2, nRst
	dc.b	$12, nC3, $06, nD3, nRst, $0C, nD3, nRst, $06, nD3, nRst, nD3
	dc.b	nRst, nD3, nE3, nRst, nF3, nRst, nG3, nRst, nBb2, $0C, nRst, $18
	dc.b	nA2, $06, nBb2, nRst, nBb2, nBb1, nRst, $12, nA2, $06, nBb2, $05
	dc.b	nRst, $0D, nBb2, $06, nRst, $0C, nBb2, $05, nRst, $07, nBb2, $06
	dc.b	nF3, nF3, nE3, $05, nRst, $07, nD3, $06, nRst, nC3, nBb2, $05
	dc.b	nRst, $01, nG2, $0C, nRst, $18, nF2, $06, nG2, nRst, nG2, $05
	dc.b	nRst, $01, nG1, $06, nRst, $12, nF2, $05, nRst, $01, nG2, $06
	dc.b	nRst, $0C, nG2, $0B, nRst, $07, nG2, $06, nRst, nF2, nRst, nG2
	dc.b	nG1, nRst, nF2, nG2, $03, nRst, nG3, $06, nD3, $03, nRst, nE2
	dc.b	$0C, nRst, $18, nD2, $06, nE2, $05, nRst, $07, nE2, $06, $06
	dc.b	nRst, $12, nG2, $06, nE2, nA2, nRst, nA1, $05, nRst, $13, nG2
	dc.b	$06, nA2, $05, nRst, $0D, nG2, $0C, nRst, $06, nA2, nBb2, nB2
	dc.b	$04, nRst, $02, nC3, $0B, nRst, $01, nC3, $06, nRst, nG2, $11
	dc.b	nRst, $01, nBb2, $06, nRst, nBb2, $0C, nG2, $02, nRst, $04, nBb2
	dc.b	$06, nG2, $03, nRst, nBb2, $06, nB2, $03, nRst, nC3, $0F, nRst
	dc.b	$03, nG3, nRst, nG2, $11, nRst, $01, nBb2, $06, nRst, nBb2, $0B
	dc.b	nG2, $03, nRst, $04, nC3, $06, nG2, $03, nRst, nC3, $06, nC4
	dc.b	$03, nRst, nBb2, $05, nRst, $01, nBb2, $03, nRst, nBb2, $06, nRst
	dc.b	nF2, $12, nAb2, $06, nRst, nAb2, $0B, nRst, $01, nF2, $02, nRst
	dc.b	$04, nAb2, $06, nF2, $03, nRst, nAb2, $06, nA2, $02, nRst, $04
	dc.b	nBb2, $0C, nBb3, $06, nF3, $03, nRst, nF2, $0C, nF3, $03, nRst
	dc.b	nF2, nRst, nAb2, $0B, nRst, $01, nAb3, $02, nRst, $04, nAb2, $03
	dc.b	nRst, nA2, $0C, nA3, $02, nRst, $04, nBb2, $02, nRst, $04, nC3
	dc.b	$06, $06, nRst, nC3, $03, nRst, nG2, $12, nBb2, $06, nRst, nBb2
	dc.b	$0C, nG2, $03, nRst, nBb2, $06, nG2, $03, nRst, $02, nBb2, $06
	dc.b	nRst, $01, nB2, $03, nRst, nC3, $0C, $05, nG3, $03, nRst, $04
	dc.b	nG2, $12, nBb2, $06, nRst, nBb2, $0C, nG2, $03, nRst, nC3, $06
	dc.b	nG2, $02, nRst, $04, nC4, $06, nC3, $03, nRst, nD3, $06, $03
	dc.b	nRst, nD3, $05, nRst, $07, nA2, $12, nC3, $05, nRst, $07, nC3
	dc.b	$0C, nA2, $03, nRst, nC3, $05, nRst, $01, nA2, $02, nRst, $04
	dc.b	nC3, $06, nCs3, $03, nRst, nD3, $0B, nRst, $01, nD4, $06, nA3
	dc.b	$03, nRst, nC3, $08, $08, nCs3, $07, nRst, $01, nD3, $07, nRst
	dc.b	$11, nD2, $04, $0C, nRst, $08
	smpsPan             panCenter, $00
	smpsJump            camino_Jump05

; FM2 Data
camino_FM2:
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsAlterNote       $01
	dc.b	nD2

camino_Loop11:
	dc.b	$60, smpsNoAttack
	smpsLoop            $00, $05, camino_Loop11
	dc.b	$60, nRst, $7F, $41
	smpsSetvoice        $04
	smpsAlterNote       $00
	smpsPan             panCenter, $00
	smpsAlterVol        $02
	dc.b	nD4, $06, nRst

camino_Loop12:
	dc.b	nE4, nRst, nF4, $05, nRst, $07, nA3, $06
	smpsLoop            $00, $02, camino_Loop12
	dc.b	nE4, nRst, nF4, $05, nRst, $01, nA3, $06, nD4, nRst, nE4, nRst
	dc.b	nF4, nRst, nA3, nG4, nRst, nF4, nRst, nA3, nF4, nRst, nE4, nA3
	dc.b	nD4, nRst, nE4, nRst, nF4, nRst, nA3, nE4, $05, nRst, $07, nF4
	dc.b	$06, nRst, nA3, nE4, nRst, nF4, nA3, nD4, nRst, nE4, $05, nRst
	dc.b	$07, nF4, $06, nRst, nA3, nG4, $05, nRst, $07, nF4, $06, nRst
	dc.b	nA3, nE4, $05, nRst, $07, nF4, $06, nE4, nD4, nRst, nE4

camino_Loop13:
	dc.b	nRst, nF4, nRst, nA3, $05, nRst, $01, nE4, $06
	smpsLoop            $00, $02, camino_Loop13
	dc.b	nRst, nF4, nA3, nD4, $05, nRst, $07, nE4, $06, nRst, nF4, nRst
	dc.b	nA3, nG4, nRst, nF4, nRst, nA3, nF4, nRst, nE4, nA3, $05, nRst
	dc.b	$01, nD4, $05, nRst, $07, nE4, $06, nRst, nF4, nRst, nA3, nE4
	dc.b	nRst, nF4, nRst, nG4, nA4, nRst, nBb4, nA4, $05, nRst, $61
	smpsSetvoice        $06
	smpsPan             panLeft, $00
	smpsAlterVol        $FE
	dc.b	nC5, $54, nF4, $05, nRst, $07, nBb4, $03, nC5, $14, nRst, $01
	dc.b	nD5, $0F, nRst, $03, nC5, $0F, nRst, $03, nA4, $06, nRst, nG4
	dc.b	$0B, nRst, $01, nF4, $09, nRst, $03, nF4, nG4, $09, nA4, $15
	dc.b	nRst, $03, nD4, $24, nRst, $0C, nD4, $0A, nRst, $02, nF4, $16
	dc.b	nRst, $02, nG4, $16, nRst, $02, nA4, $16, nRst, $02, nA4, nRst
	dc.b	$01, nBb4, $15, nA4, $47, nRst, $0D, nD4, $0A, nRst, $02, nF4
	dc.b	$16, nRst, $02, nF4, $06, nG4, $05, nRst, $07, nA4, $06, nRst
	dc.b	nBb4, nRst, nA4, $0C, nG4, $03, nRst, nF4, $05, smpsNoAttack, nG4, $01
	dc.b	$02, nRst, $04, nG4, $02, nRst, $01, nA4, $43, nRst, $0E, nE4
	dc.b	$0A, nRst, $02, nF4, $16, nRst, $02, nF4, $05, nRst, $01, nG4
	dc.b	$06, nRst, nA4, nRst, nBb4, $05, nRst, $07, nA4, $0C, nG4, $03
	dc.b	nRst, $02, nA4, $06, nRst, $01, nBb4, $03, nRst, nBb4, nC5, $50
	dc.b	nRst, $01, nF4, $06, nRst, nBb4, $03, nC5, $07, nRst, $01, nC5
	dc.b	$0D, nD5, $0F, nRst, $03, nC5, $0F, nRst, $03, nC5, $06, nRst
	dc.b	nA4, $0C, nG4, $06, nF4, $03, nRst, nG4, $0B, nRst, $01, nA4
	dc.b	$15, nRst, $03, nD4, $23, nRst, $0D, nE4, $06, nF4, $03, nRst
	dc.b	nG4, $16, nRst, $02, nA4, $16, nRst, $02, nG4, $0C, nF4, $05
	dc.b	nRst, $07, nE4, $0C, nD4, $07, nRst, $05, nE4, $0C, nF4, $16
	dc.b	nRst, $02, nE4, $06, nA4, $25, nRst, $05, nD4, $06, nE4, $02
	dc.b	nRst, $04, nF4, $06, nRst, nG4, nRst, nF4, $05, nRst, $01, nG4
	dc.b	$05, nRst, $07, nA4, $06, nRst, nBb4, $05, nRst, $07, nA4, $0C
	dc.b	nG4, $03, nRst, nF4, $05, nE4, $03, nRst, $04, nE4, $15, nRst
	dc.b	$02, nF4, $11, nRst, $02, nA4, $1E, nRst, $06, nG4, $02, nRst
	dc.b	$03, nF4, $06, nRst, $01, nE4, $02, nRst, $04, nF4, $06, nRst
	dc.b	nG4, $05, nRst, $07, nF4, $06, nG4, nRst, nA4, $05, nRst, $07
	dc.b	nBb4, $06, nRst, nA4, $1C, nRst, $02
	smpsPan             panLeft, $00

camino_Jump04:
	smpsSetvoice        $06
	dc.b	nRst, $0C, nD4, $06, nRst, nE4, $03
	smpsAlterNote       $00
	dc.b	nF4, $09, nD4, $06, nRst, nF4, $0C, nD4, $06, nRst, nF4, $0C
	dc.b	nE4, $18, nF4, $0C, nG4, $06, nRst, nC4, $3A, nRst, $0E, nA4
	dc.b	$0C, nRst, $06, nA4, $0C, nRst, $06, nA4, $0C, nG4, $06, nRst
	dc.b	nA4, $0C, nBb4, $06, nA4, $18, nRst, $5A, nD4, $06, nRst, nF4
	dc.b	$0C, nD4, $06, nRst, nE4, $03, nF4, $09, nD4, $06, nRst, nF4
	dc.b	$0C, nE4, $15, nRst, $03, nE4, $0C, nF4, nG4, $06, nRst, $12
	dc.b	nC4, $22, nRst, $0E, nA4, $0C, nRst, $06, nA4, $0C, nRst, $06
	dc.b	nA4, $0C, nG4, nF4, $12, nE4, $06, nRst, $60, nD4, $18, nA3
	dc.b	nD4, $0C, nE4, nF4, nG4, $12, nRst, $06, nF4, $18, nE4, nE4
	dc.b	$0C, nD4, nA3, $09

camino_Loop14:
	dc.b	nRst, $03, nD4, $18, nBb3, nD4, $0C, nE4, nF4, nG4, $12, nRst
	dc.b	$06, nF4, $18, nE4, $0C, nF4, nE4, nD4, nBb3, $09
	smpsLoop            $00, $02, camino_Loop14
	dc.b	nRst, $03, nD4, $18, nE4, nF4, $0C, nE4, nF4, nG4, $04, nRst
	dc.b	$02, nA4, $12, nBb4, $0C, nA4, nBb4, $06, nA4, $2A, nRst, $0C
	dc.b	nD4, $18, nA3, nD4, $0C, nE4, nF4, $09, nRst, $03, nG4, $12
	dc.b	nRst, $06, nF4, $18, nE4, nE4, $0C, nD4, nA3, $09

camino_Loop15:
	dc.b	nRst, $03, nD4, $18, nBb3, nD4, $0C, nE4, nF4, $09, nRst, $03
	dc.b	nG4, $12, nRst, $06, nF4, $18, nE4, $0C, nF4, nE4, nD4, nBb3
	dc.b	$09
	smpsLoop            $00, $02, camino_Loop15
	dc.b	nRst, $03, nD4, $16, nRst, $02, nE4, $18, nF4, $0C, nE4, nF4
	dc.b	nG4, $04, nRst, $02, nE4, $0E, nRst, $04, nG4, $0C, nE4, nD4
	dc.b	$06, nE4, $0D, nRst, $05, nE4, $06, nRst, nD4, $0C, nC4, $06
	dc.b	nRst, nC4, $45, nRst, $03, nD4, $07, nRst, $05, nA3, $52, nRst
	dc.b	$1A
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsAlterVol        $02
	dc.b	nD4, $06, nRst, nE4, nRst, nF4, nRst, nA3, nE4, nRst, nF4, nRst
	dc.b	nA3, nE4, nRst, nF4, nA3, nRst, $60
	smpsSetvoice        $06
	smpsPan             panLeft, $00
	smpsAlterVol        $FE
	dc.b	nC5, $54, nF4, $06, nRst, nBb4, $03, nC5, $15, nD5, $0F, nRst
	dc.b	$03, nC5, $0F, nRst, $03, nA4, $06, nRst, nG4, $0C, nF4, $09
	dc.b	nRst, $03, nF4, nG4, $09, nA4, $15, nRst, $03, nD4, $24, nRst
	dc.b	$0C, nD4, $06, nE4, $03, nRst, nF4, $16, nRst, $02, nG4, $16
	dc.b	nRst, $02, nA4, $16, nRst, $02, nA4, $03, nBb4, $15, nA4, $48
	dc.b	nRst, $0C, nD4, $0A, nRst, $02, nF4, $06, nRst, nG4, nRst, nF4
	dc.b	nG4, nRst, nA4, nRst, nBb4, nRst, nA4, $0C, nG4, $03, nRst, nF4
	dc.b	$06, nG4, $03, nRst, nG4, nA4, $43, nRst, $0E, nE4, $0A, nRst
	dc.b	$02, nF4, $06, nRst, nG4, nRst, nF4, nG4, nRst, nA4, nRst, nBb4
	dc.b	nRst, nA4, $0C, nG4, $03, nRst, nA4, $06, nBb4, $03, nRst, nBb4
	dc.b	nC5, $51, nF4, $06, nRst, nBb4, $03, nC5, $07, nRst, $02, nC5
	dc.b	$0C, nD5, $0F, nRst, $03, nC5, $0F, nRst, $03, nF5, $09, nRst
	dc.b	$03, nE5, $0C, nC5, $06, nA4, $03, nRst, nC5, $0C, nD5, $15
	dc.b	nRst, $03, nF4, $24, nRst, $0C, nE4, $06, nF4, $03, nRst, nG4
	dc.b	$16, nRst, $02, nA4, $16, nRst, $02, nG4, $0C, nF4, $06, nRst
	dc.b	nE4, $0C, nD4, $07, nRst, $05, nE4, $0C, nF4, nG4, nE4, $06
	dc.b	nA4, $25, nRst, $05, nD4, $06, nE4, $03, nRst, nF4, $06, nRst
	dc.b	nG4, nRst, nF4, nG4, nRst, nA4, nRst, nBb4, nRst, nA4, $0C, nG4
	dc.b	$03, nRst, nF4, $06, nE4, $03, nRst, nF4, $15, nRst, $03, nG4
	dc.b	$0C, nE4, $06, nA4, $1E, nRst, $06, nG4, $03, nRst, nF4, $06
	dc.b	nE4, $03, nRst, nF4, $06, nRst, nG4, nRst, nF4, nG4, nRst, nA4
	dc.b	nRst, nBb4, nRst, nA4, $1C, nRst, $0E, nD4, $06, nRst, nE4, $03
	dc.b	nF4, $09, nD4, $06, nRst, nF4, $0C, nD4, $06, nRst, nF4, $0C
	dc.b	nE4, $18, nF4, $0C, nG4, $06, nRst, nC4, $3A, nRst, $0E, nC5
	dc.b	$0C, nRst, $06, nC5, $0C, nRst, $06, nC5, $0C, nBb4, $06, nRst
	dc.b	nA4, $0C, nBb4, $06, nC5, nRst, $6C, nD4, $06, nRst, nF4, $0C
	dc.b	nD4, $06, nRst, nE4, $03, nF4, $09, nD4, $06, nRst, nF4, $0C
	dc.b	nE4, $15, nRst, $03, nE4, $0C, nF4, nG4, $06, nRst, $12, nC4
	dc.b	$22, nRst, $0E, nA4, $0C, nRst, $06, nA4, $0C, nRst, $06, nA4
	dc.b	$0C, nG4, nF4, $12, nE4, $06, nRst, $60, nD4, $18, nA3, nD4
	dc.b	$0C, nE4, nF4, nG4, $12, nRst, $06, nF4, $18, nE4, nE4, $0C
	dc.b	nD4, nA3, $09, nRst, $03, nD4, $18, nBb3, nD4, $0C, nE4, nF4
	dc.b	nG4, $12, nRst, $06, nF4, $18, nE4, $0C, nF4, nE4, $0B, nRst
	dc.b	$01, nD4, $0C, nBb3, $09, nRst, $03, nD4, $18, nBb3, nD4, $0C
	dc.b	nE4, nF4, nG4, $12, nRst, $06, nF4, $18, nE4, $0C, nF4, nE4
	dc.b	nD4, nBb3, $08, nRst, $04, nD4, $18, nE4, nF4, $0C, nE4, nF4
	dc.b	nG4, $04, nRst, $02, nA4, $12, nBb4, $0B, nRst, $01, nA4, $0C
	dc.b	nBb4, $06, nA4, $29, nRst, $0D, nD4, $18, nA3, nD4, $0C, nE4
	dc.b	nF4, $08, nRst, $04, nG4, $12, nRst, $06, nF4, $18, nE4, nE4
	dc.b	$0C, nD4, nA3, $09, nRst, $03, nD4, $18, nBb3, nD4, $0C, nE4
	dc.b	$0B, nRst, $01, nF4, $09, nRst, $03, nG4, $11, nRst, $07, nF4
	dc.b	$17, nRst, $01, nE4, $0C, nF4, nE4, nD4, nBb3, $09, nRst, $03
	dc.b	nD4, $18, nBb3, nD4, $0C, nE4, nF4, $09, nRst, $03, nG4, $12
	dc.b	nRst, $06, nF4, $18, nE4, $0C, nF4, $0B, nRst, $01, nE4, $0C
	dc.b	nD4, nBb3, $09, nRst, $03, nD4, $16, nRst, $02, nE4, $18, nF4
	dc.b	$0C, nE4, nF4, $0B, nRst, $01, nG4, $04, nRst, $02, nA4, $48
	dc.b	nRst, $1E
	smpsPan             panCenter, $00
	smpsAlterVol        $03
	dc.b	nF4, $02
	smpsSetvoice        $01
	dc.b	smpsNoAttack, $44, nRst, $02, nE4, $22, nRst, $02, nE4, $46, nRst, $02
	dc.b	nA3, $0A, nRst, $02, nF4, $46, nRst, $02, nE4, $22, nRst, $02
	dc.b	nE4, $46, nRst, $02, nBb3, $0A, nRst, $02, nD4, $46, nRst, $02
	dc.b	nD4, $22, nRst, $02, nE4, $46, nRst, $02, nBb3, $0A, nRst, $02
	dc.b	nD4, $52, nRst, $02, nE4, $16, nRst, $01, nF4, $17, nRst, $02
	dc.b	nE4, $30, nRst, $54
	smpsSetvoice        $07
	smpsPan             panLeft, $00
	smpsAlterVol        $FD
	dc.b	nC6, $0C, nB5, $01, nRst, nA5, nAb5, nFs5, nF5, nRst, nRst, $2F
	dc.b	nC6, $06, nRst, nC6, $09, nRst, $69, nBb5, $0D, nA5, $01, nAb5
	dc.b	nG5, nFs5, nF5, nEb5, nD5, nRst, $10, nBb5, $03, nRst, nBb5, nRst
	dc.b	nAb5, $05, nRst, $01, nBb5, $04, nRst, $08, nC6, $04, nRst, $08
	dc.b	nBb5, $05, nRst, $07, nAb5, $04, nRst, $08, nBb5, $07, nRst, $35
	dc.b	nC6, $06, nRst, nC6, $05, nRst, $0D, nC6, $06, nRst, $05, nC6
	dc.b	$08, nB5, $02, nBb5, $01, nRst, nG5, nFs5, nRst, nEb5, nRst, $09
	dc.b	nC6, $03, nRst, $09, nBb5, $06, nC6, $03, nRst, $09, nD6, $05
	dc.b	nRst, $07, nC6, $04, nRst, $02, nBb5, $03, nRst, $09, nC6, $03
	dc.b	nRst, nC6, $02, nRst, $04, nC6, $05, nRst, $30, nD6, $06, nRst
	dc.b	$07, nD6, $06, nRst, $0C, nD6, $05, nRst, $07, nD6, nRst, $01
	dc.b	nCs6, nB5, $02, nRst, $01, nAb5, nG5, nRst, nRst, $09, nD6, $06
	dc.b	nRst, nC6, nRst, $02, nC6, $06, nRst, $02, nCs6, $06, nRst, $02
	dc.b	nD6, $07, nRst, $11, nD6, $07, nRst, $01, nCs6, nC6, nRst, nA5
	dc.b	nAb5, nRst, nF5, nRst, $09
	smpsSetvoice        $06
	smpsPan             panLeft, $00
	smpsJump            camino_Jump04

; FM3 Data
camino_FM3:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $19
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	nA5, $30, $24, $18, nE5, nF5, nA4, $23, nRst, $01, nA5, $30
	dc.b	$24, nC6, $18, nA5, nRst, $01, nA5, $17, nF5, $24, nA5, $30
	dc.b	$24, $18, nE5, nF5, nD5, $23, nRst, $01, nG5, $24, $1E, nCs6
	dc.b	$64, nRst, $01
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	smpsAlterVol        $02
	dc.b	nD4, $06, nRst, nE4, nRst, nF4, $05, nRst, $07, nA3, $06, nE4
	dc.b	nRst, nF4, nRst, nA3, nE4, nRst, nF4, $05, nRst, $01, nA3, $06
	dc.b	nD4, nRst, nE4, nRst, nF4, nRst, nA3, nG4, nRst, nF4, nRst, nA3
	dc.b	nF4, nRst, nE4, nA3, nD4, nRst, nE4, nRst, nF4, nRst, nA3, nE4
	dc.b	nRst, nF4, nRst, nA3, nE4, nRst, nF4, nA3, nD4, nRst, nE4, $05
	dc.b	nRst, $07, nF4, $06, nRst, nA3, nG4, $05, nRst, $07, nF4, $06
	dc.b	nRst, nA3, nE4, $05, nRst, $07, nF4, $06
	smpsAlterNote       $02
	dc.b	nE4, nD4, nRst, nE4

camino_Loop0F:
	dc.b	nRst, nF4, nRst, nA3, $05, nRst, $01, nE4, $06
	smpsLoop            $00, $02, camino_Loop0F
	dc.b	nRst, nF4, nA3, nD4, nRst, nE4, nRst, nF4, nRst, nA3, nG4, nRst
	dc.b	nF4, nRst, nA3, nF4, nRst, nE4, nA3, nD4, $05, nRst, $07, nE4
	dc.b	$06, nRst, nF4, nRst, nA3, nE4, nRst, nF4, nRst, nG4, nA4, nRst
	dc.b	nBb4, nA4, $05, nRst, $61
	smpsSetvoice        $06
	smpsPan             panRight, $00
	dc.b	$01
	smpsAlterVol        $FE
	dc.b	nC5, $54, nF4, $06, nRst, nBb4, $03, nC5, $15, nD5, $0F, nRst
	dc.b	$03, nC5, $0F, nRst, $03, nA4, $06, nRst, nG4, $0C
	smpsAlterNote       $01
	dc.b	nF4, $09, nRst, $03, nF4, nG4, $09, nA4, $15, nRst, $03, nD4
	dc.b	$24, nRst, $0C, nD4, $0B, nRst, $01, nF4, $17, nRst, $01, nG4
	dc.b	$17, nRst, $01, nA4, $16, nRst, $02, nA4, $03
	smpsAlterNote       $02
	dc.b	nBb4, $15, nA4, $48, nRst, $0C, nD4, $0B, nRst, $01, nF4, $17
	dc.b	nRst, $01, nF4, $06, nG4, nRst, nA4, nRst, nBb4, nRst, nA4, $0C
	dc.b	nG4, $03, nRst, nF4, $06, nG4, $03, nRst, nG4, nA4, $44, nRst
	dc.b	$0D, nE4, $0B, nRst, $01, nF4, $16, nRst, $02, nF4, $06, nG4
	dc.b	nRst, nA4, nRst, nBb4, nRst, nA4, $0C, nG4, $03, nRst, nA4, $06
	dc.b	nBb4, $03, nRst, nBb4, nC5, $51, nF4, $06, nRst, nBb4, $03, nC5
	dc.b	$08, nRst, $01, nC5, $0C, nD5, $0F, nRst, $03, nC5, $0F, nRst
	dc.b	$03, nC5, $06, nRst, nA4, $0C, nG4, $06
	smpsAlterNote       $01
	dc.b	nF4, $03, nRst, nG4, $0C, nA4, $15, nRst, $03, nD4, $24, nRst
	dc.b	$0C, nE4, $06, nF4, $03, nRst, nG4, $17, nRst, $01, nA4, $17
	dc.b	nRst, $01, nG4, $0C, nF4, $06, nRst, nE4, $0C, nD4, $08, nRst
	dc.b	$04, nE4, $0C
	smpsAlterNote       $02
	dc.b	nF4, $16, nRst, $02, nE4, $06, nF4, $26, nRst, $04, nD4, $06
	dc.b	nE4, $03, nRst, nF4, $06, nRst, nG4, nRst, nF4, nG4, nRst, nA4
	dc.b	nRst, nBb4, nRst, nA4, $0C, nG4, $03, nRst, nF4, $06, nE4, $03
	dc.b	nRst, nE4, $15, nRst, $03, nF4, $11, nRst, $01, nF4, $1E, nRst
	dc.b	$06, nG4, $03, nRst, nF4, $06, nE4, $03, nRst, nF4, $06, nRst
	dc.b	nG4, nRst, nF4, nG4, nRst, nA4, nRst, nBb4, nRst, nA4, $1D
	smpsPan             panRight, $00

camino_Jump03:
	smpsSetvoice        $06
	dc.b	nRst, $0E, nD4, $06, nRst, $05, nE4, $03
	smpsAlterNote       $02
	dc.b	nF4, $09, nRst, $01, nD4, $06, nRst, nF4, $0B, nD4, $06, nRst
	dc.b	$07, nD4, $0B
	smpsAlterNote       $01
	dc.b	nC4, $19, nD4, $0B, nE4, $06, nRst, $07, nG3, $3A, nRst, $0E
	dc.b	nA4, $0B, nRst, $07, nA4, $0C, nRst, $05, nA4, $0C, nRst, $01
	dc.b	nG4, $06, nRst, $05, nA4, $0C, nRst, $01, nBb4, $05, nRst, $01
	dc.b	nA4, $10, nRst, $01
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF6, $23, nC6, $24, nRst, $01, nE5, $17
	smpsSetvoice        $06
	smpsPan             panRight, $00
	smpsAlterNote       $02
	dc.b	nD4, $06, nRst, $07, nF4, $0B, nD4, $06, nRst, $07, nE4, $02
	dc.b	nRst, $01, nF4, $09, nD4, $05, nRst, $06, nF4, $0D, nE4, $14
	dc.b	nRst, $04, nC4, $0C, nD4, $0B, nE4, $06, nRst, $13, nG3, $22
	dc.b	nRst, $0E, nA4, $0B, nRst, $06, nA4, $0C, nRst, $07, nF4, $0B
	dc.b	nE4, $0C, nRst, $01, nD4, $11
	smpsAlterNote       $01
	dc.b	nCs4, $06, nRst, $0D
	smpsSetvoice        $00
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	nA5, $0B, $19, nF5, $18, nD5, $16, nRst, $02
	smpsSetvoice        $06
	smpsPan             panRight, $00
	smpsAlterNote       $01
	dc.b	nD4, $17, nA3, $18, nD4, $0C, nRst, $01, nE4, $0C
	smpsAlterNote       $02
	dc.b	nF4, $0B, nG4, $13, nRst, $06, nF4, $18, nE4, $17, nRst, $01
	dc.b	nE4, $0B
	smpsAlterNote       $01
	dc.b	nRst, $01, nD4, $0B, nA3, $0A, nRst, $03, nD4, $17, nRst, $01
	dc.b	nBb3, $17, nD4, $0D, nE4, $0B
	smpsAlterNote       $02
	dc.b	nF4, $0C, nRst, $01, nG4, $11, nRst, $06, nF4, $18, nE4, $0C
	dc.b	nRst, $01, nF4, $0C, nE4, $0B, nD4, $0C, nRst, $01, nBb3, $08
	dc.b	nRst, $03, nD4, $19, nBb3, $17, nRst, $01, nD4, $0B, nE4, $0C
	dc.b	nF4, $0D, nG4, $11, nRst, $07, nF4, $17, nE4, $0D, nF4, $0B
	dc.b	nE4, $0C, nRst, $01, nD4, $0C, nBb3, $08, nRst, $03, nD4, $18
	dc.b	nE4, $19, nF4, $0B, nE4, $0D, nF4, $0B, nG4, $05, nRst, $01
	dc.b	nA4, $13, nBb4, $0B, nA4, $0C, nRst, $01, nBb4, $06, nA4, $29
	dc.b	nRst, $0D, nD4, $17, nA3, $18, nD4, $0C, nRst, $01, nE4, $0B
	dc.b	smpsNoAttack, nF4, $01, $08, nRst, $03, nG4, $13, nRst, $05, nF4, $18
	dc.b	nE4, $19, $0B, nD4, $0C, nRst, $01, nA3, $09, nRst, $03, nD4
	dc.b	$17, nRst, $01, nBb3, $17, nD4, $0D, nE4, $0B, nF4, $09, nRst
	dc.b	$04, nG4, $11, nRst, $06, nF4, $18, nE4, $0C, nRst, $01, nF4
	dc.b	$0B, nE4, $0C, nD4, $0D, nBb3, $08, nRst, $03, nD4, $19, nBb3
	dc.b	$18, nD4, $0B, nE4, $0C, nRst, $01, nF4, $09, nRst, $02, nG4
	dc.b	$12, nRst, $07, nF4, $17, nRst, $01, nE4, $0C, nF4, $0B, nE4
	dc.b	$0C, nRst, $01, nD4, $0B, nBb3, $09, nRst, $03, nD4, $17, nRst
	dc.b	$01, nE4, $18, nF4, $0C, nE4, $0D, nF4, $0B, nG4, $05, nRst
	dc.b	$01, nE4, $0E, nRst, $04, nG4, $0C, nE4, $0D, nD4, $05, nE4
	dc.b	$0E, nRst, $05, nE4, $06, nRst, nD4, $0B
	smpsAlterNote       $01
	dc.b	nC4, $06, nRst, $07, nC4, $44, nRst, $03, nD4, $08, nRst, $04
	dc.b	nA3, $53, nRst, $18
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsAlterVol        $02
	dc.b	nD4, $06, nRst, nE4, nRst, nF4, nRst, nA3, nE4, nRst, nF4, nRst
	dc.b	nA3, nE4, nRst, nF4, nA3, nRst, $60
	smpsSetvoice        $06
	smpsPan             panCenter, $00
	dc.b	$01
	smpsSetvoice        $06
	smpsPan             panRight, $00
	smpsAlterVol        $FE
	dc.b	nC5, $54, nF4, $06, nRst, nBb4, $03, nRst, $01, nC5, $14, nD5
	dc.b	$0F, nRst, $04, nC5, $0E, nRst, $03, nA4, $06, nRst, $07, nG4
	dc.b	$0B, nF4, $09, nRst, $04, nF4, $02, nRst, $01, nG4, $08, nA4
	dc.b	$15, nRst, $04, nD4, $23, nRst, $0C, nD4, $06, nE4, $03, nRst
	dc.b	$04, nF4, $16, nRst, $01, nG4, $17, nRst, $01, nA4, $17, nRst
	dc.b	$01, nA4, $03
	smpsAlterNote       $02
	dc.b	nBb4, $15, nA4, $48, nRst, $0D, nD4, $0A, nRst, $01, nF4, $06
	dc.b	nRst, nG4, nRst, $07, nF4, $05, nG4, $06, nRst, nA4, nRst, $07
	dc.b	nBb4, $05, nRst, $06, nA4, $0C, nRst, $01, nG4, $02, nRst, $04
	dc.b	nF4, $05, nG4, $03, nRst, nG4, nA4, $44, nRst, $0E, nE4, $0A
	dc.b	nRst, $01, nF4, $06, nRst, $07, nG4, $06, nRst, $05, nF4, $06
	dc.b	nG4, nRst, $07, nA4, $05, nRst, $06, nBb4, nRst, nA4, $0C
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nG4, $01
	smpsAlterNote       $02
	dc.b	$02, nRst, $03, nA4, $06, nBb4, $03, nRst, nBb4, nC5, $51, nF4
	dc.b	$06, nRst, nBb4, $03, nRst, $01, nC5, $07, nRst, $01, nC5, $0C
	dc.b	nD5, $10, nRst, $02, nC5, $0F, nRst, $03, nF5, $09, nRst, $03
	dc.b	nE5, $0C, nC5, $06, nA4, $03, nRst, $04, nC5, $0B, nD5, $15
	dc.b	nRst, $04, nF4, $23, nRst, $0C, nE4, $06, nRst, $01, nF4, $02
	dc.b	nRst, $03, nG4, $17, nRst, $02, nA4, $16, nRst, $01, nG4, $0C
	dc.b	nRst, $01, nF4, $05, nRst, $06, nE4, $0C, nRst, $01, nD4, $07
	dc.b	nRst, $04, nE4, $0C, nF4, nRst, $01, nG4, $0B, nE4, $06, nF4
	dc.b	$26, nRst, $05, nD4, nE4, $03, nRst, nF4, $06, nRst, nG4, nRst
	dc.b	nF4, nG4, nRst, nA4, nRst, nBb4, nRst, nA4, $0C, nRst, $01, nG4
	dc.b	$02, nRst, $03, nF4, $06, nE4, $03, nRst, nF4, $15, nRst, $03
	dc.b	nG4, $0C, nE4, $06, nRst, $01, nF4, $1D, nRst, $07, nG4, $02
	dc.b	nRst, $03, nF4, $06, nE4, $03, nRst, nF4, $06, nRst, $07, nG4
	dc.b	$05, nRst, $06, nF4, nG4, nRst, nA4, nRst, nBb4, nRst, nA4, $1D
	dc.b	nRst, $0D, nD4, $06, nRst, nE4, $03, nF4, $09, nRst, $01, nD4
	dc.b	$05, nRst, $06, nF4, $0C, nD4, $06, nRst, nD4, $0C
	smpsAlterNote       $01
	dc.b	nC4, $18, nD4, $0C, nE4, $06, nRst, nG3, $3B, nRst, $0D, nC5
	dc.b	$0C, nRst, $07, nC5, $0B, nRst, $06, nC5, $0C, nBb4, $06, nRst
	dc.b	nA4, $0C
	smpsAlterNote       $02
	dc.b	nBb4, $06, nC5, nRst, $0C
	smpsSetvoice        $00
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	nF6, $24, nC6, nRst, $01, nE5, $17
	smpsSetvoice        $06
	smpsPan             panRight, $00
	smpsAlterNote       $02
	dc.b	nD4, $06, nRst, nF4, $0C, nD4, $06, nRst, $07, nE4, $02, nRst
	dc.b	$01, nF4, $08, nD4, $06, nRst, nF4, $0C, nE4, $15, nRst, $04
	dc.b	nC4, $0B, nD4, $0C, nE4, $06, nRst, $12, nG3, $23, nRst, $0D
	dc.b	nA4, $0C, nRst, $06, nA4, $0C, nRst, $06, nF4, $0C, nE4, nRst
	dc.b	$01, nD4, $11
	smpsAlterNote       $01
	dc.b	nCs4, $06, nRst, $0C
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $0B, $18, nF5, nD5, $17, nRst, $02
	smpsSetvoice        $06
	smpsPan             panRight, $00
	smpsAlterNote       $01
	dc.b	nD4, $17, nA3, $18, nD4, $0C, nE4
	smpsAlterNote       $02
	dc.b	nF4, nG4, $12, nRst, $06, nF4, $18, nE4, nE4, $0C, nD4, nA3
	dc.b	$09, nRst, $03, nD4, $18, nRst, $01, nBb3, $17, nD4, $0C, nE4
	dc.b	nF4, nRst, $01, nG4, $11, nRst, $06, nF4, $18, nE4, $0C, nF4
	dc.b	nE4, nD4, nBb3, $09, nRst, $03, nD4, $18, nBb3, nD4, $0C, nE4
	dc.b	nF4, nG4, $12, nRst, $06, nF4, $18, nE4, $0C, nF4, nE4, nRst
	dc.b	$01, nD4, $0B, nBb3, $09, nRst, $03, nD4, $18, nE4, nF4, $0C
	dc.b	nE4, nF4, nG4, $04, nRst, $02, nA4, $12, nBb4, $0C, nA4, nBb4
	dc.b	$06, nA4, $2A, nRst, $0C, nD4, $18, nA3, nD4, $0C, nE4, nF4
	dc.b	$09, nRst, $03, nG4, $12, nRst, $06, nF4, $18, nE4, nE4, $0C
	dc.b	nD4, nA3, $09

camino_Loop10:
	dc.b	nRst, $03, nD4, $18, nBb3, nD4, $0C, nE4, nF4, $09, nRst, $03
	dc.b	nG4, $12, nRst, $06, nF4, $18, nE4, $0C, nF4, nE4, nD4, nBb3
	dc.b	$09
	smpsLoop            $00, $02, camino_Loop10
	dc.b	nRst, $03, nD4, $16, nRst, $02, nE4, $18, nF4, $0C, nE4, nF4
	dc.b	nG4, $05, nRst, $01, nA4, $4D, nRst, $18
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	$19, nA5, $30, $24, $18, nE5, nF5, nA4, $23, nRst, $01, nA5
	dc.b	$30, $24, nC6, $18, nA5, nA5, nF5, $24, nA5, $30, $24, $18
	dc.b	nE5, nF5, nD5, $22, nRst, $02, nG5, $30
	smpsAlterNote       $01
	dc.b	nF5, $24, nA5, $3B, nRst, $60
	smpsSetvoice        $07
	smpsPan             panRight, $00
	dc.b	nEb5, $0D, nD5, $01, nCs5, nC5, nB4, nBb4
	smpsAlterNote       $02
	dc.b	nAb4, nG4
	smpsAlterNote       $01
	dc.b	nFs4, nRst, $2D, nG5, $06, nRst, nG5, $09, nRst, $69, nCs5, $0F
	dc.b	nRst, $01, nB4, nBb4
	smpsAlterNote       $02
	dc.b	nAb4, nG4
	smpsAlterNote       $01
	dc.b	nRst
	smpsAlterNote       $02
	dc.b	nE4, nRst, $0E, nF5, $03, nRst, nF5, nRst, nF5, $05, nRst, $01
	dc.b	nF5, $04, nRst, $08, nAb5, $04, nRst, $08, nF5, $05, nRst, $07
	dc.b	nF5, $04, nRst, $08, nF5, nRst, $34, nG5, $06, nRst, nG5, $05
	dc.b	nRst, $0D, nG5, $06, nRst, $05, nEb5, $0A
	smpsAlterNote       $01
	dc.b	nD5, $01, nCs5, nC5, nB4, nA4
	smpsAlterNote       $02
	dc.b	nAb4, nG4
	smpsAlterNote       $01
	dc.b	nRst, $08, nG5, $03, nRst, $09, nG5, $06, $03, nRst, $09, nBb5
	dc.b	$05, nRst, $07, nG5, $04, nRst, $02, nG5, $03, nRst, $09, nG5
	dc.b	$03, nRst, nG5, $02, nRst, $04, nG5, $07, nRst, $2F, nA5, $05
	dc.b	nRst, $07, nA5, $06, nRst, $0C, nA5, $05, nRst, $07, nF5, $09
	smpsAlterNote       $02
	dc.b	nE5, $01, nEb5
	smpsAlterNote       $01
	dc.b	nD5, nRst, nB4, nBb4
	smpsAlterNote       $02
	dc.b	nRst, nRst, $08, nA5, $06, nRst, nG5, nRst, $02, nG5, $06, nRst
	dc.b	$02, nAb5, $06, nRst, $02, nF5, $07, nRst, $11, nF5, $09, nE5
	dc.b	$01, nEb5, nD5
	smpsAlterNote       $01
	dc.b	nCs5, nB4, nBb4
	smpsAlterNote       $02
	dc.b	nAb4, nRst, $08
	smpsSetvoice        $06
	smpsPan             panRight, $00
	smpsJump            camino_Jump03

; FM4 Data
camino_FM4:
	smpsPan             panCenter, $00
	dc.b	nRst, $72, $72, $72, $72, $72, $72
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nA4, $09, nRst, $03, nA4, $16, nRst, $02, nBb4, $10, nRst, $02
	dc.b	nA4, $10, nRst, $02, nE4, $0A, nRst, $02, nA4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0B, nRst, $01
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $05, nRst, $07, nA4, $06, nRst, nA4, nA4, $0C, $0C
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0B, nRst, $01
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, nRst, $30
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsAlterVol        $FE
	dc.b	nD5, $0B, nRst, $07
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nD5, $0C, nRst, $06
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsAlterVol        $02
	dc.b	nD5, $08, nRst, $04, nC5, $7F, smpsNoAttack, $0B, $0F, nRst, $03, nC5
	dc.b	$12, $0F, nRst, $03, nC5, $7F, smpsNoAttack, $0A, nRst, $01, nC5, $0F
	dc.b	nRst, $03, nC5, $12, $0F, nRst, $03, nA4, $60, nD5, $2A, nBb4
	dc.b	$0F, nRst, $03, nD5, $12, nG4, $0F, nRst, $03, nA4, $60, nD5
	dc.b	$2A, nBb4, $0E, nRst, $04, nD5, $12, nG4, $0F, nRst, $03, nC5
	dc.b	$7F, smpsNoAttack, $0B, $0F, nRst, $03, nC5, $11, nRst, $01, nC5, $0F
	dc.b	nRst, $03, nC5, $7F, smpsNoAttack, $0A, nRst, $01, nC5, $0F, nRst, $03
	dc.b	nC5, $12, $0F, nRst, $03, nA4, $5F, nRst, $01, nD5, $2A, nBb4
	dc.b	$0F, nRst, $03, nD5, $12, nG4, $0E, nRst, $04, nA4, $60, nD5
	dc.b	$2A, nBb4, $0E, nRst, $04, nD5, $12, nG4, $0F, nRst, $03

camino_Jump02:
	dc.b	nF4, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $2E, nRst, $01, nF4, $23, nRst, $01, nG4, $5E, nRst, $02
	dc.b	nC5, $0A, nRst, $02, nF4, $2E, nRst, $02, nF4, $28, nRst, $02
	dc.b	nG4, $34, nRst, $02, nE5, $30, nF4, $2E, nRst, $02, nF4, $22
	dc.b	nRst, $02, nG4, $5F, nRst, $01, nC5, $0A, nRst, $02, nF4, $22
	dc.b	nRst, $02, nF4, $22, nRst, $02, nE5, $10, nRst, $02, nE4, $09
	dc.b	nRst, nG4, nRst, $03, nG4, $17, nRst, $01, nA4, $10, nRst, $02
	dc.b	nG4, $11, nRst, $01, nG4, $0A, nRst, $02, nA4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C, $0C
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C, nRst, $06, nA4, $0C, nRst, $06, nA4, $12
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C, nRst, $06, nA4, $0C, nRst, $06, nA4, $12
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nF4, $7F, smpsNoAttack, $03, nRst, $02, nE5, $17, nRst, $01, nE5, $2E
	dc.b	nRst, $7F, $07
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsAlterVol        $FE
	dc.b	nD5, $0C, nRst, $06
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nD5, $0C, nRst, $06
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsAlterVol        $02
	dc.b	nD5, $09

camino_Loop0B:
	dc.b	nRst, $03, nC5, $7F, smpsNoAttack, $0B, $0F, nRst, $03, nC5, $12, $0F
	smpsLoop            $00, $02, camino_Loop0B

camino_Loop0C:
	dc.b	nRst, $03, nA4, $60, nD5, $2A, nBb4, $0F, nRst, $03, nD5, $12
	dc.b	nG4, $0F
	smpsLoop            $00, $02, camino_Loop0C
	smpsLoop            $01, $02, camino_Loop0B
	dc.b	nRst, $03, nF4, $2E, nRst, $02, nF4, $22, nRst, $02, nG4, $5E
	dc.b	nRst, $02, nC5, $0A, nRst, $02, nF4, $2E, nRst, $02, nF4, $28
	dc.b	nRst, $02, nG4, $09, nRst, $2D, nF5, $30, nF4, $2E, nRst, $02
	dc.b	nF4, $22, nRst, $02, nG4, $5E, nRst, $02, nC5, $0A, nRst, $02
	dc.b	nF4, $22, nRst, $02, nF4, $22, nRst, $02, nE5, $10, nRst, $02
	dc.b	nE4, $09, nRst, nG4, nRst, $03, nG4, $16, nRst, $02, nA4, $10
	dc.b	nRst, $02, nG4, $10, nRst, $02, nG4, $0A, nRst, $02, nA4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C, $0C
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C, nRst, $06, nA4, $0C, nRst, $06, nA4, $12
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C, $0C
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nBb4, $17, nRst, $01
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, nRst, nA4, nRst, nA4, nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, nBb4, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nA4, $0C, nRst, $06, nA4, $0C, nRst, $06, nA4, $12
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$22, nRst, $02, nA4, $16, nRst, $02, nA4, $16, nRst, $02, nF5
	dc.b	$46, nRst, $02, nF5, $22, nRst, $02, nBb4, $22, nRst, $02, nBb4
	dc.b	$16, nRst, $02, nBb4, $16

camino_Loop0D:
	dc.b	nRst, $02, nF5, $46, nRst, $02, nF5, $22, nRst, $02, nA4, $22
	dc.b	nRst, $02, nA4, $16, nRst, $02, nA4, $16
	smpsLoop            $00, $02, camino_Loop0D
	dc.b	nRst, $02, nBb4, $2E, nRst, $02, nA4, $30, nRst, $0C
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nC4, $0B, nRst, $0D, nB3, $0C, nRst, $06, nBb3, nRst, $12, nA3
	dc.b	$08, nRst, $04, nA3, $06, nRst, nB3, nC4, $0B, nRst, $07, nB3
	dc.b	$0C, nRst, nBb3, $06, nRst, $12, nA3, $09, nRst, $03, nA3, $06
	dc.b	nRst, nA3, nBb3, $0C, nRst, nA3, $0B, nRst, $07, nAb3, $06, nRst
	dc.b	$12, nG3, $09, nRst, $03, nG3, $06, nRst, nA3, $05, nRst, $01
	dc.b	nBb3, $0C, nRst, $06, nA3, $0B, nRst, $0D, nAb3, $06, nRst, $12
	dc.b	nG3, $09, nRst, $03, nA3, $06, nRst, nB3, nC4, $0C, nRst, nB3
	dc.b	nRst, $06, nBb3, nRst, $12, nA3, $09, nRst, $03, nA3, $06, nRst
	dc.b	nB3, nC4, $0C, nRst, $06, nB3, $0C, nRst, nBb3, $06, nRst, $12
	dc.b	nA3, $09, nRst, $03, nBb3, $05, nRst, $07, nCs4, $06, nD4, $0C
	dc.b	nRst, nCs4, nRst, $06, nC4, $05, nRst, $13, nB3, $09, nRst, $03
	dc.b	nB3, $06, nRst, nCs4, nD4, $0B, nRst, $0D

camino_Loop0E:
	dc.b	nC4, $06, nRst, $02
	smpsLoop            $00, $03, camino_Loop0E
	dc.b	nD4, $06, nRst, $12, nD4, $10, nRst, $08
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsJump            camino_Jump02

; FM5 Data
camino_FM5:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $72, $72, $72, $72, $72, $72
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nD5, $09, nRst, $03, nD5, $16, nRst, $02, nD5, $10, nRst, $02
	dc.b	nD5, $10, nRst, $02, nA4, $0A, nRst, $02, nD5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nE5, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0B, nRst, $01
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nD5, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C, nBb4
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nE5, nD5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0B, nRst, $01
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nD5, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nRst, $30, nE5, $0B, nRst, $07
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsAlterVol        $FE
	dc.b	nE5, $0C, nRst, $06
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nE5, $08, nRst, $04
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsAlterVol        $02

camino_Loop07:
	dc.b	nE5, $7F, smpsNoAttack, $0B, $0F, nRst, $03, nE5, $12, $0F, nRst, $03
	smpsLoop            $00, $02, camino_Loop07
	dc.b	nD5, $60, nE5, $2A, nD5, $0F, nRst, $03, nE5, $12, nC5, $0F
	dc.b	nRst, $03, nD5, $60, nE5, $2A, nD5, $0E, nRst, $04, nE5, $12
	dc.b	nC5, $0F, nRst, $03, nE5, $7F, smpsNoAttack, $0B, $0F, nRst, $03, nE5
	dc.b	$11, nRst, $01, nE5, $0F, nRst, $03, nE5, $7F, smpsNoAttack, $0A, nRst
	dc.b	$01, nE5, $0F, nRst, $03, nE5, $12, $0F, nRst, $03, nD5, $5F
	dc.b	nRst, $01, nE5, $2A, nD5, $0F, nRst, $03, nE5, $12, nC5, $0E
	dc.b	nRst, $04, nD5, $60, nE5, $2A, nD5, $0E, nRst, $04, nE5, $12
	dc.b	nC5, $0F, nRst, $03

camino_Jump01:
	dc.b	nBb4, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $39, nRst, $02, nBb4, $17, nRst, $01, nC5, $53, nRst, $01
	dc.b	nE5, $16, nRst, $02, nBb4, $3A, nRst, $02, nBb4, $1C, nRst, $02
	dc.b	nC5, $23, nRst, $01, nF5, $36, nG4, $0C, nBb4, $3B, nRst, $01
	dc.b	nBb4, $16, nRst, $02, nC5, $52, nRst, $02, nE5, $16, nRst, $02
	dc.b	nBb4, $2F, nRst, $01, nBb4, $29, nRst, $01, nG4, $09, nRst, nCs5
	dc.b	nRst, $03, nCs5, $17, nRst, $01, nCs5, $10, nRst, $02, nCs5, $11
	dc.b	nRst, $01, nA4, $0A, nRst, $02, nD5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nE5, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C, nBb4
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $17
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nE5, nD5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nCs5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nCs5, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C, nRst, $06, nCs5, $0C, nRst, $06, nCs5, $12
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nD5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nE5, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C, nBb4
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nE5, nD5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nCs5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nCs5, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C, nRst, $06, nCs5, $0C, nRst, $06, nCs5, $12
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nA4, $6A, nRst, $02, nA4, $22, nRst, $02, nF5, $2D, nRst, $7F
	dc.b	$14, nE5, $0C, nRst, $06
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsAlterVol        $FE
	dc.b	nE5, $0C, nRst, $06
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nE5, $09, nRst, $03
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsAlterVol        $02

camino_Loop08:
	dc.b	nE5, $7F, smpsNoAttack, $0B, $0F, nRst, $03, nE5, $12, $0F, nRst, $03
	smpsLoop            $00, $02, camino_Loop08

camino_Loop09:
	dc.b	nD5, $60, nE5, $2A, nD5, $0F, nRst, $03, nE5, $12, nC5, $0F
	dc.b	nRst, $03
	smpsLoop            $00, $02, camino_Loop09
	smpsLoop            $01, $02, camino_Loop08
	dc.b	nBb4, $3A, nRst, $02, nBb4, $16, nRst, $02, nC5, $52, nRst, $02
	dc.b	nE5, $16, nRst, $02, nBb4, $3A, nRst, $02, nBb4, $1C, nRst, $02
	dc.b	nC5, $09, nRst, $1B, nG5, $36, nC5, $0C, nBb4, $3A, nRst, $02
	dc.b	nBb4, $16, nRst, $02, nC5, $52, nRst, $02, nE5, $16, nRst, $02
	dc.b	nBb4, $2E, nRst, $02, nBb4, $28, nRst, $02, nG4, $09, nRst, nCs5
	dc.b	nRst, $03, nCs5, $16, nRst, $02, nCs5, $10, nRst, $02, nCs5, $10
	dc.b	nRst, $02, nA4, $0A, nRst, $02, nD5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nE5, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C, nBb4
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nE5, nD5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nCs5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nCs5, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C, nRst, $06, nCs5, $0C, nRst, $06, nCs5, $12
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nD5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nE5, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C, nBb4
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	$18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $18, $0C
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nBb4, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nE5, nD5, $17, nRst, $01
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	$06, nRst, nD5, nRst, nD5, nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	$0C, nCs5, $18
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nCs5, $06
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nD5, $0C, nRst, $06, nCs5, $0C, nRst, $06, nCs5, $12
	smpsSetvoice        $01
	smpsPan             panCenter, $00

camino_Loop0A:
	dc.b	nD5, $2E, nRst, $02, nD5, $22, nRst, $32, nD5, $22, nRst, $02
	dc.b	nD5, $16, nRst, $02
	smpsLoop            $00, $02, camino_Loop0A
	dc.b	nBb4, $2E, nRst, $02, nBb4, $22, nRst, $32, nD5, $22, nRst, $02
	dc.b	nD5, $16, nRst, $02, nBb4, $2E, nRst, $02, nBb4, $22, nRst, $02
	dc.b	nD5, $2E, nRst, $02, nCs5, $30, nRst, $0C
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	$0C, nEb4, nRst, nEb4, $05, nRst, $0D, nEb4, $0C, nRst, $12, nEb4
	dc.b	$06, nRst, $12, nEb4, $06, nRst, $0C, nEb4, $0B, nRst, $0D, nEb4
	dc.b	$0C, nRst, $12, nEb4, $06, nRst, $12, nCs4, $0C, nRst, nCs4, $06
	dc.b	nRst, $0C, nCs4, $0B, nRst, $13, nCs4, $06, nRst, $12, nCs4, $06
	dc.b	nRst, $0C, nCs4, nRst, nCs4, nRst, $12, nCs4, $05, nRst, $13, nEb4
	dc.b	$0B, nRst, $0D, nEb4, $06, nRst, $0C, nEb4, nRst, $12, nEb4, $05
	dc.b	nRst, $13, nEb4, $06, nRst, $0C, nEb4, nRst, nEb4, nRst, $12, nEb4
	dc.b	$06, nRst, $12, nF4, $0C, nRst, nF4, $06, nRst, $0C, nF4, nRst
	dc.b	$12, nF4, $06, nRst, $12, nF4, $06, nRst, nE4, nRst, $02, nE4
	dc.b	$06, nRst, $02, nE4, $06, nRst, $02, nF4, $06, nRst, $12, nF4
	dc.b	$10, nRst, $08
	smpsJump            camino_Jump01

; PSG1 Data
camino_PSG1:
	dc.b	nRst, $01
	smpsPSGvoice        sTone_04
	dc.b	nD2, $30, nG2, $24, nBb2, $3C, nG2, $18, nE2, nD2, $30, nG2
	dc.b	$24, nBb2, nBb2, $18, $17, nRst, $01, nG2, $18, nD2, $30, nG2
	dc.b	$24, nBb2, $3C, nG2, $18, nE2, nBb1, $30, nRst, $01, nE2, $17
	dc.b	nA2, $76, nRst, $01
	smpsPSGvoice        sTone_17
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	nD1, nE1, nF1, nA0, $06, nE1, $0C, nF1, nA0, $06, nE1, $0C
	dc.b	nF1, $06, nA0, nD1, $0C, nE1, nF1, nA0, $06, nG1, $0C, nF1
	dc.b	nA0, $06, nF1, $0C, nE1, $06, nA0, nD1, $0C, nE1, nF1, nA0
	dc.b	$06, nE1, $0C, nF1, nA0, $05, nRst, $01, nE1, $0C, nF1, $06
	dc.b	nA0, nD1, $0C, nE1, nF1, nA0, $06, nG1, $0C, nF1, nA0, $06
	dc.b	nE1, $0C, nF1, $06, nE1, nD1, $0C, nE1, nF1, nA0, $06, nE1
	dc.b	$0C, nF1, nA0, $06, nE1, $0C, nF1, $06, nA0, nD1, $0C, nE1
	dc.b	nF1, nA0, $06, nG1, $0C, nF1, nA0, $06, nF1, $0C, nE1, $05
	dc.b	nRst, $01, nA0, $06, nD1, $0C, nE1, $0B, nRst, $01, nF1, $0C
	dc.b	nA0, $06, nE1, $0B, nRst, $01, nF1, $0C, nG1, $06, nA1, $0C
	dc.b	nBb1, $06, nA1, nRst, $7F, $7F, $77
	smpsPSGvoice        sTone_04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nD1, $17, nE1, $18, nF1, nG1, nF1, $17
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_03
	dc.b	nD2, $11, nRst, $01, nD2, $06, nRst, $24, nD2, $04, nRst, $02
	dc.b	nD2, $06, nRst, $0C, nE2, $06, nRst, nE2, nF2, $05, nRst, $07
	dc.b	nG2, $06, nRst, nF2, nRst, nE2, $0C, nF2, $04, nRst, $02, nE2
	dc.b	$06, nD2, $05, nRst, $19, nD2, $0C, nC2, $06, nD2, nRst, $0C
	dc.b	nD2, $02, nRst, $16, nD2, $04, nRst, $02, nD2, $06, nRst, $0C
	dc.b	nE2, $04, nRst, $02, nE2, $03, nRst, nE2, $05, nRst, $01, nF2
	dc.b	$06, nRst, nG2, nRst, nF2, $05, nRst, $07, nE2, $0C, nF2, $04
	dc.b	nRst, $02, nE2, $05, nRst, $01, nC2, $06, nRst, $7F, $41
	smpsPSGvoice        sTone_0A
	smpsPSGAlterVol     $02
	dc.b	nE1, $0C, nF1, $10, nRst, $08, nA0, $22, nRst, $1B
	smpsPSGvoice        sTone_04
	dc.b	nE1, $18, nF1, nC2, nD2, nA1, $17
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_03
	dc.b	nD2, $0B, nRst, $01, nC2, $06, nD2, nRst, $0C, nD2, $04, nRst
	dc.b	$02, nD2, $06, nRst, $0C, nD2, $06, nRst, $12, nE2, $06, nRst
	dc.b	nE2, nF2, $05, nRst, $07, nG2, $06, nRst, nF2, nRst, nE2, $0C
	dc.b	nF2, $04, nRst, $02, nE2, $06, nD2, $05, nRst, $19, nD2, $04
	dc.b	nRst, $02, nD2, $06, nC2, nD2, nRst, $0C, nD2, $03, nRst, $15
	dc.b	nD2, $04, nRst, $02, nD2, $06, nRst, $0C, nE2, $04, nRst, $02
	dc.b	nE2, nRst, $04, nE2, $06, nF2, nRst, nG2, nRst, nF2, nRst, nE2
	dc.b	$1E

camino_Jump08:
	smpsPSGvoice        sTone_03
	dc.b	nRst, $02
	smpsPSGvoice        sTone_04
	smpsPSGAlterVol     $02
	dc.b	nF2, $23, nRst, $01, nA1, $0C
	smpsAlterNote       $00
	dc.b	nBb1, $0B, nD2, $0D, nA2, $0C, nG2, $18, nF2, nE2, $17, nRst
	dc.b	$01, nC2, $24, nF2, nA1, $0B, smpsNoAttack, nBb1, $01, $0B, nRst, $01
	dc.b	nD2, $0C, nA2, $11, nRst, $01, nG2, $24, nE3, nG2, $1E, nF2
	dc.b	$24, nA1, $0B, nRst, $01, nBb1, $0C, nD2, $0B, nA2, $0D, nG2
	dc.b	$17, nRst, $01, nF2, $17, nE2, $19, nC2, $23, nF2, $24, nA1
	dc.b	$0D, nBb1, $0B, nD2, $0C, nRst, $01, nE2, $12, nCs2, $0A, nRst
	dc.b	$0E, nBb2, $11, nRst, $01, nG2, $17, nE2, $18, nCs2, $0B, nRst
	dc.b	$02, nD2, $17, nA2, $19, nG2, $16, nRst, $02, nF2, $0B, nE2
	dc.b	$19, nD2, $18, $0B, nE2, $0C, nRst, $01, nF2, $0C, nE2, $0B
	dc.b	nD2, $0D, nBb1, $17, nRst, $01, nA2, $17, nG2, $19, nF2, $0B
	dc.b	nRst, $01, nE2, $17, nD2, $0D, nE2, $0C, nF2, $0B, nRst, $01
	dc.b	nG2, $0C, nF2, $0B, nE2, $0C, nRst, $01, nD2, $0C, nBb1, $18
	dc.b	nA2, $17, nRst, $01, nG2, $16, nRst, $01, nF2, $0D, nE2, $17
	dc.b	nRst, $01, nD2, $17, $0D, nE2, $0B, nF2, $0C, nRst, $01, nE2
	dc.b	$0C, nD2, $0B, nBb1, $19, nA2, $18, nG2, nF2, $0C, nG2, $18
	dc.b	nA2, $17, nRst, $01, nG2, $17, nF2, $0D, nE2, $0B, nCs2
	smpsPSGvoice        sTone_04
	dc.b	nF1, $02
	smpsPSGvoice        sTone_0A
	dc.b	$16, nD1, $18, nF1, $0C, nG1, nA1, $09, nRst, $03, nBb1, $12
	dc.b	nRst, $06, nA1, $18, nG1

camino_Loop66:
	dc.b	nG1, $0C, nF1, nD1, $09, nRst, $03, nF1, $18, nD1, nF1, $0C
	dc.b	nG1, nA1, $09, nRst, $03, nBb1, $12, nRst, $06, nA1, $18, nG1
	dc.b	$0C, nA1
	smpsLoop            $00, $02, camino_Loop66
	dc.b	nG1, nF1, nRst, $01, nD1, $08, nRst, $03, nE1, $16, nRst, $02
	dc.b	nG1, $18, nA1, $0C, nG1, nA1, nBb1, $04, nRst, $02, nA1, $0E
	dc.b	nRst, $04, nBb1, $0C, nA1, nG1, $06, nA1, $0D, nRst, $05, nG1
	dc.b	$08, nRst, $04, nF1, $0C, nE1, $09, nRst, $03, nE1, $45, nRst
	dc.b	$03, nF1, $06, nRst, nD1, $52, nRst, $1A
	smpsPSGvoice        sTone_03
	dc.b	$0C
	smpsPSGvoice        sTone_03
	smpsPSGAlterVol     $FE
	dc.b	nD1
	smpsPSGvoice        sTone_03
	dc.b	nE1

camino_Loop67:
	smpsPSGvoice        sTone_03
	dc.b	nF1
	smpsPSGvoice        sTone_03
	dc.b	nA0, $06
	smpsPSGvoice        sTone_03
	dc.b	nE1, $0C
	smpsLoop            $00, $02, camino_Loop67
	smpsPSGvoice        sTone_03
	dc.b	nF1, $06
	smpsPSGvoice        sTone_03
	dc.b	nA0, nRst, $7F, $7F, $78
	smpsPSGvoice        sTone_04
	smpsPSGAlterVol     $02
	dc.b	nD1, $17, nE1, $18, nF1, nG1, $19, nF1, $16
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_03
	dc.b	nD2, $12, $06, nRst, $0C, nD2, $06, nRst, $12, nD2, $04, nRst
	dc.b	$02, nD2, $06, nRst, $0C, nE2, $06, nRst, nF2, nE2, nRst, nG2
	dc.b	nRst, nG2, $05, nRst, $01, nF2, $06, nRst, nE2, nF2, $04, nRst
	dc.b	$02, nE2, $06, nD2, nRst, $18, nD2, $0C, nC2, $06, nD2, nRst
	dc.b	$0C, nD2, $03, nRst, $15, nD2, $04, nRst, $02, nD2, $06, nRst
	dc.b	$0C, nE2, $04, nRst, $02, nE2, $03, nRst, nE2, $06, nF2, nRst
	dc.b	nG2, nRst, nF2, nRst, nE2, $0C, nF2, $05, nRst, $01, nE2, $06
	dc.b	nC2, nRst, $7F, $41
	smpsPSGvoice        sTone_0A
	smpsPSGAlterVol     $02
	dc.b	nE1, $0C, nF1, $10, nRst, $08, nA0, $23, nRst, $1B
	smpsPSGvoice        sTone_04
	dc.b	nE1, $17, nRst, $01, nF1, $17, nC2, $18, nD2, $19, nA1, $16
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_03
	dc.b	nD2, $0C, nC2, $06, nD2, nRst, $0C, nD2, $04, nRst, $02, nC2
	dc.b	$0A, nRst, $02, nC2, $04, nRst, $02, nD2, $06, nRst, $12, nE2
	dc.b	$06, nRst, nE2, nF2, nRst, nG2, nRst, nF2, nRst, nE2, $0C, nF2
	dc.b	$04, nRst, $02, nE2, $06, nD2, nRst, $18, nD2, $04, nRst, $02
	dc.b	nD2, $06, nC2, nD2, nRst, $0C, nD2, $04, nRst, $02, nD2, $03
	dc.b	nRst, nC2, nRst, nD2, $0C, nRst, $12, nE2, $05, nRst, $01, nE2
	dc.b	$03, nRst, nE2, $06, nF2, nRst, nG2, nRst, nF2, nRst, nE2, $1E
	dc.b	nRst, $01
	smpsPSGvoice        sTone_04
	smpsPSGAlterVol     $02
	dc.b	nF2, $24, nRst, $01, nA1, $0B, nBb1, $0C, nD2, $0D, nA2, $0B
	dc.b	nG2, $18, nF2, $19, nE2, $17, nRst, $01, nC2, $23, nRst, $01
	dc.b	nF2, $23, nA1, $0C, nBb1, nRst, $01, nD2, $0B, nA2, $12, nRst
	dc.b	$01, nG2, $23, nE3, $24, nG2, $1E, nF2, $24, nA1, $0C, nRst
	dc.b	$01, nBb1, $0B, nD2, $0C, nA2, nRst, $01, nG2, $17, nRst, $01
	dc.b	nF2, $17, nE2, $18, nC2, $24, nF2, nA1, $0C, nBb1, nD2, nRst
	dc.b	$01, nE2, $11, nCs2, $0B, nRst, $0D, nBb2, $12, nRst, $01, nG2
	dc.b	$17, nE2, $18, nCs2, $0B, nRst, $02, nD2, $17, nA2, $18, nG2
	dc.b	$17, nRst, $01, nF2, $0C, nE2, $18, nD2, nD2, $0C, nE2, nRst
	dc.b	$01, nF2, $0B, nE2, $0C, nD2, nBb1, $18, nRst, $01, nA2, $17
	dc.b	nG2, $18, nF2, $0C, nRst, $01, nE2, $17, nD2, $0C, nE2, nF2
	dc.b	nG2, nF2, nE2, nRst, $01, nD2, $0B, nBb1, $18, nA2, nG2, $17
	dc.b	nRst, $01, nF2, $0C, nE2, $18, nRst, $01, nD2, $17, $0C, nE2
	dc.b	nF2, nRst, $01, nE2, $0B, nD2, $0C, nBb1, $18, nA2, nG2, nF2
	dc.b	$0C, nG2, $18, nA2, nRst, $01, nG2, $17, nF2, $0C, nE2, nCs2
	dc.b	$0B
	smpsPSGvoice        sTone_04
	dc.b	nF1, $02
	smpsPSGvoice        sTone_0A
	dc.b	$16, nD1, $18, nF1, $0C, nG1, nA1, $09, nRst, $03, nBb1, $12
	dc.b	nRst, $06, nA1, $18, nG1, nG1, $0C, nF1, nD1, $09, nRst, $03
	dc.b	nF1, $18, nD1, nF1, $0C, nG1, nA1, $09, nRst, $03, nBb1, $12
	dc.b	nRst, $06, nA1, $18, nG1, $0C, nA1, nG1, nF1, nD1, $09, nRst
	dc.b	$04, nF1, $17, nD1, $18, nF1, $0C, nG1, nA1, $09, nRst, $03
	dc.b	nBb1, $12, nRst, $06, nA1, $18, nG1, $0C, nA1, nG1, nF1, nD1
	dc.b	$09, nRst, $03, nE1, $16, nRst, $02, nG1, $18, nA1, $0C, nG1
	dc.b	nA1, nBb1, $04, nRst, $02, nCs2, $34, nRst, $32
	smpsPSGvoice        sTone_04
	dc.b	$01
	smpsPSGvoice        sTone_04
	dc.b	nD2, $30, nG2, $24, nBb2, $3C, nG2, $18, nE2, nD2, $30, nRst
	dc.b	$01, nG2, $23, nBb2, $24, $18, $17, nRst, $01, nG2, $18, nD2
	dc.b	$30, nG2, $24, nBb2, $3C, nG2, $18, nE2, nBb1, $30, nE2, $24
	dc.b	nG2, $30, nCs3, $3B
	smpsPSGvoice        sTone_04
	dc.b	nRst, $03
	smpsPSGAlterVol     $FC
	dc.b	nG1, $06, $06, $06, $03, nC1, $06, nRst, $0C
	dc.b	nBb0, $06, nRst, nBb0, nRst, $0B, nB0, $05, nRst, $07, nB0, $06
	dc.b	nC1, nRst, $01, nG1, $07, nRst, $05, nG1, $06, nRst, $05, nC1
	dc.b	$06, nRst, $0D, nBb0, $06, nRst, nBb0, $05, nRst, $0C, nB0, $05
	dc.b	nRst, $07, nB0, $06, nC1, nRst, $03, nF1, $06, $06, $06
	dc.b	$03, nBb0, $06, nRst, $0C, nAb0, $06, nRst
	dc.b	nAb0, nRst, $0B, nA0, $04, nRst, $08, nA0, $06, nBb0, $05, nRst
	dc.b	$04, nF1, $07, nRst, $03, nF1, $06, nRst, $05, nBb0, nRst, $0E
	dc.b	nAb0, $06, nRst, nAb0, nRst, $0B, nA0, $06, nRst, nBb0, nB0, nRst
	dc.b	$03, nG1, $06, $06, $06, $03, nC1, $07, nRst
	dc.b	$0C, nBb0, $05, nRst, $07, nBb0, $06, nRst, $0B, nB0, $05, nRst
	dc.b	$07, nB0, $05, nRst, $01, nC1, $06, nG1, $07, nRst, $05, nG1
	dc.b	$06, nRst, nC1, nRst, $0D, nBb0, $06, nRst, nBb0, nRst, $0B, nB0
	dc.b	$05, nRst, $07, nC1, $06, nD1, nRst, $03, nA1, $06
	dc.b	$06, $06, nA1, $03, nD1, $06, nRst, $0D, nC1
	dc.b	$06, nRst, nC1, nRst, $0B, nCs1, $05, nRst, $07, nCs1, $06, nD1
	dc.b	nRst, $01, nA1, $07, nRst, $04, nA1, $06, nRst, nD1, nRst, $0B
	dc.b	nCs1, $06, nRst, $02, nA1, $06, nRst, $12, nA1, $06, nRst, $11
	smpsPSGAlterVol     $02
	smpsJump            camino_Jump08

; PSG2 Data
camino_PSG2:
	dc.b	nD3, $18, nA3, nG3, $16, nRst, $02, nA3, $0C, nBb3, $18, nA3
	dc.b	nE3, $0C, nG3, nF3, nE3, nA2, nD3, $18, nA3, nG3, nA3, $0C
	dc.b	nBb3, $18, nC4, $0C, nBb3, nA3, nBb3, nA3, nG3, nF3, nD3, $18
	dc.b	nA3, nG3, $16, nRst, $02, nA3, $0C, nBb3, $18, nA3, nE3, $0C
	dc.b	nG3, nF3, nE3, nD3, nBb2, $18, nG3, nE3, $0C, nG3, nA3, $12
	dc.b	nCs4, $18, nRst, $4E, nD3, $18, nA3, nG3, $16, nRst, $02, nF3
	dc.b	$0C, nE3, $18, nD3, nD3, $0C, nE3, nF3, nE3, nD3, nBb2, $18
	dc.b	nA3, nG3, nF3, $0B, nRst, $01, nE3, $18, nD3, $0C, nE3, nF3
	dc.b	nG3, nF3, nE3, nD3, nBb2, $18, nA3, nG3, $16, nRst, $02, nF3
	dc.b	$0C, nE3, $18, nD3, nD3, $0C, nE3, nF3, nE3, nD3, nBb2, $18
	dc.b	nA3, nG3, nF3, $30, nRst, $7F, $7F, $6A, nD2, $18, nE2, nF2
	dc.b	nG2, nF2
	smpsPSGAlterVol     $FD
	smpsPSGvoice        sTone_03
	dc.b	nA1, $12, $06, nRst, $24, nA1, $04, nRst, $02, nA1, $06, nRst
	dc.b	$0C, nC2, $06, nRst, nC2, nC2, nRst, nC2, nRst, nC2, nRst, nC2
	dc.b	$0C, $04, nRst, $02, nC2, $06, nA1, $05, nRst, $19, nA1, $0C
	dc.b	nG1, $06, nA1, nRst, $0C, nA1, $03, nRst, $15, nA1, $04, nRst
	dc.b	$02, nA1, $06, nRst, $0C, nC2, $04, nRst, $02, nC2, $03, nRst
	dc.b	nC2, $05, nRst, $01, nC2, $06, nRst, nC2, nRst, nC2, $05, nRst
	dc.b	$07, nC2, $0C, $04, nRst, $02, nC2, $05, nRst, $01, nG1, $06
	smpsPSGAlterVol     $03
	smpsPSGvoice        sTone_13
	dc.b	nRst, $7F, $7F, $22, nE2, $18, nF2, nC3, $17, nRst, $01, nD3
	dc.b	$18, nA2
	smpsPSGAlterVol     $FD
	smpsPSGvoice        sTone_03
	dc.b	nA1, $0C, nG1, $06, nA1, nRst, $0C, nA1, $04, nRst, $02, nA1
	dc.b	$06, nRst, $0C, nA1, $06, nRst, $12, nC2, $06, nRst, nC2, nC2
	dc.b	$05, nRst, $07, nC2, $06, nRst, nC2, nRst, nC2, $0C, $04, nRst
	dc.b	$02, nC2, $06, nA1, $05, nRst, $19, nA1, $04, nRst, $02, nA1
	dc.b	$06, nG1, nA1, nRst, $0C, nA1, $03, nRst, $15, nA1, $04, nRst
	dc.b	$02, nA1, $06, nRst, $0C, nC2, $04, nRst, $02, nC2, nRst, $04
	dc.b	nC2, $06, $06, nRst, nC2, nRst, nC2, nRst, nC2, $1E

camino_Jump07:
	smpsPSGvoice        sTone_03
	dc.b	nRst, $01
	smpsPSGvoice        sTone_13
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nF3, $23, nA2, $0C, nBb2, nD3, nA3, nG3, $18, nF3, nE3, nC3
	dc.b	$24, nF3, nA2, $0C, nBb2, nD3, nA3, $12, nG3, nF4, nE4, nC4
	dc.b	nG3, nE3, $0C, nF3, $24, nA2, $0C, nBb2, nD3, nA3, nG3, $18
	dc.b	nF3, nE3, nC3, $24, nF3, nA2, $0C, nBb2, nD3, nE3, $12, nCs3
	dc.b	$0A, nRst, $08, nA3, $06, nBb3, nA3, $0C, nG3, nF3, nE3, nD3
	dc.b	nCs3, nD3, $18, nA3, nG3, $17, nRst, $01, nF3, $0C, nE3, $18
	dc.b	nD3, nD3, $0C, nE3, nF3, nE3, nD3, nBb2, $18, nA3, nG3, nF3
	dc.b	$0C, nE3, $18, nD3, $0C, nE3, nRst, $01, nF3, $0B, nG3, $0C
	dc.b	nF3, nE3, nD3, nRst, $01, nBb2, $17, nA3, $18, nG3, $16, nRst
	dc.b	$02, nF3, $0C, nE3, $18, nD3, nD3, $0C, nE3, nF3, nE3, nD3
	dc.b	nBb2, $18, nRst, $01, nA3, $17, nG3, $18, nF3, $0C, nRst, $01
	dc.b	nG3, $17, nA3, $18, nG3, nF3, $0C, nE3, nCs3, nD3, $18, nA3
	dc.b	nG3, $17, nRst, $01, nF3, $0C, nE3, $18, nD3, nD3, $0C, nE3
	dc.b	nF3, nE3, nD3, nBb2, $18, nA3, nG3, nF3, $0C, nE3, $18, nD3
	dc.b	$0C, nE3, nF3, nG3, nF3, nE3, nD3, nBb2, $18, nA3, nG3, $16
	dc.b	nRst, $02, nF3, $0C, nE3, $18, nD3, nD3, $0C, nE3, nF3, nE3
	dc.b	nRst, $01, nD3, $0B, nBb2, $18, nA3, nG3, nF3, $0C, nRst, $01
	dc.b	nE3, $17, nG3, $18, nA3, $3C, nRst, $70, $70, $70, $70, $70
	dc.b	$70, nD2, $18, nE2, nF2, nG2, nF2
	smpsPSGAlterVol     $FD
	smpsPSGvoice        sTone_03
	dc.b	nA1, $12, $06, nRst, $0C, nA1, $06, nRst, $12, nA1, $04, nRst
	dc.b	$02, nA1, $06, nRst, $0C, nC2, $06, nRst, nC2, nC2, nRst, nC2
	dc.b	nRst, nC2, $05, nRst, $01, nC2, $06, nRst, nC2, nC2, $04, nRst
	dc.b	$02, nC2, $06, nA1, nRst, $18, nA1, $0C, nG1, $06, nA1, nRst
	dc.b	$0C, nA1, $03, nRst, $15, nA1, $05, nRst, $01, nA1, $06, nRst
	dc.b	$0C, nC2, $04, nRst, $02, nC2, $03, nRst, nC2, $06, $06, nRst
	dc.b	nC2, nRst, nC2, nRst, nC2, $0C, $05, nRst, $01, nC2, $06, nG1
	smpsPSGAlterVol     $03
	smpsPSGvoice        sTone_13
	dc.b	nRst, $7F, $7F, $22, nE2, $18, nF2, nC3, nD3, nA2
	smpsPSGAlterVol     $FD
	smpsPSGvoice        sTone_03
	dc.b	nA1, $0C, nG1, $06, nA1, nRst, $0C, nA1, $04, nRst, $02, nG1
	dc.b	$0A, nRst, $02, nG1, $04, nRst, $02, nA1, $06, nRst, $12, nC2
	dc.b	$06, nRst, nC2, nC2, nRst, nC2, nRst, nC2, nRst, nC2, $0C, $04
	dc.b	nRst, $02, nC2, $06, nA1, nRst, $18, nA1, $04, nRst, $02, nA1
	dc.b	$06, nG1, nA1, nRst, $0C, nA1, $04, nRst, $02, nA1, $03, nRst
	dc.b	nG1, nRst, nA1, $0C, nRst, $12, nC2, $05, nRst, $01, nC2, $03
	dc.b	nRst, nC2, $06, $06, nRst, nC2, nRst, nC2, nRst, nC2, $1E
	smpsPSGAlterVol     $03
	smpsPSGvoice        sTone_13
	dc.b	nF3, $24, nA2, $0C, nBb2, nD3, nA3, nG3, $18, nF3, nE3, nC3
	dc.b	$24, nF3, nA2, $0C, nBb2, nD3, nA3, $12, nG3, nF4, nE4, nC4
	dc.b	nG3, nE3, $0C, nF3, $24, nA2, $0C, nBb2, nD3, nA3, nG3, $18
	dc.b	nF3, nE3, nC3, $24, nF3, nA2, $0C, nBb2, nD3, nE3, $12, nCs3
	dc.b	$0A, nRst, $08, nA3, $06, nBb3, nA3, $0C, nG3, nF3, nE3, nD3

camino_Loop64:
	dc.b	nCs3, nD3, $18, nA3, nG3, $16, nRst, $02, nF3, $0C, nE3, $18
	dc.b	nD3, nD3, $0C, nE3, nF3, nE3, nD3, nBb2, $18, nA3, nG3, nF3
	dc.b	$0C, nE3, $18, nD3, $0C, nE3, nF3, nG3, nF3, nE3, nD3, nRst
	dc.b	$01, nBb2, $17, nA3, $18, nG3, $16, nRst, $02, nF3, $0C, nE3
	dc.b	$18, nD3, nD3, $0C, nE3, nF3, nE3, nD3, nBb2, $18, nA3, nG3
	dc.b	nF3, $0C, nG3, $18, nA3, nG3, nF3, $0C, nE3
	smpsLoop            $00, $02, camino_Loop64
	dc.b	nCs3, nD3, $18, nA3, nG3, $16, nRst, $02, nA3, $0C, nBb3, $18
	dc.b	nA3, nE3, $0C, nG3, nF3, nE3, nA2, nD3, $18, nA3, nG3, nA3
	dc.b	$0C, nBb3, $18, nC4, $0C, nBb3, $0B, nRst, $01, nA3, $0C, nBb3
	dc.b	nA3, nG3, nF3, nD3, $18, nA3, nG3, $16, nRst, $02, nA3, $0C
	dc.b	nBb3, $18, nA3, nE3, $0C, nG3, nF3, nE3, nD3, nBb2, $17, nRst
	dc.b	$01, nG3, $18, nE3, nF3, $0B, nRst, $01, nG3, $18, nA3, nCs4
	dc.b	$3C
	smpsPSGAlterVol     $FB
	smpsPSGvoice        sTone_04
	dc.b	nEb1, $06, nRst, $02, nEb1, $06, nRst, $01, nEb1, $05, $04, $06
	dc.b	nRst, nG0, nG0, nRst, nG0, nRst, nG0, nG0, nRst, nG0, nRst, nEb1
	dc.b	nRst, nEb1, nRst, nEb1, nRst, nG0, $05, nRst, $01, nG0, $06, nRst
	dc.b	nG0, nRst, nG0, $05, nRst, $01, nG0, $06, nRst, nG0, $05, nRst
	dc.b	$07, nCs1, $05, nRst, $03, nCs1, $07, $05, $04, $06, nRst, nF0
	dc.b	nF0, nRst, nF0, nRst, nF0, nF0, nRst, nF0, nRst, nCs1, nRst, nCs1
	dc.b	nRst, nCs1, $05, nRst, $07, nF0, $06, $06, nRst, nF0, nRst, nF0
	dc.b	nF0, nRst, nG0, $05, nRst, $07, nEb1, $06, nRst, $02, nEb1, $07
	dc.b	$05, $04, $05

camino_Loop65:
	dc.b	nRst, $07, nG0, $06, $06, nRst, nG0, $05
	smpsLoop            $00, $02, camino_Loop65
	dc.b	nRst, $07, nEb1, $06, nRst, nEb1, nRst, nEb1, nRst, nG0, nG0, nRst
	dc.b	nG0, nRst, nG0, nG0, nRst, nG0, $05, nRst, $07, nF1, $06, $07
	dc.b	$06, $05, $06, nRst, nA0, nA0, nRst, nA0, nRst, nA0, nA0, $05
	dc.b	nRst, $07, nA0, $06, nRst, nF1, nRst, nF1, nRst, nF1, nRst, $02
	dc.b	nA0, $06, nRst, $02, nA0, $06, nRst, $02, nD1, $06, nRst, $12
	dc.b	nD1, $05, nRst, $13
	smpsPSGAlterVol     $02
	smpsJump            camino_Jump07

; PSG3 Data
camino_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $0C, nMaxPSG

camino_Loop19:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop19

camino_Loop1C:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop1A:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop1A
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop1B:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop1B
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $01, $02, camino_Loop1C
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop1D:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop1D
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop1E:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop1E
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FE
	dc.b	$7F, smpsNoAttack, $11
	smpsPSGAlterVol     $FF

camino_Loop1F:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop1F

camino_Loop22:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop20:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop20
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop21:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop21
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $01, $03, camino_Loop22
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$72
	smpsPSGAlterVol     $FF

camino_Loop23:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop23

camino_Loop26:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop24:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop24
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop25:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop25
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $01, $03, camino_Loop26

camino_Loop28:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop27:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop27
	smpsLoop            $01, $03, camino_Loop28

camino_Loop2B:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop29:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop29
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop2A:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop2A
	smpsLoop            $01, $03, camino_Loop2B
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06

camino_Jump06:
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG

camino_Loop2C:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop2C

camino_Loop2F:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop2D:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop2D
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop2E:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop2E
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $01, $03, camino_Loop2F
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$7F, smpsNoAttack, $0B
	smpsPSGAlterVol     $FF

camino_Loop30:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop30
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop31:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop31
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop32:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop32
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop33:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop33
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $05
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0A

camino_Loop34:
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsLoop            $00, $02, camino_Loop34
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop35:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop35
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop36:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop36
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop37:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop37

camino_Loop38:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, camino_Loop38

camino_Loop39:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop39

camino_Loop3C:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop3A:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop3A
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop3B:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop3B
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $01, $03, camino_Loop3C
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop3D:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop3D

camino_Loop3E:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, camino_Loop3E

camino_Loop3F:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop3F
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop40:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop40
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop41:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop41
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$72
	smpsPSGAlterVol     $FF

camino_Loop42:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop42

camino_Loop45:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop43:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop43
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop44:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop44
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $01, $03, camino_Loop45

camino_Loop47:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop46:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop46
	smpsLoop            $01, $03, camino_Loop47

camino_Loop4A:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop48:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop48
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop49:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop49
	smpsLoop            $01, $03, camino_Loop4A

camino_Loop4B:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, camino_Loop4B

camino_Loop4C:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop4C
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop4D:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop4D
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop4E:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop4E
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$30
	smpsPSGvoice        sTone_08
	smpsPSGAlterVol     $04
	dc.b	$12, $12
	smpsPSGAlterVol     $FF
	dc.b	$3C

camino_Loop4F:
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsLoop            $00, $02, camino_Loop4F
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop50:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop50
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop51:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop51
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$7F, smpsNoAttack, $11

camino_Loop52:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop52

camino_Loop55:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop53:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop53
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop54:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop54
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $01, $03, camino_Loop55
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop56:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop56

camino_Loop57:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, camino_Loop57

camino_Loop58:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop58

camino_Loop5B:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop59:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop59
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop5A:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop5A
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $01, $03, camino_Loop5B
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop5C:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop5C

camino_Loop5D:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, camino_Loop5D

camino_Loop5E:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $02, camino_Loop5E

camino_Loop61:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop5F:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop5F
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03

camino_Loop60:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsLoop            $00, $02, camino_Loop60
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $01, $03, camino_Loop61
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF

camino_Loop62:
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	smpsLoop            $00, $03, camino_Loop62
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$1E

camino_Loop63:
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FB
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FB
	dc.b	$06
	smpsPSGvoice        sTone_04
	smpsPSGAlterVol     $03
	dc.b	$0C
	smpsPSGvoice        sTone_01
	dc.b	$06
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FB
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FB
	dc.b	$06
	smpsPSGvoice        sTone_04
	smpsPSGAlterVol     $03
	dc.b	$06
	smpsPSGvoice        sTone_01
	dc.b	$06
	smpsPSGvoice        sTone_04
	dc.b	$06
	smpsPSGvoice        sTone_01
	dc.b	$06
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FE
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03
	smpsLoop            $00, $03, camino_Loop63
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FB
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FB
	dc.b	$06
	smpsPSGvoice        sTone_04
	smpsPSGAlterVol     $03
	dc.b	$0C
	smpsPSGvoice        sTone_01
	dc.b	$06
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$03, $03
	smpsPSGvoice        sTone_01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGvoice        sTone_02
	smpsPSGAlterVol     $FB
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$4E
	smpsJump            camino_Jump06

camino_Voices:
;	Voice $00
;	$33
;	$05, $23, $31, $71, 	$5D, $5D, $5E, $5D, 	$06, $07, $07, $06
;	$05, $06, $06, $08, 	$54, $45, $46, $37, 	$2D, $2F, $21, $0E
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $02, $00
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1D, $1E, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $07, $07, $06
	smpsVcDecayRate2    $08, $06, $06, $05
	smpsVcDecayLevel    $03, $04, $04, $05
	smpsVcReleaseRate   $07, $06, $05, $04
	smpsVcTotalLevel    $0E, $21, $2F, $2D

;	Voice $01
;	$3C
;	$00, $10, $30, $30, 	$1F, $1F, $1F, $1F, 	$0C, $0C, $0C, $0C
;	$06, $08, $08, $08, 	$0B, $0B, $0B, $0B, 	$1C, $0D, $13, $0D
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $01, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $0C
	smpsVcDecayRate2    $08, $08, $08, $06
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $0D, $13, $0D, $1C

;	Voice $02
;	$28
;	$51, $70, $10, $40, 	$1F, $1F, $1F, $1C, 	$06, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$FF, $0F, $0F, $0F, 	$21, $20, $10, $14
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $01, $07, $05
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $14, $10, $20, $21

;	Voice $03
;	$31
;	$4A, $71, $40, $40, 	$1F, $5F, $5F, $5F, 	$12, $11, $09, $09
;	$07, $00, $00, $00, 	$C8, $F8, $F8, $F8, 	$2B, $2A, $19, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $07, $04
	smpsVcCoarseFreq    $00, $00, $01, $0A
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $11, $12
	smpsVcDecayRate2    $00, $00, $00, $07
	smpsVcDecayLevel    $0F, $0F, $0F, $0C
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $19, $2A, $2B

;	Voice $04
;	$3C
;	$31, $31, $1F, $21, 	$5F, $52, $5E, $5E, 	$08, $06, $10, $08
;	$06, $06, $0B, $08, 	$F8, $18, $4C, $4A, 	$1B, $13, $31, $0D
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $01, $03, $03
	smpsVcCoarseFreq    $01, $0F, $01, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1E, $1E, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $10, $06, $08
	smpsVcDecayRate2    $08, $0B, $06, $06
	smpsVcDecayLevel    $04, $04, $01, $0F
	smpsVcReleaseRate   $0A, $0C, $08, $08
	smpsVcTotalLevel    $0D, $31, $13, $1B

;	Voice $05
;	$35
;	$01, $60, $51, $11, 	$8B, $4C, $12, $4E, 	$09, $08, $0E, $03
;	$04, $00, $00, $00, 	$78, $18, $26, $28, 	$19, $1E, $0F, $0F
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $06, $00
	smpsVcCoarseFreq    $01, $01, $00, $01
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $0E, $12, $0C, $0B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $08, $09
	smpsVcDecayRate2    $00, $00, $00, $04
	smpsVcDecayLevel    $02, $02, $01, $07
	smpsVcReleaseRate   $08, $06, $08, $08
	smpsVcTotalLevel    $0F, $0F, $1E, $19

;	Voice $06
;	$34
;	$37, $21, $31, $71, 	$9A, $5A, $96, $96, 	$06, $0B, $04, $04
;	$04, $08, $03, $03, 	$37, $26, $24, $25, 	$2C, $0D, $0A, $12
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $02, $03
	smpsVcCoarseFreq    $01, $01, $01, $07
	smpsVcRateScale     $02, $02, $01, $02
	smpsVcAttackRate    $16, $16, $1A, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $0B, $06
	smpsVcDecayRate2    $03, $03, $08, $04
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $05, $04, $06, $07
	smpsVcTotalLevel    $12, $0A, $0D, $2C

;	Voice $07
;	$3C
;	$01, $51, $30, $30, 	$8F, $18, $13, $17, 	$1F, $18, $10, $18
;	$05, $00, $00, $00, 	$0A, $0B, $1B, $0B, 	$1B, $0C, $11, $0D
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $05, $00
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $17, $13, $18, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $18, $10, $18, $1F
	smpsVcDecayRate2    $00, $00, $00, $05
	smpsVcDecayLevel    $00, $01, $00, $00
	smpsVcReleaseRate   $0B, $0B, $0B, $0A
	smpsVcTotalLevel    $0D, $11, $0C, $1B

