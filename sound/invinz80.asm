invinsonic4_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     invinsonic4_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       invinsonic4_DAC
	smpsHeaderFM        invinsonic4_FM1,	$00, $10
	smpsHeaderFM        invinsonic4_FM2,	$F4, $10
	smpsHeaderFM        invinsonic4_FM3,	$00, $10
	smpsHeaderFM        invinsonic4_FM4,	$00, $10
	smpsHeaderFM        invinsonic4_FM5,	$00, $10
	smpsHeaderPSG       invinsonic4_PSG1,	$D0, $02, $00, $00
	smpsHeaderPSG       invinsonic4_PSG2,	$D0, $06, $00, $00
	smpsHeaderPSG       invinsonic4_PSG3,	$D0, $02, $00, $00

; FM1 Data
invinsonic4_FM1:
	smpsCall            invinsonic4_Call12

invinsonic4_Jump05:
	smpsCall            invinsonic4_Call13
	smpsCall            invinsonic4_Call14
	smpsCall            invinsonic4_Call15
	smpsJump            invinsonic4_Jump05

; FM2 Data
invinsonic4_FM2:
	smpsCall            invinsonic4_Call0E

invinsonic4_Jump04:
	smpsCall            invinsonic4_Call0F
	smpsCall            invinsonic4_Call10
	smpsCall            invinsonic4_Call11
	smpsJump            invinsonic4_Jump04

; FM3 Data
invinsonic4_FM3:
	smpsCall            invinsonic4_Call0B

invinsonic4_Jump03:
	smpsCall            invinsonic4_Call0C
	smpsCall            invinsonic4_Call0C
	smpsCall            invinsonic4_Call0D
	smpsJump            invinsonic4_Jump03

; FM4 Data
invinsonic4_FM4:
	smpsCall            invinsonic4_Call07

invinsonic4_Jump02:
	smpsCall            invinsonic4_Call08
	smpsCall            invinsonic4_Call09
	smpsCall            invinsonic4_Call0A
	smpsJump            invinsonic4_Jump02

; FM5 Data
invinsonic4_FM5:
	smpsCall            invinsonic4_Call04

invinsonic4_Jump01:
	smpsCall            invinsonic4_Call05
	smpsCall            invinsonic4_Call05
	smpsCall            invinsonic4_Call06
	smpsJump            invinsonic4_Jump01

; PSG1 Data
invinsonic4_PSG1:
	smpsCall            invinsonic4_Call1E

invinsonic4_Jump08:
	smpsCall            invinsonic4_Call1F
	smpsCall            invinsonic4_Call20
	smpsCall            invinsonic4_Call21
	smpsJump            invinsonic4_Jump08

; PSG2 Data
invinsonic4_PSG2:
	smpsCall            invinsonic4_Call1A

invinsonic4_Jump07:
	smpsCall            invinsonic4_Call1B
	smpsCall            invinsonic4_Call1C
	smpsCall            invinsonic4_Call1D
	smpsJump            invinsonic4_Jump07

; PSG3 Data
invinsonic4_PSG3:
	smpsPSGform         $E7
	smpsCall            invinsonic4_Call16

invinsonic4_Jump06:
	smpsCall            invinsonic4_Call17
	smpsCall            invinsonic4_Call18
	smpsCall            invinsonic4_Call19
	smpsJump            invinsonic4_Jump06

; DAC Data
invinsonic4_DAC:
	smpsCall            invinsonic4_Call00

invinsonic4_Jump00:
	smpsCall            invinsonic4_Call01
	smpsCall            invinsonic4_Call02
	smpsCall            invinsonic4_Call03
	smpsJump            invinsonic4_Jump00

