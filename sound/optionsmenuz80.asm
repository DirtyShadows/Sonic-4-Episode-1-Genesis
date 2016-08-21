optionsmenus4_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     optionsmenus4_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       optionsmenus4_DAC
	smpsHeaderFM        optionsmenus4_FM1,	$00, $10
	smpsHeaderFM        optionsmenus4_FM2,	$F4, $18
	smpsHeaderFM        optionsmenus4_FM3,	$F4, $18
	smpsHeaderFM        optionsmenus4_FM4,	$E8, $10
	smpsHeaderFM        optionsmenus4_FM5,	$E8, $10
	smpsHeaderPSG       optionsmenus4_PSG1,	$D0, $04, $00, $00
	smpsHeaderPSG       optionsmenus4_PSG2,	$D0, $04, $00, $00
	smpsHeaderPSG       optionsmenus4_PSG3,	$D0, $01, $00, $00

; FM1 Data
optionsmenus4_FM1:
	smpsCall            optionsmenus4_Call0F
	smpsCall            optionsmenus4_Call10
	smpsCall            optionsmenus4_Call11
	smpsCall            optionsmenus4_Call11
	smpsJump            optionsmenus4_FM1

; FM2 Data
optionsmenus4_FM2:
	smpsCall            optionsmenus4_Call0C
	smpsCall            optionsmenus4_Call0D
	smpsCall            optionsmenus4_Call0E
	smpsCall            optionsmenus4_Call0E
	smpsJump            optionsmenus4_FM2

; FM3 Data
optionsmenus4_FM3:
	smpsCall            optionsmenus4_Call09
	smpsCall            optionsmenus4_Call0A
	smpsCall            optionsmenus4_Call0B
	smpsCall            optionsmenus4_Call0B
	smpsJump            optionsmenus4_FM3

; FM4 Data
optionsmenus4_FM4:
	smpsCall            optionsmenus4_Call06
	smpsCall            optionsmenus4_Call07
	smpsCall            optionsmenus4_Call08
	smpsCall            optionsmenus4_Call08
	smpsJump            optionsmenus4_FM4

; FM5 Data
optionsmenus4_FM5:
	smpsCall            optionsmenus4_Call03
	smpsCall            optionsmenus4_Call04
	smpsCall            optionsmenus4_Call05
	smpsCall            optionsmenus4_Call05
	smpsJump            optionsmenus4_FM5

; PSG1 Data
optionsmenus4_PSG1:
	smpsCall            optionsmenus4_Call18
	smpsCall            optionsmenus4_Call19
	smpsCall            optionsmenus4_Call1A
	smpsCall            optionsmenus4_Call1B
	smpsJump            optionsmenus4_PSG1

; PSG2 Data
optionsmenus4_PSG2:
	smpsCall            optionsmenus4_Call15
	smpsCall            optionsmenus4_Call16
	smpsCall            optionsmenus4_Call17
	smpsCall            optionsmenus4_Call17
	smpsJump            optionsmenus4_PSG2

; PSG3 Data
optionsmenus4_PSG3:
	smpsPSGform         $E7
	smpsCall            optionsmenus4_Call12
	smpsCall            optionsmenus4_Call13
	smpsCall            optionsmenus4_Call14
	smpsCall            optionsmenus4_Call14
	smpsJump            optionsmenus4_PSG3

; DAC Data
optionsmenus4_DAC:
	smpsCall            optionsmenus4_Call00
	smpsCall            optionsmenus4_Call01
	smpsCall            optionsmenus4_Call02
	smpsCall            optionsmenus4_Call02
	smpsJump            optionsmenus4_DAC

optionsmenus4_Call0F:
	smpsSetvoice        $00
	dc.b	nC3, $04, nRst, nC3, $08, nB2, $04, nRst, nB2, $08, nA2, $04
	dc.b	nRst, nA2, $08, nG2, $04, nRst, nG2, $08, nF3, $04, nRst, nF3
	dc.b	$08, nC3, $04, nRst, nC3, $08, nD3, $04, nRst, nD3, $08, nG2
	dc.b	$02, nRst, nG2, $04, nA2, nB2
	smpsReturn

