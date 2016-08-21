SSR_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SSR_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $04

	smpsHeaderDAC       SSR_DAC
	smpsHeaderFM        SSR_FM1,	$00, $0C
	smpsHeaderFM        SSR_FM2,	$00, $08
	smpsHeaderFM        SSR_FM3,	$00, $12
	smpsHeaderFM        SSR_FM4,	$00, $1A
	smpsHeaderFM        SSR_FM5,	$00, $26
	smpsHeaderPSG       SSR_PSG1,	$00, $04, $00, $00
	smpsHeaderPSG       SSR_PSG2,	$00, $0B, $00, $00
	smpsHeaderPSG       SSR_PSG3,	$00, $02, $00, $00

; DAC Data
SSR_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $20, dKick

SSR_Loop00:
	dc.b	dKick, $08, $18, $20
	smpsLoop            $00, $07, SSR_Loop00
	dc.b	$08, $18, $10, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $0C, dKick
	dc.b	$04, $10, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $08, dKick, dKick
	dc.b	$10, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $0C, dKick, $04, $10
	dc.b	dSnare, dKick, dSnare, dKick, dSnare, dKick, $08, $08, dSnare, dKick, dKick, $10
	dc.b	dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $0C, dKick, $04, $10, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dSnare, $08, dKick, dKick, $10, dSnare, dKick
	dc.b	dSnare, dKick, dSnare, dKick, $08, $08, dSnare, $0C, dKick, $04, $10, dSnare
	dc.b	dKick, dSnare, dKick, $08, dSnare, dSnare, $0C, $04, $08, $08, $04, $04
	dc.b	$04, $04

SSR_Jump00:
	dc.b	dKick, $10, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $0C, dKick, $04
	dc.b	$10, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $08, dKick, dKick, $10
	dc.b	dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $0C, dKick, $04, $10, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, $0C, $04, dKick, $10, dSnare, $04, dHiTimpani, dMidTimpani
	dc.b	dVLowTimpani, dKick, $10, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $0C, dKick
	dc.b	$04, $10, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $08, dKick, dKick
	dc.b	$10, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $0C, dKick, $04, $10
	dc.b	dSnare, dKick, dSnare, dKick, dSnare, $0C, $04, dKick, $10, dSnare

SSR_Loop03:
	dc.b	$08

SSR_Loop01:
	dc.b	dKick, dKick, $10
	smpsLoop            $00, $04, SSR_Loop01
	dc.b	$0C, $04

SSR_Loop02:
	dc.b	$10
	smpsLoop            $00, $07, SSR_Loop02
	smpsLoop            $01, $03, SSR_Loop03
	dc.b	$08, $08

SSR_Loop04:
	dc.b	$10
	smpsLoop            $00, $07, SSR_Loop04
	dc.b	$0C, $04, $10, $10, $10, $08, $08, $08, dSnare, dSnare, $0C, $04
	dc.b	$08, $08, $04, $04, $04, $04, dKick, $10, dSnare, dKick, dSnare, dKick
	dc.b	dSnare, dKick, dSnare, $0C, dKick, $04, $10, dSnare, dKick, dSnare, dKick, dSnare
	dc.b	dKick, dSnare, $08, dKick, dKick, $10, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b	dSnare, $0C, dKick, $04, $10, dSnare, dKick, dSnare, dKick, dSnare, $0C, $04
	dc.b	dKick, $10, dSnare, $04, dHiTimpani, dMidTimpani, dVLowTimpani, dKick, $10, dSnare, dKick, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, $0C, dKick, $04, $10, dSnare, dKick, dSnare, dKick
	dc.b	dSnare, dKick, dSnare, $08, dKick, dKick, $10, dSnare, dKick, dSnare, dKick, dSnare
	dc.b	dKick, dSnare, $0C, dKick, $04, $10, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b	$0C, $04, dSnare, $08, dVLowTimpani

SSR_Loop05:
	dc.b	dKick, $60, $18, $08
	smpsLoop            $00, $03, SSR_Loop05
	dc.b	$60, $08, $10, $08, $7F, nRst, $71, dKick, $08, $08, $78, $08
	dc.b	$68, $10, $08, $10, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $0C
	dc.b	dKick, $04, $10, dSnare, dKick, dSnare, dKick, dSnare, dKick, $08, $08, dSnare
	dc.b	dKick, dKick, $10, dSnare, dKick, dSnare, dKick, dSnare, dKick, $08, $08, dSnare
	dc.b	$0C, dKick, $04, $10, dSnare, dKick, dSnare, dKick, $08, dSnare, dSnare, $0C
	dc.b	$04, dHiTimpani, dMidTimpani, dLowTimpani, dVLowTimpani, dSnare, dVLowTimpani, dSnare, dSnare
	smpsJump            SSR_Jump00

; FM1 Data
SSR_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $20, nBb1, $08

SSR_Loop4F:
	dc.b	smpsNoAttack, nEb2, $01, smpsNoAttack, nF2, $07, smpsNoAttack, nAb2, $01, smpsNoAttack, nBb2, $07
	dc.b	smpsNoAttack, nEb2, $01, smpsNoAttack, nBb1, $07, smpsNoAttack, nEb2, $01, smpsNoAttack, nF2, $07
	dc.b	smpsNoAttack, nCs2, $01, smpsNoAttack, nBb1, $07, smpsNoAttack, nEb2, $01, smpsNoAttack, nF2, $07
	dc.b	smpsNoAttack, nEb2, $08, smpsNoAttack, nC2, $01, smpsNoAttack, nBb1, $07
	smpsLoop            $00, $07, SSR_Loop4F
	dc.b	smpsNoAttack, nEb2, $01, smpsNoAttack, nF2, $07, smpsNoAttack, nAb2, $01, smpsNoAttack, nBb2, $07
	dc.b	smpsNoAttack, nEb2, $01, smpsNoAttack, nBb1, $07, smpsNoAttack, nEb2, $01, smpsNoAttack, nF2, $07
	dc.b	smpsNoAttack, nCs2, $01, smpsNoAttack, nBb1, $07, smpsNoAttack, nEb2, $01, smpsNoAttack, nF2, $07
	dc.b	smpsNoAttack, nEb2, $08
	smpsSetvoice        $05

