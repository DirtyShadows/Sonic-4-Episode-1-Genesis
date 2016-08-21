shzact3v2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     shzact3v2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       shzact3v2_DAC
	smpsHeaderFM        shzact3v2_FM1,	$00, $10
	smpsHeaderFM        shzact3v2_FM2,	$0C, $10
	smpsHeaderFM        shzact3v2_FM3,	$00, $10
	smpsHeaderFM        shzact3v2_FM4,	$00, $12
	smpsHeaderFM        shzact3v2_FM5,	$00, $12
	smpsHeaderPSG       shzact3v2_PSG1,	$DC, $06, $00, $00
	smpsHeaderPSG       shzact3v2_PSG2,	$DC, $08, $00, $00
	smpsHeaderPSG       shzact3v2_PSG3,	$D0, $02, $00, $00

; FM1 Data
shzact3v2_FM1:
	smpsCall            shzact3v2_Call1C

shzact3v2_Jump05:
	smpsCall            shzact3v2_Call1D
	smpsCall            shzact3v2_Call1E
	smpsCall            shzact3v2_Call1F
	smpsCall            shzact3v2_Call20
	smpsCall            shzact3v2_Call21
	smpsJump            shzact3v2_Jump05

; FM2 Data
shzact3v2_FM2:
	smpsCall            shzact3v2_Call17

shzact3v2_Jump04:
	smpsCall            shzact3v2_Call18
	smpsCall            shzact3v2_Call19
	smpsCall            shzact3v2_Call1A
	smpsCall            shzact3v2_Call19
	smpsCall            shzact3v2_Call1B
	smpsJump            shzact3v2_Jump04

; FM3 Data
shzact3v2_FM3:
	smpsCall            shzact3v2_Call12

shzact3v2_Jump03:
	smpsCall            shzact3v2_Call13
	smpsCall            shzact3v2_Call14
	smpsCall            shzact3v2_Call13
	smpsCall            shzact3v2_Call15
	smpsCall            shzact3v2_Call16
	smpsJump            shzact3v2_Jump03

; FM4 Data
shzact3v2_FM4:
	smpsCall            shzact3v2_Call0C

shzact3v2_Jump02:
	smpsCall            shzact3v2_Call0D
	smpsCall            shzact3v2_Call0E
	smpsCall            shzact3v2_Call0F
	smpsCall            shzact3v2_Call10
	smpsCall            shzact3v2_Call11
	smpsJump            shzact3v2_Jump02

; FM5 Data
shzact3v2_FM5:
	smpsCall            shzact3v2_Call06

shzact3v2_Jump01:
	smpsCall            shzact3v2_Call07
	smpsCall            shzact3v2_Call08
	smpsCall            shzact3v2_Call09
	smpsCall            shzact3v2_Call0A
	smpsCall            shzact3v2_Call0B
	smpsJump            shzact3v2_Jump01

; PSG1 Data
shzact3v2_PSG1:
	smpsCall            shzact3v2_Call2D

shzact3v2_Jump08:
	smpsCall            shzact3v2_Call2E
	smpsCall            shzact3v2_Call2F
	smpsCall            shzact3v2_Call30
	smpsCall            shzact3v2_Call2F
	smpsCall            shzact3v2_Call2D
	smpsJump            shzact3v2_Jump08

; PSG2 Data
shzact3v2_PSG2:
	smpsCall            shzact3v2_Call28

shzact3v2_Jump07:
	smpsCall            shzact3v2_Call29
	smpsCall            shzact3v2_Call2A
	smpsCall            shzact3v2_Call2B
	smpsCall            shzact3v2_Call2C
	smpsCall            shzact3v2_Call28
	smpsJump            shzact3v2_Jump07

; PSG3 Data
shzact3v2_PSG3:
	smpsPSGform         $E7
	smpsCall            shzact3v2_Call22

shzact3v2_Jump06:
	smpsCall            shzact3v2_Call23
	smpsCall            shzact3v2_Call24
	smpsCall            shzact3v2_Call25
	smpsCall            shzact3v2_Call26
	smpsCall            shzact3v2_Call27
	smpsJump            shzact3v2_Jump06

