csz3z80_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     csz3z80_Voices
	smpsHeaderChan      $05, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       csz3z80_DAC
	smpsHeaderFM        csz3z80_FM1,	$0C, $10
	smpsHeaderFM        csz3z80_FM2,	$00, $0E
	smpsHeaderFM        csz3z80_FM3,	$00, $10
	smpsHeaderFM        csz3z80_FM4,	$00, $14
	smpsHeaderPSG       csz3z80_PSG1,	$D0, $02, $00, $00
	smpsHeaderPSG       csz3z80_PSG2,	$D0, $02, $00, $00
	smpsHeaderPSG       csz3z80_PSG3,	$D0, $02, $00, $00

; FM1 Data
csz3z80_FM1:
	smpsCall            csz3z80_Call1A

csz3z80_Jump04:
	smpsCall            csz3z80_Call1B
	smpsCall            csz3z80_Call1C
	smpsCall            csz3z80_Call1D
	smpsCall            csz3z80_Call1E
	smpsCall            csz3z80_Call1F
	smpsCall            csz3z80_Call1A
	smpsJump            csz3z80_Jump04

; FM2 Data
csz3z80_FM2:
	smpsCall            csz3z80_Call14

csz3z80_Jump03:
	smpsCall            csz3z80_Call15
	smpsCall            csz3z80_Call16
	smpsCall            csz3z80_Call15
	smpsCall            csz3z80_Call17
	smpsCall            csz3z80_Call18
	smpsCall            csz3z80_Call19
	smpsJump            csz3z80_Jump03

; FM3 Data
csz3z80_FM3:
	smpsCall            csz3z80_Call0D

csz3z80_Jump02:
	smpsCall            csz3z80_Call0E
	smpsCall            csz3z80_Call0F
	smpsCall            csz3z80_Call10
	smpsCall            csz3z80_Call11
	smpsCall            csz3z80_Call12
	smpsCall            csz3z80_Call13
	smpsJump            csz3z80_Jump02

; FM4 Data
csz3z80_FM4:
	smpsCall            csz3z80_Call06

csz3z80_Jump01:
	smpsCall            csz3z80_Call07
	smpsCall            csz3z80_Call08
	smpsCall            csz3z80_Call09
	smpsCall            csz3z80_Call0A
	smpsCall            csz3z80_Call0B
	smpsCall            csz3z80_Call0C
	smpsJump            csz3z80_Jump01

csz3z80_PSG1:
	smpsstop

csz3z80_PSG2:
	smpsstop
	
; PSG1 Data
csz3z80_PSG3:
	smpsPSGform         $E7
	smpsCall            csz3z80_Call20

csz3z80_Jump05:
	smpsCall            csz3z80_Call21
	smpsCall            csz3z80_Call22
	smpsCall            csz3z80_Call23
	smpsCall            csz3z80_Call24
	smpsCall            csz3z80_Call25
	smpsCall            csz3z80_Call20
	smpsJump            csz3z80_Jump05

; DAC Data
csz3z80_DAC:
	smpsCall            csz3z80_Call00

csz3z80_Jump00:
	smpsCall            csz3z80_Call01
	smpsCall            csz3z80_Call02
	smpsCall            csz3z80_Call03
	smpsCall            csz3z80_Call04
	smpsCall            csz3z80_Call05
	smpsCall            csz3z80_Call00
	smpsJump            csz3z80_Jump00

csz3z80_Call1A:
	smpsSetvoice        $04
	dc.b	nF2, $14, nRst, $01, nC2, $03, nC3, $04, nRst, $01, nBb2, $03
	dc.b	nRst, $08, nBb2, $04, nRst, $01, nA2, $03, nRst, $05, nG2, $03
	dc.b	nF2, $08, nG2, $03, nRst, $05, nG2, $08, nF2, $03, nRst, $05
	dc.b	nF2, $04, nRst, $01, nE2, $03, nRst, $08, nC2, $0C, nRst, $01
	dc.b	nC3, $07, nRst, $01, nC2, $03
	smpsReturn

