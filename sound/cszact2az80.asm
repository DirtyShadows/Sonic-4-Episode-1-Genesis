CasinoStreet2Alt_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     CasinoStreet2Alt_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $02

	smpsHeaderDAC       CasinoStreet2Alt_DAC
	smpsHeaderFM        CasinoStreet2Alt_FM1,	$0C, $10
	smpsHeaderFM        CasinoStreet2Alt_FM2,	$00, $08
	smpsHeaderFM        CasinoStreet2Alt_FM3,	$00, $08
	smpsHeaderFM        CasinoStreet2Alt_FM4,	$0C, $12
	smpsHeaderFM        CasinoStreet2Alt_FM5,	$0C, $10
	smpsHeaderPSG       CasinoStreet2Alt_PSG1,	$E8, $02, $00, $00
	smpsHeaderPSG       CasinoStreet2Alt_PSG2,	$E8, $02, $00, $00
	smpsHeaderPSG       CasinoStreet2Alt_PSG3,	$D0, $00, $00, $00

; FM1 Data
CasinoStreet2Alt_FM1:
	smpsCall            CasinoStreet2Alt_Call19

CasinoStreet2Alt_Jump05:
	smpsCall            CasinoStreet2Alt_Call1A
	smpsCall            CasinoStreet2Alt_Call1B
	smpsCall            CasinoStreet2Alt_Call1A
	smpsCall            CasinoStreet2Alt_Call1C
	smpsCall            CasinoStreet2Alt_Call19
	smpsJump            CasinoStreet2Alt_Jump05

; FM2 Data
CasinoStreet2Alt_FM2:
	smpsCall            CasinoStreet2Alt_Call14

CasinoStreet2Alt_Jump04:
	smpsCall            CasinoStreet2Alt_Call15
	smpsCall            CasinoStreet2Alt_Call16
	smpsCall            CasinoStreet2Alt_Call15
	smpsCall            CasinoStreet2Alt_Call17
	smpsCall            CasinoStreet2Alt_Call18
	smpsJump            CasinoStreet2Alt_Jump04

; FM3 Data
CasinoStreet2Alt_FM3:
	smpsCall            CasinoStreet2Alt_Call0F

CasinoStreet2Alt_Jump03:
	smpsCall            CasinoStreet2Alt_Call10
	smpsCall            CasinoStreet2Alt_Call11
	smpsCall            CasinoStreet2Alt_Call10
	smpsCall            CasinoStreet2Alt_Call12
	smpsCall            CasinoStreet2Alt_Call13
	smpsJump            CasinoStreet2Alt_Jump03

; FM4 Data
CasinoStreet2Alt_FM4:
	smpsCall            CasinoStreet2Alt_Call0A

CasinoStreet2Alt_Jump02:
	smpsCall            CasinoStreet2Alt_Call0B
	smpsCall            CasinoStreet2Alt_Call0C
	smpsCall            CasinoStreet2Alt_Call0B
	smpsCall            CasinoStreet2Alt_Call0D
	smpsCall            CasinoStreet2Alt_Call0E
	smpsJump            CasinoStreet2Alt_Jump02

; FM5 Data
CasinoStreet2Alt_FM5:
	smpsCall            CasinoStreet2Alt_Call05

CasinoStreet2Alt_Jump01:
	smpsCall            CasinoStreet2Alt_Call06
	smpsCall            CasinoStreet2Alt_Call07
	smpsCall            CasinoStreet2Alt_Call06
	smpsCall            CasinoStreet2Alt_Call08
	smpsCall            CasinoStreet2Alt_Call09
	smpsJump            CasinoStreet2Alt_Jump01

; PSG1 Data
CasinoStreet2Alt_PSG1:
	smpsCall            CasinoStreet2Alt_Call26

