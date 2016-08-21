; =============================================================================================
; Project Name:		LostLabyrinth
; Created:		19th July 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

LostLabyrinth_Header:
	smpsHeaderVoice	LostLabyrinth_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$03

	smpsHeaderDAC	LostLabyrinth_DAC
	smpsHeaderFM	LostLabyrinth_FM1,	smpsPitch01hi,	$10
	smpsHeaderFM	LostLabyrinth_FM2,	smpsPitch02lo,	$10
	smpsHeaderFM	LostLabyrinth_FM3,	smpsPitch02lo,	$10
	smpsHeaderFM	LostLabyrinth_FM4,	smpsPitch00,	$10
	smpsHeaderFM	LostLabyrinth_FM5,	smpsPitch00,	$10
	smpsHeaderPSG	LostLabyrinth_PSG1,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	LostLabyrinth_PSG2,	smpsPitch03lo,	$02,	$00
	smpsHeaderPSG	LostLabyrinth_PSG3,	smpsPitch03lo,	$02,	$00

; FM1 Data
LostLabyrinth_FM1:
	smpsCall	LostLabyrinth_Call01
	smpsCall	LostLabyrinth_Call02
	smpsCall	LostLabyrinth_Call03
	smpsCall	LostLabyrinth_Call02
	smpsCall	LostLabyrinth_Call02
	smpsCall	LostLabyrinth_Call03
	smpsCall	LostLabyrinth_Call04
	smpsJump	LostLabyrinth_FM1

; FM2 Data
LostLabyrinth_FM2:
	smpsCall	LostLabyrinth_Call05
	smpsCall	LostLabyrinth_Call06
	smpsCall	LostLabyrinth_Call07
	smpsCall	LostLabyrinth_Call05
	smpsCall	LostLabyrinth_Call06
	smpsCall	LostLabyrinth_Call07
	smpsCall	LostLabyrinth_Call08
	smpsJump	LostLabyrinth_FM2

; FM3 Data
LostLabyrinth_FM3:
	smpsCall	LostLabyrinth_Call09
	smpsCall	LostLabyrinth_Call09
	smpsCall	LostLabyrinth_Call0A
	smpsCall	LostLabyrinth_Call09
	smpsCall	LostLabyrinth_Call09
	smpsCall	LostLabyrinth_Call0A
	smpsCall	LostLabyrinth_Call0B
	smpsJump	LostLabyrinth_FM3

; FM4 Data
LostLabyrinth_FM4:
	smpsCall	LostLabyrinth_Call0C
	smpsCall	LostLabyrinth_Call0C
	smpsCall	LostLabyrinth_Call0D
	smpsCall	LostLabyrinth_Call0C
	smpsCall	LostLabyrinth_Call0C
	smpsCall	LostLabyrinth_Call0D
	smpsCall	LostLabyrinth_Call0E
	smpsJump	LostLabyrinth_FM4

; FM5 Data
LostLabyrinth_FM5:
	smpsCall	LostLabyrinth_Call0F
	smpsCall	LostLabyrinth_Call10
	smpsCall	LostLabyrinth_Call11
	smpsCall	LostLabyrinth_Call12
	smpsCall	LostLabyrinth_Call13
	smpsCall	LostLabyrinth_Call11
	smpsCall	LostLabyrinth_Call11
	smpsJump	LostLabyrinth_FM5

; PSG1 Data
LostLabyrinth_PSG1:
	smpsCall	LostLabyrinth_Call14
	smpsCall	LostLabyrinth_Call15
	smpsCall	LostLabyrinth_Call16
	smpsCall	LostLabyrinth_Call17
	smpsCall	LostLabyrinth_Call18
	smpsCall	LostLabyrinth_Call19
	smpsCall	LostLabyrinth_Call1A
	smpsJump	LostLabyrinth_PSG1

; PSG2 Data
LostLabyrinth_PSG2:
	smpsCall	LostLabyrinth_Call1B
	smpsCall	LostLabyrinth_Call1C
	smpsCall	LostLabyrinth_Call1D
	smpsCall	LostLabyrinth_Call1E
	smpsCall	LostLabyrinth_Call1F
	smpsCall	LostLabyrinth_Call20
	smpsCall	LostLabyrinth_Call21
	smpsJump	LostLabyrinth_PSG2

