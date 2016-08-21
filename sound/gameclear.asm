gameclear_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     gameclear_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       gameclear_DAC
	smpsHeaderFM        gameclear_FM1,	$00, $0C
	smpsHeaderFM        gameclear_FM2,	$F4, $0E
	smpsHeaderFM        gameclear_FM3,	$F4, $0E
	smpsHeaderFM        gameclear_FM4,	$F4, $0E
	smpsHeaderFM        gameclear_FM5,	$F4, $0E
	smpsHeaderPSG       gameclear_PSG1,	$D0, $06, $00, $00
	smpsHeaderPSG       gameclear_PSG2,	$D0, $06, $00, $00
	smpsHeaderPSG       gameclear_PSG3,	$D0, $02, $00, $00

; FM1 Data
gameclear_FM1:
	smpsCall            gameclear_Call14
	smpsCall            gameclear_Call15
	smpsCall            gameclear_Call16
	smpsCall            gameclear_Call17
	smpsStop

; FM2 Data
gameclear_FM2:
	smpsCall            gameclear_Call10
	smpsCall            gameclear_Call11
	smpsCall            gameclear_Call12
	smpsCall            gameclear_Call13
	smpsStop

; FM3 Data
gameclear_FM3:
	smpsCall            gameclear_Call0C
	smpsCall            gameclear_Call0D
	smpsCall            gameclear_Call0E
	smpsCall            gameclear_Call0F
	smpsStop

; FM4 Data
gameclear_FM4:
	smpsCall            gameclear_Call08
	smpsCall            gameclear_Call09
	smpsCall            gameclear_Call0A
	smpsCall            gameclear_Call0B
	smpsStop

; FM5 Data
gameclear_FM5:
	smpsCall            gameclear_Call04
	smpsCall            gameclear_Call05
	smpsCall            gameclear_Call06
	smpsCall            gameclear_Call07
	smpsStop

; PSG1 Data
gameclear_PSG1:
	smpsCall            gameclear_Call20
	smpsCall            gameclear_Call21
	smpsCall            gameclear_Call22
	smpsCall            gameclear_Call23
	smpsStop

; PSG2 Data
gameclear_PSG2:
	smpsCall            gameclear_Call1C
	smpsCall            gameclear_Call1D
	smpsCall            gameclear_Call1E
	smpsCall            gameclear_Call1F
	smpsStop

; PSG3 Data
gameclear_PSG3:
	smpsPSGform         $E7
	smpsCall            gameclear_Call18
	smpsCall            gameclear_Call19
	smpsCall            gameclear_Call1A
	smpsCall            gameclear_Call1B
	smpsStop

; DAC Data
gameclear_DAC:
	smpsCall            gameclear_Call00
	smpsCall            gameclear_Call01
	smpsCall            gameclear_Call02
	smpsCall            gameclear_Call03
	smpsStop

gameclear_Call14:
	dc.b	smpsNoAttack, $20
	smpsSetvoice        $00
	dc.b	nG3, $04, nG4, nG3, nG4, nG3, nG4, nG3, nG4, nF3, nF4, nF3
	dc.b	nF4, nF3, nF4, nF3, nF4, nE3, nE4, nE3, nE4, nE3, nE4, nE3
	dc.b	nE4
	smpsReturn

gameclear_Call15:
	dc.b	nEb3, $04, nEb4, nEb3, nEb4, nEb3, nEb4, nF3, nF4, nG3, nG4, nG3
	dc.b	nG4, nG3, nG4, nG3, nG4, nF3, nF4, nF3, nF4, nF3, nF4, nF3
	dc.b	nF4, nE3, nE4, nE3, nE4, nE3, nE4, nE3, nE4
	smpsReturn

gameclear_Call16:
	dc.b	nEb3, $04, nEb4, nEb3, nEb4, nEb3, nEb4, nF3, nF4, nC3, nC4, nC3
	dc.b	nD3, $08, nD4, $04, nD3, nEb3, $08, nEb4, $04, nEb3, nEb4, nF3
	dc.b	nRst, nF4, nG3, $24
	smpsReturn

gameclear_Call17:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

gameclear_Call10:
	dc.b	smpsNoAttack, nRst, $20
	smpsSetvoice        $01
	dc.b	nG5, $04, nRst, $02, nG5, nA5, nRst, nC6, $04, nRst, nB5, nRst
	dc.b	nA5, nRst, nA5, nB5, nG5, $12, nRst, $02, nG5, $04, nRst, $02
	dc.b	nG5, nA5, nRst, nC6, $04, nRst, nB5, nRst, nG5, $02, nRst
	smpsReturn

gameclear_Call11:
	dc.b	smpsNoAttack, $04, nG5, $02, nRst, nA5, $0E, nRst, $02, nG5, $04, nRst
	dc.b	nG5, nRst, $02, nG5, nA5, nRst, nC6, $04, nRst, nB5, nRst, nA5
	dc.b	nRst, nA5, nB5, nG5, $12, nRst, $02, nG5, $04, nRst, $02, nG5
	dc.b	nA5, nRst, nC6, $04, nRst, nB5, nRst, nG5, $02, nRst
	smpsReturn

