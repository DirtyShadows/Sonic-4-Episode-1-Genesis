mgz1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     mgz1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       mgz1_DAC
	smpsHeaderFM        mgz1_FM1,	$00, $10
	smpsHeaderFM        mgz1_FM2,	$00, $02
	smpsHeaderFM        mgz1_FM3,	$E8, $16
	smpsHeaderFM        mgz1_FM4,	$E8, $12
	smpsHeaderFM        mgz1_FM5,	$00, $02
	smpsHeaderPSG       mgz1_PSG1,	$D0, $02, $00, $00
	smpsHeaderPSG       mgz1_PSG2,	$D0, $02, $00, $00
	smpsHeaderPSG       mgz1_PSG3,	$D0, $02, $00, $00

; FM1 Data
mgz1_FM1:
	smpsCall            mgz1_Call20
	smpsCall            mgz1_Call21
	smpsCall            mgz1_Call22
	smpsCall            mgz1_Call23
	smpsCall            mgz1_Call24
	smpsCall            mgz1_Call25
	smpsCall            mgz1_Call26
	smpsJump            mgz1_FM1

; FM2 Data
mgz1_FM2:
	smpsCall            mgz1_Call19
	smpsCall            mgz1_Call1A
	smpsCall            mgz1_Call1B
	smpsCall            mgz1_Call1C
	smpsCall            mgz1_Call1D
	smpsCall            mgz1_Call1E
	smpsCall            mgz1_Call1F
	smpsJump            mgz1_FM2

; FM3 Data
mgz1_FM3:
	smpsCall            mgz1_Call13
	smpsCall            mgz1_Call13
	smpsCall            mgz1_Call14
	smpsCall            mgz1_Call15
	smpsCall            mgz1_Call16
	smpsCall            mgz1_Call17
	smpsCall            mgz1_Call18
	smpsJump            mgz1_FM3

; FM4 Data
mgz1_FM4:
	smpsCall            mgz1_Call0D
	smpsCall            mgz1_Call0D
	smpsCall            mgz1_Call0E
	smpsCall            mgz1_Call0F
	smpsCall            mgz1_Call10
	smpsCall            mgz1_Call11
	smpsCall            mgz1_Call12
	smpsJump            mgz1_FM4

; FM5 Data
mgz1_FM5:
	smpsCall            mgz1_Call06
	smpsCall            mgz1_Call07
	smpsCall            mgz1_Call08
	smpsCall            mgz1_Call09
	smpsCall            mgz1_Call0A
	smpsCall            mgz1_Call0B
	smpsCall            mgz1_Call0C
	smpsJump            mgz1_FM5

; PSG1 Data
mgz1_PSG1:
	smpsCall            mgz1_Call33
	smpsCall            mgz1_Call33
	smpsCall            mgz1_Call34
	smpsCall            mgz1_Call35
	smpsCall            mgz1_Call36
	smpsCall            mgz1_Call37
	smpsCall            mgz1_Call38
	smpsJump            mgz1_PSG1

; PSG2 Data
mgz1_PSG2:
	smpsCall            mgz1_Call2D
	smpsCall            mgz1_Call2D
	smpsCall            mgz1_Call2E
	smpsCall            mgz1_Call2F
	smpsCall            mgz1_Call30
	smpsCall            mgz1_Call31
	smpsCall            mgz1_Call32
	smpsJump            mgz1_PSG2

; PSG3 Data
mgz1_PSG3:
	smpsPSGform         $E7
	smpsCall            mgz1_Call27
	smpsCall            mgz1_Call28
	smpsCall            mgz1_Call29
	smpsCall            mgz1_Call29
	smpsCall            mgz1_Call2A
	smpsCall            mgz1_Call2B
	smpsCall            mgz1_Call2C
	smpsJump            mgz1_PSG3

; DAC Data
mgz1_DAC:
	smpsCall            mgz1_Call00
	smpsCall            mgz1_Call01
	smpsCall            mgz1_Call02
	smpsCall            mgz1_Call02
	smpsCall            mgz1_Call03
	smpsCall            mgz1_Call04
	smpsCall            mgz1_Call05
	smpsJump            mgz1_DAC

