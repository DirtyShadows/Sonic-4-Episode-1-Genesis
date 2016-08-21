llz1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     llz1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       llz1_DAC
	smpsHeaderFM        llz1_FM1,	$0C, $10
	smpsHeaderFM        llz1_FM2,	$E8, $10
	smpsHeaderFM        llz1_FM3,	$E8, $10
	smpsHeaderFM        llz1_FM4,	$00, $10
	smpsHeaderFM        llz1_FM5,	$00, $10
	smpsHeaderPSG       llz1_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       llz1_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       llz1_PSG3,	$D0, $02, $00, $00

; FM1 Data
llz1_FM1:
	smpsCall            llz1_Call12
	smpsCall            llz1_Call13
	smpsCall            llz1_Call14
	smpsCall            llz1_Call13
	smpsCall            llz1_Call13
	smpsCall            llz1_Call14
	smpsCall            llz1_Call15
	smpsJump            llz1_FM1

; FM2 Data
llz1_FM2:
	smpsCall            llz1_Call0E
	smpsCall            llz1_Call0F
	smpsCall            llz1_Call10
	smpsCall            llz1_Call0E
	smpsCall            llz1_Call0F
	smpsCall            llz1_Call10
	smpsCall            llz1_Call11
	smpsJump            llz1_FM2

; FM3 Data
llz1_FM3:
	smpsCall            llz1_Call0B
	smpsCall            llz1_Call0B
	smpsCall            llz1_Call0C
	smpsCall            llz1_Call0B
	smpsCall            llz1_Call0B
	smpsCall            llz1_Call0C
	smpsCall            llz1_Call0D
	smpsJump            llz1_FM3

; FM4 Data
llz1_FM4:
	smpsCall            llz1_Call08
	smpsCall            llz1_Call08
	smpsCall            llz1_Call09
	smpsCall            llz1_Call08
	smpsCall            llz1_Call08
	smpsCall            llz1_Call09
	smpsCall            llz1_Call0A
	smpsJump            llz1_FM4

; FM5 Data
llz1_FM5:
	smpsCall            llz1_Call03
	smpsCall            llz1_Call04
	smpsCall            llz1_Call05
	smpsCall            llz1_Call06
	smpsCall            llz1_Call07
	smpsCall            llz1_Call05
	smpsCall            llz1_Call05
	smpsJump            llz1_FM5

; PSG1 Data
llz1_PSG1:
	smpsCall            llz1_Call21
	smpsCall            llz1_Call22
	smpsCall            llz1_Call23
	smpsCall            llz1_Call24
	smpsCall            llz1_Call25
	smpsCall            llz1_Call26
	smpsCall            llz1_Call27
	smpsJump            llz1_PSG1

; PSG2 Data
llz1_PSG2:
	smpsCall            llz1_Call1A
	smpsCall            llz1_Call1B
	smpsCall            llz1_Call1C
	smpsCall            llz1_Call1D
	smpsCall            llz1_Call1E
	smpsCall            llz1_Call1F
	smpsCall            llz1_Call20
	smpsJump            llz1_PSG2

; PSG3 Data
llz1_PSG3:
	smpsPSGform         $E7
	smpsCall            llz1_Call16
	smpsCall            llz1_Call16
	smpsCall            llz1_Call17
	smpsCall            llz1_Call16
	smpsCall            llz1_Call16
	smpsCall            llz1_Call18
	smpsCall            llz1_Call19
	smpsJump            llz1_PSG3

; DAC Data
llz1_DAC:
	smpsCall            llz1_Call00
	smpsCall            llz1_Call00
	smpsCall            llz1_Call01
	smpsCall            llz1_Call00
	smpsCall            llz1_Call00
	smpsCall            llz1_Call01
	smpsCall            llz1_Call02
	smpsJump            llz1_DAC

llz1_Call12:
	smpsSetvoice        $00
	dc.b	nA2, $04, nD2, nA2, nD2, $08, nA2, $04, nD2, nA2, nD2, $08
	dc.b	nA2, $04, nD2, nG2, nC2, $0B, nRst, $01, nBb2, $04, nBb1, nBb2
	dc.b	nBb1, $08, nBb2, $04, nBb1, nG2, nBb1, nA1, nA2, nA1, nG2, nG1
	dc.b	$0C
	smpsReturn

