llz3_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     llz3_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       llz3_DAC
	smpsHeaderFM        llz3_FM1,	$00, $10
	smpsHeaderFM        llz3_FM2,	$00, $10
	smpsHeaderFM        llz3_FM3,	$00, $10
	smpsHeaderFM        llz3_FM4,	$00, $10
	smpsHeaderFM        llz3_FM5,	$00, $10
	smpsHeaderPSG       llz3_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       llz3_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       llz3_PSG3,	$D0, $02, $00, $00

; FM1 Data
llz3_FM1:
	smpsCall            llz3_Call1E
	smpsCall            llz3_Call1F
	smpsCall            llz3_Call20
	smpsCall            llz3_Call21
	smpsCall            llz3_Call22
	smpsCall            llz3_Call23
	smpsJump            llz3_FM1

; FM2 Data
llz3_FM2:
	smpsCall            llz3_Call18
	smpsCall            llz3_Call19
	smpsCall            llz3_Call1A
	smpsCall            llz3_Call1B
	smpsCall            llz3_Call1C
	smpsCall            llz3_Call1D
	smpsJump            llz3_FM2

; FM3 Data
llz3_FM3:
	smpsCall            llz3_Call12
	smpsCall            llz3_Call13
	smpsCall            llz3_Call14
	smpsCall            llz3_Call15
	smpsCall            llz3_Call16
	smpsCall            llz3_Call17
	smpsJump            llz3_FM3

; FM4 Data
llz3_FM4:
	smpsCall            llz3_Call0C
	smpsCall            llz3_Call0D
	smpsCall            llz3_Call0E
	smpsCall            llz3_Call0F
	smpsCall            llz3_Call10
	smpsCall            llz3_Call11
	smpsJump            llz3_FM4

; FM5 Data
llz3_FM5:
	smpsCall            llz3_Call06
	smpsCall            llz3_Call07
	smpsCall            llz3_Call08
	smpsCall            llz3_Call09
	smpsCall            llz3_Call0A
	smpsCall            llz3_Call0B
	smpsJump            llz3_FM5

; PSG1 Data
llz3_PSG1:
	smpsCall            llz3_Call2F
	smpsCall            llz3_Call30
	smpsCall            llz3_Call31
	smpsCall            llz3_Call32
	smpsCall            llz3_Call33
	smpsCall            llz3_Call34
	smpsJump            llz3_PSG1

; PSG2 Data
llz3_PSG2:
	smpsCall            llz3_Call29
	smpsCall            llz3_Call2A
	smpsCall            llz3_Call2B
	smpsCall            llz3_Call2C
	smpsCall            llz3_Call2D
	smpsCall            llz3_Call2E
	smpsJump            llz3_PSG2

; PSG3 Data
llz3_PSG3:
	smpsPSGform         $E7
	smpsCall            llz3_Call24
	smpsCall            llz3_Call25
	smpsCall            llz3_Call26
	smpsCall            llz3_Call27
	smpsCall            llz3_Call26
	smpsCall            llz3_Call28
	smpsJump            llz3_PSG3

; DAC Data
llz3_DAC:
	smpsCall            llz3_Call00
	smpsCall            llz3_Call01
	smpsCall            llz3_Call02
	smpsCall            llz3_Call03
	smpsCall            llz3_Call04
	smpsCall            llz3_Call05
	smpsJump            llz3_DAC

llz3_Call1E:
	smpsSetvoice        $00
	dc.b	nD3, $04, nA2, nF2, nD2, nRst, nA2, nD3, $08, nG2, nE2, $04
	dc.b	nC2, $08, nG2, $04, nC3, nB2, nBb2, $02, nRst, nBb2, $04, nA2
	dc.b	nF2, nG2, $02, nRst, nG2, $04, nF2, nD2, nE2, nF2, nG2, $02
	dc.b	nRst, nG2, $08, nA2, $04, nBb2, $08
	smpsReturn

