; =============================================================================================
; Project Name:		musicF1
; Created:		22nd May 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

musicF1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice	musicF1_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	musicF1_DAC
	smpsHeaderFM	musicF1_FM1,	smpsPitch01hi,	$09
	smpsHeaderFM	musicF1_FM2,	smpsPitch00,	$0D
	smpsHeaderFM	musicF1_FM3,	smpsPitch00,	$0D
	smpsHeaderFM	musicF1_FM4,	smpsPitch00,	$0D
	smpsHeaderFM	musicF1_FM5,	smpsPitch02hi+$03,	$08
	smpsHeaderPSG	musicF1_PSG1,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	musicF1_PSG2,	smpsPitch03lo,	$00,	$00
	smpsHeaderPSG	musicF1_PSG3,	smpsPitch03lo,	$01,	$00

; FM1 Data
musicF1_FM1:
;	Call At	 	location
	smpsCall	SHZ_BASS_Call01
SHZ_BASS_Jump01:
;	Call At	 	location
	smpsCall	SHZ_BASS_Call02
;	Call At	 	location
	smpsCall	SHZ_BASS_Call03
;	Call At	 	location
	smpsCall	SHZ_BASS_Call04
;	Call At	 	location
	smpsCall	SHZ_BASS_Call05
;	Call At	 	location
	smpsCall	SHZ_BASS_Call06
;	Call At	 	location
	smpsCall	SHZ_BASS_Call07
;	Jump To	 	location
	smpsJump	SHZ_BASS_Jump01

; FM2 Data
musicF1_FM2:
	smpsFMvoice	$01
	dc.b		nC4,	$04,	nA3,	nG4,	nC4,	$18,	nA3,	$04
	dc.b		nF4,	nC4,	nF4,	nF4,	nG4,	nC4,	nC4,	$08
	dc.b		nA4,	$04,	nC4,	$14,	$10,	$10,	$04,	nA3
	dc.b		$04,	nG4,	nC4,	$18,	nA3,	$04,	nF4,	nC4
	dc.b		nF4,	nF4,	nG4,	nC4,	nC4,	$08,	nA4,	$04
	dc.b		nC4,	$14,	$10,	$10,	nA4,	$08,	nF4,	$04
	dc.b		nC4,	$08,	nF4,	nF4,	nG4,	$0C,	nF4,	$08
	dc.b		$08,	nC4,	$08,	nD4,	$04,	$14,	nC4,	$10
	dc.b		$10,	nA4,	$08,	nF4,	$04,	nC4,	$08,	nF4
	dc.b		nF4,	nG4,	$0C,	nF4,	$08,	$08,	nC4,	$08
	dc.b		nF4,	$04,	nA4,	$2C,	$08,	nF4,	$0C,	nG4
	dc.b		$08,	nBb4,	nG4,	$04,	nRst,	nG4,	nD5,	$08
	dc.b		nE4,	nBb4,	nF4,	$0C,	nA4,	$14,	$0C,	$14
	dc.b		nD4,	$0C,	nBb4,	$08,	nF4,	$04,	nF5,	$08
	dc.b		nE4,	$0C,	nC5,	$08,	nF5,	$04,	nC5,	nE5
	dc.b		$10,	nC6,	$14
	smpsJump	musicF1_FM2

