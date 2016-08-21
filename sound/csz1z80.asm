csz1z80_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     csz1z80_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       csz1z80_DAC
	smpsHeaderFM        csz1z80_FM1,	$00, $0A
	smpsHeaderFM        csz1z80_FM2,	$00, $08
	smpsHeaderFM        csz1z80_FM3,	$00, $08
	smpsHeaderFM        csz1z80_FM4,	$F4, $12
	smpsHeaderFM        csz1z80_FM5,	$F4, $12
	smpsHeaderPSG       csz1z80_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       csz1z80_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       csz1z80_PSG3,	$D0, $02, $00, $00

; FM1 Data
csz1z80_FM1:
	smpsCall            csz1z80_Call24
	smpsCall            csz1z80_Call25
	smpsCall            csz1z80_Call26
	smpsCall            csz1z80_Call27
	smpsCall            csz1z80_Call28
	smpsCall            csz1z80_Call25
	smpsCall            csz1z80_Call26
	smpsCall            csz1z80_Call27
	smpsCall            csz1z80_Call29
	smpsJump            csz1z80_FM1

; FM2 Data
csz1z80_FM2:
	smpsCall            csz1z80_Call1B
	smpsCall            csz1z80_Call1C
	smpsCall            csz1z80_Call1D
	smpsCall            csz1z80_Call1E
	smpsCall            csz1z80_Call1F
	smpsCall            csz1z80_Call20
	smpsCall            csz1z80_Call21
	smpsCall            csz1z80_Call22
	smpsCall            csz1z80_Call23
	smpsJump            csz1z80_FM2

; FM3 Data
csz1z80_FM3:
	smpsCall            csz1z80_Call12
	smpsCall            csz1z80_Call13
	smpsCall            csz1z80_Call14
	smpsCall            csz1z80_Call15
	smpsCall            csz1z80_Call16
	smpsCall            csz1z80_Call17
	smpsCall            csz1z80_Call18
	smpsCall            csz1z80_Call19
	smpsCall            csz1z80_Call1A
	smpsJump            csz1z80_FM3

; FM4 Data
csz1z80_FM4:
	smpsCall            csz1z80_Call0C
	smpsCall            csz1z80_Call0D
	smpsCall            csz1z80_Call0E
	smpsCall            csz1z80_Call0F
	smpsCall            csz1z80_Call10
	smpsCall            csz1z80_Call0D
	smpsCall            csz1z80_Call0E
	smpsCall            csz1z80_Call0F
	smpsCall            csz1z80_Call11
	smpsJump            csz1z80_FM4

; FM5 Data
csz1z80_FM5:
	smpsCall            csz1z80_Call06
	smpsCall            csz1z80_Call07
	smpsCall            csz1z80_Call08
	smpsCall            csz1z80_Call09
	smpsCall            csz1z80_Call0A
	smpsCall            csz1z80_Call07
	smpsCall            csz1z80_Call08
	smpsCall            csz1z80_Call09
	smpsCall            csz1z80_Call0B
	smpsJump            csz1z80_FM5

; PSG1 Data
csz1z80_PSG1:
	smpsCall            csz1z80_Call36
	smpsCall            csz1z80_Call37
	smpsCall            csz1z80_Call38
	smpsCall            csz1z80_Call39
	smpsCall            csz1z80_Call3A
	smpsCall            csz1z80_Call37
	smpsCall            csz1z80_Call38
	smpsCall            csz1z80_Call39
	smpsCall            csz1z80_Call3B
	smpsJump            csz1z80_PSG1

; PSG2 Data
csz1z80_PSG2:
	smpsCall            csz1z80_Call30
	smpsCall            csz1z80_Call31
	smpsCall            csz1z80_Call32
	smpsCall            csz1z80_Call33
	smpsCall            csz1z80_Call34
	smpsCall            csz1z80_Call31
	smpsCall            csz1z80_Call32
	smpsCall            csz1z80_Call33
	smpsCall            csz1z80_Call35
	smpsJump            csz1z80_PSG2

