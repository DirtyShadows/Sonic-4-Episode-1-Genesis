musicF1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     musicF1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       musicF1_DAC
	smpsHeaderFM        musicF1_FM1,	$0C, $09
	smpsHeaderFM        musicF1_FM2,	$00, $0D
	smpsHeaderFM        musicF1_FM3,	$00, $0D
	smpsHeaderFM        musicF1_FM4,	$00, $0D
	smpsHeaderFM        musicF1_FM5,	$1B, $08
	smpsHeaderPSG       musicF1_PSG1,	$DC, $00, $00, $00
	smpsHeaderPSG       musicF1_PSG2,	$DC, $00, $00, $00
	smpsHeaderPSG       musicF1_PSG3,	$DC, $01, $00, $00

; FM1 Data
musicF1_FM1:
	smpsCall            musicF1_Call00

musicF1_Jump01:
	smpsCall            musicF1_Call01
	smpsCall            musicF1_Call02
	smpsCall            musicF1_Call03
	smpsCall            musicF1_Call04
	smpsCall            musicF1_Call05
	smpsCall            musicF1_Call06
	smpsJump            musicF1_Jump01

; FM2 Data
musicF1_FM2:
	smpsSetvoice        $01
	dc.b	nC4, $04, nA3, nG4, nC4, $18, nA3, $04, nF4, nC4, nF4, nF4
	dc.b	nG4, nC4, nC4, $08, nA4, $04, nC4, $14, $10, $10, $04, nA3
	dc.b	$04, nG4, nC4, $18, nA3, $04, nF4, nC4, nF4, nF4, nG4, nC4
	dc.b	nC4, $08, nA4, $04, nC4, $14, $10, $10, nA4, $08, nF4, $04
	dc.b	nC4, $08, nF4, nF4, nG4, $0C, nF4, $08, $08, nC4, $08, nD4
	dc.b	$04, $14, nC4, $10, $10, nA4, $08, nF4, $04, nC4, $08, nF4
	dc.b	nF4, nG4, $0C, nF4, $08, $08, nC4, $08, nF4, $04, nA4, $2C
	dc.b	$08, nF4, $0C, nG4, $08, nBb4, nG4, $04, nRst, nG4, nD5, $08
	dc.b	nE4, nBb4, nF4, $0C, nA4, $14, $0C, $14, nD4, $0C, nBb4, $08
	dc.b	nF4, $04, nF5, $08, nE4, $0C, nC5, $08, nF5, $04, nC5, nE5
	dc.b	$10, nC6, $14
	smpsJump            musicF1_FM2

; FM3 Data
musicF1_FM3:
	smpsSetvoice        $01
	dc.b	nF4, $04, nC4, nC4, nF4, $18, nC4, $04, $04, nG4, $04, nBb4
	dc.b	nA4, nC4, nF4, nG4, $08, nF4, $04, $14, $10, nE4, $10, nF4
	dc.b	$04, nC4, nC4, nF4, $18, nC4, $04, $04, nG4, $04, nBb4, nA4
	dc.b	nC4, nF4, nG4, $08, nF4, $04, $14, $10, nE4, $10, nC5, $08
	dc.b	nC4, $04, nG4, $08, nA4, nBb4, nC5, $0C, nA4, $08, nC4, nG4
	dc.b	nBb3, $04, nF4, $14, $10, nE4, $10, nC5, $08, nC4, $04, nG4
	dc.b	$08, nA4, nBb4, nC5, $0C, nA4, $08, nC4, nG4, nC4, $04, nC5
	dc.b	$2C, nF4, $08, nBb4, $0C, nC5, $08, nD5, nC5, $04, nRst, nC5
	dc.b	nBb4, $08, nG4, nG4, nA4, $0C, nD5, $14, $0C, nC5, $14, nF4
	dc.b	$0C, $08, nBb4, $04, nD5, $08, nG4, $0C, nF5, $08, nA5, $04
	dc.b	nG4, nG5, $10, $14
	smpsJump            musicF1_FM3

; FM4 Data
musicF1_FM4:
	dc.b	nRst, $7F, $7F, $7F, $7F, $04

musicF1_Jump00:
	smpsSetvoice        $01
	dc.b	nD5, $0C, nE5, $08, nF5, nE5, $04, nRst, nE5, nF4, $08, nC5
	dc.b	nE4, nRst, $40, nBb4, $0C, nC5, $08, nD5, $04, nBb4, $08, nC5
	dc.b	$0C, nRst, $7F, $7F, $7F, $7F, $38
	smpsJump            musicF1_Jump00