optionsmenus4_Call10:
	dc.b	nC3, $04, nRst, nC3, $08, nB2, $04, nRst, nB2, $08, nA2, $04
	dc.b	nRst, nA2, $08, nG2, $04, nRst, nG2, $08, nF3, $04, nRst, nF3
	dc.b	$08, nC3, $04, nRst, nC3, $08, nD3, $04, nRst, nD3, $08, nG2
	dc.b	$02, nRst, nG2, $04, nA2, nB2
	smpsReturn

optionsmenus4_Call11:
	dc.b	nF2, $02, nRst, nF2, $08, nC3, $04, nRst, nC3, $06, nRst, $02
	dc.b	nC3, $04, nG2, $02, nRst, nG2, $08, nA2, $04, nRst, nA2, nB2
	dc.b	nC3, nF2, $02, nRst, nF2, $08, nC3, $04, nRst, nE3, nB2, nC3
	dc.b	nB2, $02, nRst, nG2, $08, nC3, $04, nRst, nF3, nE3, nC3
	smpsReturn

optionsmenus4_Call0C:
	dc.b	smpsNoAttack, $04
	smpsSetvoice        $01
	dc.b	nG5, $02, nA5, nG5, nRst, nC6, nRst, nD6, $06, nC6, $02, nRst
	dc.b	$0C, nC5, $02, nA5, nG5, nRst, nC6, nRst, nD6, $06, nC6, $02
	dc.b	nRst, $04, nG5, nA5, $06, nE6, $02, nRst, $04, nC6, nG6, $06
	dc.b	nC6, $02, nRst, $04, nE6, nA5, $0C, nB5, $02, nRst, $06, nB5
	dc.b	$04, nG5, $08
	smpsReturn

optionsmenus4_Call0D:
	dc.b	nRst, $04, nG5, $02, nA5, nG5, nRst, nC6, nRst, nD6, $06, nG5
	dc.b	$02, nRst, $0C, nC5, $02, nA5, nC6, nRst, nC6, nRst, nD6, $06
	dc.b	nE6, $02, nRst, $04, nC6, nF6, $06, nE6, $02, nRst, $04, nC6
	dc.b	nG5, $06, nF6, $02, nRst, $04, nE6, nA5, $0C, nB5, $02, nRst
	dc.b	$06, nB5, $04, nG5, $08
	smpsReturn

optionsmenus4_Call0E:
	dc.b	nA6, $04, nG6, nD6, nC6, $08, $04, nB5, nE6, nB5, $0C, nA5
	dc.b	$10, nRst, $04, nC6, nB5, nF6, nE6, $08, nC6, $04, nD6, nA5
	dc.b	nD6, $0C, nC6, nRst, $08
	smpsReturn

optionsmenus4_Call09:
	dc.b	smpsNoAttack, $04
	smpsSetvoice        $01
	dc.b	nC5, $02, nE5, nC6, nRst, nG5, nRst, nB5, $06, nG5, $02, nRst
	dc.b	$0C, nG5, $02, nE5, nC6, nRst, nG5, nRst, nB5, $06, nE6, $02
	dc.b	nRst, $04, nC6, nF6, $06, nC6, $02, nRst, $04, nA5, nG5, $06
	dc.b	nF6, $02, nRst, $04, nG5, nD6, $14, nRst, $0C
	smpsReturn

optionsmenus4_Call0A:
	dc.b	smpsNoAttack, $04, nC5, $02, nE5, nC6, nRst, nG5, nRst, nB5, $06, nC6
	dc.b	$02, nRst, $0C, nG5, $02, nE5, nG5, nRst, nG5, nRst, nB5, $06
	dc.b	nC6, $02, nRst, $04, nG5, nA5, $06, nC6, $02, nRst, $04, nA5
	dc.b	nG6, $06, nC6, $02, nRst, $04, nG5, nD6, $14, nRst, $0C
	smpsReturn

