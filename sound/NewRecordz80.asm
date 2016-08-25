NewRecord_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     NewRecord_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $03, $00

	smpsHeaderDAC       NewRecord_DAC,	$00, $F2
	smpsHeaderFM        NewRecord_FM1,	$F4, $10
	smpsHeaderFM        NewRecord_FM2,	$F4, $10
	smpsHeaderFM        NewRecord_FM3,	$F4, $10
	smpsHeaderFM        NewRecord_FM4,	$F4, $20
	smpsHeaderFM        NewRecord_FM5,	$F4, $10
	smpsHeaderFM        NewRecord_FM6,	$F4, $10
	smpsHeaderPSG       NewRecord_PSG1,	$D0, $08, $00, $00
	smpsHeaderPSG       NewRecord_PSG2,	$D0, $02, $00, $00
	smpsHeaderPSG       NewRecord_PSG3,	$D0, $02, $00, $00

; DAC Data
NewRecord_DAC:
; FM1 Data
NewRecord_FM1:
	smpsCall            NewRecord_Call05
	smpsStop

; FM2 Data
NewRecord_FM2:
	smpsCall            NewRecord_Call04
	smpsStop

; FM3 Data
NewRecord_FM3:
	smpsCall            NewRecord_Call03
	smpsStop

; FM4 Data
NewRecord_FM4:
	smpsCall            NewRecord_Call02
	smpsStop

; FM5 Data
NewRecord_FM5:
	smpsCall            NewRecord_Call01
	smpsStop

; FM6 Data
NewRecord_FM6:
	smpsCall            NewRecord_Call00
	smpsStop

; PSG1 Data
NewRecord_PSG1:
	smpsCall            NewRecord_Call08
	smpsStop

; PSG2 Data
NewRecord_PSG2:
	smpsCall            NewRecord_Call07
	smpsStop

; PSG3 Data
NewRecord_PSG3:
	smpsCall            NewRecord_Call06
	smpsStop

NewRecord_Call05:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nD6, $02, nG6, nC7, nB6, nG6, nB6, $01, nRst, $75
	smpsReturn

NewRecord_Call04:
	smpsSetvoice        $01
	dc.b	nD6, $02
	smpsPan             panCenter, $00
	dc.b	nG6, nC7, nB6, nG6, nB6, $01, nRst, $75
	smpsReturn

NewRecord_Call03:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nD6, $02, nG6, nC7, nB6, nG6, nRst, $01, nB6, nRst, $0A, nD7
	dc.b	nRst, $60
	smpsReturn

NewRecord_Call02:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nD5, $08, nD5, nD5, nD5, $04, nD5, nRst, $60
	smpsReturn

NewRecord_Call01:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nD6, $02, nG6, nC7, nB6, nG6, nB6, $01, nRst, $75
	smpsReturn

NewRecord_Call00:
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nD6, $02, nG6, nC7, nB6, nG6, nRst, $01, nB6, nRst, $0A, nD7
	dc.b	nRst, $5F
	smpsReturn

NewRecord_Call08:
	dc.b	smpsNoAttack, nRst, $01
	smpsPSGvoice        $00
	dc.b	nD5, $08, nD5, nD5, nD5, $04, nD5, nRst, $5F
	smpsReturn

NewRecord_Call07:
	dc.b	smpsNoAttack, nRst, $01
	smpsPSGvoice        $00
	dc.b	nD6, $02, nG6, nC7, nB6, nG6, nB6, $01, nRst, $74
	smpsReturn

NewRecord_Call06:
	dc.b	smpsNoAttack, nRst, $0A
	smpsPSGvoice        $00
	dc.b	nD7, $0C, nRst, $6A
	smpsReturn

NewRecord_Voices:
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