invinsonic4_Call12:
	smpsSetvoice        $00
	dc.b	nG2, $04, nD3, $02, nG2, $05, nRst, $01, nG2, $04, nA2, nE3
	dc.b	$02, nA2, $05, nRst, $01, nA2, $04, nBb2, nF3, $02, nBb2, $05
	dc.b	nRst, $01, nBb2, $04, nC3, nG3, $02, nC3, $05, nRst, $01, nC3
	dc.b	$04, nD3, $05, nRst, $01, nD3, $02, nA2, $04, nD3, $05, nRst
	dc.b	$03, nD3, $04, nA2, $02, nA3, nD3, nD4, nG4, nC3, nC4, nG3
	dc.b	nG2, nRst, nG3, nG2, nC3, nRst, nC3, nC4, nG2, nG3, nC3, nC4
	smpsReturn

invinsonic4_Call13:
	dc.b	nB2, $05, nRst, $01, nB2, $02, nFs2, $04, nB2, $05, nRst, $03
	dc.b	nB2, $04, nFs2, $02, nFs3, nB2, nB3, nE4, nA4, nA3, nE3, nA3
	dc.b	nRst, nE3, nE2, nA2, nRst, nA2, nA3, nCs3, nD3, nEb3, nE3, nD3
	dc.b	$05, nRst, $01, nD3, $02, nA2, $04, nD3, $05, nRst, $03, nD3
	dc.b	$04, nA2, $02, nA3, nD3, nD4, nG4, nC3, nC4, nG3, nG2, nRst
	dc.b	nG3, nG2, nC3, nRst, nC3, nC4, nG2, nG3, nC3, nC4
	smpsReturn

invinsonic4_Call14:
	dc.b	nB2, $05, nRst, $01, nB2, $02, nFs2, $04, nB2, $05, nRst, $03
	dc.b	nB2, $04, nFs2, $02, nFs3, nB2, nB3, nE4, nA4, nA3, nE3, nA3
	dc.b	nRst, nE3, nE2, nA2, nRst, nA2, nA3, nCs3, nD3, nEb3, nE3, nG2
	dc.b	$04, nD3, $02, nG2, $06, nG3, $03, nRst, $01, nA2, $04, nE3
	dc.b	$02, nA2, $06, nA3, $03, nRst, $01, nBb2, $04, nF3, $02, nBb2
	dc.b	$06, nBb3, $03, nRst, $01, nC3, $04, nG3, $02, nC3, $06, nC4
	dc.b	$03, nRst, $01
	smpsReturn

invinsonic4_Call15:
	dc.b	nD3, $05, nRst, $01, nD3, $02, nA2, $04, nD3, $05, nRst, $03
	dc.b	nD3, $04, nA2, $02, nA3, nD3, nD4, nG4, nC3, nC4, nG3, nG2
	dc.b	nRst, nG3, nG2, nC3, nRst, nC3, nC4, nG2, nG3, nC3, nC4
	smpsReturn

invinsonic4_Call0E:
	smpsSetvoice        $01
	dc.b	nG5, $05, nRst, $01, nB5, $04, nA5, $02, nG5, nRst, nA5, $05
	dc.b	nRst, $01, nCs6, $04, nB5, $02, nA5, nRst, nBb5, $05, nRst, $01
	dc.b	nD6, $04, nC6, $02, nBb5, nRst, nC6, $05, nRst, $01, nE6, $04
	dc.b	nD6, $02, nC6, nRst, nD6, $04, nRst, $02, nD6, nE6, nRst, nG6
	dc.b	$04, nRst, nFs6, nRst, nE6, nRst, nE6, nFs6, nD6, $12, nRst, $02
	smpsReturn

invinsonic4_Call0F:
	dc.b	nD6, $04, nRst, $02, nD6, nE6, nRst, nD6, $04, nRst, nD6, nRst
	dc.b	nCs6, $1C, nRst, $08, nD6, $04, nRst, $02, nD6, nE6, nRst, nG6
	dc.b	$04, nRst, nFs6, nRst, nE6, nRst, nE6, nFs6, nD6, $12, nRst, $02
	smpsReturn

