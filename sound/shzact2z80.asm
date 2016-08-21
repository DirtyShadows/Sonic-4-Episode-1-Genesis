shzact2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     shzact2_Voices
	smpsHeaderChan      $05, $03
	smpsHeaderTempo     $02, $04

	smpsHeaderDAC       shzact2_DAC
	smpsHeaderFM        shzact2_FM1,	$00, $0A
	smpsHeaderFM        shzact2_FM2,	$00, $10
	smpsHeaderFM        shzact2_FM3,	$00, $10
	smpsHeaderFM        shzact2_FM4,	$00, $10
	smpsHeaderPSG       shzact2_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       shzact2_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       shzact2_PSG3,	$D0, $02, $00, $00

; FM1 Data
shzact2_FM1:
	smpsCall            shzact2_Call19
	smpsCall            shzact2_Call19
	smpsCall            shzact2_Call1A
	smpsCall            shzact2_Call1B
	smpsCall            shzact2_Call1C
	smpsCall            shzact2_Call1D
	smpsCall            shzact2_Call1E
	smpsJump            shzact2_FM1

; FM2 Data
shzact2_FM2:
	smpsCall            shzact2_Call13
	smpsCall            shzact2_Call13
	smpsCall            shzact2_Call14
	smpsCall            shzact2_Call15
	smpsCall            shzact2_Call16
	smpsCall            shzact2_Call17
	smpsCall            shzact2_Call18
	smpsJump            shzact2_FM2

; FM3 Data
shzact2_FM3:
	smpsCall            shzact2_Call0D
	smpsCall            shzact2_Call0E
	smpsCall            shzact2_Call0F
	smpsCall            shzact2_Call0F
	smpsCall            shzact2_Call10
	smpsCall            shzact2_Call11
	smpsCall            shzact2_Call12
	smpsJump            shzact2_FM3

; FM4 Data
shzact2_FM4:
	smpsCall            shzact2_Call07
	smpsCall            shzact2_Call08
	smpsCall            shzact2_Call09
	smpsCall            shzact2_Call09
	smpsCall            shzact2_Call0A
	smpsCall            shzact2_Call0B
	smpsCall            shzact2_Call0C
	smpsJump            shzact2_FM4

; PSG1 Data
shzact2_PSG1:
	smpsCall            shzact2_Call26
	smpsCall            shzact2_Call26
	smpsCall            shzact2_Call27
	smpsCall            shzact2_Call28
	smpsCall            shzact2_Call29
	smpsCall            shzact2_Call28
	smpsCall            shzact2_Call2A
	smpsJump            shzact2_PSG1

; PSG2 Data
shzact2_PSG2:
	smpsstop

shzact2_PSG3:
	smpsPSGform         $E7
	smpsCall            shzact2_Call1F
	smpsCall            shzact2_Call20
	smpsCall            shzact2_Call21
	smpsCall            shzact2_Call22
	smpsCall            shzact2_Call23
	smpsCall            shzact2_Call24
	smpsCall            shzact2_Call25
	smpsJump            shzact2_PSG2

; DAC Data
shzact2_DAC:
	smpsCall            shzact2_Call00
	smpsCall            shzact2_Call01
	smpsCall            shzact2_Call02
	smpsCall            shzact2_Call03
	smpsCall            shzact2_Call04
	smpsCall            shzact2_Call05
	smpsCall            shzact2_Call06
	smpsJump            shzact2_DAC

shzact2_Call19:
	smpsSetvoice        $02
	dc.b	nC3, $10, nB2, $0C, $04, nA2, $0C, $04, nG2, $0C, $04, nF2
	dc.b	nF3, nF2, nF3, nF2, nF3, nF2, nF3, nG2, nG3, nG2, nG3, nG2
	dc.b	nG3, nG2, nG3
	smpsReturn

shzact2_Call1A:
	dc.b	nF2, $04, nF2, nC3, nC3, nA2, nA2, nG2, nE2, nE2, nE2, nB2
	dc.b	nB2, nG2, nG2, nE2, nE2, nD3, nD3, nA2, $08, nB2, $04, nB2
	dc.b	nG3, nF3, $08, $04, nE3, $02, nE3, nE3, $04, nD3, nD3, nC3
	dc.b	nC3
	smpsReturn