SSR_Loop50:
	dc.b	nBb2, nBb3
	smpsLoop            $00, $3C, SSR_Loop50
	dc.b	nBb2, $40

SSR_Loop53:
	dc.b	nAb2, $08, nAb3, nAb2, nAb3, nG2, nG3, nG2, nG3

SSR_Loop51:
	dc.b	nF2, nF3
	smpsLoop            $00, $04, SSR_Loop51
	dc.b	nAb2, nAb3, nAb2, nAb3, nG2, nG3, nG2, nG3

SSR_Loop52:
	dc.b	nC3, nC4
	smpsLoop            $00, $04, SSR_Loop52
	smpsLoop            $01, $04, SSR_Loop53

SSR_Loop54:
	dc.b	nC2, nC3
	smpsLoop            $00, $3C, SSR_Loop54
	dc.b	nC2, nRst, $38

SSR_Loop57:
	dc.b	nAb2, $08, nAb3, nAb2, nAb3, nG2, nG3, nG2, nG3

SSR_Loop55:
	dc.b	nF2, nF3
	smpsLoop            $00, $04, SSR_Loop55
	dc.b	nAb2, nAb3, nAb2, nAb3, nG2, nG3, nG2, nG3

SSR_Loop56:
	dc.b	nC3, nC4
	smpsLoop            $00, $04, SSR_Loop56
	smpsLoop            $01, $04, SSR_Loop57
	smpsAlterVol        $04
	dc.b	nF2, $38
	smpsAlterVol        $FF
	dc.b	nG2, $48
	smpsAlterVol        $01
	dc.b	nAb2, $38, $48, nA2, $38, nAb2, $48, nA2, $38, $40, nRst, $08
	smpsAlterVol        $FC

SSR_Loop58:
	dc.b	nA2, $20, nAb2, $18, nFs2, $38, nAb2, $10, nA2, $20, nAb2, $18
	dc.b	nCs3, $48
	smpsLoop            $00, $03, SSR_Loop58
	dc.b	nA2, $20, nAb2, $18, nFs2, $38, nAb2, $10, nA2, $20, nAb2, $18
	dc.b	nCs3, $28, nRst, $08, nCs4, nC3, nC4
	smpsJump            SSR_Loop53

; FM2 Data
SSR_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsAlterVol        $06
	dc.b	nAb3, $02, nBb3, nCs4, nEb4, nF4, nAb4, nBb4, nCs5, nEb5, nF5, nAb5
	dc.b	nBb5, nCs6, nEb6, nF6, nAb6, nBb6, $08, nRst
	smpsSetvoice        $02

SSR_Loop43:
	dc.b	nG1, $20
	smpsLoop            $00, $0D, SSR_Loop43
	dc.b	$0C
	smpsAlterVol        $09
	dc.b	$04
	smpsSetvoice        $04
	smpsAlterVol        $FF
	dc.b	$04, $04, $04, $04
	smpsAlterVol        $FD
	dc.b	$04, $04, $04, $04
	smpsAlterVol        $FE
	dc.b	$04, $04, $04, $04
	smpsAlterVol        $FD
	dc.b	$04, $04, $04, $04
	smpsPan             panRight, $00
	smpsSetvoice        $06
	smpsAlterVol        $01

SSR_Loop44:
	dc.b	nF5, $02, nRst, nF5, nRst, nF5, $08
	smpsLoop            $00, $08, SSR_Loop44

SSR_Loop45:
	dc.b	nEb5, $02, nRst, nEb5, nRst, nEb5, $08
	smpsLoop            $00, $04, SSR_Loop45

SSR_Loop46:
	dc.b	nCs5, $02, nRst, nCs5, nRst, nCs5, $08
	smpsLoop            $00, $04, SSR_Loop46

SSR_Loop47:
	dc.b	nF5, $02, nRst, nF5, nRst, nF5, $08
	smpsLoop            $00, $08, SSR_Loop47

SSR_Loop48:
	dc.b	nFs5, $02, nRst, nFs5, nRst, nFs5, $08
	smpsLoop            $00, $04, SSR_Loop48

SSR_Loop49:
	dc.b	nAb5, $02, nRst, nAb5, nRst, nAb5, $08
	smpsLoop            $00, $04, SSR_Loop49
	smpsLoop            $01, $02, SSR_Loop44

SSR_Jump04:
	smpsSetvoice        $07
	smpsPan             panCenter, $00
	smpsAlterVol        $FF

SSR_Loop4A:
	dc.b	nC4, $20, nD4, $18, nE4, $28, nC4, $10, nD4, nEb4, $20, nF4
	dc.b	$18, nE4, $48
	smpsLoop            $00, $04, SSR_Loop4A
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsAlterVol        $06

SSR_Loop4B:
	dc.b	nC4, $08, nG4, nC5, nC4, nG4, nC4, nG4, nF4
	smpsLoop            $00, $0F, SSR_Loop4B
	dc.b	nC4, nRst, $38
	smpsSetvoice        $07
	smpsPan             panCenter, $00
	smpsAlterVol        $FA

SSR_Loop4C:
	dc.b	nC4, $20, nD4, $18, nE4, $28, nC4, $10, nD4, nEb4, $20, nF4
	dc.b	$18, nE4, $48
	smpsLoop            $00, $04, SSR_Loop4C
	dc.b	nRst, $20
	smpsSetvoice        $0A
	smpsModSet          $24, $01, $03, $05
	dc.b	nEb5, $10, nC5, $08, nF5, $48, nRst, $10, nC5, nEb5, nF5, nG5
	dc.b	nAb5, nG5, nF5, $1C, nRst, $14, nE5, $10, nCs5, $08, nFs5, $48
	dc.b	nRst, $10, nCs5, nE5, nFs5, nAb5, nA5, nAb5, nFs5
	smpsModSet          $34, $01, $03, $05
	dc.b	$02, smpsNoAttack, nG5, smpsNoAttack, nAb5, $7C
	smpsAlterVol        $FB