mgz1_Call20:
	smpsSetvoice        $00
	dc.b	nC2, $08, nG2, $04, nC2, $08, nD2, $04, nEb2, nG2, nBb2, $08
	dc.b	nF2, $04, nBb2, $08, nC3, $02, nC4, nBb2, nF3, nBb3, nF4, nAb2
	dc.b	$08, nEb2, $04, nAb2, $08, nG2, $04, nF2, nEb2, nCs2, $08, nAb2
	dc.b	$04, nCs2, nCs3, $02, nCs2, nF2, nAb2, nCs3, nF3, nAb3, nCs4
	smpsReturn

mgz1_Call21:
	dc.b	nC2, $08, nG2, $04, nC2, $08, nD2, $04, nEb2, nG2, nBb2, $08
	dc.b	nF2, $04, nBb2, $08, nC3, $02, nC4, nBb2, nF3, nBb3, nF4, nAb2
	dc.b	$08, nEb2, $04, nAb2, $08, nG2, $04, nF2, nEb2, nCs2, $08, nAb2
	dc.b	$04, nCs2, nCs3, $02, nCs2, nF2, nAb2, nCs3, nF3, nAb3, nCs4
	smpsReturn

mgz1_Call22:
	dc.b	nC2, $08, nG2, $04, nC2, $08, nD2, $04, nEb2, nG2, nBb2, $08
	dc.b	nF2, $04, nBb2, $08, nF2, $04, nBb2, $02, nBb3, nA2, nA3, nAb2
	dc.b	$08, nEb2, $04, nAb2, $08, nG2, $02, nG3, nFs2, $04, nF2, nEb2
	dc.b	nEb2, nRst, nF2, nRst, nFs2, nG2, $02, nG3, nG4, nG3
	smpsReturn

mgz1_Call23:
	dc.b	nC2, $08, nG2, $04, nC2, $08, nD2, $04, nEb2, nG2, nBb2, $08
	dc.b	nF2, $04, nBb2, $08, nF2, $04, nBb2, $02, nBb3, nA2, nA3, nAb2
	dc.b	$08, nEb2, $04, nAb2, $08, $02, nAb3, nG2, $04, nEb2, nF2, nF2
	dc.b	nRst, nAb2, nRst, nFs2, nRst, nG2
	smpsReturn

mgz1_Call24:
	dc.b	nC3, $04, nC2, nG2, nC2, $08, nD2, $04, nEb2, nG2, nBb2, $08
	dc.b	nF2, $04, nBb2, $08, nF2, $04, nBb2, $02, nBb3, nA3, $04, nAb3
	dc.b	$08, nEb3, $04, nAb2, $08, nG2, $02, nG3, nFs2, $04, nF2, nRst
	dc.b	nAb2, nRst, nG2, nRst, nAb2, $02, nAb3, nG2, $04, nBb2, $02, nBb3
	smpsReturn

mgz1_Call25:
	dc.b	nC2, $08, nG2, $04, nC2, $08, nG2, $04, nFs2, $02, nG3, nF2
	dc.b	$04, nEb2, $08, nBb2, $04, nEb2, $08, nBb2, $04, nEb3, $02, nG3
	dc.b	nBb3, nEb4, nAb2, $04, nAb2, nEb2, nAb2, $08, nEb3, $04, nAb2, nF2
	dc.b	nRst, nFs2, nRst, nAb2, nRst, nG2, nRst, nBb2
	smpsReturn

mgz1_Call26:
	dc.b	nEb3, $04, nBb3, nEb3, $02, nEb4, nD4, $04, nA3, nD3, $02, nD4
	dc.b	nCs3, nAb3, nCs4, nCs3
	smpsReturn

mgz1_Call19:
	smpsSetvoice        $01
	dc.b	nC5, $02, nC5, nC5, $03, nRst, $05, nG4, $0C, nBb4, $08, nC5
	dc.b	$02, nC5, nC5, $03, nRst, $05, nEb5, $14, nC5, $02, nC5, nC5
	dc.b	$03, nRst, $05, nG4, $0C, nBb4, $08, nC5, $02, nC5, nC5, $03
	dc.b	nRst, $05, nBb4, $14
	smpsReturn