shzact2_Call1B:
	dc.b	nF2, $04, nF2, nC3, nC3, nA2, nA2, nG2, nE2, nE2, nE2, nB2
	dc.b	nB2, nG2, nG2, nE2, nE2, nD3, nD3, nC3, nC3, nB2, nB2, nA2
	dc.b	nA2, nA3, nA3, nG3, nG3, nFs3, nE3, nD3, nG2
	smpsReturn

shzact2_Call1C:
	dc.b	nG2, $04, nG2, nC3, nC3, nB2, nC3, nD3, nG3, $08, nG2, nG2
	dc.b	$04, nRst, $10, nC2, $04, nC3, nC2, nC3, nC2, nC3, nC2, nD2
	dc.b	nE2, nE3, nE2, nE3, nE2, nE3, nE2, nG2
	smpsReturn

shzact2_Call1D:
	dc.b	nF2, $04, nF3, nF2, nF3, nF2, nF3, nFs2, nG2, nG2, nE2, nF2
	dc.b	nG2, nF2, nE2, nD2, nC2, nA1, nA2, nA1, nA2, nA1, nB1, nC2
	dc.b	nD2, nE2, nE3, nE2, nE3, nE2, nE3, nE2, nG2
	smpsReturn

shzact2_Call1E:
	dc.b	nF2, $04, nF3, nF2, nF3, nF2, nF3, nF2, nFs2, nG2, $08, nF2
	dc.b	nG2, $04, nF2, nE2, nD2, nF2, nC2, nF2, nG2, nRst, nD2, nRst
	dc.b	nC2, nRst, nC2, nE2, nRst, nF2, nRst, nFs2, nG2
	smpsReturn

shzact2_Call13:
	smpsSetvoice        $00
	dc.b	nG4, $10, nC5, $08, nB4, $04, nG4, nRst, nG4, nD5, nRst, nC5
	dc.b	nRst, nG4, nRst, nB4, $08, nC5, $04, nA4, $10, nRst, $24
	smpsReturn

shzact2_Call14:
	dc.b	nF5, $10, nA5, $08, nG5, $04, nE5, $14, nRst, $04, nE5, nF5
	dc.b	nG5, nF5, $08, nE5, nD5, nC5, $04, nD5, $08, nE5, $04, nD5
	dc.b	nE5, $08, nC5, $04, nD5, nE5
	smpsReturn

shzact2_Call15:
	dc.b	nF5, $10, nA5, $08, nG5, $04, nE5, $14, nRst, $04, nE5, nF5
	dc.b	nG5, nFs5, $30, nA5, $04, nG5, nFs5, nG5
	smpsReturn

shzact2_Call16:
	dc.b	smpsNoAttack, $2E, nRst, $02, nRst, $10, nE5, $08, nC6, nG5, nE5, $04
	dc.b	nG5, $08, nG5, nE5, nC5, $04, nD5, nE5
	smpsReturn

shzact2_Call17:
	dc.b	nC5, $08, $04, $08, $04, nE5, nB4, $24, nE5, $08, nC6, nG5
	dc.b	nE5, $04, nG5, $08, nG5, nE5, nC5, $04, nD5, nE5
	smpsReturn

shzact2_Call18:
	dc.b	nC5, $08, $04, $08, $04, nE5, nB4, $24, nF5, $04, nG5, nA5
	dc.b	nG5, nRst, nE5, nRst, nG5, $24
	smpsReturn

shzact2_Call0D:
	dc.b	nRst, $40
	smpsSetvoice        $00
	dc.b	nG5, $0C, nF5, $10, nRst, $24
	smpsReturn

shzact2_Call0E:
	dc.b	smpsNoAttack, nRst, $40, nG5, $0C, nF5, $10, nRst, $24
	smpsReturn

shzact2_Call0F:
	dc.b	nF4, $10, nRst, $0C, nE4, $14, nRst, $50
	smpsReturn

shzact2_Call10:
	dc.b	smpsNoAttack, nRst, $40, nE4, $10, nD4, $08, nC4, $04, nE4, $08, nD4
	dc.b	nC4, nG3, $04, nA3, nD4
	smpsReturn