; FM3 Data
musicF1_FM3:
	smpsFMvoice	$01
	dc.b		nF4,	$04,	nC4,	nC4,	nF4,	$18,	nC4,	$04
	dc.b		$04,	nG4,	$04,	nBb4,	nA4,	nC4,	nF4,	nG4
	dc.b		$08,	nF4,	$04,	$14,	$10,	nE4,	$10,	nF4
	dc.b		$04,	nC4,	nC4,	nF4,	$18,	nC4,	$04,	$04
	dc.b		nG4,	$04,	nBb4,	nA4,	nC4,	nF4,	nG4,	$08
	dc.b		nF4,	$04,	$14,	$10,	nE4,	$10,	nC5,	$08
	dc.b		nC4,	$04,	nG4,	$08,	nA4,	nBb4,	nC5,	$0C
	dc.b		nA4,	$08,	nC4,	nG4,	nBb3,	$04,	nF4,	$14
	dc.b		$10,	nE4,	$10,	nC5,	$08,	nC4,	$04,	nG4
	dc.b		$08,	nA4,	nBb4,	nC5,	$0C,	nA4,	$08,	nC4
	dc.b		nG4,	nC4,	$04,	nC5,	$2C,	nF4,	$08,	nBb4
	dc.b		$0C,	nC5,	$08,	nD5,	nC5,	$04,	nRst,	nC5
	dc.b		nBb4,	$08,	nG4,	nG4,	nA4,	$0C,	nD5,	$14
	dc.b		$0C,	nC5,	$14,	nF4,	$0C,	$08,	nBb4,	$04
	dc.b		nD5,	$08,	nG4,	$0C,	nF5,	$08,	nA5,	$04
	dc.b		nG4,	nG5,	$10,	$14
	smpsJump	musicF1_FM3

; FM4 Data
musicF1_FM4:
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$04
musicF1_Jump01:
	smpsFMvoice	$01
	dc.b		nD5,	$0C,	nE5,	$08,	nF5,	nE5,	$04,	nRst
	dc.b		nE5,	nF4,	$08,	nC5,	nE4,	nRst,	$40,	nBb4
	dc.b		$0C,	nC5,	$08,	nD5,	$04,	nBb4,	$08,	nC5
	dc.b		$0C,	nRst,	$7F,	$7F,	$7F,	$7F,	$38
	smpsJump	musicF1_Jump01

; FM5 Data
musicF1_FM5:
	dc.b		nRst,	$04
	smpsFMvoice	$02
	dc.b		nAb2,	nRst,	nAb2,	nRst,	nAb2,	nAb2,	nAb2,	nRst
	dc.b		nAb2,	nRst,	nAb2,	$05,	nRst,	$03,	nAb2,	$04
	dc.b		$04,	$04,	nRst,	$04,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nAb2,	nAb2,	nRst,	nAb2,	nAb2,	nAb2,	nRst
	dc.b		nAb2,	nRst,	nAb2,	nRst,	nAb2,	nAb2,	nAb2,	nRst
	dc.b		nAb2,	nRst,	nAb2,	nRst,	nAb2,	nAb2,	nAb2,	nRst
	dc.b		nAb2,	nRst,	nAb2,	nRst,	nAb2,	nAb2,	nAb2,	nRst
	dc.b		nAb2,	nRst,	nAb2,	nRst,	nAb2,	nAb2,	nAb2,	nRst
	dc.b		nAb2,	nRst,	nAb2,	nRst,	nAb2,	nAb2,	nAb2,	nRst
	dc.b		nAb2,	nRst,	nAb2,	nRst,	nAb2,	nAb2,	nAb2,	nRst
	dc.b		nAb2,	nRst,	nAb2
	smpsJump	musicF1_FM5

SHZ_BASS_Call01:
;	Set FM Voice	#
	smpsFMvoice	$00
	dc.b		nF2,	$04,	nF3,	nF2,	nF3,	nF2,	nF3,	nF2
	dc.b		nF3,	nEb2,	nEb3,	nEb2,	nEb3,	nEb2,	nEb3,	nEb2
	dc.b		nEb3,	nBb1,	nBb2,	nBb1,	nBb2,	nBb1,	nBb2,	nBb1
	dc.b		nBb2,	nC2,	nC3,	nC2,	nC3,	nC2,	nC3,	nD2
	dc.b		nE2
	smpsReturn

SHZ_BASS_Call02:
	dc.b		nF2,	$04,	nF3,	nF2,	nF3,	nF2,	nG2,	nA2
	dc.b		nF2,	nEb2,	nEb3,	nEb2,	nEb3,	nBb2,	nA2,	nF2
	dc.b		nEb2,	nBb1,	nBb2,	nBb1,	nBb2,	nBb1,	nC2,	nD2
	dc.b		nF2,	nC2,	nC3,	nC2,	nC3,	nC2,	nC3,	nD2
	dc.b		nE2
	smpsReturn

