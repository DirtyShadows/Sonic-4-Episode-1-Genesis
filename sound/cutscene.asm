Cutscene_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Cutscene_Voices
	smpsHeaderChan      $04, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       Cutscene_DAC
	smpsHeaderFM        Cutscene_FM1,	$00, $10
	smpsHeaderFM        Cutscene_FM2,	$00, $10
	smpsHeaderFM        Cutscene_FM3,	$0C, $10
	smpsHeaderPSG       Cutscene_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       Cutscene_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       Cutscene_PSG3,	$D0, $02, $00, $00

; FM1 Data
Cutscene_FM1:
	smpsCall            Cutscene_Call0C
	smpsCall            Cutscene_Call0D
	smpsCall            Cutscene_Call0E
	smpsCall            Cutscene_Call0F
	smpsstop

; FM2 Data
Cutscene_FM2:
	smpsCall            Cutscene_Call08
	smpsCall            Cutscene_Call09
	smpsCall            Cutscene_Call0A
	smpsCall            Cutscene_Call0B
	smpsstop

; FM3 Data
Cutscene_FM3:
	smpsCall            Cutscene_Call04
	smpsCall            Cutscene_Call05
	smpsCall            Cutscene_Call06
	smpsCall            Cutscene_Call07
	smpsstop

; PSG1 Data
Cutscene_PSG1:
	smpsCall            Cutscene_Call14
	smpsCall            Cutscene_Call15
	smpsCall            Cutscene_Call16
	smpsCall            Cutscene_Call17
	smpsstop

Cutscene_PSG2:
	smpsstop
	
; PSG3 Data
Cutscene_PSG3:
	smpsPSGform         $E7
	smpsCall            Cutscene_Call10
	smpsCall            Cutscene_Call11
	smpsCall            Cutscene_Call12
	smpsCall            Cutscene_Call13
	smpsstop

; DAC Data
Cutscene_DAC:
	smpsCall            Cutscene_Call00
	smpsCall            Cutscene_Call01
	smpsCall            Cutscene_Call02
	smpsCall            Cutscene_Call03
	smpsstop

Cutscene_Call0C:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $01
	dc.b	nA3, $02, nRst, nA3, nRst, nC4, nD4, $06, nE4, $02, nRst, nE4
	dc.b	nRst, nA3, $08, nG3, $02, nRst, nG3, nRst, nC4, nD4, $06, nE4
	dc.b	$02, nRst, nE4, nRst, nG3, $08, nF3, $02, nRst, nF3, nRst, nC4
	dc.b	nD4, $06, nE4, $02, nRst, nE4, nRst, nF3, $08, nE3, $02, nRst
	dc.b	nE3, nRst, nE3, nRst, nG3, nRst
	smpsReturn

Cutscene_Call0D:
	dc.b	nG3, $02, nRst, nG3, nRst, nB3, nRst, nB3, nRst, nA3, nRst, nA3
	dc.b	nRst, nC4, nD4, $06, nE4, $02, nRst, nE4, nRst, nA3, $08, nG3
	dc.b	$02, nRst, nG3, nRst, nC4, nD4, $06, nE4, $02, nRst, nE4, nRst
	dc.b	nG3, $08, nF3, $02, nRst, nF3, nRst, nC4, nD4, $06, nE4, $02
	dc.b	nRst, nE4, nRst, nF3, $08, nE3, $02, nRst, nE3, nRst, nE3, nRst
	dc.b	nG3, nRst
	smpsReturn

Cutscene_Call0E:
	dc.b	nG3, $02, nRst, nG3, nRst, nC4, nRst, nB3, nRst, nC4, $0C, nA3
	dc.b	nC4, $04, nE4, nD4, $0C, nG3, $14, nF3, $0C, nC4, $08, nB3
	dc.b	$04, nC4, $08, nG3, $04, nRst, nG3, nRst
	smpsReturn

Cutscene_Call0F:
	dc.b	smpsNoAttack, $10, nAb3, $04, nC4, nEb4, nBb3, $08, nD4, $04, nF4, $08
	dc.b	nB3, $04, nEb4, nFs4, nCs4, $08, nF4, $04, nAb4, $08, nEb4, $06
	dc.b	nRst, $2A
	smpsReturn

Cutscene_Call08:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $03
	dc.b	nA3, $02, nRst, nA3, nRst, nC4, nD4, $06, nE4, $02, nRst, nE4
	dc.b	nRst, nA3, $08, nG3, $02, nRst, nG3, nRst, nC4, nD4, $06, nE4
	dc.b	$02, nRst, nE4, nRst, nG3, $08, nF3, $02, nRst, nF3, nRst, nC4
	dc.b	nD4, $06, nE4, $02, nRst, nE4, nRst, nF3, $08, nE3, $02, nRst
	dc.b	nE3, nRst, nE3, nRst, nG3, nRst
	smpsReturn

