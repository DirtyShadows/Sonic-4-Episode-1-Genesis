mgz2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     mgz2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       mgz2_DAC
	smpsHeaderFM        mgz2_FM1,	$00, $10
	smpsHeaderFM        mgz2_FM2,	$F4, $10
	smpsHeaderFM        mgz2_FM3,	$F4, $10
	smpsHeaderFM        mgz2_FM4,	$F4, $10
	smpsHeaderFM        mgz2_FM5,	$F4, $10
	smpsHeaderPSG       mgz2_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       mgz2_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       mgz2_PSG3,	$D0, $02, $00, $00

; FM1 Data
mgz2_FM1:
	smpsCall            mgz2_Call23
	smpsCall            mgz2_Call24
	smpsCall            mgz2_Call25
	smpsCall            mgz2_Call26
	smpsCall            mgz2_Call27
	smpsCall            mgz2_Call28
	smpsCall            mgz2_Call29
	smpsJump            mgz2_FM1

; FM2 Data
mgz2_FM2:
	smpsCall            mgz2_Call1C
	smpsCall            mgz2_Call1D
	smpsCall            mgz2_Call1E
	smpsCall            mgz2_Call1F
	smpsCall            mgz2_Call20
	smpsCall            mgz2_Call21
	smpsCall            mgz2_Call22
	smpsJump            mgz2_FM2

; FM3 Data
mgz2_FM3:
	smpsCall            mgz2_Call15
	smpsCall            mgz2_Call16
	smpsCall            mgz2_Call17
	smpsCall            mgz2_Call18
	smpsCall            mgz2_Call19
	smpsCall            mgz2_Call1A
	smpsCall            mgz2_Call1B
	smpsJump            mgz2_FM3

; FM4 Data
mgz2_FM4:
	smpsCall            mgz2_Call0E
	smpsCall            mgz2_Call0F
	smpsCall            mgz2_Call10
	smpsCall            mgz2_Call11
	smpsCall            mgz2_Call12
	smpsCall            mgz2_Call13
	smpsCall            mgz2_Call14
	smpsJump            mgz2_FM4

; FM5 Data
mgz2_FM5:
	smpsCall            mgz2_Call07
	smpsCall            mgz2_Call08
	smpsCall            mgz2_Call09
	smpsCall            mgz2_Call0A
	smpsCall            mgz2_Call0B
	smpsCall            mgz2_Call0C
	smpsCall            mgz2_Call0D
	smpsJump            mgz2_FM5

; PSG1 Data
mgz2_PSG1:
	smpsCall            mgz2_Call38
	smpsCall            mgz2_Call39
	smpsCall            mgz2_Call3A
	smpsCall            mgz2_Call3B
	smpsCall            mgz2_Call3C
	smpsCall            mgz2_Call3D
	smpsCall            mgz2_Call3E
	smpsJump            mgz2_PSG1

; PSG2 Data
mgz2_PSG2:
	smpsCall            mgz2_Call31
	smpsCall            mgz2_Call32
	smpsCall            mgz2_Call33
	smpsCall            mgz2_Call34
	smpsCall            mgz2_Call35
	smpsCall            mgz2_Call36
	smpsCall            mgz2_Call37
	smpsJump            mgz2_PSG2

; PSG3 Data
mgz2_PSG3:
	smpsPSGform         $E7
	smpsCall            mgz2_Call2A
	smpsCall            mgz2_Call2B
	smpsCall            mgz2_Call2C
	smpsCall            mgz2_Call2D
	smpsCall            mgz2_Call2E
	smpsCall            mgz2_Call2F
	smpsCall            mgz2_Call30
	smpsJump            mgz2_PSG3

; DAC Data
mgz2_DAC:
	smpsCall            mgz2_Call00
	smpsCall            mgz2_Call01
	smpsCall            mgz2_Call02
	smpsCall            mgz2_Call03
	smpsCall            mgz2_Call04
	smpsCall            mgz2_Call05
	smpsCall            mgz2_Call06
	smpsJump            mgz2_DAC

