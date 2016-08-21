SpecialStageBGM_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SpecialStageBGM_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       SpecialStageBGM_DAC
	smpsHeaderFM        SpecialStageBGM_FM1,	$00, $08
	smpsHeaderFM        SpecialStageBGM_FM2,	$00, $08
	smpsHeaderFM        SpecialStageBGM_FM3,	$00, $08
	smpsHeaderFM        SpecialStageBGM_FM4,	$00, $08
	smpsHeaderFM        SpecialStageBGM_FM5,	$00, $08
	smpsHeaderPSG       SpecialStageBGM_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       SpecialStageBGM_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       SpecialStageBGM_PSG3,	$D0, $02, $00, $00

; DAC Data
SpecialStageBGM_DAC:
	dc.b	nRst
	smpsstop
; FM1 Data
SpecialStageBGM_FM1:
	smpsCall            SpecialStageBGM_Call69
	smpsCall            SpecialStageBGM_Call6A
	smpsCall            SpecialStageBGM_Call6B
	smpsCall            SpecialStageBGM_Call6C
	smpsCall            SpecialStageBGM_Call6D
	smpsCall            SpecialStageBGM_Call6E
	smpsCall            SpecialStageBGM_Call6F
	smpsCall            SpecialStageBGM_Call70
	smpsCall            SpecialStageBGM_Call71
	smpsCall            SpecialStageBGM_Call72
	smpsCall            SpecialStageBGM_Call73
	smpsCall            SpecialStageBGM_Call71
	smpsCall            SpecialStageBGM_Call72
	smpsCall            SpecialStageBGM_Call74
	smpsCall            SpecialStageBGM_Call75
	smpsCall            SpecialStageBGM_Call76
	smpsCall            SpecialStageBGM_Call77
	smpsCall            SpecialStageBGM_Call78
	smpsCall            SpecialStageBGM_Call79
	smpsCall            SpecialStageBGM_Call7A
	smpsCall            SpecialStageBGM_Call7B
	smpsCall            SpecialStageBGM_Call7C
	smpsCall            SpecialStageBGM_Call7D
	smpsCall            SpecialStageBGM_Call7E
	smpsCall            SpecialStageBGM_Call7F
	smpsCall            SpecialStageBGM_Call80
	smpsCall            SpecialStageBGM_Call81
	smpsJump            SpecialStageBGM_FM1

; FM2 Data
SpecialStageBGM_FM2:
	smpsCall            SpecialStageBGM_Call50
	smpsCall            SpecialStageBGM_Call51
	smpsCall            SpecialStageBGM_Call52
	smpsCall            SpecialStageBGM_Call53
	smpsCall            SpecialStageBGM_Call54
	smpsCall            SpecialStageBGM_Call55
	smpsCall            SpecialStageBGM_Call56
	smpsCall            SpecialStageBGM_Call57
	smpsCall            SpecialStageBGM_Call58
	smpsCall            SpecialStageBGM_Call59
	smpsCall            SpecialStageBGM_Call5A
	smpsCall            SpecialStageBGM_Call58
	smpsCall            SpecialStageBGM_Call59
	smpsCall            SpecialStageBGM_Call5B
	smpsCall            SpecialStageBGM_Call5C
	smpsCall            SpecialStageBGM_Call5D
	smpsCall            SpecialStageBGM_Call5E
	smpsCall            SpecialStageBGM_Call5F
	smpsCall            SpecialStageBGM_Call60
	smpsCall            SpecialStageBGM_Call61
	smpsCall            SpecialStageBGM_Call62
	smpsCall            SpecialStageBGM_Call63
	smpsCall            SpecialStageBGM_Call64
	smpsCall            SpecialStageBGM_Call65
	smpsCall            SpecialStageBGM_Call66
	smpsCall            SpecialStageBGM_Call67
	smpsCall            SpecialStageBGM_Call68
	smpsJump            SpecialStageBGM_FM2

; FM3 Data
SpecialStageBGM_FM3:
	smpsCall            SpecialStageBGM_Call37
	smpsCall            SpecialStageBGM_Call38
	smpsCall            SpecialStageBGM_Call39
	smpsCall            SpecialStageBGM_Call3A
	smpsCall            SpecialStageBGM_Call3B
	smpsCall            SpecialStageBGM_Call3C
	smpsCall            SpecialStageBGM_Call3D
	smpsCall            SpecialStageBGM_Call3E
	smpsCall            SpecialStageBGM_Call3F
	smpsCall            SpecialStageBGM_Call40
	smpsCall            SpecialStageBGM_Call41
	smpsCall            SpecialStageBGM_Call3F
	smpsCall            SpecialStageBGM_Call40
	smpsCall            SpecialStageBGM_Call42
	smpsCall            SpecialStageBGM_Call43
	smpsCall            SpecialStageBGM_Call44
	smpsCall            SpecialStageBGM_Call45
	smpsCall            SpecialStageBGM_Call46
	smpsCall            SpecialStageBGM_Call47
	smpsCall            SpecialStageBGM_Call48
	smpsCall            SpecialStageBGM_Call49
	smpsCall            SpecialStageBGM_Call4A
	smpsCall            SpecialStageBGM_Call4B
	smpsCall            SpecialStageBGM_Call4C
	smpsCall            SpecialStageBGM_Call4D
	smpsCall            SpecialStageBGM_Call4E
	smpsCall            SpecialStageBGM_Call4F
	smpsJump            SpecialStageBGM_FM3

