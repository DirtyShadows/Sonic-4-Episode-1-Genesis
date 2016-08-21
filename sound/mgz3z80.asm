mgz3_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     mgz3_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       mgz3_DAC
	smpsHeaderFM        mgz3_FM1,	$0C, $0A
	smpsHeaderFM        mgz3_FM2,	$00, $09
	smpsHeaderFM        mgz3_FM3,	$00, $10
	smpsHeaderFM        mgz3_FM4,	$E8, $16
	smpsHeaderFM        mgz3_FM5,	$00, $14
	smpsHeaderPSG       mgz3_PSG1,	$DC, $06, $00, $00
	smpsHeaderPSG       mgz3_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       mgz3_PSG3,	$D0, $01, $00, $00

; FM1 Data
mgz3_FM1:
	smpsCall            mgz3_Call26
	smpsCall            mgz3_Call27
	smpsCall            mgz3_Call28
	smpsCall            mgz3_Call29
	smpsCall            mgz3_Call28
	smpsCall            mgz3_Call29
	smpsCall            mgz3_Call2A
	smpsCall            mgz3_Call2A
	smpsCall            mgz3_Call2B
	smpsCall            mgz3_Call2C
	smpsCall            mgz3_Call2D
	smpsCall            mgz3_Call2E
	smpsJump            mgz3_FM1

; FM2 Data
mgz3_FM2:
	smpsCall            mgz3_Call1D
	smpsCall            mgz3_Call1D
	smpsCall            mgz3_Call1E
	smpsCall            mgz3_Call1F
	smpsCall            mgz3_Call20
	smpsCall            mgz3_Call1F
	smpsCall            mgz3_Call21
	smpsCall            mgz3_Call22
	smpsCall            mgz3_Call23
	smpsCall            mgz3_Call24
	smpsCall            mgz3_Call23
	smpsCall            mgz3_Call25
	smpsJump            mgz3_FM2

; FM3 Data
mgz3_FM3:
	smpsCall            mgz3_Call15
	smpsCall            mgz3_Call16
	smpsCall            mgz3_Call17
	smpsCall            mgz3_Call18
	smpsCall            mgz3_Call17
	smpsCall            mgz3_Call18
	smpsCall            mgz3_Call19
	smpsCall            mgz3_Call19
	smpsCall            mgz3_Call1A
	smpsCall            mgz3_Call1B
	smpsCall            mgz3_Call1A
	smpsCall            mgz3_Call1C
	smpsJump            mgz3_FM3

; FM4 Data
mgz3_FM4:
	smpsCall            mgz3_Call0E
	smpsCall            mgz3_Call0F
	smpsCall            mgz3_Call10
	smpsCall            mgz3_Call10
	smpsCall            mgz3_Call10
	smpsCall            mgz3_Call10
	smpsCall            mgz3_Call11
	smpsCall            mgz3_Call12
	smpsCall            mgz3_Call12
	smpsCall            mgz3_Call12
	smpsCall            mgz3_Call13
	smpsCall            mgz3_Call14
	smpsJump            mgz3_FM4

; FM5 Data
mgz3_FM5:
	smpsPan             panRight, $00
	smpsCall            mgz3_Call05
	smpsCall            mgz3_Call05
	smpsCall            mgz3_Call06
	smpsCall            mgz3_Call07
	smpsCall            mgz3_Call08
	smpsCall            mgz3_Call07
	smpsCall            mgz3_Call09
	smpsCall            mgz3_Call0A
	smpsCall            mgz3_Call0B
	smpsCall            mgz3_Call0C
	smpsCall            mgz3_Call0B
	smpsCall            mgz3_Call0D
	smpsJump            mgz3_FM5