; PSG3 Data
LostLabyrinth_PSG3:
	smpsPSGform	$E7
	smpsCall	LostLabyrinth_Call22
	smpsCall	LostLabyrinth_Call22
	smpsCall	LostLabyrinth_Call23
	smpsCall	LostLabyrinth_Call22
	smpsCall	LostLabyrinth_Call22
	smpsCall	LostLabyrinth_Call24
	smpsCall	LostLabyrinth_Call25
	smpsJump	LostLabyrinth_PSG3

; DAC Data
LostLabyrinth_DAC:
	smpsCall	LostLabyrinth_Call26
	smpsCall	LostLabyrinth_Call26
	smpsCall	LostLabyrinth_Call27
	smpsCall	LostLabyrinth_Call26
	smpsCall	LostLabyrinth_Call26
	smpsCall	LostLabyrinth_Call27
	smpsCall	LostLabyrinth_Call28
	smpsJump	LostLabyrinth_DAC

LostLabyrinth_Call01:
	smpsFMvoice	$00
	dc.b		nA2,	$04,	nD2,	nA2,	nD2,	$08,	nA2,	$04
	dc.b		nD2,	nA2,	nD2,	$08,	nA2,	$04,	nD2,	nG2
	dc.b		nC2,	$0B,	nRst,	$01,	nBb2,	$04,	nBb1,	nBb2
	dc.b		nBb1,	$08,	nBb2,	$04,	nBb1,	nG2,	nBb1,	nA1
	dc.b		nA2,	nA1,	nG2,	nG1,	$0C
	smpsReturn

LostLabyrinth_Call02:
	dc.b		nA2,	$04,	nD2,	nA2,	nD2,	$08,	nA2,	$04
	dc.b		nD2,	nA2,	nD2,	$08,	nA2,	$04,	nD2,	nG2
	dc.b		nC2,	$0B,	nRst,	$01,	nBb2,	$04,	nBb1,	nBb2
	dc.b		nBb1,	$08,	nBb2,	$04,	nBb1,	nG2,	nBb1,	nA1
	dc.b		nA2,	nA1,	nG2,	nG1,	$0C
	smpsReturn

LostLabyrinth_Call03:
	dc.b		nA2,	$04,	nF2,	nD2,	nA2,	nF3,	nA3,	nA2
	dc.b		nA1,	nA2,	nF2,	nD2,	nA2,	nA3,	nF3,	nA2
	dc.b		nF2,	nG1,	nD2,	$08,	$04,	nD3,	nG3,	nD2
	dc.b		nG1,	$08,	nF2,	$04,	nG2,	nD3,	nC4,	nG3
	dc.b		nE3,	nC3
	smpsReturn

LostLabyrinth_Call04:
	dc.b		nA2,	$04,	nD2,	nA2,	nD2,	$08,	nA2,	$04
	dc.b		nD2,	nA2,	nD2,	$08,	nA2,	$04,	nD2,	nG2
	dc.b		nC2,	$08,	nE2,	$04,	nA2,	nD2,	nA2,	nD2
	dc.b		$08,	nA1,	$04,	nC2,	nE2,	nD2,	nC1,	nD1
	dc.b		nF1,	nG1,	nA1,	nC2,	nE2
	smpsReturn

LostLabyrinth_Call05:
	smpsFMvoice	$01
	dc.b		nD6,	$07,	nRst,	$01,	nD6,	$07,	nRst,	$05
	dc.b		nE6,	$0C,	nF6,	$04,	nD6,	nA6,	nF6,	$08
	dc.b		nD6,	$0C,	$07,	nRst,	$01,	nD6,	$07,	nRst
	dc.b		$05,	nD6,	$08,	nF6,	$04,	nG5,	$0C,	nF6
	dc.b		$04,	nE6,	nD6,	nC6,	nA5
	smpsReturn

LostLabyrinth_Call06:
	dc.b		nD6,	$07,	nRst,	$01,	nD6,	$07,	nRst,	$05
	dc.b		nE6,	$0C,	nF6,	$04,	nD6,	nA6,	nF6,	$08
	dc.b		nD6,	$0C,	$07,	nRst,	$01,	nD6,	$07,	nRst
	dc.b		$05,	nD6,	$08,	nF6,	$04,	nG5,	$0C,	nF6
	dc.b		$04,	nE6,	nD6,	nF6,	nA6
	smpsReturn

