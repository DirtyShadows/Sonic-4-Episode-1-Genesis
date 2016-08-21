TitleS4EP1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     TitleS4EP1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $02

	smpsHeaderDAC       TitleS4EP1_DAC
	smpsHeaderFM        TitleS4EP1_FM1,	$00, $10
	smpsHeaderFM        TitleS4EP1_FM2,	$F4, $10
	smpsHeaderFM        TitleS4EP1_FM3,	$F4, $10
	smpsHeaderFM        TitleS4EP1_FM4,	$F4, $10
	smpsHeaderFM        TitleS4EP1_FM5,	$F4, $10
	smpsHeaderPSG       TitleS4EP1_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       TitleS4EP1_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       TitleS4EP1_PSG3,	$D0, $02, $00, $00

; FM1 Data
TitleS4EP1_FM1:
	smpsCall            TitleS4EP1_Call0F
	smpsCall            TitleS4EP1_Call10
	smpsCall            TitleS4EP1_Call11
	smpsStop

; FM2 Data
TitleS4EP1_FM2:
	smpsCall            TitleS4EP1_Call0C
	smpsCall            TitleS4EP1_Call0D
	smpsCall            TitleS4EP1_Call0E
	smpsStop

; FM3 Data
TitleS4EP1_FM3:
	smpsCall            TitleS4EP1_Call09
	smpsCall            TitleS4EP1_Call0A
	smpsCall            TitleS4EP1_Call0B
	smpsStop

; FM4 Data
TitleS4EP1_FM4:
	smpsCall            TitleS4EP1_Call06
	smpsCall            TitleS4EP1_Call07
	smpsCall            TitleS4EP1_Call08
	smpsStop

; FM5 Data
TitleS4EP1_FM5:
	smpsCall            TitleS4EP1_Call03
	smpsCall            TitleS4EP1_Call04
	smpsCall            TitleS4EP1_Call05
	smpsStop

; PSG1 Data
TitleS4EP1_PSG1:
	smpsCall            TitleS4EP1_Call18
	smpsCall            TitleS4EP1_Call19
	smpsCall            TitleS4EP1_Call1A
	smpsStop

; PSG2 Data
TitleS4EP1_PSG2:
	smpsCall            TitleS4EP1_Call15
	smpsCall            TitleS4EP1_Call16
	smpsCall            TitleS4EP1_Call17
	smpsStop

; PSG3 Data
TitleS4EP1_PSG3:
	smpsPSGform         $E7
	smpsCall            TitleS4EP1_Call12
	smpsCall            TitleS4EP1_Call13
	smpsCall            TitleS4EP1_Call14
	smpsStop

; DAC Data
TitleS4EP1_DAC:
	smpsCall            TitleS4EP1_Call00
	smpsCall            TitleS4EP1_Call01
	smpsCall            TitleS4EP1_Call02
	smpsStop

TitleS4EP1_Call0F:
	dc.b	smpsNoAttack, $0C
	smpsSetvoice        $00
	dc.b	nD3, $05, nRst, $01, nD3, $02, nA2, $04, nD3, $05, nRst, $03
	dc.b	nD3, $04, nA2, $02, nA3, nD3, nD4, nG4, nC3, nC4, nG3, nG2
	dc.b	nRst, nG3, nG2, nC3, nRst, nC3, nC4, nG2, nG3, nC3, nC4, nB2
	dc.b	$05, nRst, $01, nB2, $02, nFs2, $04, nB2, $05, nRst, $03, nB2
	dc.b	$04, nFs2, $02, nFs3, nB2, nB3, nE4, nA4, nA3, nE3, nA3, nRst
	dc.b	nE3, nE2, nA2, nRst
	smpsReturn

TitleS4EP1_Call10:
	dc.b	nA2, $02, nA3, nCs3, nD3, nEb3, nE3, nD3, $05, nRst, $01, nD3
	dc.b	$02, nA2, $04, nD3, $05, nRst, $03, nD3, $04, nA2, $02, nA3
	dc.b	nD3, nD4, nG4, nC3, nC4, nG3, nG2, nRst, nG3, nG2, nC3, nRst
	dc.b	nC3, nC4, nG2, nG3, nC3, nC4, nB2, $05, nRst, $01, nB2, $02
	dc.b	nFs2, $04, nB2, $05, nRst, $03, nB2, $04, nFs2, $02, nFs3, nB2
	dc.b	nB3, nE4, nA4, nA3, nE3, nA3, nRst, nE3, nE2, nA2, nE3
	smpsReturn

TitleS4EP1_Call11:
	dc.b	nG3, $02, nA3, nE4, nA4, nD3, $08, nRst, $70
	smpsReturn