csz3z80_Call1B:
	dc.b	nF2, $0B, nRst, $02, nF2, $03, nC2, $0B, nRst, $02, nC2, $03
	dc.b	nF2, $08, nC2, $04, nRst, $01, nG2, $07, nRst, $01, nF2, $03
	dc.b	nRst, $05, nF2, $03, nD2, $0B, nRst, $02, nD2, $03, nA2, $0B
	dc.b	nRst, $02, nA2, $03, nD2, $04, nRst, $01, nE2, $03, nF2, $04
	dc.b	nRst, $01, nD2, $07, nRst, $01, nA2, $03, nRst, $05, nA2, $03
	smpsReturn

csz3z80_Call1C:
	dc.b	nG2, $0B, nRst, $02, nG2, $03, nD2, $0B, nRst, $02, nD2, $03
	dc.b	nG2, $04, nRst, $01, nD2, $03, nA2, $04, nRst, $01, nG2, $03
	dc.b	nRst, $05, nF2, $03, nRst, $05, nF2, $03, nE2, $0B, nRst, $02
	dc.b	nE2, $03, nC2, nRst, $02, nC2, $03, nE2, $04, nRst, $01, nF2
	dc.b	$03, nG2, nF2, $01, nRst, nG2, $03, nBb2, $04, nRst, $01, nC3
	dc.b	$07, nRst, $01, nC2, $03, nRst, $05, nC2, $03
	smpsReturn

csz3z80_Call1D:
	dc.b	nF2, $0B, nRst, $02, nF2, $03, nC2, $0B, nRst, $02, nC2, $03
	dc.b	nF2, nRst, $02, nF2, $03, nG2, $04, nRst, $01, nA2, $07, nRst
	dc.b	$01, nF2, $03, nRst, $05, nF2, $03, nD2, $0B, nRst, $02, nD2
	dc.b	$03, nA2, $0B, nRst, $02, nA2, $03, nD2, nRst, $02, nD2, $03
	dc.b	nE2, $04, nRst, $01, nF2, $07, nRst, $01, nA2, $02, nRst, $06
	dc.b	nA2, $03
	smpsReturn

csz3z80_Call1E:
	dc.b	nG2, $0B, nRst, $02, nG2, $03, nD2, $0B, nRst, $02, nD2, $03
	dc.b	nG2, nRst, $02, nG2, $03, nA2, $04, nRst, $01, nG2, $07, nRst
	dc.b	$01, nF2, $03, nRst, $05, nF2, $03, nE2, $0A, nRst, $03, nE2
	dc.b	nC2, nRst, $02, nC2, $03, nE2, $04, nRst, $01, nF2, $03, nG2
	dc.b	$05, nRst, $03, nC2, $05, nRst, $03, nF2, $05, nRst, $03, nE2
	dc.b	$05, nRst, $03
	smpsReturn

csz3z80_Call1F:
	dc.b	nD2, $03, nRst, $05, nD2, $04, nRst, $01, nF2, $07, nRst, $01
	dc.b	nF2, $03, nA2, nRst, $05, nA2, $04, nRst, $01, nF2, $07, nRst
	dc.b	$01, nF2, $03, nG2, nRst, $05, nF2, $08, nE2, $03, nRst, $05
	dc.b	nE2, $08, nC2, $03, nRst, $02, nC2, $03, nE2, nF2, $02, nRst
	dc.b	$01, nG2, $02, nA2, $03, nRst, $05, nC3, $0C, nRst, $01, nC3
	dc.b	$03, nC2, $08
	smpsReturn