llz3_Call1F:
	dc.b	nD3, $04, nA2, nF2, nD2, nRst, nA2, nD3, $08, nG2, nE2, $04
	dc.b	nC2, $08, nG2, $04, nC3, nB2, nBb2, $02, nRst, nBb2, $04, nA2
	dc.b	nF2, nG2, $02, nRst, nG2, $04, nF2, nD2, nE2, nF2, nG2, $02
	dc.b	nRst, nG2, $08, nA2, $04, nF2, $08
	smpsReturn

llz3_Call20:
	dc.b	nD3, $04, nF2, nG2, nD2, nRst, nE2, nA2, nF2, nG2, nC3, nF3
	dc.b	nE3, nRst, nC3, nF3, nE3, nBb2, nF2, nC3, nBb2, $08, nF2, $04
	dc.b	nF3, nBb2, nRst, nD2, nE2, nF2, nG2, nF2, nA2, nC3
	smpsReturn

llz3_Call21:
	dc.b	nD3, $04, nF2, nG2, nD2, nRst, nF2, nA2, nF2, nG2, nC3, nF3
	dc.b	$08, nE3, $04, nC3, nEb3, nBb2, nRst, nF2, nC3, nBb2, $08, nF2
	dc.b	$04, nF3, nBb2, nRst, nD2, nE2, nF2, nG2, nF2, nA2, nC3
	smpsReturn

llz3_Call22:
	dc.b	nD3, $04, nRst, nF2, nD2, nRst, nG2, nD2, nA2, nRst, nD2, nC3
	dc.b	nD2, nD3, nD2, nF3, nD3, nF2, nRst, nD3, nF2, nRst, nF2, nC3
	dc.b	nD3, nRst, nF2, nC3, nD3, nF3, nF2, nA2, nD2
	smpsReturn

llz3_Call23:
	dc.b	nBb2, $04, nRst, nD2, nF2, nRst, nD2, nG2, nF2, nRst, nBb2, nA2
	dc.b	nF2, nC3, nBb2, nA2, nF2, nBb1, $0C, nF2, $04, nBb2, nE2, $0C
	dc.b	nEb2, $08, nBb2, $04, nEb3, $08, nD3, $04, nCs3, $08
	smpsReturn

llz3_Call18:
	smpsSetvoice        $01
	dc.b	nA5, $10, nRst, $04, nC6, $08, nD6, $04, nG5, $0C, nF5, $08
	dc.b	nRst, $04, nE5, $08, nD5, $0C, nRst, $04, nA5, $0C, nG5, $1C
	dc.b	nRst, $08
	smpsReturn

llz3_Call19:
	dc.b	nA5, $10, nRst, $04, nC6, $08, nD6, $04, nG5, $0C, nF5, $08
	dc.b	nRst, $04, nE5, $08, nD5, nRst, $04, nA5, $24, nRst, $10
	smpsReturn

llz3_Call1A:
	dc.b	nA5, $08, nF5, $04, nD5, nRst, nA5, nF5, nG5, $08, nRst, $04
	dc.b	nE5, nC5, nRst, nE5, nG5, $08, nF5, nRst, $04, nD5, $14, nRst
	dc.b	$20
	smpsReturn

llz3_Call1B:
	dc.b	nA5, $08, nF5, $04, nD5, nRst, nA5, nRst, nG5, nRst, nE5, nC5
	dc.b	$08, nC6, nB5, $04, nBb5, $20, nRst, $18, nA5, $04, nC6, nD6
	smpsReturn

llz3_Call1C:
	dc.b	nF5, $04, nRst, $10, nF5, $04, nE5, nD5, nRst, $14, nA5, $04
	dc.b	nC6, nD6, nF5, nRst, $10, nF5, $04, nE5, nD5, nRst, $14, nA5
	dc.b	$04, nC6, nD6
	smpsReturn

llz3_Call1D:
	dc.b	nF5, $04, nRst, $10, nF5, $04, nE5, nD5, nRst, $14, nD5, $04
	dc.b	nE5, nF5, nA5, $0C, nG5, $04, nRst, nG5, $0C, nC6, nBb5, $04
	dc.b	nRst, nBb5, $0C
	smpsReturn