SSR_Loop4D:
	dc.b	smpsNoAttack, $08
	smpsAlterVol        $01
	smpsLoop            $00, $0D, SSR_Loop4D
	dc.b	smpsNoAttack, $08
	smpsModOff

SSR_Loop4E:
	dc.b	nRst, $70
	smpsLoop            $00, $07, SSR_Loop4E
	smpsAlterVol        $F9
	smpsJump            SSR_Jump04

; FM3 Data
SSR_FM3:
	smpsPan             panRight, $00
	smpsSetvoice        $01
	dc.b	nRst, $10, nAb3, $02, nBb3, nCs4, nEb4, nF4, nAb4, nBb4, nCs5, nEb5
	dc.b	nF5, nAb5, nBb5, nCs6, nEb6, nF6, nAb6, nBb6, $08, nRst
	smpsAlterVol        $18
	dc.b	nAb3, $02, nBb3, nCs4, nEb4, nF4, nAb4, nBb4, nCs5, nEb5, nF5, nAb5
	dc.b	nBb5, nCs6, nEb6, nF6, nAb6, nBb6, $08, nRst, $7F, $7F, $7F, $3B
	smpsSetvoice        $06
	smpsPan             panLeft, $00
	smpsAlterVol        $E3

SSR_Loop3A:
	dc.b	nBb3, $02, nRst, nBb3, nRst, nBb3, $08
	smpsLoop            $00, $08, SSR_Loop3A

SSR_Loop3B:
	dc.b	nAb3, $02, nRst, nAb3, nRst, nAb3, $08
	smpsLoop            $00, $04, SSR_Loop3B

SSR_Loop3C:
	dc.b	nFs3, $02, nRst, nFs3, nRst, nFs3, $08
	smpsLoop            $00, $04, SSR_Loop3C

SSR_Loop3D:
	dc.b	nBb3, $02, nRst, nBb3, nRst, nBb3, $08
	smpsLoop            $00, $0C, SSR_Loop3D

SSR_Loop3E:
	dc.b	nC4, $02, nRst, nC4, nRst, nC4, $08
	smpsLoop            $00, $04, SSR_Loop3E
	smpsLoop            $01, $02, SSR_Loop3A
	smpsSetvoice        $08
	smpsPan             panLeft, $00

SSR_Jump03:
	smpsAlterVol        $FD

SSR_Loop3F:
	dc.b	nG4, $10, $10, nF4, nF4, $08, nE4, $10, $18, $10, $10, nG4
	dc.b	nG4, nF4, nF4, $08, nG4, $38, $10
	smpsLoop            $00, $04, SSR_Loop3F

SSR_Loop40:
	dc.b	nRst, $40
	smpsLoop            $00, $10, SSR_Loop40
	smpsSetvoice        $08
	smpsPan             panLeft, $00

SSR_Loop41:
	dc.b	nG4, $10, $10, nF4, nF4, $08, nE4, $10, $18, $10, $10, nG4
	dc.b	nG4, nF4, nF4, $08, nG4, $38, $10
	smpsLoop            $00, $04, SSR_Loop41
	dc.b	nEb4, $38, nF4, $48, nG4, $38, $48, nAb4, $38, nFs4, $48, nAb4
	dc.b	$38, $48

SSR_Loop42:
	dc.b	$10, $10, nFs4, nFs4, $08, nF4, $10, $18, $10, $10, nAb4, nAb4
	dc.b	nFs4, nFs4, $08, nAb4, $38, $10
	smpsLoop            $00, $03, SSR_Loop42
	dc.b	$10, $10, nFs4, nFs4, $08, nF4, $10, $18, $10, $10, nAb4, nAb4
	dc.b	nFs4, nFs4, $08, nAb4, $38, nG4, $10
	smpsAlterVol        $03
	smpsJump            SSR_Jump03

; FM4 Data
SSR_FM4:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nRst, $20, nAb3, $02, nBb3, nCs4, nEb4, nF4, nAb4, nBb4, nCs5, nEb5
	dc.b	nF5, nAb5, nBb5, nCs6, nEb6, nF6, nAb6, nBb6, $08, nRst
	smpsAlterVol        $18
	dc.b	nAb3, $02, nBb3, nCs4, nEb4, nF4, nAb4, nBb4, nCs5, nEb5, nF5, nAb5
	dc.b	nBb5, nCs6, nEb6, nF6, nAb6, nBb6, $08, nRst, $7F, $29
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsAlterVol        $D8

SSR_Loop21:
	dc.b	nF4, $08
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	smpsLoop            $00, $02, SSR_Loop21
	dc.b	nEb4
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nCs4, $08
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nBb3
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nCs4
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nBb3, $04, nRst, nEb4, $08

SSR_Loop22:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nF4
	smpsLoop            $00, $02, SSR_Loop22
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nEb4
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nCs4, $08
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nBb3
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nCs4
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nBb3, $04, nRst, nEb4, $08
	smpsAlterVol        $10
	dc.b	$08, nRst