mgz1_Call1A:
	dc.b	nC5, $02, nC5, nC5, $03, nRst, $05, nG4, $0C, nBb4, $08, nC5
	dc.b	$02, nC5, nC5, $03, nRst, $05, nEb5, $14, nC5, $02, nC5, nC5
	dc.b	$03, nRst, $05, nG4, $0C, nBb4, $08, nC5, $02, nC5, nC5, $03
	dc.b	nRst, $05, nBb4, $14
	smpsReturn

mgz1_Call1B:
	dc.b	nRst, $04, nG5, $02, nRst, nD5, nRst, $06, nG5, $02, nRst, nD5
	dc.b	nRst, $06, nC5, $02, nRst, $06, nF5, $02, nRst, nC5, nRst, $06
	dc.b	nF5, $02, nRst, nC5, nRst, $06, nBb4, $02, nRst, $06, nEb5, $02
	dc.b	nRst, nBb4, nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06, nAb4, $02
	dc.b	nRst, $06, nG4, $02, nRst, $06, nAb4, $02, nRst, $06, nBb4, $02
	dc.b	nRst, $06, nD5, $02, nRst
	smpsReturn

mgz1_Call1C:
	dc.b	smpsNoAttack, $04, nG5, $02, nRst, nD5, nRst, $06, nG5, $02, nRst, nD5
	dc.b	nRst, $06, nC5, $02, nRst, $06, nF5, $02, nRst, nC5, nRst, $06
	dc.b	nF5, $02, nRst, nC5, nRst, $06, nBb5, $02, nRst, $06, nEb5, $02
	dc.b	nRst, nBb4, nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06, nAb5, $02
	dc.b	nRst, $06, nAb5, $02, nRst, $06, nAb5, $02, nRst, $06, nC5, $02
	dc.b	nRst, $06, nD5, $02, nRst
	smpsReturn

mgz1_Call1D:
	dc.b	nC5, $02, nF4, nG4, nC4, nRst, $10, nC4, $02, nF4, nG4, nBb4
	dc.b	nC5, nF5, nG5, nBb4, nRst, $10, nBb4, $02, nF4, nBb4, nF5, nEb5
	dc.b	nBb4, nAb4, nEb4, nRst, $10, nAb3, $02, nEb4, nAb4, nEb5, nRst, $04
	dc.b	nC5, $02, nRst, $06, nAb4, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nD5, $02, nRst
	smpsReturn

mgz1_Call1E:
	dc.b	nC5, $02, nF4, nG4, nC4, nRst, $10, nC4, $02, nF4, nG4, nBb4
	dc.b	nC5, nF5, nG5, nBb4, nRst, $10, nBb3, $02, nF4, nBb4, nF5, nEb5
	dc.b	nBb4, nAb4, nEb4, nRst, $10, nAb3, $02, nEb4, nAb4, nEb5, nRst, $04
	dc.b	nEb5, $02, nRst, $06, nCs5, $02, nRst, $06, nB4, $02, nRst, $06
	dc.b	nD5, $02, nRst
	smpsReturn

mgz1_Call1F:
	dc.b	smpsNoAttack, $04, nEb5, nEb5, nRst, nD5, nD5, nCs5, nCs5
	smpsReturn

mgz1_Call13:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

mgz1_Call14:
	dc.b	smpsNoAttack, $08
	smpsSetvoice        $02
	dc.b	nC6, $0C, nEb6, $08, nD6, nBb5, $04, nC6, $0C, nG5, nF5, $08
	dc.b	nG5, $0C, nC6, $16, nRst
	smpsReturn

mgz1_Call15:
	dc.b	smpsNoAttack, $08, nC6, $0C, nEb6, $08, nD6, $04, nBb5, $08, nC6, $0C
	dc.b	nG5, nBb5, $08, nC6, $0C, nAb5, $16, nRst
	smpsReturn