llz3_Call12:
	smpsSetvoice        $01
	dc.b	nA4, $10, nRst, $04, nC5, $08, nD5, $04, nG4, $0C, nF4, $08
	dc.b	nRst, $04, nE4, $08, nD4, $0C, nRst, $04, nA4, $0C, nG4, $1C
	dc.b	nRst, $08
	smpsReturn

llz3_Call13:
	dc.b	nA4, $10, nRst, $04, nC5, $08, nD5, $04, nG4, $0C, nF4, $08
	dc.b	nRst, $04, nE4, $08, nD4, nRst, $04, nA4, $24, nRst, $10
	smpsReturn

llz3_Call14:
	dc.b	nA4, $08, nF4, $04, nD4, nRst, nA4, nF4, nG4, $08, nRst, $04
	dc.b	nE4, nC4, nRst, nE4, nG4, $08, nF4, nRst, $04, nD4, $14, nRst
	dc.b	$20
	smpsReturn

llz3_Call15:
	dc.b	nA4, $08, nF4, $04, nD4, nRst, nA4, nRst, nG4, nRst, nE4, nC4
	dc.b	$08, nC5, nB4, $04, nBb4, $20, nRst, $18, nA4, $04, nC5, nD5
	smpsReturn

llz3_Call16:
	dc.b	nF4, $04, nRst, $10, nF4, $04, nE4, nD4, nRst, $14, nA4, $04
	dc.b	nC5, nD5, nF4, nRst, $10, nF4, $04, nE4, nD4, nRst, $14, nA4
	dc.b	$04, nC5, nD5
	smpsReturn

llz3_Call17:
	dc.b	nF4, $04, nRst, $10, nF4, $04, nE4, nD4, nRst, $14, nD4, $04
	dc.b	nE4, nF4, nA4, $0C, nG4, $04, nRst, nG4, $0C, nC5, nBb4, $04
	dc.b	nRst, nBb4, $0C
	smpsReturn

llz3_Call0C:
	dc.b	smpsNoAttack, $08
	smpsSetvoice        $05
	dc.b	nD5, $04, nRst, nD5, nF5, nA5, nD6, nRst, $08, nC5, $04, nRst
	dc.b	nC6, nG5, nE5, nC5, nRst, nF5, nF5, nRst, nE5, nRst, nF5, nRst
	dc.b	nE5, nRst, nD5, nC5, nF5, nE5, nG5, nF5
	smpsReturn

llz3_Call0D:
	dc.b	nRst, $08, nD5, $04, nRst, nD5, nF5, nA5, nD6, nRst, $08, nC5
	dc.b	$04, nRst, nC6, nG5, nE5, nC5, nRst, nF5, nF5, nRst, nE5, nRst
	dc.b	nF5, nRst, nE5, nRst, nE5, nRst, nC5, nE5, nF5, nG5
	smpsReturn

llz3_Call0E:
	dc.b	nRst, $04, nD6, nA5, nRst, nF5, nD5, nRst, nG5, nRst, nG5, nRst
	dc.b	nG5, nRst, nG5, nE5, nRst, $0C, nD6, $04, nBb5, nF5, nD5, nRst
	dc.b	nF5, nRst, nF5, nRst, nF5, nRst, nF5, nRst, nG5
	smpsReturn

llz3_Call0F:
	dc.b	nRst, $04, nD6, nA5, nRst, nF5, nD5, nRst, nG5, nRst, nG5, nRst
	dc.b	nF6, nE6, nD6, nC6, nF5, nRst, nF5, nRst, nG5, nG5, nF5, nRst
	dc.b	nF5, nRst, nF5, nRst, nG5, nRst, nC6, nD6, nA5
	smpsReturn

llz3_Call10:
	dc.b	nF5, $04, nRst, nF5, nRst, $10, nF5, $04, nRst, nD5, nD5, nRst
	dc.b	nD5, nRst, nD5, nRst, nF5, nRst, nF5, nRst, $10, nF5, $04, nRst
	dc.b	nF5, nRst, nF5, nF5, nRst, nF5, nRst
	smpsReturn

