csact2v6_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     csact2v6_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       csact2v6_DAC
	smpsHeaderFM        csact2v6_FM1,	$00, $00
	smpsHeaderFM        csact2v6_FM2,	$00, $00
	smpsHeaderFM        csact2v6_FM3,	$F4, $00
	smpsHeaderFM        csact2v6_FM4,	$F4, $04
	smpsHeaderFM        csact2v6_FM5,	$F4, $04
	smpsHeaderPSG       csact2v6_PSG1,	$D0, $02, $00, $00
	smpsHeaderPSG       csact2v6_PSG2,	$D0, $02, $00, $00
	smpsHeaderPSG       csact2v6_PSG3,	$D0, $02, $00, $00

; FM1 Data
csact2v6_FM1:
	smpsCall            csact2v6_Call61

csact2v6_Jump05:
	smpsCall            csact2v6_Call62
	smpsCall            csact2v6_Call63
	smpsCall            csact2v6_Call64
	smpsCall            csact2v6_Call65
	smpsCall            csact2v6_Call66
	smpsCall            csact2v6_Call67
	smpsCall            csact2v6_Call68
	smpsCall            csact2v6_Call69
	smpsCall            csact2v6_Call6A
	smpsCall            csact2v6_Call6B
	smpsCall            csact2v6_Call64
	smpsCall            csact2v6_Call6C
	smpsCall            csact2v6_Call6D
	smpsCall            csact2v6_Call6E
	smpsCall            csact2v6_Call68
	smpsCall            csact2v6_Call6F
	smpsCall            csact2v6_Call70
	smpsCall            csact2v6_Call71
	smpsCall            csact2v6_Call72
	smpsCall            csact2v6_Call71
	smpsCall            csact2v6_Call72
	smpsCall            csact2v6_Call73
	smpsCall            csact2v6_Call61
	smpsJump            csact2v6_Jump05

; FM2 Data
csact2v6_FM2:
	smpsCall            csact2v6_Call4A

csact2v6_Jump04:
	smpsCall            csact2v6_Call4B
	smpsCall            csact2v6_Call4C
	smpsCall            csact2v6_Call4D
	smpsCall            csact2v6_Call4E
	smpsCall            csact2v6_Call4F
	smpsCall            csact2v6_Call50
	smpsCall            csact2v6_Call51
	smpsCall            csact2v6_Call52
	smpsCall            csact2v6_Call53
	smpsCall            csact2v6_Call54
	smpsCall            csact2v6_Call55
	smpsCall            csact2v6_Call56
	smpsCall            csact2v6_Call57
	smpsCall            csact2v6_Call58
	smpsCall            csact2v6_Call59
	smpsCall            csact2v6_Call5A
	smpsCall            csact2v6_Call5B
	smpsCall            csact2v6_Call5C
	smpsCall            csact2v6_Call5D
	smpsCall            csact2v6_Call5E
	smpsCall            csact2v6_Call5F
	smpsCall            csact2v6_Call60
	smpsCall            csact2v6_Call4A
	smpsJump            csact2v6_Jump04

; FM3 Data
csact2v6_FM3:
	smpsCall            csact2v6_Call38

csact2v6_Jump03:
	smpsCall            csact2v6_Call39
	smpsCall            csact2v6_Call3A
	smpsCall            csact2v6_Call3B
	smpsCall            csact2v6_Call3C
	smpsCall            csact2v6_Call3D
	smpsCall            csact2v6_Call3E
	smpsCall            csact2v6_Call3F
	smpsCall            csact2v6_Call40
	smpsCall            csact2v6_Call41
	smpsCall            csact2v6_Call3A
	smpsCall            csact2v6_Call42
	smpsCall            csact2v6_Call43
	smpsCall            csact2v6_Call44
	smpsCall            csact2v6_Call3E
	smpsCall            csact2v6_Call3F
	smpsCall            csact2v6_Call40
	smpsCall            csact2v6_Call45
	smpsCall            csact2v6_Call46
	smpsCall            csact2v6_Call47
	smpsCall            csact2v6_Call46
	smpsCall            csact2v6_Call47
	smpsCall            csact2v6_Call48
	smpsCall            csact2v6_Call49
	smpsJump            csact2v6_Jump03

; FM4 Data
csact2v6_FM4:
	smpsCall            csact2v6_Call23

