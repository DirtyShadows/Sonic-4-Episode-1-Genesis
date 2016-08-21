SuperSonicS4_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SuperSonicS4_Voices
	smpsHeaderChan      $05, $03
	smpsHeaderTempo     $03, $0F

	smpsHeaderDAC       SuperSonicS4_DAC
	smpsHeaderFM        SuperSonicS4_FM1,	$F4, $05
	smpsHeaderFM        SuperSonicS4_FM2,	$F4, $10
	smpsHeaderFM        SuperSonicS4_FM3,	$F4, $14
	smpsHeaderFM        SuperSonicS4_FM4,	$F4, $11
	smpsHeaderPSG       SuperSonicS4_PSG1,	$D0, $02, $00, $00
	smpsHeaderPSG       SuperSonicS4_PSG2,	$D0, $02, $00, $00
	smpsHeaderPSG       SuperSonicS4_PSG3,	$D0, $02, $00, $00

; FM1 Data
SuperSonicS4_FM1:
	smpsCall            SuperSonicS4_Call29
	smpsCall            SuperSonicS4_Call2A

SuperSonicS4_Jump04:
	smpsCall            SuperSonicS4_Call2B
	smpsCall            SuperSonicS4_Call2C
	smpsCall            SuperSonicS4_Call2D
	smpsCall            SuperSonicS4_Call2E
	smpsCall            SuperSonicS4_Call2B
	smpsCall            SuperSonicS4_Call2C
	smpsCall            SuperSonicS4_Call2D
	smpsCall            SuperSonicS4_Call2E
	smpsCall            SuperSonicS4_Call2F
	smpsCall            SuperSonicS4_Call30
	smpsCall            SuperSonicS4_Call31
	smpsCall            SuperSonicS4_Call32
	smpsJump            SuperSonicS4_Jump04

; FM2 Data
SuperSonicS4_FM2:
	smpsCall            SuperSonicS4_Call1E
	smpsCall            SuperSonicS4_Call1F

SuperSonicS4_Jump03:
	smpsCall            SuperSonicS4_Call20
	smpsCall            SuperSonicS4_Call21
	smpsCall            SuperSonicS4_Call22
	smpsCall            SuperSonicS4_Call23
	smpsCall            SuperSonicS4_Call20
	smpsCall            SuperSonicS4_Call21
	smpsCall            SuperSonicS4_Call22
	smpsCall            SuperSonicS4_Call24
	smpsCall            SuperSonicS4_Call25
	smpsCall            SuperSonicS4_Call26
	smpsCall            SuperSonicS4_Call27
	smpsCall            SuperSonicS4_Call28
	smpsJump            SuperSonicS4_Jump03

; FM3 Data
SuperSonicS4_FM3:
	smpsPan             panLeft, $00
	smpsCall            SuperSonicS4_Call12
	smpsCall            SuperSonicS4_Call13

SuperSonicS4_Jump02:
	smpsCall            SuperSonicS4_Call14
	smpsCall            SuperSonicS4_Call15
	smpsCall            SuperSonicS4_Call16
	smpsCall            SuperSonicS4_Call17
	smpsCall            SuperSonicS4_Call18
	smpsCall            SuperSonicS4_Call15
	smpsCall            SuperSonicS4_Call16
	smpsCall            SuperSonicS4_Call19
	smpsCall            SuperSonicS4_Call1A
	smpsCall            SuperSonicS4_Call1B
	smpsCall            SuperSonicS4_Call1C
	smpsCall            SuperSonicS4_Call1D
	smpsJump            SuperSonicS4_Jump02

; FM4 Data
SuperSonicS4_FM4:
	smpsCall            SuperSonicS4_Call07
	smpsCall            SuperSonicS4_Call08