csz3z80_Call14:
	smpsSetvoice        $02
	dc.b	nC4, $03, nRst, $05, nC5, $04, nRst, $01, nBb4, $03, nA4, $04
	dc.b	nRst, $01, nBb4, $03, nA4, $04, nRst, $01, nF4, $03, nRst, $08
	dc.b	nG4, $04, nRst, $01, nA4, $03, nRst, $05, nBb4, $03, nA4, $08
	dc.b	nG4, $03, nRst, $05, nA4, $08, nBb4, $03, nRst, $05, nB4, $04
	dc.b	nRst, $01, nC5, $03, nRst, $08, nC4, $04, nRst, $01, nC4, $03
	dc.b	nRst, $05, nF4, $03, nG4, $08
	smpsReturn

csz3z80_Call15:
	dc.b	nA4, $0C, nRst, $01, nC5, $08, nRst, $13, nC4, $04, nRst, $01
	dc.b	nC4, $03, nRst, $05, nF4, $03, nG4, $08, nA4, $0C, nRst, $01
	dc.b	nD5, $08, nRst, $13, nC5, $04, nRst, $01, nBb4, $03, nRst, $05
	dc.b	nC5, $03, nA4, $08
	smpsReturn

csz3z80_Call16:
	dc.b	nBb4, $0C, nRst, $01, nG4, $08, nRst, $13, nC5, $04, nRst, $01
	dc.b	nBb4, $03, nRst, $05, nC5, $03, nA4, $08, nBb4, $0C, nRst, $01
	dc.b	nG4, $07, nRst, $14, nC4, $04, nRst, $01, nC4, $03, nRst, $05
	dc.b	nF4, $03, nG4, $08
	smpsReturn

csz3z80_Call17:
	dc.b	nBb4, $0C, nRst, $01, nG4, $1B, nD5, $04, nRst, $01, nC5, $03
	dc.b	nRst, $05, nBb4, $03, nA4, $08, nBb4, $10, nG4, nC5, $03, nRst
	dc.b	$05, nBb4, $08, nA4, $03, nRst, $05, nG4, $08
	smpsReturn

csz3z80_Call18:
	dc.b	nA4, $0C, nRst, $01, nD5, $0B, nC5, $0C, nRst, $01, nA4, $0B
	dc.b	nBb4, $03, nRst, $05, nC5, $08, nBb4, $10, nG4, nA4, $03, nRst
	dc.b	$05, nF4, $08, nC4, $03, nRst, $02, nF4, $03, nG4, $08
	smpsReturn

csz3z80_Call19:
	dc.b	nC4, $03, nRst, $05, nC5, $04, nRst, $01, nBb4, $03, nA4, $04
	dc.b	nRst, $01, nBb4, $03, nA4, $04, nRst, $01, nF4, $03, nRst, $08
	dc.b	nG4, $04, nRst, $01, nA4, $03, nRst, $05, nBb4, $03, nA4, $08
	dc.b	nG4, $03, nRst, $05, nA4, $08, nBb4, $03, nRst, $05, nB4, $04
	dc.b	nRst, $01, nC5, $03, nRst, $08, nC4, $04, nRst, $01, nC4, $03
	dc.b	nRst, $05, nF4, $03, nG4, $08
	smpsReturn

csz3z80_Call0D:
	smpsSetvoice        $02
	dc.b	nA3, $03, nRst, $05, nA4, $04, nRst, $01, nG4, $03, nF4, $04
	dc.b	nRst, $01, nG4, $03, nF4, $04, nRst, $01, nC4, $03, nRst, $08
	dc.b	nE4, $04, nRst, $01, nF4, $03, nRst, $05, nD4, $03, nF4, $08
	dc.b	nD4, $03, nRst, $05, nF4, $08, nD4, $03, nRst, $05, nF4, $04
	dc.b	nRst, $01, nE4, $03, nRst, $08, nG3, $04, nRst, $01, nA3, $03
	dc.b	nRst, $05, nC4, $03, nE4, $08
	smpsReturn

csz3z80_Call0E:
	dc.b	nF4, $0C, nRst, $01, nA4, $08, nRst, $13, nG3, $04, nRst, $01
	dc.b	nA3, $03, nRst, $05, nC4, $03, nE4, $08, nF4, $0C, nRst, $01
	dc.b	nA4, $08, nRst, $13, nA4, $04, nRst, $01, nF4, $03, nRst, $05
	dc.b	nA4, $03, nD4, $08
	smpsReturn

