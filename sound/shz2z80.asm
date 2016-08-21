shz2z80_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     shz2z80_Voices
	smpsHeaderChan      $05, $02
	smpsHeaderTempo     $02, $04

	smpsHeaderDAC       shz2z80_DAC
	smpsHeaderFM        shz2z80_FM1,	$00, $0A
	smpsHeaderFM        shz2z80_FM2,	$00, $10
	smpsHeaderFM        shz2z80_FM3,	$00, $10
	smpsHeaderFM        shz2z80_FM4,	$00, $10
	smpsHeaderPSG       shz2z80_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       shz2z80_PSG2,	$DC, $02, $00, $00

; FM1 Data
shz2z80_FM1:
	smpsCall            shz2z80_Call19
	smpsCall            shz2z80_Call19
	smpsCall            shz2z80_Call1A
	smpsCall            shz2z80_Call1B
	smpsCall            shz2z80_Call1C
	smpsCall            shz2z80_Call1D
	smpsCall            shz2z80_Call1E
	smpsJump            shz2z80_FM1

; FM2 Data
shz2z80_FM2:
	smpsCall            shz2z80_Call13
	smpsCall            shz2z80_Call13
	smpsCall            shz2z80_Call14
	smpsCall            shz2z80_Call15
	smpsCall            shz2z80_Call16
	smpsCall            shz2z80_Call17
	smpsCall            shz2z80_Call18
	smpsJump            shz2z80_FM2

; FM3 Data
shz2z80_FM3:
	smpsCall            shz2z80_Call0D
	smpsCall            shz2z80_Call0E
	smpsCall            shz2z80_Call0F
	smpsCall            shz2z80_Call0F
	smpsCall            shz2z80_Call10
	smpsCall            shz2z80_Call11
	smpsCall            shz2z80_Call12
	smpsJump            shz2z80_FM3

; FM4 Data
shz2z80_FM4:
	smpsCall            shz2z80_Call07
	smpsCall            shz2z80_Call08
	smpsCall            shz2z80_Call09
	smpsCall            shz2z80_Call09
	smpsCall            shz2z80_Call0A
	smpsCall            shz2z80_Call0B
	smpsCall            shz2z80_Call0C
	smpsJump            shz2z80_FM4

; PSG1 Data
shz2z80_PSG1:
	smpsCall            shz2z80_Call26
	smpsCall            shz2z80_Call26
	smpsCall            shz2z80_Call27
	smpsCall            shz2z80_Call28
	smpsCall            shz2z80_Call29
	smpsCall            shz2z80_Call28
	smpsCall            shz2z80_Call2A
	smpsJump            shz2z80_PSG1

; PSG2 Data
shz2z80_PSG2:
	smpsPSGform         $E7
	smpsCall            shz2z80_Call1F
	smpsCall            shz2z80_Call20
	smpsCall            shz2z80_Call21
	smpsCall            shz2z80_Call22
	smpsCall            shz2z80_Call23
	smpsCall            shz2z80_Call24
	smpsCall            shz2z80_Call25
	smpsJump            shz2z80_PSG2

; DAC Data
shz2z80_DAC:
	smpsCall            shz2z80_Call00
	smpsCall            shz2z80_Call01
	smpsCall            shz2z80_Call02
	smpsCall            shz2z80_Call03
	smpsCall            shz2z80_Call04
	smpsCall            shz2z80_Call05
	smpsCall            shz2z80_Call06
	smpsJump            shz2z80_DAC

shz2z80_Call19:
	smpsSetvoice        $02
	dc.b	nC3, $10, nB2, $0C, $04, nA2, $0C, $04, nG2, $0C, $04, nF2
	dc.b	nF3, nF2, nF3, nF2, nF3, nF2, nF3, nG2, nG3, nG2, nG3, nG2
	dc.b	nG3, nG2, nG3
	smpsReturn