; PSG3 Data
csz1z80_PSG3:
	smpsPSGform         $E7
	smpsCall            csz1z80_Call2A
	smpsCall            csz1z80_Call2B
	smpsCall            csz1z80_Call2C
	smpsCall            csz1z80_Call2D
	smpsCall            csz1z80_Call2E
	smpsCall            csz1z80_Call2B
	smpsCall            csz1z80_Call2C
	smpsCall            csz1z80_Call2D
	smpsCall            csz1z80_Call2F
	smpsJump            csz1z80_PSG3

; DAC Data
csz1z80_DAC:
	smpsCall            csz1z80_Call00
	smpsCall            csz1z80_Call01
	smpsCall            csz1z80_Call02
	smpsCall            csz1z80_Call03
	smpsCall            csz1z80_Call04
	smpsCall            csz1z80_Call01
	smpsCall            csz1z80_Call02
	smpsCall            csz1z80_Call03
	smpsCall            csz1z80_Call05
	smpsJump            csz1z80_DAC

csz1z80_Call24:
	dc.b	nRst, $0E
	smpsSetvoice        $00
	dc.b	nE3, $02, nD3, $06, nC3, $02, nB2, $06, nG2, $02, nC3, $0B
	dc.b	nRst, $03, nC3, $02, nG2, $0B, nRst, $03, nG2, $02, nE2, $0B
	dc.b	nRst, $03, nE2, $02, nB2, $0B, nRst, $03, nB2, $02, nA2, $0B
	dc.b	nRst, $03, nA2, $02, nC3, $0B, nRst, $03, nC3, $02
	smpsReturn

csz1z80_Call25:
	dc.b	nA2, $03, nRst, nA2, $02, $06, nB2, $05, nRst, $03, nB2, $02
	dc.b	nG2, $08, nC3, $0B, nRst, $03, nC3, $02, nG2, $0B, nRst, $03
	dc.b	nG2, $02, nE2, $0B, nRst, $03, nE2, $02, nB2, $0B, nRst, $03
	dc.b	nB2, $02, nA2, $0B, nRst, $03, nA2, $02, nC3, $0B, nRst, $03
	dc.b	nC3, $02
	smpsReturn

csz1z80_Call26:
	dc.b	nA2, $03, nRst, nA2, $02, $06, nB2, $02, nRst, $06, nB2, $02
	dc.b	nG2, $08, nA2, $06, nRst, $02, nA2, $08, nB2, $06, nRst, $02
	dc.b	nC3, $08, nE3, $06, nRst, $02, nD3, $08, nE3, $06, nRst, $02
	dc.b	nG3, $08, nF3, $06, nRst, $02, nA2, $08, nC3, $06, nRst, $02
	dc.b	nD3, $08
	smpsReturn

csz1z80_Call27:
	dc.b	nE3, $06, nRst, $02, nC3, $08, nA2, $06, nRst, $02, nC3, $08
	dc.b	nD3, $06, nRst, $02, nD3, $08, nC3, $06, nRst, $02, nC3, $08
	dc.b	nB2, $06, nRst, $02, nB2, $08, nA2, $06, nRst, $02, nD3, $08
	dc.b	nG3, $06, nG2, $05, nRst, $03, nG2, $02, nF3, $06, nG2, $05
	dc.b	nRst, $03, nG2, $02
	smpsReturn

csz1z80_Call28:
	dc.b	nE3, $06, nG2, $05, nRst, $03, nG2, $02, nD3, $06, nE3, $02
	dc.b	nD3, $08, nC3, $0B, nRst, $03, nC3, $02, nG2, $0B, nRst, $03
	dc.b	nG2, $02, nE2, $0B, nRst, $03, nE2, $02, nB2, $0B, nRst, $03
	dc.b	nB2, $02, nA2, $0B, nRst, $03, nA2, $02, nC3, $0B, nRst, $03
	dc.b	nC3, $02
	smpsReturn

csz1z80_Call29:
	dc.b	nE3, $06, nG2, $05, nRst, $03, nG2, $02, nD3, $06, nE3, $02
	dc.b	nD3, $08
	smpsReturn