mgz2_Call23:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $00
	dc.b	nA2, $04, nRst, nA2, $0A, nRst, $02, nE3, $04, nA3, nC3, $02
	dc.b	nA2, nG2, $04, nRst, nG2, $0A, nRst, $02, nD3, $04, nG3, nG3
	dc.b	$02, nFs3, nF3, $04, nRst, nF3, nF2, $08, nD3, $04, nEb3, nE3
	dc.b	$06, nRst, $02, nE3, $06, nRst, $02, nEb3, $04
	smpsReturn

mgz2_Call24:
	dc.b	smpsNoAttack, $04, nD3, nCs3, nC3, nA2, nRst, nA2, $0A, nRst, $02, nE3
	dc.b	$04, nA3, nC3, $02, nA2, nG2, $04, nRst, nG2, $0A, nRst, $02
	dc.b	nD3, $04, nG3, nG3, $02, nFs3, nF3, $04, nRst, nF3, nF2, $08
	dc.b	nD3, $04, nEb3, nE3, $06, nRst, $02, nE3, $06, nRst, $02, nEb3
	dc.b	$04
	smpsReturn

mgz2_Call25:
	dc.b	smpsNoAttack, $04, nD3, nD3, nC3, nC3, nG3, nEb3, nC3, $08, nG3, $04
	dc.b	nEb3, nC3, nBb2, nG3, nEb3, nBb2, $08, nG3, $04, nEb3, nBb2, nAb2
	dc.b	nAb3, nEb3, nAb2, $08, nBb2, $04, nC3, nEb3, nEb3, nD3, nAb2, nBb2
	smpsReturn

mgz2_Call26:
	dc.b	smpsNoAttack, $04, nD3, nEb3, nF3, nC3, nG3, nEb3, nC3, $08, nG3, $04
	dc.b	nEb3, nC3, nBb2, nG3, nEb3, nBb2, $08, nG3, $04, nEb3, nBb2, nAb2
	dc.b	nAb3, nEb3, nAb2, $08, nBb2, $04, nC3, nEb3, nEb3, nD3, nAb2, nBb2
	smpsReturn

mgz2_Call27:
	dc.b	smpsNoAttack, $04, nD3, nEb3, nF3, nC2, nF2, nG2, nBb2, nC3, nEb3, nC2
	dc.b	nF2, nG2, nBb2, nC3, nBb2, nEb3, nG2, nBb2, nC3, nC2, nF2, nG2
	dc.b	nBb2, nC3, nEb3, nC2, nF2, nG2, nBb2, nC3, nBb2
	smpsReturn

mgz2_Call28:
	dc.b	nEb3, $04, nG2, nBb2, nC3, nC2, nF2, nG2, nBb2, nC3, nEb3, nC2
	dc.b	nF2, nG2, nBb2, nC3, nBb2, nEb3, nG2, nBb2, nC3, nC2, nF2, nG2
	dc.b	nBb2, nC3, nEb3, nC2, nF2, nG2, nBb2, nC3, nBb2
	smpsReturn

mgz2_Call29:
	dc.b	nEb3, $04, nG2, nBb2, nC3
	smpsReturn

mgz2_Call1C:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $04
	dc.b	nA5, $08, nE5, $04, nC5, $08, nD5, nE5, nC5, $04, nD5, $08
	dc.b	nE4, $0C, nRst, $04, nA5, $08, nC5, $04, nA4, $08, nB4, $04
	dc.b	nC5, nE5, $0E, nRst, $02, nC5, $04
	smpsReturn

mgz2_Call1D:
	dc.b	smpsNoAttack, $04, nD5, nEb5, nG4, nE5, $08, $04, nC5, $08, nD5, nA4
	dc.b	$04, nRst, nC5, nD5, $08, nA4, $0C, nRst, $04, nE5, $08, nC5
	dc.b	$04, nG5, $08, nB4, $04, nC5, nE5, $0E, nRst, $02, nC5, $04
	smpsReturn

mgz2_Call1E:
	dc.b	smpsNoAttack, $04, nA4, nEb5, nE5
	smpsSetvoice        $00
	dc.b	nC5, $18, nEb5, $08, nBb4, $18, nBb5, $08, nAb5, $0C, nEb5, nEb5
	dc.b	$08
	smpsSetvoice        $04
	dc.b	nEb6, $04, nRst, nAb5, nRst
	smpsReturn

