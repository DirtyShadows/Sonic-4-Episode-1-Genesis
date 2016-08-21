llz2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     llz2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       llz2_DAC
	smpsHeaderFM        llz2_FM1,	$0C, $10
	smpsHeaderFM        llz2_FM2,	$0C, $10
	smpsHeaderFM        llz2_FM3,	$00, $10
	smpsHeaderFM        llz2_FM4,	$00, $10
	smpsHeaderFM        llz2_FM5,	$00, $10
	smpsHeaderPSG       llz2_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       llz2_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       llz2_PSG3,	$D0, $02, $00, $00

; FM1 Data
llz2_FM1:
	smpsCall            llz2_Call28

llz2_Jump05:
	smpsCall            llz2_Call29
	smpsCall            llz2_Call29
	smpsCall            llz2_Call2A
	smpsCall            llz2_Call2B
	smpsCall            llz2_Call2C
	smpsCall            llz2_Call2C
	smpsCall            llz2_Call2D
	smpsCall            llz2_Call2D
	smpsCall            llz2_Call2E
	smpsCall            llz2_Call2F
	smpsJump            llz2_Jump05

; FM2 Data
llz2_FM2:
	smpsCall            llz2_Call20

llz2_Jump04:
	smpsCall            llz2_Call21
	smpsCall            llz2_Call21
	smpsCall            llz2_Call22
	smpsCall            llz2_Call23
	smpsCall            llz2_Call24
	smpsCall            llz2_Call24
	smpsCall            llz2_Call25
	smpsCall            llz2_Call25
	smpsCall            llz2_Call26
	smpsCall            llz2_Call27
	smpsJump            llz2_Jump04

; FM3 Data
llz2_FM3:
	smpsCall            llz2_Call15

llz2_Jump03:
	smpsCall            llz2_Call16
	smpsCall            llz2_Call17
	smpsCall            llz2_Call18
	smpsCall            llz2_Call19
	smpsCall            llz2_Call1A
	smpsCall            llz2_Call1B
	smpsCall            llz2_Call1C
	smpsCall            llz2_Call1D
	smpsCall            llz2_Call1E
	smpsCall            llz2_Call1F
	smpsJump            llz2_Jump03

; FM4 Data
llz2_FM4:
	smpsCall            llz2_Call0A

llz2_Jump02:
	smpsCall            llz2_Call0B
	smpsCall            llz2_Call0C
	smpsCall            llz2_Call0D
	smpsCall            llz2_Call0E
	smpsCall            llz2_Call0F
	smpsCall            llz2_Call10
	smpsCall            llz2_Call11
	smpsCall            llz2_Call12
	smpsCall            llz2_Call13
	smpsCall            llz2_Call14
	smpsJump            llz2_Jump02

; FM5 Data
llz2_FM5:
	smpsCall            llz2_Call05

llz2_Jump01:
	smpsCall            llz2_Call06
	smpsCall            llz2_Call07
	smpsCall            llz2_Call05
	smpsCall            llz2_Call05
	smpsCall            llz2_Call08
	smpsCall            llz2_Call08
	smpsCall            llz2_Call05
	smpsCall            llz2_Call05
	smpsCall            llz2_Call05
	smpsCall            llz2_Call09
	smpsJump            llz2_Jump01

; PSG1 Data
llz2_PSG1:
	smpsCall            llz2_Call3F

llz2_Jump08:
	smpsCall            llz2_Call3F
	smpsCall            llz2_Call40
	smpsCall            llz2_Call41
	smpsCall            llz2_Call42
	smpsCall            llz2_Call3F
	smpsCall            llz2_Call3F
	smpsCall            llz2_Call43
	smpsCall            llz2_Call44
	smpsCall            llz2_Call45
	smpsCall            llz2_Call46
	smpsJump            llz2_Jump08

; PSG2 Data
llz2_PSG2:
	smpsCall            llz2_Call37

llz2_Jump07:
	smpsCall            llz2_Call37
	smpsCall            llz2_Call38
	smpsCall            llz2_Call39
	smpsCall            llz2_Call3A
	smpsCall            llz2_Call37
	smpsCall            llz2_Call37
	smpsCall            llz2_Call3B
	smpsCall            llz2_Call3C
	smpsCall            llz2_Call3D
	smpsCall            llz2_Call3E
	smpsJump            llz2_Jump07