csz1z80_Call1B:
	dc.b	nRst, $20
	smpsSetvoice        $01
	dc.b	nC4, $03, nRst, nC4, $02, nE4, $06, nF4, $02, nG4, $06, nRst
	dc.b	$02, nC5, $08, nB4, $0E, nG4, $05, nRst, nE4, $08, nA4, $0E
	dc.b	nE4, $12
	smpsReturn

csz1z80_Call1C:
	dc.b	smpsNoAttack, $14, nRst, $0C, nC4, $03, nRst, nC4, $02, nE4, $06, nF4
	dc.b	$02, nG4, $06, nRst, $02, nC5, $08, nB4, $0E, nG4, $05, nRst
	dc.b	nE4, $08, nA4, $0E, nE5, $12
	smpsReturn

csz1z80_Call1D:
	dc.b	smpsNoAttack, $10, nRst, $08, nC5, $06, nD5, $02, nE5, $04, nRst, nE5
	dc.b	$08, nD5, $04, nRst, nC5, $08, nB4, $14, nRst, $04, nE4, $08
	dc.b	nA4, $04, nRst, nA4, $08, nG4, $04, nRst, nF4, $08
	smpsReturn

csz1z80_Call1E:
	dc.b	nG4, $10, nE4, $04, nRst, nC4, $08, nD4, $04, nRst, nE4, $08
	dc.b	nD4, $04, nRst, nE4, $08, nD4, $06, nRst, $02, nE4, $06, nFs4
	dc.b	$02, nRst, $06, nFs4, $02, nA4, $08, nG4, $20
	smpsReturn

csz1z80_Call1F:
	dc.b	smpsNoAttack, $12, nRst, $02, nRst, $0C, nC4, $03, nRst, nC4, $02, nE4
	dc.b	$03, nF4, nFs4, $02, nG4, $06, nRst, $02, nC5, $08, nB4, $06
	dc.b	nC5, $02, nB4, $06, nG4, $02, nRst, $06, nG4, $02, nE4, $08
	dc.b	nA4, $06, nAb4, $02, nA4, $06, nE4, $12
	smpsReturn

csz1z80_Call20:
	dc.b	smpsNoAttack, $14, nRst, $0C, nC4, $03, nRst, nC4, $02, nE4, $03, nF4
	dc.b	nFs4, $02, nG4, $06, nRst, $02, nC5, $08, nB4, $06, nC5, $02
	dc.b	nB4, $06, nG4, $02, nRst, $06, nG4, $02, nE4, $08, nA4, $06
	dc.b	nAb4, $02, nA4, $06, nE5, $12
	smpsReturn

csz1z80_Call21:
	dc.b	smpsNoAttack, $10, nRst, $06, nB4, $02, nC5, $06, nD5, $02, nE5, $03
	dc.b	nRst, nF5, $02, nE5, $08, nD5, $04, nRst, nC5, $08, nB4, $06
	dc.b	nBb4, $02, nB4, $06, nE4, $0A, nG4, $08, nA4, $03, nRst, nG4
	dc.b	$02, nA4, $08, nG4, $04, nRst, nF4, $08
	smpsReturn

csz1z80_Call22:
	dc.b	nG4, $06, nFs4, $02, nG4, $08, nE4, $04, nRst, nC4, $08, nD4
	dc.b	$03, nRst, nD4, $02, nE4, $08, nD4, $04, nRst, nE4, $08, nD4
	dc.b	$03, nRst, nD4, $02, nE4, $06, nFs4, $02, nRst, $06, nFs4, $02
	dc.b	nA4, $08, nG4, $1E, nRst, $02
	smpsReturn

csz1z80_Call23:
	dc.b	nG4, $03, nA4, nB4, $02, nA4, $03, nB4, nC5, $02, nB4, $03
	dc.b	nC5, nD5, $02, nE5, $03, nF5, nG5, $02
	smpsReturn