llz3_Call11:
	dc.b	nF5, $04, nRst, nF5, nRst, $10, nF5, $04, nRst, nF5, nRst, nF5
	dc.b	nF5, nRst, nF5, nRst, nBb5, nF5, nRst, nC6, nRst, nE5, nRst, $08
	dc.b	nEb6, $04, nBb5, nRst, nG5, nRst, nA5, nBb5, nRst
	smpsReturn

llz3_Call06:
	dc.b	smpsNoAttack, $08
	smpsSetvoice        $05
	dc.b	nD4, $04, nRst, nD4, nF4, nA4, nD5, nRst, $08, nC4, $04, nRst
	dc.b	nC5, nG4, nE4, nC4, nRst, nF4, nF4, nRst, nE4, nRst, nF4, nRst
	dc.b	nE4, nRst, nD4, nC4, nF4, nE4, nG4, nF4
	smpsReturn

llz3_Call07:
	dc.b	nRst, $08, nD4, $04, nRst, nD4, nF4, nA4, nD5, nRst, $08, nC4
	dc.b	$04, nRst, nC5, nG4, nE4, nC4, nRst, nF4, nF4, nRst, nE4, nRst
	dc.b	nF4, nRst, nE4, nRst, nE4, nRst, nC4, nE4, nF4, nG4
	smpsReturn

llz3_Call08:
	dc.b	nRst, $04, nD5, nA4, nRst, nF4, nD4, nRst, nG4, nRst, nG4, nRst
	dc.b	nG4, nRst, nG4, nE4, nRst, $0C, nD5, $04, nBb4, nF4, nD4, nRst
	dc.b	nF4, nRst, nF4, nRst, nF4, nRst, nF4, nRst, nG4
	smpsReturn

llz3_Call09:
	dc.b	nRst, $04, nD5, nA4, nRst, nF4, nD4, nRst, nG4, nRst, nG4, nRst
	dc.b	nF5, nE5, nD5, nC5, nF4, nRst, nF4, nRst, nG4, nG4, nF4, nRst
	dc.b	nF4, nRst, nF4, nRst, nG4, nRst, nC5, nD5, nA4
	smpsReturn

llz3_Call0A:
	dc.b	nF4, $04, nRst, nF4, nRst, $10, nF4, $04, nRst, nD4, nD4, nRst
	dc.b	nD4, nRst, nD4, nRst, nF4, nRst, nF4, nRst, $10, nF4, $04, nRst
	dc.b	nF4, nRst, nF4, nF4, nRst, nF4, nRst
	smpsReturn

llz3_Call0B:
	dc.b	nF4, $04, nRst, nF4, nRst, $10, nF4, $04, nRst, nF4, nRst, nF4
	dc.b	nF4, nRst, nF4, nRst, nBb4, nF4, nRst, nC5, nRst, nE4, nRst, $08
	dc.b	nEb5, $04, nBb4, nRst, nG4, nRst, nA4, nBb4, nRst
	smpsReturn

llz3_Call2F:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        $00
	dc.b	nA4, $04, nRst, $1C, nG4, $04, nRst, $18, nBb4, $04, nBb4, nRst
	dc.b	nBb4, nRst, nBb4, nRst, nC5, nRst, $1C
	smpsReturn

llz3_Call30:
	dc.b	smpsNoAttack, nRst, $08, nA4, $04, nRst, $1C, nG4, $04, nRst, $18, nBb4
	dc.b	$04, nBb4, nRst, nBb4, nRst, nBb4, nRst, nA4, nRst, nC5, nRst, $14
	smpsReturn

llz3_Call31:
	dc.b	smpsNoAttack, nRst, $1C, nC5, $04, nRst, nC5, nRst, nC5, nRst, nD5, nC5
	dc.b	nRst, $20, nBb4, $04, nRst, nA4, nRst, nBb4, nRst, nBb4, nRst, nC5
	smpsReturn

llz3_Call32:
	dc.b	nRst, $1C, nC5, $04, nRst, nC5, nRst, $14, nBb4, $04, nRst, nBb4
	dc.b	nRst, nC5, nC5, nBb4, nRst, nC5, nRst, nBb4, nRst, nC5, nRst, $10
	smpsReturn