; DAC Data
shzact3v2_DAC:
	smpsCall            shzact3v2_Call00

shzact3v2_Jump00:
	smpsCall            shzact3v2_Call01
	smpsCall            shzact3v2_Call02
	smpsCall            shzact3v2_Call03
	smpsCall            shzact3v2_Call04
	smpsCall            shzact3v2_Call05
	smpsJump            shzact3v2_Jump00

shzact3v2_Call1C:
	smpsSetvoice        $05
	dc.b	nC4, $02, nE4, nG4, nC5, nB4, $04, nG4, nRst, nE4, nA4, nG4
	dc.b	nRst, nE4, nF4, nE4, nF4, nG4, $0C, nC4, $02, nE4, nG4, nC5
	dc.b	nB4, $04, nG4, nRst, nE4, nA4, nG4, nRst, nE4, nF4, nE4, nD4
	dc.b	nC4, $08
	smpsSetvoice        $06
	dc.b	nG4, $04
	smpsReturn

shzact3v2_Call1D:
	dc.b	nB4, $02, nRst, nC5, nRst, $06, nC5, $04, nD5, $02, nRst, nE5
	dc.b	$08, nC5, $04, nD5, $02, nRst, nE5, $04, nD5, nB4, $02, nRst
	dc.b	nB4, $04, nG4, nRst, nG4, nD5, $02, nRst, nC5, $04, nRst, nA4
	dc.b	nD5, $02, nRst, nC5, $06, nRst, $02, nA4, $04, nB4, $02, nRst
	dc.b	nC5, $04, nD5, $02, nRst, nC5, $04, nE5, nC5, nG4, nRst
	smpsReturn

shzact3v2_Call1E:
	dc.b	nBb4, $08, nA4, $06, nRst, $02, nA4, nRst, nA4, $04, nRst, nC5
	dc.b	nRst, nB4, nRst, nA4, $08, nG4, $04, nRst, nA4, nB4, $02, nRst
	dc.b	nG4, nRst, nA4, $08, nG4, $04, nF4, nRst, nC5, nRst, nB4, nRst
	dc.b	nA4, $02, nRst, nG4, $0A, nRst, $02, nB4, $04
	smpsReturn

shzact3v2_Call1F:
	dc.b	nG4, $02, nRst, nC5, nRst, $06, nG4, $04, nD5, $02, nRst, nC5
	dc.b	$08, nG4, $04, nD5, $02, nRst, nC5, $04, nD5, nB4, $02, nRst
	dc.b	nB4, $04, nG4, nRst, nG4, nD5, $02, nRst, nC5, $04, nRst, nA4
	dc.b	nD5, $02, nRst, nC5, $06, nRst, $02, nA4, $04, nB4, $02, nRst
	dc.b	nC5, $04, nBb4, $02, nRst, nD5, $04, nC5, $02, nRst, nC5, $04
	dc.b	nBb4, nRst
	smpsReturn

shzact3v2_Call20:
	dc.b	nBb4, $08, nC5, $06, nRst, $02, nA4, nRst, nA4, $04, nRst, nC5
	dc.b	nRst, nB4, nRst, nC5, $02, nRst, nB4, $08, nA4, $02, nRst, nG4
	dc.b	$04, nB4, $02, nRst, nG4, nRst, nA4, $06, nRst, $02, nC5, nRst
	dc.b	nA4, $04, nRst, nF5, nRst, nB4, nRst, nC5, $02, nRst, nD5, $0A
	dc.b	nRst, $06
	smpsReturn

shzact3v2_Call21:
	smpsSetvoice        $05
	dc.b	nC4, $02, nE4, nG4, nC5, nB4, $04, nG4, nRst, nE4, nA4, nG4
	dc.b	nRst, nE4, nF4, nE4, nF4, nG4, $0C, nC4, $02, nE4, nG4, nC5
	dc.b	nB4, $04, nG4, nRst, nE4, nA4, nG4, nRst, nE4, nF4, nE4, nD4
	dc.b	nC4, $08
	smpsSetvoice        $06
	dc.b	nG4, $04
	smpsReturn