csz1z80_Call12:
	dc.b	nRst, $20
	smpsSetvoice        $01
	dc.b	nG3, $03, nRst, nG3, $02, nC4, $06, nD4, $02, nE4, $06, nRst
	dc.b	$02, nE4, $08, nG4, $0E, nE4, $05, nRst, nB3, $08, nE4, $0E
	dc.b	nC4, $12
	smpsReturn

csz1z80_Call13:
	dc.b	smpsNoAttack, $14, nRst, $0C, nG3, $03, nRst, nG3, $02, nC4, $06, nD4
	dc.b	$02, nE4, $06, nRst, $02, nA4, $08, nG4, $0E, nE4, $05, nRst
	dc.b	nB3, $08, nC4, $0E, nA4, $12
	smpsReturn

csz1z80_Call14:
	dc.b	smpsNoAttack, $10, nRst, $08, nE4, $06, nG4, $02, nA4, $04, nRst, nA4
	dc.b	$08, nG4, $04, nRst, nE4, $08, nG4, $14, nRst, $04, nB3, $08
	dc.b	nF4, $04, nRst, nF4, $08, nE4, $04, nRst, nD4, $08
	smpsReturn

csz1z80_Call15:
	dc.b	nE4, $10, nC4, $04, nRst, nG3, $08, nA3, $04, nRst, nC4, $08
	dc.b	nA3, $04, nRst, nC4, $08, nA3, $06, nRst, $02, nC4, $06, nA3
	dc.b	$02, nRst, $06, nD4, $02, nFs4, $08, nD4, $20
	smpsReturn

csz1z80_Call16:
	dc.b	smpsNoAttack, $12, nRst, $02, nRst, $0C, nG3, $03, nRst, nG3, $02, nC4
	dc.b	$03, nD4, nEb4, $02, nE4, $06, nRst, $02, nE4, $08, nG4, $06
	dc.b	nF4, $02, nE4, $06, nB3, $02, nRst, $06, nB3, $02, nD4, $08
	dc.b	nC4, $06, nB3, $02, nC4, $06, nA3, $12
	smpsReturn

csz1z80_Call17:
	dc.b	smpsNoAttack, $14, nRst, $0C, nG3, $03, nRst, nG3, $02, nC4, $03, nD4
	dc.b	nEb4, $02, nE4, $06, nRst, $02, nE4, $08, nG4, $06, nF4, $02
	dc.b	nE4, $06, nB3, $02, nRst, $06, nB3, $02, nD4, $08, nC4, $06
	dc.b	nB3, $02, nC4, $06, nA4, $12
	smpsReturn

csz1z80_Call18:
	dc.b	smpsNoAttack, $10, nRst, $06, nD4, $02, nE4, $06, nG4, $02, nA4, $03
	dc.b	nRst, nA4, $02, $08, nB4, $04, nRst, nA4, $08, nG4, $06, nFs4
	dc.b	$02, nG4, $06, nB3, $0A, nD4, $08, nF4, $03, nRst, nE4, $02
	dc.b	nF4, $08, nE4, $04, nRst, nD4, $08
	smpsReturn

csz1z80_Call19:
	dc.b	nE4, $06, nEb4, $02, nE4, $08, nC4, $04, nRst, nA3, $08, $03
	dc.b	nRst, nA3, $02, nC4, $08, nA3, $04, nRst, nC4, $08, nA3, $03
	dc.b	nRst, nA3, $02, nC4, $06, nD4, $02, nRst, $06, nD4, $02, nFs4
	dc.b	$08, nD4, $1E, nRst, $02
	smpsReturn

csz1z80_Call1A:
	dc.b	nD4, $03, nE4, nG4, $02, nD4, $03, nG4, nA4, $02, nG4, $03
	dc.b	nA4, nB4, $02, nA4, $03, nF4, nG4, $02
	smpsReturn

csz1z80_Call0C:
	dc.b	nRst, $20
	smpsSetvoice        $02
	dc.b	nC3, $10, nG2, nE3, nB2, nA2, nC3
	smpsReturn