shz2z80_Call1A:
	dc.b	nF2, $04, nF2, nC3, nC3, nA2, nA2, nG2, nE2, nE2, nE2, nB2
	dc.b	nB2, nG2, nG2, nE2, nE2, nD3, nD3, nA2, $08, nB2, $04, nB2
	dc.b	nG3, nF3, $08, $04, nE3, $02, nE3, nE3, $04, nD3, nD3, nC3
	dc.b	nC3
	smpsReturn

shz2z80_Call1B:
	dc.b	nF2, $04, nF2, nC3, nC3, nA2, nA2, nG2, nE2, nE2, nE2, nB2
	dc.b	nB2, nG2, nG2, nE2, nE2, nD3, nD3, nC3, nC3, nB2, nB2, nA2
	dc.b	nA2, nA3, nA3, nG3, nG3, nFs3, nE3, nD3, nG2
	smpsReturn

shz2z80_Call1C:
	dc.b	nG2, $04, nG2, nC3, nC3, nB2, nC3, nD3, nG3, $08, nG2, nG2
	dc.b	$04, nRst, $10, nC2, $04, nC3, nC2, nC3, nC2, nC3, nC2, nD2
	dc.b	nE2, nE3, nE2, nE3, nE2, nE3, nE2, nG2
	smpsReturn

shz2z80_Call1D:
	dc.b	nF2, $04, nF3, nF2, nF3, nF2, nF3, nFs2, nG2, nG2, nE2, nF2
	dc.b	nG2, nF2, nE2, nD2, nC2, nA1, nA2, nA1, nA2, nA1, nB1, nC2
	dc.b	nD2, nE2, nE3, nE2, nE3, nE2, nE3, nE2, nG2
	smpsReturn

shz2z80_Call1E:
	dc.b	nF2, $04, nF3, nF2, nF3, nF2, nF3, nF2, nFs2, nG2, $08, nF2
	dc.b	nG2, $04, nF2, nE2, nD2, nF2, nC2, nF2, nG2, nRst, nD2, nRst
	dc.b	nC2, nRst, nC2, nE2, nRst, nF2, nRst, nFs2, nG2
	smpsReturn

shz2z80_Call13:
	smpsSetvoice        $00
	dc.b	nG4, $10, nC5, $08, nB4, $04, nG4, nRst, nG4, nD5, nRst, nC5
	dc.b	nRst, nG4, nRst, nB4, $08, nC5, $04, nA4, $10, nRst, $24
	smpsReturn

shz2z80_Call14:
	dc.b	nF5, $10, nA5, $08, nG5, $04, nE5, $14, nRst, $04, nE5, nF5
	dc.b	nG5, nF5, $08, nE5, nD5, nC5, $04, nD5, $08, nE5, $04, nD5
	dc.b	nE5, $08, nC5, $04, nD5, nE5
	smpsReturn

shz2z80_Call15:
	dc.b	nF5, $10, nA5, $08, nG5, $04, nE5, $14, nRst, $04, nE5, nF5
	dc.b	nG5, nFs5, $30, nA5, $04, nG5, nFs5, nG5
	smpsReturn

shz2z80_Call16:
	dc.b	smpsNoAttack, $2E, nRst, $02, nRst, $10, nE5, $08, nC6, nG5, nE5, $04
	dc.b	nG5, $08, nG5, nE5, nC5, $04, nD5, nE5
	smpsReturn

shz2z80_Call17:
	dc.b	nC5, $08, $04, $08, $04, nE5, nB4, $24, nE5, $08, nC6, nG5
	dc.b	nE5, $04, nG5, $08, nG5, nE5, nC5, $04, nD5, nE5
	smpsReturn

shz2z80_Call18:
	dc.b	nC5, $08, $04, $08, $04, nE5, nB4, $24, nF5, $04, nG5, nA5
	dc.b	nG5, nRst, nE5, nRst, nG5, $24
	smpsReturn