LostLabyrinth_Call07:
	dc.b		nG5,	$04,	nG5,	nF5,	nF5,	nRst,	nF5,	nRst
	dc.b		nA4,	nF5,	nRst,	nF5,	nRst,	nE5,	nF5,	nE5
	dc.b		nD5,	nRst,	$08,	nF5,	$04,	nF5,	nRst,	nF5
	dc.b		nRst,	nA4,	nF5,	nRst,	nF5,	nRst,	nE5,	nF5
	dc.b		nE5,	nD5
	smpsReturn

LostLabyrinth_Call08:
	dc.b		nRst,	$04,	nF5,	nRst,	nF5,	nE5,	nF5,	nE5
	dc.b		$08,	nF5,	$04,	nRst,	nF5,	nRst,	nG5,	nF5
	dc.b		nE5,	nC5,	nF5,	nD5,	nA4,	nE5,	$08,	nC5
	dc.b		$04,	nG4,	nF4,	nD5,	$08,	nRst,	$18
	smpsReturn

LostLabyrinth_Call09:
	smpsFMvoice	$01
	dc.b		nA5,	$07,	nRst,	$01,	nA5,	$07,	nRst,	$05
	dc.b		nA5,	$0C,	nA5,	nA5,	$08,	$0C,	nG5,	$07
	dc.b		nRst,	$01,	nG5,	$07,	nRst,	$05,	nG5,	$0C
	dc.b		nD5,	nG5,	$08,	$0C
	smpsReturn

LostLabyrinth_Call0A:
	dc.b		nD5,	$04,	nD5,	nD5,	nD5,	nRst,	nD5,	nRst
	dc.b		$08,	nD5,	$04,	nRst,	nD5,	nRst,	nC5,	nD5
	dc.b		nC5,	nA4,	nRst,	$08,	nD5,	$04,	nD5,	nRst
	dc.b		nD5,	nRst,	$08,	nD5,	$04,	nRst,	nD5,	nRst
	dc.b		nC5,	nD5,	nC5,	nA4
	smpsReturn

LostLabyrinth_Call0B:
	dc.b		nRst,	$04,	nD5,	nRst,	nD5,	nC5,	nD5,	nC5
	dc.b		$08,	nD5,	$04,	nRst,	nD5,	nRst,	nE5,	nC5
	dc.b		nG4,	nRst,	$44
	smpsReturn

LostLabyrinth_Call0C:
	smpsFMvoice	$01
	dc.b		nD5,	$07,	nRst,	$01,	nD5,	$07,	nRst,	$05
	dc.b		nD5,	$0C,	nD5,	nD5,	$08,	$0C,	$07,	nRst
	dc.b		$01,	nD5,	$07,	nRst,	$05,	nD5,	$0C,	nRst
	dc.b		$04,	nF4,	nRst,	nD5,	$08,	$0C
	smpsReturn

LostLabyrinth_Call0D:
	dc.b		nRst,	$7F,	smpsNoAttack,	$01
	smpsReturn

LostLabyrinth_Call0E:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

LostLabyrinth_Call0F:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$04
	dc.b		nD5,	$04,	nA4,	nC5,	nG4,	$0C,	nA4,	nF4
	dc.b		nG4,	$08,	nD4,	$0C,	nF4,	nG4,	nC4,	$1A
	dc.b		nRst,	$02
	smpsReturn

LostLabyrinth_Call10:
	dc.b		smpsNoAttack,	$08,	nD5,	$04,	nA4,	nC5,	nG4,	$0C
	dc.b		nA4,	nF4,	nG4,	$08,	nD4,	$0C,	nF4,	nG4
	dc.b		nC5,	$1A,	nRst,	$02
	smpsReturn

LostLabyrinth_Call11:
	dc.b		smpsNoAttack,	$7F,	smpsNoAttack,	$01
	smpsReturn

LostLabyrinth_Call12:
	dc.b		smpsNoAttack,	$08
	smpsFMvoice	$04
	dc.b		nD5,	nA4,	$04,	nC5,	$08,	nG4,	$04,	nA4
	dc.b		$08,	nF4,	$04,	nG4,	$08,	nA4,	$04,	nG4
	dc.b		nF4,	nD4,	nRst,	nD4,	nF4,	nRst,	nF4,	nG4
	dc.b		nRst,	nG4,	nC4,	$1A,	nRst,	$02
	smpsReturn

LostLabyrinth_Call13:
	dc.b		smpsNoAttack,	$08,	nD5,	nA4,	$04,	nC5,	$08,	nG4
	dc.b		$04,	nA4,	$08,	nF4,	$04,	nG4,	$08,	nA4
	dc.b		$04,	nG4,	nF4,	nD4,	nRst,	nD4,	nF4,	nRst
	dc.b		nF4,	nG4,	nRst,	nG4,	nC5,	$1A,	nRst,	$02
	smpsReturn