; FM4 Data
SpecialStageBGM_FM4:
	smpsCall            SpecialStageBGM_Call1E
	smpsCall            SpecialStageBGM_Call1F
	smpsCall            SpecialStageBGM_Call20
	smpsCall            SpecialStageBGM_Call21
	smpsCall            SpecialStageBGM_Call22
	smpsCall            SpecialStageBGM_Call23
	smpsCall            SpecialStageBGM_Call24
	smpsCall            SpecialStageBGM_Call25
	smpsCall            SpecialStageBGM_Call26
	smpsCall            SpecialStageBGM_Call27
	smpsCall            SpecialStageBGM_Call28
	smpsCall            SpecialStageBGM_Call26
	smpsCall            SpecialStageBGM_Call27
	smpsCall            SpecialStageBGM_Call29
	smpsCall            SpecialStageBGM_Call2A
	smpsCall            SpecialStageBGM_Call2B
	smpsCall            SpecialStageBGM_Call2C
	smpsCall            SpecialStageBGM_Call2D
	smpsCall            SpecialStageBGM_Call2E
	smpsCall            SpecialStageBGM_Call2F
	smpsCall            SpecialStageBGM_Call30
	smpsCall            SpecialStageBGM_Call31
	smpsCall            SpecialStageBGM_Call32
	smpsCall            SpecialStageBGM_Call33
	smpsCall            SpecialStageBGM_Call34
	smpsCall            SpecialStageBGM_Call35
	smpsCall            SpecialStageBGM_Call36
	smpsJump            SpecialStageBGM_FM4

; FM5 Data
SpecialStageBGM_FM5:
	smpsCall            SpecialStageBGM_Call05
	smpsCall            SpecialStageBGM_Call06
	smpsCall            SpecialStageBGM_Call07
	smpsCall            SpecialStageBGM_Call08
	smpsCall            SpecialStageBGM_Call09
	smpsCall            SpecialStageBGM_Call0A
	smpsCall            SpecialStageBGM_Call0B
	smpsCall            SpecialStageBGM_Call0C
	smpsCall            SpecialStageBGM_Call0D
	smpsCall            SpecialStageBGM_Call0E
	smpsCall            SpecialStageBGM_Call0F
	smpsCall            SpecialStageBGM_Call0D
	smpsCall            SpecialStageBGM_Call0E
	smpsCall            SpecialStageBGM_Call10
	smpsCall            SpecialStageBGM_Call11
	smpsCall            SpecialStageBGM_Call12
	smpsCall            SpecialStageBGM_Call13
	smpsCall            SpecialStageBGM_Call14
	smpsCall            SpecialStageBGM_Call15
	smpsCall            SpecialStageBGM_Call16
	smpsCall            SpecialStageBGM_Call17
	smpsCall            SpecialStageBGM_Call18
	smpsCall            SpecialStageBGM_Call19
	smpsCall            SpecialStageBGM_Call1A
	smpsCall            SpecialStageBGM_Call1B
	smpsCall            SpecialStageBGM_Call1C
	smpsCall            SpecialStageBGM_Call1D
	smpsJump            SpecialStageBGM_FM5

; FM6 Data
SpecialStageBGM_FM6:
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call01
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call02
	smpsCall            SpecialStageBGM_Call03
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call00
	smpsCall            SpecialStageBGM_Call04
	smpsJump            SpecialStageBGM_FM6

; PSG1 Data
SpecialStageBGM_PSG1:
	smpsstop

; PSG2 Data
SpecialStageBGM_PSG2:
	smpsstop

; PSG3 Data
SpecialStageBGM_PSG3:
	smpsPSGform         $E7
	smpsCall            SpecialStageBGM_Call82
	smpsCall            SpecialStageBGM_Call83
	smpsCall            SpecialStageBGM_Call84
	smpsCall            SpecialStageBGM_Call85
	smpsCall            SpecialStageBGM_Call82
	smpsCall            SpecialStageBGM_Call84
	smpsCall            SpecialStageBGM_Call85
	smpsCall            SpecialStageBGM_Call82
	smpsCall            SpecialStageBGM_Call84
	smpsCall            SpecialStageBGM_Call85
	smpsCall            SpecialStageBGM_Call82
	smpsCall            SpecialStageBGM_Call84
	smpsCall            SpecialStageBGM_Call85
	smpsCall            SpecialStageBGM_Call82
	smpsCall            SpecialStageBGM_Call84
	smpsCall            SpecialStageBGM_Call85
	smpsCall            SpecialStageBGM_Call82
	smpsCall            SpecialStageBGM_Call84
	smpsCall            SpecialStageBGM_Call85
	smpsCall            SpecialStageBGM_Call82
	smpsCall            SpecialStageBGM_Call84
	smpsCall            SpecialStageBGM_Call85
	smpsCall            SpecialStageBGM_Call82
	smpsCall            SpecialStageBGM_Call84
	smpsCall            SpecialStageBGM_Call85
	smpsCall            SpecialStageBGM_Call82
	smpsCall            SpecialStageBGM_Call86
	smpsJump            SpecialStageBGM_PSG3

