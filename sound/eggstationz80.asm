eggstation_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     eggstation_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $02

	smpsHeaderDAC       eggstation_DAC
	smpsHeaderFM        eggstation_FM1,	$00, $10
	smpsHeaderFM        eggstation_FM2,	$00, $10
	smpsHeaderFM        eggstation_FM3,	$00, $10
	smpsHeaderFM        eggstation_FM4,	$00, $10
	smpsHeaderFM        eggstation_FM5,	$00, $10
	smpsHeaderPSG       eggstation_PSG1,	$D0, $02, $00, $00
	smpsHeaderPSG       eggstation_PSG2,	$D0, $02, $00, $00
	smpsHeaderPSG       eggstation_PSG3,	$D0, $02, $00, $00

; FM1 Data
eggstation_FM1:
	smpsCall            eggstation_Call20

eggstation_Jump05:
	smpsCall            eggstation_Call21
	smpsCall            eggstation_Call22
	smpsCall            eggstation_Call23
	smpsCall            eggstation_Call24
	smpsCall            eggstation_Call25
	smpsCall            eggstation_Call26
	smpsJump            eggstation_Jump05

; FM2 Data
eggstation_FM2:
	smpsCall            eggstation_Call19

eggstation_Jump04:
	smpsCall            eggstation_Call1A
	smpsCall            eggstation_Call1B
	smpsCall            eggstation_Call1C
	smpsCall            eggstation_Call1D
	smpsCall            eggstation_Call1E
	smpsCall            eggstation_Call1F
	smpsJump            eggstation_Jump04

; FM3 Data
eggstation_FM3:
	smpsCall            eggstation_Call12

eggstation_Jump03:
	smpsCall            eggstation_Call13
	smpsCall            eggstation_Call14
	smpsCall            eggstation_Call15
	smpsCall            eggstation_Call16
	smpsCall            eggstation_Call17
	smpsCall            eggstation_Call18
	smpsJump            eggstation_Jump03

; FM4 Data
eggstation_FM4:
	smpsCall            eggstation_Call0C

eggstation_Jump02:
	smpsCall            eggstation_Call0D
	smpsCall            eggstation_Call0E
	smpsCall            eggstation_Call0F
	smpsCall            eggstation_Call0F
	smpsCall            eggstation_Call10
	smpsCall            eggstation_Call11
	smpsJump            eggstation_Jump02

; FM5 Data
eggstation_FM5:
	smpsCall            eggstation_Call06

eggstation_Jump01:
	smpsCall            eggstation_Call07
	smpsCall            eggstation_Call08
	smpsCall            eggstation_Call09
	smpsCall            eggstation_Call09
	smpsCall            eggstation_Call0A
	smpsCall            eggstation_Call0B
	smpsJump            eggstation_Jump01

; PSG1 Data
eggstation_PSG1:
	smpsCall            eggstation_Call35

eggstation_Jump08:
	smpsCall            eggstation_Call36
	smpsCall            eggstation_Call37
	smpsCall            eggstation_Call38
	smpsCall            eggstation_Call38
	smpsCall            eggstation_Call39
	smpsCall            eggstation_Call3A
	smpsJump            eggstation_Jump08

; PSG2 Data
eggstation_PSG2:
	smpsCall            eggstation_Call2E

eggstation_Jump07:
	smpsCall            eggstation_Call2F
	smpsCall            eggstation_Call30
	smpsCall            eggstation_Call31
	smpsCall            eggstation_Call32
	smpsCall            eggstation_Call33
	smpsCall            eggstation_Call34
	smpsJump            eggstation_Jump07

; PSG3 Data
eggstation_PSG3:
	smpsCall            eggstation_Call27

eggstation_Jump06:
	smpsCall            eggstation_Call28
	smpsCall            eggstation_Call29
	smpsCall            eggstation_Call2A
	smpsCall            eggstation_Call2B
	smpsCall            eggstation_Call2C
	smpsCall            eggstation_Call2D
	smpsJump            eggstation_Jump06

; DAC Data
eggstation_DAC:
	smpsCall            eggstation_Call00