csz3z80_Call0F:
	dc.b	nG4, $0C, nRst, $01, nD4, $1B, nA4, $04, nRst, $01, nG4, $03
	dc.b	nRst, $05, nA4, $03, nF4, $08, nG4, $0C, nRst, $01, nC4, $07
	dc.b	nRst, $14, nG3, $04, nRst, $01, nA3, $03, nRst, $05, nC4, $03
	dc.b	nE4, $08
	smpsReturn

csz3z80_Call10:
	dc.b	nF4, $0C, nRst, $01, nA4, $1B, nG3, $04, nRst, $01, nA3, $03
	dc.b	nRst, $05, nD4, $03, nE4, $08, nF4, $0C, nRst, $01, nA4, $08
	dc.b	nRst, $13, nA4, $04, nRst, $01, nF4, $03, nRst, $05, nA4, $03
	dc.b	nD4, $08
	smpsReturn

csz3z80_Call11:
	dc.b	nG4, $0C, nRst, $01, nD4, $1B, nBb4, $04, nRst, $01, nA4, $03
	dc.b	nRst, $05, nG4, $03, nF4, $08, nE4, $10, nC4, nA4, $03, nRst
	dc.b	$05, nG4, $08, nF4, $03, nRst, $05, nC4, $08
	smpsReturn

csz3z80_Call12:
	dc.b	nD4, $0C, nRst, $01, nA4, $0B, nF4, $0C, nRst, $01, nD4, $0B
	dc.b	nG4, $03, nRst, $05, nF4, $08, nG4, $10, nE4, nF4, $03, nRst
	dc.b	$05, nC4, $08, nA3, $03, nRst, $02, nC4, $03, nE4, $08
	smpsReturn

csz3z80_Call13:
	dc.b	nA3, $03, nRst, $05, nA4, $04, nRst, $01, nG4, $03, nF4, $04
	dc.b	nRst, $01, nG4, $03, nF4, $04, nRst, $01, nC4, $03, nRst, $08
	dc.b	nE4, $04, nRst, $01, nF4, $03, nRst, $05, nD4, $03, nF4, $08
	dc.b	nD4, $03, nRst, $05, nF4, $08, nD4, $03, nRst, $05, nF4, $04
	dc.b	nRst, $01, nE4, $03, nRst, $08, nG3, $04, nRst, $01, nA3, $03
	dc.b	nRst, $05, nC4, $03, nE4, $08
	smpsReturn

csz3z80_Call06:
	dc.b	smpsNoAttack, $04
	smpsSetvoice        $02
	dc.b	nC4, $03, nRst, $05, nC5, nRst, $01, nBb4, $02, nA4, $05, nRst
	dc.b	$01, nBb4, $02, nA4, $01, nRst, $05, nF4, $02, nRst, $08, nG4
	dc.b	$05, nRst, $01, nA4, $02, nRst, $06, nBb4, $02, nA4, $04, nRst
	dc.b	nG4, $03, nRst, $05, nA4, $08, nBb4, $03, nRst, $05, nB4, nRst
	dc.b	$01, nC5, $02, nRst, $08, nC4, $05, nRst, $01, nC4, $02, nRst
	dc.b	$06, nF4, $02, nG4, $04
	smpsReturn

csz3z80_Call07:
	dc.b	smpsNoAttack, $04, nA4, $0D, nRst, $01, nC5, $0B, nRst, $0F, nC4, $05
	dc.b	nRst, $01, nC4, $02, nRst, $06, nF4, $02, nG4, $04, nRst, nA4
	dc.b	$0D, nRst, $01, nD5, $0B, nRst, $0F, nC5, $05, nRst, $01, nBb4
	dc.b	$02, nRst, $06, nC5, $02, nA4, $04
	smpsReturn