optionsmenus4_Call0B:
	dc.b	nF6, $04, nE6, nF6, nE6, $08, nG5, $04, nD6, nC6, nD6, $0C
	dc.b	nE6, $10, nRst, $04, nA6, nG6, nA5, nG5, $08, nE5, $04, nG5
	dc.b	nE6, nB5, $0C, nG5, nRst, $08
	smpsReturn

optionsmenus4_Call06:
	dc.b	smpsNoAttack, $04
	smpsSetvoice        $01
	dc.b	nC5, $02, nA5, nC6, nRst, nC6, nRst, nD6, $06, nC6, $02, nRst
	dc.b	$0C, nC5, $02, nA5, nC6, nRst, nC6, nRst, nD6, $06, nE6, $02
	dc.b	nRst, $04, nG5, nA5, $06, nE6, $02, nRst, $04, nC6, nG6, $06
	dc.b	nC6, $02, nRst, $04, nE6, nD6, $14, nB5, $04, nG5, nRst
	smpsReturn

optionsmenus4_Call07:
	dc.b	smpsNoAttack, $04, nG5, $02, nA5, nC6, nRst, nC6, nRst, nD6, $06, nG5
	dc.b	$02, nRst, $0C, nC5, $02, nA5, nG5, nRst, nC6, nRst, nD6, $06
	dc.b	nC6, $02, nRst, $04, nC6, nF6, $06, nE6, $02, nRst, $04, nC6
	dc.b	nG5, $06, nF6, $02, nRst, $04, nG5, nD6, $14, nB5, $04, nG5
	dc.b	$08
	smpsReturn

optionsmenus4_Call08:
	dc.b	nF6, $04, nE6, nD6, nC6, $08, $04, nB5, nE6, nB5, $0C, nA5
	dc.b	$10, nRst, $04, nC6, nG6, nF6, nG5, $08, nE5, $04, nD6, nE6
	dc.b	nB5, $0C, nG5, nRst, $08
	smpsReturn

optionsmenus4_Call03:
	dc.b	smpsNoAttack, $04
	smpsSetvoice        $01
	dc.b	nG5, $02, nE5, nG5, nRst, nG5, nRst, nB5, $06, nG5, $02, nRst
	dc.b	$0C, nG5, $02, nE5, nG5, nRst, nG5, nRst, nB5, $06, nC6, $02
	dc.b	nRst, $04, nC6, nF6, $06, nC6, $02, nRst, $04, nA5, nG5, $06
	dc.b	nF6, $02, nRst, $04, nG5, nA5, $0C, nB5, $02, nRst, $12
	smpsReturn

optionsmenus4_Call04:
	dc.b	smpsNoAttack, $04, nC5, $02, nE5, nG5, nRst, nG5, nRst, nB5, $06, nC6
	dc.b	$02, nRst, $0C, nG5, $02, nE5, nC6, nRst, nG5, nRst, nB5, $06
	dc.b	nE6, $02, nRst, $04, nG5, nA5, $06, nC6, $02, nRst, $04, nA5
	dc.b	nG6, $06, nC6, $02, nRst, $04, nE6, nA5, $0C, nB5, $02, nRst
	dc.b	$12
	smpsReturn

optionsmenus4_Call05:
	dc.b	nA6, $04, nG6, nF6, nE6, $08, nG5, $04, nD6, nC6, nD6, $0C
	dc.b	nE6, $10, nRst, $04, nA6, nB5, nA5, nE6, $08, nC6, $04, nG5
	dc.b	nA5, nD6, $0C, nC6, nRst, $08
	smpsReturn

optionsmenus4_Call18:
	dc.b	smpsNoAttack, $60
	smpsPSGvoice        $00
	dc.b	nA6, $02, nG6, nF6, nE6, nA6, nG6, nF6, nE6, nB6, nA6, nG6
	dc.b	nF6, nG6, nF6, nE6, nD6
	smpsReturn

optionsmenus4_Call19:
	dc.b	nRst, $60, nA6, $02, nG6, nF6, nE6, nA6, nG6, nF6, nE6, nB6
	dc.b	nA6, nG6, nF6, nG6, nA6, nB6, nD7
	smpsReturn