SuperSonicS4_Jump01:
	smpsCall            SuperSonicS4_Call09
	smpsCall            SuperSonicS4_Call0A
	smpsCall            SuperSonicS4_Call0B
	smpsCall            SuperSonicS4_Call0C
	smpsCall            SuperSonicS4_Call09
	smpsCall            SuperSonicS4_Call0A
	smpsCall            SuperSonicS4_Call0B
	smpsCall            SuperSonicS4_Call0D
	smpsCall            SuperSonicS4_Call0E
	smpsCall            SuperSonicS4_Call0F
	smpsCall            SuperSonicS4_Call10
	smpsCall            SuperSonicS4_Call11
	smpsJump            SuperSonicS4_Jump01

; PSG1 Data
SuperSonicS4_PSG1:
	smpsCall            SuperSonicS4_Call3F
	smpsCall            SuperSonicS4_Call3F

SuperSonicS4_Jump07:
	smpsCall            SuperSonicS4_Call40
	smpsCall            SuperSonicS4_Call41
	smpsCall            SuperSonicS4_Call42
	smpsCall            SuperSonicS4_Call43
	smpsCall            SuperSonicS4_Call40
	smpsCall            SuperSonicS4_Call41
	smpsCall            SuperSonicS4_Call42
	smpsCall            SuperSonicS4_Call43
	smpsCall            SuperSonicS4_Call44
	smpsCall            SuperSonicS4_Call45
	smpsCall            SuperSonicS4_Call46
	smpsCall            SuperSonicS4_Call47
	smpsJump            SuperSonicS4_Jump07

; PSG2 Data
SuperSonicS4_PSG2:
	smpsCall            SuperSonicS4_Call3A
	smpsCall            SuperSonicS4_Call3A

SuperSonicS4_Jump06:
	smpsCall            SuperSonicS4_Call3B
	smpsCall            SuperSonicS4_Call3C
	smpsCall            SuperSonicS4_Call3D
	smpsCall            SuperSonicS4_Call3E
	smpsCall            SuperSonicS4_Call3B
	smpsCall            SuperSonicS4_Call3C
	smpsCall            SuperSonicS4_Call3D
	smpsCall            SuperSonicS4_Call3E
	smpsCall            SuperSonicS4_Call3A
	smpsCall            SuperSonicS4_Call3A
	smpsCall            SuperSonicS4_Call3A
	smpsCall            SuperSonicS4_Call3A
	smpsJump            SuperSonicS4_Jump06

; PSG3 Data
SuperSonicS4_PSG3:
	smpsPSGform         $E7
	smpsCall            SuperSonicS4_Call33
	smpsCall            SuperSonicS4_Call34

SuperSonicS4_Jump05:
	smpsCall            SuperSonicS4_Call35
	smpsCall            SuperSonicS4_Call36
	smpsCall            SuperSonicS4_Call36
	smpsCall            SuperSonicS4_Call37
	smpsCall            SuperSonicS4_Call36
	smpsCall            SuperSonicS4_Call36
	smpsCall            SuperSonicS4_Call36
	smpsCall            SuperSonicS4_Call38
	smpsCall            SuperSonicS4_Call35
	smpsCall            SuperSonicS4_Call36
	smpsCall            SuperSonicS4_Call36
	smpsCall            SuperSonicS4_Call39
	smpsJump            SuperSonicS4_Jump05

; DAC Data
SuperSonicS4_DAC:
	smpsCall            SuperSonicS4_Call00
	smpsCall            SuperSonicS4_Call01

SuperSonicS4_Jump00:
	smpsCall            SuperSonicS4_Call02
	smpsCall            SuperSonicS4_Call03
	smpsCall            SuperSonicS4_Call04
	smpsCall            SuperSonicS4_Call05
	smpsCall            SuperSonicS4_Call02
	smpsCall            SuperSonicS4_Call03
	smpsCall            SuperSonicS4_Call04
	smpsCall            SuperSonicS4_Call06
	smpsCall            SuperSonicS4_Call00
	smpsCall            SuperSonicS4_Call04
	smpsCall            SuperSonicS4_Call00
	smpsCall            SuperSonicS4_Call03
	smpsJump            SuperSonicS4_Jump00