SSR_Loop23:
	smpsAlterVol        $F0
	dc.b	nF4, $04, nRst, nF4, $08
	smpsAlterVol        $10
	dc.b	$08
	smpsLoop            $00, $02, SSR_Loop23
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop24:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nF4, $08
	smpsLoop            $00, $02, SSR_Loop24
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop25:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nEb4, $04, nRst, nEb4, $08
	smpsLoop            $00, $02, SSR_Loop25
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop26:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nCs4, $04, nRst, nCs4, $08
	smpsLoop            $00, $02, SSR_Loop26
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop27:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nF4, $04, nRst, nF4, $08
	smpsLoop            $00, $02, SSR_Loop27
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop28:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nF4, $08
	smpsLoop            $00, $02, SSR_Loop28
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop29:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nFs4, $04, nRst, nFs4, $08
	smpsLoop            $00, $02, SSR_Loop29
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop2A:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nAb4, $04, nRst, nAb4, $08
	smpsLoop            $00, $02, SSR_Loop2A
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop2B:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nF4, $04, nRst, nF4, $08
	smpsLoop            $00, $02, SSR_Loop2B
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop2C:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nF4, $08
	smpsLoop            $00, $02, SSR_Loop2C
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop2D:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nEb4, $04, nRst, nEb4, $08
	smpsLoop            $00, $02, SSR_Loop2D
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop2E:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nCs4, $04, nRst, nCs4, $08
	smpsLoop            $00, $02, SSR_Loop2E
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop2F:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nF4, $04, nRst, nF4, $08
	smpsLoop            $00, $02, SSR_Loop2F
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop30:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nF4, $08
	smpsLoop            $00, $02, SSR_Loop30
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop31:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nFs4, $04, nRst, nFs4, $08
	smpsLoop            $00, $02, SSR_Loop31
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop32:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nAb4, $04, nRst, nAb4, $08
	smpsLoop            $00, $02, SSR_Loop32
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08
	smpsSetvoice        $08

SSR_Jump02:
	smpsPan             panRight, $00

SSR_Loop33:
	dc.b	nEb4, $10, $10, nD4, nD4, $08, nC4, $10, $18, $10, nD4, nEb4
	dc.b	nEb4, nD4, nD4, $08, nE4, $38, $10
	smpsLoop            $00, $04, SSR_Loop33
	smpsSetvoice        $09
	smpsAlterVol        $06

SSR_Loop34:
	dc.b	nC4, $08, nG4, $04, nRst, nG4, $08, nC4, nBb4, nC4, nG4, nC4
	smpsLoop            $00, $02, SSR_Loop34
	dc.b	nC4, nF4, $04, nRst, nF4, $08, nC4, nBb4, nC4, nF4, nC4, nC4
	dc.b	nEb4, $04, nRst, nEb4, $08, nC4, nBb4, nC4, nEb4

SSR_Loop35:
	dc.b	nC4, nC4, nG4, $04, nRst, nG4, $08, nC4, nBb4, nC4, nG4
	smpsLoop            $00, $02, SSR_Loop35
	dc.b	nC4, nC4, nAb4, $04, nRst, nAb4, $08, nC4, nBb4, nC4, nAb4, nC4
	dc.b	nC4, nF4, $04, nRst, nF4, $08, nC4, nBb4, nC4, nF4

SSR_Loop36:
	dc.b	nC4, nC4, nG4, $04, nRst, nG4, $08, nC4, nBb4, nC4, nG4
	smpsLoop            $00, $02, SSR_Loop36
	dc.b	nC4, nC4, nF4, $04, nRst, nF4, $08, nC4, nBb4, nC4, nF4, nC4
	dc.b	nC4, nEb4, $04, nRst, nEb4, $08, nC4, nBb4, nC4, nEb4

SSR_Loop37:
	dc.b	nC4, nC4, nG4, $04, nRst, nG4, $08, nC4, nBb4, nC4, nG4
	smpsLoop            $00, $02, SSR_Loop37
	dc.b	nC4, nC4, nAb4, $04, nRst, nAb4, $08, nC4, nBb4, nC4, nAb4, nC4
	dc.b	nC4, nRst, $38
	smpsSetvoice        $08
	smpsPan             panRight, $00
	smpsAlterVol        $FA

SSR_Loop38:
	dc.b	nEb4, $10, $10, nD4, nD4, $08, nC4, $10, $18, $10, nD4, nEb4
	dc.b	nEb4, nD4, nD4, $08, nE4, $38, $10
	smpsLoop            $00, $04, SSR_Loop38
	dc.b	nAb3, $38, nBb3, $48, nC4, $38, $48, nCs4, $38, nB3, $48, nCs4
	dc.b	$38, $48

SSR_Loop39:
	dc.b	nE4, $10, $10, nEb4, nEb4, $08, nCs4, $10, $18, $10, nEb4, nE4
	dc.b	nE4, nEb4, nEb4, $08, nF4, $38, $10
	smpsLoop            $00, $03, SSR_Loop39
	dc.b	nE4, nE4, nEb4, nEb4, $08, nCs4, $10, $18, $10, nEb4, nE4, nE4
	dc.b	nEb4, nEb4, $08, nF4, $38, nE4, $10
	smpsJump            SSR_Jump02

; FM5 Data
SSR_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $30, nAb3, $02, nBb3, nCs4, nEb4, nF4, nAb4, nBb4, nCs5, nEb5
	dc.b	nF5, nAb5, nBb5, nCs6, nEb6, nF6, nAb6, nBb6, $08, nRst, $7F, $49
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsAlterVol        $E4

SSR_Loop06:
	dc.b	nBb3, $08
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	smpsLoop            $00, $03, SSR_Loop06
	dc.b	$04, nRst

SSR_Loop07:
	dc.b	nBb3, $08
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	smpsLoop            $00, $03, SSR_Loop07
	dc.b	$04, nRst

SSR_Loop08:
	dc.b	nBb3, $08
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	smpsLoop            $00, $04, SSR_Loop08
	dc.b	$04, nRst

SSR_Loop09:
	dc.b	nBb3, $08
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	smpsLoop            $00, $03, SSR_Loop09
	dc.b	$04, nRst, nBb3, $08
	smpsAlterVol        $10
	dc.b	$08, nRst

SSR_Loop0A:
	smpsAlterVol        $F0
	dc.b	nBb3, $04, nRst, nBb3, $08
	smpsAlterVol        $10
	dc.b	$08
	smpsLoop            $00, $02, SSR_Loop0A
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop0B:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop0B
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop0C:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop0C
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop0D:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop0D
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop0E:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop0E
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop0F:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop0F
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop10:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop10
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop11:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nC4, $04, nRst, nC4, $08
	smpsLoop            $00, $02, SSR_Loop11
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop12:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nBb3, $04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop12
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop13:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop13
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop14:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop14
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop15:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop15
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop16:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop16
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop17:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop17
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop18:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$04, nRst, nBb3, $08
	smpsLoop            $00, $02, SSR_Loop18
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	$08

