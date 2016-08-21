svcz1z80_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     svcz1z80_Voices
	smpsHeaderChan      $06, $01
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       svcz1z80_DAC
	smpsHeaderFM        svcz1z80_FM1,	$00, $00
	smpsHeaderFM        svcz1z80_FM2,	$00, $00
	smpsHeaderFM        svcz1z80_FM3,	$0C, $00
	smpsHeaderFM        svcz1z80_FM4,	$0C, $00
	smpsHeaderFM        svcz1z80_FM5,	$00, $00
	smpsHeaderPSG       svcz1z80_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       svcz1z80_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       svcz1z80_PSG3,	$DC, $02, $00, $00

; FM1 Data
svcz1z80_FM1:
	smpsCall            svcz1z80_Call29
	smpsCall            svcz1z80_Call2A
	smpsCall            svcz1z80_Call2B
	smpsCall            svcz1z80_Call2B
	smpsCall            svcz1z80_Call2C
	smpsCall            svcz1z80_Call2D
	smpsCall            svcz1z80_Call2E
	smpsCall            svcz1z80_Call2F
	smpsCall            svcz1z80_Call30
	smpsJump            svcz1z80_FM1

; FM2 Data
svcz1z80_FM2:
	smpsCall            svcz1z80_Call20
	smpsCall            svcz1z80_Call21
	smpsCall            svcz1z80_Call22
	smpsCall            svcz1z80_Call23
	smpsCall            svcz1z80_Call24
	smpsCall            svcz1z80_Call25
	smpsCall            svcz1z80_Call26
	smpsCall            svcz1z80_Call27
	smpsCall            svcz1z80_Call28
	smpsJump            svcz1z80_FM2

; FM3 Data
svcz1z80_FM3:
	smpsPan             panRight, $00
	smpsCall            svcz1z80_Call19
	smpsCall            svcz1z80_Call1A
	smpsCall            svcz1z80_Call1B
	smpsCall            svcz1z80_Call1C
	smpsCall            svcz1z80_Call1C
	smpsCall            svcz1z80_Call1C
	smpsCall            svcz1z80_Call1D
	smpsCall            svcz1z80_Call1E
	smpsCall            svcz1z80_Call1F
	smpsJump            svcz1z80_FM3

; FM4 Data
svcz1z80_FM4:
	smpsPan             panLeft, $00
	smpsCall            svcz1z80_Call11
	smpsCall            svcz1z80_Call12
	smpsCall            svcz1z80_Call13
	smpsCall            svcz1z80_Call14
	smpsCall            svcz1z80_Call14
	smpsCall            svcz1z80_Call15
	smpsCall            svcz1z80_Call16
	smpsCall            svcz1z80_Call17
	smpsCall            svcz1z80_Call18
	smpsJump            svcz1z80_FM4

; FM5 Data
svcz1z80_FM5:
	smpsCall            svcz1z80_Call09
	smpsCall            svcz1z80_Call09
	smpsCall            svcz1z80_Call0A
	smpsCall            svcz1z80_Call0B
	smpsCall            svcz1z80_Call0C
	smpsCall            svcz1z80_Call0D
	smpsCall            svcz1z80_Call0E
	smpsCall            svcz1z80_Call0F
	smpsCall            svcz1z80_Call10
	smpsJump            svcz1z80_FM5

; PSG1 Data
svcz1z80_PSG1
	smpsstop
svcz1z80_PSG2:
	smpsstop
svcz1z80_PSG3:
	smpsPSGform         $E7
	smpsCall            svcz1z80_Call31
	smpsCall            svcz1z80_Call32
	smpsCall            svcz1z80_Call33
	smpsCall            svcz1z80_Call32
	smpsCall            svcz1z80_Call32
	smpsCall            svcz1z80_Call34
	smpsCall            svcz1z80_Call35
	smpsCall            svcz1z80_Call36
	smpsCall            svcz1z80_Call37
	smpsJump            svcz1z80_PSG1