csact2v6_Jump02:
	smpsCall            csact2v6_Call24
	smpsCall            csact2v6_Call25
	smpsCall            csact2v6_Call26
	smpsCall            csact2v6_Call27
	smpsCall            csact2v6_Call28
	smpsCall            csact2v6_Call29
	smpsCall            csact2v6_Call2A
	smpsCall            csact2v6_Call2B
	smpsCall            csact2v6_Call2C
	smpsCall            csact2v6_Call2D
	smpsCall            csact2v6_Call2E
	smpsCall            csact2v6_Call2F
	smpsCall            csact2v6_Call30
	smpsCall            csact2v6_Call31
	smpsCall            csact2v6_Call2A
	smpsCall            csact2v6_Call32
	smpsCall            csact2v6_Call33
	smpsCall            csact2v6_Call34
	smpsCall            csact2v6_Call35
	smpsCall            csact2v6_Call34
	smpsCall            csact2v6_Call35
	smpsCall            csact2v6_Call36
	smpsCall            csact2v6_Call37
	smpsJump            csact2v6_Jump02

; FM5 Data
csact2v6_FM5:
	smpsCall            csact2v6_Call0B

csact2v6_Jump01:
	smpsCall            csact2v6_Call0C
	smpsCall            csact2v6_Call0D
	smpsCall            csact2v6_Call0E
	smpsCall            csact2v6_Call0F
	smpsCall            csact2v6_Call10
	smpsCall            csact2v6_Call11
	smpsCall            csact2v6_Call12
	smpsCall            csact2v6_Call13
	smpsCall            csact2v6_Call14
	smpsCall            csact2v6_Call15
	smpsCall            csact2v6_Call16
	smpsCall            csact2v6_Call17
	smpsCall            csact2v6_Call18
	smpsCall            csact2v6_Call19
	smpsCall            csact2v6_Call1A
	smpsCall            csact2v6_Call1B
	smpsCall            csact2v6_Call1C
	smpsCall            csact2v6_Call1D
	smpsCall            csact2v6_Call1E
	smpsCall            csact2v6_Call1F
	smpsCall            csact2v6_Call20
	smpsCall            csact2v6_Call21
	smpsCall            csact2v6_Call22
	smpsJump            csact2v6_Jump01

; PSG1 Data
csact2v6_PSG1:
	smpsstop
	
csact2v6_PSG2:
	smpsstop
	
csact2v6_PSG3:
	smpsPSGform         $E7
	smpsCall            csact2v6_Call74

csact2v6_Jump06:
	smpsCall            csact2v6_Call75
	smpsCall            csact2v6_Call76
	smpsCall            csact2v6_Call77
	smpsCall            csact2v6_Call76
	smpsCall            csact2v6_Call76
	smpsCall            csact2v6_Call78
	smpsCall            csact2v6_Call76
	smpsCall            csact2v6_Call79
	smpsCall            csact2v6_Call7A
	smpsCall            csact2v6_Call76
	smpsCall            csact2v6_Call77
	smpsCall            csact2v6_Call76
	smpsCall            csact2v6_Call76
	smpsCall            csact2v6_Call78
	smpsCall            csact2v6_Call76
	smpsCall            csact2v6_Call79
	smpsCall            csact2v6_Call7B
	smpsCall            csact2v6_Call7C
	smpsCall            csact2v6_Call7C
	smpsCall            csact2v6_Call7C
	smpsCall            csact2v6_Call7C
	smpsCall            csact2v6_Call7D
	smpsCall            csact2v6_Call74
	smpsJump            csact2v6_Jump06

; DAC Data
csact2v6_DAC:
	smpsCall            csact2v6_Call00

csact2v6_Jump00:
	smpsCall            csact2v6_Call01
	smpsCall            csact2v6_Call02
	smpsCall            csact2v6_Call03
	smpsCall            csact2v6_Call02
	smpsCall            csact2v6_Call02
	smpsCall            csact2v6_Call04
	smpsCall            csact2v6_Call05
	smpsCall            csact2v6_Call06
	smpsCall            csact2v6_Call07
	smpsCall            csact2v6_Call02
	smpsCall            csact2v6_Call03
	smpsCall            csact2v6_Call02
	smpsCall            csact2v6_Call02
	smpsCall            csact2v6_Call04
	smpsCall            csact2v6_Call05
	smpsCall            csact2v6_Call06
	smpsCall            csact2v6_Call08
	smpsCall            csact2v6_Call09
	smpsCall            csact2v6_Call09
	smpsCall            csact2v6_Call09
	smpsCall            csact2v6_Call09
	smpsCall            csact2v6_Call0A
	smpsCall            csact2v6_Call00
	smpsJump            csact2v6_Jump00

csact2v6_Call61:
	smpsSetvoice        $01
	dc.b	nA4, $18, nG4, nFs4, $10, nRst, $08, nG4, $18, nFs4, $08, nRst
	dc.b	nD4, nRst
	smpsReturn

csact2v6_Call62:
	dc.b	nB3, $08, nRst, nB3, nRst, nCs4, $0B, $05, $08, nD4, nRst, $10
	dc.b	nA3, $0B, $05, nCs4, $0B, nD4, $05, nE4, $10
	smpsReturn