LostLabyrinth_Call14:
	dc.b		smpsNoAttack,	$08
	smpsPSGvoice	$00
	dc.b		nD5,	$04,	nA4,	nC5,	nG4,	$0C,	nA4,	nF4
	dc.b		nG4,	$08,	nD4,	$0C,	nF4,	nG4,	nC4,	$1A
	dc.b		nRst,	$02
	smpsReturn

LostLabyrinth_Call15:
	dc.b		smpsNoAttack,	$08,	nD5,	$04,	nA4,	nC5,	nG4,	$0C
	dc.b		nA4,	nF4,	nG4,	$08,	nD4,	$0C,	nF4,	nG4
	dc.b		nC5,	$1A,	nRst,	$02
	smpsReturn

LostLabyrinth_Call16:
	dc.b		nA3,	$04,	nA3,	nAb3,	nA3,	nRst,	nD3,	nF3
	dc.b		nG3,	nA3,	nA3,	nAb3,	nA3,	nRst,	nD3,	nC4
	dc.b		nG3,	nA3,	nA3,	nAb3,	nA3,	nRst,	nD3,	nF3
	dc.b		nG3,	nA3,	$08,	nG3,	nC4,	nF3
	smpsReturn

LostLabyrinth_Call17:
	dc.b		nRst,	$08,	nD5,	nA4,	$04,	nC5,	$08,	nG4
	dc.b		$04,	nA4,	$08,	nF4,	$04,	nG4,	$08,	nA4
	dc.b		$04,	nG4,	nF4,	nD4,	nRst,	nD4,	nF4,	nRst
	dc.b		nF4,	nG4,	nRst,	nG4,	nC4,	$1A,	nRst,	$02
	smpsReturn

LostLabyrinth_Call18:
	dc.b		smpsNoAttack,	$08,	nD5,	nA4,	$04,	nC5,	$08,	nG4
	dc.b		$04,	nA4,	$08,	nF4,	$04,	nG4,	$08,	nA4
	dc.b		$04,	nG4,	nF4,	nD4,	nRst,	nD4,	nF4,	nRst
	dc.b		nF4,	nG4,	nRst,	nG4,	nC5,	$1A,	nRst,	$02
	smpsReturn

LostLabyrinth_Call19:
	dc.b		nA3,	$04,	nRst,	nAb3,	nA3,	nRst,	nD3,	nF3
	dc.b		nG3,	nA3,	$08,	nC4,	nA3,	$04,	nG3,	nF3
	dc.b		$08,	nG3,	$04,	nA3,	nRst,	nC4,	$08,	nA3
	dc.b		$04,	nG3,	nD4,	$08,	nC4,	$04,	nA3,	nF4
	dc.b		nE4,	nD4,	nC4,	nA3
	smpsReturn

LostLabyrinth_Call1A:
	dc.b		nD3,	$09,	nRst,	$77
	smpsReturn

LostLabyrinth_Call1B:
	dc.b		smpsNoAttack,	$10
	smpsPSGvoice	$00
	dc.b		nB4,	$01,	nRst,	$53
	smpsPSGvoice	$01
	dc.b		nA4,	$02,	nC5,	nD5,	$04,	nF5,	nG5,	nC5
	dc.b		$0C
	smpsReturn

LostLabyrinth_Call1C:
	dc.b		nRst,	$10
	smpsPSGvoice	$00
	dc.b		nB4,	$01,	nRst,	$53
	smpsPSGvoice	$01
	dc.b		nA4,	$02,	nC5,	nD5,	$04,	nF5,	nG5,	nD5
	dc.b		nF5,	nG5
	smpsReturn

LostLabyrinth_Call1D:
	dc.b		nA3,	$04,	nA3,	nAb3,	nA3,	nRst,	nD3,	nF3
	dc.b		nG3,	nA3,	nA3,	nAb3,	nA3,	nRst,	nD3,	nC4
	dc.b		nG3,	nA3,	nA3,	nAb3,	nA3,	nRst,	nD3,	nF3
	dc.b		nG3,	nA3,	$08,	nG3,	nC4,	nF3
	smpsReturn

LostLabyrinth_Call1E:
	dc.b		nRst,	$64,	nA4,	$02,	nC5,	nD5,	$04,	nF5
	dc.b		nG5,	nD5,	nC5,	$08
	smpsReturn