mgz1_Call16:
	dc.b	smpsNoAttack, $0C, nC4, $04, nEb4, nF4, nG4, nBb4, nRst, nC5, nRst, nG4
	dc.b	nBb4, nRst, $18, nC4, $04, nEb4, nF4, nG4, nBb4, nRst, nC5, nRst
	dc.b	nEb5, nD5, $10
	smpsReturn

mgz1_Call17:
	dc.b	nBb4, $08, nRst, $04, nC4, nEb4, nF4, nG4, nBb4, nRst, nC5, nRst
	dc.b	nG4, nBb4, $16, nRst, $02, nG4, $08, nC4, $04, nEb4, $08, nRst
	dc.b	$04, nF4, $08, nRst, $04, nFs4, $08, nRst, $04, nG4, nRst
	smpsReturn

mgz1_Call18:
	dc.b	nBb4, $04, nRst, $1C
	smpsReturn

mgz1_Call0D:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz1_Call0E:
	smpsSetvoice        $02
	dc.b	nC5, $0C, nEb5, $08, nD5, nBb4, $04, nC5, $0C, nG4, nF4, $08
	dc.b	nG4, $0C, nC5, $16, nRst, $1E
	smpsReturn

mgz1_Call0F:
	dc.b	nC5, $0C, nEb5, $08, nD5, $04, nBb4, $08, nC5, $0C, nG4, nBb4
	dc.b	$08, nC5, $0C, nAb4, $16, nRst, $1E
	smpsReturn

mgz1_Call10:
	dc.b	smpsNoAttack, nRst, $04, nC4, nEb4, nF4, nG4, nBb4, nRst, nC5, nRst, nG4
	dc.b	nBb4, $14, nRst, $08, nC4, $04, nEb4, nF4, nG4, nBb4, nRst, nC5
	dc.b	nRst, nEb5, nD5, $10, nBb4, $08
	smpsReturn

mgz1_Call11:
	dc.b	nRst, $04, nC4, nEb4, nF4, nG4, nBb4, nRst, nC5, nRst, nG4, nBb4
	dc.b	$16, nRst, $02, nG4, $08, nC4, $04, nEb4, $08, nRst, $04, nF4
	dc.b	$08, nRst, $04, nFs4, $08, nRst, $04, nG4, nRst, nBb4, nRst
	smpsReturn

mgz1_Call12:
	dc.b	smpsNoAttack, $20
	smpsReturn

mgz1_Call06:
	smpsSetvoice        $01
	dc.b	nC4, $02, nC4, nC4, $03, nRst, $05, nC4, $14, nF4, $02, nF4
	dc.b	nF4, $03, nRst, $05, nF4, $14, nEb4, $02, nEb4, nEb4, $03, nRst
	dc.b	$05, nEb4, $14, nCs4, $02, nCs4, nCs4, $03, nRst, $05, nCs4, $14
	smpsReturn

mgz1_Call07:
	dc.b	nC4, $02, nC4, nC4, $03, nRst, $05, nC4, $14, nF4, $02, nF4
	dc.b	nF4, $03, nRst, $05, nF4, $14, nEb4, $02, nEb4, nEb4, $03, nRst
	dc.b	$05, nEb4, $14, nCs4, $02, nCs4, nCs4, $03, nRst, $05, nCs4, $14
	smpsReturn

mgz1_Call08:
	dc.b	nRst, $04, nC5, $02, nRst, nG4, nRst, $06, nC5, $02, nRst, nG4
	dc.b	nRst, $06, nG4, $02, nRst, $06, nBb4, $02, nRst, nF4, nRst, $06
	dc.b	nBb4, $02, nRst, nF4, nRst, $06, nF4, $02, nRst, $06, nBb4, $02
	dc.b	nRst, nEb4, nRst, $06, nBb4, $02, nRst, nEb4, nRst, $06, nEb4, $02
	dc.b	nRst, $06, nC4, $02, nRst, $06, nEb4, $02, nRst, $06, nF4, $02
	dc.b	nRst, $06, nEb4, $02, nRst
	smpsReturn