csact2v6_Call63:
	dc.b	nFs4, $0B, nRst, $15, nG4, $18, nA4, $08, nRst, $10, nD5, $08
	dc.b	nRst, nCs5, nRst, nA4, nRst
	smpsReturn

csact2v6_Call64:
	dc.b	nB4, $18, nA4, nG4, $32, nRst, $0E, $10
	smpsReturn

csact2v6_Call65:
	dc.b	nD4, $18, nE4, nFs4, nG4, nA4, $08, nRst, nD5, nRst
	smpsReturn

csact2v6_Call66:
	dc.b	nC5, $32, nRst, $1E, $10, nBb4, $18, nRst, $08
	smpsReturn

csact2v6_Call67:
	dc.b	nB4, $18, nA4, nG4, nD4, nB4, $08, nRst, nG4, nRst
	smpsReturn

csact2v6_Call68:
	dc.b	nA4, $32, nRst, $0E, nFs4, $10, nRst, nA4, $18, nAb4, $08
	smpsReturn

csact2v6_Call69:
	dc.b	smpsNoAttack, $10, nFs4, $08, nRst, nE4, $18, nB4, $0C, nRst, $04, nB4
	dc.b	nRst, nB4, $08, nRst, nA4, nRst, nAb4, nA4
	smpsReturn

csact2v6_Call6A:
	dc.b	smpsNoAttack, $2A, nRst, $0E, $18, nA3, $0B, $05, nCs4, $0B, nD4, $05
	dc.b	nE4, $10
	smpsReturn

csact2v6_Call6B:
	dc.b	nFs4, $20, nG4, $18, nA4, $08, nRst, $10, nD5, $08, nRst, nCs5
	dc.b	nRst, nA4, nRst
	smpsReturn

csact2v6_Call6C:
	dc.b	nD4, $18, nE4, nFs4, nG4, nA4, $08, nRst, nB4, nRst
	smpsReturn

csact2v6_Call6D:
	dc.b	nC5, $32, nRst, $0E, $08, nC5, $18, nB4, $08, nRst, nA4, nRst
	smpsReturn

csact2v6_Call6E:
	dc.b	nB4, $18, nA4, nG4, nD4, $14, nRst, $04, nB4, $08, nRst, nG4
	dc.b	nRst
	smpsReturn

csact2v6_Call6F:
	dc.b	smpsNoAttack, $10, nFs4, $08, nRst, nE4, $14, nRst, $04, nB4, $0C, nRst
	dc.b	$04, nB4, $08, nB4, nRst, nA4, $0B, nRst, $05, nAb4, $08, nA4
	smpsReturn

csact2v6_Call70:
	dc.b	smpsNoAttack, $2A, nRst, $16, $20, nG4, $06, nA4, $05, nB4, nCs5, $06
	dc.b	nD5, $05, nE5
	smpsReturn

csact2v6_Call71:
	dc.b	nD5, $08, nRst, nA4, nRst, nE5, $10, nD5, $08, nD5, nRst, nD5
	dc.b	nA4, nRst, nE5, $10, nD5, $08, nRst
	smpsReturn

csact2v6_Call72:
	dc.b	nG5, $08, nRst, nFs5, nRst, nE5, $10, nFs5, $08, nG5, nRst, nG5
	dc.b	nFs5, nRst, nE5, $10, nD5, $08, nRst
	smpsReturn

csact2v6_Call73:
	dc.b	nE4, $18, nRst, $08, nFs4, $18, nRst, $08, nG4, $18, nRst, $08
	dc.b	nAb4, $18, nRst, $08
	smpsReturn

csact2v6_Call4A:
	smpsSetvoice        $01
	dc.b	nFs4, $18, nE4, nD4, $10, nRst, $08, nE4, $18, nD4, $08, nRst
	dc.b	nA3, nRst
	smpsReturn

csact2v6_Call4B:
	dc.b	nG3, $08, nRst, nG3, nRst, nA3, $0B, nB3, $05, nA3, $08, nFs3
	dc.b	nRst, $10, nE3, $0B, nFs3, $05, nA3, $0B, nB3, $05, nCs4, $10
	smpsReturn

csact2v6_Call4C:
	dc.b	nD4, $0B, nRst, $15, nE4, $18, nFs4, $08, nRst, $10, nA4, $08
	dc.b	nRst, nA4, nRst, nFs4, nRst
	smpsReturn

csact2v6_Call4D:
	dc.b	nD4, $18, nE4, nD4, $32, nRst, $0E, $10
	smpsReturn

csact2v6_Call4E:
	dc.b	nA3, $18, nCs4, nD4, nE4, nFs4, $08, nRst, nG4, nRst
	smpsReturn

csact2v6_Call4F:
	dc.b	nA4, $32, nRst, $1E, $10, nFs4, $18, nRst, $08
	smpsReturn