llz1_Call13:
	dc.b	nA2, $04, nD2, nA2, nD2, $08, nA2, $04, nD2, nA2, nD2, $08
	dc.b	nA2, $04, nD2, nG2, nC2, $0B, nRst, $01, nBb2, $04, nBb1, nBb2
	dc.b	nBb1, $08, nBb2, $04, nBb1, nG2, nBb1, nA1, nA2, nA1, nG2, nG1
	dc.b	$0C
	smpsReturn

llz1_Call14:
	dc.b	nA2, $04, nF2, nD2, nA2, nF3, nA3, nA2, nA1, nA2, nF2, nD2
	dc.b	nA2, nA3, nF3, nA2, nF2, nG1, nD2, $08, $04, nD3, nG3, nD2
	dc.b	nG1, $08, nF2, $04, nG2, nD3, nC4, nG3, nE3, nC3
	smpsReturn

llz1_Call15:
	dc.b	nA2, $04, nD2, nA2, nD2, $08, nA2, $04, nD2, nA2, nD2, $08
	dc.b	nA2, $04, nD2, nG2, nC2, $08, nE2, $04, nA2, nD2, nA2, nD2
	dc.b	$08, nA1, $04, nC2, nE2, nD2, nC1, nD1, nF1, nG1, nA1, nC2
	dc.b	nE2
	smpsReturn

llz1_Call0E:
	smpsSetvoice        $01
	dc.b	nD6, $07, nRst, $01, nD6, $07, nRst, $05, nE6, $0C, nF6, $04
	dc.b	nD6, nA6, nF6, $08, nD6, $0C, $07, nRst, $01, nD6, $07, nRst
	dc.b	$05, nD6, $08, nF6, $04, nG5, $0C, nF6, $04, nE6, nD6, nC6
	dc.b	nA5
	smpsReturn

llz1_Call0F:
	dc.b	nD6, $07, nRst, $01, nD6, $07, nRst, $05, nE6, $0C, nF6, $04
	dc.b	nD6, nA6, nF6, $08, nD6, $0C, $07, nRst, $01, nD6, $07, nRst
	dc.b	$05, nD6, $08, nF6, $04, nG5, $0C, nF6, $04, nE6, nD6, nF6
	dc.b	nA6
	smpsReturn

llz1_Call10:
	dc.b	nG5, $04, nG5, nF5, nF5, nRst, nF5, nRst, nA4, nF5, nRst, nF5
	dc.b	nRst, nE5, nF5, nE5, nD5, nRst, $08, nF5, $04, nF5, nRst, nF5
	dc.b	nRst, nA4, nF5, nRst, nF5, nRst, nE5, nF5, nE5, nD5
	smpsReturn

llz1_Call11:
	dc.b	nRst, $04, nF5, nRst, nF5, nE5, nF5, nE5, $08, nF5, $04, nRst
	dc.b	nF5, nRst, nG5, nF5, nE5, nC5, nF5, nD5, nA4, nE5, $08, nC5
	dc.b	$04, nG4, nF4, nD5, $08, nRst, $18
	smpsReturn

llz1_Call0B:
	smpsSetvoice        $01
	dc.b	nA5, $07, nRst, $01, nA5, $07, nRst, $05, nA5, $0C, nA5, nA5
	dc.b	$08, $0C, nG5, $07, nRst, $01, nG5, $07, nRst, $05, nG5, $0C
	dc.b	nD5, nG5, $08, $0C
	smpsReturn

llz1_Call0C:
	dc.b	nD5, $04, nD5, nD5, nD5, nRst, nD5, nRst, $08, nD5, $04, nRst
	dc.b	nD5, nRst, nC5, nD5, nC5, nA4, nRst, $08, nD5, $04, nD5, nRst
	dc.b	nD5, nRst, $08, nD5, $04, nRst, nD5, nRst, nC5, nD5, nC5, nA4
	smpsReturn

llz1_Call0D:
	dc.b	nRst, $04, nD5, nRst, nD5, nC5, nD5, nC5, $08, nD5, $04, nRst
	dc.b	nD5, nRst, nE5, nC5, nG4, nRst, $44
	smpsReturn

llz1_Call08:
	smpsSetvoice        $01
	dc.b	nD5, $07, nRst, $01, nD5, $07, nRst, $05, nD5, $0C, nD5, nD5
	dc.b	$08, $0C, $07, nRst, $01, nD5, $07, nRst, $05, nD5, $0C, nRst
	dc.b	$04, nF4, nRst, nD5, $08, $0C
	smpsReturn

llz1_Call09:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

llz1_Call0A:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