; DAC Data
svcz1z80_DAC:
	smpsCall            svcz1z80_Call00
	smpsCall            svcz1z80_Call01
	smpsCall            svcz1z80_Call02
	smpsCall            svcz1z80_Call03
	smpsCall            svcz1z80_Call04
	smpsCall            svcz1z80_Call05
	smpsCall            svcz1z80_Call06
	smpsCall            svcz1z80_Call07
	smpsCall            svcz1z80_Call08
	smpsJump            svcz1z80_DAC

svcz1z80_Call29:
	smpsSetvoice        $00
	dc.b	nC4, $08, nD4, $04, nE4, $03, nRst, $05, nC4, $07, nRst, $01
	dc.b	nG4, $18, nRst, $04, nC5, $02, nBb4, nA4, nG4, nBb4, $08, nA4
	dc.b	$04, nF4, $0C, nRst, $08, nAb4, nG4, $04, nEb4, $08, nF4, nRst
	dc.b	$04
	smpsReturn

svcz1z80_Call2A:
	dc.b	nC4, $08, nD4, $04, nE4, nRst, nC4, $08, nG4, $18, nRst, $04
	dc.b	nC5, $02, nBb4, nA4, nG4, nBb4, $08, nA4, $04, nF4, $0C, nRst
	dc.b	$08, nAb4, nG4, $04, nEb4, $08, nF4, nRst, $04
	smpsReturn

svcz1z80_Call2B:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

svcz1z80_Call2C:
	dc.b	smpsNoAttack, nRst, $20
	smpsSetvoice        $00
	dc.b	nG3, $08, nRst, $04, nE4, $08, nG3, $04, nC4, nE4, $03, nRst
	dc.b	$01, nD4, $06, nRst, $02, nC4, $06, nRst, $02, nA3, $06, nRst
	dc.b	$02, nG3, $06, nRst, $02, nF4, $08, nD4, $04, nBb3, $10, nRst
	dc.b	$04
	smpsReturn

svcz1z80_Call2D:
	dc.b	smpsNoAttack, nRst, $20, nG3, $08, nRst, $04, nE4, $08, nG3, $04, nC4
	dc.b	nE4, $03, nRst, $01, nC4, $06, nRst, $02, nC4, $06, nRst, $02
	dc.b	nE4, $06, nRst, $02, nG4, $06, nRst, $02, nF4, $1C, nRst, $04
	smpsReturn

svcz1z80_Call2E:
	dc.b	nC4, $10, nD4, $08, nB3, $04, nE4, $08, nC4, $02, nRst, nE4
	dc.b	nRst, nF4, nRst, nG4, $04, nE4, nC4, nF4, $08, nE4, $03, nRst
	dc.b	$01, nE4, $06, nRst, $02, nE4, $04, nC4, nA3, nD4, $08, nC4
	dc.b	$03, nRst, $01, nC4, $06, nRst, $02, nA3, $04, nB3, nC4, nE4
	smpsReturn

svcz1z80_Call2F:
	dc.b	smpsNoAttack, $04, nD4, $03, nRst, $01, nD4, $0F, nRst, $05, nC4, $08
	dc.b	nE4, $04, nE4, nC4, nA4, nG4, nRst, nC4, $08, nC5, $04, nB4
	dc.b	nC4, nA4, nG4, nRst, nF4, $08, nE4, $04, nC4, nRst, nF4, nG4
	dc.b	nF4, nG4
	smpsReturn

svcz1z80_Call30:
	dc.b	smpsNoAttack, $02, nRst, nA4, $04, nA4, nB4, nRst, $10
	smpsReturn

svcz1z80_Call20:
	smpsSetvoice        $01
	dc.b	nC2, $04, nC3, nC2, nC3, nC2, nG2, nC3, nBb2, $08, nG2, $04
	dc.b	nC2, nBb2, nG2, nC2, nC3, nD3, nF2, nD2, nBb2, nF2, nD2, nD3
	dc.b	nBb2, nF2, nEb2, nAb2, nC3, nAb2, nD3, nBb2, $08, nG2, $04
	smpsReturn