csact2v6_Call50:
	dc.b	nG4, $18, nE4, nD4, $14, nRst, $04, nB3, $18, nG4, $08, nRst
	dc.b	nE4, nRst
	smpsReturn

csact2v6_Call51:
	dc.b	nFs4, $32, nRst, $0A, $04, nD4, $10, nRst, nFs4, $18, nE4, $08
	smpsReturn

csact2v6_Call52:
	dc.b	smpsNoAttack, $10, nD4, $08, nRst, nB3, $18, nAb4, $0C, nRst, $04, nAb4
	dc.b	nRst, nAb4, $08, nRst, nE4, nRst, nD4, nCs4
	smpsReturn

csact2v6_Call53:
	dc.b	smpsNoAttack, $2A, nRst, $0E, $18, nE3, $0B, nFs3, $05, nA3, $0B, nB3
	dc.b	$05, nA3, $10
	smpsReturn

csact2v6_Call54:
	dc.b	nA3, $20, nCs4, $18, nD4, $08, nRst, $10, nFs4, $08, nRst, nA4
	dc.b	nRst, nFs4, nRst
	smpsReturn

csact2v6_Call55:
	dc.b	nD4, $18, nC4, nB3, $32, nRst, $0E, $10
	smpsReturn

csact2v6_Call56:
	dc.b	nA3, $18, nCs4, nA3, nB3, nCs4, $08, nRst, nD4, nRst
	smpsReturn

csact2v6_Call57:
	dc.b	nE4, $32, nRst, $0E, $08, nFs4, $18, nG4, $08, nRst, nFs4, nRst
	smpsReturn

csact2v6_Call58:
	dc.b	nD4, $18, nC4, nB3, $14, nRst, $04, nB3, $18, nD4, $08, nRst
	dc.b	nE4, nRst
	smpsReturn

csact2v6_Call59:
	dc.b	nD4, $32, nRst, $0E, nA3, $10, nRst, nD4, $18, nE4, $08
	smpsReturn

csact2v6_Call5A:
	dc.b	smpsNoAttack, $10, nD4, $08, nRst, nB3, $18, nE4, $0C, nRst, $04, nE4
	dc.b	$08, nAb4, nRst, nE4, $0B, nRst, $05, nD4, $08, nCs4
	smpsReturn

csact2v6_Call5B:
	dc.b	smpsNoAttack, $2A, nRst, $16, $20, nCs4, $06, nD4, $05, nE4, nFs4, $06
	dc.b	nA4, $05, nCs5
	smpsReturn

csact2v6_Call5C:
	dc.b	nA4, $08, nRst, nFs4, nRst, nB4, $10, nA4, $08, nFs4, nRst, nA4
	dc.b	nFs4, nRst, nB4, $10, nA4, $08, nRst
	smpsReturn

csact2v6_Call5D:
	dc.b	nD5, $08, nRst, nA4, nRst, nB4, $10, nCs5, $08, nB4, nRst, nB4
	dc.b	nD5, nRst, nB4, $10, nA4, $08, nRst
	smpsReturn

csact2v6_Call5E:
	dc.b	nFs4, $08, nRst, nFs4, nRst, nG4, $10, nA4, $08, nFs4, nRst, nA4
	dc.b	nFs4, nRst, nA4, $10, nFs4, $08, nRst
	smpsReturn

csact2v6_Call5F:
	dc.b	nB4, $08, nRst, nA4, nRst, nG4, $10, nA4, $08, nB4, nRst, nB4
	dc.b	nD5, nRst, nG4, $10, nFs4, $08, nRst
	smpsReturn

csact2v6_Call60:
	dc.b	nB3, $18, nRst, $08, nCs4, $18, nRst, $08, nE4, $18, nRst, $08
	dc.b	nD4, $18, nRst, $08
	smpsReturn

csact2v6_Call38:
	smpsSetvoice        $02
	dc.b	nD3, $18, nE3, nFs3, nE3, nFs3, $08, nRst, nD3, nRst
	smpsReturn

csact2v6_Call39:
	dc.b	nG3, $08, nRst, nG3, nRst, nA3, nRst, $03, nA3, $05, $08, nD3
	dc.b	nRst, $10, nA2, nE3, $0B, nA3, $05, nA2, $10
	smpsReturn

csact2v6_Call3A:
	dc.b	nD3, $0B, nRst, $15, nA2, $18, nD3, $08, nRst, nD3, nE3, $0B
	dc.b	nRst, $05, nFs3, $08, nRst, nD3, nRst
	smpsReturn

csact2v6_Call3B:
	dc.b	nE3, $18, nFs3, nE3, $10, nRst, $08, nG3, $18, nFs3, $08, nRst
	dc.b	nE3, nRst
	smpsReturn