mgz2_Call1F:
	dc.b	nBb5, $04, nEb6, nD6, $08, nRst, $60, nEb6, $04, nRst, nAb5, nRst
	smpsReturn

mgz2_Call20:
	dc.b	nD6, $04, nC6, nD6, $08, nRst, $70
	smpsReturn

mgz2_Call21:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz2_Call22:
	dc.b	smpsNoAttack, nRst, $10
	smpsReturn

mgz2_Call15:
	dc.b	smpsNoAttack, nRst, $10
	smpsSetvoice        $04
	dc.b	nE5, $08, nA4, $04, nG5, $08, nG4, nA4, nE4, $04, nG4, $08
	dc.b	nA4, $0C, nRst, $04, nE5, $08, $04, nG5, $08, nD5, nB4, $0E
	dc.b	nRst, $02, nEb4, $04
	smpsReturn

mgz2_Call16:
	dc.b	smpsNoAttack, $04, nA4, nAb4, nE5, nA5, $08, nA4, $04, nG5, $08, nG4
	dc.b	nE5, $04, nRst, nE4, nG4, $08, nE4, $0C, nRst, $04, nA5, $08
	dc.b	nE5, $04, nA4, $08, nD5, nB4, $0E, nRst, $02, nEb4, $04
	smpsReturn

mgz2_Call17:
	dc.b	smpsNoAttack, $04, nD5, nAb4, nG4
	smpsSetvoice        $00
	dc.b	nG4, $18, nC5, $08, nG5, $18, nD5, $08, nAb4, $0C, nC5, nAb5
	dc.b	$08
	smpsSetvoice        $04
	dc.b	nC6, $04, nRst, nEb6, nRst
	smpsReturn

mgz2_Call18:
	dc.b	nD6, $04, nC6, nG5, $08, nRst, $60, nC6, $04, nRst, nEb6, nRst
	smpsReturn

mgz2_Call19:
	dc.b	nBb5, $04, nEb6, nG5, $08, nRst, $70
	smpsReturn

mgz2_Call1A:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz2_Call1B:
	dc.b	smpsNoAttack, nRst, $10
	smpsReturn

mgz2_Call0E:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz2_Call0F:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz2_Call10:
	dc.b	smpsNoAttack, nRst, $10
	smpsSetvoice        $02
	dc.b	nC4, $08, nBb3, $04, nEb4, $08, nB3, $04, nG4, $08, nF3, $10
	dc.b	nG4, nEb4, $08, nBb3, $04, nAb3, $14, nRst, $10
	smpsReturn

mgz2_Call11:
	dc.b	smpsNoAttack, nRst, $10, nC4, $08, nD4, $04, nG3, $08, nB3, $04, nG4
	dc.b	$08, nF4, $10, nG4, nEb4, $08, nBb3, $04, nC4, $14, nRst, $10
	smpsReturn

mgz2_Call12:
	dc.b	smpsNoAttack, nRst, $10, nEb6, $02, nRst, nEb6, nRst, nC6, $08, nEb6, $02
	dc.b	nRst, nBb5, nRst, nC6, $08, nBb5, $0C, $08, nD6, $04, nC6, nBb5
	dc.b	nEb6, $02, nRst, nEb6, nRst, nC6, $08, nEb6, $02, nRst, nBb5, nRst
	dc.b	nC6, $08, nBb5, $0C, nEb5, $04
	smpsReturn

mgz2_Call13:
	dc.b	nRst, $10, nEb6, $02, nRst, nEb6, nRst, nG5, $08, nBb5, $02, nRst
	dc.b	nBb5, nRst, nC6, $08, nF5, $0C, nBb5, $08, nF5, $04, nC6, nBb5
	dc.b	nC6, $02, nRst, nC6, nRst, nG5, $08, nBb5, $02, nRst, nBb5, nRst
	dc.b	nG5, $08, nBb5, $04, nD5, nRst, nEb5
	smpsReturn

mgz2_Call14:
	dc.b	nRst, $10
	smpsReturn