csz3z80_Call08:
	dc.b	nRst, $04, nBb4, $0D, nRst, $01, nG4, $0B, nRst, $0F, nC5, $05
	dc.b	nRst, $01, nBb4, $02, nRst, $06, nC5, $02, nA4, $04, nRst, nBb4
	dc.b	$0D, nRst, $01, nG4, $0B, nRst, $0F, nC4, $05, nRst, $01, nC4
	dc.b	$02, nRst, $06, nF4, $02, nG4, $04
	smpsReturn

csz3z80_Call09:
	dc.b	nRst, $04, nA4, $0D, nRst, $01, nC5, $0B, nRst, $0F, nC4, $05
	dc.b	nRst, $01, nC4, $02, nRst, $06, nF4, $02, nG4, $04, nRst, nA4
	dc.b	$0D, nRst, $01, nD5, $0B, nRst, $0F, nC5, $05, nRst, $01, nBb4
	dc.b	$02, nRst, $06, nC5, $02, nA4, $04
	smpsReturn

csz3z80_Call0A:
	dc.b	nRst, $04, nBb4, $0D, nRst, $01, nG4, $1A, nD5, $05, nRst, $01
	dc.b	nC5, $02, nRst, $06, nBb4, $02, nA4, $08, nBb4, $10, nG4, nC5
	dc.b	$03, nRst, $05, nBb4, $08, nA4, $03, nRst, $05, nG4, $04
	smpsReturn

csz3z80_Call0B:
	dc.b	smpsNoAttack, $04, nA4, $0D, nRst, $01, nD5, $0A, nC5, $0D, nRst, $01
	dc.b	nA4, $0A, nBb4, $03, nRst, $05, nC5, $08, nBb4, $10, nG4, nA4
	dc.b	$03, nRst, $05, nF4, $08, nC4, $03, nRst, nF4, $02, nG4, $04
	smpsReturn

csz3z80_Call0C:
	dc.b	nRst, $04, nC4, $03, nRst, $05, nC5, nRst, $01, nBb4, $02, nA4
	dc.b	$05, nRst, $01, nBb4, $02, nA4, $01, nRst, $05, nF4, $02, nRst
	dc.b	$08, nG4, $05, nRst, $01, nA4, $02, nRst, $06, nBb4, $02, nA4
	dc.b	$04, nRst, nG4, $03, nRst, $05, nA4, $08, nBb4, $03, nRst, $05
	dc.b	nB4, nRst, $01, nC5, $02, nRst, $08, nC4, $05, nRst, $01, nC4
	dc.b	$02, nRst, $06, nF4, $02, nG4, $04
	smpsReturn

csz3z80_Call20:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $07, nCs0, $02, nRst, $01
	dc.b	nCs0, nRst, $04, nCs0, $02, nRst, $06, nCs0, $01, nRst, $02, nCs0
	dc.b	$01, nRst, $04, nCs0, $01, nRst, $07, nCs0, $01, nRst, $02, nCs0
	dc.b	$01, nRst, nCs0, $02, nRst, $01, nCs0, $02, nRst, $01, nCs0, nRst
	dc.b	$07, nCs0, $01, nRst, $04, nCs0, $02, nRst, $01, nCs0, nRst, $07
	dc.b	nCs0, $01, nRst, $04, nCs0, $02, nRst, $01, nCs0, nRst, $04, nCs0
	dc.b	$01, nRst, $0A, nCs0, $01, nRst, $07, nCs0, $01, nRst, $02, nCs0
	dc.b	$01, nRst, nCs0, $02, nRst, $01, nCs0, nRst, $07
	smpsReturn

csz3z80_Call21:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $04, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, $02, nCs0, $01, nRst, nCs0, nRst, $02, nCs0, $01
	dc.b	nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02, nCs0, $01
	dc.b	nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01
	dc.b	nRst, $02, nCs0, $01, nRst, nCs0, nRst, $02, nCs0, $01, nRst, $04
	dc.b	nCs0, $01, nRst, $02, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, nCs0, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01
	dc.b	nRst, $02, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01
	dc.b	nRst, $02, nCs0, $01, nRst, $04, nCs0, $01, nRst, $02, nCs0, $01
	dc.b	nRst, $02, nCs0, $01, nRst
	smpsReturn