svcz1z80_Call21:
	dc.b	nC2, $04, nC3, nC2, nC3, nC2, nG2, nC3, nBb2, $07, nRst, $01
	dc.b	nG2, $04, nC2, nBb2, nG2, nC2, nC3, nD3, nF2, nD2, nBb2, nF2
	dc.b	nD2, nD3, nBb2, nF2, nEb2, nAb2, nC3, nAb2, nD3, nBb2, $08, nG2
	dc.b	$04
	smpsReturn

svcz1z80_Call22:
	dc.b	nD2, $04, nRst, $02, nE2, $04, nRst, $02, nF2, $04, nRst, nG2
	dc.b	$0C, nC2, $04, nC3, nC2, nC3, nC2, nE2, nG2, nC3, nBb2, $02
	dc.b	nBb2, nG2, $04, nC2, nBb2, $02, nBb2, nG2, $04, nC2, nBb2, nG2
	dc.b	nF2, $02, nF2, nBb2, $04, nD2, nF2, nBb2, nD3, nBb2, nF2
	smpsReturn

svcz1z80_Call23:
	dc.b	smpsNoAttack, $02, nRst, nAb2, nAb2, nC3, $04, nAb2, nEb3, nBb2, $08, nG2
	dc.b	$04, nC2, nC3, nC2, nC3, nC2, nE2, nG2, nC3, nBb2, $02, nBb2
	dc.b	nG2, $04, nC2, nBb2, $02, nBb2, nG2, $04, nC2, nBb2, nG2, nF2
	dc.b	$02, nF2, nBb2, $04, nD2, nF2, nBb2, nD3, nBb2, nF2
	smpsReturn

svcz1z80_Call24:
	dc.b	smpsNoAttack, $02, nRst, nAb2, nAb2, nEb2, $04, nAb2, nC3, nBb2, nAb2, $02
	dc.b	nG2, nF2, nEb2, nC2, $04, nC3, nC2, nC3, nC2, nE2, nG2, nC3
	dc.b	nBb2, $02, nBb2, nG2, $04, nC2, nBb2, $02, nBb2, nG2, $04, nC2
	dc.b	nBb2, nG2, nF2, $02, nF2, nBb2, $04, nD2, nF2, nBb2, nD3, nBb2
	dc.b	nF2
	smpsReturn

svcz1z80_Call25:
	dc.b	smpsNoAttack, $02, nRst, nAb2, nAb2, nC3, $04, nAb2, nEb3, nBb2, $08, nG2
	dc.b	$04, nC2, nC3, nC2, nC3, nC2, nE2, nG2, nC3, nBb2, $02, nBb2
	dc.b	nG2, $04, nC2, nBb2, $02, nBb2, nG2, $04, nC2, nBb2, nG2, nBb2
	dc.b	$02, nBb2, nF2, $04, nD2, nBb2, $02, nBb2, nF2, $04, nD2, nBb2
	dc.b	nF2
	smpsReturn

svcz1z80_Call26:
	dc.b	nRst, $04, nF2, $02, nF2, nA2, $04, nF2, nC3, nG2, nF2, nA1
	dc.b	$08, nA2, $02, nA2, nA1, $04, nA2, $02, nA2, nA1, $04, nE2
	dc.b	$02, nA2, nG2, nA2, nC2, $08, nG2, $02, nG2, nC2, $04, nG2
	dc.b	$02, nG2, nC2, $04, nE2, $02, nG2, nF2, nG2, nD2, $08, nA2
	dc.b	$02, nA2, nD2, $04, nA2, $02, nA2, nD2, $04, nFs2, $02, nA2
	dc.b	nG2, nA2, nE2, $04
	smpsReturn

svcz1z80_Call27:
	dc.b	smpsNoAttack, $04, nG2, $02, nG2, nE2, $04, nG2, $02, nG2, nE2, $04
	dc.b	nA2, $02, nG2, nC3, nB2, nA1, $08, nA2, $02, nA2, nA1, $04
	dc.b	nA2, $02, nA2, nA1, $04, nE2, $02, nA2, nG2, nA2, nC2, $08
	dc.b	nG2, $02, nA2, nC2, $04, nG2, $02, nA2, nC2, $04, nG2, $02
	dc.b	nA2, nC2, nE2, nF2, $08, nA2, $02, nA2, nF2, $04, nA2, $02
	dc.b	nE2, nD2, $04, nFs2, $02, nA2, nG2, nA2, nG2, $04
	smpsReturn