; PSG3 Data
llz2_PSG3:
	smpsPSGform         $E7
	smpsCall            llz2_Call30

llz2_Jump06:
	smpsCall            llz2_Call31
	smpsCall            llz2_Call32
	smpsCall            llz2_Call33
	smpsCall            llz2_Call34
	smpsCall            llz2_Call31
	smpsCall            llz2_Call31
	smpsCall            llz2_Call33
	smpsCall            llz2_Call33
	smpsCall            llz2_Call35
	smpsCall            llz2_Call36
	smpsJump            llz2_Jump06

; DAC Data
llz2_DAC:
	smpsCall            llz2_Call00

llz2_Jump00:
	smpsCall            llz2_Call01
	smpsCall            llz2_Call01
	smpsCall            llz2_Call01
	smpsCall            llz2_Call02
	smpsCall            llz2_Call01
	smpsCall            llz2_Call01
	smpsCall            llz2_Call01
	smpsCall            llz2_Call01
	smpsCall            llz2_Call03
	smpsCall            llz2_Call04
	smpsJump            llz2_Jump00

llz2_Call28:
	smpsSetvoice        $00
	dc.b	nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1
	dc.b	nRst, nAb1, nRst, nAb1, nAb1, nAb1, $04, nRst, $02, nAb1, nAb1, nRst
	dc.b	nAb1, $06, nRst, $02, nAb1, nRst, nAb1, nRst, nAb1, nAb1, nAb1, $04
	dc.b	nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1, nRst, nAb1
	dc.b	nRst, nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst, nBb1, $06
	dc.b	nRst, $02, nBb1, nRst, nBb1, nRst, nBb1, nBb1
	smpsReturn

llz2_Call29:
	dc.b	nB1, $04, nRst, $02, nB1, nB1, nRst, nB1, $06, nRst, $02, nB1
	dc.b	nRst, nB1, nRst, nB1, nB1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nA1, $06, nRst, $02, nA1, nRst, nA1, nRst, nA1, nA1, nAb1, $04
	dc.b	nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1, nRst, nAb1
	dc.b	nRst, nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst, nBb1, $06
	dc.b	nRst, $02, nBb1, nRst, nBb1, nRst, nBb1, nBb1
	smpsReturn

llz2_Call2A:
	dc.b	nB1, $04, nRst, $02, nB1, nB1, nRst, nB1, $06, nRst, $02, nB1
	dc.b	nRst, nB1, nRst, nB1, nB1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nBb1, $04, nRst, nA1, $06, nRst, $02, nA1, nA1, nAb1, $04, nRst
	dc.b	$02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1, nRst, nAb1, nRst
	dc.b	nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst, nBb1, $06, nRst
	dc.b	$02, nBb1, nRst, nBb1, nRst, nBb1, nBb1
	smpsReturn

llz2_Call2B:
	dc.b	nB1, $04, nRst, $02, nB1, nB1, nRst, nB1, $06, nRst, $02, nB1
	dc.b	nRst, nB1, nRst, nB1, nB1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nBb1, $04, nRst, nA1, $06, nRst, $02, nA1, nA1, nAb1, $04, nRst
	dc.b	$02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1, nRst, nAb1, nRst
	dc.b	nAb1, nAb1, nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst
	dc.b	$02, nAb1, nRst, nAb1, nRst, nAb1, nAb1
	smpsReturn

llz2_Call2C:
	dc.b	nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1
	dc.b	nRst, nAb1, nRst, nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nBb1, $06, nRst, $02, nBb1, nRst, nBb1, nRst, nBb1, nBb1, nB1, $04
	dc.b	nRst, $02, nB1, nB1, nRst, nB1, $06, nRst, $02, nB1, nRst, nB1
	dc.b	nRst, nB1, nB1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst, nA1, $06
	dc.b	nRst, $02, nA1, nRst, nA1, nRst, nA1, nA1
	smpsReturn