shzact2_Call11:
	dc.b	nC4, $08, nB3, $04, nA3, $08, $04, nG3, nB3, $24, nE4, $08
	dc.b	nE4, nD4, nC4, $04, nE4, $08, nD4, nC4, nG3, $04, nA3, nD4
	smpsReturn

shzact2_Call12:
	dc.b	nC4, $08, nB3, $04, nA3, $08, $04, nG3, nB3, $24, nF4, $04
	dc.b	nF4, nA4, nG4, nRst, nD4, nRst, nE4, $24
	smpsReturn

shzact2_Call07:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

shzact2_Call08:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

shzact2_Call09:
	smpsSetvoice        $00
	dc.b	nA5, $10, nC6, $08, nB5, $04, nG5, $14, nRst, $50
	smpsReturn

shzact2_Call0A:
	dc.b	smpsNoAttack, nRst, $40, nG5, $08, nG5, nB5, nG5, $04, nC6, $08, nB5
	dc.b	nG5, nE5, $04, nF5, nG5
	smpsReturn

shzact2_Call0B:
	dc.b	nG5, $08, nA5, $04, nG5, $08, nRst, nD5, $24, nG5, $08, nG5
	dc.b	nB5, nG5, $04, nC6, $08, nB5, nG5, nE5, $04, nF5, nG5
	smpsReturn

shzact2_Call0C:
	dc.b	nG5, $08, nA5, $04, nG5, $08, nRst, nD5, $24, nA5, $04, nB5
	dc.b	nC6, nB5, nRst, nG5, nRst, nC6, $24
	smpsReturn

shzact2_Call26:
	dc.b	nRst, $60
	smpsPSGvoice        fTone_01
	dc.b	nG4, $02, nA4, nB4, nC5, nA4, nB4, nC5, nD5, nB4, nC5, nD5
	dc.b	nE5, nD5, nE5, nF5, nG5
	smpsReturn

shzact2_Call27:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

shzact2_Call28:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

shzact2_Call29:
	dc.b	smpsNoAttack, nRst, $1C
	smpsPSGvoice        fTone_01
	dc.b	nG4, $02, nRst, $04, nA4, $02, nB4, nC5, nA4, nB4, nC5, nD5
	dc.b	nB4, nC5, nD5, nE5, nD5, nE5, nF5, nG5, nRst, $40
	smpsReturn

shzact2_Call2A:
	dc.b	smpsNoAttack, nRst, $5C
	smpsPSGvoice        fTone_01
	dc.b	nG4, $02, nRst, $04, nA4, $02, nB4, nC5, nA4, nB4, nC5, nD5
	dc.b	nB4, nC5, nD5, nE5, nD5, nE5, nF5, nG5
	smpsReturn

shzact2_Call1F:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, $08, $04, nRst, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nCs0, $08, nCs0, nCs0, nCs0, $04, nRst, nCs0, $08, nCs0
	dc.b	nCs0, nCs0, $04, nRst, nCs0
	smpsReturn

shzact2_Call20:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, $08, $04, nRst, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nCs0, nRst, nCs0, $08, nCs0, nCs0, $04, nRst, nCs0, $08
	dc.b	nCs0, nCs0, nCs0, $04, nRst, nCs0
	smpsReturn

shzact2_Call21:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0, $07, $05, $04, nRst, nCs0
	dc.b	nCs0, nRst, nCs0, $08, $04, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nCs0, nCs0
	smpsReturn

shzact2_Call22:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nCs0, nRst, nCs0
	dc.b	nCs0, nRst, nCs0, $08, $04, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nCs0, nCs0
	smpsReturn

shzact2_Call23:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nCs0, $08, nCs0, nCs0, nCs0, $04, nRst, nCs0, $08, nCs0
	dc.b	nCs0, nCs0, $04, nRst, nCs0
	smpsReturn

shzact2_Call24:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, $04, nRst, nCs0, $08, nCs0, nCs0, nCs0, $04
	dc.b	nRst, nCs0, nRst, nCs0, $08, nCs0, nCs0, $04, nRst, nCs0, $08, nCs0
	dc.b	nCs0, nCs0, $04, nRst, nCs0
	smpsReturn