csz3z80_Call22:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $04, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, $02, nCs0, $01, nRst, nCs0, nRst, $02, nCs0, $01
	dc.b	nRst, $04, nCs0, $02, nRst, $01, nCs0, nRst, $02, nCs0, $01, nRst
	dc.b	$04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01, nRst
	dc.b	$02, nCs0, $01, nRst, nCs0, $02, nRst, $01, nCs0, nRst, $04, nCs0
	dc.b	$01, nRst, $02, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04, nCs0
	dc.b	$01, nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02, nCs0
	dc.b	$01, nRst, nCs0, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01, nRst
	dc.b	$02, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01, nRst
	dc.b	$04, nCs0, $01, nRst, $0A
	smpsReturn

csz3z80_Call23:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $04, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, $02, nCs0, $01, nRst, nCs0, nRst, $02, nCs0, $01
	dc.b	nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02, nCs0, $01
	dc.b	nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01
	dc.b	nRst, $02, nCs0, $01, nRst, nCs0, nRst, $02, nCs0, $01, nRst, $04
	dc.b	nCs0, $01, nRst, $02, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, nCs0, $02, nRst, $01, nCs0, nRst, $04, nCs0, $01
	dc.b	nRst, $02, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01
	dc.b	nRst, $02, nCs0, $01, nRst, $04, nCs0, $01, nRst, $02, nCs0, $01
	dc.b	nRst, nCs0, nRst, $02
	smpsReturn

csz3z80_Call24:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $04, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, $02, nCs0, $01, nRst, nCs0, nRst, $02, nCs0, $01
	dc.b	nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02, nCs0, $01
	dc.b	nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01
	dc.b	nRst, $02, nCs0, $01, nRst, nCs0, nRst, $02, nCs0, $01, nRst, $04
	dc.b	nCs0, $01, nRst, $02, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04
	dc.b	nCs0, $01, nRst, $04, nCs0, $01, nRst, $02, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, nCs0, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01
	dc.b	nRst, $02, nCs0, $01, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01
	dc.b	nRst, $04, nCs0, $01, nRst, $0A
	smpsReturn

csz3z80_Call25:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $01, nRst, $05, nCs0, $01, nRst, $06, nCs0, $01, nRst, $07
	dc.b	nCs0, $01, nRst, $07, nCs0, $01, nRst, $07, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, $0A, nCs0, $01, nRst, $04, nCs0, $01, nRst, $04
	dc.b	nCs0, $01, nRst, $02, nCs0, $01, nRst, $04, nCs0, $01, nRst, $02
	dc.b	nCs0, $01, nRst, $02, nCs0, $01, nRst, $07, nCs0, $01, nRst, $04
	dc.b	nCs0, $01, nRst, $05, nCs0, $01, nRst, nCs0, nRst, $05, nCs0, $01
	dc.b	nRst, nCs0, nRst, $05, nCs0, $01, nRst, nCs0, nRst, $02, nCs0, $01
	dc.b	nRst, $07, nCs0, $01, nRst, $02, nCs0, $01, nRst
	smpsReturn

csz3z80_Call00:
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $0C, dKick, $02, nRst, $01
	dc.b	dSnare, nRst, $07, dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick
	dc.b	$01, nRst, $07, dKick, $02, nRst, $01, dSnare, nRst, $07, dKick, $01
	dc.b	nRst, $07, dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dSnare, $01
	dc.b	nRst, $02, dSnare, $01, nRst, $04, dKick, $01, nRst, $0A, dKick, $01
	dc.b	nRst, $0C, dSnare, $02, nRst, $01, dSnare, nRst, $07
	smpsReturn