llz2_Call2D:
	dc.b	nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1
	dc.b	nRst, nAb1, nRst, nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nBb1, $06, nRst, $02, nBb1, nRst, nBb1, nRst, nBb1, nBb1, nB1, $04
	dc.b	nRst, $02, nB1, nB1, nRst, nB1, $06, nRst, $02, nB1, nRst, nB1
	dc.b	nRst, nB1, nB1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst, nBb1, $04
	dc.b	nRst, nA1, $06, nRst, $02, nA1, nA1
	smpsReturn

llz2_Call2E:
	dc.b	nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1
	dc.b	nRst, nAb1, nRst, nAb1, nAb1, nAb1, $04, nRst, $02, nAb1, nB1, nRst
	dc.b	nB1, $06, nRst, $02, nCs2, nRst, nD2, nRst, nEb2, nEb2, nAb1, $04
	dc.b	nRst, $02, nAb1, nEb2, nRst, nAb1, $06, nRst, $02, nAb1, nRst, nB1
	dc.b	nRst, nAb1, nFs1, nAb1, $04, nRst, $02, nAb1, nEb2, nRst, nAb1, $06
	dc.b	nRst, $02, nAb1, nRst, nFs2, nRst, nFs2, nAb2
	smpsReturn

llz2_Call2F:
	dc.b	nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1
	dc.b	nRst, nAb1, nRst, nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nBb1, $06, nRst, $02, nBb1, nRst, nBb1, nRst, nBb1, nBb1
	smpsReturn

llz2_Call20:
	smpsSetvoice        $01
	dc.b	nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1
	dc.b	nRst, nAb1, nRst, nAb1, nAb1, nAb1, $04, nRst, $02, nAb1, nAb1, nRst
	dc.b	nAb1, $06, nRst, $02, nAb1, nRst, nAb1, nRst, nAb1, nAb1, nAb1, $04
	dc.b	nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1, nRst, nAb1
	dc.b	nRst, nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst, nBb1, $06
	dc.b	nRst, $02, nBb1, nRst, nBb1, nRst, nBb1, nBb1
	smpsReturn

llz2_Call21:
	dc.b	nB1, $04, nRst, $02, nB1, nB1, nRst, nB1, $06, nRst, $02, nB1
	dc.b	nRst, nB1, nRst, nB1, nB1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nA1, $06, nRst, $02, nA1, nRst, nA1, nRst, nA1, nA1, nAb1, $04
	dc.b	nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1, nRst, nAb1
	dc.b	nRst, nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst, nBb1, $06
	dc.b	nRst, $02, nBb1, nRst, nBb1, nRst, nBb1, nBb1
	smpsReturn

llz2_Call22:
	dc.b	nB1, $04, nRst, $02, nB1, nB1, nRst, nB1, $06, nRst, $02, nB1
	dc.b	nRst, nB1, nRst, nB1, nB1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nBb1, $04, nRst, nA1, $06, nRst, $02, nA1, nA1, nAb1, $04, nRst
	dc.b	$02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1, nRst, nAb1, nRst
	dc.b	nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst, nBb1, $06, nRst
	dc.b	$02, nBb1, nRst, nBb1, nRst, nBb1, nBb1
	smpsReturn

llz2_Call23:
	dc.b	nB1, $04, nRst, $02, nB1, nB1, nRst, nB1, $06, nRst, $02, nB1
	dc.b	nRst, nB1, nRst, nB1, nB1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nBb1, $04, nRst, nA1, $06, nRst, $02, nA1, nA1, nAb1, $04, nRst
	dc.b	$02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1, nRst, nAb1, nRst
	dc.b	nAb1, nAb1, nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst
	dc.b	$02, nAb1, nRst, nAb1, nRst, nAb1, nAb1
	smpsReturn

llz2_Call24:
	dc.b	nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1
	dc.b	nRst, nAb1, nRst, nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nBb1, $06, nRst, $02, nBb1, nRst, nBb1, nRst, nBb1, nBb1, nB1, $04
	dc.b	nRst, $02, nB1, nB1, nRst, nB1, $06, nRst, $02, nB1, nRst, nB1
	dc.b	nRst, nB1, nB1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst, nA1, $06
	dc.b	nRst, $02, nA1, nRst, nA1, nRst, nA1, nA1
	smpsReturn