; FM5 Data
musicF1_FM5:
	dc.b	nRst, $04
	smpsSetvoice        $02
	dc.b	nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, $05
	dc.b	nRst, $03, nAb2, $04, $04, $04, nRst, $04, nAb2, nRst, nAb2, nRst
	dc.b	nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst
	dc.b	nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst
	dc.b	nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst
	dc.b	nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst
	dc.b	nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst
	dc.b	nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst
	dc.b	nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst
	dc.b	nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst
	dc.b	nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst
	dc.b	nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst
	dc.b	nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst
	dc.b	nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst
	dc.b	nAb2, nRst, nAb2, nRst, nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2, nRst
	dc.b	nAb2, nAb2, nAb2, nRst, nAb2, nRst, nAb2
	smpsJump            musicF1_FM5

musicF1_Call00:
	smpsSetvoice        $00
	dc.b	nF2, $04, nF3, nF2, nF3, nF2, nF3, nF2, nF3, nEb2, nEb3, nEb2
	dc.b	nEb3, nEb2, nEb3, nEb2, nEb3, nBb1, nBb2, nBb1, nBb2, nBb1, nBb2, nBb1
	dc.b	nBb2, nC2, nC3, nC2, nC3, nC2, nC3, nD2, nE2
	smpsReturn

musicF1_Call01:
	dc.b	nF2, $04, nF3, nF2, nF3, nF2, nG2, nA2, nF2, nEb2, nEb3, nEb2
	dc.b	nEb3, nBb2, nA2, nF2, nEb2, nBb1, nBb2, nBb1, nBb2, nBb1, nC2, nD2
	dc.b	nF2, nC2, nC3, nC2, nC3, nC2, nC3, nD2, nE2
	smpsReturn

musicF1_Call02:
	dc.b	nF2, $04, nF3, nF2, nF3, nF2, nF3, nF2, nF3, nEb2, nEb3, nEb2
	dc.b	nEb3, nEb2, nEb3, nEb2, nEb3, nBb1, nBb2, nBb1, nBb2, nBb1, nBb2, nBb1
	dc.b	nBb2, nC2, nC3, nC2, nC3, nC2, nC3, nD2, nE2
	smpsReturn

musicF1_Call03:
	dc.b	nF2, $04, nF3, nF2, nF3, nF2, nF3, nF2, nF3, nEb2, nEb3, nEb2
	dc.b	nEb3, nEb2, nEb3, nEb2, nEb3, nD2, nD3, nD2, nD3, nD2, nD3, nD2
	dc.b	nD3, nC2, nC3, nC2, nC3, nC2, nC3, nC2, nC3
	smpsReturn

musicF1_Call04:
	dc.b	nBb1, $04, nBb2, nBb1, nBb2, nBb1, nBb2, nBb1, nC2, nRst, nC3, nC2
	dc.b	nC3, nC2, nC3, nC2, nC3, nD2, nD3, nD2, nD3, nD2, nD3, nD2
	dc.b	nD3, nEb2, nEb3, nEb2, nEb3, nEb2, nEb3, nEb2, nEb3
	smpsReturn

musicF1_Call05:
	dc.b	nBb1, $04, nBb2, nBb1, nBb2, nBb1, nBb2, nBb1, nBb2, nC2, nC3, nC2
	dc.b	nC3, nC2, nF2, nFs2, nG2, nRst, nG2, nF2, nF2, nE2, nE2, nD2
	dc.b	nC2, nF2, nF3, nF2, nF3, nF2, nF3, nF2, nF3
	smpsReturn

musicF1_Call06:
	dc.b	nEb2, $04, nEb3, nEb2, nEb3, nEb2, nEb3, nEb2, nEb3, nBb1, nBb2, nBb1
	dc.b	nBb2, nBb1, nBb2, nBb1, nBb2, nC2, nC3, nC2, nC3, nC2, nC3, nD2
	dc.b	nE2
	smpsReturn

; PSG1 Data
musicF1_PSG1:
	smpsCall            musicF1_Call0E

musicF1_Jump03:
	smpsCall            musicF1_Call0F
	smpsCall            musicF1_Call10
	smpsCall            musicF1_Call11
	smpsCall            musicF1_Call12
	smpsCall            musicF1_Call13
	smpsCall            musicF1_Call14
	smpsJump            musicF1_Jump03

; PSG2 Data
musicF1_PSG2:
	smpsCall            musicF1_Call07

musicF1_Jump02:
	smpsCall            musicF1_Call08
	smpsCall            musicF1_Call09
	smpsCall            musicF1_Call0A
	smpsCall            musicF1_Call0B
	smpsCall            musicF1_Call0C
	smpsCall            musicF1_Call0D
	smpsJump            musicF1_Jump02

musicF1_Call0E:
	dc.b	smpsNoAttack, $18
	smpsPSGvoice        fTone_01
	dc.b	nC5, $08, nF5, nF5, $18, nRst, $40
	smpsReturn