shzact3v2_Call17:
	dc.b	smpsNoAttack, $08
	smpsSetvoice        $00
	dc.b	nC2, $06, $02, nC3, nRst, nC3, nC2, nE1, $06, $02, nE2, nRst
	dc.b	nE2, nE1, nF1, $06, $02, nF2, nRst, nF2, nF1, nG1, nRst, nG1
	dc.b	nG2, nE2, nC2, nB1, nG1, nA1, $06, $02, nA2, nRst, nA2, nA1
	dc.b	nE1, $06, $02, nE2, nRst, nE2, nE1, nF2, $04, $02, nG2, nG1
	dc.b	nG2, nC2, $06, nC3, $02, nE2, nF2
	smpsReturn

shzact3v2_Call18:
	dc.b	nFs2, $02, nG2, nG1, $04, nC2, $06, nRst, $02, nC2, $04, $02
	dc.b	nG1, nC2, nRst, nC2, $04, nRst, $02, nC2, nD2, $04, nE2, $06
	dc.b	nD2, $02, nB1, $06, nG1, $02, nE1, $04, nE2, nRst, $02, nE2
	dc.b	nG1, $04, nA1, $06, nRst, $02, nA1, $04, $02, nE1, nA1, nRst
	dc.b	nA1, $04, nRst, $02, nA1, nC2, $04, nBb1, $06, $02, $06, nC2
	dc.b	$02, nBb1, nRst, nBb1, $04
	smpsReturn

shzact3v2_Call19:
	dc.b	nA1, $02, nRst, nG1, $04, nF1, $06, $02, $06, nG1, $02, nF1
	dc.b	nRst, nD2, nC2, nB1, nRst, nG1, nRst, $04, nG1, $02, nG2, nG1
	dc.b	nA1, nG1, $06, nB1, $02, nG1, nD2, $04, nC2, $02, nB1, nA1
	dc.b	nG1, nD2, $06, nC2, $02, nD2, $06, nE2, $02, nD2, $04, nC2
	dc.b	$02, nB1, nA1, nRst, nG1, $04, nRst, nG2, $02, nG1, nRst, nG1
	dc.b	nD2, nG1, nC2, nB1, nC2, nD2
	smpsReturn

shzact3v2_Call1A:
	dc.b	nG2, $02, nB1, nA1, nG1, nC2, $06, nRst, $02, nC2, $04, $02
	dc.b	nG1, nC2, nRst, nC2, $04, nRst, $02, nC2, nD2, $04, nE2, $06
	dc.b	nD2, $02, nB1, $06, nG1, $02, nE1, $04, nE2, nRst, $02, nE2
	dc.b	nG1, $04, nA1, $06, nRst, $02, nA1, $04, $02, nE1, nA1, nRst
	dc.b	nA1, $04, nRst, $02, nA1, nC2, $04, nBb1, $06, $02, $06, nC2
	dc.b	$02, nBb1, nRst, nBb1, $04
	smpsReturn

shzact3v2_Call1B:
	dc.b	nG2, $02, nB1, nA1, nG1, nC2, $06, $02, nC3, nRst, nC3, nC2
	dc.b	nE1, $06, $02, nE2, nRst, nE2, nE1, nF1, $06, $02, nF2, nRst
	dc.b	nF2, nF1, nG1, nRst, nG1, nG2, nE2, nC2, nB1, nG1, nA1, $06
	dc.b	$02, nA2, nRst, nA2, nA1, nE1, $06, $02, nE2, nRst, nE2, nE1
	dc.b	nF2, $04, $02, nG2, nG1, nG2, nC2, $06, nC3, $02, nE2, nF2
	smpsReturn

shzact3v2_Call12:
	dc.b	smpsNoAttack, $08
	smpsSetvoice        $05
	dc.b	nG4, $04, nE4, nRst, nC4, nF4, nE4, nRst, nC4, nA3, nC4, nA3
	dc.b	nD4, $0C, nRst, $08, nG4, $04, nE4, nRst, nA3, nF4, nE4, nRst
	dc.b	nC4, nA3, nC4, nB3, nG3, $08
	smpsSetvoice        $03
	dc.b	nE4, $04
	smpsReturn