SHZ_BASS_Call03:
	dc.b		nF2,	$04,	nF3,	nF2,	nF3,	nF2,	nF3,	nF2
	dc.b		nF3,	nEb2,	nEb3,	nEb2,	nEb3,	nEb2,	nEb3,	nEb2
	dc.b		nEb3,	nBb1,	nBb2,	nBb1,	nBb2,	nBb1,	nBb2,	nBb1
	dc.b		nBb2,	nC2,	nC3,	nC2,	nC3,	nC2,	nC3,	nD2
	dc.b		nE2
	smpsReturn

SHZ_BASS_Call04:
	dc.b		nF2,	$04,	nF3,	nF2,	nF3,	nF2,	nF3,	nF2
	dc.b		nF3,	nEb2,	nEb3,	nEb2,	nEb3,	nEb2,	nEb3,	nEb2
	dc.b		nEb3,	nD2,	nD3,	nD2,	nD3,	nD2,	nD3,	nD2
	dc.b		nD3,	nC2,	nC3,	nC2,	nC3,	nC2,	nC3,	nC2
	dc.b		nC3
	smpsReturn

SHZ_BASS_Call05:
	dc.b		nBb1,	$04,	nBb2,	nBb1,	nBb2,	nBb1,	nBb2,	nBb1
	dc.b		nC2,	nRst,	nC3,	nC2,	nC3,	nC2,	nC3,	nC2
	dc.b		nC3,	nD2,	nD3,	nD2,	nD3,	nD2,	nD3,	nD2
	dc.b		nD3,	nEb2,	nEb3,	nEb2,	nEb3,	nEb2,	nEb3,	nEb2
	dc.b		nEb3
	smpsReturn

SHZ_BASS_Call06:
	dc.b		nBb1,	$04,	nBb2,	nBb1,	nBb2,	nBb1,	nBb2,	nBb1
	dc.b		nBb2,	nC2,	nC3,	nC2,	nC3,	nC2,	nF2,	nFs2
	dc.b		nG2,	nRst,	nG2,	nF2,	nF2,	nE2,	nE2,	nD2
	dc.b		nC2,	nF2,	nF3,	nF2,	nF3,	nF2,	nF3,	nF2
	dc.b		nF3
	smpsReturn

SHZ_BASS_Call07:
	dc.b		nEb2,	$04,	nEb3,	nEb2,	nEb3,	nEb2,	nEb3,	nEb2
	dc.b		nEb3,	nBb1,	nBb2,	nBb1,	nBb2,	nBb1,	nBb2,	nBb1
	dc.b		nBb2,	nC2,	nC3,	nC2,	nC3,	nC2,	nC3,	nD2
	dc.b		nE2
	smpsReturn
	
; PSG1 Data

MusicF1_PSG1:
	smpsCall            MusicF1_Call_207

MusicF1_Jump_201:
	smpsCall            MusicF1_Call_208
	smpsCall            MusicF1_Call_209
	smpsCall            MusicF1_Call_20A
	smpsCall            MusicF1_Call_20B
	smpsCall            MusicF1_Call_20C
	smpsCall            MusicF1_Call_20D
	smpsJump            MusicF1_Jump_201

; PSG2 Data
MusicF1_PSG2:
	smpsCall            MusicF1_Call_200

MusicF1_Jump_200:
	smpsCall            MusicF1_Call_201
	smpsCall            MusicF1_Call_202
	smpsCall            MusicF1_Call_203
	smpsCall            MusicF1_Call_204
	smpsCall            MusicF1_Call_205
	smpsCall            MusicF1_Call_206
	smpsJump            MusicF1_Jump_200

MusicF1_Call_207:
	dc.b	smpsNoAttack, $18
	smpsPSGvoice        fTone_01
	dc.b	nC5, $08, nF5, nF5, $18, nRst, $40
	smpsReturn

MusicF1_Call_208:
	dc.b	smpsNoAttack, $14, nC5, $08, nA5, nA5, $1C, nRst, $40
	smpsReturn

MusicF1_Call_209:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

MusicF1_Call_20A:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

MusicF1_Call_20B:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_01
	dc.b	nF5, nD5, nRst, nF5, nD5, nRst, nG5, nRst, nG5, nC5, nG5, nRst
	dc.b	nG5, nC5, nRst, $08, nF5, $04, nD5, nRst, nF5, nD5, nRst, nF5
	dc.b	nRst, nG5, nD5, nG5, nRst, nG5, nC5, nRst
	smpsReturn