gameclear_Call12:
	dc.b	smpsNoAttack, $04, nG5, $02, nRst, nA5, $0E, nRst, $02, nG5, $08, nE5
	dc.b	$04, nFs5, nG5, nC6, $08, nB5, nA5, $06, nRst, $02, nA5, $04
	dc.b	nG5, $08, nBb5, $04, nA5, nRst, nG5, $24
	smpsReturn

gameclear_Call13:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

gameclear_Call0C:
	dc.b	smpsNoAttack, nRst, $20
	smpsSetvoice        $01
	dc.b	nG5, $04, nRst, $02, nG5, nA5, nRst, nC6, $04, nRst, nB5, nRst
	dc.b	nA5, nRst, nA5, nB5, nG5, $12, nRst, $02, nG5, $04, nRst, $02
	dc.b	nG5, nA5, nRst, nC6, $04, nRst, nB5, nRst, nG5
	smpsReturn

gameclear_Call0D:
	dc.b	smpsNoAttack, $02, nRst, nG5, nRst, nA5, $0E, nRst, $02, nG5, $04, nRst
	dc.b	nG5, nRst, $02, nG5, nA5, nRst, nC6, $04, nRst, nB5, nRst, nA5
	dc.b	nRst, nA5, nB5, nG5, $12, nRst, $02, nG5, $04, nRst, $02, nG5
	dc.b	nA5, nRst, nC6, $04, nRst, nB5, nRst, nG5
	smpsReturn

gameclear_Call0E:
	dc.b	smpsNoAttack, $02, nRst, nG5, nRst, nA5, $0E, nRst, $02, nG5, $08, nE5
	dc.b	$0C, nC6, $08, nB5, nA5, $06, nRst, $02, nA5, $04, nG5, $08
	dc.b	nBb5, $04, nA5, nRst, nG5, $24
	smpsReturn

gameclear_Call0F:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

gameclear_Call08:
	dc.b	smpsNoAttack, nRst, $20
	smpsSetvoice        $01
	dc.b	nD5, $0A, nRst, $02, nD5, $04, nRst, nD5, nRst, nF5, nRst, nF5
	dc.b	nRst, nF5, $08, nE5, $04, nD5, nC5, nE5, $0A, nRst, $02, nG5
	dc.b	$04, nRst, nG5, nRst, nE5
	smpsReturn

gameclear_Call09:
	dc.b	smpsNoAttack, $02, nRst, $06, nEb5, $10, nC5, $08, nD5, $0A, nRst, $02
	dc.b	nD5, $04, nRst, nD5, nRst, nF5, nRst, nF5, nRst, nF5, $08, nE5
	dc.b	$04, nD5, nC5, nE5, $0A, nRst, $02, nG5, $04, nRst, nG5, nRst
	dc.b	nE5
	smpsReturn

gameclear_Call0A:
	dc.b	smpsNoAttack, $02, nRst, $06, nEb5, $10, nC5, $08, nRst, $04, nFs5, nG5
	dc.b	nFs5, $10, nEb5, $06, nRst, $02, nEb5, $04, $08, nF5, $04, nF5
	dc.b	nRst, nD5, $24
	smpsReturn

gameclear_Call0B:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

gameclear_Call04:
	dc.b	smpsNoAttack, nRst, $20
	smpsSetvoice        $01
	dc.b	nD5, $0A, nRst, $02, nD5, $04, nRst, nD5, nRst, nF5, nRst, nF5
	dc.b	nRst, nF5, $08, nE5, $04, nD5, nC5, nE5, $0A, nRst, $02, nE5
	dc.b	$04, nRst, nE5, nRst, nE5, $02, nRst
	smpsReturn

gameclear_Call05:
	dc.b	smpsNoAttack, $08, nEb5, $10, nC5, $08, nD5, $0A, nRst, $02, nD5, $04
	dc.b	nRst, nD5, nRst, nF5, nRst, nF5, nRst, nF5, $08, nE5, $04, nD5
	dc.b	nC5, nE5, $0A, nRst, $02, nE5, $04, nRst, nE5, nRst, nE5, $02
	dc.b	nRst
	smpsReturn

gameclear_Call06:
	dc.b	smpsNoAttack, $08, nEb5, $10, nC5, $08, nE5, $0C, nFs5, $10, nEb5, $06
	dc.b	nRst, $02, nEb5, nRst, nEb5, $08, nF5, $02, nRst, nF5, $04, nRst
	dc.b	nD5, $24
	smpsReturn

gameclear_Call07:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