llz2_Call25:
	dc.b	nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1
	dc.b	nRst, nAb1, nRst, nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nBb1, $06, nRst, $02, nBb1, nRst, nBb1, nRst, nBb1, nBb1, nB1, $04
	dc.b	nRst, $02, nB1, nB1, nRst, nB1, $06, nRst, $02, nB1, nRst, nB1
	dc.b	nRst, nB1, nB1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst, nBb1, $04
	dc.b	nRst, nA1, $06, nRst, $02, nA1, nA1
	smpsReturn

llz2_Call26:
	dc.b	nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1
	dc.b	nRst, nAb1, nRst, nAb1, nAb1, nAb1, $04, nRst, $02, nAb1, nB1, nRst
	dc.b	nB1, $06, nRst, $02, nCs2, nRst, nD2, nRst, nEb2, nEb2, nAb1, $04
	dc.b	nRst, $02, nAb1, nEb2, nRst, nAb1, $06, nRst, $02, nAb1, nRst, nB1
	dc.b	nRst, nAb1, nFs1, nAb1, $04, nRst, $02, nAb1, nEb2, nRst, nAb1, $06
	dc.b	nRst, $02, nAb1, nRst, nFs2, nRst, nFs2, nAb2
	smpsReturn

llz2_Call27:
	dc.b	nAb1, $04, nRst, $02, nAb1, nAb1, nRst, nAb1, $06, nRst, $02, nAb1
	dc.b	nRst, nAb1, nRst, nAb1, nAb1, nBb1, $04, nRst, $02, nBb1, nBb1, nRst
	dc.b	nBb1, $06, nRst, $02, nBb1, nRst, nBb1, nRst, nBb1, nBb1
	smpsReturn

llz2_Call15:
	dc.b	smpsNoAttack, $40
	smpsSetvoice        $02
	dc.b	nEb4, $18, nAb4, $08, nFs4, $18, nCs4, $08
	smpsReturn

llz2_Call16:
	dc.b	nEb4, $20, nRst, nEb4, $18, nAb4, $08, nBb4, $10, nFs4
	smpsReturn

llz2_Call17:
	dc.b	nEb4, $20, nRst, nEb4, $10, nAb4, nEb4, nFs4
	smpsReturn

llz2_Call18:
	dc.b	nEb4, $0C, nFs4, $14, nAb4, $10, nFs4, $08, nE4, nEb4, $10, nAb4
	dc.b	nEb4, nFs4
	smpsReturn

llz2_Call19:
	dc.b	nEb4, $0C, nFs4, $14, nBb4, $10, nFs4, $08, nA4, nAb4, $20, nAb3
	dc.b	$04, nRst, nAb3, nRst, nAb3, nRst, $0C
	smpsReturn

llz2_Call1A:
	dc.b	nEb4, $18, nAb4, $08, nFs4, nCs4, $0C, nFs4, nEb4, $20, nRst
	smpsReturn

llz2_Call1B:
	dc.b	nEb4, $18, nAb4, $08, nBb4, nFs4, $0C, nCs4, nEb4, $20, nRst
	smpsReturn

llz2_Call1C:
	dc.b	nEb4, $10, nAb4, nEb4, nFs4, nEb4, $0C, nFs4, $14, nAb4, $10, nFs4
	dc.b	$08, nE4
	smpsReturn

llz2_Call1D:
	dc.b	nEb4, $10, nAb4, nEb4, nFs4, nEb4, $0C, nFs4, $14, nBb4, $10, nFs4
	dc.b	$08, nA4
	smpsReturn

llz2_Call1E:
	dc.b	nAb4, $20, nAb3, $04, nRst, nAb3, nRst, nAb3, nRst, $4C
	smpsReturn

llz2_Call1F:
	dc.b	nEb4, $18, nAb4, $08, nFs4, $18, nCs4, $08
	smpsReturn

llz2_Call0A:
	dc.b	smpsNoAttack, $40
	smpsSetvoice        $02
	dc.b	nAb3, $18, nB3, $08, nBb3, $16, nRst, $02, nBb3, $08
	smpsReturn

llz2_Call0B:
	dc.b	nB3, $10, nFs4, nRst, $20, nAb3, $18, nB3, $08, nCs4, $0E, nRst
	dc.b	$02, nCs4, $10
	smpsReturn