SuperSonicS4_Call29:
	smpsSetvoice        $01
	dc.b	nC3, $06, nE3, nG3, $04
	smpsReturn

SuperSonicS4_Call2A:
	dc.b	nFs3, $02, nE3, nD3, nA3, nG3, nFs3, nE3, nD3
	smpsReturn

SuperSonicS4_Call2B:
	dc.b	nG3, $02, nRst, nG3, $03, nRst, $01, nD3, $02, nRst, nD3, $04
	smpsReturn

SuperSonicS4_Call2C:
	dc.b	nF3, $02, nRst, nF3, nC3, $04, nRst, $02, nC3, $04
	smpsReturn

SuperSonicS4_Call2D:
	dc.b	nE3, $02, nRst, nE3, nB2, $04, nRst, $02, nB2, $04
	smpsReturn

SuperSonicS4_Call2E:
	dc.b	nEb3, $01, nRst, nEb3, $02, nBb2, $04, nF3, $01, nRst, nF3, $02
	dc.b	nC3, $04
	smpsReturn

SuperSonicS4_Call2F:
	dc.b	nEb3, $04, nBb2, $02, nEb3, $04, nBb3, $02, nAb3, nG3
	smpsReturn

SuperSonicS4_Call30:
	dc.b	nF3, $04, nC3, $02, nF3, $04, nC4, $02, nF4, $04
	smpsReturn

SuperSonicS4_Call31:
	dc.b	nFs3, $04, nCs3, $02, nFs3, $04, nCs4, $02, nB3, nBb3
	smpsReturn

SuperSonicS4_Call32:
	dc.b	nAb3, $04, nEb3, $02, nAb3, $04, nEb4, $02, nAb4, $04
	smpsReturn

SuperSonicS4_Call1E:
	smpsSetvoice        $00
	dc.b	nG5, $06, nFs5, nE5, $04
	smpsReturn

SuperSonicS4_Call1F:
	dc.b	nD5, $02, nE5, nFs5, nG5, nA5, nB5, nC6, nD6
	smpsReturn

SuperSonicS4_Call20:
	dc.b	nD5, $06, nRst, $02, nG5, $06, nRst, $02
	smpsReturn

SuperSonicS4_Call21:
	dc.b	nA5, $04, nRst, $02, nG5, $04, nRst, $02, nF5, $04
	smpsReturn

SuperSonicS4_Call22:
	dc.b	nRst, $04, nB5, $08, nG5, $02, nRst
	smpsReturn

SuperSonicS4_Call23:
	dc.b	nEb5, $04, nG5, $02, nRst, nF5, $04, nA5, $02, nRst
	smpsReturn

SuperSonicS4_Call24:
	dc.b	nEb5, $04, nG5, nEb5, $02, nG5, nF5, nA5
	smpsReturn

SuperSonicS4_Call25:
	dc.b	nG5, $06, nEb5, nG5, $03, nRst, $01
	smpsReturn

SuperSonicS4_Call26:
	dc.b	nA5, $02, nRst, nF5, $0A, nRst, $02
	smpsReturn

SuperSonicS4_Call27:
	dc.b	nBb5, $06, nFs5, nBb5, $03, nRst, $01
	smpsReturn

SuperSonicS4_Call28:
	dc.b	nC6, $03, nRst, $01, nBb5, $02, nCs6, nC6, nBb5, nAb5, nEb5
	smpsReturn

SuperSonicS4_Call12:
	dc.b	smpsNoAttack, $04
	smpsSetvoice        $00
	dc.b	nG5, $06, nFs5
	smpsReturn

SuperSonicS4_Call13:
	dc.b	nE5, $04, nD5, $02, nE5, nFs5, nG5, nA5, nB5
	smpsReturn

SuperSonicS4_Call14:
	dc.b	nC6, $02, nD6, nD5, $06, nRst, $02, nG5, $04
	smpsReturn