mgz1_Call09:
	dc.b	smpsNoAttack, $04, nC4, $02, nRst, nG4, nRst, $06, nC4, $02, nRst, nG3
	dc.b	nRst, $06, nG3, $02, nRst, $06, nBb3, $02, nRst, nF3, nRst, $06
	dc.b	nBb3, $02, nRst, nF3, nRst, $06, nF4, $02, nRst, $06, nBb3, $02
	dc.b	nRst, nEb4, nRst, $06, nBb4, $02, nRst, nEb4, nRst, $06, nEb4, $02
	dc.b	nRst, $06, nF4, $02, nRst, $06, nEb4, $02, nRst, $06, nF4, $02
	dc.b	nRst, $06, nG4, $02, nRst
	smpsReturn

mgz1_Call0A:
	dc.b	smpsNoAttack, $04, nC4, nEb4, nF4, nG4, nBb4, nRst, nC5, nRst, nG4, nBb4
	dc.b	$14, nRst, $08, nC4, $04, nEb4, nF4, nG5, nBb4, nRst, nC5, nRst
	dc.b	nAb4, $02, nRst, $06, nF3, $02, nRst, $06, nF4, $02, nRst, $06
	dc.b	nG4, $02, nRst
	smpsReturn

mgz1_Call0B:
	dc.b	nRst, $04, nC4, nEb4, nF4, nG4, nBb4, nRst, nC5, nRst, nG4, nBb4
	dc.b	$16, nRst, $02, nG4, $08, nC4, $04, nEb4, $08, nRst, $04, nF4
	dc.b	$08, nRst, $04, nFs4, $02, nRst, $06, nAb4, $02, nRst, $06, nG4
	dc.b	$02, nRst, $06, nFs4, $02, nRst
	smpsReturn

mgz1_Call0C:
	dc.b	smpsNoAttack, $04, nBb3, nBb4, nRst, nA4, nA4, nAb4, nAb4
	smpsReturn

mgz1_Call33:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

mgz1_Call34:
	smpsPSGvoice        $00
	dc.b	nC6, $0C, nEb6, $08, nD6, nBb5, $04, nC6, $0C, nG5, nF5, $08
	dc.b	nG5, $0C, nC6, $16, nRst, $1E
	smpsReturn

mgz1_Call35:
	dc.b	nC6, $0C, nEb6, $08, nD6, $04, nBb5, $08, nC6, $0C, nG5, nBb5
	dc.b	$08, nC6, $0C, nAb5, $16, nRst, $1E
	smpsReturn

mgz1_Call36:
	dc.b	smpsNoAttack, nRst, $04, nC5, nEb5, nF5, nG5, nBb5, nRst, nC6, nRst, nG5
	dc.b	nBb5, $14, nRst, $08, nC5, $04, nEb5, nF5, nG5, nBb5, nRst, nC6
	dc.b	nRst, nEb6, nD6, $10, nBb5, $08
	smpsReturn

mgz1_Call37:
	dc.b	nRst, $04, nC5, nEb5, nF5, nG5, nBb5, nRst, nC6, nRst, nG5, nBb5
	dc.b	$16, nRst, $02, nG5, $08, nC5, $04, nEb5, $08, nRst, $04, nF5
	dc.b	$08, nRst, $04, nFs5, $08, nRst, $04, nG5, nRst, nBb5, nRst
	smpsReturn

mgz1_Call38:
	dc.b	smpsNoAttack, $20
	smpsReturn

mgz1_Call2D:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz1_Call2E:
	smpsPSGvoice        $00
	dc.b	nC5, $0C, nEb5, $08, nD5, nBb4, $04, nC5, $0C, nG4, nF4, $08
	dc.b	nG4, $0C, nC5, $16, nRst, $1E
	smpsReturn

mgz1_Call2F:
	dc.b	nC5, $0C, nEb5, $08, nD5, $04, nBb4, $08, nC5, $0C, nG4, nBb4
	dc.b	$08, nC5, $0C, nAb4, $16, nRst, $1E
	smpsReturn

mgz1_Call30:
	dc.b	smpsNoAttack, nRst, $0C, nC5, $04, nEb5, nF5, nG5, nBb5, nRst, nC6, nRst
	dc.b	nG5, nBb5, nRst, $18, nC5, $04, nEb5, nF5, nG5, nBb5, nRst, nC6
	dc.b	nRst, nEb6, nD6, $10
	smpsReturn