optionsmenus4_Call1A:
	dc.b	nRst, $34, nE7, $02, nD7, nC7, nRst, nA6, nRst, $36, nF7, $02
	dc.b	nD7, nE7, nRst, nC7, nRst
	smpsReturn

optionsmenus4_Call1B:
	dc.b	smpsNoAttack, $34, nE7, $02, nD7, nC7, nRst, nA6, nRst, $36, nF7, $02
	dc.b	nD7, nE7, nRst, nC7, nRst
	smpsReturn

optionsmenus4_Call15:
	dc.b	smpsNoAttack, $64
	smpsPSGvoice        $00
	dc.b	nA6, $02, nG6, nF6, nE6, nA6, nG6, nF6, nE6, nB6, nA6, nG6
	dc.b	nF6, nG6, nF6
	smpsReturn

optionsmenus4_Call16:
	dc.b	nE6, $02, nD6, nRst, $60, nA6, $02, nG6, nF6, nE6, nA6, nG6
	dc.b	nF6, nE6, nB6, nA6, nG6, nF6, nG6, nA6
	smpsReturn

optionsmenus4_Call17:
	dc.b	nA6, $02, nRst, $36, nE7, $02, nD7, nC7, nRst, nA6, nRst, $36
	dc.b	nF7, $02, nD7, nE7, nRst
	smpsReturn

optionsmenus4_Call12:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, nCs0, $02, $06, $08, nCs0, nCs0, nCs0, $02
	dc.b	$06, $08, nCs0, nCs0, nCs0, $02, $06, $08, nCs0, nCs0, nCs0, $02
	dc.b	nCs0
	smpsReturn

optionsmenus4_Call13:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, nCs0, $02, $06, $08, nCs0, nCs0, nCs0, $02
	dc.b	$06, $08, nCs0, nCs0, nCs0, $02, $06, $08, nCs0, nCs0, nCs0, $02
	dc.b	nCs0
	smpsReturn

optionsmenus4_Call14:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, $02, $06, $02, nRst, $06, nCs0, $08, nCs0, nCs0, $02
	dc.b	$06, $08, nCs0, nCs0, nCs0, $02, $06, $08, nCs0, nCs0, nCs0, $02
	dc.b	$06, $08, $04
	smpsReturn

optionsmenus4_Call00:
	dc.b	dKick, $08, dSnare, $06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick
	dc.b	dSnare, $06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick, dSnare, $06
	dc.b	$02, dKick, $04, $02, nRst, dSnare, $08, dKick, dSnare, $06, $02, dKick
	dc.b	$04, $02, nRst, dSnare, $04, $02, dSnare
	smpsReturn

optionsmenus4_Call01:
	dc.b	dKick, $06, nRst, $02, dSnare, $06, $02, dKick, $04, $02, nRst, dSnare
	dc.b	$08, dKick, dSnare, $06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick
	dc.b	dSnare, $06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick, $04, dSnare
	dc.b	dSnare, $06, $02, dKick, $04, dSnare, dSnare, $02, dSnare, dSnare, dSnare
	smpsReturn

optionsmenus4_Call02:
	dc.b	dKick, $06, nRst, $02, dSnare, $06, $02, dKick, $04, dKick, dSnare, $08
	dc.b	dKick, dSnare, $06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick, dSnare
	dc.b	$06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick, dSnare, dSnare, $02
	dc.b	dSnare, dSnare, $04, $08
	smpsReturn

optionsmenus4_Voices:
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
;	$3C
;	$32, $32, $D4, $D2, 	$16, $50, $14, $51, 	$05, $08, $05, $08
;	$00, $08, $08, $08, 	$63, $27, $53, $27, 	$1E, $00, $22, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $0D, $0D, $03, $03
	smpsVcCoarseFreq    $02, $04, $02, $02
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $11, $14, $10, $16
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $05, $08, $05
	smpsVcDecayRate2    $08, $08, $08, $00
	smpsVcDecayLevel    $02, $05, $02, $06
	smpsVcReleaseRate   $07, $03, $07, $03
	smpsVcTotalLevel    $00, $22, $00, $1E