SSR_Loop19:
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $F0
	dc.b	nC4, $04, nRst, nC4, $08
	smpsLoop            $00, $02, SSR_Loop19
	smpsAlterVol        $10
	dc.b	$08
	smpsAlterVol        $00
	dc.b	$08
	smpsSetvoice        $08
	smpsPan             panCenter, $00

SSR_Jump01:
	smpsAlterVol        $F4

SSR_Loop1A:
	dc.b	nC4, $10, $10, nBb3, nBb3, $08, nA3, $10, $18, $10, $10, nC4
	dc.b	nC4, nBb3, nBb3, $08, nC4, $38, $10
	smpsLoop            $00, $04, SSR_Loop1A
	smpsSetvoice        $09
	smpsAlterVol        $06

SSR_Loop1B:
	dc.b	nG3, $08, nC4, $04, nRst, nC4, $08, nG3, nEb4, nG3, nC4, nG3
	smpsLoop            $00, $03, SSR_Loop1B
	dc.b	nG3, nBb3, $04, nRst, nBb3, $08, nG3, nEb4, nG3, nBb3

SSR_Loop1C:
	dc.b	nG3, nG3, nC4, $04, nRst, nC4, $08, nG3, nEb4, nG3, nC4
	smpsLoop            $00, $03, SSR_Loop1C
	dc.b	nG3, nG3, nC4, $04, nRst, nC4, $08, nG3, nF4

SSR_Loop1D:
	dc.b	nG3, nC4, nG3, nG3, nC4, $04, nRst, nC4, $08, nG3, nEb4
	smpsLoop            $00, $03, SSR_Loop1D
	dc.b	nG3, nC4, nG3, nG3, nBb3, $04, nRst, nBb3, $08, nG3, nEb4, nG3
	dc.b	nBb3

SSR_Loop1E:
	dc.b	nG3, nG3, nC4, $04, nRst, nC4, $08, nG3, nEb4, nG3, nC4
	smpsLoop            $00, $03, SSR_Loop1E
	dc.b	nG3, nG3, nRst, $38
	smpsSetvoice        $08
	smpsPan             panCenter, $00
	smpsAlterVol        $FA

SSR_Loop1F:
	dc.b	nC4, $10, $10, nBb3, nBb3, $08, nA3, $10, $18, $10, $10, nC4
	dc.b	nC4, nBb3, nBb3, $08, nC4, $38, $10
	smpsLoop            $00, $04, SSR_Loop1F
	dc.b	$38, nD4, $48, nEb4, $38, $48, nE4, $38, nEb4, $48, nE4, $38
	dc.b	$48

SSR_Loop20:
	dc.b	nCs4, $10, $10, nB3, nB3, $08, nBb3, $10, $18, $10, $10, nCs4
	dc.b	nCs4, nB3, nB3, $08, nCs4, $38, $10
	smpsLoop            $00, $03, SSR_Loop20
	dc.b	$10, $10, nB3, nB3, $08, nBb3, $10, $18, $10, $10, nCs4, nCs4
	dc.b	nB3, nB3, $08, nCs4, $38, nC4, $10
	smpsAlterVol        $0C
	smpsJump            SSR_Jump01

; PSG1 Data
SSR_PSG1:
	smpsPSGvoice        fTone_05
	dc.b	nAb0, $02, nBb0, nCs1, nEb1, nF1, nAb1, nBb1, nCs2, nEb2, nF2, nAb2
	dc.b	nBb2, nCs3, nEb3, nF3, nAb3, nBb3, $08

SSR_Loop69:
	dc.b	nRst, $58
	smpsLoop            $00, $11, SSR_Loop69

SSR_Jump07:
	smpsPSGAlterVol     $FC
	dc.b	nC2, $08, nD2, $04, nRst, nEb2, $08, nF2, $04, nRst
	smpsModSet          $10, $01, $01, $05
	dc.b	nG2, $08, nRst, nG2, nRst, nF2, $10, $04, nRst, nE2, $08, nRst
	dc.b	nC2, $10, nRst, $08, nC2, nD2, $04, nRst, nEb2, $08, nF2, $04
	dc.b	nRst, nG2, $08, nRst, nG2, nRst, nF2, $0E, nRst, $02, nF2, $08
	dc.b	nG2, $20, nRst, $10, nC2, $04, nRst, nEb2, $08, nRst, nG2, nRst
	dc.b	nG2, nRst, nF2, $10, $04, nRst, nE2, $08, nRst, nC2, $18, nRst
	dc.b	$08, nEb2, nF2, nRst, nG2, nRst, $10, nG2, $04, nRst, nF2, nRst
	dc.b	nF2, $08, nRst, nG2, $28, nRst, $08, nC2, nEb2, nRst, nG2, nRst
	dc.b	nG2, nRst, nF2, nRst, nF2, nE2, nRst, nC2, $10, nRst, $08, nC2
	dc.b	nD2, nEb2, nF2, nG2, nRst, nG2, nRst, nF2, nRst, nF2, nG2, $20
	dc.b	nRst, $08, nC2, nD2, nEb2, nF2, $04, nRst, nG2, $08, nRst, nG2
	dc.b	nRst, nF2, $10, $04, nRst, nE2, $08, nRst, nC2, $18, nRst, $08
	dc.b	nEb2, nF2, nRst, nG2, nRst, $10, nG2, $08, nF2, $04, nRst, nF2
	dc.b	$08, nRst, nG2, $38, nRst, $28