mgz1_Call31:
	dc.b	nBb5, $08, nRst, $04, nC5, nEb5, nF5, nG5, nBb5, nRst, nC6, nRst
	dc.b	nG5, nBb5, $16, nRst, $02, nG5, $08, nC5, $04, nEb5, $08, nRst
	dc.b	$04, nF5, $08, nRst, $04, nFs5, $08, nRst, $04, nG5, nRst
	smpsReturn

mgz1_Call32:
	dc.b	nBb5, $04, nRst, $1C
	smpsReturn

mgz1_Call27:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, $04, $02, $04, nCs0, nCs0, $02, nRst
	dc.b	nCs0, nCs0, $06, $02, nRst, nCs0, nCs0, $04, $02, $04, nCs0, nCs0
	dc.b	$02, nRst, nCs0, nCs0, nRst, $04, nCs0, $02, nRst, nCs0, nCs0, $04
	dc.b	$02, $04, nCs0, nCs0, $02, nRst, nCs0, nCs0, $06, $02, nRst, nCs0
	dc.b	nCs0, $04, $02, $08, $02, nRst, nCs0, nRst, nCs0, nCs0
	smpsReturn

mgz1_Call28:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, $04, $02, $04, nCs0, nCs0, $02, nRst
	dc.b	nCs0, nCs0, $06, $02, nRst, nCs0, nCs0, $04, $02, $04, nCs0, nCs0
	dc.b	$02, nRst, nCs0, nCs0, nRst, $04, nCs0, $02, nRst, nCs0, nCs0, $04
	dc.b	$02, $04, nCs0, nCs0, $02, nRst, nCs0, nCs0, $06, $02, nRst, nCs0
	dc.b	nCs0, nRst, nCs0, nCs0, nRst, $06, nCs0, $02, nRst, nCs0, nRst, nCs0
	dc.b	nCs0
	smpsReturn

mgz1_Call29:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, $06, $08, $02, nRst, $04, nCs0, $02
	dc.b	nCs0, nCs0, $06, nCs0, nCs0, $02, $06, $04, nCs0, nCs0, $02, $04
	dc.b	$02, nRst, nCs0, nCs0, $06, $08, $02, nRst, $04, nCs0, $02, nCs0
	dc.b	nCs0, $06, $02, nRst, $04, nCs0, $02, $06, $04, nCs0, nCs0, $02
	dc.b	nCs0, nRst
	smpsReturn

mgz1_Call2A:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, $06, $08, $02, nRst, $04, nCs0, $02
	dc.b	nCs0, nCs0, nCs0, nRst, nCs0, nCs0, $06, $08, $02, nRst, $04, nCs0
	dc.b	$02, nCs0, nCs0, nCs0, nRst, nCs0, nCs0, $06, $08, $02, nRst, $04
	dc.b	nCs0, $02, nCs0, nCs0, $06, $02, nRst, $04, nCs0, $02, $06, $04
	dc.b	nCs0, nCs0, $02, nCs0, nRst
	smpsReturn

mgz1_Call2B:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, $06, $08, $02, nRst, $04, nCs0, $02
	dc.b	nCs0, nCs0, nCs0, nRst, nCs0, nCs0, $06, $08, $02, nRst, $04, nCs0
	dc.b	$02, nCs0, nCs0, nCs0, nRst, nCs0, nCs0, $06, $08, $02, nRst, $04
	dc.b	nCs0, $02, nCs0, nCs0, $06, $02, nRst, $04, nCs0, $02, nCs0, nRst
	dc.b	$04, nCs0, nCs0, nCs0, $02, nCs0, nRst
	smpsReturn

mgz1_Call2C:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nCs0, nCs0
	dc.b	nRst, nCs0, nRst
	smpsReturn