shz2z80_Call0D:
	dc.b	nRst, $40
	smpsSetvoice        $00
	dc.b	nG5, $0C, nF5, $10, nRst, $24
	smpsReturn

shz2z80_Call0E:
	dc.b	smpsNoAttack, nRst, $40, nG5, $0C, nF5, $10, nRst, $24
	smpsReturn

shz2z80_Call0F:
	dc.b	nF4, $10, nRst, $0C, nE4, $14, nRst, $50
	smpsReturn

shz2z80_Call10:
	dc.b	smpsNoAttack, nRst, $40, nE4, $10, nD4, $08, nC4, $04, nE4, $08, nD4
	dc.b	nC4, nG3, $04, nA3, nD4
	smpsReturn

shz2z80_Call11:
	dc.b	nC4, $08, nB3, $04, nA3, $08, $04, nG3, nB3, $24, nE4, $08
	dc.b	nE4, nD4, nC4, $04, nE4, $08, nD4, nC4, nG3, $04, nA3, nD4
	smpsReturn

shz2z80_Call12:
	dc.b	nC4, $08, nB3, $04, nA3, $08, $04, nG3, nB3, $24, nF4, $04
	dc.b	nF4, nA4, nG4, nRst, nD4, nRst, nE4, $24
	smpsReturn

shz2z80_Call07:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

shz2z80_Call08:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

shz2z80_Call09:
	smpsSetvoice        $00
	dc.b	nA5, $10, nC6, $08, nB5, $04, nG5, $14, nRst, $50
	smpsReturn

shz2z80_Call0A:
	dc.b	smpsNoAttack, nRst, $40, nG5, $08, nG5, nB5, nG5, $04, nC6, $08, nB5
	dc.b	nG5, nE5, $04, nF5, nG5
	smpsReturn

shz2z80_Call0B:
	dc.b	nG5, $08, nA5, $04, nG5, $08, nRst, nD5, $24, nG5, $08, nG5
	dc.b	nB5, nG5, $04, nC6, $08, nB5, nG5, nE5, $04, nF5, nG5
	smpsReturn

shz2z80_Call0C:
	dc.b	nG5, $08, nA5, $04, nG5, $08, nRst, nD5, $24, nA5, $04, nB5
	dc.b	nC6, nB5, nRst, nG5, nRst, nC6, $24
	smpsReturn

shz2z80_Call26:
	dc.b	nRst, $60
	smpsPSGvoice        fTone_01
	dc.b	nG4, $02, nA4, nB4, nC5, nA4, nB4, nC5, nD5, nB4, nC5, nD5
	dc.b	nE5, nD5, nE5, nF5, nG5
	smpsReturn

shz2z80_Call27:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

shz2z80_Call28:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

shz2z80_Call29:
	dc.b	smpsNoAttack, nRst, $1C
	smpsPSGvoice        fTone_01
	dc.b	nG4, $02, nRst, $04, nA4, $02, nB4, nC5, nA4, nB4, nC5, nD5
	dc.b	nB4, nC5, nD5, nE5, nD5, nE5, nF5, nG5, nRst, $40
	smpsReturn

shz2z80_Call2A:
	dc.b	smpsNoAttack, nRst, $5C
	smpsPSGvoice        fTone_01
	dc.b	nG4, $02, nRst, $04, nA4, $02, nB4, nC5, nA4, nB4, nC5, nD5
	dc.b	nB4, nC5, nD5, nE5, nD5, nE5, nF5, nG5
	smpsReturn

shz2z80_Call1F:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, $08, $04, nRst, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nCs0, $08, nCs0, nCs0, nCs0, $04, nRst, nCs0, $08, nCs0
	dc.b	nCs0, nCs0, $04, nRst, nCs0
	smpsReturn

shz2z80_Call20:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, $08, $04, nRst, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nCs0, nRst, nCs0, $08, nCs0, nCs0, $04, nRst, nCs0, $08
	dc.b	nCs0, nCs0, nCs0, $04, nRst, nCs0
	smpsReturn