eggstation_Jump00:
	smpsCall            eggstation_Call01
	smpsCall            eggstation_Call02
	smpsCall            eggstation_Call03
	smpsCall            eggstation_Call03
	smpsCall            eggstation_Call04
	smpsCall            eggstation_Call05
	smpsJump            eggstation_Jump00

eggstation_Call20:
	dc.b	smpsNoAttack, $38
	smpsSetvoice        $00
	dc.b	nA2, $06, nRst, $02, nA2, $0C, nRst, $04, nB2, $08, nC3, $06
	dc.b	nRst, $02, nG2, $08, nA2, $04, nB2, nC3, $08, nD3
	smpsReturn

eggstation_Call21:
	dc.b	nD2, $0C, nRst, $04, nF2, $0C, nRst, $04, nF2, $08, nG2, $04
	dc.b	nG3, nC3, $08, nA2, $06, nRst, $02, nA2, $0C, nRst, $04, nB2
	dc.b	$08, nC3, $06, nRst, $02, nG2, $08, nA2, $04, nB2, nC3, $08
	dc.b	nD3
	smpsReturn

eggstation_Call22:
	dc.b	nD2, $0C, nRst, $04, nF2, $0C, nRst, $04, nF2, $08, nG2, $04
	dc.b	nG3, nC3, $08, nE3, $04, nRst, nB2, $08, nE3, $04, nRst, nB2
	dc.b	$08, nEb3, $04, nRst, nBb2, $08, nD3, $04, nRst, nC3, $08, nA2
	dc.b	$06, nRst, $02
	smpsReturn

eggstation_Call23:
	dc.b	nA2, $0C, nRst, $04, nB2, $08, nC3, $06, nRst, $02, nG2, $08
	dc.b	nA2, $04, nB2, nC3, $08, nD3, nD2, $0C, nRst, $04, nF2, $0C
	dc.b	nRst, $04, nF2, $08, nG2, $04, nG3, nC3, $08, nA2, $06, nRst
	dc.b	$02
	smpsReturn

eggstation_Call24:
	dc.b	nA2, $0C, nRst, $04, nB2, $08, nC3, $06, nRst, $02, nG2, $08
	dc.b	nA2, $04, nB2, nC3, $08, nD3, nD2, $0C, nRst, $04, nF2, $0C
	dc.b	nRst, $04, nF2, $08, nG2, $04, nG3, nC3, $08, nE3, $04, nRst
	smpsReturn

eggstation_Call25:
	dc.b	nB2, $08, nE3, $04, nRst, nB2, $08, nEb3, $04, nRst, nBb2, $08
	dc.b	nD3, $04, nRst, nC3, $08, nRst, $20, nA2, $06, nRst, $02, nA2
	dc.b	$0C, nRst, $04, nB2, $08, nC3, $06, nRst, $02
	smpsReturn

eggstation_Call26:
	dc.b	nG2, $08, nA2, $04, nB2, nC3, $08, nD3
	smpsReturn

eggstation_Call19:
	dc.b	smpsNoAttack, $38
	smpsSetvoice        $01
	dc.b	nA4, $08, nE4, nRst, nA4, nG4, nD4, nRst, nG4, nFs4
	smpsReturn

eggstation_Call1A:
	dc.b	smpsNoAttack, $08, nG4, nF4, $10, nE4, $08, nD4, $10, nA4, $08, nE4
	dc.b	nRst, nA4, nG4, nD4, nRst, nG4, nFs4
	smpsReturn

eggstation_Call1B:
	dc.b	smpsNoAttack, $08, nG4, nF4, $10, nE4, $08, nD4, $10, nRst, $40, nA4
	dc.b	$08
	smpsReturn

eggstation_Call1C:
	dc.b	nE4, $08, nRst, nA4, nG4, nD4, nRst, nG4, nFs4, $10, nG4, $08
	dc.b	nF4, $10, nE4, $08, nD4, $10, nA4, $08
	smpsReturn