llz2_Call0C:
	dc.b	nB3, $10, nFs4, nRst, $20, nAb3, $14, nRst, $04, nAb3, $08, nBb3
	dc.b	$14, nRst, $04, nBb3, $08
	smpsReturn

llz2_Call0D:
	dc.b	nB3, $14, nRst, $04, nB3, $08, nBb3, $14, nRst, $04, nA3, $08
	dc.b	nAb3, $14, nRst, $04, nAb3, $08, nBb3, $14, nRst, $04, nBb3, $08
	smpsReturn

llz2_Call0E:
	dc.b	nB3, $14, nRst, $04, nB3, $08, nBb3, $14, nRst, $04, nCs4, $08
	dc.b	nEb4, $0C, nB3, nCs4, $08, nRst, $20
	smpsReturn

llz2_Call0F:
	dc.b	nAb3, $18, nB3, $08, nBb3, $04, nRst, nBb3, $08, nRst, $04, nBb3
	dc.b	$0C, nB3, $10, nFs4, nRst, $20
	smpsReturn

llz2_Call10:
	dc.b	nAb3, $18, nB3, $08, nCs4, nBb3, nRst, $04, nBb3, $0C, nB3, $10
	dc.b	nFs4, nRst, $20
	smpsReturn

llz2_Call11:
	dc.b	nAb3, $14, nRst, $04, nAb3, $08, nBb3, $14, nRst, $04, nBb3, $08
	dc.b	nB3, $14, nRst, $04, nB3, $08, nBb3, $14, nRst, $04, nA3, $08
	smpsReturn

llz2_Call12:
	dc.b	nAb3, $14, nRst, $04, nAb3, $08, nBb3, $14, nRst, $04, nBb3, $08
	dc.b	nB3, $14, nRst, $04, nB3, $08, nBb3, $14, nRst, $04, nCs4, $08
	smpsReturn

llz2_Call13:
	dc.b	nEb4, $0C, nB3, nCs4, $08, nRst, $60
	smpsReturn

llz2_Call14:
	dc.b	nAb3, $18, nB3, $08, nBb3, $16, nRst, $02, nBb3, $08
	smpsReturn

llz2_Call05:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

llz2_Call06:
	dc.b	smpsNoAttack, $20
	smpsSetvoice        $04
	dc.b	nB5, $02, nFs6, nB6, nBb5, nRst, $58
	smpsReturn

llz2_Call07:
	dc.b	smpsNoAttack, nRst, $20, nB5, $02, nFs6, nB6, nBb5, nRst, $58
	smpsReturn

llz2_Call08:
	dc.b	smpsNoAttack, nRst, $60
	smpsSetvoice        $04
	dc.b	nB5, $02, nFs6, nB6, nBb5, nRst, $18
	smpsReturn

llz2_Call09:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

llz2_Call3F:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

llz2_Call40:
	dc.b	smpsNoAttack, nRst, $48
	smpsPSGvoice        $00
	dc.b	nAb5, $04, nEb5, nFs5, nCs5, $0C, nEb5, nB4, $04, nRst, nCs5, $0C
	smpsReturn

llz2_Call41:
	dc.b	nAb4, $0C, nB4, $04, nRst, nCs5, $0C, nRst, $04, nEb5, $0C, nB4
	dc.b	$04, nRst, nCs5, $08, nRst, nAb5, $04, nEb5, nFs5, nCs5, $0C, nEb5
	dc.b	nB4, $04, nRst, nCs5, $0C
	smpsReturn

llz2_Call42:
	dc.b	nAb4, $0C, nB4, $04, nRst, nCs5, $0C, nRst, $04, nEb5, $0C, nFs5
	dc.b	$04, nRst, nG5, $08, nAb5, $20, nRst
	smpsReturn

llz2_Call43:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        $00
	dc.b	nAb5, nEb5, $04, nFs5, $08, nCs5, $04, nEb5, $08, nFs5, $04, nB4
	dc.b	nRst, nCs5, $0C, nRst, $04, nAb4, nEb5, nB4, nRst, nCs5, nRst, nEb5
	dc.b	nRst, nEb5, nRst, nEb5, nB4, nRst, nCs5, $08
	smpsReturn