SSR_Loop6A:
	dc.b	nB1, $02, smpsNoAttack, nC2, $0A, nRst, $04, nC2, nRst, nC2, nRst, nC2
	dc.b	nRst, $24, nC2, $08, $04, nRst, nC2, $08, $04, nRst, $24, nBb1
	dc.b	$08, nC2, $04, nRst, nC2, nRst, nC2, nRst, $5C
	smpsLoop            $00, $02, SSR_Loop6A
	dc.b	nFs2, $0C, nRst, $04, nF2

SSR_Loop6B:
	dc.b	nRst, nF2, $08, nEb2, $04, nRst, $24, nFs2, $08, nF2, $04
	smpsLoop            $00, $02, SSR_Loop6B
	dc.b	nRst, nF2, $08, nEb2, $04, nRst, $5C, nB1, $02, smpsNoAttack, nC2, $0A
	dc.b	nRst, $04, nC2, nRst, nC2, nRst, nC2, nRst, $44, nBb2, $08, $04
	dc.b	nRst, nBb2, $06, nA2, $01, nBb2, nC3, $20
	smpsPSGvoice        fTone_06
	dc.b	$01, smpsNoAttack, nBb2, smpsNoAttack, nG2, smpsNoAttack, nE2, smpsNoAttack, nC2, smpsNoAttack, nBb1, smpsNoAttack
	dc.b	nG1, smpsNoAttack, nE1
	smpsPSGvoice        fTone_05
	dc.b	nC1, $08, nRst, $18, nC2, $08, nD2, $04, nRst, nEb2, $08, nF2
	dc.b	$04, nRst, nG2, $08, nRst, nG2, nRst, nF2, $10, $04, nRst, nE2
	dc.b	$08, nRst, nC2, $10, nRst, $08, nC2, nD2, $04, nRst, nEb2, $08
	dc.b	nF2, $04, nRst, nG2, $08, nRst, nG2, nRst, nF2, $0E, nRst, $02
	dc.b	nF2, $08, nG2, $20, nRst, $10, nC2, $04, nRst, nEb2, $08, nRst
	dc.b	nG2, nRst, nG2, nRst, nF2, $10, $04, nRst, nE2, $08, nRst, nC2
	dc.b	$18, nRst, $08, nEb2, nF2, nRst, nG2, nRst, $10, nG2, $04, nRst
	dc.b	nF2, nRst, nF2, $08, nRst, nG2, $28, nRst, $08, nC2, nEb2, nRst
	dc.b	nG2, nRst, nG2, nRst, nF2, nRst, nF2, nE2, nRst, nC2, $10, nRst
	dc.b	$08, nC2, nD2, nEb2, nF2, nG2, nRst, nG2, nRst, nF2, nRst, nF2
	dc.b	nG2, $20, nRst, $08, nC2, nD2, nEb2, nF2, $04, nRst, nG2, $08
	dc.b	nRst, nG2, nRst, nF2, $10, $04, nRst, nE2, $08, nRst, nC2, $18
	dc.b	nRst, $08, nEb2, nF2, nRst, nG2, nRst, $10, nG2, $08, nF2, $04
	dc.b	nRst, nF2, $08, nRst, nG2, $38, nRst, $58, $58, $58, $58, $58
	dc.b	$58, nAb1, $38, nCs2, $08, nRst, nAb1, $28, nFs1, $10, nE1, $20
	dc.b	nEb1, $18, nF1, $20, nAb1, $08, nCs2, $10, nEb2, nE2, $08, nCs2
	dc.b	nAb1, $10, nFs1, $08, nB1, nEb2, nCs2, $18, nAb1, $08, nF1, $10
	dc.b	nCs1, $08, nEb1, $10, nE1, $08, nEb1, nCs1, $10, nFs1, $08, nE1
	dc.b	nFs1, nAb1, $28, nCs2, $08, nAb1, nCs2, $01, smpsNoAttack, nEb2, $0F, nCs2
	dc.b	$10, nFs2, $01, smpsNoAttack, nAb2, $0F, nFs2, $08, nEb2, nB1, nAb1, $18
	dc.b	nB1, $01, smpsNoAttack, nCs2, $27, nEb2, $08, nE2, $10, nEb2, $08, nE2
	dc.b	nFs2, $18, nAb2, $28, nC3, $01, smpsNoAttack, nCs3, $07, smpsNoAttack, nAb2, $08
	dc.b	nCs3, $01, smpsNoAttack, nEb3, $0E, nRst, $01, nE3, $04, nEb3, nCs3, nAb2
	dc.b	nFs2, $08, nAb2, nFs2, nAb2, nFs2, nF2, $18, nAb2, $08, nCs3, $20
	dc.b	nCs2, $08, nE2, nCs2, nAb1, nE1, nEb1, nB1, nEb2, nCs2, $20, nRst
	dc.b	$08
	smpsPSGAlterVol     $04
	smpsJump            SSR_Jump07

; PSG2 Data
SSR_PSG2:
	smpsPSGvoice        fTone_05
	dc.b	nRst, $10, nAb0, $02, nBb0, nCs1, nEb1, nF1, nAb1, nBb1, nCs2, nEb2
	dc.b	nF2, nAb2, nBb2, nCs3, nEb3, nF3, nAb3, nBb3, $08

SSR_Loop66:
	dc.b	nRst, $7C
	smpsLoop            $00, $0C, SSR_Loop66