SuperSonicS4_Call15:
	dc.b	smpsNoAttack, $02, nRst, nA5, $04, nRst, $02, nG5, $04, nRst, $02
	smpsReturn

SuperSonicS4_Call16:
	dc.b	nF5, $04, nRst, nB5, $08
	smpsReturn

SuperSonicS4_Call17:
	dc.b	nG5, $02, nRst, nEb5, $04, nG5, $02, nRst, nF5, $04
	smpsReturn

SuperSonicS4_Call18:
	dc.b	nA5, $02, nRst, nD5, $06, nRst, $02, nG5, $04
	smpsReturn

SuperSonicS4_Call19:
	dc.b	nG5, $02, nRst, nEb5, $04, nG5, nEb5, $02, nG5
	smpsReturn

SuperSonicS4_Call1A:
	dc.b	nF5, $02, nA5, nG5, $06, nEb5
	smpsReturn

SuperSonicS4_Call1B:
	dc.b	nG5, $03, nRst, $01, nA5, $02, nRst, nF5, $08
	smpsReturn

SuperSonicS4_Call1C:
	dc.b	smpsNoAttack, $02, nRst, nBb5, $06, nFs5
	smpsReturn

SuperSonicS4_Call1D:
	dc.b	nBb5, $03, nRst, $01, nC6, $03, nRst, $01, nBb5, $02, nCs6, nC6
	dc.b	nBb5
	smpsReturn

SuperSonicS4_Call07:
	smpsSetvoice        $00
	dc.b	nD5, $06, nC5, nA4, $04
	smpsReturn

SuperSonicS4_Call08:
	dc.b	nFs4, $02, nA4, nC5, nD5, nFs5, nG5, nE5, nC5
	smpsReturn

SuperSonicS4_Call09:
	dc.b	nB4, $07, nRst, $01, nB4, $07, nRst, $01
	smpsReturn

SuperSonicS4_Call0A:
	dc.b	nC5, $05, nRst, $01, nC5, $05, nRst, $01, nC5, $04
	smpsReturn

SuperSonicS4_Call0B:
	dc.b	smpsNoAttack, $01, nRst, $03, nE5, $07, nRst, $01, nE5, $03, nRst, $01
	smpsReturn

SuperSonicS4_Call0C:
	dc.b	nBb4, $07, nRst, $01, nC5, $07, nRst, $01
	smpsReturn

SuperSonicS4_Call0D:
	dc.b	nBb4, $06, nRst, $02, nBb4, $04, nC5
	smpsReturn

SuperSonicS4_Call0E:
	dc.b	nBb4, $0F, nRst, $01
	smpsReturn

SuperSonicS4_Call0F:
	dc.b	nC5, $0F, nRst, $01
	smpsReturn

SuperSonicS4_Call10:
	dc.b	nCs5, $0F, nRst, $01
	smpsReturn

SuperSonicS4_Call11:
	dc.b	nEb5, $0B, nRst, $05
	smpsReturn

SuperSonicS4_Call3F:
	dc.b	smpsNoAttack, nRst, $10
	smpsReturn

SuperSonicS4_Call40:
	smpsPSGvoice        $00
	dc.b	nB5, $02, nRst, nB5, nRst, nB5, nRst, nB5, nRst
	smpsReturn

SuperSonicS4_Call41:
	dc.b	nC6, $05, nRst, $01, nC6, $05, nRst, $01, nC6, $03, nRst, $01
	smpsReturn

SuperSonicS4_Call42:
	dc.b	nB5, $02, nRst, nB5, $07, nRst, $01, nB5, $04
	smpsReturn

SuperSonicS4_Call43:
	dc.b	nG6, $02, nF6, nEb6, nC7, nBb6, nA6, nG6, nF6
	smpsReturn