svcz1z80_Call28:
	dc.b	smpsNoAttack, $04, nD2, nA2, nG2, nRst, $10
	smpsReturn

svcz1z80_Call19:
	smpsSetvoice        $02
	dc.b	nC5, $06, $08, nRst, $06, nC5, nRst, $02, nBb4, $08, $06, nRst
	dc.b	$0A, nBb4, $08, nRst, $04, nBb4, $06, $08, nRst, $06, nBb4, $08
	dc.b	nRst, $04, nC5, $0A, nRst, $02, nC5, $06, nRst, $02, nD5, $08
	dc.b	nRst, $04
	smpsReturn

svcz1z80_Call1A:
	dc.b	nC5, $06, $08, nRst, $06, nC5, nRst, $02, nBb4, $08, $06, nRst
	dc.b	$0A, nBb4, $08, nRst, $04, nBb4, $06, $08, nRst, $06, nBb4, $08
	dc.b	nRst, $04, nC5, $0A, nRst, $02, nC5, $06, nRst, $02, nD5, $08
	dc.b	nRst, $04
	smpsReturn

svcz1z80_Call1B:
	dc.b	nE5, $05, nRst, $01, nD5, $05, nRst, $01, nA5, $05, nRst, $03
	dc.b	nG5, $0C, nC5, $06, $08, nRst, $06, nC5, nRst, $02, nC5, $04
	dc.b	nBb4, $06, $08, nRst, $06, nBb4, $08, nRst, $04, nBb4, $06, nBb4
	dc.b	nRst, $08, nD5, $06, nRst, $02, nD5, $04
	smpsReturn

svcz1z80_Call1C:
	dc.b	nC5, $08, nRst, $04, nC5, $06, nRst, $02, nD5, $08, nRst, $04
	dc.b	nC5, $06, $08, nRst, $06, nC5, nRst, $02, nC5, $04, nBb4, $06
	dc.b	$08, nRst, $06, nBb4, $08, nRst, $04, nBb4, $06, nBb4, nRst, $08
	dc.b	nD5, $06, nRst, $02, nD5, $04
	smpsReturn

svcz1z80_Call1D:
	dc.b	nC5, $08, nF5, $06, nRst, $02, nD5, $08, nB4, $04, nC5, $08
	dc.b	nA4, $06, nRst, $0A, nC5, $06, nRst, $02, nE5, $06, nRst, $02
	dc.b	nD5, $04, $08, nC5, $04, nA4, nG4, nC5, $08, nA4, $06, nRst
	dc.b	nA4, $04, nRst, $02, nC5, $04, nRst, $02, nB4, $04
	smpsReturn

svcz1z80_Call1E:
	dc.b	smpsNoAttack, $04, nRst, nB4, $08, nD5, $06, nRst, $02, nE5, $04, nC5
	dc.b	$08, nA4, $04, nRst, $0C, nC5, $06, nRst, $02, nE5, $08, nC5
	dc.b	$04, nRst, $0C, nB4, $06, nRst, $02, nC5, $08, nA4, $04, nRst
	dc.b	$08, nA4, $04, nRst, $02, nA4, $04, nRst, $02, nB4, $04
	smpsReturn

svcz1z80_Call1F:
	dc.b	smpsNoAttack, $02, nRst, nC5, $04, nC5, nB4, nRst, $10
	smpsReturn

svcz1z80_Call11:
	smpsSetvoice        $02
	dc.b	nG4, $06, $08, nRst, $06, nG4, nRst, $02, nE4, $08, $06, nRst
	dc.b	$0A, nE4, $08, nRst, $04, nF4, $06, nD4, $08, nRst, $06, nD4
	dc.b	$08, nRst, $04, nEb4, $0A, nRst, $02, nEb4, $06, nRst, $02, nF4
	dc.b	$08, nRst, $04
	smpsReturn