shzact3v2_Call13:
	dc.b	nF4, $02, nRst, nG4, $04, nRst, nE4, nF4, $02, nRst, nG4, $08
	dc.b	nE4, $04, nF4, $02, nRst, nG4, $04, nA4, nG4, nE4, nC4, nRst
	dc.b	nE4, nF4, $02, nRst, nG4, $04, nRst, nE4, nF4, $02, nRst, nG4
	dc.b	$08, nE4, $04, nF4, $02, nRst, nG4, $04, nA4, $02, nRst, nA4
	dc.b	$04, nG4, nE4, nC4, nRst
	smpsReturn

shzact3v2_Call14:
	dc.b	nE4, $08, nF4, nE4, $04, nC4, nRst, nE4, nRst, nD4, $0C, nRst
	dc.b	nC4, $04, nD4, $02, nRst, nE4, nRst, nF4, $08, nE4, $04, nC4
	dc.b	nRst, nA4, nRst, nG4, $10, nRst, $08, nE4, $04
	smpsReturn

shzact3v2_Call15:
	dc.b	nE4, $08, nF4, nE4, $04, nC4, nRst, nE4, nRst, nD4, $0C, nRst
	dc.b	nC4, $04, nD4, $02, nRst, nE4, nRst, nF4, $08, nE4, $04, nC4
	dc.b	nRst, nA4, nRst, nG4, $10, nRst, $0C
	smpsReturn

shzact3v2_Call16:
	dc.b	smpsNoAttack, nRst, $08
	smpsSetvoice        $05
	dc.b	nG4, $04, nE4, nRst, nC4, nF4, nE4, nRst, nC4, nA3, nC4, nA3
	dc.b	nD4, $0C, nRst, $08, nG4, $04, nE4, nRst, nA3, nF4, nE4, nRst
	dc.b	nC4, nA3, nC4, nB3, nG3, $08
	smpsSetvoice        $03
	dc.b	nE4, $04
	smpsReturn

shzact3v2_Call0C:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $08
	dc.b	nG5, $02, nRst, $0E, nE5, $02, nRst, $0A, nF5, $02, nRst, $06
	dc.b	nG5, $0E, nRst, nG5, $02, nRst, $0E, nE5, $02, nRst, $0A, nF5
	dc.b	$02, nRst, $06, nE5, $0C
	smpsReturn

shzact3v2_Call0D:
	dc.b	smpsNoAttack, $02, nRst, $0A, nC5, $02, nRst, nC5, $06, nRst, $02, nC5
	dc.b	$03, nRst, nC5, nRst, nC5, nRst, $05, nB4, $02, nRst, nB4, $06
	dc.b	nRst, $02, nB4, $03, nRst, nB4, nRst, nB4, nRst, $05, nC5, $02
	dc.b	nRst, nC5, $06, nRst, $02, nC5, $03, nRst, nC5, nRst, nC5, nRst
	dc.b	$05, nC5, $02, nRst, nBb4, $06, nRst, $02, nBb4, $03, nRst, nBb4
	dc.b	$02
	smpsReturn

shzact3v2_Call0E:
	dc.b	smpsNoAttack, $01, nRst, $03, nBb4, nRst, $05, nC5, $02, nRst, nC5, $08
	dc.b	nRst, $04, nC5, $02, nRst, $06, nB4, $04, nRst, nA4, $02, nRst
	dc.b	nB4, $06, nRst, $02, nB4, $03, nRst, nB4, nRst, nB4, nRst, $05
	dc.b	nC5, $02, nRst, nC5, $08, nRst, $04, nC5, $02, nRst, $06, nB4
	dc.b	$04, nRst, nA4, $02, nRst, nB4, $06, nRst, $0A
	smpsReturn

shzact3v2_Call0F:
	dc.b	nD5, $02, nE5, nF5, nG5, nRst, $04, nC5, $02, nRst, nC5, $06
	dc.b	nRst, $02, nC5, $03, nRst, nC5, nRst, nC5, nRst, $05, nB4, $02
	dc.b	nRst, nB4, $06, nRst, $02, nB4, $03, nRst, nB4, nRst, nB4, nRst
	dc.b	$05, nC5, $02, nRst, nC5, $06, nRst, $02, nC5, $03, nRst, nC5
	dc.b	nRst, nC5, nRst, $05, nC5, $02, nRst, nBb4, $06, nRst, $02, nBb4
	dc.b	$03, nRst, nBb4, $02
	smpsReturn