; PSG1 Data
mgz3_PSG1:
	smpsCall            mgz3_Call3A
	smpsCall            mgz3_Call3A
	smpsCall            mgz3_Call3B
	smpsCall            mgz3_Call3C
	smpsCall            mgz3_Call3C
	smpsCall            mgz3_Call3C
	smpsCall            mgz3_Call3D
	smpsCall            mgz3_Call3D
	smpsCall            mgz3_Call3C
	smpsCall            mgz3_Call3E
	smpsCall            mgz3_Call3F
	smpsCall            mgz3_Call40
	smpsJump            mgz3_PSG1

; PSG2 Data
mgz3_PSG2:
	smpsCall            mgz3_Call35
	smpsCall            mgz3_Call35
	smpsCall            mgz3_Call36
	smpsCall            mgz3_Call36
	smpsCall            mgz3_Call36
	smpsCall            mgz3_Call36
	smpsCall            mgz3_Call36
	smpsCall            mgz3_Call36
	smpsCall            mgz3_Call37
	smpsCall            mgz3_Call38
	smpsCall            mgz3_Call37
	smpsCall            mgz3_Call39
	smpsJump            mgz3_PSG2

; PSG3 Data
mgz3_PSG3:
	smpsPSGform         $E7
	smpsCall            mgz3_Call2F
	smpsCall            mgz3_Call30
	smpsCall            mgz3_Call31
	smpsCall            mgz3_Call31
	smpsCall            mgz3_Call31
	smpsCall            mgz3_Call32
	smpsCall            mgz3_Call2F
	smpsCall            mgz3_Call30
	smpsCall            mgz3_Call30
	smpsCall            mgz3_Call30
	smpsCall            mgz3_Call33
	smpsCall            mgz3_Call34
	smpsJump            mgz3_PSG3

; DAC Data
mgz3_DAC:
	smpsCall            mgz3_Call00
	smpsCall            mgz3_Call01
	smpsCall            mgz3_Call01
	smpsCall            mgz3_Call02
	smpsCall            mgz3_Call03
	smpsCall            mgz3_Call04
	smpsJump            mgz3_DAC

mgz3_Call26:
	smpsSetvoice        $00
	dc.b	nA1, $04, nA1, nRst, nB1, nC2, nG1, nRst, $08, nF1, $04, nC2
	dc.b	nD2, $02, nF2, nE2, $08, nB1, $04, nE2, $08
	smpsReturn

mgz3_Call27:
	dc.b	nA1, $04, nA1, nRst, nB1, nC2, nG1, nRst, $08, nF1, $04, nC2
	dc.b	nD2, $02, nF2, nE2, $08, nB2, $04, nE3, $08
	smpsReturn

mgz3_Call28:
	dc.b	nA1, $04, nA2, nA1, nA2, nA1, nA2, nA1, nA2, nG1, nG2, nG1
	dc.b	nG2, nG1, nG2, nG1, nG2
	smpsReturn

mgz3_Call29:
	dc.b	nF1, $04, nF2, nF1, nF2, nF1, nF2, nF1, nF2, nG1, nG2, nG1
	dc.b	nG2, nG1, nG2, nG1, nG2
	smpsReturn

mgz3_Call2A:
	dc.b	nA1, $04, nA2, nA1, nB1, nC2, $08, nD2, $04, nEb2, $14, nRst
	dc.b	$04, nG2, nC2, $08
	smpsReturn

mgz3_Call2B:
	dc.b	nA1, $0C, nRst, $08, nA1, $02, nA2, nA1, $04, nG1, $08, nB1
	dc.b	$04, nD2, nG2, $08, nF2, $04, nE2, nC2
	smpsReturn

mgz3_Call2C:
	dc.b	nF1, $0C, nRst, $08, nC2, $02, nF2, nF1, $04, nG1, $08, nC2
	dc.b	$04, nD2, nG2, $08, nF2, $04, nE2, nC2
	smpsReturn

mgz3_Call2D:
	dc.b	nA1, $04, nA2, nA1, nA2, nA1, nC2, nE2, nG2, $08, $04, nF2
	dc.b	nF2, nE2, nE2, nD2, nC2
	smpsReturn