LostLabyrinth_Call1F:
	dc.b		nRst,	$64,	nA4,	$02,	nC5,	nD5,	$04,	nF5
	dc.b		nG5,	nD5,	nF5,	nG5
	smpsReturn

LostLabyrinth_Call20:
	dc.b		nA3,	$04,	nRst,	nAb3,	nA3,	nRst,	nD3,	nF3
	dc.b		nG3,	nA3,	$08,	nC4,	nA3,	$04,	nG3,	nF3
	dc.b		$08,	nG3,	$04,	nA3,	nRst,	nC4,	$08,	nA3
	dc.b		$04,	nG3,	nD4,	$08,	nC4,	$04,	nA3,	nF4
	dc.b		nE4,	nD4,	nC4,	nA3
	smpsReturn

LostLabyrinth_Call21:
	dc.b		nD4,	$09,	nRst,	$77
	smpsReturn

LostLabyrinth_Call22:
	smpsPSGvoice	$02
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$03
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$03
	dc.b		nCs0,	$01,	nRst,	$0B,	nCs0,	$01,	nRst,	$03
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$03
	dc.b		nCs0,	$01,	nRst,	$03,	nCs0,	$01,	nRst,	$07
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$03
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$03
	dc.b		nCs0,	$01,	nRst,	$04,	$07,	nCs0,	$01,	nRst
	dc.b		$03,	nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst
	dc.b		$03,	nCs0,	$01,	nRst,	$03,	nCs0,	$01,	nRst
	dc.b		$07
	smpsReturn

LostLabyrinth_Call23:
	smpsPSGvoice	$02
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$03
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$03
	dc.b		nCs0,	$01,	nRst,	$04,	$07,	nCs0,	$01,	nRst
	dc.b		$03,	nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst
	dc.b		$03,	nCs0,	$01,	nRst,	$03,	nCs0,	$01,	nRst
	dc.b		$04,	$03,	nCs0,	$01,	nRst,	$07,	nCs0,	$01
	dc.b		nRst,	$03,	nCs0,	$01,	nRst,	$07,	nCs0,	$01
	dc.b		nRst,	$03,	nCs0,	$01,	nRst,	$04,	$07,	nCs0
	dc.b		$01,	nRst,	$03,	nCs0,	$01,	nRst,	$07,	nCs0
	dc.b		$01,	nRst,	$03,	nCs0,	$01,	nRst,	$03,	nCs0
	dc.b		$01,	nRst,	$04,	$03
	smpsReturn

LostLabyrinth_Call24:
	smpsPSGvoice	$02
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$03
	dc.b		nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst,	$03
	dc.b		nCs0,	$01,	nRst,	$04,	$07,	nCs0,	$01,	nRst
	dc.b		$03,	nCs0,	$01,	nRst,	$07,	nCs0,	$01,	nRst
	dc.b		$03,	nCs0,	$01,	nRst,	$03,	nCs0,	$01,	nRst
	dc.b		$04,	$03,	nCs0,	$01,	nRst,	$07,	nCs0,	$01
	dc.b		nRst,	$03,	nCs0,	$01,	nRst,	$07,	nCs0,	$01
	dc.b		nRst,	$03,	nCs0,	$01,	nRst,	$03,	nCs0,	$01
	dc.b		nRst,	$07,	nCs0,	$01,	nRst,	$03,	nCs0,	$01
	dc.b		nRst,	$07,	nCs0,	$01,	nRst,	$03,	nCs0,	$01
	dc.b		nRst,	$03,	nCs0,	$01,	nRst,	$04,	$03
	smpsReturn

LostLabyrinth_Call25:
	dc.b		smpsNoAttack,	$01,	nRst,	$03
	smpsPSGvoice	$02
	dc.b		nCs0,	$01,	nRst,	$03,	nCs0,	$01,	nRst,	$04
	dc.b		$03,	nCs0,	$01,	nRst,	$04,	$03,	nCs0,	$01
	dc.b		nRst,	$03,	nCs0,	$01,	nRst,	$07,	nCs0,	$01
	dc.b		nRst,	$03,	nCs0,	$01,	nRst,	$07,	nCs0,	$01
	dc.b		nRst,	$04,	$03,	nCs0,	$01,	nRst,	$08,	$03
	dc.b		nCs0,	$01,	nRst,	$03,	nCs0,	$01,	nRst,	$04
	dc.b		$03,	nCs0,	$01,	nRst,	$04,	$03,	nCs0,	$01
	dc.b		nRst,	$03,	nCs0,	$01,	nRst,	$04,	$07,	nCs0
	dc.b		$01,	nRst,	$07,	nCs0,	$01,	nRst,	$03,	nCs0
	dc.b		$01,	nRst,	$03,	nCs0,	$01,	nRst,	$04,	$03
	smpsReturn