musicF1_Call0F:
	dc.b	smpsNoAttack, $14, nC5, $08, nA5, nA5, $1C, nRst, $40
	smpsReturn

musicF1_Call10:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

musicF1_Call11:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

musicF1_Call12:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_01
	dc.b	nF5, nD5, nRst, nF5, nD5, nRst, nG5, nRst, nG5, nC5, nG5, nRst
	dc.b	nG5, nC5, nRst, $08, nF5, $04, nD5, nRst, nF5, nD5, nRst, nF5
	dc.b	nRst, nG5, nD5, nG5, nRst, nG5, nC5, nRst
	smpsReturn

musicF1_Call13:
	dc.b	smpsNoAttack, $04, nF5, nD5, nRst, nF5, nRst, nF5, nD5, nRst, nG5, nE5
	dc.b	nF5, nRst, nA5, nRst, nG5, nRst, nE5, nF5, nG5, nRst, nC6, $0C
	dc.b	nRst, $18, nC5, $08
	smpsReturn

musicF1_Call14:
	dc.b	nF5, $08, $18, nRst, $40
	smpsReturn

musicF1_Call07:
	dc.b	smpsNoAttack, $14
	smpsPSGvoice        fTone_01
	dc.b	nF5, $08, nG5, nG5, $14, nRst, $48
	smpsReturn

musicF1_Call08:
	dc.b	smpsNoAttack, $10, nF5, $08, nG5, nG5, $18, nRst, $48
	smpsReturn

musicF1_Call09:
	dc.b	smpsNoAttack, $50, nG5, $08, nD5, $04, nF5, $18, nE5, $04, nF5, nG5
	smpsReturn

musicF1_Call0A:
	dc.b	nRst, $04, nG5, nRst, $48, nG5, $08, nA5, $04, nBb5, nC6, nBb5
	dc.b	nC6, $10, nA5, $08
	smpsReturn

musicF1_Call0B:
	dc.b	smpsNoAttack, $04, nRst, $7C
	smpsReturn

musicF1_Call0C:
	dc.b	smpsNoAttack, $74
	smpsPSGvoice        fTone_01
	dc.b	nF5, $08, nG5, $04
	smpsReturn

musicF1_Call0D:
	dc.b	smpsNoAttack, $04, nG5, $14, nRst, $48
	smpsReturn

; PSG3 Data
musicF1_PSG3:
	smpsPSGvoice        $00
	dc.b	nC4, $20, $04, $04, nRst, $18, nD4, $20, nC4, $10, $10, $20
	dc.b	$20, nD4, $20, nC4, $10, $10, nF4, $32, nRst, $06, nF4, $08
	dc.b	nRst, nC4, $04, nD4, $14, $10, nE4, $10, nRst, $08, nF4, $30
	dc.b	$08, nRst, $0C, nF4, $2C, nC4, $08, nBb3, $0C, $08, nBb4, $08
	dc.b	nG4, $04, nRst, nG4, nF4, $08, nE4, nC4, nF4, $0C, $14, nG4
	dc.b	$0C, $14, nF4, $0C, $08, nBb4, $0C, nG4, nC5, $08, nF5, nG5
	dc.b	$10, $14
	smpsJump            musicF1_PSG3

; DAC Data
musicF1_DAC:
	dc.b	dKick, $04, nRst, dSnare, nRst, dKick, dKick, dSnare, nRst, dKick, nRst, dSnare
	dc.b	nRst, dKick, dKick, dSnare, nRst, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare, dSnare, dKick, nRst, dSnare
	dc.b	nRst, dKick, dKick, dSnare, nRst, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare, nRst, dKick, nRst, dSnare
	dc.b	nRst, dKick, dSnare, dSnare, dSnare, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare, nRst, dKick, nRst, dSnare
	dc.b	nRst, dKick, dKick, dSnare, nRst, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare
	dc.b	dSnare, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare, nRst, dKick, nRst, dSnare
	dc.b	nRst, dKick, dKick, dSnare, nRst, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst, dKick, dSnare, dSnare, dSnare, dKick, nRst, dSnare
	dc.b	nRst, dKick, dKick, dSnare, dKick, nRst, dKick, dSnare, nRst, dKick, dKick, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare, nRst, dKick, nRst, dSnare
	dc.b	nRst, dKick, dKick, dSnare, dSnare, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst, dKick, dKick, dSnare, dKick, nRst, dSnare, dSnare
	dc.b	dSnare, dSnare, dKick, dSnare, dSnare
	smpsJump            musicF1_DAC

musicF1_Voices:
;	Voice $00
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

;	Voice $01
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

;	Voice $02
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