Cutscene_Call09:
	dc.b	nG3, $02, nRst, nG3, nRst, nB3, nRst, nB3, nRst, nA3, nRst, nA3
	dc.b	nRst, nC4, nD4, $06, nE4, $02, nRst, nE4, nRst, nA3, $08, nG3
	dc.b	$02, nRst, nG3, nRst, nC4, nD4, $06, nE4, $02, nRst, nE4, nRst
	dc.b	nG3, $08, nF3, $02, nRst, nF3, nRst, nC4, nD4, $06, nE4, $02
	dc.b	nRst, nE4, nRst, nF3, $08, nE3, $02, nRst, nE3, nRst, nE3, nRst
	dc.b	nG3, nRst
	smpsReturn

Cutscene_Call0A:
	dc.b	nG3, $02, nRst, nG3, nRst, nC4, nRst, nB3, nRst, nC4, $0C, nA3
	dc.b	nC4, $04, nE4, nD4, $0C, nG3, $14, nF3, $0C, nC4, $08, nB3
	dc.b	$04, nC4, $08, nG3, $04, nRst, nG3, nRst
	smpsReturn

Cutscene_Call0B:
	dc.b	smpsNoAttack, $10, nAb3, $04, nC4, nEb4, nBb3, $08, nD4, $04, nF4, $08
	dc.b	nB3, $04, nEb4, nFs4, nCs4, $08, nF4, $04, nAb4, $08, nEb4, $06
	dc.b	nRst, $2A
	smpsReturn

Cutscene_Call04:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $00
	dc.b	nA1, $02, nRst, nA1, $10, nE2, $04, nA2, nAb2, nG2, $02, nRst
	dc.b	nG2, $08, nD2, $04, nG1, $08, nG2, $04, nFs2, nF2, $02, nRst
	dc.b	nF2, $08, nC2, $04, nF1, $08, nF2, $04, nD2, nE2, nG2, $02
	dc.b	nRst, nE2, $04, nC2
	smpsReturn

Cutscene_Call05:
	dc.b	nE2, $02, nRst, nC2, $04, nD2, nE2, nA1, $02, nRst, nA1, $10
	dc.b	nE2, $04, nA2, nAb2, nG2, $02, nRst, nG2, $08, nD2, $04, nG1
	dc.b	$08, nG2, $04, nFs2, nF2, $02, nRst, nF2, $08, nC2, $04, nF1
	dc.b	$08, nF2, $04, nD2, nE2, nG2, $02, nRst, nE2, $04, nC2
	smpsReturn

Cutscene_Call06:
	dc.b	nE2, $02, nRst, nC2, $04, nD2, nE2, nA1, $02, nRst, nA2, $04
	dc.b	nA1, nC2, $08, nA1, $04, nE2, nA1, nG1, $02, nRst, nG2, $04
	dc.b	nG1, nD2, $08, nG2, $04, nFs2, nE2, nF2, nG2, nF2, nF1, $08
	dc.b	nG1, $04, nA1, nC2, nG1, nRst, nG1, nRst
	smpsReturn

Cutscene_Call07:
	dc.b	smpsNoAttack, $10, nAb1, $08, nEb2, $04, nBb1, $06, nRst, $02, nBb1, $04
	dc.b	nF2, nBb1, nB1, $02, nRst, nB1, $04, nFs2, nCs2, $06, nRst, $02
	dc.b	nCs2, $04, nAb2, nCs2, nEb2, $06, nRst, $2A
	smpsReturn

Cutscene_Call14:
	dc.b	smpsNoAttack, $10
	smpsPSGvoice        $00
	dc.b	nA5, $04, nE5, nC6, nA5, nA6, $02, nE6, nC6, nA5, nE6, nC6
	dc.b	nA5, nE5, nA5, $04, nD5, nB5, nG5, nG6, $02, nD6, nB5, nG5
	dc.b	nD6, nB5, nG5, nD5, nA5, $04, nF5, nC6, nA5, nA6, $02, nF6
	dc.b	nC6, nA5, nF6, nC6, nA5, nF5, nE5, nG5, nB5, nG5, nD6, nB5
	dc.b	nE6, nC6
	smpsReturn

Cutscene_Call15:
	dc.b	nF6, $02, nCs6, nFs6, nD6, nG6, nEb6, nAb6, nE6, nA5, $04, nE5
	dc.b	nC6, nA5, nA6, $02, nE6, nC6, nA5, nE6, nC6, nA5, nE5, nA5
	dc.b	$04, nD5, nB5, nG5, nG6, $02, nD6, nB5, nG5, nB6, nG6, nD6
	dc.b	nB5, nA5, $04, nF5, nC6, nA5, nA6, $02, nF6, nC6, nA5, nF6
	dc.b	nC6, nA5, nF5, nE5, nG5, nB5, nG5, nD6, nB5, nE6, nC6
	smpsReturn

Cutscene_Call16:
	dc.b	nF6, $02, nCs6, nFs6, nD6, nG6, nEb6, nAb6, nE6, nRst, $04, nC6
	dc.b	$08, nA5, nE5, $04, nC5, nA4, nRst, nB5, $08, nG5, nD5, $04
	dc.b	nB4, nG4, nRst, nC6, $08, nA5, nF5, $04, nC5, nA4, nG4, $02
	dc.b	nB4, nD5, nG5, nB4, nD5, nG5, nB5
	smpsReturn