invinsonic4_Call10:
	dc.b	nD6, $04, nRst, $02, nD6, nE6, nRst, nD6, $04, nRst, nD6, nRst
	dc.b	nCs6, $1C, nRst, $08, nB5, $02, nCs6, nD6, nB5, $04, nCs6, $02
	dc.b	nD6, $03, nRst, $01, nCs6, $02, nD6, nE6, nCs6, $04, nD6, $02
	dc.b	nE6, $03, nRst, $01, nD6, $02, nE6, nF6, nD6, $04, nE6, $02
	dc.b	nF6, $03, nRst, $01, nE6, $02, nF6, nG6, nE6, $04, nF6, $02
	dc.b	nG6, nE6
	smpsReturn

invinsonic4_Call11:
	dc.b	nD6, $04, nRst, $02, nD6, nE6, nRst, nG6, $04, nRst, nFs6, nRst
	dc.b	nE6, nRst, nE6, nFs6, nD6, $12, nRst, $02
	smpsReturn

invinsonic4_Call0B:
	smpsSetvoice        $01
	dc.b	nC6, $05, nRst, $0B, nD6, $05, nRst, $0B, nEb6, $05, nRst, $0B
	dc.b	nF6, $05, nRst, $4B
	smpsReturn

invinsonic4_Call0C:
	dc.b	smpsNoAttack, nRst, $0C
	smpsSetvoice        $01
	dc.b	nG6, $04, nRst, nFs6, nRst, nE6, $1C, nRst, $48
	smpsReturn

invinsonic4_Call0D:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

invinsonic4_Call07:
	smpsSetvoice        $01
	dc.b	nG4, $05, nRst, $01, nB4, $04, nA4, $02, nG4, nRst, nA4, $05
	dc.b	nRst, $01, nCs5, $04, nB4, $02, nA4, nRst, nBb4, $05, nRst, $01
	dc.b	nD5, $04, nC5, $02, nBb4, nRst, nC5, $05, nRst, $01, nE5, $04
	dc.b	nD5, $02, nC5, nRst, nD5, $04, nRst, $02, nD5, nE5, nRst, nG5
	dc.b	$04, nRst, nFs5, nRst, nE5, nRst, nE5, nFs5, nD5, $12, nRst, $02
	smpsReturn

invinsonic4_Call08:
	dc.b	nD5, $04, nRst, $02, nD5, nE5, nRst, nD5, $04, nRst, nD5, nRst
	dc.b	nCs5, $1C, nRst, $08, nD5, $04, nRst, $02, nD5, nE5, nRst, nG5
	dc.b	$04, nRst, nFs5, nRst, nE5, nRst, nE5, nFs5, nD5, $12, nRst, $02
	smpsReturn

invinsonic4_Call09:
	dc.b	nD5, $04, nRst, $02, nD5, nE5, nRst, nD5, $04, nRst, nD5, nRst
	dc.b	nCs5, $1C, nRst, $08, nB4, $02, nCs5, nD5, nB4, $04, nCs5, $02
	dc.b	nD5, $03, nRst, $01, nCs5, $02, nD5, nE5, nCs5, $04, nD5, $02
	dc.b	nE5, $03, nRst, $01, nD5, $02, nE5, nF5, nD5, $04, nE5, $02
	dc.b	nF5, $03, nRst, $01, nE5, $02, nF5, nG5, nE5, $04, nF5, $02
	dc.b	nG5, nE5
	smpsReturn

invinsonic4_Call0A:
	dc.b	nD5, $04, nRst, $02, nD5, nE5, nRst, nG5, $04, nRst, nFs5, nRst
	dc.b	nE5, nRst, nE5, nFs5, nD5, $12, nRst, $02
	smpsReturn

invinsonic4_Call04:
	smpsSetvoice        $01
	dc.b	nC5, $05, nRst, $0B, nD5, $05, nRst, $0B, nEb5, $05, nRst, $0B
	dc.b	nF5, $05, nRst, $4B
	smpsReturn