CasinoStreet2Alt_Jump08:
	smpsCall            CasinoStreet2Alt_Call27
	smpsCall            CasinoStreet2Alt_Call28
	smpsCall            CasinoStreet2Alt_Call29
	smpsCall            CasinoStreet2Alt_Call2A
	smpsCall            CasinoStreet2Alt_Call2B
	smpsJump            CasinoStreet2Alt_Jump08

; PSG2 Data
CasinoStreet2Alt_PSG2:
	smpsCall            CasinoStreet2Alt_Call21

CasinoStreet2Alt_Jump07:
	smpsCall            CasinoStreet2Alt_Call22
	smpsCall            CasinoStreet2Alt_Call23
	smpsCall            CasinoStreet2Alt_Call24
	smpsCall            CasinoStreet2Alt_Call25
	smpsCall            CasinoStreet2Alt_Call21
	smpsJump            CasinoStreet2Alt_Jump07

; PSG3 Data
CasinoStreet2Alt_PSG3:
	smpsPSGform         $E7
	smpsCall            CasinoStreet2Alt_Call1D

CasinoStreet2Alt_Jump06:
	smpsCall            CasinoStreet2Alt_Call1E
	smpsCall            CasinoStreet2Alt_Call1F
	smpsCall            CasinoStreet2Alt_Call1E
	smpsCall            CasinoStreet2Alt_Call1E
	smpsCall            CasinoStreet2Alt_Call20
	smpsJump            CasinoStreet2Alt_Jump06

; DAC Data
CasinoStreet2Alt_DAC:
	smpsCall            CasinoStreet2Alt_Call00

CasinoStreet2Alt_Jump00:
	smpsCall            CasinoStreet2Alt_Call01
	smpsCall            CasinoStreet2Alt_Call02
	smpsCall            CasinoStreet2Alt_Call03
	smpsCall            CasinoStreet2Alt_Call04
	smpsCall            CasinoStreet2Alt_Call00
	smpsJump            CasinoStreet2Alt_Jump00

CasinoStreet2Alt_Call19:
	smpsSetvoice        $04
	dc.b	nF2, $08, nRst, $04, nF2, nA2, $08, nRst, $04, nA2, nBb2, $08
	dc.b	nRst, $04, nBb2, nB2, nRst, nB2, $08, nC3, $04, nC3, nRst, nC3
	dc.b	nRst, nC3, nRst, nF2, nRst, nA2, nRst, nBb2, nRst, nB2, nC3, $08
	smpsReturn

CasinoStreet2Alt_Call1A:
	dc.b	nF2, $08, nRst, $04, nF2, nA2, $10, nBb2, $04, nRst, nBb2, $08
	dc.b	nA2, $04, nRst, nA2, $08, nG2, nRst, $04, nG2, nB2, $10, nC3
	dc.b	$04, nRst, nC3, $08, nBb2, $04, nRst, nBb2, $08
	smpsReturn

CasinoStreet2Alt_Call1B:
	dc.b	nA2, $08, nRst, $04, nA2, nC3, nCs3, $0C, nD3, $08, nRst, $04
	dc.b	nD3, nC3, $08, nRst, $04, nC3, nBb2, $08, nRst, $04, nBb2, nB2
	dc.b	$10, nC3, $04, nRst, nC3, $0C, nA2, $04, nBb2, nC3
	smpsReturn

CasinoStreet2Alt_Call1C:
	dc.b	nA2, $08, nRst, $04, nA2, nC3, nCs3, $0C, nD3, $08, nRst, $04
	dc.b	nD3, nC3, $08, nRst, $04, nC3, nBb2, nRst, nBb2, $08, nC3, $04
	dc.b	nRst, nC3, $08, nF2, $04, nRst, nF2, $0C, nG2, $04, nA2, nC3
	smpsReturn

CasinoStreet2Alt_Call14:
	smpsSetvoice        $02
	dc.b	nA5, $10, nF5, nD5, nA5, nG5, $04, nF5, nRst, nE5, nRst, nC5
	dc.b	nRst, nF5, $24
	smpsReturn