llz2_Call44:
	dc.b	nRst, $08, nAb5, nEb5, $04, nFs5, $08, nCs5, $04, nEb5, $08, nFs5
	dc.b	$04, nB4, nRst, nCs5, $0C, nRst, $04, nAb4, nEb5, nB4, nRst, nCs5
	dc.b	nRst, nEb5, nRst, nEb5, nRst, nEb5, nFs5, nRst, nA5, $08
	smpsReturn

llz2_Call45:
	dc.b	nAb5, $20, nRst, $60
	smpsReturn

llz2_Call46:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

llz2_Call37:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

llz2_Call38:
	dc.b	smpsNoAttack, nRst, $48
	smpsPSGvoice        $00
	dc.b	nB4, $04, nAb4, nBb4, nFs4, $0C, nAb4, nEb4, $04, nRst, nFs4, $0C
	smpsReturn

llz2_Call39:
	dc.b	nEb4, $0C, nFs4, $04, nRst, nAb4, $0C, nRst, $04, nAb4, $0C, nFs4
	dc.b	$04, nRst, nE4, $08, nRst, nB4, $04, nAb4, nBb4, nFs4, $0C, nAb4
	dc.b	nEb4, $04, nRst, nFs4, $0C
	smpsReturn

llz2_Call3A:
	dc.b	nEb4, $0C, nFs4, $04, nRst, nAb4, $0C, nRst, $04, nBb4, $0C, nCs5
	dc.b	$04, nRst, nEb5, $08, nB4, $20, nRst
	smpsReturn

llz2_Call3B:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        $00
	dc.b	nB4, nAb4, $04, nBb4, $08, nFs4, $04, nAb4, $08, nBb4, $04, nEb4
	dc.b	nRst, nFs4, $0C, nRst, $04, nEb4, nEb4, nFs4, nRst, nAb4, nRst, nB4
	dc.b	nRst, nB4, nRst, nAb4, nFs4, nRst, nE4, $08
	smpsReturn

llz2_Call3C:
	dc.b	nRst, $08, nB4, nAb4, $04, nBb4, $08, nFs4, $04, nAb4, $08, nBb4
	dc.b	$04, nEb4, nRst, nFs4, $0C, nRst, $04, nEb4, nEb4, nFs4, nRst, nAb4
	dc.b	nRst, nB4, nRst, nBb4, nRst, nBb4, nCs5, nRst, nCs5, $08
	smpsReturn

llz2_Call3D:
	dc.b	nB4, $20, nRst, $60
	smpsReturn

llz2_Call3E:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

llz2_Call30:
	dc.b	smpsNoAttack, nRst, $02, nRst
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nCs0, $02, nCs0, nRst
	dc.b	$04, nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst
	dc.b	$02, nCs0, nRst, $04, nCs0, nCs0, nRst, $02, nCs0, $06, nRst, $02
	dc.b	nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nCs0
	dc.b	$04, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02
	dc.b	nCs0, nRst, $04, nRst, $02, nCs0, nCs0, $04, $02, nCs0, nRst
	smpsReturn

llz2_Call31:
	dc.b	smpsNoAttack, $02, nRst
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nCs0
	dc.b	$04, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02
	dc.b	nCs0, nRst, $04, nRst, $02, nCs0, nCs0, $04, $02, nCs0, nRst, $04
	dc.b	nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02
	dc.b	nCs0, nCs0, $04, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04
	dc.b	nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nCs0, $04, $02, nCs0
	dc.b	nRst
	smpsReturn

llz2_Call32:
	dc.b	smpsNoAttack, $02, nRst
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nCs0
	dc.b	$04, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02
	dc.b	nCs0, nRst, $04, nRst, $02, nCs0, nCs0, $04, $02, nCs0, nRst, $04
	dc.b	nRst, $02, nCs0, nRst, $04, nCs0, $02, nCs0, nCs0, $04, nRst, $02
	dc.b	nCs0, nRst, $04, nCs0, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst
	dc.b	$04, nCs0, $02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst, $04, nCs0
	dc.b	$02, nCs0, nRst
	smpsReturn