csz1z80_Call0D:
	dc.b	nA2, $06, nA3, $02, nA2, $06, nG3, $02, nRst, $06, nG3, $02
	dc.b	nF3, $03, nE3, nD3, $02, nC3, $10, nG2, nE3, nB2, nA2, nC3
	smpsReturn

csz1z80_Call0E:
	dc.b	nA2, $06, nA3, $02, nA2, $06, nG3, $02, nRst, $06, nG3, $02
	dc.b	$08, nA2, $06, nRst, $02, nA2, $08, nB2, $06, nRst, $02, nC3
	dc.b	$08, nE3, $10, nRst, $06, nB2, $02, $08, nF3, $06, nRst, $02
	dc.b	nF3, $08, nE3, $06, nRst, $02, nD3, $08
	smpsReturn

csz1z80_Call0F:
	dc.b	nC3, $10, nA2, $06, nB2, $02, nC3, $08, nA3, $03, nRst, $05
	dc.b	nA3, $0B, nRst, $05, nA3, $03, nRst, $0D, nA3, $06, nC4, $02
	dc.b	nRst, $06, nA3, $02, nC4, $08, nG3, $03, nRst, $05, nG3, $08
	dc.b	nF3, $03, nRst, $05, nF3, $08
	smpsReturn

csz1z80_Call10:
	dc.b	nE3, $03, nRst, $05, nE3, $06, nD3, $02, nRst, $06, nD3, $02
	dc.b	$08, nC3, $10, nG2, nE3, nB2, nA2, nC3
	smpsReturn

csz1z80_Call11:
	dc.b	nE3, $03, nRst, $05, nE3, $06, nD3, $02, nRst, $06, nD3, $02
	dc.b	$08
	smpsReturn

csz1z80_Call06:
	dc.b	nRst, $20
	smpsSetvoice        $02
	dc.b	nC3, $10, nG2, nE3, nB2, nA2, nC3
	smpsReturn

csz1z80_Call07:
	dc.b	nA2, $06, nE3, $02, nA2, $06, nB2, $02, nRst, $06, nB2, $02
	dc.b	nG2, $08, nC3, $10, nG2, nE3, nB2, nA2, nC3
	smpsReturn

csz1z80_Call08:
	dc.b	nA2, $06, nE3, $02, nA2, $06, nB2, $02, nRst, $06, nB2, $02
	dc.b	nG2, $08, nA2, $06, nRst, $02, nA2, $08, nB2, $06, nRst, $02
	dc.b	nC3, $08, nE3, $10, nRst, $06, nB2, $02, $08, nF3, $06, nRst
	dc.b	$02, nF3, $08, nE3, $06, nRst, $02, nD3, $08
	smpsReturn

csz1z80_Call09:
	dc.b	nC3, $10, nA2, $06, nB2, $02, nC3, $08, nD3, $03, nRst, $05
	dc.b	nD3, $08, nE3, $03, nRst, $05, nE3, $08, nFs3, $03, nRst, $05
	dc.b	nFs3, $06, $02, nRst, $06, nA3, $02, nFs3, $08, nG3, $03, nRst
	dc.b	$05, nG3, $08, nF3, $03, nRst, $05, nF3, $08
	smpsReturn

csz1z80_Call0A:
	dc.b	nE3, $03, nRst, $05, nE3, $06, nD3, $02, nRst, $06, nD3, $02
	dc.b	$08, nC3, $10, nG2, nE3, nB2, nA2, nC3
	smpsReturn

csz1z80_Call0B:
	dc.b	nE3, $03, nRst, $05, nE3, $06, nD3, $02, nRst, $06, nD3, $02
	dc.b	$08
	smpsReturn

csz1z80_Call36:
	dc.b	nRst, $28
	smpsPSGvoice        fTone_01
	dc.b	nG3, $08, nRst, nG3, nRst, nB3, nRst, nB3, nRst, nA3, nRst, nA3
	smpsReturn

csz1z80_Call37:
	dc.b	nRst, $28, nE3, $08, nRst, nE3, nRst, nB3, nRst, nB3, nRst, nA3
	dc.b	nRst, nA3
	smpsReturn