svcz1z80_Call12:
	dc.b	nG4, $06, $08, nRst, $06, nG4, nRst, $02, nE4, $08, $06, nRst
	dc.b	$0A, nE4, $08, nRst, $04, nF4, $06, nD4, $08, nRst, $06, nD4
	dc.b	$08, nRst, $04, nEb4, $0A, nRst, $02, nEb4, $06, nRst, $02, nF4
	dc.b	$08, nRst, $04
	smpsReturn

svcz1z80_Call13:
	dc.b	nA4, $05, nRst, $01, nB4, $05, nRst, $01, nC5, $05, nRst, $03
	dc.b	nB4, $0C, nG4, $06, $08, nRst, $06, nG4, nRst, $02, nG4, $04
	dc.b	nE4, $06, $08, nRst, $06, nE4, $08, nRst, $04, nF4, $06, nF4
	dc.b	nRst, $08, nG4, $06, nRst, $02, nG4, $04
	smpsReturn

svcz1z80_Call14:
	dc.b	nAb4, $08, nRst, $04, nAb4, $06, nRst, $02, nBb4, $08, nRst, $04
	dc.b	nG4, $06, $08, nRst, $06, nG4, nRst, $02, nG4, $04, nE4, $06
	dc.b	$08, nRst, $06, nE4, $08, nRst, $04, nF4, $06, nF4, nRst, $08
	dc.b	nG4, $06, nRst, $02, nG4, $04
	smpsReturn

svcz1z80_Call15:
	dc.b	nAb4, $08, nRst, $04, nAb4, $06, nRst, $02, nBb4, $08, nRst, $04
	dc.b	nG4, $06, $08, nRst, $06, nG4, nRst, $02, nG4, $04, nE4, $06
	dc.b	$08, nRst, $06, nE4, $08, nRst, $04, nF4, $06, nF4, nRst, $08
	dc.b	nF4, $06, nRst, $02, nF4, $04
	smpsReturn

svcz1z80_Call16:
	dc.b	nA4, $08, nC5, $06, nRst, $02, nG4, $08, nE4, $04, nG4, $08
	dc.b	nE4, $06, nRst, $0A, nE4, $06, nRst, $02, nC5, $06, nRst, $02
	dc.b	nG4, $04, $08, $04, nF4, nE4, nF4, $08, $06, nRst, nF4, $04
	dc.b	nRst, $02, nA4, $04, nRst, $02, nG4, $04
	smpsReturn

svcz1z80_Call17:
	dc.b	smpsNoAttack, $04, nRst, nG4, $08, nF4, $06, nRst, $02, nA4, $04, nG4
	dc.b	$08, nE4, $04, nRst, $0C, nE4, $06, nRst, $02, nE4, $08, $04
	dc.b	nRst, $0C, nG4, $06, nRst, $02, nF4, $08, $04, nRst, $08, nF4
	dc.b	$04, nRst, $02, nF4, $04, nRst, $02, nG4, $04
	smpsReturn

svcz1z80_Call18:
	dc.b	smpsNoAttack, $02, nRst, nG4, $04, nE4, nF4, nRst, $10
	smpsReturn

svcz1z80_Call09:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

svcz1z80_Call0A:
	dc.b	smpsNoAttack, nRst, $20
	smpsSetvoice        $03
	dc.b	nC4, $08, nRst, $04, nG4, $08, nC4, $04, nE4, $02, nRst, nG4
	dc.b	nRst, nF4, $06, nRst, $02, nE4, $06, nRst, $02, nD4, $06, nRst
	dc.b	$02, nC4, $06, nRst, $02, nBb4, $08, nA4, $03, nRst, $01, nF4
	dc.b	$10, nRst, $04
	smpsReturn

svcz1z80_Call0B:
	dc.b	smpsNoAttack, nRst, $20, nC4, $08, nRst, $04, nG4, $08, nC4, $04, nE4
	dc.b	$02, nRst, nG4, nRst, nF4, $06, nRst, $02, nE4, $06, nRst, $02
	dc.b	nG4, $06, nRst, $02, nC5, $06, nRst, $02, nBb4, $08, nC5, $03
	dc.b	nRst, $01, nBb4, $10, nRst, $04
	smpsReturn