csact2v6_Call3C:
	dc.b	nD3, $18, nA2, nD3, nE3, nD3, $08, nRst, nA2, nRst
	smpsReturn

csact2v6_Call3D:
	dc.b	nC3, $08, nRst, nC3, $10, nE3, $08, nRst, nE3, $10, nG3, $08
	dc.b	nRst, nG3, $10, nBb3, $08, nRst, nBb3, $10
	smpsReturn

csact2v6_Call3E:
	dc.b	nG3, $08, nRst, nG3, nD3, nRst, nD3, nA3, nRst, $10, nG3, $18
	dc.b	nA3, $08, nRst, nE3, nRst
	smpsReturn

csact2v6_Call3F:
	dc.b	nFs3, $08, nRst, nFs3, $10, nA3, $08, nRst, nA3, $10, nB3, $08
	dc.b	nRst, nB3, $10, nD4, $08, nRst, nD4, nE4
	smpsReturn

csact2v6_Call40:
	dc.b	smpsNoAttack, $06, nRst, $0A, nB3, $08, nRst, nE3, $18, nAb3, $06, nRst
	dc.b	$0A, nA3, $08, nB3, nRst, nE3, nRst, nAb3, nA3
	smpsReturn

csact2v6_Call41:
	dc.b	smpsNoAttack, $13, nRst, $0D, nG3, $0B, nAb3, $05, nA3, $08, nE3, nRst
	dc.b	$10, nA2, $1B, nA3, $05, nA2, $10
	smpsReturn

csact2v6_Call42:
	dc.b	nE3, $18, nFs3, nG3, $10, nRst, $08, nG3, $18, nFs3, $08, nRst
	dc.b	nE3, nRst
	smpsReturn

csact2v6_Call43:
	dc.b	nD3, $18, nA2, nD3, nE3, nCs3, $08, nRst, nB2, nRst
	smpsReturn

csact2v6_Call44:
	dc.b	nC3, $08, nRst, nC3, $10, nE3, $08, nRst, nE3, $0B, nG3, $03
	dc.b	nRst, $12, nG3, $10, nC4, $08, nRst, nC4, $10
	smpsReturn

csact2v6_Call45:
	dc.b	smpsNoAttack, $13, nRst, $0D, nG3, $0B, nAb3, $05, nA3, $08, nE3, nRst
	dc.b	$10, nA2, $1B, nE3, $05, nA3, $10
	smpsReturn

csact2v6_Call46:
	dc.b	nD3, $0B, nRst, $05, nD4, $0B, nRst, $05, nA3, $10, nD3, $08
	dc.b	nC3, nRst, nC3, nC4, $0B, nRst, $05, nA3, $10, nC3
	smpsReturn

csact2v6_Call47:
	dc.b	nB2, $0B, nRst, $05, nB3, $0B, nRst, $05, nG3, $10, nB2, $08
	dc.b	nE3, nRst, nE3, nB3, $10, nG3, $0B, nRst, $05, nFs3, $10
	smpsReturn

csact2v6_Call48:
	dc.b	nE3, $1B, nRst, $05, nFs3, $1B, nRst, $05, nE3, $08, nF3, nFs3
	dc.b	nG3, nAb3, nRst, nAb3, nA3
	smpsReturn

csact2v6_Call49:
	dc.b	nD3, $18, nE3, nFs3, nE3, nFs3, $08, nRst, nD3, nRst
	smpsReturn

csact2v6_Call23:
	smpsSetvoice        $00
	dc.b	nA4, $18, nG4, nFs4, $08, nRst, $10, nG4, $18, nFs4, $08, nRst
	dc.b	nD4, nRst
	smpsReturn

csact2v6_Call24:
	dc.b	nB3, $08, nRst, nB3, nRst, nCs4, $0B, $05, $08, nD4, nRst, $10
	dc.b	nA3, $0B, $05, nCs4, $0B, nD4, $05, nE4, $10
	smpsReturn

csact2v6_Call25:
	dc.b	nFs4, $0B, nRst, $15, nG4, $18, nA4, $08, nRst, $10, nD5, $08
	dc.b	nRst, nCs5, nRst, nA4, nRst
	smpsReturn

csact2v6_Call26:
	dc.b	nB4, $18, nA4, nG4, $32, nRst, $0E, $10
	smpsReturn

csact2v6_Call27:
	dc.b	nD4, $18, nE4, nFs4, nG4, nA4, $08, nRst, nD5, nRst
	smpsReturn

csact2v6_Call28:
	dc.b	nC5, $32, nRst, $1E, $10, nBb4, $18, nRst, $08
	smpsReturn

csact2v6_Call29:
	dc.b	nB4, $18, nA4, nG4, nD4, nB4, $08, nRst, nG4, nRst
	smpsReturn