mgz3_Call2E:
	dc.b	nF1, $04, nF2, nF1, nF2, nF1, nA1, nC2, nE2, $08, $04, nD2
	dc.b	nEb2, nE2, nD2, nC2, nG1
	smpsReturn

mgz3_Call1D:
	smpsSetvoice        $01
	dc.b	nA4, $04, nE4, nRst, nA4, nG4, nD4, nRst, $08, nF4, $04, nC4
	dc.b	nF4, nE4, $10, nRst, $04
	smpsReturn

mgz3_Call1E:
	dc.b	smpsNoAttack, nRst, $04, nA4, nE4, nRst, nA4, nE4, nRst, nA4, nG4, $0C
	dc.b	nE4, $14
	smpsReturn

mgz3_Call1F:
	dc.b	nRst, $04, nA4, nE4, nRst, nA4, nE4, nRst, nA4, nG4, $0C, nB4
	dc.b	$08, nC5, $04, nB4, $08
	smpsReturn

mgz3_Call20:
	dc.b	nRst, $04, nA4, nE4, nRst, nA4, nE4, nRst, nA4, nG4, $0C, nE4
	dc.b	$14
	smpsReturn

mgz3_Call21:
	dc.b	nRst, $04, nA4, nA4, $08, nG4, nG4, $04, nFs4, $1C, nRst, $08
	smpsReturn

mgz3_Call22:
	dc.b	smpsNoAttack, nRst, $04, nA4, nA4, $08, nG4, nG4, $04, nFs4, $1C, nRst
	dc.b	$08
	smpsReturn

mgz3_Call23:
	dc.b	nE5, $04, nA4, nC5, nA4, nD5, nE5, nG5, nE5, $24
	smpsReturn

mgz3_Call24:
	dc.b	nE5, $04, nA4, nC5, nA4, nD5, nE5, nG5, nF5, $0C, nE5, $08
	dc.b	nD5, nC5
	smpsReturn

mgz3_Call25:
	dc.b	nE5, $04, nA4, nC5, nA4, nD5, nE5, nG5, nE5, $0C, nD5, $08
	dc.b	nC5, nE5
	smpsReturn

mgz3_Call15:
	dc.b	nRst, $04
	smpsSetvoice        $01
	dc.b	nC4, $08, nA3, $04, nD4, nE4, nG4, nE4, nC4, nC4, nA3, nB3
	dc.b	$14
	smpsReturn

mgz3_Call16:
	dc.b	nRst, $04, nC4, $08, nA3, $04, nC4, nE4, nG4, nF4, $0C, nE4
	dc.b	$08, nD4, nC4
	smpsReturn

mgz3_Call17:
	dc.b	nRst, $04
	smpsSetvoice        $02
	dc.b	nA4, nE4, nRst, nA4, nE4, nRst, nA4, nG4, $0C, nE4, $14
	smpsReturn

mgz3_Call18:
	dc.b	nRst, $04, nA4, nE4, nRst, nA4, nE4, nRst, nA4, nG4, $0C, nB4
	dc.b	$08, nC5, $04, nB4, $08
	smpsReturn

mgz3_Call19:
	dc.b	nRst, $24
	smpsSetvoice        $01
	dc.b	nC5, $04, nRst, nC5, nB4, nC5, nB4, $08
	smpsReturn

mgz3_Call1A:
	smpsSetvoice        $02
	dc.b	nE5, $04, nA4, nC5, nA4, nD5, nE5, nG5, nE5, $24
	smpsReturn

mgz3_Call1B:
	dc.b	nE5, $04, nA4, nC5, nA4, nD5, nE5, nG5, nF5, $0C, nE5, $08
	dc.b	nD5, nC5
	smpsReturn

mgz3_Call1C:
	dc.b	nE5, $04, nA4, nC5, nA4, nD5, nE5, nG5, nE5, $0C, nD5, $08
	dc.b	nC5, nE5
	smpsReturn