shzact2_Call25:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, $04, nRst, nCs0, $08, nCs0, nCs0, nCs0, $04
	dc.b	nRst, nCs0, nRst, nCs0, nRst, nCs0, $08, $04, nRst, nCs0, nRst, nCs0
	dc.b	nRst, nCs0, $08, $04, nCs0, nCs0
	smpsReturn

shzact2_Call00:
	dc.b	dKick, $0C, $04, dSnare, nRst, $08, dSnare, $04, dKick, dSnare, nRst, dKick
	dc.b	dSnare, $08, dSnare, dKick, dSnare, dKick, $04, dKick, dSnare, $08, dKick, dSnare
	dc.b	dKick, $04, dSnare, dSnare, dSnare
	smpsReturn

shzact2_Call01:
	dc.b	dKick, $0C, $04, dSnare, nRst, $08, dSnare, $04, dKick, dSnare, nRst, dKick
	dc.b	dSnare, $08, $04, dSnare, dKick, $08, dSnare, dKick, $04, dKick, dSnare, $08
	dc.b	dKick, dSnare, dKick, $04, dSnare, dSnare, dSnare
	smpsReturn

shzact2_Call02:
	dc.b	dKick, $08, dSnare, $04, nRst, $08, dKick, $04, dSnare, $08, dKick, dSnare
	dc.b	$04, dKick, $08, $04, dSnare, $08, dKick, dSnare, $04, nRst, $08, dKick
	dc.b	$04, dSnare, dKick, nRst, dKick, dSnare, dKick, dKick, $08, dSnare
	smpsReturn

shzact2_Call03:
	dc.b	dKick, $08, dSnare, $04, nRst, $08, dKick, $04, dSnare, dKick, nRst, dKick
	dc.b	dSnare, dKick, $08, $04, dSnare, $08, dKick, dSnare, $04, nRst, $08, dKick
	dc.b	$04, dSnare, dKick, nRst, dKick, dSnare, dKick, dKick, $08, dSnare, $04, dKick
	smpsReturn

shzact2_Call04:
	dc.b	dKick, $04, dKick, dSnare, nRst, dKick, dKick, dSnare, dKick, nRst, dSnare, dSnare
	dc.b	dSnare, nRst, dKick, dSnare, $08, dKick, dSnare, dKick, $04, dKick, dSnare, $08
	dc.b	dKick, dSnare, dKick, $04, dKick, dSnare, $08
	smpsReturn

shzact2_Call05:
	dc.b	dKick, $08, dSnare, dKick, $04, dKick, dSnare, $08, dKick, dSnare, dKick, $04
	dc.b	dSnare, dSnare, dSnare, dKick, $08, dSnare, dKick, $04, dKick, dSnare, $08, dKick
	dc.b	dSnare, dKick, $04, dKick, dSnare, $08
	smpsReturn

shzact2_Call06:
	dc.b	dKick, $08, dSnare, dKick, $04, dKick, dSnare, $08, dKick, dSnare, dKick, $04
	dc.b	dSnare, dSnare, dSnare, dKick, dSnare, nRst, $08, nRst, $04, dKick, dSnare, dKick
	dc.b	nRst, dKick, dSnare, $08, dKick, $04, dSnare, dSnare, dSnare
	smpsReturn

shzact2_Voices:
;	Voice $00
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

;	Voice $01
;	$3A
;	$7B, $5B, $40, $40, 	$9F, $1F, $1F, $1F, 	$0F, $0B, $05, $0C
;	$0F, $19, $0C, $13, 	$F9, $F5, $F9, $06, 	$21, $01, $01, $7F
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $05, $07
	smpsVcCoarseFreq    $00, $00, $0B, $0B
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $0B, $0F
	smpsVcDecayRate2    $13, $0C, $19, $0F
	smpsVcDecayLevel    $00, $0F, $0F, $0F
	smpsVcReleaseRate   $06, $09, $05, $09
	smpsVcTotalLevel    $7F, $01, $01, $21

;	Voice $02
;	$10
;	$09, $00, $00, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$25, $30, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $09
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $30, $25