SpecialStageBGM_Call69:
	smpsSetvoice        $00
	dc.b	nF3, $2C, nRst, $04, nE3, $2C, nRst, $04, nD3, $20
	smpsReturn

SpecialStageBGM_Call6A:
	dc.b	smpsNoAttack, $0C, nRst, $04, nC3, $06, nRst, $0A, nD3, $06, nRst, $0A
	smpsReturn

SpecialStageBGM_Call6B:
	dc.b	nE3, $06, nRst, $0A, nF3, $2C, nRst, $04, nE3, $2C, nRst, $04
	dc.b	nF3, $0C, nRst, $04
	smpsReturn

SpecialStageBGM_Call6C:
	dc.b	nG3, $08, nRst, nB3, nRst, nC4, $0A, nRst, $06, nG3, nRst, $0A
	dc.b	nC3, $06, nRst, $0A, nD3, $20, nG5, $0E, nRst, $02
	smpsReturn

SpecialStageBGM_Call6D:
	dc.b	nF3, $20, nF5, $0E, nRst, $02, nE3, $32, nRst, $0E, nB3, $10
	smpsReturn

SpecialStageBGM_Call6E:
	dc.b	smpsNoAttack, $02, nRst, $0E, nF3, $32, nRst, $0E, nC4, $12, nRst, $0E
	dc.b	nG3, $10
	smpsReturn

SpecialStageBGM_Call6F:
	dc.b	smpsNoAttack, $10, nG4, $12, nRst, $0E, nD4, $10, nG4, nG3, $28, nB4
	dc.b	$08
	smpsReturn

SpecialStageBGM_Call70:
	dc.b	nRst, $02, nRst, $0E, nG5, $08, nRst, nB5, $0C, nRst, $04, nF3
	dc.b	$2C, nRst, $04, nE3, $20
	smpsReturn

SpecialStageBGM_Call71:
	dc.b	smpsNoAttack, $0C, nRst, $04, nD3, $2C, nRst, $04, nC3, $06, nRst, $0A
	dc.b	nD3, $06, nRst, $0A, nE3, $0C, nRst, $04, nF3, $10
	smpsReturn

SpecialStageBGM_Call72:
	dc.b	smpsNoAttack, $1C, nRst, $04, nE3, $2C, nRst, $04, nF3, $0C, nRst, $04
	dc.b	nG3, $08, nRst, nB3, nRst
	smpsReturn

SpecialStageBGM_Call73:
	dc.b	nC4, $0A, nRst, $06, nG3, nRst, $0A, nC3, $06, nRst, $0A, nF3
	dc.b	$2C, nRst, $04, nE3, $20
	smpsReturn

SpecialStageBGM_Call74:
	dc.b	nC4, $0A, nRst, $06, nG3, nRst, $0A, nC3, $06, nRst, $0A, nD3
	dc.b	$30, nF3, $20
	smpsReturn

SpecialStageBGM_Call75:
	dc.b	smpsNoAttack, $02, nRst, $0E, nE3, $32, nRst, $0E, nC4, $12, nRst, $0E
	dc.b	nF3, $10
	smpsReturn

SpecialStageBGM_Call76:
	dc.b	smpsNoAttack, $22, nRst, $0E, nC4, $12, nRst, $0E, nG4, $30
	smpsReturn

SpecialStageBGM_Call77:
	dc.b	smpsNoAttack, $02, nRst, $0E, nA3, $08, nRst, nB3, $02, nRst, $0E, nF3
	dc.b	$2A, nRst, $06, nE3, $20
	smpsReturn

SpecialStageBGM_Call78:
	dc.b	smpsNoAttack, $0A, nRst, $06, nD3, $2B, nRst, $05, nC3, $08, nRst, nD3
	dc.b	nRst, nE3, nRst, nF3, $10
	smpsReturn

SpecialStageBGM_Call79:
	dc.b	smpsNoAttack, $02, nRst, $06, nA4, $12, nRst, $06, nE3, $12, nRst, $06
	dc.b	nG4, $12, nRst, $06, nF3, $0C, nRst, $04, nG3, $0E, nRst, $02
	dc.b	nB3, $0C, nRst, $04
	smpsReturn

SpecialStageBGM_Call7A:
	dc.b	nC4, $2E, nRst, $02, nF3, $12, nRst, $06, nA4, $12, nRst, $06
	dc.b	nE3, $12, nRst, $06, nG4, $08
	smpsReturn

SpecialStageBGM_Call7B:
	dc.b	smpsNoAttack, $0A, nRst, $06, nD3, $12, nRst, $06, nF4, $12, nRst, $06
	dc.b	nC3, $08, nRst, nD3, nRst, nE3, nRst, nF3, $10
	smpsReturn

SpecialStageBGM_Call7C:
	dc.b	smpsNoAttack, $02, nRst, $06, nA4, $12, nRst, $06, nE3, $12, nRst, $06
	dc.b	nG4, $12, nRst, $06, nD3, $0A, nRst, $06, nE3, $0A, nRst, $06
	dc.b	nF3, $10
	smpsReturn