SSR_Jump06:
	smpsPSGAlterVol     $F8
	dc.b	nC2, $08, nD2, $04, nRst, nEb2, $08, nF2, $04, nRst
	smpsModSet          $10, $01, $01, $05
	dc.b	nG2, $08, nRst, nG2, nRst, nF2, $10, $04, nRst, nE2, $08, nRst
	dc.b	nC2, $10, nRst, $08, nC2, nD2, $04, nRst, nEb2, $08, nF2, $04
	dc.b	nRst, nG2, $08, nRst, nG2, nRst, nF2, $0E, nRst, $02, nF2, $08
	dc.b	nG2, $20, nRst, $10, nC2, $04, nRst, nEb2, $08, nRst, nG2, nRst
	dc.b	nG2, nRst, nF2, $10, $04, nRst, nE2, $08, nRst, nC2, $18, nRst
	dc.b	$08, nEb2, nF2, nRst, nG2, nRst, $10, nG2, $04, nRst, nF2, nRst
	dc.b	nF2, $08, nRst, nG2, $28, nRst, $08, nC2, nEb2, nRst, nG2, nRst
	dc.b	nG2, nRst, nF2, nRst, nF2, nE2, nRst, nC2, $10, nRst, $08, nC2
	dc.b	nD2, $04, nRst, nEb2, nRst, nF2, nRst, nG2, $08, nRst, nG2, nRst
	dc.b	nF2, nRst, nF2, nG2, $20, nRst, $08, nC2, nD2, nEb2, nF2, $04
	dc.b	nRst, nG2, $08, nRst, nG2, nRst, nF2, $10, $04, nRst, nE2, $08
	dc.b	nRst, nC2, $18, nRst, $08, nEb2, nF2, nRst, nG2, nRst, $10, nG2
	dc.b	$08, nF2, $04, nRst, nF2, $08, nRst, nG2, $38

SSR_Loop67:
	dc.b	nRst, $5D
	smpsLoop            $00, $09, SSR_Loop67
	dc.b	$61, nA2, $01, nBb2, nC3, $20
	smpsPSGvoice        fTone_06
	dc.b	$01, smpsNoAttack, nBb2, smpsNoAttack, nG2, smpsNoAttack, nE2, smpsNoAttack, nC2, smpsNoAttack, nBb1, smpsNoAttack
	dc.b	nG1, smpsNoAttack, nE1
	smpsPSGvoice        fTone_05
	dc.b	nC1, $08, nRst, $18, nC2, $08, nD2, $04, nRst, nEb2, $08, nF2
	dc.b	$04, nRst, nG2, $08, nRst, nG2, nRst, nF2, $10, $04, nRst, nE2
	dc.b	$08, nRst, nC2, $10, nRst, $08, nC2, nD2, $04, nRst, nEb2, $08
	dc.b	nF2, $04, nRst, nG2, $08, nRst, nG2, nRst, nF2, $0E, nRst, $02
	dc.b	nF2, $08, nG2, $20, nRst, $10, nC2, $04, nRst, nEb2, $08, nRst
	dc.b	nG2, nRst, nG2, nRst, nF2, $10, $04, nRst, nE2, $08, nRst, nC2
	dc.b	$18, nRst, $08, nEb2, nF2, nRst, nG2, nRst, $10, nG2, $04, nRst
	dc.b	nF2, nRst, nF2, $08, nRst, nG2, $28, nRst, $08, nC2, nEb2, nRst
	dc.b	nG2, nRst, nG2, nRst, nF2, nRst, nF2, nE2, nRst, nC2, $10, nRst
	dc.b	$08, nC2, nD2, $04, nRst, nEb2, nRst, nF2, nRst, nG2, $08, nRst
	dc.b	nG2, nRst, nF2, nRst, nF2, nG2, $20, nRst, $08, nC2, nD2, nEb2
	dc.b	nF2, $04, nRst, nG2, $08, nRst, nG2, nRst, nF2, $10, $04, nRst
	dc.b	nE2, $08, nRst, nC2, $18, nRst, $08, nEb2, nF2, nRst, nG2, nRst
	dc.b	$10, nG2, $08, nF2, $04, nRst, nF2, $08

SSR_Loop68:
	dc.b	nRst, $49
	smpsLoop            $00, $08, SSR_Loop68
	dc.b	nAb0, $38, nCs1, $08, nRst, nAb0, $28, nFs0, $10, nE0, $20, nEb0
	dc.b	$18, nF0, $20, nAb0, $08, nCs1, $10, nEb1, nE1, $08, nCs1, nAb0
	dc.b	$10, nFs0, $08, nB0, nEb1, nCs1, $18, nAb0, $08, nF0, $10, nCs0
	dc.b	$08, nEb0, $10, nE0, $08, nEb0, nCs0, $10, nFs0, $08, nE0, nFs0
	dc.b	nAb0, $28, nCs1, $08, nAb0, nCs1, $01, smpsNoAttack, nEb1, $0F, nCs1, $10
	dc.b	nFs1, $01, smpsNoAttack, nAb1, $0F, nFs1, $08, nEb1, nB0, nAb0, $18, nB0
	dc.b	$01, smpsNoAttack, nCs1, $27, nEb1, $08, nE1, $10, nEb1, $08, nE1, nFs1
	dc.b	$18, nAb1, $28, nC2, $01, smpsNoAttack, nCs2, $07, smpsNoAttack, nAb1, $08, nCs2
	dc.b	$01, smpsNoAttack, nEb2, $0E, nRst, $01, nE2, $04, nEb2, nCs2, nAb1, nFs1
	dc.b	$08, nAb1, nFs1, nAb1, nFs1, nF1, $18, nAb1, $08, nCs2, $20, nCs1
	dc.b	$08, nE1, nCs1, nAb0, nE0, nEb0, nB0, nEb1, nCs1, $20, nRst, $10
	smpsPSGAlterVol     $08
	smpsJump            SSR_Jump06

; PSG3 Data
SSR_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $20

SSR_Loop59:
	smpsPSGvoice        fTone_02
	dc.b	nA5, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsLoop            $00, $10, SSR_Loop59
	smpsPSGvoice        fTone_02

SSR_Loop5A:
	dc.b	$04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	dc.b	$04
	smpsLoop            $00, $10, SSR_Loop5A
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

SSR_Loop5B:
	dc.b	$04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $1F, SSR_Loop5B
	dc.b	$04
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

SSR_Loop5C:
	dc.b	$04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $1B, SSR_Loop5C
	dc.b	$24
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FE
	dc.b	nAb5, $10, $10

SSR_Jump05:
	dc.b	nA5, $10
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

SSR_Loop5D:
	dc.b	$04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	dc.b	$04
	smpsLoop            $00, $1F, SSR_Loop5D
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