csact2v6_Call2A:
	dc.b	nA4, $32, nRst, $0E, nFs4, $10, nRst, nA4, $18, nAb4, $08
	smpsReturn

csact2v6_Call2B:
	dc.b	smpsNoAttack, $10, nFs4, $08, nRst, nE4, $18, nB4, $0C, nRst, $04, nB4
	dc.b	nRst, nB4, $08, nRst, nA4, nRst, nAb4, nA4
	smpsReturn

csact2v6_Call2C:
	dc.b	smpsNoAttack, $2A, nRst, $0E, $18, nA3, $0B, $05, nCs4, $0B, nD4, $05
	dc.b	nE4, $10
	smpsReturn

csact2v6_Call2D:
	dc.b	nFs4, $20, nG4, $18, nA4, $08, nRst, $10, nD5, $08, nRst, nCs5
	dc.b	nRst, nA4, nRst
	smpsReturn

csact2v6_Call2E:
	dc.b	nB4, $18, nA4, nG4, $30, nRst, $20
	smpsReturn

csact2v6_Call2F:
	dc.b	nD4, $18, nE4, nFs4, $08, nRst, $10, nG4, $18, nA4, $08, nRst
	dc.b	nB4, nRst
	smpsReturn

csact2v6_Call30:
	dc.b	nC5, $32, nRst, $0E, $08, nC5, $18, nB4, $08, nRst, nA4, nRst
	smpsReturn

csact2v6_Call31:
	dc.b	nB4, $18, nA4, nG4, $08, nRst, $10, nD4, $14, nRst, $04, nB4
	dc.b	$08, nRst, nG4, nRst
	smpsReturn

csact2v6_Call32:
	dc.b	smpsNoAttack, $08, nRst, nFs4, nRst, nE4, $14, nRst, $04, nB4, nRst, $0C
	dc.b	nB4, $08, nB4, nRst, nA4, $0B, nRst, $05, nAb4, $08, nA4
	smpsReturn

csact2v6_Call33:
	dc.b	smpsNoAttack, $2A, nRst, $0E, $28, nG4, $06, nA4, $05, nB4, nCs5, $06
	dc.b	nD5, $05, nE5
	smpsReturn

csact2v6_Call34:
	dc.b	nD5, $08, nRst, nA4, nRst, nE5, $10, nD5, $08, nD5, nRst, nD5
	dc.b	nA4, nRst, nE5, $10, nD5, $08, nRst
	smpsReturn

csact2v6_Call35:
	dc.b	nG5, $08, nRst, nFs5, nRst, nE5, $10, nFs5, $08, nG5, nRst, nG5
	dc.b	nFs5, nRst, nE5, $10, nD5, $08, nRst
	smpsReturn

csact2v6_Call36:
	dc.b	nE4, $18, nRst, $08, nFs4, $18, nRst, $08, nG4, $18, nRst, $08
	dc.b	nAb4, $18, nRst, $08
	smpsReturn

csact2v6_Call37:
	dc.b	nA4, $18, nG4, nFs4, $08, nRst, $10, nG4, $18, nFs4, $08, nRst
	dc.b	nD4, nRst
	smpsReturn

csact2v6_Call0B:
	smpsSetvoice        $00
	dc.b	nFs4, $18, nE4, nD4, $08, nRst, $10, nE4, $18, nD4, $08, nRst
	dc.b	nA3, nRst
	smpsReturn

csact2v6_Call0C:
	dc.b	nG3, $08, nRst, nG3, nRst, nA3, $0B, nB3, $05, nA3, $08, nFs3
	dc.b	nRst, $10, nE3, $0B, nFs3, $05, nA3, $0B, nB3, $05, nCs4, $10
	smpsReturn

csact2v6_Call0D:
	dc.b	nD4, $0B, nRst, $15, nE4, $18, nFs4, $08, nRst, $10, nA4, $08
	dc.b	nRst, nA4, nRst, nFs4, nRst
	smpsReturn

csact2v6_Call0E:
	dc.b	nD4, $18, nE4, nD4, $32, nRst, $0E, $10
	smpsReturn

csact2v6_Call0F:
	dc.b	nA3, $18, nCs4, nD4
	smpsSetvoice        $01
	dc.b	nE4, nFs4, $08, nRst, nG4, nRst
	smpsReturn

csact2v6_Call10:
	dc.b	nA4, $32, nRst, $1E, $10, nFs4, $18, nRst, $08
	smpsReturn

csact2v6_Call11:
	dc.b	nG4, $18, nE4, nD4, $14, nRst, $04, nB3, $18, nG4, $08, nRst
	dc.b	nE4, nRst
	smpsReturn

csact2v6_Call12:
	dc.b	nFs4, $32, nRst, $0A, $04
	smpsSetvoice        $00
	dc.b	nD4, $10, nRst, nFs4, $18, nE4, $08
	smpsReturn