mgz2_Call07:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz2_Call08:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz2_Call09:
	dc.b	smpsNoAttack, nRst, $10
	smpsSetvoice        $02
	dc.b	nG3, $08, nD4, $04, nG3, $08, nFs4, $04, nC4, $08, nBb3, $10
	dc.b	nD4, nC4, $08, nG3, $04, nC4, $14, nRst, $10
	smpsReturn

mgz2_Call0A:
	dc.b	smpsNoAttack, nRst, $10, nG3, $08, nBb3, $04, nEb4, $08, nFs4, $04, nC4
	dc.b	$08, nBb3, $10, nD4, nC4, $08, nEb4, $04, nAb4, $14, nRst, $10
	smpsReturn

mgz2_Call0B:
	dc.b	smpsNoAttack, nRst, $10, nC6, $02, nRst, nC6, nRst, nG5, $08, nBb5, $02
	dc.b	nRst, nEb6, nRst, nG5, $08, nF5, $0C, nEb6, $08, nF5, $04, nFs5
	dc.b	nG5, nRst, nC6, $02, nRst, nG5, $08, nBb5, $02, nRst, nEb6, nRst
	dc.b	nG5, $08, nD5, $0C, nC6, $04
	smpsReturn

mgz2_Call0C:
	dc.b	nRst, $10, nC6, $02, nRst, nC6, nRst, nC6, $08, nEb6, $02, nRst
	dc.b	nEb6, nRst, nG5, $08, nBb5, $0C, nEb6, $08, nD6, $04, nAb5, nG5
	dc.b	nRst, nEb6, $02, nRst, nC6, $08, nEb6, $02, nRst, nEb6, nRst, nC6
	dc.b	$08, nD5, $04, nBb5, nRst, nC6
	smpsReturn

mgz2_Call0D:
	dc.b	nRst, $10
	smpsReturn

mgz2_Call38:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz2_Call39:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz2_Call3A:
	dc.b	smpsNoAttack, nRst, $10
	smpsPSGvoice        fTone_01
	dc.b	nC4, $08, nBb3, $04, nEb4, $08, nB3, $04, nG4, $08, nF3, $10
	dc.b	nG4, nEb4, $08, nBb3, $04, nAb3, $14, nRst, $10
	smpsReturn

mgz2_Call3B:
	dc.b	smpsNoAttack, nRst, $10, nC4, $08, nD4, $04, nG3, $08, nB3, $04, nG4
	dc.b	$08, nF4, $10, nG4, nEb4, $08, nBb3, $04, nC4, $14, nRst, $10
	smpsReturn

mgz2_Call3C:
	dc.b	smpsNoAttack, nRst, $14, nEb6, $02, nRst, nEb6, nRst, nC6, $08, nEb6, $02
	dc.b	nRst, nBb5, nRst, nC6, $08, nBb5, $0C, $08, nD6, $04, nC6, nBb5
	dc.b	nEb6, $02, nRst, nEb6, nRst, nC6, $08, nEb6, $02, nRst, nBb5, nRst
	dc.b	nC6, $08, nBb5, $0C
	smpsReturn

mgz2_Call3D:
	dc.b	nEb5, $04
	smpsPSGvoice        $00
	dc.b	nC5, $02, nEb5, nF5, nG5, nBb5, nD6
	smpsPSGvoice        fTone_01
	dc.b	nEb6, nRst, nEb6, nRst, nG5, $0C, nBb5, $02, nRst, nBb5, nRst, nC6
	dc.b	$08, nF5, $0C, nBb5, $08, nF5, $04, nC6, nBb5, nC6, $02, nRst
	dc.b	nC6, nRst, nG5, $08, nBb5, $02, nRst, nBb5, nRst, nG5, $08, nBb5
	dc.b	$04, nD5, nRst
	smpsReturn

mgz2_Call3E:
	dc.b	nEb5, $04
	smpsPSGvoice        $00
	dc.b	$02, nD6, nEb6, nBb6, nD7, nEb7
	smpsReturn

mgz2_Call31:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz2_Call32:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

mgz2_Call33:
	dc.b	smpsNoAttack, nRst, $10
	smpsPSGvoice        fTone_01
	dc.b	nG3, $08, nD4, $04, nG3, $08, nFs4, $04, nC4, $08, nBb3, $10
	dc.b	nD4, nC4, $08, nG3, $04, nC4, $14, nRst, $10
	smpsReturn