csz1z80_Call38:
	dc.b	nRst, $28, nC4, $08, nRst, nC4, nRst, nB3, $06, $02, nRst, $08
	dc.b	nB3, nRst, nC4, nRst, nC4
	smpsReturn

csz1z80_Call39:
	dc.b	nRst, $08, nC4, nRst, nC4, nRst, $48, nD4, $08, nRst, nD4
	smpsReturn

csz1z80_Call3A:
	dc.b	nRst, $08, nD4, $06, nRst, $0A, nD4, $08, nRst, nG3, nRst, nG3
	dc.b	nRst, nB3, nRst, nB3, nRst, nA3, nRst, nA3
	smpsReturn

csz1z80_Call3B:
	dc.b	nRst, $08, nD4, $06, nRst, $0A, nD4, $08
	smpsReturn

csz1z80_Call30:
	dc.b	nRst, $28
	smpsPSGvoice        fTone_01
	dc.b	nE3, $08, nRst, nE3, nRst, nG3, nRst, nG3, nRst, nE3, nRst, nE3
	smpsReturn

csz1z80_Call31:
	dc.b	nRst, $28, nE3, $08, nRst, nE3, nRst, nG3, nRst, nG3, nRst, nE3
	dc.b	nRst, nE3
	smpsReturn

csz1z80_Call32:
	dc.b	nRst, $28, nE3, $08, nRst, nA3, nRst, nG3, $06, nB3, $02, nRst
	dc.b	$08, nG3, nRst, nA3, nRst, nA3
	smpsReturn

csz1z80_Call33:
	dc.b	nRst, $08, nG3, nRst, nG3, nRst, $48, nB3, $08, nRst, nB3
	smpsReturn

csz1z80_Call34:
	dc.b	nRst, $08, nB3, $06, nRst, $0A, nB3, $08, nRst, nE3, nRst, nE3
	dc.b	nRst, nG3, nRst, nG3, nRst, nE3, nRst, nE3
	smpsReturn

csz1z80_Call35:
	dc.b	nRst, $08, nB3, $06, nRst, $0A, nB3, $08
	smpsReturn

csz1z80_Call2A:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst
	dc.b	$01, nCs0, $03, $01, nRst, nCs0, $08, $02, nRst, $06, nCs0, $02
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0
	dc.b	$02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0
	dc.b	$02
	smpsReturn

csz1z80_Call2B:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst, $04, nCs0, $01, nRst, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02
	dc.b	nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$04, nCs0, $02
	smpsReturn

csz1z80_Call2C:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, nCs0
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0
	dc.b	$02, nRst, $04, nCs0, $02, nCs0, nRst, $04, nCs0, $02, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, nCs0
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $06
	smpsReturn

csz1z80_Call2D:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $04, nCs0, $02, nCs0
	dc.b	nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02
	dc.b	nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$04, nCs0, $01, nRst, nCs0, $02, nRst, $06, nCs0, $02, nRst, $04
	dc.b	nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, nCs0
	dc.b	nRst, $06
	smpsReturn

csz1z80_Call2E:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst
	dc.b	$04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02
	dc.b	nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02
	smpsReturn

csz1z80_Call2F:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst
	dc.b	$06, nCs0, $02, nRst, $06
	smpsReturn

csz1z80_Call00:
	dc.b	dSnare, $02, nRst, $01, dSnare, nRst, $02, dSnare, $01, nRst, dSnare, $02
	dc.b	nRst, $05, nRst, $01, dSnare, $02, nRst, nRst, dKick, $01, nRst, $03
	dc.b	nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $05, nRst, $01
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $05, nRst, $01, dKick, $02
	dc.b	nRst, $06, dSnare, $02, nRst, $05, nRst, $01, dKick, $02, nRst, $04
	dc.b	dSnare, $01, nRst, dSnare, $02, nRst, $05, nRst, $01, dKick, $02, nRst
	dc.b	$06, dSnare, $02, nRst, $05, nRst, $01, dKick, $02, nRst, $06, dSnare
	dc.b	$02, nRst, $05, nRst, $01
	smpsReturn