Cutscene_Call17:
	dc.b	nD5, $02, nG5, nB5, nD6, nG5, nB5, nD6, nG6, nC5, $04, nEb5
	dc.b	nAb5, nD5, $08, nF5, $04, nBb5, $08, nEb5, $04, nFs5, nB5, nF5
	dc.b	$08, nAb5, $04, nCs6, $08, nG5, $06, nRst, $2A
	smpsReturn

Cutscene_Call10:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nRst, $06, nCs0, $04, $02, nRst, $06, nCs0
	dc.b	$02, nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst
	dc.b	nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$06, nCs0, $02, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst
	smpsReturn

Cutscene_Call11:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, $04, $02, nRst, $06
	dc.b	nCs0, $02, nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $04
	dc.b	$02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$06, nCs0, $04, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $04, $02, nRst, nCs0, nRst, $06, nCs0
	dc.b	$02, nRst
	smpsReturn

Cutscene_Call12:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, nCs0, nRst, $06
	dc.b	nCs0, $02, nRst, nCs0, nRst, $06, nCs0, $02, nRst, nCs0, nRst, nCs0
	dc.b	nRst, $06, nCs0, $02, nRst, $04, $02, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, nCs0, $04, nCs0, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0
	dc.b	nRst, $06, nCs0, $02, nRst, nCs0, nRst, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, $06, nCs0, $02, nRst
	smpsReturn

Cutscene_Call13:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, $04, nCs0, nCs0, $02, nRst, nCs0, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $04, $02, nRst, $2E
	smpsReturn

Cutscene_Call00:
	dc.b	dSnare, $02, nRst, dKick, nRst, dSnare, dSnare, dSnare, dSnare, dSnare, nRst, dSnare
	dc.b	nRst, $0E, dKick, $02, nRst, dSnare, nRst, dSnare, dSnare, dSnare, nRst, dSnare
	dc.b	nRst, $0E, dKick, $02, nRst, dSnare, nRst, dSnare, nRst, dSnare, nRst, dSnare
	dc.b	nRst, $0E, dKick, $02, nRst, dSnare, nRst, dSnare, dSnare, dSnare, nRst, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst
	smpsReturn

Cutscene_Call01:
	dc.b	dKick, $02, nRst, dSnare, dSnare, dSnare, nRst, dSnare, dSnare, dSnare, nRst, dSnare
	dc.b	nRst, $0E, dKick, $02, nRst, dSnare, nRst, dSnare, dSnare, dSnare, nRst, dSnare
	dc.b	nRst, $0E, dKick, $02, nRst, dSnare, nRst, dSnare, dSnare, dSnare, nRst, dSnare
	dc.b	nRst, $0E, dKick, $02, nRst, dSnare, nRst, dSnare, dSnare, dSnare, nRst, dKick
	dc.b	nRst, dKick, nRst, dSnare, nRst
	smpsReturn

Cutscene_Call02:
	dc.b	dKick, $02, nRst, dSnare, dSnare, dSnare, nRst, dSnare, dSnare, dKick, nRst, dSnare
	dc.b	nRst, dSnare, nRst, dKick, nRst, dSnare, nRst, dSnare, nRst, dKick, nRst, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst, dSnare, $04, dKick, $02, nRst, dSnare, nRst
	dc.b	dSnare, nRst, dKick, dSnare, dSnare, dSnare, dKick, nRst, dSnare, nRst, dSnare, nRst
	dc.b	dKick, nRst, dSnare, nRst, dSnare, nRst, dKick, nRst, dSnare, nRst, dSnare, nRst
	dc.b	$06, dSnare, $02, nRst, $06
	smpsReturn

Cutscene_Call03:
	dc.b	dSnare, $02, nRst, dSnare, nRst, dSnare, dSnare, dSnare, dSnare, dKick, nRst, dSnare
	dc.b	nRst, dSnare, nRst, dKick, nRst, $06, dSnare, $02, dSnare, dSnare, nRst, dSnare
	dc.b	dSnare, dKick, nRst, dSnare, nRst, dSnare, nRst, dKick, nRst, $06, dSnare, $02
	dc.b	dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, nRst, $2E
	smpsReturn

Cutscene_Voices:
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

;	Voice $02
;	$35
;	$32, $31, $7A, $02, 	$4D, $15, $4F, $52, 	$06, $07, $08, $04
;	$00, $00, $00, $00, 	$18, $28, $18, $29, 	$0E, $23, $1E, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $03
	smpsVcCoarseFreq    $02, $0A, $01, $02
	smpsVcRateScale     $01, $01, $00, $01
	smpsVcAttackRate    $12, $0F, $15, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $08, $07, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $02, $01
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $00, $1E, $23, $0E

;	Voice $03
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $87, 	$1C, $22, $15, $7F
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $07, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $18, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $08, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $7F, $15, $22, $1C