eggstation_Call1D:
	dc.b	nE4, $08, nRst, nA4, nG4, nD4, nRst, nG4, nFs4, $10, nG4, $08
	dc.b	nF4, $10, nE4, $08, nD4, $10, nRst, $08
	smpsReturn

eggstation_Call1E:
	dc.b	smpsNoAttack, $58, nA4, $08, nE4, nRst, nA4, nG4
	smpsReturn

eggstation_Call1F:
	dc.b	nD4, $08, nRst, nG4, nFs4
	smpsReturn

eggstation_Call12:
	dc.b	smpsNoAttack, $38
	smpsSetvoice        $01
	dc.b	nE4, $08, nC4, nRst, nE4, nC4, nG3, nRst, nC4, nD4
	smpsReturn

eggstation_Call13:
	dc.b	smpsNoAttack, $08, nE4, nC4, $10, nA3, $08, nB3, $10, nE4, $08, nC4
	dc.b	nRst, nE4, nC4, nG3, nRst, nC4, nD4
	smpsReturn

eggstation_Call14:
	dc.b	smpsNoAttack, $08, nE4, nC4, $10, nA3, $08, nB3, $10, nRst, $40, nE4
	dc.b	$08
	smpsReturn

eggstation_Call15:
	dc.b	nC4, $08, nRst, nE4, nC4, nG3, nRst, nC4, nD4, $10, nE4, $08
	dc.b	nC4, $10, nA3, $08, nB3, $10, nE4, $08
	smpsReturn

eggstation_Call16:
	dc.b	nC4, $08, nRst, nE4, nC4, nG3, nRst, nC4, nD4, $10, nE4, $08
	dc.b	nC4, $10, nA3, $08, nB3, $10, nRst, $08
	smpsReturn

eggstation_Call17:
	dc.b	smpsNoAttack, $58, nE4, $08, nC4, nRst, nE4, nC4
	smpsReturn

eggstation_Call18:
	dc.b	nG4, $08, nRst, nC4, nD4
	smpsReturn

eggstation_Call0C:
	dc.b	smpsNoAttack, $40
	smpsSetvoice        $02
	dc.b	nA5, $04, nRst, nA5, nRst, $0C, nG5, $04, nRst, nG5, nRst, $1C
	smpsReturn

eggstation_Call0D:
	dc.b	nFs5, $04, nRst, nG5, nRst, $0C, nF5, $04, nRst, nE5, nRst, $1C
	dc.b	nA5, $04, nRst, nA5, nRst, $0C, nG5, $04, nRst, nG5, nRst, $1C
	smpsReturn

eggstation_Call0E:
	dc.b	nFs5, $04, nRst, nG5, nRst, $0C, nF5, $04, nRst, nE5, nRst, $1C
	dc.b	nE5, $04, nRst, nE5, nRst, $0C, nEb5, $04, nRst, $0C, nD5, $04
	dc.b	nRst, nC5, nRst, $0C
	smpsReturn

eggstation_Call0F:
	dc.b	nA5, $04, nRst, nA5, nRst, $0C, nG5, $04, nRst, nG5, nRst, $1C
	dc.b	nFs5, $04, nRst, nG5, nRst, $0C, nF5, $04, nRst, nE5, nRst, $1C
	smpsReturn

eggstation_Call10:
	dc.b	nE5, $04, nRst, nE5, nRst, $0C, nEb5, $04, nRst, $0C, nD5, $04
	dc.b	nRst, nC5, nRst, $2C, nA5, $04, nRst, nA5, nRst, $0C, nG5, $04
	dc.b	nRst
	smpsReturn

eggstation_Call11:
	dc.b	nG5, $04, nRst, $1C
	smpsReturn

eggstation_Call06:
	dc.b	smpsNoAttack, $40
	smpsSetvoice        $02
	dc.b	nE5, $04, nRst, nE5, nRst, $0C, nE5, $04, nRst, nE5, nRst, $1C
	smpsReturn

eggstation_Call07:
	dc.b	nD5, $04, nRst, nD5, nRst, $0C, nC5, $04, nRst, nC5, nRst, $1C
	dc.b	nE5, $04, nRst, nE5, nRst, $0C, nE5, $04, nRst, nE5, nRst, $1C
	smpsReturn