SpecialStageBGM_Call7D:
	dc.b	nG3, $08, nRst, nG3, $10, nC3, nBb3, $20, nD4, $10, nC4, $20
	smpsReturn

SpecialStageBGM_Call7E:
	dc.b	smpsNoAttack, $02, nRst, $0E, nD3, $30, nG3, $20, nD4, $10, nF3
	smpsReturn

SpecialStageBGM_Call7F:
	dc.b	smpsNoAttack, $20, nG3, $30, nAb3
	smpsReturn

SpecialStageBGM_Call80:
	dc.b	nBb3, $30, nG3, $32, nRst, $06, nD4, $18
	smpsReturn

SpecialStageBGM_Call81:
	dc.b	smpsNoAttack, $0A, nRst, $06, nG3, $28, nB4, $08, nRst, $02, nRst, $0E
	dc.b	nG5, $08, nRst, nB5, $0C, nRst, $04
	smpsReturn

SpecialStageBGM_Call50:
	smpsSetvoice        $00
	dc.b	nF5, $04, nRst, nF5, $0A, nRst, $0E, nF4, $10, nE5, $04, nRst
	dc.b	nE5, $0A, nRst, $0E, nE4, $10, nD5, $04, nRst, nD5, $0A, nRst
	dc.b	$0E
	smpsReturn

SpecialStageBGM_Call51:
	dc.b	nD4, $10, nC4, $06, nRst, $0A, nD4, $06, nRst, $0A
	smpsReturn

SpecialStageBGM_Call52:
	dc.b	nE4, $06, nRst, $0A, nF5, $04, nRst, nF5, $0A, nRst, $0E, nF4
	dc.b	$10, nE5, $04, nRst, nE5, $0A, nRst, $0E, nE4, $0C, nRst, $04
	dc.b	nD5, $10
	smpsReturn

SpecialStageBGM_Call53:
	dc.b	nC5, $0A, nRst, $06, nB4, $08, nRst, nG4, $20, nC4, $06, nRst
	dc.b	$1A, nA3, $10, nD4
	smpsReturn

SpecialStageBGM_Call54:
	dc.b	nF5, $10, nG5, $12, nRst, $0E, nE5, $2C, nRst, $04, nG3, $20
	smpsReturn

SpecialStageBGM_Call55:
	dc.b	smpsNoAttack, $02, nRst, $0E, nC5, $20, nG5, $10, nA3, $22, nRst, $0E
	dc.b	nD5, $10
	smpsReturn

SpecialStageBGM_Call56:
	dc.b	smpsNoAttack, $18, nRst, $08, nB3, $22, nRst, $16, nA3, $28
	smpsReturn

SpecialStageBGM_Call57:
	dc.b	nD5, $08, nRst, $28, nF5, $04, nRst, nF5, $0A, nRst, $0E, nF4
	dc.b	$10, nE5, $04, nRst, nE5, $0A, nRst, $0E
	smpsReturn

SpecialStageBGM_Call58:
	dc.b	nE4, $10, nD5, $04, nRst, nD5, $0A, nRst, $0E, nD4, $10, nC4
	dc.b	$06, nRst, $0A, nD4, $06, nRst, $10, nG3, $08, nRst, $02, nF5
	dc.b	$04, nRst, nF5, $08
	smpsReturn

SpecialStageBGM_Call59:
	dc.b	smpsNoAttack, $02, nRst, $0E, nF4, $10, nE5, $04, nRst, nE5, $0A, nRst
	dc.b	$0E, nE4, $0C, nRst, $04, nD5, $10, nC5, $0A, nRst, $06, nB4
	dc.b	$08, nRst
	smpsReturn

SpecialStageBGM_Call5A:
	dc.b	nG4, $20, nC4, $06, nRst, $0A, nF5, $04, nRst, nF5, $0A, nRst
	dc.b	$0E, nF4, $10, nE5, $04, nRst, nE5, $0A, nRst, $0E
	smpsReturn

SpecialStageBGM_Call5B:
	dc.b	nG4, $30, nD5, $0A, nRst, $06, nA3, $10, nF5, $0A, nRst, $06
	dc.b	nA5, $12, nRst, $0E
	smpsReturn

SpecialStageBGM_Call5C:
	dc.b	nD4, $10, nC5, $18, nRst, $08, nE4, $10, nG3, $22, nRst, $0E
	dc.b	nA5, $10
	smpsReturn

SpecialStageBGM_Call5D:
	dc.b	smpsNoAttack, $02, nRst, $06, nG5, $08, nF4, $10, nA3, $22, nRst, $0E
	dc.b	nG5, $20, nB5, $08, nRst
	smpsReturn

SpecialStageBGM_Call5E:
	dc.b	nG3, $12, nRst, $0E, nG4, $10, nF5, $12, nRst, $06, nA5, $12
	dc.b	nRst, $06, nE5, $12, nRst, $06, nG5, $08
	smpsReturn

SpecialStageBGM_Call5F:
	dc.b	smpsNoAttack, $04, nRst, nE5, $08, nD5, $11, nRst, $07, nD5, $0C, nRst
	dc.b	$04, nD5, $06, nRst, $02, nC4, $08, nRst, nC4, nRst, nC4, nRst
	dc.b	nF5, $10
	smpsReturn