csz1z80_Call01:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $05, nRst, $01, dKick, $02
	dc.b	nRst, $04, dSnare, $01, nRst, dSnare, $02, nRst, $04, dSnare, $01, nRst
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $05, nRst, $01, dKick, $02
	dc.b	nRst, $06, dSnare, $02, nRst, $05, nRst, $01, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $05, nRst, $01, dKick, $02, nRst, $04, dSnare, $01
	dc.b	nRst, dSnare, $02, nRst, $05, nRst, $01, dKick, $02, nRst, $06, dSnare
	dc.b	$02, nRst, $05, nRst, $01, dKick, $02, nRst, $06, dSnare, $02, nRst
	dc.b	$05, nRst, $01
	smpsReturn

csz1z80_Call02:
	dc.b	dKick, $02, nRst, $05, nRst, $01, dSnare, $02, nRst, $04, dSnare, $01
	dc.b	nRst, dKick, $02, nRst, $01, dSnare, nRst, $04, dSnare, $02, nRst, $04
	dc.b	dSnare, $01, nRst, dKick, $02, nRst, $05, nRst, $01, dSnare, $02, nRst
	dc.b	$05, nRst, $01, dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick
	dc.b	$02, nRst, $05, nRst, $01, dSnare, $02, nRst, $05, nRst, $01, dKick
	dc.b	$02, nRst, $04, dSnare, $01, nRst, dSnare, $02, nRst, $06, dKick, $02
	dc.b	nRst, $05, nRst, $01, dSnare, $02, nRst, $05, nRst, $01, dKick, $02
	dc.b	nRst, $06, dSnare, $02, nRst, $06
	smpsReturn

csz1z80_Call03:
	dc.b	dKick, $02, nRst, $05, nRst, $01, dSnare, $02, nRst, $05, nRst, $01
	dc.b	dKick, $02, nRst, $04, dSnare, $01, nRst, dSnare, $02, nRst, $04, dSnare
	dc.b	$01, nRst, dKick, $02, nRst, $05, nRst, $01, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $05, nRst, $01, dSnare, $02, nRst, $06, dKick, $02
	dc.b	nRst, $05, nRst, $01, dSnare, $02, nRst, $06, dKick, $02, nRst, $04
	dc.b	dSnare, $01, nRst, dSnare, $02, nRst, $06, dKick, $02, nRst, $05, nRst
	dc.b	$01, dSnare, $02, nRst, $06, dKick, $02, nRst, $05, nRst, $01, dSnare
	dc.b	$02, nRst, $06
	smpsReturn

csz1z80_Call04:
	dc.b	dKick, $02, nRst, $05, nRst, $01, dSnare, $02, nRst, $04, dSnare, $01
	dc.b	nRst, dKick, $02, nRst, $01, dSnare, nRst, $04, dSnare, $02, nRst, $04
	dc.b	dSnare, $01, nRst, dKick, $02, nRst, $06, dSnare, $02, nRst, $05, nRst
	dc.b	$01, dKick, $02, nRst, $06, dSnare, $02, nRst, $05, nRst, $01, dKick
	dc.b	$02, nRst, $06, dSnare, $02, nRst, $05, nRst, $01, dKick, $02, nRst
	dc.b	$04, dSnare, $01, nRst, dSnare, $02, nRst, $05, nRst, $01, dKick, $02
	dc.b	nRst, $06, dSnare, $02, nRst, $05, nRst, $01, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $05, nRst, $01
	smpsReturn

csz1z80_Call05:
	dc.b	dKick, $02, nRst, $05, nRst, $01, dSnare, $02, nRst, $04, dSnare, $01
	dc.b	nRst, dKick, $02, nRst, $01, dSnare, nRst, $04, dSnare, $02, nRst, $04
	dc.b	dSnare, $01, nRst
	smpsReturn

csz1z80_Voices:
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
;	$3D
;	$01, $21, $51, $01, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$2B, $2B, $2B, $1B, 	$19, $0E, $0E, $0E
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $0E, $0E, $0E, $19

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