eggstation_Call08:
	dc.b	nD5, $04, nRst, nD5, nRst, $0C, nC5, $04, nRst, nC5, nRst, $1C
	dc.b	nB4, $04, nRst, nB4, nRst, $0C, nBb4, $04, nRst, $0C, nA4, $04
	dc.b	nRst, nG4, nRst, $0C
	smpsReturn

eggstation_Call09:
	dc.b	nE5, $04, nRst, nE5, nRst, $0C, nE5, $04, nRst, nE5, nRst, $1C
	dc.b	nD5, $04, nRst, nD5, nRst, $0C, nC5, $04, nRst, nC5, nRst, $1C
	smpsReturn

eggstation_Call0A:
	dc.b	nB4, $04, nRst, nB4, nRst, $0C, nBb4, $04, nRst, $0C, nA4, $04
	dc.b	nRst, nG4, nRst, $2C, nE5, $04, nRst, nE5, nRst, $0C, nE5, $04
	dc.b	nRst
	smpsReturn

eggstation_Call0B:
	dc.b	nE5, $04, nRst, $1C
	smpsReturn

eggstation_Call35:
	dc.b	smpsNoAttack, $40
	smpsPSGvoice        $00
	dc.b	nA5, $08, nE5, nRst, nA5, nG5, nD5, nRst, nG5
	smpsReturn

eggstation_Call36:
	dc.b	nFs5, $10, nG5, $08, nF5, $10, nE5, $08, nD5, nRst, nA5, nE5
	dc.b	nRst, nA5, nG5, nD5, nRst, nG5
	smpsReturn

eggstation_Call37:
	dc.b	nFs5, $10, nG5, $08, nF5, $10, nE5, $08, nD5, nRst, $48
	smpsReturn

eggstation_Call38:
	dc.b	nA5, $08, nE5, nRst, nA5, nG5, nD5, nRst, nG5, nFs5, $10, nG5
	dc.b	$08, nF5, $10, nE5, $08, nD5, nRst
	smpsReturn

eggstation_Call39:
	dc.b	smpsNoAttack, $60, nA5, $08, nE5, nRst, nA5
	smpsReturn

eggstation_Call3A:
	dc.b	nG5, $08, nD5, nRst, nG5
	smpsReturn

eggstation_Call2E:
	dc.b	smpsNoAttack, $48
	smpsPSGvoice        $00
	dc.b	nE5, $04, nA5, nE6, nA6, nG6, nE6, nD6, nG5, nRst, $18
	smpsReturn

eggstation_Call2F:
	dc.b	nFs6, $04, nD6, nG6, nFs6, nD6, nA5, nRst, $08, nG5, $04, nRst
	dc.b	nB4, nD5, nB5, nG5, nRst, $10, nE5, $04, nA5, nE6, nA6, nG6
	dc.b	nE6, nD6, nG5, nRst, $18
	smpsReturn

eggstation_Call30:
	dc.b	nFs6, $04, nD6, nG6, nFs6, nD6, nA5, nRst, $08, nG5, $04, nRst
	dc.b	nB4, nD5, nB5, nG5, nRst, nD5, nE5, nB5, nD6, nA5, nB5, nE6
	dc.b	nBb6, nEb6, nBb5, nA6, nD6, nA5, nE6, nC6, nRst, $08
	smpsReturn

eggstation_Call31:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        $00
	dc.b	nE5, $04, nA5, nE6, nA6, nG6, nE6, nD6, nG5, nRst, $18, nFs6
	dc.b	$04, nD6, nG6, nFs6, nD6, nA5, nRst, $08, nG5, $04, nRst, nB4
	dc.b	nD5, nB5, nG5, nRst, $08
	smpsReturn

eggstation_Call32:
	dc.b	smpsNoAttack, $08, nE5, $04, nA5, nE6, nA6, nG6, nE6, nD6, nG5, nRst
	dc.b	$18, nFs6, $04, nD6, nG6, nFs6, nD6, nA5, nRst, $08, nG5, $04
	dc.b	nRst, nB4, nD5, nB5, nG5, nRst, nD5
	smpsReturn