csact2v6_Call13:
	dc.b	smpsNoAttack, $10, nD4, $08, nRst, nB3, $18, nAb4, $0C, nRst, $04, nAb4
	dc.b	nRst, nAb4, $08, nRst, nE4, nRst, nD4, nCs4
	smpsReturn

csact2v6_Call14:
	dc.b	smpsNoAttack, $2A, nRst, $0E, $18, nE3, $0B, nFs3, $05, nA3, $0B, nB3
	dc.b	$05, nA3, $10
	smpsReturn

csact2v6_Call15:
	dc.b	nA3, $20, nCs4, $18, nD4, $08, nRst, $10, nFs4, $08, nRst, nA4
	dc.b	nRst, nFs4, nRst
	smpsReturn

csact2v6_Call16:
	dc.b	nD4, $18, nC4, nB3, $30, nRst, $20
	smpsReturn

csact2v6_Call17:
	dc.b	nA3, $18, nCs4, nA3, $08, nRst, $10, nB3, $18, nCs4, $08, nRst
	dc.b	nD4, nRst
	smpsReturn

csact2v6_Call18:
	dc.b	nE4, $32, nRst, $0E, $08, nFs4, $18, nG4, $08, nRst, nFs4, nRst
	smpsReturn

csact2v6_Call19:
	dc.b	nD4, $18, nC4, nB3, $04, nRst, $14, nB3, $18, nD4, $08, nRst
	dc.b	nE4, nRst
	smpsReturn

csact2v6_Call1A:
	dc.b	nD4, $32, nRst, $0E, nA3, $10, nRst, nD4, $18, nE4, $08
	smpsReturn

csact2v6_Call1B:
	dc.b	smpsNoAttack, $08, nRst, nD4, nRst, nB3, $18, nE4, $04, nRst, $0C, nE4
	dc.b	$08, nAb4, nRst, nE4, $0B, nRst, $05, nD4, $08, nCs4
	smpsReturn

csact2v6_Call1C:
	dc.b	smpsNoAttack, $2A, nRst, $0E, $28, nCs4, $06, nD4, $05, nE4, nFs4, $06
	dc.b	nA4, $05, nCs5
	smpsReturn

csact2v6_Call1D:
	dc.b	nA4, $08, nRst, nFs4, nRst, nB4, $10, nA4, $08, nFs4, nRst, nA4
	dc.b	nFs4, nRst, nB4, $10, nA4, $08, nRst
	smpsReturn

csact2v6_Call1E:
	dc.b	nD5, $08, nRst, nA4, nRst, nB4, $10, nCs5, $08, nB4, nRst, nB4
	dc.b	nD5, nRst, nB4, $10, nA4, $08, nRst
	smpsReturn

csact2v6_Call1F:
	dc.b	nFs4, $08, nRst, nFs4, nRst, nG4, $10, nA4, $08, nFs4, nRst, nA4
	dc.b	nFs4, nRst, nA4, $10, nFs4, $08, nRst
	smpsReturn

csact2v6_Call20:
	dc.b	nB4, $08, nRst, nA4, nRst, nG4, $10, nA4, $08, nB4, nRst, nB4
	dc.b	nD5, nRst, nG4, $10, nFs4, $08, nRst
	smpsReturn

csact2v6_Call21:
	dc.b	nB3, $18, nRst, $08, nCs4, $18, nRst, $08, nE4, $18, nRst, $08
	dc.b	nD4, $18, nRst, $08
	smpsReturn

csact2v6_Call22:
	dc.b	nFs4, $18, nE4, nD4, $08, nRst, $10, nE4, $18, nD4, $08, nRst
	dc.b	nA3, nRst
	smpsReturn

csact2v6_Call74:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nRst, nCs0, nCs0, nRst, nCs0, $10, $08, nRst, nCs0, nRst
	dc.b	nCs0, nCs0, nRst, $03, nCs0, $05, $08, nRst
	smpsReturn

csact2v6_Call75:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nRst, nCs0, nRst, nCs0, nRst, $03, nCs0, $05, nRst, $08
	dc.b	nCs0, nRst, $10, nCs0, $08, nRst, nCs0, nRst, nCs0, nRst
	smpsReturn

csact2v6_Call76:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nRst, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, $10, $08
	dc.b	nRst, nCs0, nRst, nCs0, nRst
	smpsReturn

csact2v6_Call77:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nRst, nCs0, nRst, nCs0, $10, $08, nRst, nCs0, $10, $08
	dc.b	nRst, nCs0, nRst, nCs0, nRst
	smpsReturn

csact2v6_Call78:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nRst, nCs0, nRst, nCs0, $10, $08, nRst, nCs0, nRst, nCs0
	dc.b	nRst, nCs0, nRst, nCs0, nRst
	smpsReturn