llz1_Call03:
	dc.b	smpsNoAttack, nRst, $08
	smpsSetvoice        $04
	dc.b	nD5, $04, nA4, nC5, nG4, $0C, nA4, nF4, nG4, $08, nD4, $0C
	dc.b	nF4, nG4, nC4, $1A, nRst, $02
	smpsReturn

llz1_Call04:
	dc.b	smpsNoAttack, nRst, $08, nD5, $04, nA4, nC5, nG4, $0C, nA4, nF4, nG4
	dc.b	$08, nD4, $0C, nF4, nG4, nC5, $1A, nRst, $02
	smpsReturn

llz1_Call05:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

llz1_Call06:
	dc.b	smpsNoAttack, nRst, $08
	smpsSetvoice        $04
	dc.b	nD5, nA4, $04, nC5, $08, nG4, $04, nA4, $08, nF4, $04, nG4
	dc.b	$08, nA4, $04, nG4, nF4, nD4, nRst, nD4, nF4, nRst, nF4, nG4
	dc.b	nRst, nG4, nC4, $1A, nRst, $02
	smpsReturn

llz1_Call07:
	dc.b	smpsNoAttack, nRst, $08, nD5, nA4, $04, nC5, $08, nG4, $04, nA4, $08
	dc.b	nF4, $04, nG4, $08, nA4, $04, nG4, nF4, nD4, nRst, nD4, nF4
	dc.b	nRst, nF4, nG4, nRst, nG4, nC5, $1A, nRst, $02
	smpsReturn

llz1_Call21:
	dc.b	smpsNoAttack, nRst, $08
	smpsPSGvoice        $00
	dc.b	nD5, $04, nA4, nC5, nG4, $0C, nA4, nF4, nG4, $08, nD4, $0C
	dc.b	nF4, nG4, nC4, $1A, nRst, $02
	smpsReturn

llz1_Call22:
	dc.b	smpsNoAttack, nRst, $08, nD5, $04, nA4, nC5, nG4, $0C, nA4, nF4, nG4
	dc.b	$08, nD4, $0C, nF4, nG4, nC5, $1A, nRst, $02
	smpsReturn

llz1_Call23:
	dc.b	nA3, $04, nA3, nAb3, nA3, nRst, nD3, nF3, nG3, nA3, nA3, nAb3
	dc.b	nA3, nRst, nD3, nC4, nG3, nA3, nA3, nAb3, nA3, nRst, nD3, nF3
	dc.b	nG3, nA3, $08, nG3, nC4, nF3
	smpsReturn

llz1_Call24:
	dc.b	nRst, $08, nD5, nA4, $04, nC5, $08, nG4, $04, nA4, $08, nF4
	dc.b	$04, nG4, $08, nA4, $04, nG4, nF4, nD4, nRst, nD4, nF4, nRst
	dc.b	nF4, nG4, nRst, nG4, nC4, $1A, nRst, $02
	smpsReturn

llz1_Call25:
	dc.b	smpsNoAttack, nRst, $08, nD5, nA4, $04, nC5, $08, nG4, $04, nA4, $08
	dc.b	nF4, $04, nG4, $08, nA4, $04, nG4, nF4, nD4, nRst, nD4, nF4
	dc.b	nRst, nF4, nG4, nRst, nG4, nC5, $1A, nRst, $02
	smpsReturn

llz1_Call26:
	dc.b	nA3, $04, nRst, nAb3, nA3, nRst, nD3, nF3, nG3, nA3, $08, nC4
	dc.b	nA3, $04, nG3, nF3, $08, nG3, $04, nA3, nRst, nC4, $08, nA3
	dc.b	$04, nG3, nD4, $08, nC4, $04, nA3, nF4, nE4, nD4, nC4, nA3
	smpsReturn

llz1_Call27:
	dc.b	nD3, $09, nRst, $77
	smpsReturn

llz1_Call1A:
	dc.b	smpsNoAttack, nRst, $10
	smpsPSGvoice        $00
	dc.b	nB4, $01, nRst, $53
	smpsPSGvoice        fTone_01
	dc.b	nA4, $02, nC5, nD5, $04, nF5, nG5, nC5, $0C
	smpsReturn

llz1_Call1B:
	dc.b	nRst, $10
	smpsPSGvoice        $00
	dc.b	nB4, $01, nRst, $53
	smpsPSGvoice        fTone_01
	dc.b	nA4, $02, nC5, nD5, $04, nF5, nG5, nD5, nF5, nG5
	smpsReturn

