worldmapS4_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     worldmapS4_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $04

	smpsHeaderDAC       worldmapS4_DAC
	smpsHeaderFM        worldmapS4_FM1,	$E8, $10
	smpsHeaderFM        worldmapS4_FM2,	$E8, $10
	smpsHeaderFM        worldmapS4_FM3,	$00, $10
	smpsHeaderFM        worldmapS4_FM4,	$E8, $14
	smpsHeaderFM        worldmapS4_FM5,	$E8, $10
	smpsHeaderPSG       worldmapS4_PSG1,	$D0, $04, $00, $00
	smpsHeaderPSG       worldmapS4_PSG2,	$D0, $04, $00, $00
	smpsHeaderPSG       worldmapS4_PSG3,	$DC, $01, $00, $00

; FM1 Data
worldmapS4_FM1:
	smpsCall            worldmapS4_Call0F
	smpsCall            worldmapS4_Call10
	smpsCall            worldmapS4_Call11
	smpsJump            worldmapS4_FM1

; FM2 Data
worldmapS4_FM2:
	smpsCall            worldmapS4_Call0C
	smpsCall            worldmapS4_Call0D
	smpsCall            worldmapS4_Call0E
	smpsJump            worldmapS4_FM2

; FM3 Data
worldmapS4_FM3:
	smpsCall            worldmapS4_Call09
	smpsCall            worldmapS4_Call0A
	smpsCall            worldmapS4_Call0B
	smpsJump            worldmapS4_FM3

; FM4 Data
worldmapS4_FM4:
	smpsCall            worldmapS4_Call06
	smpsCall            worldmapS4_Call07
	smpsCall            worldmapS4_Call08
	smpsJump            worldmapS4_FM4

; FM5 Data
worldmapS4_FM5:
	smpsCall            worldmapS4_Call03
	smpsCall            worldmapS4_Call04
	smpsCall            worldmapS4_Call05
	smpsJump            worldmapS4_FM5

; PSG1 Data
worldmapS4_PSG1:
	smpsCall            worldmapS4_Call17
	smpsCall            worldmapS4_Call18
	smpsCall            worldmapS4_Call19
	smpsJump            worldmapS4_PSG1

; PSG2 Data
worldmapS4_PSG2:
	smpsCall            worldmapS4_Call14
	smpsCall            worldmapS4_Call15
	smpsCall            worldmapS4_Call16
	smpsJump            worldmapS4_PSG2

; PSG3 Data
worldmapS4_PSG3:
	smpsPSGform         $E7
	smpsCall            worldmapS4_Call12
	smpsCall            worldmapS4_Call12
	smpsCall            worldmapS4_Call13
	smpsJump            worldmapS4_PSG3

; DAC Data
worldmapS4_DAC:
	smpsCall            worldmapS4_Call00
	smpsCall            worldmapS4_Call01
	smpsCall            worldmapS4_Call02
	smpsJump            worldmapS4_DAC

worldmapS4_Call0F:
	smpsSetvoice        $01
	dc.b	nA5, $03, nRst, $01, nA5, $04, nG5, nD5, nRst, nE5, nRst, nFs5
	dc.b	nRst, nG5, nRst, nA5, $08, nG5, $04, nFs5, nD5, nG5, $32, nRst
	dc.b	$04, $0A
	smpsReturn

worldmapS4_Call10:
	dc.b	nA5, $03, nRst, $01, nA5, $04, nG5, nD5, nRst, nE5, nRst, nFs5
	dc.b	nRst, nG5, nRst, nA5, $08, nG5, $04, nFs5, nD5, nC6, $16, nRst
	dc.b	$02, nC6, $08, nB5, $10, nA5, $0C, nRst, $04
	smpsReturn

worldmapS4_Call11:
	dc.b	nB5, $0C, nG5, $08, nRst, $04, nD6, $08, nCs6, $0C, nA5, $10
	dc.b	nRst, $04, nC6, $0C, nG5, $08, nRst, $04, nE6, $08, nD6, $04
	dc.b	nRst, nA5, nRst, nFs6, $03, nRst, $01, nFs6, $03, nRst, $01, nFs6
	dc.b	$03, nRst, $05
	smpsReturn

worldmapS4_Call0C:
	smpsSetvoice        $01
	dc.b	nFs5, $03, nRst, $01, nFs5, $04, nE5, nA4, nRst, nCs5, nRst, nD5
	dc.b	nRst, nE5, nRst, nFs5, $08, nE5, $04, nD5, nA4
	smpsSetvoice        $02
	dc.b	nC5, $10, nD5, nE5, $0C, nFs5, nG5, $08
	smpsReturn

worldmapS4_Call0D:
	smpsSetvoice        $01
	dc.b	nFs5, $03, nRst, $01, nFs5, $04, nE5, nA4, nRst, nCs5, nRst, nD5
	dc.b	nRst, nE5, nRst, nFs5, $08, nE5, $04, nD5, nA4
	smpsSetvoice        $02
	dc.b	nG5, $0C, nA5, nFs5, $08, nG5, $10, nA5, $08, nD5
	smpsReturn