csact2v6_Call79:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $10, $08, nRst, nCs0, nRst, nCs0, nRst, nCs0, $10, $08, nRst
	dc.b	nCs0, nRst, nCs0, nRst
	smpsReturn

csact2v6_Call7A:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0, nRst, $20, nCs0
	dc.b	$08, nRst, nCs0, nRst
	smpsReturn

csact2v6_Call7B:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0, nRst, $20, nCs0
	dc.b	$08, nRst, nCs0, nRst, $03, $05
	smpsReturn

csact2v6_Call7C:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nRst, nCs0, nRst, nCs0, nRst, nCs0, nRst, $03, nCs0, $05
	dc.b	$10, $08, nRst, nCs0, nRst, $03, nCs0, $05, $08, nRst
	smpsReturn

csact2v6_Call7D:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nRst, nCs0, nRst, $03, nCs0, $05, $08, nRst, nCs0, nRst
	dc.b	$03, nCs0, $05, $08, nRst, nCs0, $10, $08, nCs0, nCs0, nRst
	smpsReturn

csact2v6_Call00:
	dc.b	dKick, $08, nRst, $10, dKick, $08, nRst, $10, dSnare, $18, dKick, $08
	dc.b	nRst, $10, dSnare, $08, nRst, $03, dSnare, $05, $08, nRst
	smpsReturn

csact2v6_Call01:
	dc.b	dKick, $08, nRst, dKick, nRst, dSnare, nRst, $03, dSnare, $05, $08, dKick
	dc.b	nRst, $10, dKick, $08, nRst, $13, dKick, $05, dSnare, $03, nRst, $0D
	smpsReturn

csact2v6_Call02:
	dc.b	dKick, $08, nRst, dSnare, nRst, dKick, nRst, dSnare, dKick, $10, $08, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst
	smpsReturn

csact2v6_Call03:
	dc.b	dKick, $08, nRst, dSnare, dKick, $10, $08, dSnare, dKick, $10, $08, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst
	smpsReturn

csact2v6_Call04:
	dc.b	dKick, $08, nRst, dSnare, dKick, $10, $08, dSnare, nRst, dKick, nRst, dSnare
	dc.b	nRst, dKick, nRst, dSnare, nRst
	smpsReturn

csact2v6_Call05:
	dc.b	dKick, $08, nRst, dSnare, nRst, dKick, nRst, dSnare, dKick, $10, $08, dSnare
	dc.b	nRst, dKick, nRst, dSnare, dKick
	smpsReturn

csact2v6_Call06:
	dc.b	nRst, $08, dKick, dSnare, nRst, dKick, nRst, dSnare, dKick, $10, $08, dSnare
	dc.b	nRst, dKick, nRst, dSnare, dKick
	smpsReturn

csact2v6_Call07:
	dc.b	nRst, $10, dKick, $08, nRst, dSnare, nRst, $03, dSnare, $05, $08, dKick
	dc.b	nRst, $10, dKick, $08, nRst, $13, dKick, $05, dSnare, $03, nRst, $0D
	smpsReturn

csact2v6_Call08:
	dc.b	nRst, $10, dKick, $08, nRst, dSnare, nRst, $03, dSnare, $05, $08, dKick
	dc.b	nRst, $10, dKick, $08, nRst, dSnare, nRst, $03, dSnare, $05, $06, $05
	dc.b	dSnare
	smpsReturn

csact2v6_Call09:
	dc.b	dKick, $08, nRst, dSnare, nRst, dKick, nRst, $03, dKick, $05, dSnare, $03
	dc.b	nRst, $05, dKick, $08, nRst, dKick, dSnare, nRst, dKick, nRst, dSnare, nRst
	smpsReturn

csact2v6_Call0A:
	dc.b	dKick, $08, nRst, $03, dKick, $05, dSnare, $03, nRst, $0D, dKick, $08
	dc.b	nRst, $03, dKick, $05, dSnare, $03, nRst, $0D, dKick, $08, dSnare, $10
	dc.b	$08, dSnare, nRst, dSnare, dSnare
	smpsReturn

csact2v6_Voices:
;	Voice $00
;	$34
;	$03, $11, $4E, $44, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $10, $29, $17
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $01, $00
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $17, $29, $10, $23

;	Voice $01
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

;	Voice $02
;	$3A
;	$31, $0C, $E4, $01, 	$9C, $DB, $9C, $DA, 	$04, $09, $04, $03
;	$03, $01, $03, $00, 	$1F, $0F, $0F, $AF, 	$21, $47, $31, $06
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $0E, $00, $03
	smpsVcCoarseFreq    $01, $04, $0C, $01
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $1A, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $04, $09, $04
	smpsVcDecayRate2    $00, $03, $01, $03
	smpsVcDecayLevel    $0A, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $06, $31, $47, $21