mgz3_Call0E:
	dc.b	nRst, $20
	smpsSetvoice        $03
	dc.b	nF4, $0C, nE4, $14
	smpsReturn

mgz3_Call0F:
	dc.b	nRst, $20, nF4, $0C, nE4, $14
	smpsReturn

mgz3_Call10:
	dc.b	nC4, $20, nB3
	smpsReturn

mgz3_Call11:
	dc.b	nRst, $40
	smpsReturn

mgz3_Call12:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

mgz3_Call13:
	smpsSetvoice        $03
	dc.b	nE4, $1C, nA3, $24
	smpsReturn

mgz3_Call14:
	dc.b	nC4, $1C, nFs3, $24
	smpsReturn

mgz3_Call05:
	dc.b	nRst, $04
	smpsSetvoice        $01
	dc.b	nA4, nE4, nRst, nA4, nG4, nD4, nRst, $08, nF4, $04, nC4, nF4
	dc.b	nE4, $10
	smpsReturn

mgz3_Call06:
	dc.b	nRst, $08, nA4, $04, nE4, nRst, nA4, nE4, nRst, nA4, nG4, $0C
	dc.b	nE4, $10
	smpsReturn

mgz3_Call07:
	dc.b	smpsNoAttack, $04, nRst, nA4, nE4, nRst, nA4, nE4, nRst, nA4, nG4, $0C
	dc.b	nB4, $08, nC5, $04, nB4
	smpsReturn

mgz3_Call08:
	dc.b	smpsNoAttack, $04, nRst, nA4, nE4, nRst, nA4, nE4, nRst, nA4, nG4, $0C
	dc.b	nE4, $10
	smpsReturn

mgz3_Call09:
	dc.b	smpsNoAttack, $04, nRst, nA4, nA4, $08, nG4, nG4, $04, nFs4, $1C, nRst
	dc.b	$04
	smpsReturn

mgz3_Call0A:
	dc.b	smpsNoAttack, nRst, $08, nA4, $04, $08, nG4, nG4, $04, nFs4, $1C, nRst
	dc.b	$04
	smpsReturn

mgz3_Call0B:
	dc.b	smpsNoAttack, nRst, $04, nE5, nA4, nC5, nA4, nD5, nE5, nG5, nE5, $20
	smpsReturn

mgz3_Call0C:
	dc.b	smpsNoAttack, $04, nE5, nA4, nC5, nA4, nD5, nE5, nG5, nF5, $0C, nE5
	dc.b	$08, nD5, nC5, $04
	smpsReturn

mgz3_Call0D:
	dc.b	smpsNoAttack, $04, nE5, nA4, nC5, nA4, nD5, nE5, nG5, nE5, $0C, nD5
	dc.b	$08, nC5, nE5, $04
	smpsReturn

mgz3_Call3A:
	dc.b	nRst, $04
	smpsPSGvoice        $00
	dc.b	nA4, nE4, nRst, nA4, nG4, nD4, nRst, $08, nF4, $04, nC4, nF4
	dc.b	nE4, $10
	smpsReturn

mgz3_Call3B:
	dc.b	nRst, $40
	smpsReturn

mgz3_Call3C:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

mgz3_Call3D:
	smpsPSGvoice        $00
	dc.b	nA3, $01, nRst, nB3, nRst, nC4, nRst, nD4, nRst, nE4, nRst, nG4
	dc.b	nRst, nA4, nRst, nB4, nRst, nC5, nRst, nA4, nRst, nG4, nRst, nE4
	dc.b	nRst, nC4, nRst, nA3, nRst, nG3, $08, nRst, $1C
	smpsReturn

mgz3_Call3E:
	dc.b	smpsNoAttack, nRst, $38
	smpsPSGvoice        $00
	dc.b	nD5, $01, nB4, nD5, nB4, nE5, nC5, nE5, nC5
	smpsReturn