TitleS4EP1_Call0C:
	dc.b	smpsNoAttack, $0C
	smpsSetvoice        $01
	dc.b	nD6, $04, nRst, $02, nD6, nE6, nRst, nG6, $04, nRst, nFs6, nRst
	dc.b	nE6, nRst, nE6, nFs6, nD6, $12, nRst, $02, nD6, $04, nRst, $02
	dc.b	nD6, nE6, nRst, nG6, $04, nRst, nFs6, nRst, nCs6, $18
	smpsReturn

TitleS4EP1_Call0D:
	dc.b	smpsNoAttack, $04, nRst, $08, nD6, $04, nRst, $02, nD6, nE6, nRst, nG6
	dc.b	$04, nRst, nFs6, nRst, nE6, nRst, nE6, nFs6, nD6, $12, nRst, $02
	dc.b	nD6, $04, nRst, $02, nD6, nE6, nRst, nG6, $04, nRst, nFs6, nRst
	dc.b	nE6, $0A, nRst, $02, nE6, $07, nRst, $01, nE6, $02, nRst
	smpsReturn

TitleS4EP1_Call0E:
	dc.b	nE6, $03, nRst, $05, nD6, $08, nRst, $70
	smpsReturn

TitleS4EP1_Call09:
	dc.b	smpsNoAttack, $0C
	smpsSetvoice        $04
	dc.b	nA5, $0A, nRst, $02, nA5, $04, nRst, nA5, nRst, nC6, nRst, nC6
	dc.b	nRst, nC6, $08, nB5, $04, nA5, nG5, nB5, $0A, nRst, $02, nB5
	dc.b	$04, nRst, nB5, nRst, nA5, $18
	smpsReturn

TitleS4EP1_Call0A:
	dc.b	smpsNoAttack, $04, nRst, $08, nA5, $0A, nRst, $02, nA5, $04, nRst, nA5
	dc.b	nRst, nC6, nRst, nC6, nRst, nC6, $08, nB5, $04, nA5, nG5, nB5
	dc.b	$0A, nRst, $02, nB5, $04, nRst, nB5, nRst, nA5, $0B, nRst, $01
	dc.b	nB5, $08, nCs6, $02, nRst
	smpsReturn

TitleS4EP1_Call0B:
	dc.b	nCs6, $03, nRst, $05, nA5, $08, nRst, $70
	smpsReturn

TitleS4EP1_Call06:
	dc.b	smpsNoAttack, $0C
	smpsSetvoice        $01
	dc.b	nD5, $04, nRst, $02, nD5, nE5, nRst, nG5, $04, nRst, nFs5, nRst
	dc.b	nE5, nRst, nE5, nFs5, nD5, $12, nRst, $02, nD5, $04, nRst, $02
	dc.b	nD5, nE5, nRst, nG5, $04, nRst, nD5, nRst, nCs5, $18
	smpsReturn

TitleS4EP1_Call07:
	dc.b	smpsNoAttack, $04, nRst, $08, nD5, $04, nRst, $02, nD5, nE5, nRst, nG5
	dc.b	$04, nRst, nFs5, nRst, nE5, nRst, nE5, nFs5, nD5, $12, nRst, $02
	dc.b	nD5, $04, nRst, $02, nD5, nE5, nRst, nG5, $04, nRst, nD5, nRst
	dc.b	nCs5, $0C, nE5, $07, nRst, $01, nE5, $02, nRst
	smpsReturn

TitleS4EP1_Call08:
	dc.b	nG5, $03, nRst, $05, nFs5, $08, nRst, $70
	smpsReturn

TitleS4EP1_Call03:
	dc.b	smpsNoAttack, $0C
	smpsSetvoice        $03
	dc.b	nD5, $08, nG5, nD5, $04, nA5, $08, nD5, $03, nRst, $05, nD5
	dc.b	$04, nC6, $07, nRst, $03, nC6, $01, nRst, $03, nB5, $01, nRst
	dc.b	$03, nA5, $01, nRst, $03, nG5, $01, nRst, nD5, $08, nG5, nA5
	dc.b	nRst, $02, nA5, nRst, nCs5, nRst, nE4, nRst, nE5, nRst, nA4, nRst
	dc.b	nA5, nRst, nA4
	smpsReturn

TitleS4EP1_Call04:
	dc.b	nRst, $02, nA5, nBb5, nB5, nC6, nCs6, nD5, $08, nG5, nD5, $04
	dc.b	nA5, $08, nD5, $03, nRst, $05, nD5, $04, nC6, $07, nRst, $03
	dc.b	nC6, $01, nRst, $03, nB5, $01, nRst, $03, nA5, $01, nRst, $03
	dc.b	nG5, $01, nRst, nD5, $08, nG5, nA5, nRst, $02, nA5, nRst, nCs5
	dc.b	nRst, nE4, nRst, nE5, nRst, nCs5, nRst, nE4, nE5, nA5
	smpsReturn

TitleS4EP1_Call05:
	dc.b	nBb5, $02, nB5, nC6, nCs6, nD6, $04, nRst, $74
	smpsReturn