LostLabyrinth_Call26:
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$03
	dc.b		dKick,	$01,	nRst,	$07,	dKick,	$01,	nRst,	$03
	dc.b		dSnare,	$01,	nRst,	$0B,	dKick,	$01,	nRst,	$03
	dc.b		dSnare,	$01,	nRst,	$07,	dKick,	$01,	nRst,	$03
	dc.b		dKick,	$01,	nRst,	$03,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$0B
	dc.b		dKick,	$01,	nRst,	$03,	dSnare,	$01,	nRst,	$03
	dc.b		dKick,	$08,	$01,	nRst,	$03,	dSnare,	$01,	nRst
	dc.b		$07,	dKick,	$01,	nRst,	$03,	dKick,	$01,	nRst
	dc.b		$03,	dSnare,	$01,	nRst,	$07
	smpsReturn

LostLabyrinth_Call27:
	dc.b		dKick,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$03
	dc.b		dKick,	$01,	nRst,	$07,	dKick,	$01,	nRst,	$03
	dc.b		dSnare,	$01,	nRst,	$03,	dSnare,	$08,	dKick,	$01
	dc.b		nRst,	$03,	dSnare,	$01,	nRst,	$07,	dKick,	$01
	dc.b		nRst,	$03,	dKick,	$01,	nRst,	$03,	dSnare,	$01
	dc.b		nRst,	$03,	dSnare,	$04,	dKick,	$01,	nRst,	$07
	dc.b		dSnare,	$01,	nRst,	$0B,	dKick,	$01,	nRst,	$03
	dc.b		dSnare,	$01,	nRst,	$03,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$03,	dSnare,	$01,	nRst,	$07
	dc.b		dKick,	$01,	nRst,	$03,	dSnare,	$01,	nRst,	$03
	dc.b		dSnare,	$01,	nRst,	$03,	dSnare,	$04
	smpsReturn

LostLabyrinth_Call28:
	dc.b		dKick,	$04,	$01,	nRst,	$03,	dSnare,	$01,	nRst
	dc.b		$03,	dSnare,	$08,	dKick,	$04,	dSnare,	$01,	nRst
	dc.b		$0B,	dKick,	$01,	nRst,	$03,	dSnare,	$01,	nRst
	dc.b		$07,	dKick,	$01,	nRst,	$03,	dKick,	$04,	dSnare
	dc.b		$01,	nRst,	$07,	dKick,	$04,	$01,	nRst,	$03
	dc.b		dSnare,	$01,	nRst,	$03,	dSnare,	$08,	dKick,	$04
	dc.b		dSnare,	$01,	nRst,	$03,	dKick,	$01,	nRst,	$03
	dc.b		dSnare,	$01,	nRst,	$07,	dSnare,	$01,	nRst,	$0B
	dc.b		dKick,	$01,	nRst,	$03,	dSnare,	$01,	nRst,	$03
	dc.b		dKick,	$04
	smpsReturn

LostLabyrinth_Voices:
	dc.b		$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 00
	dc.b		$3C,$32,$32,$D4,$D2,$16,$50,$14,$51,$05,$08,$05,$08,$00,$08,$08
	dc.b		$08,$63,$27,$53,$27,$1E,$00,$22,$00;			Voice 01
	dc.b		$35,$32,$31,$7A,$02,$4F,$15,$4F,$52,$06,$07,$08,$04,$00,$00,$00
	dc.b		$00,$18,$28,$18,$29,$0E,$23,$1E,$00;			Voice 02
	dc.b		$39,$03,$61,$22,$21,$1F,$1F,$12,$1F,$05,$05,$05,$0B,$00,$00,$00
	dc.b		$00,$10,$10,$18,$18,$1E,$1D,$15,$00;			Voice 03
	dc.b		$3D,$01,$21,$12,$31,$14,$0E,$0F,$0F,$00,$04,$03,$04,$00,$00,$00
	dc.b		$00,$00,$16,$16,$16,$1B,$05,$05,$05;			Voice 04
	even