llz3_Call33:
	dc.b	nA4, $04, nRst, nA4, nRst, $10, nA4, $04, nRst, nA4, nA4, nRst
	dc.b	nG4, nRst, nF4, nRst, nA4, nRst, nC5, nRst, $10, nD5, $04, nRst
	dc.b	nA4, nRst, nA4, nC5, nRst, nD5, nRst
	smpsReturn

llz3_Call34:
	dc.b	nBb4, $04, nRst, nBb4, nRst, $10, nC5, $04, nRst, nBb4, nRst, nBb4
	dc.b	nC5, nRst, nBb4, nRst, $44
	smpsReturn

llz3_Call29:
	dc.b	smpsNoAttack, nRst, $40
	smpsPSGvoice        $00
	dc.b	nBb4, $0C, nRst, $04, nD5, $0C, nE5, $1C, nRst, $08
	smpsReturn

llz3_Call2A:
	dc.b	smpsNoAttack, nRst, $40, nBb4, $08, nRst, $04, nF5, $14, nE5, $10, nD5
	dc.b	$04, nRst, nC5, nRst
	smpsReturn

llz3_Call2B:
	dc.b	smpsNoAttack, $40, nD5, $08, nRst, $04, nBb4, $14, nRst, $20
	smpsReturn

llz3_Call2C:
	dc.b	smpsNoAttack, nRst, $30, nE5, $08, nEb5, $04, nD5, $24, nRst, $14, nF4
	dc.b	$04, nA4, nE5
	smpsReturn

llz3_Call2D:
	dc.b	nD5, $04, nRst, $10, nD5, $04, nC5, nA4, nRst, $14, nA4, $04
	dc.b	nC5, nF5, nD5, nRst, $10, nD5, $04, nC5, nA4, nRst, $14, nD5
	dc.b	$04, nF5, nD5
	smpsReturn

llz3_Call2E:
	dc.b	nBb4, $04, nRst, $10, nD5, $04, nC5, nBb4, nRst, $14, nF4, $04
	dc.b	nBb4, nA4, nF5, $0C, nE5, $04, nRst, nE5, $0C, nG5, nEb5, $04
	dc.b	nRst, nG5, nF5, $08
	smpsReturn

llz3_Call24:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, $16, nCs0, $02
	dc.b	nRst, nCs0, nRst, $12, nCs0, $02, nRst, $06, nCs0, $02, nRst, $0E
	dc.b	nCs0, $02, nRst, $0E, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst
	smpsReturn

llz3_Call25:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $04, nRst, $0A
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $0E
	dc.b	nCs0, $02, nRst, $0E, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst
	smpsReturn

llz3_Call26:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, $0A
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst
	smpsReturn

llz3_Call27:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02
	dc.b	nRst, $06, nCs0, $02, nRst, nCs0, nRst, $0A, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst
	smpsReturn

llz3_Call28:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, $0A
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst
	smpsReturn

llz3_Call00:
	dc.b	dKick, $02, nRst, dKick, nRst, dKick, nRst, dKick, nRst, dSnare, nRst, dKick
	dc.b	nRst, dSnare, nRst, dKick, nRst, dKick, nRst, dKick, nRst, dKick, nRst, dKick
	dc.b	nRst, dSnare, nRst, dKick, nRst, dSnare, nRst, dSnare, dSnare, dKick, nRst, dKick
	dc.b	nRst, dSnare, nRst, dKick, nRst, dKick, nRst, dKick, nRst, dSnare, nRst, dKick
	dc.b	nRst, dKick, nRst, dKick, nRst, dSnare, nRst, dKick, nRst, $06, dKick, $02
	dc.b	nRst, dSnare, nRst, dSnare, dSnare
	smpsReturn

llz3_Call01:
	dc.b	dKick, $02, nRst, dKick, nRst, dKick, nRst, dKick, nRst, dSnare, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, dKick, nRst, dSnare, nRst, dKick
	dc.b	nRst, $0A, dSnare, $02, nRst, dSnare, dSnare, dKick, nRst, dKick, nRst, dSnare
	dc.b	nRst, dKick, nRst, dKick, nRst, dKick, nRst, dSnare, nRst, dKick, nRst, dKick
	dc.b	nRst, dKick, nRst, dSnare, nRst, dKick, nRst, $06, dKick, $02, nRst, dSnare
	dc.b	nRst, dSnare, dSnare
	smpsReturn