SpecialStageBGM_Call60:
	dc.b	smpsNoAttack, $0A, nRst, $06, nC5, $10, nE5, $1A, nRst, $06, nB4, $10
	dc.b	nF5, $0C, nRst, $04, nE5, $0A, nRst, $06, nD5, $0C, nRst, $04
	smpsReturn

SpecialStageBGM_Call61:
	dc.b	nC5, $22, nRst, $0E, nF5, $1A, nRst, $06, nC5, $10, nE5, $1A
	dc.b	nRst, $06
	smpsReturn

SpecialStageBGM_Call62:
	dc.b	nB4, $10, nD5, $1A, nRst, $06, nA4, $10, nC4, $08, nRst, nD4
	dc.b	nRst, nE4, $0C, nRst, $04, nF5, $10
	smpsReturn

SpecialStageBGM_Call63:
	dc.b	smpsNoAttack, $0A, nRst, $06, nC5, $10, nE5, $1A, nRst, $06, nB4, $10
	dc.b	nD4, $0A, nRst, $06, nE4, $0A, nRst, $06, nF4, $0A, nRst, $06
	smpsReturn

SpecialStageBGM_Call64:
	dc.b	nG4, $22, nRst, $1E, nF3, $20, nE5, $0C, nRst, $04, nG3, $10
	smpsReturn

SpecialStageBGM_Call65:
	dc.b	smpsNoAttack, $10, nRst, nA3, nC6, $0A, nRst, $06, nG5, $0C, nRst, $04
	dc.b	nD3, $20, nRst, $10
	smpsReturn

SpecialStageBGM_Call66:
	dc.b	nC4, $10, nC6, $0A, nRst, $06, nRst, $10, nD4, nD6, $0A, nRst
	dc.b	$06, nRst, $10, nEb4, nEb6, $0A, nRst, $06
	smpsReturn

SpecialStageBGM_Call67:
	dc.b	nBb5, $06, nRst, $0A, nF4, $10, nC6, $0A, nRst, $06, nG5, $1A
	dc.b	nRst, $06, nB5, $0C, nRst, $04, nG5, $20
	smpsReturn

SpecialStageBGM_Call68:
	dc.b	smpsNoAttack, $0A, nRst, $0E, nA3, $28, nD5, $08, nRst, $28
	smpsReturn

SpecialStageBGM_Call37:
	smpsSetvoice        $00
	dc.b	nC6, $04, nRst, nC6, $0A, nRst, $0E, nF5, $10, nB5, $04, nRst
	dc.b	nB5, $0A, nRst, $0E, nE5, $10, nA5, $04, nRst, nA5, $0A, nRst
	dc.b	$0E
	smpsReturn

SpecialStageBGM_Call38:
	dc.b	nD5, $10, nC5, $08, nRst, nD5, $10
	smpsReturn

SpecialStageBGM_Call39:
	dc.b	smpsNoAttack, $0E, nRst, $02, nC6, $04, nRst, nC6, $0A, nRst, $0E, nF5
	dc.b	$10, nB5, $04, nRst, nB5, $0A, nRst, $0E, nE5, $0C, nRst, $04
	dc.b	nF5, $10
	smpsReturn

SpecialStageBGM_Call3A:
	dc.b	nE5, $0A, nRst, $06, nD5, $08, nRst, nC5, $32, nRst, $0E, nD5
	dc.b	$10, nE5, $0E, nRst, $02
	smpsReturn

SpecialStageBGM_Call3B:
	dc.b	nA5, $12, nRst, $0E, nD5, $08, nRst, nG5, $2C, nRst, $04, nE5
	dc.b	$20
	smpsReturn

SpecialStageBGM_Call3C:
	dc.b	smpsNoAttack, $04, nRst, $1C, nC4, $20, nF5, $2C, nRst, $04, nG5, $10
	smpsReturn

SpecialStageBGM_Call3D:
	dc.b	smpsNoAttack, $18, nRst, $08, nD5, $28, nRst, $18, nB3, $20
	smpsReturn

SpecialStageBGM_Call3E:
	dc.b	smpsNoAttack, $12, nRst, $1A, nRst, $04, nC6, nRst, nC6, $0A, nRst, $0E
	dc.b	nF5, $10, nB5, $04, nRst, nB5, $0A, nRst, $0E
	smpsReturn

SpecialStageBGM_Call3F:
	dc.b	nE5, $10, nA5, $04, nRst, nA5, $0A, nRst, $0E, nD5, $10, nC5
	dc.b	$08, nRst, nD5, $1E, nRst, $02, nC6, $04, nRst, nC6, $08
	smpsReturn

SpecialStageBGM_Call40:
	dc.b	smpsNoAttack, $02, nRst, $0E, nF5, $10, nB5, $04, nRst, nB5, $0A, nRst
	dc.b	$0E, nE5, $0C, nRst, $04, nF5, $10, nE5, $0A, nRst, $06, nD5
	dc.b	$08, nRst
	smpsReturn

SpecialStageBGM_Call41:
	dc.b	nC5, $20, nRst, $10, nC6, $04, nRst, nC6, $0A, nRst, $0E, nF5
	dc.b	$10, nB5, $04, nRst, nB5, $0A, nRst, $0E
	smpsReturn