invinsonic4_Call05:
	dc.b	smpsNoAttack, nRst, $0C
	smpsSetvoice        $01
	dc.b	nG5, $04, nRst, nFs5, nRst, nE5, $1C, nRst, $48
	smpsReturn

invinsonic4_Call06:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

invinsonic4_Call1E:
	dc.b	smpsNoAttack, nRst, $06
	smpsPSGvoice        $00
	dc.b	nD5, $09, nRst, $01, nE5, $05, nRst, $01, nE5, $09, nRst, $01
	dc.b	nF5, $05, nRst, $01, nF5, $09, nRst, $01, nG5, $05, nRst, $01
	dc.b	nG5, $09, nRst, $01, nA5, $0A, nRst, $02, nA5, $04, nRst, nA5
	dc.b	nRst, nC6, nRst, nC6, nRst, nC6, $08, nB5, $04, nA5, nG5
	smpsReturn

invinsonic4_Call1F:
	dc.b	nB5, $0A, nRst, $02, nB5, $04, nRst, nB5, nRst, nA5, $1C, nRst
	dc.b	$08, nA5, $0A, nRst, $02, nA5, $04, nRst, nA5, nRst, nC6, nRst
	dc.b	nC6, nRst, nC6, $08, nB5, $04, nA5, nG5
	smpsReturn

invinsonic4_Call20:
	dc.b	nB5, $0A, nRst, $02, nB5, $04, nRst, nB5, nRst, nA5, $18, nRst
	dc.b	$0C, nG5, $02, nRst, $04, nG5, $06, nRst, $04, nA5, $02, nRst
	dc.b	$04, nA5, $06, nRst, $04, nBb5, $02, nRst, $04, nBb5, $06, nRst
	dc.b	$04, nC6, $02, nRst, $04, nC6, $06, nRst, $04
	smpsReturn

invinsonic4_Call21:
	dc.b	nA5, $0A, nRst, $02, nA5, $04, nRst, nA5, nRst, nC6, nRst, nC6
	dc.b	nRst, nC6, $08, nB5, $04, nA5, nG5
	smpsReturn

invinsonic4_Call1A:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        $00
	dc.b	nG5, $05, nRst, $01, nB5, $04, nA5, $02, nG5, nRst, nA5, $05
	dc.b	nRst, $01, nCs6, $04, nB5, $02, nA5, nRst, nBb5, $05, nRst, $01
	dc.b	nD6, $04, nC6, $02, nBb5, nRst, nC6, $05, nRst, $01, nE6, $04
	dc.b	nD6, $02, nC6, nRst, nD6, $04, nRst, $02, nD6, nE6, nRst, nG6
	dc.b	$04, nRst, nFs6, nRst, nE6, nRst, nE6, nFs6, nD6, $02, nRst, $0E
	smpsReturn

invinsonic4_Call1B:
	dc.b	smpsNoAttack, nRst, $04, nD6, nRst, $02, nD6, nE6, nRst, nD6, $04, nRst
	dc.b	nD6, nRst, nCs6, $1C, nRst, $08, nD6, $04, nRst, $02, nD6, nE6
	dc.b	nRst, nG6, $04, nRst, nFs6, nRst, nE6, nRst, nE6, nFs6, nD6, $02
	dc.b	nRst, $0E
	smpsReturn

invinsonic4_Call1C:
	dc.b	smpsNoAttack, nRst, $04, nD6, nRst, $02, nD6, nE6, nRst, nD6, $04, nRst
	dc.b	nD6, nRst, nCs6, $1C, nRst, $08, nB5, $02, nCs6, nD6, nB5, $04
	dc.b	nCs6, $02, nD6, $03, nRst, $01, nCs6, $02, nD6, nE6, nCs6, $04
	dc.b	nD6, $02, nE6, $03, nRst, $01, nD6, $02, nE6, nF6, nD6, $04
	dc.b	nE6, $02, nF6, $03, nRst, $01, nE6, $02, nF6, nG6, nE6, $04
	dc.b	nF6, $02
	smpsReturn