shzact3v2_Call10:
	dc.b	smpsNoAttack, $01, nRst, $03, nBb4, nRst, $05, nC5, $02, nRst, nC5, $08
	dc.b	nRst, $04, nC5, $02, nRst, $06, nB4, $04, nRst, nA4, $02, nRst
	dc.b	nB4, $06, nRst, $02, nB4, $03, nRst, nB4, nRst, nB4, nRst, $05
	dc.b	nC5, $02, nRst, nC5, $08, nRst, $04, nC5, $02, nRst, $06, nB4
	dc.b	$04, nRst, nA4, $02, nRst, nB4, $06, nRst, $02, nD5, nE5, nF5
	dc.b	nG5
	smpsReturn

shzact3v2_Call11:
	dc.b	nRst, $10, nG5, $02, nRst, $0E, nE5, $02, nRst, $0A, nF5, $02
	dc.b	nRst, $06, nG5, $0E, nRst, nG5, $02, nRst, $0E, nE5, $02, nRst
	dc.b	$0A, nF5, $02, nRst, $06, nE5, $0C
	smpsReturn

shzact3v2_Call06:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $08
	dc.b	nC5, $02, nRst, $0E, nC5, $02, nRst, $0A, nC5, $02, nRst, $06
	dc.b	nB4, $0E, nRst, nC5, $02, nRst, $0E, nC5, $02, nRst, $0A, nC5
	dc.b	$02, nRst, $06, nC5, $0C
	smpsReturn

shzact3v2_Call07:
	dc.b	smpsNoAttack, $02, nRst, $0A, nG4, $02, nRst, nG4, $06, nRst, $02, nG4
	dc.b	$03, nRst, nG4, nRst, nG4, nRst, $05, nG4, $02, nRst, nG4, $06
	dc.b	nRst, $02, nG4, $03, nRst, nG4, nRst, nG4, nRst, $05, nG4, $02
	dc.b	nRst, nG4, $06, nRst, $02, nG4, $03, nRst, nG4, nRst, nG4, nRst
	dc.b	$05, nG4, $02, nRst, nG4, $06, nRst, $02, nG4, $03, nRst, nG4
	dc.b	$02
	smpsReturn

shzact3v2_Call08:
	dc.b	smpsNoAttack, $01, nRst, $03, nG4, nRst, $05, nF4, $02, nRst, nF4, $08
	dc.b	nRst, $04, nF4, $02, nRst, $06, nG4, $04, nRst, nG4, $02, nRst
	dc.b	nG4, $06, nRst, $02, nG4, $03, nRst, nG4, nRst, nG4, nRst, $05
	dc.b	nF4, $02, nRst, nF4, $08, nRst, $04, nF4, $02, nRst, $06, nG4
	dc.b	$04, nRst, nG4, $02, nRst, nG4, $06, nRst, $02, nG4, nA4, nB4
	dc.b	nC5
	smpsReturn

shzact3v2_Call09:
	dc.b	nRst, $0C, nG4, $02, nRst, nG4, $06, nRst, $02, nG4, $03, nRst
	dc.b	nG4, nRst, nG4, nRst, $05, nG4, $02, nRst, nG4, $06, nRst, $02
	dc.b	nG4, $03, nRst, nG4, nRst, nG4, nRst, $05, nG4, $02, nRst, nG4
	dc.b	$06, nRst, $02, nG4, $03, nRst, nG4, nRst, nG4, nRst, $05, nG4
	dc.b	$02, nRst, nG4, $06, nRst, $02, nG4, $03, nRst, nG4, $02
	smpsReturn