llz1_Call1C:
	dc.b	nA3, $04, nA3, nAb3, nA3, nRst, nD3, nF3, nG3, nA3, nA3, nAb3
	dc.b	nA3, nRst, nD3, nC4, nG3, nA3, nA3, nAb3, nA3, nRst, nD3, nF3
	dc.b	nG3, nA3, $08, nG3, nC4, nF3
	smpsReturn

llz1_Call1D:
	dc.b	nRst, $64, nA4, $02, nC5, nD5, $04, nF5, nG5, nD5, nC5, $08
	smpsReturn

llz1_Call1E:
	dc.b	nRst, $64, nA4, $02, nC5, nD5, $04, nF5, nG5, nD5, nF5, nG5
	smpsReturn

llz1_Call1F:
	dc.b	nA3, $04, nRst, nAb3, nA3, nRst, nD3, nF3, nG3, nA3, $08, nC4
	dc.b	nA3, $04, nG3, nF3, $08, nG3, $04, nA3, nRst, nC4, $08, nA3
	dc.b	$04, nG3, nD4, $08, nC4, $04, nA3, nF4, nE4, nD4, nC4, nA3
	smpsReturn

llz1_Call20:
	dc.b	nD4, $09, nRst, $77
	smpsReturn

llz1_Call16:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $01, nRst, $07, nCs0, $01, nRst, $03, nCs0, $01, nRst, $07
	dc.b	nCs0, $01, nRst, $03, nCs0, $01, nRst, $0B, nCs0, $01, nRst, $03
	dc.b	nCs0, $01, nRst, $07, nCs0, $01, nRst, $03, nCs0, $01, nRst, $03
	dc.b	nCs0, $01, nRst, $07, nCs0, $01, nRst, $07, nCs0, $01, nRst, $03
	dc.b	nCs0, $01, nRst, $07, nCs0, $01, nRst, $03, nCs0, $01, nRst, $04
	dc.b	nRst, $07, nCs0, $01, nRst, $03, nCs0, $01, nRst, $07, nCs0, $01
	dc.b	nRst, $03, nCs0, $01, nRst, $03, nCs0, $01, nRst, $07
	smpsReturn

llz1_Call17:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $01, nRst, $07, nCs0, $01, nRst, $03, nCs0, $01, nRst, $07
	dc.b	nCs0, $01, nRst, $03, nCs0, $01, nRst, $04, nRst, $07, nCs0, $01
	dc.b	nRst, $03, nCs0, $01, nRst, $07, nCs0, $01, nRst, $03, nCs0, $01
	dc.b	nRst, $03, nCs0, $01, nRst, $04, nRst, $03, nCs0, $01, nRst, $07
	dc.b	nCs0, $01, nRst, $03, nCs0, $01, nRst, $07, nCs0, $01, nRst, $03
	dc.b	nCs0, $01, nRst, $04, nRst, $07, nCs0, $01, nRst, $03, nCs0, $01
	dc.b	nRst, $07, nCs0, $01, nRst, $03, nCs0, $01, nRst, $03, nCs0, $01
	dc.b	nRst, $04, nRst, $03
	smpsReturn

llz1_Call18:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $01, nRst, $07, nCs0, $01, nRst, $03, nCs0, $01, nRst, $07
	dc.b	nCs0, $01, nRst, $03, nCs0, $01, nRst, $04, nRst, $07, nCs0, $01
	dc.b	nRst, $03, nCs0, $01, nRst, $07, nCs0, $01, nRst, $03, nCs0, $01
	dc.b	nRst, $03, nCs0, $01, nRst, $04, nRst, $03, nCs0, $01, nRst, $07
	dc.b	nCs0, $01, nRst, $03, nCs0, $01, nRst, $07, nCs0, $01, nRst, $03
	dc.b	nCs0, $01, nRst, $03, nCs0, $01, nRst, $07, nCs0, $01, nRst, $03
	dc.b	nCs0, $01, nRst, $07, nCs0, $01, nRst, $03, nCs0, $01, nRst, $03
	dc.b	nCs0, $01, nRst, $04, nRst, $03
	smpsReturn