mgz2_Call34:
	dc.b	smpsNoAttack, nRst, $10, nG3, $08, nBb3, $04, nEb4, $08, nFs4, $04, nC4
	dc.b	$08, nBb3, $10, nD4, nC4, $08, nEb4, $04, nAb4, $14, nRst, $10
	smpsReturn

mgz2_Call35:
	dc.b	smpsNoAttack, nRst, $14, nC6, $02, nRst, nC6, nRst, nG5, $08, nBb5, $02
	dc.b	nRst, nEb6, nRst, nG5, $08, nF5, $0C, nEb6, $08, nF5, $04, nFs5
	dc.b	nG5, nRst, nC6, $02, nRst, nG5, $08, nBb5, $02, nRst, nEb6, nRst
	dc.b	nG5, $08, nD5, $0C
	smpsReturn

mgz2_Call36:
	dc.b	nC6, $04, nRst, $0C, nC6, $02, nRst, nC6, nRst, nC6, $0C, nEb6
	dc.b	$02, nRst, nEb6, nRst, nG5, $08, nBb5, $0C, nEb6, $08, nD6, $04
	dc.b	nAb5, nG5, nRst, nEb6, $02, nRst, nC6, $08, nEb6, $02, nRst, nEb6
	dc.b	nRst, nC6, $08, nD5, $04, nBb5, nRst
	smpsReturn

mgz2_Call37:
	dc.b	nC6, $04, nRst, $0C
	smpsReturn

mgz2_Call2A:
	dc.b	nRst, $10
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nRst, $04, nRst, $02, nCs0, nCs0, nRst, $04
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nCs0, $04, nRst, $02, nCs0
	dc.b	$06, nRst, $02, nCs0, nCs0, nRst, $04, nCs0, $02, nRst, nCs0, nCs0
	dc.b	nCs0, nCs0, $05, $03, nRst, $04, nRst, $02, nCs0, nCs0, nRst, $04
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nCs0, $06, nCs0, nRst, $02
	dc.b	nCs0, nCs0
	smpsReturn

mgz2_Call2B:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, $04, nRst, $02, nCs0, nRst, $04
	dc.b	nRst, $02, nCs0, nCs0, nRst, $04, nCs0, $02, nRst, $04, nCs0, $02
	dc.b	nCs0, nCs0, $06, $08, $02, nCs0, nRst, $04, nCs0, $02, nRst, nCs0
	dc.b	nCs0, nCs0, nCs0, $04, nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0
	dc.b	nCs0, nRst, $04, nCs0, $02, nRst, $04, nCs0, $02, nCs0, nCs0, $04
	dc.b	nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nCs0
	smpsReturn

mgz2_Call2C:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, $04, nRst, $02, nCs0, nRst, nCs0
	dc.b	nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, nCs0, $02, nCs0, nCs0
	dc.b	$04, nRst, $02, nCs0, nRst, nCs0, nRst, $04, nRst, $02, nCs0, nRst
	dc.b	$04, nRst, nCs0, $02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst, nCs0
	dc.b	nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, nCs0, $02, nCs0, nCs0
	dc.b	$04, nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst
	smpsReturn

mgz2_Call2D:
	dc.b	smpsNoAttack, $02, nRst
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nRst, $06, nCs0, nRst, $02, nCs0, nRst, nCs0, nRst, $04, nRst
	dc.b	$02, nCs0, nRst, $04, nRst, nCs0, $02, nCs0, nCs0, $04, nRst, $02
	dc.b	nCs0, nRst, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, nCs0
	dc.b	$02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst, nCs0, nRst, $04, nRst
	dc.b	$02, nCs0, nRst, $04, nRst, nCs0, $02, nCs0, nCs0, $04, nRst, $02
	dc.b	nCs0, $08, $02, nRst
	smpsReturn

mgz2_Call2E:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, $06, nRst, $02, nCs0, nRst, $06, nCs0, nRst
	dc.b	$02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0
	dc.b	nRst, $06, nCs0, $02, nRst, nCs0, nRst, $04, nRst, nRst, $02, nCs0
	dc.b	nRst, $04, nRst, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nRst
	dc.b	$02, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst
	smpsReturn