shzact3v2_Call0A:
	dc.b	smpsNoAttack, $01, nRst, $03, nG4, nRst, $05, nF4, $02, nRst, nF4, $08
	dc.b	nRst, $04, nF4, $02, nRst, $06, nG4, $04, nRst, nG4, $02, nRst
	dc.b	nG4, $06, nRst, $02, nG4, $03, nRst, nG4, nRst, nG4, nRst, $05
	dc.b	nF4, $02, nRst, nF4, $08, nRst, $04, nF4, $02, nRst, $06, nG4
	dc.b	$04, nRst, nG4, $02, nRst, nG4, nA4, nB4, nC5, nRst, $08
	smpsReturn

shzact3v2_Call0B:
	dc.b	smpsNoAttack, nRst, $10, nC5, $02, nRst, $0E, nC5, $02, nRst, $0A, nC5
	dc.b	$02, nRst, $06, nB4, $0E, nRst, nC5, $02, nRst, $0E, nC5, $02
	dc.b	nRst, $0A, nC5, $02, nRst, $06, nC5, $0C
	smpsReturn

shzact3v2_Call2D:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

shzact3v2_Call2E:
	smpsPSGvoice        fTone_03
	dc.b	nE4, $04, nF4, $02, nRst, nG4, $08, nE4, $04, nF4, $02, nRst
	dc.b	nG4, $08, nE4, $04, nF4, $02, nRst, nG4, $04, nA4, nG4, nE4
	dc.b	nC4, nRst, nE4, nF4, $02, nRst, nG4, $08, nE4, $04, nF4, $02
	dc.b	nRst, nG4, $08, nE4, $04, nF4, $02, nRst, nG4, $04, nA4, $02
	dc.b	nRst, nA4, $04, nG4, nE4, nC4
	smpsReturn

shzact3v2_Call2F:
	dc.b	nRst, $04, nE4, nRst, nF4, $08, nE4, $04, nC4, nRst, nE4, nRst
	dc.b	nD4, $10, nRst, $08, nC4, $04, nD4, $02, nRst, nE4, nRst, nF4
	dc.b	$08, nE4, $04, nC4, nRst, nA4, nRst, nG4, $14, nRst, $04
	smpsReturn

shzact3v2_Call30:
	dc.b	nE4, $04, nF4, $02, nRst, nG4, $08, nE4, $04, nF4, $02, nRst
	dc.b	nG4, $08, nE4, $04, nF4, $02, nRst, nG4, $04, nA4, nG4, nE4
	dc.b	nC4, nRst, nE4, nF4, $02, nRst, nG4, $08, nE4, $04, nF4, $02
	dc.b	nRst, nG4, $08, nE4, $04, nF4, $02, nRst, nG4, $04, nA4, $02
	dc.b	nRst, nA4, $04, nG4, nE4, nC4
	smpsReturn

shzact3v2_Call28:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

shzact3v2_Call29:
	smpsPSGvoice        fTone_01
	dc.b	nG4, $04, nB4, $02, nRst, nC5, $06, nRst, $02, nC5, $04, nD5
	dc.b	$02, nRst, nE5, $08, nC5, $04, nD5, $02, nRst, nE5, $04, nD5
	dc.b	nB4, $02, nRst, nB4, $04, nG4, nRst, nG4, nD5, $02, nRst, nC5
	dc.b	$08, nA4, $04, nD5, $02, nRst, nC5, $06, nRst, $02, nA4, $04
	dc.b	nB4, $02, nRst, nC5, $04, nD5, $02, nRst, nC5, $04, nE5, nC5
	dc.b	nG4
	smpsReturn

shzact3v2_Call2A:
	dc.b	nRst, $04, nBb4, nRst, nA4, $06, nRst, $02, nA4, nRst, nA4, $04
	dc.b	nRst, nC5, nRst, nB4, $08, nA4, nG4, $04, nRst, nA4, nB4, $02
	dc.b	nRst, nG4, nRst, nA4, $08, nG4, $04, nF4, nRst, nC5, nRst, nB4
	dc.b	$08, nA4, $02, nRst, nG4, $0A, nRst, $02
	smpsReturn