svcz1z80_Call0C:
	dc.b	smpsNoAttack, nRst, $20, nC4, $08, nRst, $04, nG4, $08, nC4, $04, nE4
	dc.b	nG4, $03, nRst, $01, nF4, $06, nRst, $02, nE4, $06, nRst, $02
	dc.b	nD4, $06, nRst, $02, nC4, $06, nRst, $02, nBb4, $08, nA4, $04
	dc.b	nF4, $10, nRst, $04
	smpsReturn

svcz1z80_Call0D:
	dc.b	smpsNoAttack, nRst, $20, nC4, $08, nRst, $04, nG4, $08, nC4, $04, nE4
	dc.b	nG4, $03, nRst, $01, nF4, $06, nRst, $02, nE4, $06, nRst, $02
	dc.b	nG4, $06, nRst, $02, nC5, $06, nRst, $02, nBb4, $1C, nRst, $04
	smpsReturn

svcz1z80_Call0E:
	dc.b	nA4, $10, nG4, $08, nF4, $04, nG4, $08, nE4, $02, nRst, nG4
	dc.b	nRst, nA4, nRst, nC5, $04, nB4, nG4, nA4, $08, nG4, $03, nRst
	dc.b	$01, nG4, $06, nRst, $02, nG4, $04, nF4, nE4, nF4, $08, nE4
	dc.b	$03, nRst, $01, nE4, $06, nRst, $02, nC4, $04, nD4, nE4, nA4
	smpsReturn

svcz1z80_Call0F:
	dc.b	smpsNoAttack, $04, nG4, $03, nRst, $01, nG4, $10, nRst, $04, nE4, $08
	dc.b	nA4, $04, nG4, nE4, nC5, nB4, nRst, nE4, $08, nE5, $04, nD5
	dc.b	nE4, nC5, nB4, nRst, nA4, $08, nG4, $04, nF4, nRst, nA4, nB4
	dc.b	nC5, nE5
	smpsReturn

svcz1z80_Call10:
	dc.b	smpsNoAttack, $02, nRst, nE5, $04, nE5, nD5, nRst, $10
	smpsReturn

svcz1z80_Call31:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, $04, $02, $04, $02, nRst, nCs0, nCs0
	dc.b	nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0, $04, $02, $04, $02
	dc.b	nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0, $04
	dc.b	$02, $04, $02, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, $04, $02, nCs0, nRst, nCs0, nRst, nCs0, nCs0, nCs0, nRst
	dc.b	nCs0, nRst
	smpsReturn

svcz1z80_Call32:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, $04, $02, $04, $02, nRst, nCs0, nCs0
	dc.b	nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0, $04, $02, $04, $02
	dc.b	nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0, $04
	dc.b	$02, $04, $02, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, $04, $02, $04, $02, nRst, nCs0, nCs0, nCs0, nRst, nCs0
	dc.b	nRst
	smpsReturn

svcz1z80_Call33:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, nRst, $04, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nCs0, $04
	dc.b	$02, $04, $02, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, $04, $02, $04, $02, nRst, nCs0, nCs0, nCs0, nRst, nCs0
	dc.b	nRst, nCs0, nRst, nCs0, nCs0, $04, $02, $04, $02, nRst, nCs0, nCs0
	dc.b	nCs0, nRst, nCs0, nRst
	smpsReturn

svcz1z80_Call34:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, $04, $02, nCs0, nCs0, nCs0, nRst, nCs0
	dc.b	nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0, $04, $02, $04
	dc.b	$02, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0
	dc.b	$04, $02, $04, $02, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0
	dc.b	nRst, nCs0, nCs0, $04, $02, $04, $02, nRst, nCs0, nCs0, nCs0, nRst
	dc.b	nCs0, nRst
	smpsReturn

svcz1z80_Call35:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nCs0, nCs0, nRst, nCs0
	dc.b	nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, $06, nRst, $02, nCs0
	dc.b	nCs0, nRst, nRst, nCs0, nRst, $04, nCs0, $02, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, $06, nRst, $02, nCs0, nCs0, nRst, nRst, nCs0, nRst, $04, nCs0
	dc.b	$02, nCs0, nRst, nCs0, nRst, nCs0, $06, nRst, $02, nCs0, nCs0, nRst
	dc.b	nRst, nCs0, nRst, $04, nCs0, $02, nCs0, nRst
	smpsReturn