worldmapS4_Call0E:
	dc.b	nG5, $0C, nD5, $08, nRst, $04, nB5, $08, nA5, $0C, nE5, $10
	dc.b	nRst, $04, nG5, $0C, nE5, $08, nRst, $04, nC6, $08, nA5, $04
	dc.b	nRst, nFs5, nRst, nA5, $03, nRst, $01, nA5, $03, nRst, $01, nA5
	dc.b	$03, nRst, $05
	smpsReturn

worldmapS4_Call09:
	smpsSetvoice        $00
	dc.b	nD3, $08, nA2, $04, nD3, nRst, nD3, nA2, nD3, nRst, nD3, nA2
	dc.b	nD3, nA3, $02, nD3, nE3, $04, nFs3, nD3, nC3, $08, nG3, $04
	dc.b	nC3, nRst, nC3, nG2, nC3, $06, nRst, $02, nC3, $04, nD3, $02
	dc.b	nRst, nD3, $04, nE3, $02, nRst, nE3, $04, nFs3, nG3
	smpsReturn

worldmapS4_Call0A:
	dc.b	nD3, $08, nA2, $04, nD3, nRst, nD3, nA2, nD3, nRst, nD3, nA2
	dc.b	nD3, nA3, $02, nD3, nE3, $04, nFs3, nD3, nC3, $08, nG3, $04
	dc.b	nC3, nRst, nC3, nG2, nC3, nB2, nD3, nG3, nD3, nCs3, $02, nG3
	dc.b	nC3, $04, nBb2, nA2
	smpsReturn

worldmapS4_Call0B:
	dc.b	nG2, $02, nRst, nG3, $04, nD3, nG2, $05, nRst, $03, nG2, $04
	dc.b	nA2, nB2, nA2, $02, nRst, nA2, $04, nE3, nA2, $05, nRst, $03
	dc.b	nE3, $02, nA3, nD3, $04, nCs3, nC3, $02, nRst, nG2, $07, nRst
	dc.b	$01, nG3, $04, nF3, $02, nG3, nE3, $04, nD3, nC3, nD3, nA3
	dc.b	$03, nRst, $05, nA2, $04, nB2, nRst, nCs3, nE3
	smpsReturn

worldmapS4_Call06:
	dc.b	nRst, $04
	smpsSetvoice        $01
	dc.b	nA5, $03, nRst, $01, nA5, $04, nG5, nD5, nRst, nE5, nRst, nFs5
	dc.b	nRst, nG5, nRst, nA5, $08, nG5, $04, nFs5, nD5, nG5, $32, nRst
	dc.b	$04, $06
	smpsReturn

worldmapS4_Call07:
	dc.b	smpsNoAttack, $04, nA5, $03, nRst, $01, nA5, $04, nG5, nD5, nRst, nE5
	dc.b	nRst, nFs5, nRst, nG5, nRst, nA5, $08, nG5, $04, nFs5, nD5, nC6
	dc.b	$16, nRst, $02, nC6, $08, nB5, $10, nA5, $0C
	smpsReturn

worldmapS4_Call08:
	dc.b	nRst, $04, nB5, $0C, nG5, $08, nRst, $04, nD6, $08, nCs6, $0C
	dc.b	nA5, $10, nRst, $04, nC6, $0C, nG5, $08, nRst, $04, nE6, $08
	dc.b	nD6, $04, nRst, nA5, nRst, nFs6, $03, nRst, $01, nFs6, $03, nRst
	dc.b	$01, nFs6, $03, nRst, $01
	smpsReturn

worldmapS4_Call03:
	dc.b	nRst, $40
	smpsSetvoice        $01
	dc.b	nG4, $10, nB4, nC5, $0C, nD5, nE5, $08
	smpsReturn

worldmapS4_Call04:
	dc.b	nRst, $40, nE5, $0C, nD5, nC5, $08, nD5, $10, nFs5
	smpsReturn

worldmapS4_Call05:
	dc.b	nRst, $7F, smpsNoAttack, $01
	smpsReturn

worldmapS4_Call17:
	dc.b	nRst, $60
	smpsPSGvoice        $00
	dc.b	nG5, $02, nC6, nE6, nG6, nC6, nE6, nG6, nC7, nE6, nG6, nC7
	dc.b	nE7, nG6, nC7, nE7, nG7
	smpsReturn

worldmapS4_Call18:
	dc.b	nRst, $60, nB5, $02, nD6, nG6, nB6, nD6, nG6, nB6, nD7, nG6
	dc.b	nB6, nD7, nG7, nEb7, nD7, nCs7, nC7
	smpsReturn