mgz2_Call2F:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nRst, $08, nRst, $02, nCs0, nRst, $04, nRst
	dc.b	$02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nRst, $02, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst, $04, nRst, $02, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, nCs0, nRst, $08, nRst, $02, nCs0, $08, $02, nRst, $06, nCs0
	dc.b	nRst, $02, nCs0, nRst, $06, nCs0, nRst, $02, nCs0, nRst
	smpsReturn

mgz2_Call30:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nRst, $06
	smpsReturn

mgz2_Call00:
	dc.b	dSnare, $02, nRst, dSnare, nRst, dSnare, dSnare, dSnare, dSnare, dKick, $04, dKick
	dc.b	dSnare, $06, $04, $02, dKick, $04, dSnare, dSnare, dKick, dKick, $02, nRst
	dc.b	dSnare, $06, $04, $02, dKick, $04, dSnare, $02, nRst, dSnare, $04, dKick
	dc.b	$02, nRst, dKick, $04, dSnare, $06, $04, $02, dKick, $04, dSnare, dSnare
	dc.b	dKick, $02, nRst, dKick, nRst, dSnare, $06, $02
	smpsReturn

mgz2_Call01:
	dc.b	nRst, $02, dSnare, dKick, $04, dSnare, $02, dSnare, dSnare, $04, dKick, dKick
	dc.b	dSnare, $06, $04, $02, dKick, $04, dSnare, dSnare, dKick, $02, nRst, dKick
	dc.b	nRst, dSnare, nRst, $04, dSnare, dSnare, $02, dKick, $04, dSnare, dSnare, dKick
	dc.b	$03, $05, dSnare, $06, $04, $02, dKick, $04, dSnare, dSnare, dKick, dKick
	dc.b	dSnare, $06, $02
	smpsReturn

mgz2_Call02:
	dc.b	nRst, $02, dSnare, dKick, $04, dSnare, $02, dSnare, dSnare, dSnare, dKick, $04
	dc.b	$02, nRst, dSnare, $04, dKick, $08, $04, dSnare, $08, dKick, $04, dKick
	dc.b	dSnare, dKick, $08, $04, dSnare, dSnare, dKick, dKick, dSnare, dKick, $08, $04
	dc.b	dSnare, dSnare, dSnare, dKick, dSnare, dKick
	smpsReturn

mgz2_Call03:
	dc.b	dSnare, $04, dKick, dSnare, $02, dSnare, dSnare, dSnare, dKick, $04, dKick, dSnare
	dc.b	dKick, $08, $04, dSnare, $08, dKick, $04, dKick, dSnare, dKick, $08, $04
	dc.b	dSnare, dSnare, dKick, dKick, $02, nRst, dSnare, $04, dKick, $08, $04, dSnare
	dc.b	dSnare, dSnare, dKick, $02, nRst, dSnare, nRst, dKick, $04
	smpsReturn

mgz2_Call04:
	dc.b	dSnare, $02, nRst, dKick, nRst, dSnare, dSnare, dSnare, dSnare, dKick, nRst, dKick
	dc.b	nRst, dSnare, $05, dKick, $07, $02, nRst, dSnare, $08, dKick, $04, dKick
	dc.b	dSnare, dKick, $02, nRst, $06, dKick, $02, nRst, dSnare, $04, dSnare, dKick
	dc.b	dKick, dSnare, dKick, $08, $04, dSnare, $08, dKick, $02, nRst, dKick, nRst
	dc.b	dSnare, nRst, dKick, $04
	smpsReturn

mgz2_Call05:
	dc.b	nRst, $04, dKick, dSnare, $08, dKick, $04, dKick, dSnare, dKick, $08, $04
	dc.b	dSnare, $08, dKick, $02, nRst, dKick, $04, dSnare, dKick, $08, $04, dSnare
	dc.b	dSnare, $02, nRst, dKick, $04, $02, nRst, dSnare, nRst, dKick, $08, $02
	dc.b	nRst, dSnare, $08, dKick, $02, nRst, dKick, nRst, dSnare, $04, dKick
	smpsReturn

mgz2_Call06:
	dc.b	nRst, $04, dKick, dSnare, $08
	smpsReturn

mgz2_Voices:
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