CasinoStreet2Alt_Call15:
	dc.b	nRst, $08, nF5, $04, nRst, nF5, nC5, $0C, nD5, $04, nRst, nG5
	dc.b	nF5, $14, nRst, $08, nF5, $04, nRst, nF5, nD5, $0C, nE5, $04
	dc.b	nRst, nA5, nG5, $14
	smpsReturn

CasinoStreet2Alt_Call16:
	dc.b	nRst, $08, nG5, $04, nRst, nG5, nE5, $0C, nF5, $04, nRst, nG5
	dc.b	nRst, nA5, nRst, nC6, nRst, $08, nBb5, $04, nRst, nA5, nG5, $08
	dc.b	nF5, nA5, $0C, nG5, $14
	smpsReturn

CasinoStreet2Alt_Call17:
	dc.b	nRst, $08, nG5, $04, nRst, nG5, nE5, $0C, nF5, $04, nRst, nG5
	dc.b	nRst, nA5, nRst, nC6, nRst, nBb5, $08, nA5, $04, nRst, nG5, nRst
	dc.b	nE5, nRst, nF5, $14, nG5, $04, nA5, nC6
	smpsReturn

CasinoStreet2Alt_Call18:
	dc.b	nRst, $08, nA5, $04, nRst, nF5, $10, nD5, nA5, nG5, $04, nF5
	dc.b	nRst, nE5, nRst, nC5, nRst, nF5, $24
	smpsReturn

CasinoStreet2Alt_Call0F:
	smpsSetvoice        $02
	dc.b	nC5, $10, nA4, nBb4, nB4, nC5, $04, nC5, nRst, nBb4, nRst, nBb4
	dc.b	nRst, nA4, $08, $04, nRst, nBb4, $08, nAb4, $04, nG4, $08
	smpsReturn

CasinoStreet2Alt_Call10:
	dc.b	nRst, $08, nA4, $04, nRst, nA4, $10, nBb4, $04, nRst, nBb4, nA4
	dc.b	$14, nRst, $08, nB4, $04, nRst, nB4, $10, nC5, $04, nRst, nC5
	dc.b	nBb4, $14
	smpsReturn

CasinoStreet2Alt_Call11:
	dc.b	nRst, $08, nC5, $04, nRst, nB4, nBb4, $0C, nA4, $04, nRst, nC5
	dc.b	nRst, nF5, nRst, nA5, nRst, $08, nD5, $04, nRst, nF5, nD5, $08
	dc.b	nB4, nC5, $0C, nBb4, $14
	smpsReturn

CasinoStreet2Alt_Call12:
	dc.b	nRst, $08, nC5, $04, nRst, nB4, nBb4, $0C, nA4, $04, nRst, nC5
	dc.b	nRst, nF5, nRst, nA5, nRst, nD5, $08, nF5, $04, nRst, nC5, nRst
	dc.b	nBb4, nRst, nA4, $14, nE5, $04, nF5, nA5
	smpsReturn

CasinoStreet2Alt_Call13:
	dc.b	nRst, $08, nC5, $04, nRst, nA4, $10, nBb4, nB4, nC5, $04, nC5
	dc.b	nRst, nBb4, nRst, nBb4, nRst, nA4, $08, $04, nRst, nBb4, $08, nAb4
	dc.b	$04, nG4, $08
	smpsReturn

CasinoStreet2Alt_Call0A:
	smpsSetvoice        $04
	dc.b	nF2, $08, nF3, nA2, nF3, $04, nBb2, nRst, nBb2, nF3, $08, nB2
	dc.b	nG3, nE3, $04, nF3, nC3, nD3, $08, nE3, nF3, $04, nRst, nA2
	dc.b	$08, nBb2, nB2, $04, nC3, $08
	smpsReturn

CasinoStreet2Alt_Call0B:
	smpsSetvoice        $04
	dc.b	nF2, $10, nA2, nBb2, $0C, nA2, $04, nRst, nA2, $0C, nG2, $10
	dc.b	nB2, nC3, $0C, nBb2, $04, nRst, nBb2, $0C
	smpsReturn