mgz3_Call3F:
	dc.b	nA5, $01, nA4, nA5, nE5, nA5, nE6, nA5, nA6, nC6, $04, nA5
	dc.b	nD6, nE6, nG6, nE6, $24
	smpsReturn

mgz3_Call40:
	dc.b	nE6, $04, nA5, nC6, nA5, nD6, nE6, nG6, nE6, $0C, nD6, $08
	dc.b	nC6, nE6
	smpsReturn

mgz3_Call35:
	smpsPSGvoice        $00
	dc.b	nA4, $04, nE4, nRst, nA4, nG4, nD4, nRst, $08, nF4, $04, nC4
	dc.b	nF4, nE4, $10, nRst, $04
	smpsReturn

mgz3_Call36:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

mgz3_Call37:
	smpsPSGvoice        $00
	dc.b	nE5, $04, nA4, nC5, nA4, nD5, nE5, nG5, nE5, $24
	smpsReturn

mgz3_Call38:
	dc.b	nE5, $04, nA4, nC5, nA4, nD5, nE5, nG5, nF5, $0C, nE5, $08
	dc.b	nD5, nC5
	smpsReturn

mgz3_Call39:
	dc.b	nE5, $04, nA4, nC5, nA4, nD5, nE5, nG5, nE5, $0C, nD5, $08
	dc.b	nC5, nE5
	smpsReturn

mgz3_Call2F:
	dc.b	nRst, $40
	smpsReturn

mgz3_Call30:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

mgz3_Call31:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nCs0, nCs0, $04, $02, nCs0, nCs0, $04, $02, nCs0, nCs0
	dc.b	$04, $02, nCs0, nCs0, $04, $02, nCs0, nCs0, $04, $02, nCs0, nCs0
	dc.b	$04, $02, nCs0, nCs0, $04, $02, nCs0, nCs0, nCs0
	smpsReturn

mgz3_Call32:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nCs0, nCs0, $04, $02, nCs0, nCs0, $04, $02, nCs0, nCs0
	dc.b	$04, $02, nCs0, nCs0, $04, $02, nCs0, nCs0, $04, $02, nCs0, nCs0
	dc.b	$04, $02, nCs0, nCs0, $04, $02, nCs0, nCs0, $04
	smpsReturn

mgz3_Call33:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, nCs0, nCs0, nCs0, nCs0, $02, nCs0, nCs0, $04, $02, nCs0
	dc.b	nCs0, $08, $04, nCs0, nCs0, $02, nCs0, nCs0, $04, nCs0, nCs0, nCs0
	smpsReturn

mgz3_Call34:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, nCs0, nCs0, nCs0, nCs0, $02, nCs0, nCs0, $04, $02, nCs0
	dc.b	nCs0, $08, $04, nCs0, nCs0, $02, nCs0, nCs0, $04, nCs0, nCs0, nCs0
	dc.b	$02, nRst
	smpsReturn

mgz3_Call00:
	dc.b	dKick, $02, nRst, dKick, nRst, $0A, dKick, $02, nRst, dKick, nRst, dSnare
	dc.b	nRst, $06, dKick, $02, nRst, dKick, nRst, dSnare, nRst, dKick, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, dSnare, dSnare, dKick, nRst, dKick, nRst, $0A
	dc.b	dKick, $02, nRst, dKick, nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick
	dc.b	nRst, dSnare, nRst, dKick, nRst, $06, dKick, $02, nRst, dSnare, nRst, dSnare
	dc.b	dSnare
	smpsReturn