shzact3v2_Call2B:
	dc.b	nB4, $04, nG4, $02, nRst, nC5, $06, nRst, $02, nG4, $04, nD5
	dc.b	$02, nRst, nC5, $08, nG4, $04, nD5, $02, nRst, nC5, $04, nD5
	dc.b	nB4, $02, nRst, nB4, $04, nG4, nRst, nG4, nD5, $02, nRst, nC5
	dc.b	$08, nA4, $04, nD5, $02, nRst, nC5, $06, nRst, $02, nA4, $04
	dc.b	nB4, $02, nRst, nC5, $04, nBb4, $02, nRst, nD5, $04, nC5, $02
	dc.b	nRst, nC5, $04, nBb4
	smpsReturn

shzact3v2_Call2C:
	dc.b	nRst, $04, nBb4, nRst, nC5, $06, nRst, $02, nA4, nRst, nA4, $04
	dc.b	nRst, nC5, nRst, nB4, $08, nC5, $02, nRst, nB4, $08, nA4, $02
	dc.b	nRst, nG4, $04, nB4, $02, nRst, nG4, nRst, nA4, $06, nRst, $02
	dc.b	nC5, nRst, nA4, $04, nRst, nF5, nRst, nB4, $08, nC5, $02, nRst
	dc.b	nD5, $0A, nRst, $02
	smpsReturn

shzact3v2_Call22:
	dc.b	nRst, $0C
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, $08, $02, nRst, $04, nCs0, $02
	dc.b	$08, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02
	dc.b	$08, $02, nRst, $04, nCs0, $02, $08, $02, nRst, $04, nCs0, $02
	dc.b	nCs0, nRst, $06, nCs0, $04
	smpsReturn

shzact3v2_Call23:
	dc.b	nRst, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, $08, $02
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0
	dc.b	$02, $08, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, $04, nCs0, $02, $08, $02, nRst, $04, nCs0, $02, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst, $04, nCs0, $02, $08, $02, nRst
	smpsReturn

shzact3v2_Call24:
	dc.b	smpsNoAttack, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, $08, $02
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0
	dc.b	$02, $08, $02, nRst, $04, nCs0, $02, $08, $02, nRst, $04, nCs0
	dc.b	$02, $08, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, $04, nCs0, $02, $08, $02, nRst
	smpsReturn

shzact3v2_Call25:
	dc.b	smpsNoAttack, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, $08, $02
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0
	dc.b	$02, $08, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, $04, nCs0, $02, $08, $02, nRst, $04, nCs0, $02, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst, $04, nCs0, $02, $08, $02, nRst
	smpsReturn

shzact3v2_Call26:
	dc.b	smpsNoAttack, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, $08, $02
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0
	dc.b	$02, $08, $02, nRst, $04, nCs0, $02, $08, $02, nRst, $04, nCs0
	dc.b	$02, $08, $02, nRst, nRst, nCs0, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$04, nCs0, $02, $08, $02, nRst
	smpsReturn

shzact3v2_Call27:
	dc.b	smpsNoAttack, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, $08, $02
	dc.b	nRst, $04, nCs0, $02, $08, $02, nRst, $04, nCs0, $02, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, $04, nCs0, $02, $08, $02, nRst, $04, nCs0, $02, $08, $02
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $04
	smpsReturn

shzact3v2_Call00:
	dc.b	dSnare, $04, $02, dSnare, dKick, $08, dSnare, $06, $02, dKick, nRst, dKick
	dc.b	$04, dSnare, $06, $02, dKick, nRst, dKick, $04, dSnare, dKick, nRst, dKick
	dc.b	dSnare, dSnare, $02, dSnare, dKick, $08, dSnare, $06, $02, dKick, nRst, dKick
	dc.b	$04, dSnare, $06, $02, dKick, nRst, dSnare, $04, dSnare, dKick, dSnare, $02
	dc.b	dSnare, dKick, dSnare
	smpsReturn

shzact3v2_Call01:
	dc.b	dSnare, $04, dSnare, dKick, $08, dSnare, $06, $02, dKick, nRst, dKick, $04
	dc.b	dSnare, $08, dKick, dSnare, $06, $02, dKick, nRst, dKick, $04, dSnare, $08
	dc.b	dKick, dSnare, $06, $02, dKick, nRst, dKick, $04, dSnare, $08, dKick, dSnare
	dc.b	$06, $02, dKick, nRst, dKick, $04
	smpsReturn