gameclear_Call20:
	dc.b	smpsNoAttack, nRst, $24
	smpsPSGvoice        $00
	dc.b	nG5, $04, nRst, $02, nG5, nA5, nRst, nC6, $04, nRst, nB5, nRst
	dc.b	nA5, nRst, nA5, nB5, nG5, $12, nRst, $02, nG5, $04, nRst, $02
	dc.b	nG5, nA5, nRst, nC6, $04, nRst, nB5, nRst
	smpsReturn

gameclear_Call21:
	dc.b	nG5, $06, nRst, $02, nG5, nRst, nA5, $0E, nRst, $02, nG5, $04
	dc.b	nRst, nG5, nRst, $02, nG5, nA5, nRst, nC6, $04, nRst, nB5, nRst
	dc.b	nA5, nRst, nA5, nB5, nG5, $12, nRst, $02, nG5, $04, nRst, $02
	dc.b	nG5, nA5, nRst, nC6, $04, nRst, nB5, nRst
	smpsReturn

gameclear_Call22:
	dc.b	nG5, $06, nRst, $02, nG5, nRst, nA5, $0E, nRst, $02, nG5, $08
	dc.b	nE5, $0C, nC6, $08, nB5, nA5, $06, nRst, $02, nA5, $04, nG5
	dc.b	$08, nBb5, $04, nA5, nRst, nG5, $20
	smpsReturn

gameclear_Call23:
	dc.b	smpsNoAttack, $04, nRst, $7C
	smpsReturn

gameclear_Call1C:
	dc.b	smpsNoAttack, nRst, $24
	smpsPSGvoice        $00
	dc.b	nD5, $0A, nRst, $02, nD5, $04, nRst, nD5, nRst, nF5, nRst, nF5
	dc.b	nRst, nF5, $08, nE5, $04, nD5, nC5, nE5, $0A, nRst, $02, nG5
	dc.b	$04, nRst, nG5, nRst
	smpsReturn

gameclear_Call1D:
	dc.b	nE5, $06, nRst, nEb5, $10, nC5, $08, nD5, $0A, nRst, $02, nD5
	dc.b	$04, nRst, nD5, nRst, nF5, nRst, nF5, nRst, nF5, $08, nE5, $04
	dc.b	nD5, nC5, nE5, $0A, nRst, $02, nG5, $04, nRst, nG5, nRst
	smpsReturn

gameclear_Call1E:
	dc.b	nE5, $06, nRst, nEb5, $10, nC5, $08, nRst, $04, nFs5, nG5, nFs5
	dc.b	$10, nEb5, $06, nRst, $02, nEb5, $04, $08, nF5, $04, nF5, nRst
	dc.b	nD5, $20
	smpsReturn

gameclear_Call1F:
	dc.b	smpsNoAttack, $04, nRst, $7C
	smpsReturn

gameclear_Call18:
	dc.b	nRst, $24
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, $08, nCs0, nCs0, $04, $08, nCs0, nCs0, nCs0
	dc.b	$04, nCs0, nCs0, $08, $04, $08, nCs0, nCs0, $04, nCs0
	smpsReturn

gameclear_Call19:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, $04, nCs0, nCs0, $08, $04, $08, nCs0, nCs0
	dc.b	$04, $08, nCs0, nCs0, nCs0, $04, nCs0, nCs0, $08, $04, $08, nCs0
	dc.b	nCs0, $04, nCs0
	smpsReturn

gameclear_Call1A:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, $04, $08, nCs0, nCs0, $04, $08, nCs0, nCs0
	dc.b	nCs0, nCs0, nCs0, $04, nCs0, nCs0, $08, nRst, $1C
	smpsReturn

gameclear_Call1B:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

gameclear_Call00:
	dc.b	dSnare, $04, dKick, dKick, dSnare, dKick, dKick, dSnare, $02, dSnare, dSnare, dSnare
	dc.b	dKick, $08, dSnare, dKick, $04, dKick, dSnare, nRst, dKick, $08, dSnare, dKick
	dc.b	$04, dKick, dSnare, nRst, dKick, $08, dSnare, dKick, $04, dKick, dSnare, nRst
	smpsReturn

gameclear_Call01:
	dc.b	dKick, $08, dSnare, dKick, $04, dKick, dSnare, dKick, dKick, $08, dSnare, dKick
	dc.b	$04, dKick, dSnare, nRst, dKick, $08, dSnare, dKick, $04, dKick, dSnare, nRst
	dc.b	dKick, $08, dSnare, dKick, $04, dKick, dSnare, nRst
	smpsReturn

gameclear_Call02:
	dc.b	dKick, $08, dSnare, dKick, $04, dSnare, dSnare, dSnare, dKick, dKick, dSnare, dKick
	dc.b	$08, $04, dSnare, dKick, $08, $04, dSnare, dKick, dSnare, nRst, dSnare, dKick
	dc.b	nRst, $20
	smpsReturn

gameclear_Call03:
	dc.b	nRst, $7F, nRst, $01
	smpsReturn

gameclear_Voices:
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