shz2z80_Call21:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0, $07, $05, $04, nRst, nCs0
	dc.b	nCs0, nRst, nCs0, $08, $04, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nCs0, nCs0
	smpsReturn

shz2z80_Call22:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nCs0, nRst, nCs0
	dc.b	nCs0, nRst, nCs0, $08, $04, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nCs0, nCs0
	smpsReturn

shz2z80_Call23:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nCs0, $08, nCs0, nCs0, nCs0, $04, nRst, nCs0, $08, nCs0
	dc.b	nCs0, nCs0, $04, nRst, nCs0
	smpsReturn

shz2z80_Call24:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, $04, nRst, nCs0, $08, nCs0, nCs0, nCs0, $04
	dc.b	nRst, nCs0, nRst, nCs0, $08, nCs0, nCs0, $04, nRst, nCs0, $08, nCs0
	dc.b	nCs0, nCs0, $04, nRst, nCs0
	smpsReturn

shz2z80_Call25:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, $04, nRst, nCs0, $08, nCs0, nCs0, nCs0, $04
	dc.b	nRst, nCs0, nRst, nCs0, nRst, nCs0, $08, $04, nRst, nCs0, nRst, nCs0
	dc.b	nRst, nCs0, $08, $04, nCs0, nCs0
	smpsReturn

shz2z80_Call00:
	dc.b	$86, $0C, $04, dKick, nRst, $08, dKick, $04, $86, dKick, nRst, $86
	dc.b	dKick, $08, dKick, $86, dKick, $86, $04, $86, dKick, $08, $86, dKick
	dc.b	$86, $04, dKick, dKick, dKick
	smpsReturn

shz2z80_Call01:
	dc.b	$86, $0C, $04, dKick, nRst, $08, dKick, $04, $86, dKick, nRst, $86
	dc.b	dKick, $08, $04, dKick, $86, $08, dKick, $86, $04, $86, dKick, $08
	dc.b	$86, dKick, $86, $04, dKick, dKick, dKick
	smpsReturn

shz2z80_Call02:
	dc.b	$86, $08, dKick, $04, nRst, $08, $86, $04, dKick, $08, $86, dKick
	dc.b	$04, $86, $08, $04, dKick, $08, $86, dKick, $04, nRst, $08, $86
	dc.b	$04, dKick, $86, nRst, $86, dKick, $86, $86, $08, dKick
	smpsReturn

shz2z80_Call03:
	dc.b	$86, $08, dKick, $04, nRst, $08, $86, $04, dKick, $86, nRst, $86
	dc.b	dKick, $86, $08, $04, dKick, $08, $86, dKick, $04, nRst, $08, $86
	dc.b	$04, dKick, $86, nRst, $86, dKick, $86, $86, $08, dKick, $04, $86
	smpsReturn

shz2z80_Call04:
	dc.b	$86, $04, $86, dKick, nRst, $86, $86, dKick, $86, nRst, dKick, dKick
	dc.b	dKick, nRst, $86, dKick, $08, $86, dKick, $86, $04, $86, dKick, $08
	dc.b	$86, dKick, $86, $04, $86, dKick, $08
	smpsReturn

shz2z80_Call05:
	dc.b	$86, $08, dKick, $86, $04, $86, dKick, $08, $86, dKick, $86, $04
	dc.b	dKick, dKick, dKick, $86, $08, dKick, $86, $04, $86, dKick, $08, $86
	dc.b	dKick, $86, $04, $86, dKick, $08
	smpsReturn

shz2z80_Call06:
	dc.b	$86, $08, dKick, $86, $04, $86, dKick, $08, $86, dKick, $86, $04
	dc.b	dKick, dKick, dKick, $86, dKick, nRst, $08, nRst, $04, $86, dKick, $86
	dc.b	nRst, $86, dKick, $08, $86, $04, dKick, dKick, dKick
	smpsReturn

shz2z80_Voices:
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