shzact3v2_Call02:
	dc.b	dSnare, $08, dKick, dSnare, $06, $02, dKick, nRst, dSnare, $04, dSnare, dKick
	dc.b	dKick, $08, dSnare, $06, $02, dKick, nRst, dKick, $04, dSnare, $06, $02
	dc.b	dKick, nRst, $06, dSnare, dSnare, $02, dKick, nRst, dSnare, $04, dSnare, dKick
	dc.b	nRst, dKick, dSnare, $06, $02, dKick, nRst, dKick, $04
	smpsReturn

shzact3v2_Call03:
	dc.b	dSnare, $02, dSnare, dSnare, dSnare, dKick, $08, dSnare, $06, $02, dKick, nRst
	dc.b	dKick, $04, dSnare, $08, dKick, dSnare, $06, $02, dKick, nRst, dKick, $04
	dc.b	dSnare, $08, dKick, dSnare, $06, $02, dKick, nRst, dKick, $04, dSnare, $08
	dc.b	dKick, dSnare, $06, $02, dKick, nRst, dKick, $04
	smpsReturn

shzact3v2_Call04:
	dc.b	dSnare, $08, dKick, dSnare, $06, $02, dKick, nRst, dSnare, $04, dSnare, dKick
	dc.b	nRst, dKick, dSnare, $06, $02, dKick, nRst, dKick, $04, dSnare, $06, $02
	dc.b	dKick, nRst, $06, dSnare, dSnare, $02, dKick, $04, dSnare, dSnare, dKick, nRst
	dc.b	dKick, dSnare, $06, $02, dKick, nRst, dKick, $04
	smpsReturn

shzact3v2_Call05:
	dc.b	dSnare, $02, dSnare, dSnare, dSnare, dKick, $08, dSnare, $06, $02, dKick, nRst
	dc.b	dKick, $04, dSnare, $06, $02, dKick, nRst, dKick, $04, dSnare, dKick, nRst
	dc.b	dKick, dSnare, dSnare, $02, dSnare, dKick, $08, dSnare, $06, $02, dKick, nRst
	dc.b	dKick, $04, dSnare, $06, $02, dKick, nRst, dSnare, $04, dSnare, dKick, dSnare
	dc.b	$02, dSnare, dKick, dSnare
	smpsReturn

shzact3v2_Voices:
;	Voice $00
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
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
;	$3D
;	$12, $21, $51, $12, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$2B, $2B, $2B, $1B, 	$19, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $02, $01
	smpsVcCoarseFreq    $02, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $02
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

;	Voice $04
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
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

;	Voice $05
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

;	Voice $06
;	$36
;	$02, $74, $31, $0F, 	$5F, $5F, $5F, $5F, 	$0C, $0D, $09, $10
;	$09, $08, $08, $10, 	$30, $35, $36, $D5, 	$2B, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $0F, $01, $04, $02
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $09, $0D, $0C
	smpsVcDecayRate2    $10, $08, $08, $09
	smpsVcDecayLevel    $0D, $03, $03, $03
	smpsVcReleaseRate   $05, $06, $05, $00
	smpsVcTotalLevel    $00, $00, $00, $2B

;	Voice $07
;	$3B
;	$46, $42, $42, $43, 	$10, $12, $19, $4F, 	$08, $05, $01, $01
;	$01, $01, $01, $01, 	$76, $F1, $F7, $F9, 	$41, $23, $2B, $7F
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $04, $04
	smpsVcCoarseFreq    $03, $02, $02, $06
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0F, $19, $12, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $05, $08
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $0F, $0F, $0F, $07
	smpsVcReleaseRate   $09, $07, $01, $06
	smpsVcTotalLevel    $7F, $2B, $23, $41

;	Voice $08
;	$07
;	$34, $74, $32, $71, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $05, $03
;	$00, $00, $00, $00, 	$3F, $3F, $2F, $2F, 	$8A, $8A, $8A, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $03
	smpsVcCoarseFreq    $01, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $03, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0A, $0A, $0A