TitleS4EP1_Call18:
	dc.b	smpsNoAttack, $58
	smpsPSGvoice        $00
	dc.b	nD6, $04, nRst, nD6, nRst, nE6, $18
	smpsReturn

TitleS4EP1_Call19:
	dc.b	smpsNoAttack, $04, nRst, $54, nD6, $04, nRst, nD6, nRst, nCs6, $0C, nRst
	smpsReturn

TitleS4EP1_Call1A:
	dc.b	nG6, $03, nRst, $05, nFs6, $08, nRst, $70
	smpsReturn

TitleS4EP1_Call15:
	dc.b	smpsNoAttack, $58
	smpsPSGvoice        $00
	dc.b	nD5, $04, nRst, nFs5, nRst, nE5, $18
	smpsReturn

TitleS4EP1_Call16:
	dc.b	smpsNoAttack, $04, nRst, $54, nD5, $04, nRst, nFs5, nRst, nE5, $0A, nRst
	dc.b	$0E
	smpsReturn

TitleS4EP1_Call17:
	dc.b	nE5, $03, nRst, $05, nD5, $08, nRst, $70
	smpsReturn

TitleS4EP1_Call12:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, $04, $02, $04, nCs0, nCs0, $02, $04, $02, nCs0, nCs0
	dc.b	nCs0, $04, $02, $04, $02, $04, $02, nCs0, nCs0, $04, nCs0, nCs0
	dc.b	nCs0, nCs0, $02, $04, $02, $04, $02, $04, $02, $04, nCs0, nCs0
	dc.b	nCs0, $02, $04, $02, $04, $02, nCs0, nCs0, $04, nCs0, nCs0, nCs0
	smpsReturn

TitleS4EP1_Call13:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, $04, $02, $04, $02, $04, $02, $04, nCs0, nCs0, nCs0
	dc.b	$02, $04, $02, $04, $02, nCs0, nCs0, $04, nCs0, nCs0, nCs0, nCs0
	dc.b	$02, $04, $02, $04, $02, $04, $02, $04, nCs0, nCs0, nCs0, $02
	dc.b	$04, $02, $04, $02, nCs0, nCs0, $04, nCs0, nCs0, nCs0
	smpsReturn

TitleS4EP1_Call14:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, $04, $02, $06, nRst, $72
	smpsReturn

TitleS4EP1_Call00:
	dc.b	dSnare, $04, $02, dSnare, dSnare, $04, dKick, dSnare, dKick, dSnare, dKick, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, $02, dSnare, dSnare
	dc.b	$04, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b	$02, dSnare, dSnare, $04, dKick
	smpsReturn

TitleS4EP1_Call01:
	dc.b	dSnare, $04, dKick, $02, dSnare, dSnare, dSnare, dKick, $04, dSnare, dKick, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, $02
	dc.b	dSnare, dSnare, $04, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, $02, dSnare
	dc.b	dSnare, $04, dSnare, dKick, dSnare, dKick, dSnare, $02, dKick
	smpsReturn

TitleS4EP1_Call02:
	dc.b	nRst, $04, dSnare, $02, dSnare, dKick, $08, nRst, $70
	smpsReturn

TitleS4EP1_Voices:
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
;	$32, $31, $7A, $02, 	$8D, $15, $4F, $52, 	$06, $07, $08, $04
;	$00, $00, $00, $00, 	$18, $28, $18, $29, 	$0E, $23, $1E, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $03
	smpsVcCoarseFreq    $02, $0A, $01, $02
	smpsVcRateScale     $01, $01, $00, $02
	smpsVcAttackRate    $12, $0F, $15, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $08, $07, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $02, $01
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $00, $1E, $23, $0E

;	Voice $02
;	$3D
;	$01, $21, $12, $31, 	$14, $0E, $0F, $0F, 	$00, $04, $03, $04
;	$00, $00, $00, $00, 	$00, $16, $16, $16, 	$1B, $05, $05, $05
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $02, $00
	smpsVcCoarseFreq    $01, $02, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $03, $04, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $06, $06, $06, $00
	smpsVcTotalLevel    $05, $05, $05, $1B

;	Voice $03
;	$39
;	$03, $61, $22, $21, 	$1F, $1F, $12, $1F, 	$05, $05, $05, $0B
;	$00, $00, $00, $00, 	$10, $10, $18, $18, 	$1E, $1D, $15, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $06, $00
	smpsVcCoarseFreq    $01, $02, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $12, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $05, $05, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $08, $00, $00
	smpsVcTotalLevel    $00, $15, $1D, $1E

;	Voice $04
;	$39
;	$03, $61, $22, $21, 	$1F, $1F, $12, $1F, 	$05, $05, $05, $0B
;	$00, $00, $00, $00, 	$10, $10, $18, $18, 	$1E, $1D, $15, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $06, $00
	smpsVcCoarseFreq    $01, $02, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $12, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $05, $05, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $08, $00, $00
	smpsVcTotalLevel    $00, $15, $1D, $1E