MusicF1_Call_20C:
	dc.b	smpsNoAttack, $04, nF5, nD5, nRst, nF5, nRst, nF5, nD5, nRst, nG5, nE5
	dc.b	nF5, nRst, nA5, nRst, nG5, nRst, nE5, nF5, nG5, nRst, nC6, $0C
	dc.b	nRst, $18, nC5, $08
	smpsReturn

MusicF1_Call_20D:
	dc.b	nF5, $08, $18, nRst, $40
	smpsReturn

MusicF1_Call_200:
	dc.b	smpsNoAttack, $14
	smpsPSGvoice        fTone_01
	dc.b	nF5, $08, nG5, nG5, $14, nRst, $48
	smpsReturn

MusicF1_Call_201:
	dc.b	smpsNoAttack, $10, nF5, $08, nG5, nG5, $18, nRst, $48
	smpsReturn

MusicF1_Call_202:
	dc.b	smpsNoAttack, $50, nG5, $08, nD5, $04, nF5, $18, nE5, $04, nF5, nG5
	smpsReturn

MusicF1_Call_203:
	dc.b	nRst, $04, nG5, nRst, $48, nG5, $08, nA5, $04, nBb5, nC6, nBb5
	dc.b	nC6, $10, nA5, $08
	smpsReturn

MusicF1_Call_204:
	dc.b	smpsNoAttack, $04, nRst, $7C
	smpsReturn

MusicF1_Call_205:
	dc.b	smpsNoAttack, $74
	smpsPSGvoice        fTone_01
	dc.b	nF5, $08, nG5, $04
	smpsReturn

MusicF1_Call_206:
	dc.b	smpsNoAttack, $04, nG5, $14, nRst, $48
	smpsReturn

; PSG3 Data
musicF1_PSG3:
	smpsPSGvoice	$00
	dc.b		nC4,	$20,	$04,	$04,	nRst,	$18,	nD4,	$20
	dc.b		nC4,	$10,	$10,	$20,	$20,	nD4,	$20,	nC4
	dc.b		$10,	$10,	nF4,	$32,	nRst,	$06,	nF4,	$08
	dc.b		nRst,	nC4,	$04,	nD4,	$14,	$10,	nE4,	$10
	dc.b		nRst,	$08,	nF4,	$30,	$08,	nRst,	$0C,	nF4
	dc.b		$2C,	nC4,	$08,	nBb3,	$0C,	$08,	nBb4,	$08
	dc.b		nG4,	$04,	nRst,	nG4,	nF4,	$08,	nE4,	nC4
	dc.b		nF4,	$0C,	$14,	nG4,	$0C,	$14,	nF4,	$0C
	dc.b		$08,	nBb4,	$0C,	nG4,	nC5,	$08,	nF5,	nG5
	dc.b		$10,	$14
	smpsJump	musicF1_PSG3

; DAC Data
musicF1_DAC:
	dc.b		dKickS1,	$04,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		dSnareS1,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dSnareS1,	dSnareS1
	dc.b		dSnareS1,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		dSnareS1,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dSnareS1,	dSnareS1
	dc.b		dSnareS1,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		dKickS1,	nRst,	dKickS1,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		dSnareS1,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		nRst,	dKickS1,	nRst,	dSnareS1,	nRst,	dKickS1,	dKickS1,	dSnareS1
	dc.b		dKickS1,	nRst,	dSnareS1,	dSnareS1,	dSnareS1,	dSnareS1,	dKickS1,	dSnareS1
	dc.b		dSnareS1
	smpsJump	musicF1_DAC

musicF1_Voices:
	dc.b		$10,$09,$00,$00,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$25,$30,$13,$00;			Voice 00
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 01
	dc.b		$3A,$7B,$5B,$40,$40,$9F,$1F,$1F,$1F,$0F,$0B,$05,$0C,$0F,$19,$0C
	dc.b		$13,$F9,$F5,$F9,$06,$21,$01,$01,$7F;			Voice 02
	even