svcz1z80_Call36:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, $06, nRst, $02, nCs0, nCs0, nRst, nRst, nCs0
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, nCs0, nRst, nCs0, $06, nRst, $02
	dc.b	nCs0, nCs0, nRst, nRst, nCs0, nRst, $04, nCs0, $02, nCs0, nRst, nCs0
	dc.b	nRst, nCs0, $06, nRst, $02, nCs0, nCs0, nRst, nRst, nCs0, nRst, $04
	dc.b	nCs0, $02, nCs0, nRst, nCs0, nRst, nCs0, $06, nRst, $02, nCs0, nCs0
	dc.b	nRst, nRst, nCs0, nRst, $04, nCs0, $02, nCs0, nRst
	smpsReturn

svcz1z80_Call37:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nRst, nCs0, nRst, $04, nRst, $02, nCs0, nRst
	dc.b	$04, nRst, $02, nCs0, nRst
	smpsReturn

svcz1z80_Call00:
	dc.b	nRst, $08, dKick, $06, $02, $86, nRst, $86, nRst, dKick, nRst, $06
	dc.b	$86, $02, nRst, $06, dKick, dKick, $02, $86, nRst, $86, nRst, dKick
	dc.b	nRst, $06, $86, $02, nRst, $06, dKick, dKick, $02, $86, nRst, $86
	dc.b	nRst, dKick, nRst, $86, nRst, dKick, nRst, $86, nRst, $86, $04, dKick
	dc.b	$02, nRst, $86, nRst, dKick, dKick, dKick, dKick, dKick, dKick
	smpsReturn

svcz1z80_Call01:
	dc.b	$86, $02, nRst, $06, dKick, dKick, $02, $86, nRst, $86, nRst, dKick
	dc.b	nRst, $06, $86, $02, nRst, $06, dKick, dKick, $02, $86, nRst, $86
	dc.b	nRst, dKick, nRst, $06, $86, $02, nRst, $06, dKick, dKick, $02, $86
	dc.b	nRst, $86, nRst, dKick, nRst, $06, $86, $02, nRst, $06, dKick, dKick
	dc.b	$02, $86, nRst, $86, nRst, dKick, nRst, dKick, nRst
	smpsReturn

svcz1z80_Call02:
	dc.b	dKick, $02, nRst, $04, dKick, $02, nRst, $04, dKick, $02, nRst, $06
	dc.b	dKick, $02, dKick, dKick, dKick, dKick, dKick, $0A, $06, $02, $86, nRst
	dc.b	$86, nRst, dKick, nRst, $06, $86, $02, nRst, $06, dKick, dKick, $02
	dc.b	$86, nRst, $86, nRst, dKick, nRst, $06, $86, $02, nRst, $06, dKick
	dc.b	dKick, $02, $86, nRst, $86, nRst, dKick, nRst, $06
	smpsReturn

svcz1z80_Call03:
	dc.b	$86, $02, nRst, $06, dKick, dKick, $02, $86, nRst, $86, nRst, dKick
	dc.b	nRst, dKick, dKick, $86, nRst, $06, dKick, dKick, $02, $86, nRst, $86
	dc.b	nRst, dKick, nRst, $06, $86, $02, nRst, $06, dKick, dKick, $02, $86
	dc.b	nRst, $86, nRst, dKick, nRst, $06, $86, $02, nRst, $06, dKick, dKick
	dc.b	$02, $86, nRst, $86, nRst, dKick, nRst, $06
	smpsReturn

svcz1z80_Call04:
	dc.b	$86, $02, nRst, $06, dKick, dKick, $02, $86, nRst, dKick, nRst, dKick
	dc.b	dKick, dKick, nRst, $86, nRst, $06, dKick, dKick, $02, $86, nRst, $86
	dc.b	nRst, dKick, nRst, $06, $86, $02, nRst, $06, dKick, dKick, $02, $86
	dc.b	nRst, $86, nRst, dKick, nRst, $06, $86, $02, nRst, $06, dKick, dKick
	dc.b	$02, $86, nRst, $86, nRst, dKick, nRst, $06
	smpsReturn