invinsonic4_Call1D:
	dc.b	nG6, $02, nE6, nD6, $04, nRst, $02, nD6, nE6, nRst, nG6, $04
	dc.b	nRst, nFs6, nRst, nE6, nRst, nE6, nFs6, nD6, $01, nRst, $0F
	smpsReturn

invinsonic4_Call16:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, $02, $04, $02, $04, nCs0, nCs0, $02, $04, $02, $04
	dc.b	nCs0, nCs0, $02, $04, $02, $04, nCs0, nCs0, $02, $04, $02, nCs0
	dc.b	nRst, nCs0, $04, $02, $04, $02, $04, $02, nCs0, nCs0, $04, nCs0
	dc.b	nCs0, nCs0, nCs0, $02, $04, $02, $04, $02, $04, $02, $04, nCs0
	smpsReturn

invinsonic4_Call17:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, $02, $04, $02, $04, $02, nCs0, nCs0, $04, nCs0, nCs0
	dc.b	nCs0, nCs0, $02, $04, $02, $04, $02, $04, $02, $04, nCs0, nCs0
	dc.b	nCs0, $02, $04, $02, $04, $02, nCs0, nCs0, $04, nCs0, nCs0, nCs0
	dc.b	nCs0, $02, $04, $02, $04, $02, $04, $02, $04, nCs0
	smpsReturn

invinsonic4_Call18:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, $02, $04, $02, $04, $02, nCs0, nCs0, $04, nCs0, nCs0
	dc.b	nCs0, nCs0, $02, $04, $02, $04, $02, $04, $02, $04, nCs0, nCs0
	dc.b	nCs0, $02, $04, $02, $04, nCs0, nCs0, $02, $04, $02, $04, nCs0
	dc.b	nCs0, $02, $04, $02, $04, nCs0, nCs0, nCs0, nCs0, $02, nCs0
	smpsReturn

invinsonic4_Call19:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, $02, $04, $02, $04, $02, nCs0, nCs0, $04, nCs0, nCs0
	dc.b	nCs0, nCs0, $02, $04, $02, $04, $02, $04, $02, $04, nCs0
	smpsReturn

invinsonic4_Call00:
	dc.b	dKick, $04, dSnare, $02, dKick, $06, dSnare, $02, nRst, dKick, $04, dSnare
	dc.b	$02, dKick, $06, dSnare, $02, nRst, dKick, $04, dSnare, $02, dKick, $06
	dc.b	dSnare, $02, nRst, dKick, $04, dSnare, $02, dKick, $04, dSnare, $02, dSnare
	dc.b	dKick, dKick, $04, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, dKick, $02, dSnare, dSnare, $04
	smpsReturn

invinsonic4_Call01:
	dc.b	dKick, $04, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b	$02, dSnare, dSnare, $04, dKick, dSnare, dKick, $02, dSnare, dSnare, dSnare, dKick
	dc.b	$04, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare
	dc.b	dKick, dSnare, dKick, $02, dSnare, dSnare, $04
	smpsReturn

invinsonic4_Call02:
	dc.b	dKick, $04, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b	$02, dSnare, dSnare, $04, dKick, dSnare, dKick, $02, dSnare, dSnare, dSnare, dKick
	dc.b	$04, dSnare, $02, dKick, $06, dSnare, $02, nRst, dKick, $04, dSnare, $02
	dc.b	dKick, $06, dSnare, $02, nRst, dKick, $04, dSnare, $02, dKick, $06, dSnare
	dc.b	$02, nRst, dKick, $04, dSnare, $02, dKick, $04, dSnare, $02, dSnare, dSnare
	smpsReturn

invinsonic4_Call03:
	dc.b	dKick, $04, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b	dSnare, dKick, dSnare, dKick, $02, dSnare, dSnare, $04
	smpsReturn

invinsonic4_Voices:
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
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