eggstation_Call33:
	dc.b	nE5, $04, nB5, nD6, nA5, nB5, nE6, nBb6, nEb6, nBb5, nA6, nD6
	dc.b	nA5, nE6, nC6, nRst, $30, nE5, $04, nA5, nE6, nA6, nG6, nE6
	smpsReturn

eggstation_Call34:
	dc.b	nD6, $04, nG5, nRst, $18
	smpsReturn

eggstation_Call27:
	dc.b	smpsNoAttack, $78
	smpsPSGvoice        $00
	dc.b	nE5, $08
	smpsReturn

eggstation_Call28:
	dc.b	nC5, $08, nRst, nE5, nC5, nG4, nRst, nC5, nD5, $10, nE5, $08
	dc.b	nC5, $10, nA4, $08, nB4, $10, nE5, $08
	smpsReturn

eggstation_Call29:
	dc.b	nC5, $08, nRst, nE5, nC5, nG4, nRst, nC5, nD5, $10, nE5, $08
	dc.b	nC5, $10, nA4, $08, nB4, $10, nRst, $08
	smpsReturn

eggstation_Call2A:
	dc.b	smpsNoAttack, $38
	smpsPSGvoice        $00
	dc.b	nE5, $08, nC5, nRst, nE5, nC5, nG4, nRst, nC5, nD5
	smpsReturn

eggstation_Call2B:
	dc.b	smpsNoAttack, $08, nE5, nC5, $10, nA4, $08, nB4, $10, nE5, $08, nC5
	dc.b	nRst, nE5, nC5, nG4, nRst, nC5, nD5
	smpsReturn

eggstation_Call2C:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        $00
	dc.b	nE5, nC5, $10, nA4, $08, nB4, $10, nRst, $48
	smpsReturn

eggstation_Call2D:
	dc.b	smpsNoAttack, $18, nE5, $08
	smpsReturn

eggstation_Call00:
	dc.b	dSnare, $03, dSnare, dSnare, $02, $08, $03, dSnare, dSnare, $02, $08, $03
	dc.b	dSnare, dSnare, $02, $08, dSnare, dSnare, dSnare, dSnare, $04, dSnare, dSnare, dSnare
	dc.b	dSnare, $08, $10, nRst, $08, dSnare
	smpsReturn

eggstation_Call01:
	dc.b	dSnare, $08, $04, dSnare, dSnare, dSnare, dSnare, $08, $10, $04, dSnare, dSnare
	dc.b	$08, dSnare, dSnare, $04, dSnare, dSnare, dSnare, dSnare, $08, $10, nRst, $08
	dc.b	dSnare
	smpsReturn

eggstation_Call02:
	dc.b	dSnare, $08, $04, dSnare, dSnare, dSnare, dSnare, $08, $10, $04, dSnare, dSnare
	dc.b	$08, $03, dSnare, dSnare, $02, $08, $03, dSnare, dSnare, $02, $08, $03
	dc.b	dSnare, dSnare, $02, $08, dSnare, dSnare
	smpsReturn

eggstation_Call03:
	dc.b	dSnare, $08, $04, dSnare, dSnare, dSnare, dSnare, $08, $10, nRst, $08, dSnare
	dc.b	dSnare, dSnare, $04, dSnare, dSnare, dSnare, dSnare, $08, $10, $04, dSnare, dSnare
	dc.b	$08
	smpsReturn

eggstation_Call04:
	dc.b	dSnare, $03, dSnare, dSnare, $02, $08, $03, dSnare, dSnare, $02, $08, $03
	dc.b	dSnare, dSnare, $02, $08, dSnare, dSnare, dSnare, $04, dSnare, dSnare, dSnare, dSnare
	dc.b	dSnare, dSnare, $08, dSnare, dSnare, $04, dSnare, dSnare, dSnare, dSnare, $08
	smpsReturn

eggstation_Call05:
	dc.b	dSnare, $10, nRst, $08, dSnare
	smpsReturn

eggstation_Voices:
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