llz3_Call02:
	dc.b	dKick, $02, nRst, $06, dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, dKick, nRst, dSnare, nRst, dKick, nRst, dKick
	dc.b	nRst, dSnare, nRst, dKick, nRst, dSnare, nRst, dSnare, nRst, dKick, nRst, dKick
	dc.b	nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06
	dc.b	dKick, $02, nRst, dKick, nRst, dSnare, nRst, dKick, nRst, $06, dKick, $02
	dc.b	nRst, dSnare, nRst, $06
	smpsReturn

llz3_Call03:
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, dKick, nRst, dSnare, nRst, dKick, nRst, dKick
	dc.b	nRst, dSnare, nRst, dKick, nRst, dSnare, nRst, dSnare, nRst, dKick, nRst, dKick
	dc.b	nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06
	dc.b	dKick, $02, nRst, dKick, nRst, dSnare, nRst, dKick, nRst, $06, dKick, $02
	dc.b	nRst, dSnare, nRst, dSnare, nRst
	smpsReturn

llz3_Call04:
	dc.b	dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick
	dc.b	nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06
	dc.b	dKick, $02, nRst, dKick, nRst, dSnare, nRst, dKick, nRst, dKick, nRst, dKick
	dc.b	nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06
	dc.b	dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick
	dc.b	nRst, dSnare, nRst, $06
	smpsReturn

llz3_Call05:
	dc.b	dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick
	dc.b	nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, dSnare, nRst, dKick, nRst, dKick, nRst, dKick
	dc.b	nRst, $06, dKick, $02, nRst, dSnare, nRst, dKick, nRst, $06, dKick, $02
	dc.b	nRst, dKick, nRst, dSnare, nRst, $06, dKick, $02, nRst, dSnare, nRst, dKick
	dc.b	nRst, dSnare, nRst, dKick, nRst
	smpsReturn

llz3_Voices:
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
;	$30, $71, $01, $00, 	$5F, $5A, $5F, $1F, 	$0D, $12, $0F, $09
;	$09, $07, $07, $06, 	$40, $38, $48, $17, 	$20, $15, $15, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $03
	smpsVcCoarseFreq    $00, $01, $01, $00
	smpsVcRateScale     $00, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0F, $12, $0D
	smpsVcDecayRate2    $06, $07, $07, $09
	smpsVcDecayLevel    $01, $04, $03, $04
	smpsVcReleaseRate   $07, $08, $08, $00
	smpsVcTotalLevel    $00, $15, $15, $20

;	Voice $02
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

;	Voice $03
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

;	Voice $04
;	$2C
;	$31, $71, $31, $71, 	$5F, $5F, $54, $5F, 	$05, $03, $0A, $0C
;	$00, $03, $03, $03, 	$00, $00, $87, $A7, 	$17, $19, $00, $02
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $03
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $14, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0A, $03, $05
	smpsVcDecayRate2    $03, $03, $03, $00
	smpsVcDecayLevel    $0A, $08, $00, $00
	smpsVcReleaseRate   $07, $07, $00, $00
	smpsVcTotalLevel    $02, $00, $19, $17

;	Voice $05
;	$39
;	$7C, $01, $1A, $53, 	$1F, $1F, $9F, $9F, 	$07, $0C, $08, $0B
;	$00, $06, $06, $06, 	$FA, $37, $37, $37, 	$26, $19, $34, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $01, $00, $07
	smpsVcCoarseFreq    $03, $0A, $01, $0C
	smpsVcRateScale     $02, $02, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $08, $0C, $07
	smpsVcDecayRate2    $06, $06, $06, $00
	smpsVcDecayLevel    $03, $03, $03, $0F
	smpsVcReleaseRate   $07, $07, $07, $0A
	smpsVcTotalLevel    $00, $34, $19, $26