llz1_Call19:
	dc.b	smpsNoAttack, nRst, $01, nRst, $03
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $01, nRst, $03, nCs0, $01, nRst, $04, nRst, $03, nCs0, $01
	dc.b	nRst, $04, nRst, $03, nCs0, $01, nRst, $03, nCs0, $01, nRst, $07
	dc.b	nCs0, $01, nRst, $03, nCs0, $01, nRst, $07, nCs0, $01, nRst, $04
	dc.b	nRst, $03, nCs0, $01, nRst, $08, nRst, $03, nCs0, $01, nRst, $03
	dc.b	nCs0, $01, nRst, $04, nRst, $03, nCs0, $01, nRst, $04, nRst, $03
	dc.b	nCs0, $01, nRst, $03, nCs0, $01, nRst, $04, nRst, $07, nCs0, $01
	dc.b	nRst, $07, nCs0, $01, nRst, $03, nCs0, $01, nRst, $03, nCs0, $01
	dc.b	nRst, $04, nRst, $03
	smpsReturn

llz1_Call00:
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $03, dKick, $01, nRst, $07
	dc.b	dKick, $01, nRst, $03, dSnare, $01, nRst, $0B, dKick, $01, nRst, $03
	dc.b	dSnare, $01, nRst, $07, dKick, $01, nRst, $03, dKick, $01, nRst, $03
	dc.b	dSnare, $01, nRst, $07, dKick, $01, nRst, $07, dSnare, $01, nRst, $0B
	dc.b	dKick, $01, nRst, $03, dSnare, $01, nRst, $03, dKick, $08, $01, nRst
	dc.b	$03, dSnare, $01, nRst, $07, dKick, $01, nRst, $03, dKick, $01, nRst
	dc.b	$03, dSnare, $01, nRst, $07
	smpsReturn

llz1_Call01:
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $03, dKick, $01, nRst, $07
	dc.b	dKick, $01, nRst, $03, dSnare, $01, nRst, $03, dSnare, $08, dKick, $01
	dc.b	nRst, $03, dSnare, $01, nRst, $07, dKick, $01, nRst, $03, dKick, $01
	dc.b	nRst, $03, dSnare, $01, nRst, $03, dSnare, $04, dKick, $01, nRst, $07
	dc.b	dSnare, $01, nRst, $0B, dKick, $01, nRst, $03, dSnare, $01, nRst, $03
	dc.b	dSnare, $01, nRst, $07, dKick, $01, nRst, $03, dSnare, $01, nRst, $07
	dc.b	dKick, $01, nRst, $03, dSnare, $01, nRst, $03, dSnare, $01, nRst, $03
	dc.b	dSnare, $04
	smpsReturn

llz1_Call02:
	dc.b	dKick, $04, $01, nRst, $03, dSnare, $01, nRst, $03, dSnare, $08, dKick
	dc.b	$04, dSnare, $01, nRst, $0B, dKick, $01, nRst, $03, dSnare, $01, nRst
	dc.b	$07, dKick, $01, nRst, $03, dKick, $04, dSnare, $01, nRst, $07, dKick
	dc.b	$04, $01, nRst, $03, dSnare, $01, nRst, $03, dSnare, $08, dKick, $04
	dc.b	dSnare, $01, nRst, $03, dKick, $01, nRst, $03, dSnare, $01, nRst, $07
	dc.b	dSnare, $01, nRst, $0B, dKick, $01, nRst, $03, dSnare, $01, nRst, $03
	dc.b	dKick, $04
	smpsReturn

llz1_Voices:
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

;	Voice $02
;	$35
;	$32, $31, $7A, $02, 	$4F, $15, $4F, $52, 	$06, $07, $08, $04
;	$00, $00, $00, $00, 	$18, $28, $18, $29, 	$0E, $23, $1E, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $03
	smpsVcCoarseFreq    $02, $0A, $01, $02
	smpsVcRateScale     $01, $01, $00, $01
	smpsVcAttackRate    $12, $0F, $15, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $08, $07, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $02, $01
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $00, $1E, $23, $0E

;	Voice $03
;	$39
;	$03, $61, $22, $21, 	$1F, $1F, $12, $1F, 	$05, $05, $05, $0B
;	$00, $00, $00, $00, 	$10, $10, $18, $18, 	$1E, $1D, $15, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $06, $00
	smpsVcCoarseFreq    $01, $02, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $12, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $05, $05, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $08, $00, $00
	smpsVcTotalLevel    $00, $15, $1D, $1E

;	Voice $04
;	$3D
;	$01, $21, $12, $31, 	$14, $0E, $0F, $0F, 	$00, $04, $03, $04
;	$00, $00, $00, $00, 	$00, $16, $16, $16, 	$1B, $05, $05, $05
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $02, $00
	smpsVcCoarseFreq    $01, $02, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $03, $04, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $06, $06, $06, $00
	smpsVcTotalLevel    $05, $05, $05, $1B