CasinoStreet2Alt_Call0C:
	dc.b	nA2, $0C, nB2, $04, nC3, nCs3, $0C, nD3, $10, nC3, nBb2, nB2
	dc.b	nC3
	smpsSetvoice        $02
	dc.b	nF4, $04, nE4, nD4, nC4
	smpsReturn

CasinoStreet2Alt_Call0D:
	dc.b	nA2, $0C, nB2, $04, nC3, nCs3, $0C, nD3, $10, nC3, nBb2, nC3
	smpsSetvoice        $02
	dc.b	nF4, $04, nE4, nD4, nC4, nBb3, nA3, nG3, nF3
	smpsReturn

CasinoStreet2Alt_Call0E:
	smpsSetvoice        $04
	dc.b	nF2, $08, nF3, $04, nRst, nA2, $08, nF3, $04, nRst, $08, nBb2
	dc.b	$04, nF3, $08, nB2, nG3, nE3, $04, nF3, nC3, nD3, $08, nE3
	dc.b	nF3, $04, nRst, nA2, $08, nBb2, nB2, $04, nC3, $08
	smpsReturn

CasinoStreet2Alt_Call05:
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	dc.b	nF2, $08, nF3, nA2, nF3, $04, nBb2, $01, nRst, $07, nBb2, $04
	dc.b	nF3, $08, nB2, nG3, $01, nRst, $07, nE3, $04, nF3, nC3, nD3
	dc.b	$08, nE3, nF3, $04, nRst, nA2, $08, nBb2, nB2, $04, nC3, $01
	dc.b	nRst, $06
	smpsReturn

CasinoStreet2Alt_Call06:
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	dc.b	nF2, $10, nA2, $08, nRst, nBb2, $0C, nA2, $04, nRst, nA2, nRst
	dc.b	$08, nG2, $10, nB2, $08, nRst, nC3, $0C, nBb2, $04, nRst, nBb2
	dc.b	nRst, $07
	smpsReturn

CasinoStreet2Alt_Call07:
	dc.b	smpsNoAttack, $01, nA2, $0C, nB2, $04, nC3, nCs3, nRst, $08, nD3, $10
	dc.b	nC3, $08, nRst, nBb2, $10, nB2, nC3
	smpsSetvoice        $02
	dc.b	nF4, $04, nE4, nD4, nC4, $03
	smpsReturn

CasinoStreet2Alt_Call08:
	dc.b	smpsNoAttack, $01, nA2, $0C, nB2, $04, nC3, nCs3, nRst, $08, nD3, $10
	dc.b	nC3, $08, nRst, nBb2, $10, nC3
	smpsSetvoice        $02
	dc.b	nF4, $04, nE4, nD4, nC4, nBb3, nA3, nG3, nF3, $03
	smpsReturn

CasinoStreet2Alt_Call09:
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	dc.b	nF2, $08, nF3, $04, nRst, nA2, $08, nF3, $04, nRst, $08, nBb2
	dc.b	$04, nF3, $08, nB2, nG3, $01, nRst, $07, nE3, $04, nF3, nC3
	dc.b	nD3, $08, nE3, nF3, $04, nRst, nA2, $08, nBb2, nB2, $04, nC3
	dc.b	$01, nRst, $06
	smpsReturn

CasinoStreet2Alt_Call26:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

CasinoStreet2Alt_Call27:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        $00
	dc.b	nF3, nRst, nF3, nRst, nF3, nRst, nF3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, nG3
	smpsReturn

CasinoStreet2Alt_Call28:
	dc.b	nRst, $08, nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst, nBb3, nRst
	dc.b	nB3, nRst, nC4, nC4, $04, nA3, nG3, nE3
	smpsReturn

CasinoStreet2Alt_Call29:
	dc.b	nRst, $08, nF3, nRst, nF3, nRst, nF3, nRst, nF3, nRst, nG3, nRst
	dc.b	nG3, nRst, nG3, nRst, nG3
	smpsReturn