SpecialStageBGM_Call42:
	dc.b	nC5, $30, nF5, $10, nD5, $32, nRst, $0E
	smpsReturn

SpecialStageBGM_Call43:
	dc.b	nF5, $02, nRst, $0E, nG5, $20, nE5, nRst, $10, nE4, nRst
	smpsReturn

SpecialStageBGM_Call44:
	dc.b	nC4, $20, nF6, $0C, nRst, $04, nC6, $0C, nRst, $04, nF4, $10
	dc.b	nD6, $12, nRst, $0E, nG3, $0C, nRst, $04
	smpsReturn

SpecialStageBGM_Call45:
	dc.b	nD5, $0C, nRst, $04, nD5, $10, nB5, $08, nRst, nC6, $12, nRst
	dc.b	$16, nF5, $0A, nRst, $06, nC4, $18
	smpsReturn

SpecialStageBGM_Call46:
	dc.b	smpsNoAttack, $0A, nRst, $06, nA5, $11, nRst, $07, nF5, $0C, nRst, nC5
	dc.b	$08, nRst, nC5, $10, nRst, nC6
	smpsReturn

SpecialStageBGM_Call47:
	dc.b	smpsNoAttack, $0A, nRst, $0E, nF5, $08, nB5, $1A, nRst, $0E, nE5, $08
	dc.b	nA5, $0C, nRst, $04, nG5, $0A, nRst, $06, nF5, $0C, nRst, $04
	smpsReturn

SpecialStageBGM_Call48:
	dc.b	nE5, $22, nRst, $0E, nC6, $1A, nRst, $0E, nF5, $08, nB5, $1A
	dc.b	nRst, $06
	smpsReturn

SpecialStageBGM_Call49:
	dc.b	smpsNoAttack, nRst, $08, nE5, nA5, $1A, nRst, $0E, nD5, $08, nC5, $0A
	dc.b	nRst, $06, nC5, $1C, nRst, $04, nC6, $10
	smpsReturn

SpecialStageBGM_Call4A:
	dc.b	smpsNoAttack, $0A, nRst, $0E, nF5, $08, nB5, $1A, nRst, $0E, nE5, $08
	dc.b	nD5, $0A, nRst, $06, nC5, $0A, nRst, $06, nB4, $10
	smpsReturn

SpecialStageBGM_Call4B:
	dc.b	nC5, $22, nRst, $1E, nD5, nRst, $02, nG5, $0A, nRst, $06, nE5
	dc.b	$10
	smpsReturn

SpecialStageBGM_Call4C:
	dc.b	smpsNoAttack, $12, nRst, $0E, nF5, $19, nRst, $07, nD6, $0C, nRst, $04
	dc.b	nG5, $22, nRst, $0E
	smpsReturn

SpecialStageBGM_Call4D:
	dc.b	nF5, $18, nA5, $08, nRst, $10, nG5, $18, nB5, $08, nRst, $10
	dc.b	nAb5, $18, nC6, $08
	smpsReturn

SpecialStageBGM_Call4E:
	dc.b	nD6, $06, nRst, $0A, nG6, $16, nRst, $02, nB5, $0A, nRst, $0E
	dc.b	nB3, $30, nG4, $10
	smpsReturn

SpecialStageBGM_Call4F:
	dc.b	smpsNoAttack, $0A, nRst, $16, nB3, $32, nRst, $1A, nRst, $04
	smpsReturn

SpecialStageBGM_Call1E:
	dc.b	smpsNoAttack, nRst, $10
	smpsSetvoice        $00
	dc.b	nC4, $20, nRst, $10, nG3, nRst, $20, nA3, $10
	smpsReturn

SpecialStageBGM_Call1F:
	dc.b	smpsNoAttack, $10, nE5, $0E, nRst, $02, nG5, $10
	smpsReturn

SpecialStageBGM_Call20:
	dc.b	smpsNoAttack, $0C, nRst, $14, nC4, $20, nRst, $10, nG3, $1C, nRst, $14
	smpsReturn

SpecialStageBGM_Call21:
	dc.b	smpsNoAttack, nRst, $60, nF5, $12, nRst, $0E
	smpsReturn

SpecialStageBGM_Call22:
	dc.b	smpsNoAttack, nRst, $10, nA3, $20, nRst, $10, nB3, $20, nC6
	smpsReturn

SpecialStageBGM_Call23:
	dc.b	smpsNoAttack, $0E, nRst, $12, nF5, nRst, $0E, nA5, $08, nRst, nB5, $10
	dc.b	nC6, $0C, nRst, $04, nC6, $10
	smpsReturn

SpecialStageBGM_Call24:
	dc.b	smpsNoAttack, $18, nRst, $08, nG5, $28, nRst, $20, nD4, $18
	smpsReturn

SpecialStageBGM_Call25:
	dc.b	smpsNoAttack, $1A, nRst, $12, nRst, $14, nC4, $20, nRst, $10, nG3
	smpsReturn

SpecialStageBGM_Call26:
	dc.b	smpsNoAttack, $10, nRst, nA3, $20, nE5, $0E, nRst, $02, nG5, $1C, nRst
	dc.b	$14
	smpsReturn