worldmapS4_Call19:
	dc.b	nG6, $02, nD6, nB5, nG6, nB6, nD6, nG6, nB5, nD6, nG6, nB6
	dc.b	nB5, nD6, nB6, nG6, nD6, nA6, nE6, nCs6, nA6, nCs7, nE6, nA6
	dc.b	nCs6, nE6, nA6, nCs7, nCs6, nE6, nCs7, nA6, nE6, nG6, nE6, nC6
	dc.b	nG6, nC7, nE6, nG6, nC6, nE6, nG6, nC7, nC6, nE6, nC7, nG6
	dc.b	nE6, nA6, nFs6, nD6, nA6, nD7, nFs6, nA6, nD6, nFs6, nA6, nD7
	dc.b	nA6, nFs6, nA6, nD7, nFs7
	smpsReturn

worldmapS4_Call14:
	dc.b	nRst, $64
	smpsPSGvoice        $00
	dc.b	nG5, $02, nC6, nE6, nG6, nC6, nE6, nG6, nC7, nE6, nG6, nC7
	dc.b	nE7, nG6, nC7
	smpsReturn

worldmapS4_Call15:
	dc.b	nE7, $02, nG7, nRst, $60, nB5, $02, nD6, nG6, nB6, nD6, nG6
	dc.b	nB6, nD7, nG6, nB6, nD7, nG7, nEb7, nD7
	smpsReturn

worldmapS4_Call16:
	dc.b	nCs7, $02, nC7, nG6, nD6, nB5, nG6, nB6, nD6, nG6, nB5, nD6
	dc.b	nG6, nB6, nB5, nD6, nB6, nG6, nD6, nA6, nE6, nCs6, nA6, nCs7
	dc.b	nE6, nA6, nCs6, nE6, nA6, nCs7, nCs6, nE6, nCs7, nA6, nE6, nG6
	dc.b	nE6, nC6, nG6, nC7, nE6, nG6, nC6, nE6, nG6, nC7, nC6, nE6
	dc.b	nC7, nG6, nE6, nA6, nFs6, nD6, nA6, nD7, nFs6, nA6, nD6, nFs6
	dc.b	nA6, nD7, nA6, nFs6, nA6
	smpsReturn

worldmapS4_Call12:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, nRst, nCs0, nCs0, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nCs0, nCs0
	smpsReturn

worldmapS4_Call13:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, nCs0, nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nCs0, nCs0
	dc.b	nCs0, nRst, nCs0, nRst, nCs0, nCs0, nCs0, nCs0, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nRst, nCs0, nRst, nCs0, nCs0, nCs0, nRst, nCs0
	smpsReturn

worldmapS4_Call00:
	dc.b	dKick, $04, nRst, dSnare, nRst, dKick, dKick, dSnare, nRst, dKick, $08, dSnare
	dc.b	dKick, $04, dSnare, dSnare, dSnare, dKick, dKick, dSnare, dKick, nRst, dKick, dSnare
	dc.b	dKick, dSnare, dKick, dKick, dSnare, dKick, dSnare, dSnare, dSnare
	smpsReturn

worldmapS4_Call01:
	dc.b	dKick, $04, nRst, dSnare, nRst, dKick, dKick, dSnare, dKick, nRst, dKick, dSnare
	dc.b	$08, dKick, $04, dSnare, dSnare, dSnare, dKick, dKick, dSnare, dKick, nRst, dKick
	dc.b	dSnare, dKick, dSnare, dKick, dKick, dSnare, dKick, dSnare, dSnare, dSnare
	smpsReturn

worldmapS4_Call02:
	dc.b	dKick, $04, dKick, dSnare, dKick, nRst, dKick, dSnare, dSnare, dKick, dKick, dSnare
	dc.b	dKick, nRst, dKick, dSnare, dSnare, dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare
	dc.b	dKick, dSnare, dSnare, dKick, dSnare, dKick, dSnare, dSnare, dSnare
	smpsReturn

worldmapS4_Voices:
;	Voice $00
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $01
;	$35
;	$32, $31, $7A, $02, 	$4F, $15, $4F, $52, 	$06, $07, $08, $04
;	$00, $00, $00, $00, 	$18, $28, $18, $29, 	$0E, $23, $1E, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $03
	smpsVcCoarseFreq    $02, $0A, $01, $02
	smpsVcRateScale     $01, $01, $00, $01
	smpsVcAttackRate    $12, $0F, $15, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $08, $07, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $02, $01
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $00, $1E, $23, $0E

;	Voice $02
;	$15
;	$32, $31, $7A, $02, 	$4F, $15, $4F, $52, 	$06, $07, $08, $04
;	$00, $00, $00, $00, 	$18, $28, $18, $29, 	$0E, $23, $1E, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $03
	smpsVcCoarseFreq    $02, $0A, $01, $02
	smpsVcRateScale     $01, $01, $00, $01
	smpsVcAttackRate    $12, $0F, $15, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $08, $07, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $02, $01
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $00, $1E, $23, $0E