CasinoStreet2Alt_Call2A:
	dc.b	nRst, $08, nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst, nBb3, nRst
	dc.b	nC4, nC4, $04, nBb3, nA3, nF3, nD3, nC3, nA2, nF2
	smpsReturn

CasinoStreet2Alt_Call2B:
	dc.b	nRst, $7F, smpsNoAttack, $01
	smpsReturn

CasinoStreet2Alt_Call21:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

CasinoStreet2Alt_Call22:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        $00
	dc.b	nC3, nRst, nC3, nRst, nD3, nRst, nC3, nRst, nD3, nRst, nD3, nRst
	dc.b	nE3, nRst, nE3
	smpsReturn

CasinoStreet2Alt_Call23:
	dc.b	nRst, $08, nE3, nRst, nG3, nRst, nF3, nRst, nF3, nRst, nF3, nRst
	dc.b	nG3, nRst, nG3, nRst, $10
	smpsReturn

CasinoStreet2Alt_Call24:
	dc.b	smpsNoAttack, $08, nC3, nRst, nC3, nRst, nD3, nRst, nC3, nRst, nD3, nRst
	dc.b	nD3, nRst, nE3, nRst, nE3
	smpsReturn

CasinoStreet2Alt_Call25:
	dc.b	nRst, $08, nE3, nRst, nG3, nRst, nF3, nRst, nF3, nRst, nF3, nRst
	dc.b	nG3, nRst, $20
	smpsReturn

CasinoStreet2Alt_Call1D:
	smpsPSGvoice        $02
	dc.b	nCs0, $02, nRst, nCs0, nRst, nCs0, nRst, $0A, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0
	dc.b	nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst
	smpsReturn

CasinoStreet2Alt_Call1E:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        $02
	dc.b	nCs0, $02, nRst, $0A, nCs0, $02, nRst, nCs0, nRst, $0A, nCs0, $02
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $0E
	dc.b	nCs0, $02, nRst, $0A, nCs0, $02, nRst, nCs0, nRst, $0A, nCs0, $02
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	smpsReturn

CasinoStreet2Alt_Call1F:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        $02
	dc.b	nCs0, $02, nRst, $0A, nCs0, $02, nRst, nCs0, nRst, $0A, nCs0, $02
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $0E
	dc.b	nCs0, $02, nRst, $0A, nCs0, $02, nRst, nCs0, nRst, $0A, nCs0, $02
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, nCs0, nRst, nCs0, nRst, nCs0
	dc.b	nRst
	smpsReturn

CasinoStreet2Alt_Call20:
	smpsPSGvoice        $02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0
	dc.b	nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02
	dc.b	nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02
	dc.b	nRst, $06, nCs0, $02, nRst
	smpsReturn

CasinoStreet2Alt_Call00:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, dKick, nRst, $06, dKick, $02, nRst, dSnare, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, dKick
	dc.b	nRst, dKick, nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick, nRst, dKick
	dc.b	nRst, $06, dSnare, $02, nRst, $06, dSnare, $02, nRst, dKick, nRst, dSnare
	dc.b	nRst, dSnare, nRst, $06
	smpsReturn

CasinoStreet2Alt_Call01:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, dSnare, nRst, dKick, nRst, $06
	dc.b	dSnare, $02, nRst, $06
	smpsReturn

CasinoStreet2Alt_Call02:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06
	smpsReturn

CasinoStreet2Alt_Call03:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, dSnare, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, dSnare, nRst, dKick, nRst, dSnare
	dc.b	nRst, dSnare, nRst, $06
	smpsReturn

CasinoStreet2Alt_Call04:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, dSnare, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, $06, dSnare, $02, nRst, dKick, nRst, dSnare
	dc.b	nRst, dSnare, nRst, dSnare, nRst
	smpsReturn

CasinoStreet2Alt_Voices:
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