mgz1_Call00:
	dc.b	dKick, $02, nRst, $06, dSnare, dSnare, $04, nRst, $02, dKick, nRst, dSnare
	dc.b	nRst, dSnare, dSnare, dKick, nRst, $06, dSnare, dSnare, $04, nRst, $02, dKick
	dc.b	nRst, dSnare, dSnare, nRst, dSnare, dKick, nRst, $06, dSnare, dSnare, $04, nRst
	dc.b	$02, dKick, nRst, dSnare, nRst, dSnare, dSnare, dKick, nRst, $06, dSnare, dSnare
	dc.b	$02, dKick, nRst, dKick, nRst, dSnare, dSnare, dSnare, dSnare
	smpsReturn

mgz1_Call01:
	dc.b	dKick, $02, nRst, $06, dSnare, dSnare, $04, nRst, $02, dKick, nRst, dSnare
	dc.b	nRst, dSnare, dSnare, dKick, nRst, $06, dSnare, dSnare, $04, nRst, $02, dKick
	dc.b	nRst, dSnare, dSnare, nRst, dSnare, dKick, nRst, $06, dSnare, dSnare, $04, nRst
	dc.b	$02, dKick, nRst, dSnare, nRst, dSnare, dSnare, dKick, nRst, dSnare, dSnare, dSnare
	dc.b	$04, dKick, $02, nRst, dSnare, nRst, dKick, dKick, dSnare, dSnare, dSnare, dSnare
	smpsReturn

mgz1_Call02:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $04, dSnare, $02, nRst, $04
	dc.b	dKick, $02, nRst, dSnare, $08, dKick, $02, nRst, $04, nRst, $02, dSnare
	dc.b	$06, $02, nRst, $04, dKick, dSnare, $06, nRst, $02, dKick, nRst, $06
	dc.b	dSnare, $02, nRst, $04, dSnare, $02, nRst, $04, dKick, $02, nRst, dSnare
	dc.b	$08, dKick, $02, nRst, dKick, nRst, dSnare, $06, $02, dKick, $04, dKick
	dc.b	dSnare, $02, dSnare, dSnare, nRst
	smpsReturn

mgz1_Call03:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $04, dSnare, $02, nRst, $04
	dc.b	dKick, $02, nRst, dSnare, $08, dKick, $02, nRst, $06, dSnare, $02, nRst
	dc.b	$04, nRst, $02, dSnare, nRst, dKick, nRst, dSnare, $08, dKick, $02, nRst
	dc.b	$06, dSnare, $02, nRst, $04, dSnare, $02, nRst, $04, dKick, $02, nRst
	dc.b	dSnare, $08, dKick, $02, nRst, dKick, nRst, dSnare, $06, $02, dKick, $04
	dc.b	dKick, dSnare, $02, dSnare, dSnare, nRst
	smpsReturn

mgz1_Call04:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $04, dSnare, $02, nRst, $04
	dc.b	dKick, $02, nRst, dSnare, $08, dKick, $02, nRst, $06, dSnare, $02, nRst
	dc.b	$04, dSnare, $02, nRst, $04, dKick, $02, nRst, dSnare, $08, dKick, $02
	dc.b	nRst, $06, dSnare, $02, nRst, $04, dSnare, $02, nRst, $04, dKick, $02
	dc.b	nRst, dSnare, $04, dKick, $02, nRst, dSnare, nRst, dKick, nRst, dKick, $04
	dc.b	dSnare, $02, nRst, dKick, $04, dKick, dSnare, $02, dSnare, dSnare, dSnare
	smpsReturn

mgz1_Call05:
	dc.b	dKick, $02, nRst, dSnare, nRst, dSnare, nRst, dKick, dKick, dSnare, nRst, dKick
	dc.b	nRst, dSnare, dSnare, dSnare, dSnare
	smpsReturn

mgz1_Voices:
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
;	$38
;	$33, $01, $51, $01, 	$10, $13, $1A, $1B, 	$0F, $1F, $1F, $1F
;	$01, $01, $01, $01, 	$33, $03, $03, $08, 	$16, $1A, $19, $10
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $03
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $1A, $13, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $0F
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $00, $00, $00, $03
	smpsVcReleaseRate   $08, $03, $03, $03
	smpsVcTotalLevel    $10, $19, $1A, $16

;	Voice $02
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