SpecialStageBGM_Call27:
	dc.b	nC4, $20, nRst, $10, nG3, $1C, nRst, $34
	smpsReturn

SpecialStageBGM_Call28:
	dc.b	smpsNoAttack, nRst, $40, nC4, $20, nRst, $10, nG3
	smpsReturn

SpecialStageBGM_Call29:
	dc.b	smpsNoAttack, $20, nC4, $06, nRst, $0A, nA5, $10, nRst, $08, nE5, $0A
	dc.b	nRst, $06, nG5, $0A, nRst, $0E, nA3, $10
	smpsReturn

SpecialStageBGM_Call2A:
	dc.b	smpsNoAttack, $10, nRst, nC4, $20, nC6, $1A, nRst, $06, nG5, $0A, nRst
	dc.b	$16
	smpsReturn

SpecialStageBGM_Call2B:
	dc.b	nF5, $28, nRst, $18, nA5, $0A, nRst, $16, nD4, $12, nRst, $0E
	smpsReturn

SpecialStageBGM_Call2C:
	dc.b	nG5, $12, nRst, $0E, nG5, $08, nRst, $10, nC4, $22, nRst, $06
	dc.b	nB5, $12, nRst, $0E
	smpsReturn

SpecialStageBGM_Call2D:
	dc.b	smpsNoAttack, nRst, $18, nA3, $22, nRst, $06, nE5, $08, nRst, nG5, $10
	dc.b	nRst, $18, nC4, $08
	smpsReturn

SpecialStageBGM_Call2E:
	dc.b	smpsNoAttack, $02, nRst, $06, nA5, $0A, nRst, $16, nB3, $0A, nRst, $06
	dc.b	nG5, $10, nRst, $38
	smpsReturn

SpecialStageBGM_Call2F:
	dc.b	smpsNoAttack, nRst, $10, nG3, $12, nRst, $16, nC4, $0A, nRst, $06, nA5
	dc.b	$0A, nRst, $16, nB3, $0A, nRst, $06, nG5, $08
	smpsReturn

SpecialStageBGM_Call30:
	dc.b	smpsNoAttack, $08, nRst, $10, nA3, $0A, nRst, $06, nF5, $10, nRst, $08
	dc.b	nE5, $0A, nRst, $06, nG5, $1C, nRst, $0C, nC4, $08
	smpsReturn

SpecialStageBGM_Call31:
	dc.b	smpsNoAttack, $02, nRst, $06, nA5, $0A, nRst, $16, nB3, $0A, nRst, $06
	dc.b	nG5, $10, nRst, $08, nF5, $12, nRst, $0E, nD5, $0A, nRst, $06
	smpsReturn

SpecialStageBGM_Call32:
	dc.b	smpsNoAttack, nRst, $20, nC4, $10, nRst, nF5, $0A, nRst, $06, nA5, $0A
	dc.b	nRst, $16, nC6, $10
	smpsReturn

SpecialStageBGM_Call33:
	dc.b	smpsNoAttack, $12, nRst, $0E, nA5, $0A, nRst, $06, nD4, $10, nRst, $40
	smpsReturn

SpecialStageBGM_Call34:
	dc.b	nA5, $0A, nRst, $06, nF4, $10, nRst, nB5, $0A, nRst, $06, nG4
	dc.b	$10, nRst, nC6, $0A, nRst, $06, nAb4, $10
	smpsReturn

SpecialStageBGM_Call35:
	dc.b	nRst, $18, nD6, $0A, nRst, $0E, nC6, $22, nRst, $26, nB4, $08
	smpsReturn

SpecialStageBGM_Call36:
	dc.b	smpsNoAttack, $02, nRst, $26, nD4, $32, nRst, $12, nRst, $04
	smpsReturn

SpecialStageBGM_Call05:
	dc.b	smpsNoAttack, nRst, $10
	smpsSetvoice        $00
	dc.b	nA5, nRst, $20, nG5, $10, nRst, $20, nF5, $10
	smpsReturn

SpecialStageBGM_Call06:
	dc.b	nRst, $30
	smpsReturn

SpecialStageBGM_Call07:
	dc.b	smpsNoAttack, nRst, $20
	smpsSetvoice        $00
	dc.b	nA5, $10, nRst, $20, nG5, $10, nRst, $20
	smpsReturn

SpecialStageBGM_Call08:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

SpecialStageBGM_Call09:
	dc.b	nRst, $10
	smpsSetvoice        $00
	dc.b	nE5, $12, nRst, $2E, nE4, $10, nRst, $20
	smpsReturn

SpecialStageBGM_Call0A:
	dc.b	nE4, $10, nRst, $20, nF4, $10, nRst, $20, nF4, $10, nRst
	smpsReturn

SpecialStageBGM_Call0B:
	dc.b	nD4, $20, nB5, $28, nRst, nG4, $10
	smpsReturn

SpecialStageBGM_Call0C:
	dc.b	smpsNoAttack, $22, nRst, $0A, nRst, $14, nA5, $10, nRst, $20, nG5, $10
	smpsReturn

SpecialStageBGM_Call0D:
	dc.b	nRst, $20, nF5, $10, nRst, $3B, nC4, $05, nRst, $10
	smpsReturn