svcz1z80_Call05:
	dc.b	$86, $02, nRst, $06, dKick, $08, $86, $02, nRst, dKick, nRst, dKick
	dc.b	dKick, dKick, nRst, $86, nRst, $06, dKick, dKick, $02, $86, nRst, $86
	dc.b	nRst, dKick, nRst, $06, $86, $02, nRst, $06, dKick, dKick, $02, $86
	dc.b	nRst, $86, nRst, dKick, nRst, $06, $86, $02, nRst, $06, dKick, dKick
	dc.b	$02, $86, nRst, $86, nRst, dKick, nRst, $06
	smpsReturn

svcz1z80_Call06:
	dc.b	$86, $02, nRst, $06, dKick, $02, nRst, $04, dKick, $02, $86, dKick
	dc.b	$86, dKick, dKick, nRst, $06, $86, $02, nRst, $04, $86, $02, dKick
	dc.b	$06, $02, $86, $04, $02, nRst, dKick, $08, $86, $02, nRst, $04
	dc.b	$86, $02, dKick, $06, $02, $86, $04, $02, nRst, dKick, $08, $86
	dc.b	$02, nRst, $04, $86, $02, dKick, $06, $02, $86, $04, $02, nRst
	dc.b	dKick, $08
	smpsReturn

svcz1z80_Call07:
	dc.b	$86, $02, nRst, $04, $86, $02, dKick, $06, $02, $86, $04, $02
	dc.b	nRst, dKick, $08, $86, $02, nRst, $04, $86, $02, dKick, $06, $02
	dc.b	$86, $04, $02, nRst, dKick, $08, $86, $02, nRst, $04, $86, $02
	dc.b	dKick, $06, $02, $86, $04, $02, nRst, dKick, $08, $86, $02, nRst
	dc.b	$04, $86, $02, dKick, $06, $02, $86, $04, $02, nRst, dKick, $04
	dc.b	$86, $02, nRst
	smpsReturn

svcz1z80_Call08:
	dc.b	nRst, $04, dKick, $02, nRst, $86, nRst, dKick, nRst, dKick, $04, $86
	dc.b	$02, $86, dKick, $04, $86, $02, nRst
	smpsReturn

svcz1z80_Voices:
;	Voice $00
;	$3D
;	$01, $01, $03, $01, 	$50, $52, $58, $59, 	$0F, $02, $02, $02
;	$04, $00, $00, $00, 	$17, $09, $19, $19, 	$13, $1C, $24, $10
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $03, $01, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $19, $18, $12, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $02, $02, $0F
	smpsVcDecayRate2    $00, $00, $00, $04
	smpsVcDecayLevel    $01, $01, $00, $01
	smpsVcReleaseRate   $09, $09, $09, $07
	smpsVcTotalLevel    $10, $24, $1C, $13

;	Voice $01
;	$3A
;	$31, $20, $01, $E1, 	$8F, $8F, $8E, $54, 	$0E, $03, $0E, $03
;	$00, $00, $00, $00, 	$13, $F3, $13, $0A, 	$17, $21, $19, $0E
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $0E, $00, $02, $03
	smpsVcCoarseFreq    $01, $01, $00, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $14, $0E, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $03, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0A, $03, $03, $03
	smpsVcTotalLevel    $0E, $19, $21, $17

;	Voice $02
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $14
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $14, $13, $37, $19

;	Voice $03
;	$3D
;	$12, $14, $12, $11, 	$50, $1B, $1B, $1A, 	$0F, $0A, $0A, $0A
;	$05, $07, $08, $06, 	$1F, $1F, $1F, $1F, 	$15, $1A, $0F, $0F
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $01, $01
	smpsVcCoarseFreq    $01, $02, $04, $02
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $1B, $1B, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0A, $0F
	smpsVcDecayRate2    $06, $08, $07, $05
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0F, $0F, $1A, $15