llz2_Call33:
	dc.b	smpsNoAttack, $02, nRst
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nRst, $04, nCs0, $02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst
	dc.b	$04, nCs0, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nCs0
	dc.b	$02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst, $04, nCs0, $02, nCs0
	dc.b	nRst, $04, nRst, $02, nCs0, nRst, $04, nCs0, $02, nCs0, nCs0, $04
	dc.b	nRst, $02, nCs0, nRst, $04, nCs0, $02, nCs0, nRst, $04, nRst, $02
	dc.b	nCs0, nRst, $04, nCs0, $02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst
	dc.b	$04, nCs0, $02, nCs0, nRst
	smpsReturn

llz2_Call34:
	dc.b	smpsNoAttack, $02, nRst
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nRst, $04, nCs0, $02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst
	dc.b	$04, nCs0, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nCs0
	dc.b	$02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst, $04, nCs0, $02, nCs0
	dc.b	nRst, $04, nRst, $02, nCs0, nRst, $04, nCs0, $02, nCs0, nCs0, $04
	dc.b	nRst, $02, nCs0, nRst, $04, nCs0, $02, nCs0, nRst, $04, nRst, $02
	dc.b	nCs0, nRst, $04, nCs0, $02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst
	dc.b	$04, nCs0, $02, $04
	smpsReturn

llz2_Call35:
	dc.b	smpsNoAttack, $02, nRst
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nRst, $04, nCs0, $02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst
	dc.b	$04, nCs0, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nCs0
	dc.b	$02, nCs0, nCs0, $04, nRst, $02, nCs0, nRst, $04, nCs0, $02, $06
	dc.b	nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02
	dc.b	nCs0, nCs0, $04, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04
	dc.b	nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nCs0, $04, $02, $04
	smpsReturn

llz2_Call36:
	dc.b	smpsNoAttack, $02, nRst
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02, nCs0, nCs0
	dc.b	$04, $02, nCs0, nRst, $04, nRst, $02, nCs0, nRst, $04, nRst, $02
	dc.b	nCs0, nRst, $04, nRst, $02, nCs0, nCs0, $04, $02, nCs0, nRst
	smpsReturn

llz2_Call00:
	dc.b	dKick, $08, dKick, dKick, dSnare, $02, nRst, $06, dKick, $08, dKick, dKick
	dc.b	$04, dSnare, dSnare, $02, nRst, dSnare, dSnare, dKick, $08, dKick, dKick, dSnare
	dc.b	$02, nRst, $06, dKick, $08, dKick, dKick, dSnare, $02, nRst, $06
	smpsReturn

llz2_Call01:
	dc.b	dKick, $08, dKick, dKick, dSnare, $02, nRst, $06, dKick, $08, dKick, dKick
	dc.b	dSnare, $02, nRst, $06, dKick, $08, dKick, dKick, dSnare, $02, nRst, $06
	dc.b	dKick, $08, dKick, dKick, dSnare, $02, nRst, $06
	smpsReturn

llz2_Call02:
	dc.b	dKick, $08, dKick, dKick, dSnare, $02, nRst, $06, dKick, $08, dKick, dKick
	dc.b	dSnare, $02, nRst, $06, dKick, $08, dKick, dKick, dSnare, $02, nRst, $06
	dc.b	dKick, $08, dKick, dKick, $04, dSnare, $02, nRst, dSnare, nRst, dSnare, dSnare
	smpsReturn

llz2_Call03:
	dc.b	dKick, $08, dKick, dKick, dSnare, $02, nRst, $06, dKick, $04, dSnare, $02
	dc.b	nRst, dKick, dSnare, nRst, $04, dSnare, $02, nRst, dSnare, nRst, dSnare, nRst
	dc.b	dSnare, dSnare, dKick, $08, dKick, dKick, dSnare, $02, nRst, $06, dKick, $08
	dc.b	dKick, dKick, $04, dSnare, $02, nRst, dSnare, nRst, dSnare, dSnare
	smpsReturn

llz2_Call04:
	dc.b	dKick, $08, dKick, dKick, dSnare, $02, nRst, $06, dKick, $08, dKick, dKick
	dc.b	dSnare, $02, nRst, $06
	smpsReturn

llz2_Voices:
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