SSR_Loop5E:
	dc.b	$04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $1F, SSR_Loop5E
	dc.b	$04
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

SSR_Loop5F:
	dc.b	$04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $1F, SSR_Loop5F
	dc.b	$04
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

SSR_Loop60:
	dc.b	$04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $1B, SSR_Loop60
	dc.b	$04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	dc.b	$04, $04
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGAlterVol     $FE
	dc.b	nAb5, $10, $10, nA5
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

SSR_Loop61:
	dc.b	$04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	dc.b	$04
	smpsLoop            $00, $1F, SSR_Loop61
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

SSR_Loop62:
	dc.b	$04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $1F, SSR_Loop62
	dc.b	$04
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FE
	dc.b	$10
	smpsPSGAlterVol     $02

SSR_Loop63:
	dc.b	$10
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $05
	dc.b	$10
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FB
	smpsLoop            $00, $0F, SSR_Loop63
	dc.b	$10
	smpsPSGAlterVol     $FE
	dc.b	$10
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

SSR_Loop64:
	dc.b	$08
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $0E, SSR_Loop64
	dc.b	$08
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

SSR_Loop65:
	dc.b	$04, $04, $04
	smpsPSGvoice        fTone_01
	dc.b	$04
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $2D, SSR_Loop65
	dc.b	$04
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FE
	dc.b	nAb5, $10, $10
	smpsJump            SSR_Jump05

SSR_Voices:
;	Voice $00
;	$24
;	$71, $31, $72, $32, 	$17, $0F, $17, $0F, 	$00, $0B, $00, $0B
;	$00, $00, $00, $00, 	$07, $08, $07, $08, 	$18, $04, $10, $08
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $03, $07
	smpsVcCoarseFreq    $02, $02, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $17, $0F, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $00, $0B, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $08, $07, $08, $07
	smpsVcTotalLevel    $08, $10, $04, $18

;	Voice $01
;	$05
;	$01, $00, $01, $02, 	$1F, $1F, $1F, $1F, 	$07, $02, $02, $07
;	$00, $00, $00, $00, 	$2F, $2F, $2F, $8F, 	$1E, $06, $02, $0A
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $02, $02, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $08, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0A, $02, $06, $1E

;	Voice $02
;	$3C
;	$0F, $7F, $45, $40, 	$1F, $1F, $1F, $1F, 	$0C, $0F, $13, $0F
;	$00, $13, $17, $0B, 	$F7, $29, $1F, $29, 	$00, $08, $0D, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $07, $00
	smpsVcCoarseFreq    $00, $05, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $13, $0F, $0C
	smpsVcDecayRate2    $0B, $17, $13, $00
	smpsVcDecayLevel    $02, $01, $02, $0F
	smpsVcReleaseRate   $09, $0F, $09, $07
	smpsVcTotalLevel    $00, $0D, $08, $00

;	Voice $03
;	$35
;	$21, $31, $20, $14, 	$8E, $8E, $91, $91, 	$00, $05, $00, $00
;	$01, $02, $02, $02, 	$48, $36, $17, $08, 	$17, $01, $0B, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $02, $03, $02
	smpsVcCoarseFreq    $04, $00, $01, $01
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $11, $11, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $05, $00
	smpsVcDecayRate2    $02, $02, $02, $01
	smpsVcDecayLevel    $00, $01, $03, $04
	smpsVcReleaseRate   $08, $07, $06, $08
	smpsVcTotalLevel    $00, $0B, $01, $17

;	Voice $04
;	$3C
;	$0F, $7F, $45, $40, 	$1F, $1F, $1F, $1F, 	$0C, $0F, $13, $0F
;	$00, $13, $17, $0B, 	$F7, $29, $1F, $29, 	$00, $00, $0D, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $07, $00
	smpsVcCoarseFreq    $00, $05, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $13, $0F, $0C
	smpsVcDecayRate2    $0B, $17, $13, $00
	smpsVcDecayLevel    $02, $01, $02, $0F
	smpsVcReleaseRate   $09, $0F, $09, $07
	smpsVcTotalLevel    $00, $0D, $00, $00

;	Voice $05
;	$2C
;	$70, $40, $21, $60, 	$9F, $1F, $1F, $5F, 	$0C, $09, $0C, $15
;	$04, $04, $06, $06, 	$56, $46, $46, $4F, 	$0C, $00, $10, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $02, $04, $07
	smpsVcCoarseFreq    $00, $01, $00, $00
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $0C, $09, $0C
	smpsVcDecayRate2    $06, $06, $04, $04
	smpsVcDecayLevel    $04, $04, $04, $05
	smpsVcReleaseRate   $0F, $06, $06, $06
	smpsVcTotalLevel    $00, $10, $00, $0C

;	Voice $06
;	$38
;	$75, $13, $71, $11, 	$D1, $52, $14, $14, 	$0A, $07, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $07
;	$3C
;	$71, $72, $31, $01, 	$14, $0C, $16, $0D, 	$0A, $00, $0C, $00
;	$00, $00, $00, $00, 	$04, $06, $05, $06, 	$16, $08, $0B, $0D
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0D, $16, $0C, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0C, $00, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $05, $06, $04
	smpsVcTotalLevel    $0D, $0B, $08, $16

;	Voice $08
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0C, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $06, $04
	smpsVcDecayRate2    $00, $03, $01, $00
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $00, $25, $2F, $25

;	Voice $09
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $07
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $1F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $0A
;	$3B
;	$46, $42, $42, $43, 	$10, $12, $19, $4F, 	$08, $05, $01, $01
;	$01, $01, $01, $01, 	$76, $F1, $F7, $F9, 	$41, $23, $2B, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $04, $04
	smpsVcCoarseFreq    $03, $02, $02, $06
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0F, $19, $12, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $05, $08
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $0F, $0F, $0F, $07
	smpsVcReleaseRate   $09, $07, $01, $06
	smpsVcTotalLevel    $00, $2B, $23, $41