SuperSonicS4_Call44:
	dc.b	nEb5, $02, nBb5, nEb6, nF6, nAb6, nG6, nF6, nEb6
	smpsReturn

SuperSonicS4_Call45:
	dc.b	nF6, $02, nF5, nA5, nBb5, nC6, nEb6, nF6, nA6
	smpsReturn

SuperSonicS4_Call46:
	dc.b	nFs6, $02, nFs5, nBb5, nCs6, nFs6, nBb6, nD7, nFs6
	smpsReturn

SuperSonicS4_Call47:
	dc.b	nAb7, $02, nEb7, nC7, nBb6, nAb6, nEb6, nC6, nAb5
	smpsReturn

SuperSonicS4_Call3A:
	dc.b	smpsNoAttack, $10
	smpsReturn

SuperSonicS4_Call3B:
	smpsPSGvoice        $00
	dc.b	nG5, $02, nRst, nG5, nRst, nD5, nRst, nG5, nRst
	smpsReturn

SuperSonicS4_Call3C:
	dc.b	nA5, $05, nRst, $01, nG5, $05, nRst, $01, nG5, $03, nRst, $01
	smpsReturn

SuperSonicS4_Call3D:
	dc.b	nE5, $02, nRst, nE5, $07, nRst, $01, nG5, $04
	smpsReturn

SuperSonicS4_Call3E:
	dc.b	nRst, $10
	smpsReturn

SuperSonicS4_Call33:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, nRst, nCs0, nCs0, nRst
	smpsReturn

SuperSonicS4_Call34:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, nRst, nCs0, nCs0, nCs0
	smpsReturn

SuperSonicS4_Call35:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst
	smpsReturn

SuperSonicS4_Call36:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst
	smpsReturn

SuperSonicS4_Call37:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst
	smpsReturn

SuperSonicS4_Call38:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, nRst, nCs0
	smpsReturn

SuperSonicS4_Call39:
	dc.b	smpsNoAttack, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, $04, nCs0, $02, nCs0, nRst
	smpsReturn

SuperSonicS4_Call00:
	dc.b	dKick, $02, nRst, dSnare, dKick, nRst, dKick, dSnare, nRst
	smpsReturn

SuperSonicS4_Call01:
	dc.b	dKick, $02, nRst, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare
	smpsReturn

SuperSonicS4_Call02:
	dc.b	dKick, $02, nRst, dSnare, nRst, $04, dKick, $02, dSnare, nRst
	smpsReturn

SuperSonicS4_Call03:
	dc.b	dKick, $02, nRst, dSnare, dKick, nRst, dKick, dSnare, dSnare
	smpsReturn

SuperSonicS4_Call04:
	dc.b	dKick, $02, nRst, dSnare, nRst, $04, dKick, $02, dSnare, dSnare
	smpsReturn

SuperSonicS4_Call05:
	dc.b	dKick, $02, dKick, dSnare, dSnare, dKick, dSnare, dSnare, dSnare
	smpsReturn

SuperSonicS4_Call06:
	dc.b	dKick, $02, nRst, dSnare, nRst, dKick, dSnare, dSnare, dSnare
	smpsReturn

SuperSonicS4_Voices:
;	Voice $00
;	$3D
;	$01, $01, $01, $11, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$60, $89, $59, $79, 	$18, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $09, $09, $09, $00
	smpsVcTotalLevel    $00, $00, $00, $18

;	Voice $01
;	$04
;	$00, $00, $00, $02, 	$9F, $1F, $9F, $1F, 	$0A, $0A, $13, $14
;	$03, $02, $0E, $08, 	$3A, $1A, $FA, $7A, 	$17, $08, $07, $08
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $00, $00, $00
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $14, $13, $0A, $0A
	smpsVcDecayRate2    $08, $0E, $02, $03
	smpsVcDecayLevel    $07, $0F, $01, $03
	smpsVcReleaseRate   $0A, $0A, $0A, $0A
	smpsVcTotalLevel    $08, $07, $08, $17