mgz3_Call01:
	dc.b	dKick, $02, nRst, dKick, nRst, dSnare, nRst, $04, dHiTimpani, $02, dKick, nRst
	dc.b	dKick, nRst, dSnare, nRst, $04, dHiTimpani, $02, dKick, nRst, dKick, nRst, dSnare
	dc.b	nRst, $04, dMidTimpani, $02, dKick, nRst, dKick, nRst, dSnare, nRst, $04, dMidTimpani
	dc.b	$02, dKick, nRst, dKick, nRst, dSnare, nRst, $04, dHiTimpani, $02, dKick, nRst
	dc.b	dKick, nRst, dSnare, nRst, $04, dHiTimpani, $02, dKick, nRst, dKick, nRst, dSnare
	dc.b	nRst, $04, dMidTimpani, $02, dKick, nRst, dKick, nRst, dSnare, dSnare, dSnare, nRst
	smpsReturn

mgz3_Call02:
	dc.b	dKick, $02, nRst, dSnare, nRst, dSnare, nRst, dKick, nRst, dSnare, nRst, dKick
	dc.b	nRst, dSnare, nRst, dKick, nRst, $06, dHiTimpani, $02, nRst, dHiTimpani, dHiTimpani, nRst
	dc.b	dHiTimpani, dMidTimpani, nRst, dMidTimpani, nRst, dKick, dMidTimpani, dMidTimpani, dMidTimpani, dKick, nRst, dSnare
	dc.b	nRst, dSnare, nRst, dKick, nRst, dSnare, nRst, dKick, nRst, dSnare, nRst, dKick
	dc.b	nRst, $06, dHiTimpani, $02, nRst, dHiTimpani, dHiTimpani, nRst, dHiTimpani, dKick, nRst, dMidTimpani
	dc.b	nRst, dKick, dMidTimpani, dMidTimpani, dMidTimpani
	smpsReturn

mgz3_Call03:
	dc.b	dKick, $02, nRst, $12, dSnare, $02, nRst, dSnare, nRst, dKick, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, dSnare, nRst, dHiTimpani, dHiTimpani, nRst, dHiTimpani, dMidTimpani
	dc.b	nRst, dMidTimpani, nRst, dKick, nRst, $12, dSnare, $02, nRst, dSnare, nRst, dKick
	dc.b	nRst, $06, dKick, $02, nRst, dSnare, dSnare, nRst, dSnare, dHiTimpani, nRst, dHiTimpani
	dc.b	dHiTimpani, dSnare, dHiTimpani, dMidTimpani, dMidTimpani
	smpsReturn

mgz3_Call04:
	dc.b	dKick, $02, nRst, $12, dSnare, $02, nRst, dSnare, nRst, dKick, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, dSnare, nRst, dSnare, dHiTimpani, dHiTimpani, nRst, dHiTimpani, dMidTimpani
	dc.b	nRst, dMidTimpani, nRst, dKick, nRst, $12, dSnare, $02, nRst, dSnare, nRst, dKick
	dc.b	nRst, $06, dKick, $02, nRst, dSnare, dSnare, nRst, dSnare, dHiTimpani, nRst, dHiTimpani
	dc.b	dHiTimpani, dSnare, dHiTimpani, dMidTimpani, dMidTimpani
	smpsReturn

mgz3_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$19, $37, $13, $80
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
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $01
;	$3D
;	$01, $01, $03, $01, 	$50, $52, $58, $59, 	$0F, $02, $02, $02
;	$04, $00, $00, $00, 	$17, $09, $19, $19, 	$13, $0C, $14, $80
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
	smpsVcTotalLevel    $00, $14, $0C, $13

;	Voice $02
;	$38
;	$33, $01, $51, $01, 	$10, $13, $1A, $1B, 	$0F, $1F, $1F, $1F
;	$01, $01, $01, $01, 	$33, $03, $03, $08, 	$16, $1A, $19, $80
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
	smpsVcTotalLevel    $00, $19, $1A, $16

;	Voice $03
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $00, $00, $00
;	$00, $01, $00, $01, 	$00, $36, $00, $36, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $06, $00, $06, $00
	smpsVcTotalLevel    $00, $17, $00, $16