SpecialStageBGM_Call0E:
	smpsSetvoice        $00
	dc.b	nA5, $10, nRst, $20, nG5, $10, nRst, $40
	smpsReturn

SpecialStageBGM_Call0F:
	dc.b	smpsNoAttack, nRst, $40, nA5, $10, nRst, $20, nG5, $10
	smpsReturn

SpecialStageBGM_Call10:
	dc.b	smpsNoAttack, $50, nD4, $10, nRst, nG5
	smpsReturn

SpecialStageBGM_Call11:
	dc.b	smpsNoAttack, $02, nRst, $36, nG5, $1C, nRst, $2C
	smpsReturn

SpecialStageBGM_Call12:
	dc.b	smpsNoAttack, nRst, $10, nA5, $08, nC6, nRst, $40, nC6, $12, nRst, $0E
	smpsReturn

SpecialStageBGM_Call13:
	dc.b	smpsNoAttack, nRst, $10, nA5, $12, nRst, $1E, nF4, $1A, nRst, $16, nE4
	dc.b	$10
	smpsReturn

SpecialStageBGM_Call14:
	dc.b	smpsNoAttack, $0A, nRst, $16, nD4, $1A, nRst, $46
	smpsReturn

SpecialStageBGM_Call15:
	dc.b	nF4, $0A, nRst, $26, nE4, $0A, nRst, $46
	smpsReturn

SpecialStageBGM_Call16:
	dc.b	smpsNoAttack, nRst, $20, nC3, $06, nRst, $1A, nF4, $0A, nRst, $26, nE4
	dc.b	$0A, nRst, $06
	smpsReturn

SpecialStageBGM_Call17:
	dc.b	smpsNoAttack, nRst, $20, nD4, $0A, nRst, $56
	smpsReturn

SpecialStageBGM_Call18:
	dc.b	nF4, $0A, nRst, $26, nE4, $0A, nRst, $26, nE5, $10, nRst
	smpsReturn

SpecialStageBGM_Call19:
	dc.b	smpsNoAttack, $48, nG5, $0A, nRst, $06, nF5, $08, nRst, $20
	smpsReturn

SpecialStageBGM_Call1A:
	dc.b	nC3, $10, nRst, $18, nB5, $0A, nRst, $06, nA5, $08, nRst, $40
	smpsReturn

SpecialStageBGM_Call1B:
	dc.b	smpsNoAttack, nRst, $08, nB5, $0A, nRst, $26, nC6, $0A, nRst, $26, nD6
	dc.b	$0A, nRst, $0E
	smpsReturn

SpecialStageBGM_Call1C:
	dc.b	smpsNoAttack, nRst, $20, nBb4, $10, nRst, $50
	smpsReturn

SpecialStageBGM_Call1D:
	dc.b	nD5, $0E, nRst, $22, nG4, $32, nRst, $0A, nRst, $04
	smpsReturn

SpecialStageBGM_Call00:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

SpecialStageBGM_Call01:
	dc.b	smpsNoAttack, nRst, $30
	smpsReturn

SpecialStageBGM_Call02:
	dc.b	smpsNoAttack, nRst, $40, nRst
	smpsReturn

SpecialStageBGM_Call03:
	dc.b	smpsNoAttack, $20, nRst, $30, nRst
	smpsReturn

SpecialStageBGM_Call04:
	dc.b	smpsNoAttack, $70
	smpsReturn

SpecialStageBGM_Call8B:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

SpecialStageBGM_Call8C:
	dc.b	smpsNoAttack, nRst, $30
	smpsReturn

SpecialStageBGM_Call8D:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

SpecialStageBGM_Call8E:
	dc.b	smpsNoAttack, nRst, $70
	smpsReturn

SpecialStageBGM_Call87:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

SpecialStageBGM_Call88:
	dc.b	smpsNoAttack, nRst, $30
	smpsReturn

SpecialStageBGM_Call89:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

SpecialStageBGM_Call8A:
	dc.b	smpsNoAttack, nRst, $70
	smpsReturn

SpecialStageBGM_Call82:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $10, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nCs0
	smpsReturn

SpecialStageBGM_Call83:
	dc.b	nRst, $10
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0
	smpsReturn

SpecialStageBGM_Call84:
	dc.b	nRst, $10
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0
	smpsReturn

SpecialStageBGM_Call85:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $10, nRst, nCs0, nCs0, nRst, nCs0, nCs0, nRst
	smpsReturn

SpecialStageBGM_Call86:
	dc.b	nRst, $10
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst
	smpsReturn

SpecialStageBGM_Voices:
;	Voice $00
;	$1F
;	$03, $06, $31, $01, 	$1F, $1F, $1F, $1F, 	$0D, $12, $1F, $1F
;	$01, $0E, $01, $01, 	$FA, $09, $09, $09, 	$13, $14, $17, $16
	smpsVcAlgorithm     $07
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $06, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $12, $0D
	smpsVcDecayRate2    $01, $01, $0E, $01
	smpsVcDecayLevel    $00, $00, $00, $0F
	smpsVcReleaseRate   $09, $09, $09, $0A
	smpsVcTotalLevel    $16, $17, $14, $13