csz3z80_Call01:
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick, $02, nRst, $01
	dc.b	dKick, nRst, $07, dSnare, $01, nRst, $04, dKick, $01, nRst, $07, dKick
	dc.b	$01, nRst, $02, dSnare, $01, nRst, $07, dKick, $01, nRst, $07, dSnare
	dc.b	$01, nRst, $07, dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick
	dc.b	$01, nRst, $02, dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick
	dc.b	$01, nRst, $07, dKick, $01, nRst, $02, dSnare, $01, nRst, $07, dKick
	dc.b	$01, nRst, $07, dSnare, $01, nRst, $07
	smpsReturn

csz3z80_Call02:
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick, $01, nRst, $02
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick, $01, nRst, $07
	dc.b	dKick, $01, nRst, $02, dSnare, $01, nRst, $07, dKick, $01, nRst, $07
	dc.b	dSnare, $01, nRst, $07, dKick, $01, nRst, $07, dSnare, $01, nRst, $04
	dc.b	dKick, $01, nRst, $02, dKick, $01, nRst, $07, dSnare, $01, nRst, $04
	dc.b	dKick, $01, nRst, $07, dKick, $01, nRst, $02, dSnare, $01, nRst, $07
	dc.b	dKick, $01, nRst, $02, dSnare, $01, nRst, $04, dSnare, $01, nRst, $02
	dc.b	dSnare, $01, nRst, $02, dSnare, $01, nRst
	smpsReturn

csz3z80_Call03:
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick, $01, nRst, $02
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick, $01, nRst, $07
	dc.b	dKick, $01, nRst, $02, dSnare, $01, nRst, $07, dKick, $01, nRst, $07
	dc.b	dSnare, $01, nRst, $07, dKick, $01, nRst, $07, dSnare, $01, nRst, $04
	dc.b	dKick, $01, nRst, $02, dKick, $01, nRst, $07, dSnare, $01, nRst, $04
	dc.b	dKick, $01, nRst, $07, dKick, $01, nRst, $02, dSnare, $01, nRst, $07
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $07
	smpsReturn

csz3z80_Call04:
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick, $01, nRst, $02
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick, $01, nRst, $07
	dc.b	dKick, $01, nRst, $02, dSnare, $01, nRst, $07, dKick, $01, nRst, $07
	dc.b	dSnare, $01, nRst, $07, dKick, $01, nRst, $07, dSnare, $01, nRst, $04
	dc.b	dKick, $01, nRst, $02, dKick, $01, nRst, $07, dSnare, $01, nRst, $04
	dc.b	dKick, $01, nRst, $02, dSnare, $01, nRst, $04, dKick, $01, nRst, $02
	dc.b	dSnare, $01, nRst, $04, dSnare, $01, nRst, $02, dKick, $01, nRst, $02
	dc.b	dSnare, $01, nRst, dSnare, nRst, $02, dSnare, $01, nRst, dSnare, nRst, $02
	dc.b	dSnare, $01, nRst, $02
	smpsReturn

csz3z80_Call05:
	dc.b	dKick, $01, nRst, $07, dSnare, $01, nRst, $04, dKick, $01, nRst, $07
	dc.b	dKick, $01, nRst, $02, dSnare, $01, nRst, $04, dKick, $01, nRst, $07
	dc.b	dKick, $01, nRst, $02, dSnare, $01, nRst, $07, dKick, $01, nRst, $04
	dc.b	dKick, $01, nRst, $02, dSnare, $01, nRst, $07, dKick, $01, nRst, $04
	dc.b	dKick, $01, nRst, $02, dSnare, $01, nRst, $04, dSnare, $01, nRst, $02
	dc.b	dKick, $01, nRst, $02, dSnare, $01, nRst, dSnare, nRst, $02, dSnare, $01
	dc.b	nRst, $02, dSnare, $01, nRst, $02, dSnare, $01, nRst, dKick, nRst, $07
	dc.b	dKick, $01, nRst, $0C, dSnare, $01, nRst, $02, dSnare, $01, nRst, $07
	smpsReturn

csz3z80_Voices:
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

