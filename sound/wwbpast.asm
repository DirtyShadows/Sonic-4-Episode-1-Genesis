; =============================================================================================
; Project Name:		Wacky_WorkBench_Past
; Created:		2nd January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Wacky_WorkBench_Past_Header:
	smpsHeaderVoice	Wacky_WorkBench_Past_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$06

	smpsHeaderDAC	Wacky_WorkBench_Past_DAC
	smpsHeaderFM	Wacky_WorkBench_Past_FM1,	smpsPitch01hi,	$07
	smpsHeaderFM	Wacky_WorkBench_Past_FM2,	smpsPitch00,	$14
	smpsHeaderFM	Wacky_WorkBench_Past_FM3,	smpsPitch00,	$18
	smpsHeaderFM	Wacky_WorkBench_Past_FM4,	smpsPitch00,	$04
	smpsHeaderFM	Wacky_WorkBench_Past_FM5,	smpsPitch00,	$04
	smpsHeaderPSG	Wacky_WorkBench_Past_PSG1,	smpsPitch03lo,	$04,	$00
	smpsHeaderPSG	Wacky_WorkBench_Past_PSG2,	smpsPitch03lo,	$04,	$00
	smpsHeaderPSG	Wacky_WorkBench_Past_PSG3,	smpsPitch03lo,	$03,	$00

; FM1 Data
Wacky_WorkBench_Past_FM1:
	smpsCall	Wacky_WorkBench_Past_Call01
	smpsCall	Wacky_WorkBench_Past_Call02
	smpsCall	Wacky_WorkBench_Past_Call02
	smpsCall	Wacky_WorkBench_Past_Call02
	smpsCall	Wacky_WorkBench_Past_Call02
	smpsCall	Wacky_WorkBench_Past_Call02
	smpsCall	Wacky_WorkBench_Past_Call02
	smpsCall	Wacky_WorkBench_Past_Call02
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call04
	smpsCall	Wacky_WorkBench_Past_Call04
	smpsCall	Wacky_WorkBench_Past_Call04
	smpsCall	Wacky_WorkBench_Past_Call04
	smpsCall	Wacky_WorkBench_Past_Call04
	smpsCall	Wacky_WorkBench_Past_Call04
	smpsCall	Wacky_WorkBench_Past_Call04
	smpsCall	Wacky_WorkBench_Past_Call04
	smpsCall	Wacky_WorkBench_Past_Call05
	smpsCall	Wacky_WorkBench_Past_Call05
	smpsCall	Wacky_WorkBench_Past_Call05
	smpsCall	Wacky_WorkBench_Past_Call05
	smpsCall	Wacky_WorkBench_Past_Call05
	smpsCall	Wacky_WorkBench_Past_Call05
	smpsCall	Wacky_WorkBench_Past_Call05
	smpsCall	Wacky_WorkBench_Past_Call05
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsCall	Wacky_WorkBench_Past_Call03
	smpsJump	Wacky_WorkBench_Past_FM1

; FM2 Data
Wacky_WorkBench_Past_FM2:
	smpsCall	Wacky_WorkBench_Past_Call06
	smpsCall	Wacky_WorkBench_Past_Call07
	smpsCall	Wacky_WorkBench_Past_Call08
	smpsCall	Wacky_WorkBench_Past_Call07
	smpsCall	Wacky_WorkBench_Past_Call08
	smpsCall	Wacky_WorkBench_Past_Call07
	smpsCall	Wacky_WorkBench_Past_Call08
	smpsCall	Wacky_WorkBench_Past_Call07
	smpsCall	Wacky_WorkBench_Past_Call09
	smpsCall	Wacky_WorkBench_Past_Call0A
	smpsCall	Wacky_WorkBench_Past_Call0B
	smpsCall	Wacky_WorkBench_Past_Call0C
	smpsCall	Wacky_WorkBench_Past_Call09
	smpsCall	Wacky_WorkBench_Past_Call0A
	smpsCall	Wacky_WorkBench_Past_Call0B
	smpsCall	Wacky_WorkBench_Past_Call0C
	smpsCall	Wacky_WorkBench_Past_Call0D
	smpsCall	Wacky_WorkBench_Past_Call0E
	smpsCall	Wacky_WorkBench_Past_Call0D
	smpsCall	Wacky_WorkBench_Past_Call0E
	smpsCall	Wacky_WorkBench_Past_Call0D
	smpsCall	Wacky_WorkBench_Past_Call0E
	smpsCall	Wacky_WorkBench_Past_Call0D
	smpsCall	Wacky_WorkBench_Past_Call0E
	smpsCall	Wacky_WorkBench_Past_Call09
	smpsCall	Wacky_WorkBench_Past_Call0A
	smpsCall	Wacky_WorkBench_Past_Call0B
	smpsCall	Wacky_WorkBench_Past_Call0C
	smpsCall	Wacky_WorkBench_Past_Call09
	smpsCall	Wacky_WorkBench_Past_Call0A
	smpsCall	Wacky_WorkBench_Past_Call0B
	smpsCall	Wacky_WorkBench_Past_Call0C
	smpsCall	Wacky_WorkBench_Past_Call0F
	smpsCall	Wacky_WorkBench_Past_Call0F
	smpsCall	Wacky_WorkBench_Past_Call0F
	smpsCall	Wacky_WorkBench_Past_Call0F
	smpsCall	Wacky_WorkBench_Past_Call0F
	smpsCall	Wacky_WorkBench_Past_Call0F
	smpsCall	Wacky_WorkBench_Past_Call0F
	smpsCall	Wacky_WorkBench_Past_Call0F
	smpsCall	Wacky_WorkBench_Past_Call10
	smpsCall	Wacky_WorkBench_Past_Call10
	smpsCall	Wacky_WorkBench_Past_Call10
	smpsCall	Wacky_WorkBench_Past_Call10
	smpsCall	Wacky_WorkBench_Past_Call10
	smpsCall	Wacky_WorkBench_Past_Call10
	smpsCall	Wacky_WorkBench_Past_Call10
	smpsCall	Wacky_WorkBench_Past_Call10
	smpsCall	Wacky_WorkBench_Past_Call11
	smpsCall	Wacky_WorkBench_Past_Call11
	smpsCall	Wacky_WorkBench_Past_Call11
	smpsCall	Wacky_WorkBench_Past_Call11
	smpsCall	Wacky_WorkBench_Past_Call11
	smpsCall	Wacky_WorkBench_Past_Call11
	smpsCall	Wacky_WorkBench_Past_Call11
	smpsCall	Wacky_WorkBench_Past_Call11
	smpsJump	Wacky_WorkBench_Past_FM2

; FM3 Data
Wacky_WorkBench_Past_FM3:
	smpsPan		panLeft,	$00
	smpsCall	Wacky_WorkBench_Past_Call12
	smpsCall	Wacky_WorkBench_Past_Call13
	smpsCall	Wacky_WorkBench_Past_Call14
	smpsCall	Wacky_WorkBench_Past_Call13
	smpsCall	Wacky_WorkBench_Past_Call14
	smpsCall	Wacky_WorkBench_Past_Call13
	smpsCall	Wacky_WorkBench_Past_Call14
	smpsCall	Wacky_WorkBench_Past_Call13
	smpsPan		panCentre,	$00
	smpsAlterVol	$FC
	smpsCall	Wacky_WorkBench_Past_Call15
	smpsCall	Wacky_WorkBench_Past_Call16
	smpsPan		panLeft,	$00
	smpsAlterVol	$04
	smpsCall	Wacky_WorkBench_Past_Call17
	smpsCall	Wacky_WorkBench_Past_Call18
	smpsPan		panCentre,	$00
	smpsAlterVol	$FC
	smpsCall	Wacky_WorkBench_Past_Call15
	smpsCall	Wacky_WorkBench_Past_Call16
	smpsPan		panLeft,	$00
	smpsAlterVol	$04
	smpsCall	Wacky_WorkBench_Past_Call17
	smpsCall	Wacky_WorkBench_Past_Call18
	smpsCall	Wacky_WorkBench_Past_Call19
	smpsCall	Wacky_WorkBench_Past_Call1A
	smpsCall	Wacky_WorkBench_Past_Call19
	smpsCall	Wacky_WorkBench_Past_Call1A
	smpsCall	Wacky_WorkBench_Past_Call19
	smpsCall	Wacky_WorkBench_Past_Call1A
	smpsCall	Wacky_WorkBench_Past_Call19
	smpsCall	Wacky_WorkBench_Past_Call1A
	smpsPan		panCentre,	$00
	smpsAlterVol	$FC
	smpsCall	Wacky_WorkBench_Past_Call15
	smpsCall	Wacky_WorkBench_Past_Call16
	smpsPan		panLeft,	$00
	smpsAlterVol	$04
	smpsCall	Wacky_WorkBench_Past_Call17
	smpsCall	Wacky_WorkBench_Past_Call18
	smpsPan		panCentre,	$00
	smpsAlterVol	$FC
	smpsCall	Wacky_WorkBench_Past_Call15
	smpsCall	Wacky_WorkBench_Past_Call16
	smpsPan		panLeft,	$00
	smpsAlterVol	$04
	smpsCall	Wacky_WorkBench_Past_Call17
	smpsCall	Wacky_WorkBench_Past_Call18
	smpsCall	Wacky_WorkBench_Past_Call1B
	smpsCall	Wacky_WorkBench_Past_Call1C
	smpsCall	Wacky_WorkBench_Past_Call1C
	smpsCall	Wacky_WorkBench_Past_Call1C
	smpsCall	Wacky_WorkBench_Past_Call1C
	smpsCall	Wacky_WorkBench_Past_Call1C
	smpsCall	Wacky_WorkBench_Past_Call1C
	smpsCall	Wacky_WorkBench_Past_Call1C
	smpsCall	Wacky_WorkBench_Past_Call1D
	smpsCall	Wacky_WorkBench_Past_Call1E
	smpsCall	Wacky_WorkBench_Past_Call1E
	smpsCall	Wacky_WorkBench_Past_Call1E
	smpsCall	Wacky_WorkBench_Past_Call1E
	smpsCall	Wacky_WorkBench_Past_Call1E
	smpsCall	Wacky_WorkBench_Past_Call1E
	smpsCall	Wacky_WorkBench_Past_Call1E
	smpsCall	Wacky_WorkBench_Past_Call1F
	smpsCall	Wacky_WorkBench_Past_Call20
	smpsCall	Wacky_WorkBench_Past_Call20
	smpsCall	Wacky_WorkBench_Past_Call20
	smpsCall	Wacky_WorkBench_Past_Call20
	smpsCall	Wacky_WorkBench_Past_Call20
	smpsCall	Wacky_WorkBench_Past_Call20
	smpsCall	Wacky_WorkBench_Past_Call20
	smpsJump	Wacky_WorkBench_Past_FM3

; FM4 Data
Wacky_WorkBench_Past_FM4:
	smpsCall	Wacky_WorkBench_Past_Call21
	smpsCall	Wacky_WorkBench_Past_Call22
	smpsCall	Wacky_WorkBench_Past_Call22
	smpsCall	Wacky_WorkBench_Past_Call22
	smpsCall	Wacky_WorkBench_Past_Call22
	smpsCall	Wacky_WorkBench_Past_Call22
	smpsCall	Wacky_WorkBench_Past_Call22
	smpsCall	Wacky_WorkBench_Past_Call22
	smpsAlterVol	$16
	smpsPan		panLeft,	$00
	smpsCall	Wacky_WorkBench_Past_Call23
	smpsCall	Wacky_WorkBench_Past_Call24
	smpsPan		panCentre,	$00
	smpsAlterVol	$EA
	smpsAlterVol	$05
	smpsCall	Wacky_WorkBench_Past_Call25
	smpsCall	Wacky_WorkBench_Past_Call25
	smpsPan		panLeft,	$00
	smpsAlterVol	$16
	smpsAlterVol	$FB
	smpsCall	Wacky_WorkBench_Past_Call23
	smpsCall	Wacky_WorkBench_Past_Call24
	smpsPan		panCentre,	$00
	smpsAlterVol	$EA
	smpsAlterVol	$05
	smpsCall	Wacky_WorkBench_Past_Call25
	smpsCall	Wacky_WorkBench_Past_Call25
	smpsAlterVol	$21
	smpsAlterVol	$FB
	smpsCall	Wacky_WorkBench_Past_Call26
	smpsCall	Wacky_WorkBench_Past_Call27
	smpsCall	Wacky_WorkBench_Past_Call28
	smpsCall	Wacky_WorkBench_Past_Call27
	smpsCall	Wacky_WorkBench_Past_Call28
	smpsCall	Wacky_WorkBench_Past_Call27
	smpsCall	Wacky_WorkBench_Past_Call28
	smpsCall	Wacky_WorkBench_Past_Call27
	smpsAlterVol	$DF
	smpsAlterVol	$16
	smpsPan		panLeft,	$00
	smpsCall	Wacky_WorkBench_Past_Call23
	smpsCall	Wacky_WorkBench_Past_Call24
	smpsPan		panCentre,	$00
	smpsAlterVol	$EA
	smpsCall	Wacky_WorkBench_Past_Call25
	smpsCall	Wacky_WorkBench_Past_Call25
	smpsPan		panLeft,	$00
	smpsAlterVol	$16
	smpsCall	Wacky_WorkBench_Past_Call23
	smpsCall	Wacky_WorkBench_Past_Call24
	smpsPan		panCentre,	$00
	smpsAlterVol	$EA
	smpsCall	Wacky_WorkBench_Past_Call25
	smpsCall	Wacky_WorkBench_Past_Call25
	smpsCall	Wacky_WorkBench_Past_Call29
	smpsCall	Wacky_WorkBench_Past_Call2A
	smpsCall	Wacky_WorkBench_Past_Call2B
	smpsCall	Wacky_WorkBench_Past_Call2A
	smpsCall	Wacky_WorkBench_Past_Call2B
	smpsCall	Wacky_WorkBench_Past_Call2A
	smpsCall	Wacky_WorkBench_Past_Call2B
	smpsCall	Wacky_WorkBench_Past_Call2A
	smpsCall	Wacky_WorkBench_Past_Call2C
	smpsCall	Wacky_WorkBench_Past_Call2D
	smpsCall	Wacky_WorkBench_Past_Call2E
	smpsCall	Wacky_WorkBench_Past_Call2D
	smpsCall	Wacky_WorkBench_Past_Call2E
	smpsCall	Wacky_WorkBench_Past_Call2D
	smpsCall	Wacky_WorkBench_Past_Call2E
	smpsCall	Wacky_WorkBench_Past_Call2D
	smpsAlterVol	$21
	smpsCall	Wacky_WorkBench_Past_Call28
	smpsCall	Wacky_WorkBench_Past_Call27
	smpsCall	Wacky_WorkBench_Past_Call28
	smpsCall	Wacky_WorkBench_Past_Call27
	smpsCall	Wacky_WorkBench_Past_Call28
	smpsCall	Wacky_WorkBench_Past_Call27
	smpsCall	Wacky_WorkBench_Past_Call28
	smpsAlterVol	$DF
	smpsAlterVol	$05
	smpsCall	Wacky_WorkBench_Past_Call2F
	smpsAlterVol	$FB
	smpsJump	Wacky_WorkBench_Past_FM4

; FM5 Data
Wacky_WorkBench_Past_FM5:
	smpsCall	Wacky_WorkBench_Past_Call30
	smpsCall	Wacky_WorkBench_Past_Call31
	smpsCall	Wacky_WorkBench_Past_Call31
	smpsCall	Wacky_WorkBench_Past_Call31
	smpsCall	Wacky_WorkBench_Past_Call31
	smpsCall	Wacky_WorkBench_Past_Call31
	smpsCall	Wacky_WorkBench_Past_Call31
	smpsCall	Wacky_WorkBench_Past_Call31
	smpsAlterVol	$16
	smpsCall	Wacky_WorkBench_Past_Call32
	smpsCall	Wacky_WorkBench_Past_Call33
	smpsAlterVol	$EA
	smpsAlterVol	$05
	smpsAlterVol	$04
	smpsCall	Wacky_WorkBench_Past_Call34
	smpsCall	Wacky_WorkBench_Past_Call34
	smpsAlterVol	$16
	smpsAlterVol	$FB
	smpsAlterVol	$FC
	smpsCall	Wacky_WorkBench_Past_Call32
	smpsCall	Wacky_WorkBench_Past_Call33
	smpsAlterVol	$EA
	smpsAlterVol	$05
	smpsAlterVol	$04
	smpsCall	Wacky_WorkBench_Past_Call34
	smpsCall	Wacky_WorkBench_Past_Call34
	smpsAlterVol	$21
	smpsAlterVol	$FB
	smpsAlterVol	$FC
	smpsAlterNote	$04
	smpsPan		panRight,	$00
	smpsCall	Wacky_WorkBench_Past_Call35
	smpsPan		panLeft,	$00
	smpsCall	Wacky_WorkBench_Past_Call36
	smpsPan		panRight,	$00
	smpsCall	Wacky_WorkBench_Past_Call37
	smpsPan		panLeft,	$00
	smpsCall	Wacky_WorkBench_Past_Call36
	smpsPan		panRight,	$00
	smpsCall	Wacky_WorkBench_Past_Call37
	smpsPan		panLeft,	$00
	smpsCall	Wacky_WorkBench_Past_Call36
	smpsPan		panRight,	$00
	smpsCall	Wacky_WorkBench_Past_Call37
	smpsPan		panLeft,	$00
	smpsCall	Wacky_WorkBench_Past_Call36
	smpsPan		panCentre,	$00
	smpsAlterVol	$DF
	smpsAlterNote	$00
	smpsAlterVol	$16
	smpsCall	Wacky_WorkBench_Past_Call32
	smpsCall	Wacky_WorkBench_Past_Call33
	smpsAlterVol	$EA
	smpsAlterVol	$05
	smpsAlterVol	$04
	smpsCall	Wacky_WorkBench_Past_Call34
	smpsCall	Wacky_WorkBench_Past_Call34
	smpsAlterVol	$16
	smpsAlterVol	$FB
	smpsAlterVol	$FC
	smpsCall	Wacky_WorkBench_Past_Call32
	smpsCall	Wacky_WorkBench_Past_Call33
	smpsAlterVol	$EA
	smpsAlterVol	$05
	smpsAlterVol	$04
	smpsCall	Wacky_WorkBench_Past_Call34
	smpsCall	Wacky_WorkBench_Past_Call34
	smpsAlterVol	$FB
	smpsAlterVol	$FC
	smpsCall	Wacky_WorkBench_Past_Call38
	smpsCall	Wacky_WorkBench_Past_Call39
	smpsCall	Wacky_WorkBench_Past_Call3A
	smpsCall	Wacky_WorkBench_Past_Call39
	smpsCall	Wacky_WorkBench_Past_Call3A
	smpsCall	Wacky_WorkBench_Past_Call39
	smpsCall	Wacky_WorkBench_Past_Call3A
	smpsCall	Wacky_WorkBench_Past_Call39
	smpsCall	Wacky_WorkBench_Past_Call3B
	smpsCall	Wacky_WorkBench_Past_Call3C
	smpsCall	Wacky_WorkBench_Past_Call3D
	smpsCall	Wacky_WorkBench_Past_Call3C
	smpsCall	Wacky_WorkBench_Past_Call3D
	smpsCall	Wacky_WorkBench_Past_Call3C
	smpsCall	Wacky_WorkBench_Past_Call3D
	smpsCall	Wacky_WorkBench_Past_Call3C
	smpsAlterVol	$21
	smpsAlterVol	$04
	smpsPan		panRight,	$00
	smpsCall	Wacky_WorkBench_Past_Call37
	smpsPan		panLeft,	$00
	smpsCall	Wacky_WorkBench_Past_Call36
	smpsPan		panRight,	$00
	smpsCall	Wacky_WorkBench_Past_Call37
	smpsPan		panLeft,	$00
	smpsCall	Wacky_WorkBench_Past_Call36
	smpsPan		panRight,	$00
	smpsCall	Wacky_WorkBench_Past_Call37
	smpsPan		panLeft,	$00
	smpsCall	Wacky_WorkBench_Past_Call36
	smpsPan		panRight,	$00
	smpsCall	Wacky_WorkBench_Past_Call37
	smpsPan		panCentre,	$00
	smpsAlterVol	$DF
	smpsAlterVol	$00
	smpsCall	Wacky_WorkBench_Past_Call3E
	smpsJump	Wacky_WorkBench_Past_FM5

; PSG1 Data
Wacky_WorkBench_Past_PSG1:
	smpsCall	Wacky_WorkBench_Past_Call3F
	smpsCall	Wacky_WorkBench_Past_Call40
	smpsCall	Wacky_WorkBench_Past_Call41
	smpsCall	Wacky_WorkBench_Past_Call42
	smpsCall	Wacky_WorkBench_Past_Call43
	smpsCall	Wacky_WorkBench_Past_Call40
	smpsCall	Wacky_WorkBench_Past_Call41
	smpsCall	Wacky_WorkBench_Past_Call42
	smpsCall	Wacky_WorkBench_Past_Call43
	smpsCall	Wacky_WorkBench_Past_Call40
	smpsCall	Wacky_WorkBench_Past_Call41
	smpsCall	Wacky_WorkBench_Past_Call42
	smpsCall	Wacky_WorkBench_Past_Call43
	smpsCall	Wacky_WorkBench_Past_Call40
	smpsCall	Wacky_WorkBench_Past_Call41
	smpsCall	Wacky_WorkBench_Past_Call42
	smpsCall	Wacky_WorkBench_Past_Call43
	smpsCall	Wacky_WorkBench_Past_Call44
	smpsCall	Wacky_WorkBench_Past_Call41
	smpsCall	Wacky_WorkBench_Past_Call42
	smpsCall	Wacky_WorkBench_Past_Call43
	smpsCall	Wacky_WorkBench_Past_Call40
	smpsCall	Wacky_WorkBench_Past_Call41
	smpsCall	Wacky_WorkBench_Past_Call42
	smpsCall	Wacky_WorkBench_Past_Call43
	smpsCall	Wacky_WorkBench_Past_Call40
	smpsCall	Wacky_WorkBench_Past_Call41
	smpsCall	Wacky_WorkBench_Past_Call42
	smpsCall	Wacky_WorkBench_Past_Call43
	smpsCall	Wacky_WorkBench_Past_Call40
	smpsCall	Wacky_WorkBench_Past_Call41
	smpsCall	Wacky_WorkBench_Past_Call42
	smpsCall	Wacky_WorkBench_Past_Call45
	smpsCall	Wacky_WorkBench_Past_Call46
	smpsCall	Wacky_WorkBench_Past_Call46
	smpsCall	Wacky_WorkBench_Past_Call46
	smpsCall	Wacky_WorkBench_Past_Call46
	smpsCall	Wacky_WorkBench_Past_Call46
	smpsCall	Wacky_WorkBench_Past_Call46
	smpsCall	Wacky_WorkBench_Past_Call46
	smpsCall	Wacky_WorkBench_Past_Call47
	smpsCall	Wacky_WorkBench_Past_Call47
	smpsCall	Wacky_WorkBench_Past_Call47
	smpsCall	Wacky_WorkBench_Past_Call47
	smpsCall	Wacky_WorkBench_Past_Call47
	smpsCall	Wacky_WorkBench_Past_Call47
	smpsCall	Wacky_WorkBench_Past_Call47
	smpsCall	Wacky_WorkBench_Past_Call47
	smpsCall	Wacky_WorkBench_Past_Call43
	smpsCall	Wacky_WorkBench_Past_Call40
	smpsCall	Wacky_WorkBench_Past_Call41
	smpsCall	Wacky_WorkBench_Past_Call42
	smpsCall	Wacky_WorkBench_Past_Call43
	smpsCall	Wacky_WorkBench_Past_Call40
	smpsCall	Wacky_WorkBench_Past_Call41
	smpsCall	Wacky_WorkBench_Past_Call42
	smpsJump	Wacky_WorkBench_Past_PSG1

; PSG2 Data
Wacky_WorkBench_Past_PSG2:
	smpsCall	Wacky_WorkBench_Past_Call48
	smpsCall	Wacky_WorkBench_Past_Call49
	smpsCall	Wacky_WorkBench_Past_Call4A
	smpsCall	Wacky_WorkBench_Past_Call4B
	smpsCall	Wacky_WorkBench_Past_Call4C
	smpsCall	Wacky_WorkBench_Past_Call49
	smpsCall	Wacky_WorkBench_Past_Call4A
	smpsCall	Wacky_WorkBench_Past_Call4B
	smpsCall	Wacky_WorkBench_Past_Call4C
	smpsCall	Wacky_WorkBench_Past_Call49
	smpsCall	Wacky_WorkBench_Past_Call4A
	smpsCall	Wacky_WorkBench_Past_Call4B
	smpsCall	Wacky_WorkBench_Past_Call4C
	smpsCall	Wacky_WorkBench_Past_Call49
	smpsCall	Wacky_WorkBench_Past_Call4A
	smpsCall	Wacky_WorkBench_Past_Call4B
	smpsCall	Wacky_WorkBench_Past_Call4C
	smpsCall	Wacky_WorkBench_Past_Call4D
	smpsCall	Wacky_WorkBench_Past_Call4A
	smpsCall	Wacky_WorkBench_Past_Call4B
	smpsCall	Wacky_WorkBench_Past_Call4C
	smpsCall	Wacky_WorkBench_Past_Call49
	smpsCall	Wacky_WorkBench_Past_Call4A
	smpsCall	Wacky_WorkBench_Past_Call4B
	smpsCall	Wacky_WorkBench_Past_Call4C
	smpsCall	Wacky_WorkBench_Past_Call49
	smpsCall	Wacky_WorkBench_Past_Call4A
	smpsCall	Wacky_WorkBench_Past_Call4B
	smpsCall	Wacky_WorkBench_Past_Call4C
	smpsCall	Wacky_WorkBench_Past_Call49
	smpsCall	Wacky_WorkBench_Past_Call4A
	smpsCall	Wacky_WorkBench_Past_Call4B
	smpsCall	Wacky_WorkBench_Past_Call4E
	smpsCall	Wacky_WorkBench_Past_Call4F
	smpsCall	Wacky_WorkBench_Past_Call4F
	smpsCall	Wacky_WorkBench_Past_Call4F
	smpsCall	Wacky_WorkBench_Past_Call4F
	smpsCall	Wacky_WorkBench_Past_Call4F
	smpsCall	Wacky_WorkBench_Past_Call4F
	smpsCall	Wacky_WorkBench_Past_Call4F
	smpsCall	Wacky_WorkBench_Past_Call50
	smpsCall	Wacky_WorkBench_Past_Call50
	smpsCall	Wacky_WorkBench_Past_Call50
	smpsCall	Wacky_WorkBench_Past_Call50
	smpsCall	Wacky_WorkBench_Past_Call50
	smpsCall	Wacky_WorkBench_Past_Call50
	smpsCall	Wacky_WorkBench_Past_Call50
	smpsCall	Wacky_WorkBench_Past_Call50
	smpsCall	Wacky_WorkBench_Past_Call4C
	smpsCall	Wacky_WorkBench_Past_Call49
	smpsCall	Wacky_WorkBench_Past_Call4A
	smpsCall	Wacky_WorkBench_Past_Call4B
	smpsCall	Wacky_WorkBench_Past_Call4C
	smpsCall	Wacky_WorkBench_Past_Call49
	smpsCall	Wacky_WorkBench_Past_Call4A
	smpsCall	Wacky_WorkBench_Past_Call4B
	smpsJump	Wacky_WorkBench_Past_PSG2

; PSG3 Data
Wacky_WorkBench_Past_PSG3:
	smpsPSGform	$E7
	smpsCall	Wacky_WorkBench_Past_Call51
	smpsCall	Wacky_WorkBench_Past_Call52
	smpsCall	Wacky_WorkBench_Past_Call52
	smpsCall	Wacky_WorkBench_Past_Call52
	smpsCall	Wacky_WorkBench_Past_Call53
	smpsCall	Wacky_WorkBench_Past_Call53
	smpsCall	Wacky_WorkBench_Past_Call53
	smpsCall	Wacky_WorkBench_Past_Call53
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call55
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsCall	Wacky_WorkBench_Past_Call54
	smpsJump	Wacky_WorkBench_Past_PSG3

; DAC Data
Wacky_WorkBench_Past_DAC:
	smpsCall	Wacky_WorkBench_Past_Call56
	smpsCall	Wacky_WorkBench_Past_Call57
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call59
	smpsCall	Wacky_WorkBench_Past_Call5A
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call5A
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call5A
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call59
	smpsCall	Wacky_WorkBench_Past_Call5A
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call5B
	smpsCall	Wacky_WorkBench_Past_Call5A
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call59
	smpsCall	Wacky_WorkBench_Past_Call5A
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call5B
	smpsCall	Wacky_WorkBench_Past_Call5A
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call58
	smpsCall	Wacky_WorkBench_Past_Call59
	smpsJump	Wacky_WorkBench_Past_DAC

Wacky_WorkBench_Past_Call01:
	smpsFMvoice	$00
	dc.b		nC2,	$09,	nRst,	$03,	nC2,	$09,	nRst,	$0F
	dc.b		nC2,	$09,	nRst,	$27,	nG1,	$06,	nBb1
	smpsReturn

Wacky_WorkBench_Past_Call02:
	dc.b		nC2,	$09,	nRst,	$03,	nC2,	$09,	nRst,	$0F
	dc.b		nC2,	$09,	nRst,	$27,	nG1,	$06,	nBb1
	smpsReturn

Wacky_WorkBench_Past_Call03:
	smpsFMvoice	$00
	dc.b		nC2,	$06,	nRst,	nEb2,	nRst,	nF2,	nRst,	nFs2
	dc.b		nC2,	nRst,	nEb2,	nRst,	nEb2,	nF2,	nRst,	nFs2
	dc.b		nRst
	smpsReturn

Wacky_WorkBench_Past_Call04:
	dc.b		nC2,	$06,	nRst,	nG1,	nRst,	nBb1,	nRst,	nB1
	dc.b		nC2,	nRst,	nG1,	nRst,	nG1,	nBb1,	nRst,	nB1
	dc.b		nRst
	smpsReturn

Wacky_WorkBench_Past_Call05:
	dc.b		nBb1,	$06,	nRst,	nF1,	nRst,	nAb1,	nRst,	nA1
	dc.b		nBb1,	nRst,	nF1,	nRst,	nF1,	nAb1,	nRst,	nA1
	dc.b		nRst
	smpsReturn

Wacky_WorkBench_Past_Call06:
	smpsFMvoice	$01
	dc.b		nC5,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	smpsReturn

Wacky_WorkBench_Past_Call07:
	smpsPan		panLeft,	$00
	smpsAlterVol	$03
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	smpsPan		panRight,	$00
	smpsAlterVol	$FD
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	smpsPan		panLeft,	$00
	smpsAlterVol	$03
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	smpsPan		panRight,	$00
	smpsAlterVol	$FD
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	smpsPan		panCentre,	$00
	smpsReturn

Wacky_WorkBench_Past_Call08:
	dc.b		nC5,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	smpsReturn

Wacky_WorkBench_Past_Call09:
	dc.b		nRst,	$0C,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	$08,	nBb4,	$04
	dc.b		nRst,	$02,	nC5,	$04,	nRst,	$08,	nEb5,	$04
	dc.b		nRst,	$0E,	nEb5,	$04,	nRst,	$08
	smpsReturn

Wacky_WorkBench_Past_Call0A:
	dc.b		smpsNoAttack,	$0C,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	$08,	nBb4,	$04
	dc.b		nRst,	$02,	nC5,	$04,	nRst,	$02,	nFs4,	$06
	dc.b		nF4,	nRst,	nEb4,	nRst,	nC4
	smpsReturn

Wacky_WorkBench_Past_Call0B:
	dc.b		nRst,	$0C,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	$08,	nBb4,	$04
	dc.b		nRst,	$02,	nC5,	$04,	nRst,	$08,	nEb5,	$04
	dc.b		nRst,	$0E,	nEb5,	$04,	nRst,	$08
	smpsReturn

Wacky_WorkBench_Past_Call0C:
	dc.b		smpsNoAttack,	$0C,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	$08,	nBb4,	$04
	dc.b		nRst,	$02,	nC5,	$04,	nRst,	$02,	nFs4,	$06
	dc.b		nF4,	nF4,	nEb4,	nRst,	nC4
	smpsReturn

Wacky_WorkBench_Past_Call0D:
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$08
	smpsReturn

Wacky_WorkBench_Past_Call0E:
	dc.b		nC5,	$04,	nRst,	$08,	nC5,	$04,	nRst,	$08
	dc.b		nC5,	$04,	nRst,	$08,	nC5,	$04,	nRst,	$08
	dc.b		nC5,	$04,	nRst,	$08,	nC5,	$04,	nRst,	$08
	dc.b		nC5,	$04,	nRst,	$08,	nC5,	$04,	nRst,	$08
	smpsReturn
	dc.b		smpsNoAttack,	$0C,	nC5,	$04,	nRst,	$02,	nC5,	$04
	dc.b		nRst,	$02,	nC5,	$04,	nRst,	$02,	nC5,	$04
	dc.b		nRst,	$02,	nC5,	$04,	nRst,	$02,	nC5,	$04
	dc.b		nRst,	$02,	nBb4,	$04,	nRst,	$02,	nC5,	$04
	dc.b		nRst,	$02,	nC5,	$04,	nRst,	$02,	nEb5,	$04
	dc.b		nRst,	$02,	nEb5,	$04,	nRst,	$08,	nEb5,	$04
	dc.b		nRst,	$02,	nEb5,	$04,	nRst,	$02
	smpsReturn
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$01
	dc.b		nC5,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nFs4,	$06,	nF4,	nF4,	nEb4,	nEb4,	nC4
	smpsReturn
	dc.b		nRst,	$0C
	smpsFMvoice	$01
	dc.b		nC5,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nEb5,	$04,	nRst,	$02
	dc.b		nEb5,	$04,	nRst,	$08,	nEb5,	$04,	nRst,	$02
	dc.b		nEb5,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call0F:
	dc.b		nBb4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nA4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call10:
	dc.b		nAb4,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$08,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$08,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$08,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$02,	nF4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call11:
	dc.b		nC4,	$09,	nRst,	$03,	nEb4,	$06,	nRst,	nF4
	dc.b		$04,	nRst,	$08,	nFs4,	$04,	nRst,	$02,	nC4
	dc.b		$09,	nRst,	$03,	nEb4,	$06,	nRst,	nEb4,	nF4
	dc.b		$04,	nRst,	$08,	nFs4,	$04,	nRst,	$08
	smpsReturn

Wacky_WorkBench_Past_Call12:
	dc.b		nRst,	$06
	smpsFMvoice	$01
	dc.b		nC5,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call13:
	dc.b		smpsNoAttack,	$06
	smpsPan		panLeft,	$00
	smpsAlterVol	$03
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	smpsPan		panRight,	$00
	smpsAlterVol	$FD
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	smpsPan		panLeft,	$00
	smpsAlterVol	$03
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$08
	smpsPan		panRight,	$00
	smpsAlterVol	$FD
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call14:
	dc.b		smpsNoAttack,	$06
	smpsPan		panLeft,	$00
	dc.b		nC5,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nG4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call15:
	dc.b		nRst,	$0C,	nC4,	$04,	nRst,	$08,	nC4,	$04
	dc.b		nRst,	$08,	nC4,	$04,	nRst,	$08,	nBb3,	$04
	dc.b		nRst,	$02,	nC4,	$04,	nRst,	$08,	nEb4,	$04
	dc.b		nRst,	$0E,	nEb4,	$04,	nRst,	$08
	smpsReturn

Wacky_WorkBench_Past_Call16:
	dc.b		smpsNoAttack,	$0C,	nC4,	$04,	nRst,	$08,	nC4,	$04
	dc.b		nRst,	$08,	nC4,	$04,	nRst,	$08,	nBb3,	$04
	dc.b		nRst,	$02,	nC4,	$04,	nRst,	$02,	nFs3,	$06
	dc.b		nF3,	nRst
	smpsPan		panRight,	$00
	dc.b		nEb3
	smpsPan		panCentre,	$00
	dc.b		nRst,	nC3
	smpsReturn

Wacky_WorkBench_Past_Call17:
	dc.b		nRst,	$12,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	$08,	nBb4,	$04
	dc.b		nRst,	$02,	nC5,	$04,	nRst,	$08,	nEb5,	$04
	dc.b		nRst,	$0E,	nEb5,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call18:
	dc.b		smpsNoAttack,	$12,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	$08,	nBb4,	$04
	dc.b		nRst,	$02,	nC5,	$04,	nRst,	$02,	nFs4,	$06
	dc.b		nF4,	nF4,	nEb4,	nRst
	smpsReturn

Wacky_WorkBench_Past_Call19:
	dc.b		smpsNoAttack,	$06,	nG4,	$04,	nRst,	$08,	nG4,	$04
	dc.b		nRst,	$08,	nG4,	$04,	nRst,	$08,	nG4,	$04
	dc.b		nRst,	$08,	nG4,	$04,	nRst,	$08,	nG4,	$04
	dc.b		nRst,	$02,	nG4,	$04,	nRst,	$02,	nBb4,	$04
	dc.b		nRst,	$02,	nG4,	$04,	nRst,	$02,	nBb4,	$04
	dc.b		nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call1A:
	dc.b		smpsNoAttack,	$06,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$02
	smpsReturn
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$01
	dc.b		nC4,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	dc.b		nEb4,	$04,	nRst,	$08,	nEb4,	$04,	nRst,	$02
	dc.b		nEb4,	$04,	nRst,	$02
	smpsReturn
	dc.b		smpsNoAttack,	$0C
	smpsFMvoice	$01
	dc.b		nC4,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nBb3,	$04,	nRst,	$02,	nC4,	$04,	nRst,	$02
	dc.b		nFs3,	$06,	nF3,	nF3
	smpsPan		panRight,	$00
	dc.b		nEb3
	smpsPan		panCentre,	$00
	smpsPan		panRight,	$00
	dc.b		nEb3
	smpsPan		panCentre,	$00
	dc.b		nC3
	smpsReturn
	smpsFMvoice	$03
	dc.b		nBb5,	$06,	nC6,	nEb6,	nC6,	nFs6,	$0C,	nC6
	dc.b		$06,	nF6,	$0C,	nC6,	$06,	nEb6,	$0C,	nC6
	dc.b		nRst
	smpsReturn
	smpsFMvoice	$01
	dc.b		nC4,	$06,	nRst,	nC4,	$04,	nRst,	$02,	nC4
	dc.b		$04,	nRst,	$02,	nC4,	$04,	nRst,	$02,	nC4
	dc.b		$04,	nRst,	$02,	nC4,	$04,	nRst,	$02,	nC4
	dc.b		$04,	nRst,	$02,	nBb3,	$04,	nRst,	$02,	nC4
	dc.b		$04,	nRst,	$02,	nC4,	$04,	nRst,	$02,	nEb4
	dc.b		$04,	nRst,	$02,	nEb4,	$04,	nRst,	$08,	nEb4
	dc.b		$04,	nRst,	$02,	nEb4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call1B:
	dc.b		smpsNoAttack,	$06
	smpsFMvoice	$01
	dc.b		nBb4,	$04,	nRst,	$02,	nC5,	$04,	nRst,	$02
	dc.b		nA4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call1C:
	dc.b		nG4,	$04,	nRst,	$02,	nBb4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$02,	nA4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$08
	dc.b		nG4,	$04,	nRst,	$08,	nG4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call1D:
	dc.b		nG4,	$04,	nRst,	$02,	nAb4,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$08,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$08,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$08,	nF4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call1E:
	dc.b		nF4,	$04,	nRst,	$02,	nAb4,	$04,	nRst,	$02
	dc.b		nBb4,	$04,	nRst,	$02,	nG4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$08,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$08,	nF4,	$04,	nRst,	$08
	dc.b		nF4,	$04,	nRst,	$08,	nF4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call1F:
	dc.b		nF4,	$04,	nRst,	$02,	nC4,	$09,	nRst,	$03
	dc.b		nEb4,	$06,	nRst,	nF4,	$04,	nRst,	$08,	nFs4
	dc.b		$04,	nRst,	$02,	nC4,	$09,	nRst,	$03,	nEb4
	dc.b		$06,	nRst,	nEb4,	nF4,	$04,	nRst,	$08,	nFs4
	dc.b		$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call20:
	dc.b		smpsNoAttack,	$06,	nC4,	$09,	nRst,	$03,	nEb4,	$06
	dc.b		nRst,	nF4,	$04,	nRst,	$08,	nFs4,	$04,	nRst
	dc.b		$02,	nC4,	$09,	nRst,	$03,	nEb4,	$06,	nRst
	dc.b		nEb4,	nF4,	$04,	nRst,	$08,	nFs4,	$04,	nRst
	dc.b		$02
	smpsReturn

Wacky_WorkBench_Past_Call21:
	dc.b		nRst,	$0C
	smpsFMvoice	$02
	dc.b		nB6,	$03,	nRst,	$15,	nB6,	$03,	nRst,	$0F
	dc.b		nA6,	$03,	nRst,	$09,	nA6,	$03,	nRst,	nB6
	dc.b		nRst,	$09,	nD7,	$03,	nRst,	$09
	smpsReturn

Wacky_WorkBench_Past_Call22:
	dc.b		nRst,	$0C,	nB6,	$03,	nRst,	$15,	nB6,	$03
	dc.b		nRst,	$0F,	nA6,	$03,	nRst,	$09,	nA6,	$03
	dc.b		nRst,	nB6,	nRst,	$09,	nD7,	$03,	nRst,	$09
	smpsReturn

Wacky_WorkBench_Past_Call23:
	dc.b		nRst,	$12
	smpsFMvoice	$01
	dc.b		nC5,	$04,	nRst,	$08,	nC5,	$04,	nRst,	$08
	dc.b		nC5,	$04,	nRst,	$08,	nBb4,	$04,	nRst,	$02
	dc.b		nC5,	$04,	nRst,	$08,	nEb5,	$04,	nRst,	$0E
	dc.b		nEb5,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call24:
	dc.b		nRst,	$12,	nC5,	$04,	nRst,	$08,	nC5,	$04
	dc.b		nRst,	$08,	nC5,	$04,	nRst,	$08,	nBb4,	$04
	dc.b		nRst,	$02,	nC5,	$04,	nRst,	$02,	nFs4,	$06
	dc.b		nF4,	nRst,	nEb4,	nRst
	smpsReturn

Wacky_WorkBench_Past_Call25:
	smpsFMvoice	$03
	dc.b		nBb5,	$06,	nC6,	nEb6,	nC6,	nFs6,	$0C,	nC6
	dc.b		$06,	nF6,	$0C,	nC6,	$06,	nEb6,	$0C,	nC6
	dc.b		nRst
	smpsReturn

Wacky_WorkBench_Past_Call26:
	smpsFMvoice	$04
	dc.b		nF7,	$06,	nEb7,	nC7,	nBb6,	nC7,	nEb7,	nF7
	dc.b		nEb7,	nC7,	nBb6,	nC7,	nEb7,	nF7,	nEb7,	nC7
	dc.b		nBb6
	smpsReturn

Wacky_WorkBench_Past_Call27:
	dc.b		nC7,	$06,	nEb7,	nF7,	nEb7,	nC7,	nBb6,	nC7
	dc.b		nEb7,	nF7,	nEb7,	nC7,	nBb6,	nC7,	nEb7,	nF7
	dc.b		nEb7
	smpsReturn

Wacky_WorkBench_Past_Call28:
	smpsFMvoice	$04
	dc.b		nF7,	$06,	nEb7,	nC7,	nBb6,	nC7,	nEb7,	nF7
	dc.b		nEb7,	nC7,	nBb6,	nC7,	nEb7,	nF7,	nEb7,	nC7
	dc.b		nBb6
	smpsReturn
	dc.b		nRst,	$60
	smpsReturn
	dc.b		smpsNoAttack,	$60
	smpsReturn

Wacky_WorkBench_Past_Call29:
	smpsFMvoice	$02
	dc.b		nD6,	$07,	nRst,	$11,	nD6,	$07,	nRst,	$05
	dc.b		nE6,	$07,	nRst,	$05,	nE6,	$07,	nRst,	$05
	dc.b		nE6,	$07,	nRst,	$05,	nE6,	$07,	nRst,	$05
	dc.b		nE6,	$07,	nRst,	$05
	smpsReturn

Wacky_WorkBench_Past_Call2A:
	dc.b		smpsNoAttack,	$0C,	nD6,	$07,	nRst,	$05,	nD6,	$07
	dc.b		nRst,	$05,	nD6,	$07,	nRst,	$05,	nE7,	$03
	dc.b		nRst,	$09,	nE7,	$03,	nRst,	$09,	nD7,	$03
	dc.b		nRst,	$09,	nD7,	$03,	nRst,	$09
	smpsReturn

Wacky_WorkBench_Past_Call2B:
	dc.b		nD6,	$07,	nRst,	$11,	nD6,	$07,	nRst,	$05
	dc.b		nE6,	$07,	nRst,	$05,	nE6,	$07,	nRst,	$05
	dc.b		nE6,	$07,	nRst,	$05,	nE6,	$07,	nRst,	$05
	dc.b		nE6,	$07,	nRst,	$05
	smpsReturn

Wacky_WorkBench_Past_Call2C:
	dc.b		nC6,	$07,	nRst,	$11,	nC6,	$07,	nRst,	$05
	dc.b		nD6,	$07,	nRst,	$05,	nD6,	$07,	nRst,	$05
	dc.b		nD6,	$07,	nRst,	$05,	nBb5,	$07,	nRst,	$05
	dc.b		nBb5,	$07,	nRst,	$05
	smpsReturn

Wacky_WorkBench_Past_Call2D:
	dc.b		smpsNoAttack,	$0C,	nC6,	$07,	nRst,	$05,	nC6,	$07
	dc.b		nRst,	$05,	nC6,	$07,	nRst,	$05,	nD7,	$03
	dc.b		nRst,	$09,	nD7,	$03,	nRst,	$09,	nC7,	$03
	dc.b		nRst,	$09,	nC7,	$03,	nRst,	$09
	smpsReturn

Wacky_WorkBench_Past_Call2E:
	dc.b		nC6,	$07,	nRst,	$11,	nC6,	$07,	nRst,	$05
	dc.b		nD6,	$07,	nRst,	$05,	nD6,	$07,	nRst,	$05
	dc.b		nD6,	$07,	nRst,	$05,	nD6,	$07,	nRst,	$05
	dc.b		nD6,	$07,	nRst,	$05
	smpsReturn

Wacky_WorkBench_Past_Call2F:
	smpsFMvoice	$03
	dc.b		nC6,	$0C,	nEb6,	nF6,	nFs6,	$06,	nC6,	$0C
	dc.b		nEb6,	nEb6,	$06,	nF6,	$0C,	nFs6
	smpsReturn

Wacky_WorkBench_Past_Call30:
	dc.b		nRst,	$0C
	smpsFMvoice	$02
	dc.b		nG6,	$03,	nRst,	$15,	nG6,	$03,	nRst,	$0F
	dc.b		nF6,	$03,	nRst,	$09,	nF6,	$03,	nRst,	nG6
	dc.b		nRst,	$09,	nBb6,	$03,	nRst,	$09
	smpsReturn

Wacky_WorkBench_Past_Call31:
	dc.b		smpsNoAttack,	$0C,	nG6,	$03,	nRst,	$15,	nG6,	$03
	dc.b		nRst,	$0F,	nF6,	$03,	nRst,	$09,	nF6,	$03
	dc.b		nRst,	nG6,	nRst,	$09,	nBb6,	$03,	nRst,	$09
	smpsReturn

Wacky_WorkBench_Past_Call32:
	dc.b		nRst,	$12
	smpsFMvoice	$01
	dc.b		nC4,	$04,	nRst,	$08,	nC4,	$04,	nRst,	$08
	dc.b		nC4,	$04,	nRst,	$08,	nBb3,	$04,	nRst,	$02
	dc.b		nC4,	$04,	nRst,	$08,	nEb4,	$04,	nRst,	$0E
	dc.b		nEb4,	$04,	nRst,	$02
	smpsReturn

Wacky_WorkBench_Past_Call33:
	dc.b		nRst,	$12,	nC4,	$04,	nRst,	$08,	nC4,	$04
	dc.b		nRst,	$08,	nC4,	$04,	nRst,	$08,	nBb3,	$04
	dc.b		nRst,	$02,	nC4,	$04,	nRst,	$02,	nFs3,	$06
	dc.b		nF3,	nRst
	smpsPan		panRight,	$00
	dc.b		nEb3
	smpsPan		panCentre,	$00
	dc.b		nRst
	smpsReturn

Wacky_WorkBench_Past_Call34:
	dc.b		nRst,	$06
	smpsFMvoice	$03
	dc.b		nBb5,	nC6,	nEb6,	nC6,	nFs6,	$0C,	nC6,	$06
	dc.b		nF6,	$0C,	nC6,	$06,	nEb6,	$0C,	nC6,	nRst
	dc.b		$06
	smpsReturn

Wacky_WorkBench_Past_Call35:
	smpsFMvoice	$04
	dc.b		nF7,	$06,	nEb7,	nC7,	nBb6,	nC7,	nEb7,	nF7
	dc.b		nEb7,	nC7,	nBb6,	nC7,	nEb7,	nF7,	nEb7,	nC7
	dc.b		nBb6
	smpsReturn

Wacky_WorkBench_Past_Call36:
	dc.b		nC7,	$06,	nEb7,	nF7,	nEb7,	nC7,	nBb6,	nC7
	dc.b		nEb7,	nF7,	nEb7,	nC7,	nBb6,	nC7,	nEb7,	nF7
	dc.b		nEb7
	smpsReturn

Wacky_WorkBench_Past_Call37:
	smpsFMvoice	$04
	dc.b		nF7,	$06,	nEb7,	nC7,	nBb6,	nC7,	nEb7,	nF7
	dc.b		nEb7,	nC7,	nBb6,	nC7,	nEb7,	nF7,	nEb7,	nC7
	dc.b		nBb6
	smpsReturn

Wacky_WorkBench_Past_Call3E:
	dc.b		nRst,	$60
	smpsReturn
	dc.b		smpsNoAttack,	$60
	smpsReturn

Wacky_WorkBench_Past_Call38:
	smpsFMvoice	$02
	dc.b		nBb5,	$07,	nRst,	$11,	nBb5,	$07,	nRst,	$05
	dc.b		nC6,	$07,	nRst,	$05,	nC6,	$07,	nRst,	$05
	dc.b		nC6,	$07,	nRst,	$05,	nC6,	$07,	nRst,	$05
	dc.b		nC6,	$07,	nRst,	$05
	smpsReturn

Wacky_WorkBench_Past_Call39:
	dc.b		smpsNoAttack,	$0C,	nBb5,	$07,	nRst,	$05,	nBb5,	$07
	dc.b		nRst,	$05,	nBb5,	$07,	nRst,	$05,	nC7,	$03
	dc.b		nRst,	$09,	nC7,	$03,	nRst,	$09,	nBb6,	$03
	dc.b		nRst,	$09,	nBb6,	$03,	nRst,	$09
	smpsReturn

Wacky_WorkBench_Past_Call3A:
	dc.b		nBb5,	$07,	nRst,	$11,	nBb5,	$07,	nRst,	$05
	dc.b		nC6,	$07,	nRst,	$05,	nC6,	$07,	nRst,	$05
	dc.b		nC6,	$07,	nRst,	$05,	nC6,	$07,	nRst,	$05
	dc.b		nC6,	$07,	nRst,	$05
	smpsReturn

Wacky_WorkBench_Past_Call3B:
	dc.b		nAb5,	$07,	nRst,	$11,	nAb5,	$07,	nRst,	$05
	dc.b		nBb5,	$07,	nRst,	$05,	nBb5,	$07,	nRst,	$05
	dc.b		nBb5,	$07,	nRst,	$05,	nD6,	$07,	nRst,	$05
	dc.b		nD6,	$07,	nRst,	$05
	smpsReturn

Wacky_WorkBench_Past_Call3C:
	dc.b		smpsNoAttack,	$0C,	nAb5,	$07,	nRst,	$05,	nAb5,	$07
	dc.b		nRst,	$05,	nAb5,	$07,	nRst,	$05,	nBb6,	$03
	dc.b		nRst,	$09,	nBb6,	$03,	nRst,	$09,	nAb6,	$03
	dc.b		nRst,	$09,	nAb6,	$03,	nRst,	$09
	smpsReturn

Wacky_WorkBench_Past_Call3D:
	dc.b		nAb5,	$07,	nRst,	$11,	nAb5,	$07,	nRst,	$05
	dc.b		nBb5,	$07,	nRst,	$05,	nBb5,	$07,	nRst,	$05
	dc.b		nBb5,	$07,	nRst,	$05,	nBb5,	$07,	nRst,	$05
	dc.b		nBb5,	$07,	nRst,	$05
	smpsReturn

Wacky_WorkBench_Past_Call3F:
	smpsPSGvoice	$07
	dc.b		nD5,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nD5,	nRst
	smpsAlterVol	$01
	dc.b		nD5,	nRst
	smpsAlterVol	$01
	dc.b		nD5,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call40:
	smpsPSGvoice	$07
	dc.b		nF4,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nF4,	nRst
	smpsAlterVol	$01
	dc.b		nF4,	nRst
	smpsAlterVol	$01
	dc.b		nF4,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call41:
	smpsPSGvoice	$07
	dc.b		nG4,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nG4,	nRst
	smpsAlterVol	$01
	dc.b		nG4,	nRst
	smpsAlterVol	$01
	dc.b		nG4,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call42:
	smpsPSGvoice	$07
	dc.b		nA4,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nA4,	nRst
	smpsAlterVol	$01
	dc.b		nA4,	nRst
	smpsAlterVol	$01
	dc.b		nA4,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call43:
	smpsPSGvoice	$07
	dc.b		nD5,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nD5,	nRst
	smpsAlterVol	$01
	dc.b		nD5,	nRst
	smpsAlterVol	$01
	dc.b		nD5,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call44:
	dc.b		nF4,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nF4,	nRst
	smpsAlterVol	$01
	dc.b		nCs4,	nRst
	smpsAlterVol	$01
	dc.b		nF4,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call45:
	dc.b		smpsNoAttack,	$0C
	smpsPSGvoice	$01
	dc.b		nD5,	$06
	smpsAlterVol	$02
	dc.b		nD5
	smpsAlterVol	$FE
	dc.b		nD5
	smpsAlterVol	$02
	dc.b		nD5,	nRst,	$0C
	smpsAlterVol	$FE
	dc.b		nE5,	$06
	smpsAlterVol	$02
	dc.b		nE5,	nRst
	smpsAlterVol	$FE
	dc.b		nE5
	smpsAlterVol	$02
	dc.b		nE5,	nRst
	smpsAlterVol	$FE
	dc.b		nE5
	smpsAlterVol	$02
	dc.b		nE5
	smpsAlterVol	$FE
	smpsReturn

Wacky_WorkBench_Past_Call46:
	dc.b		nRst,	$0C,	nD5,	$06
	smpsAlterVol	$02
	dc.b		nD5
	smpsAlterVol	$FE
	dc.b		nD5
	smpsAlterVol	$02
	dc.b		nD5,	nRst,	$0C
	smpsAlterVol	$FE
	dc.b		nE5,	$06
	smpsAlterVol	$02
	dc.b		nE5,	nRst
	smpsAlterVol	$FE
	dc.b		nE5
	smpsAlterVol	$02
	dc.b		nE5,	nRst
	smpsAlterVol	$FE
	dc.b		nE5
	smpsAlterVol	$02
	dc.b		nE5
	smpsAlterVol	$FE
	smpsReturn

Wacky_WorkBench_Past_Call47:
	dc.b		nRst,	$0C,	nC5,	$06
	smpsAlterVol	$02
	dc.b		nC5
	smpsAlterVol	$FE
	dc.b		nC5
	smpsAlterVol	$02
	dc.b		nC5,	nRst,	$0C
	smpsAlterVol	$FE
	dc.b		nD5,	$06
	smpsAlterVol	$02
	dc.b		nD5,	nRst
	smpsAlterVol	$FE
	dc.b		nD5
	smpsAlterVol	$02
	dc.b		nD5,	nRst
	smpsAlterVol	$FE
	dc.b		nD5
	smpsAlterVol	$02
	dc.b		nD5
	smpsAlterVol	$FE
	smpsReturn

Wacky_WorkBench_Past_Call48:
	smpsPSGvoice	$07
	dc.b		nBb4,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nBb4,	nRst
	smpsAlterVol	$01
	dc.b		nBb4,	nRst
	smpsAlterVol	$01
	dc.b		nBb4,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call49:
	smpsPSGvoice	$07
	dc.b		nCs4,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nCs4,	nRst
	smpsAlterVol	$01
	dc.b		nCs4,	nRst
	smpsAlterVol	$01
	dc.b		nCs4,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call4A:
	smpsPSGvoice	$07
	dc.b		nEb4,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nEb4,	nRst
	smpsAlterVol	$01
	dc.b		nEb4,	nRst
	smpsAlterVol	$01
	dc.b		nEb4,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call4B:
	smpsPSGvoice	$07
	dc.b		nF4,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nF4,	nRst
	smpsAlterVol	$01
	dc.b		nF4,	nRst
	smpsAlterVol	$01
	dc.b		nF4,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call4C:
	smpsPSGvoice	$07
	dc.b		nBb4,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nBb4,	nRst
	smpsAlterVol	$01
	dc.b		nBb4,	nRst
	smpsAlterVol	$01
	dc.b		nBb4,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call4D:
	dc.b		nCs4,	$0C,	nRst
	smpsAlterVol	$01
	dc.b		nCs4,	nRst
	smpsAlterVol	$01
	dc.b		nF4,	nRst
	smpsAlterVol	$01
	dc.b		nCs4,	nRst
	smpsAlterVol	$FD
	smpsReturn

Wacky_WorkBench_Past_Call4E:
	dc.b		smpsNoAttack,	$0C
	smpsPSGvoice	$01
	dc.b		nBb4,	$06
	smpsAlterVol	$02
	dc.b		nBb4
	smpsAlterVol	$FE
	dc.b		nBb4
	smpsAlterVol	$02
	dc.b		nBb4,	nRst,	$0C
	smpsAlterVol	$FE
	dc.b		nC5,	$06
	smpsAlterVol	$02
	dc.b		nC5,	nRst
	smpsAlterVol	$FE
	dc.b		nC5
	smpsAlterVol	$02
	dc.b		nC5,	nRst
	smpsAlterVol	$FE
	dc.b		nC5
	smpsAlterVol	$02
	dc.b		nC5
	smpsAlterVol	$FE
	smpsReturn

Wacky_WorkBench_Past_Call4F:
	dc.b		nRst,	$0C,	nBb4,	$06
	smpsAlterVol	$02
	dc.b		nBb4
	smpsAlterVol	$FE
	dc.b		nBb4
	smpsAlterVol	$02
	dc.b		nBb4,	nRst,	$0C
	smpsAlterVol	$FE
	dc.b		nC5,	$06
	smpsAlterVol	$02
	dc.b		nC5,	nRst
	smpsAlterVol	$FE
	dc.b		nC5
	smpsAlterVol	$02
	dc.b		nC5,	nRst
	smpsAlterVol	$FE
	dc.b		nC5
	smpsAlterVol	$02
	dc.b		nC5
	smpsAlterVol	$FE
	smpsReturn

Wacky_WorkBench_Past_Call50:
	dc.b		nRst,	$0C,	nAb4,	$06
	smpsAlterVol	$02
	dc.b		nAb4
	smpsAlterVol	$FE
	dc.b		nAb4
	smpsAlterVol	$02
	dc.b		nAb4,	nRst,	$0C
	smpsAlterVol	$FE
	dc.b		nBb4,	$06
	smpsAlterVol	$02
	dc.b		nBb4,	nRst
	smpsAlterVol	$FE
	dc.b		nBb4
	smpsAlterVol	$02
	dc.b		nBb4,	nRst
	smpsAlterVol	$FE
	dc.b		nBb4
	smpsAlterVol	$02
	dc.b		nBb4
	smpsAlterVol	$FE
	smpsReturn

Wacky_WorkBench_Past_Call51:
	dc.b		nRst,	$60
	smpsReturn

Wacky_WorkBench_Past_Call52:
	dc.b		smpsNoAttack,	$60
	smpsReturn

Wacky_WorkBench_Past_Call53:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0
	smpsReturn

Wacky_WorkBench_Past_Call54:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$0C
	smpsPSGvoice	$02
	dc.b		$06,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$0C
	smpsPSGvoice	$02
	dc.b		$06,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$0C
	smpsPSGvoice	$02
	dc.b		$06,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$0C
	smpsReturn

Wacky_WorkBench_Past_Call55:
	smpsPSGvoice	$02
	dc.b		nCs0,	$06,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$0C
	smpsPSGvoice	$02
	dc.b		$06,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$0C
	smpsPSGvoice	$02
	dc.b		$06,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$0C
	smpsPSGvoice	$02
	dc.b		$06,	nCs0
	smpsPSGvoice	$01
	dc.b		nCs0,	$0C
	smpsReturn

Wacky_WorkBench_Past_Call56:
	dc.b		dKick,	$18,	dQuickLooseSnare,	$93,	$95
	smpsReturn

Wacky_WorkBench_Past_Call57:
	dc.b		$93,	$18,	dQuickLooseSnare,	$93,	$95
	smpsReturn

Wacky_WorkBench_Past_Call58:
	dc.b		$93,	$0C
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	dc.b		$95
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	dc.b		$93
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	dc.b		$95
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	smpsReturn

Wacky_WorkBench_Past_Call59:
	dc.b		$93,	$0C
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	dc.b		$95
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	dc.b		$93
	smpsPan		panRight,	$00
	dc.b		$A8,	$06
	smpsPan		panCentre,	$00
	dc.b		$96,	$02,	$96,	$96,	dQuickLooseSnare,	$06,	$97,	$98
	dc.b		$99
	smpsReturn

Wacky_WorkBench_Past_Call5A:
	dc.b		dKick,	$0C
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	dc.b		$95
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	dc.b		$93
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	dc.b		$95
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	smpsReturn

Wacky_WorkBench_Past_Call5B:
	dc.b		$93,	$0C
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	dc.b		$95
	smpsPan		panRight,	$00
	dc.b		$A8
	smpsPan		panCentre,	$00
	dc.b		$93
	smpsPan		panRight,	$00
	dc.b		$A8,	$06
	smpsPan		panCentre,	$00
	dc.b		$96,	dQuickLooseSnare,	$0C,	$98,	$06,	$99
	smpsReturn

Wacky_WorkBench_Past_Voices:
	dc.b		$3B,$41,$40,$50,$10,$1F,$1F,$1F,$1E,$02,$0C,$13,$07,$12,$0A,$05
	dc.b		$04,$0F,$3F,$5F,$3F,$1D,$14,$17,$07;			Voice 00
	dc.b		$38,$0A,$08,$01,$02,$1F,$1F,$1F,$1F,$05,$08,$02,$08,$00,$00,$00
	dc.b		$00,$99,$09,$09,$19,$28,$23,$24,$7F;			Voice 01
	dc.b		$2C,$6F,$31,$31,$31,$9F,$9F,$5F,$58,$16,$10,$09,$06,$06,$03,$03
	dc.b		$03,$2F,$5F,$2F,$3F,$1F,$1A,$29,$17;			Voice 02
	dc.b		$3B,$06,$02,$02,$01,$12,$14,$19,$4F,$08,$05,$01,$01,$01,$01,$01
	dc.b		$01,$76,$FA,$F8,$F9,$1F,$39,$1F,$10;			Voice 03
	dc.b		$3E,$04,$64,$62,$01,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$09,$09,$09,$09,$21,$00,$00,$00;			Voice 04
	dc.b		$0A,$63,$06,$03,$01,$05,$03,$D1,$00,$00,$00,$30,$00,$0C,$00,$9F
	dc.b		$00,$1E,$01,$1A,$00,$1E,$01,dQuickLooseSnare,$E8;			Voice 05
	dc.b		$1E,$02,$06,$E8,$1E,$02,$77,$DC,$05,$00,$00,$02,$E6,$DC,$07,$00
	dc.b		$00,$03,$60,$DC,$03,$00,$00,$F8,$04;			Voice 06
	dc.b		$0E,$F8,$04,$22,$F8,$04,$34,$F8,$04,$46,$F8,$04,$19,$F8,$04,$16
	dc.b		$F8,$04,$28,$F8,$04,$3A,$F8,$04,$0D;			Voice 07
	dc.b		$F8,$04,$0A,$F8,$04,$1C,$F8,$04,$2E,$F8,$04,$01,$F8,$03,$FE,$F8
	dc.b		$04,$10,$F8,$04,$22,$F8,$03,$F5,$F8;			Voice 08
	dc.b		$03,$F2,$F8,$04,$04,$F8,$04,$16,$F8,$03,$E9,$F8,$03,$E6,$F8,$03
	dc.b		$F8,$F8,$04,$0A,$F8,$04,$27,$F8,$04;			Voice 09
	dc.b		$39,$F8,$03,$D7,$F8,$04,$48,$F8,$04,$1B,$F8,$04,$18,$F8,$03,$E0
	dc.b		$F8,$03,$F2,$F8,$03,$C5,$F8,$03,$C2;			Voice 0A
	dc.b		$F8,$03,$D4,$F8,$03,$E6,$F6,$FF,$9E,$F8,$04,$3F,$F8,$04,$50,$F8
	dc.b		$04,$39,$F8,$04,$5C,$E6,$F1,$F8,$04;			Voice 0B
	dc.b		$63,$F8,$04,$60,$F8,$04,$5D,$F8,$04,$5A,$E6,$0F,$F8,$04,$62,$F8
	dc.b		$04,$62,$F8,$04,$5F,$F8,$04,$5C,$F8;			Voice 0C
	dc.b		$04,$17,$F8,$04,$28,$F8,$04,$11,$F8,$04,$34,$E6,$F1,$F8,$04,$3B
	dc.b		$F8,$04,$38,$F8,$04,$35,$F8,$04,$32;			Voice 0D
	dc.b		$F8,$04,$2F,$F8,$04,$2C,$F8,$04,$29,$F8,$04,$39,$E6,$0F,$F8,$04
	dc.b		$42,$F8,$04,$4C,$F8,$04,$55,$F8,$04;			Voice 0E
	dc.b		$60,$F8,$04,$67,$F8,$04,$6D,$F8,$04,$71,$F8,$04,$77,$E6,$F1,$F8
	dc.b		$04,$07,$F8,$04,$04,$F8,$04,$01,$F8;			Voice 0F
	dc.b		$03,$FE,$E6,$0F,$F6,$FF,$92,$F8,$04,$66,$F8,$04,$77,$F8,$04,$60
	dc.b		$F8,$04,$83,$E6,$F1,$F8,$04,$8A,$F8;			Voice 10
	dc.b		$04,$87,$F8,$04,$84,$F8,$04,$81,$E6,$0F,$F8,$04,$89,$F8,$04,$89
	dc.b		$F8,$04,$86,$F8,$04,$83,$F8,$04,$3E;			Voice 11
	dc.b		$F8,$04,$4F,$F8,$04,$38,$F8,$04,$5B,$E6,$F1,$F8,$04,$62,$F8,$04
	dc.b		$5F,$F8,$04,$5C,$F8,$04,$59,$F8,$04;			Voice 12
	dc.b		$56,$F8,$04,$53,$F8,$04,$50,$F8,$04,$60,$E0,$40,$F8,$04,$69,$F8
	dc.b		$04,$8A,$F8,$04,$A9,$F8,$04,$C8,$F8;			Voice 13
	dc.b		$04,$E7,$F8,$05,$06,$F8,$05,$25,$F8,$05,$44,$E0,$C0,$F8,$04,$2E
	dc.b		$F8,$04,$2B,$F8,$04,$28,$F8,$04,$25;			Voice 14
	dc.b		$E6,$0F,$F6,$FF,$92,$E0,$80,$F8,$05,$3E,$F8,$05,$40,$F8,$05,$43
	dc.b		$F8,$05,$43,$F8,$05,$32,$F8,$05,$40;			Voice 15
	dc.b		$F8,$05,$37,$F8,$05,$37,$F8,$05,$26,$F8,$05,$34,$F8,$05,$2B,$F8
	dc.b		$05,$2B,$F8,$05,$1A,$F8,$05,$28,$F8;			Voice 16
	dc.b		$05,$1F,$F8,$05,$1F,$F8,$05,$0E,$F8,$05,$1C,$F8,$05,$13,$F8,$05
	dc.b		$13,$F8,$05,$02,$F8,$05,$10,$F8,$05;			Voice 17
	dc.b		$07,$F8,$05,$07,$F8,$05,$0C,$F8,$05,$09,$F8,$05,$06,$F8,$05,$06
	dc.b		$F8,$05,$00,$F8,$05,$05,$F8,$04,$FD;			Voice 18
	dc.b		$F8,$05,$02,$F8,$04,$DE,$F8,$04,$EC,$F8,$04,$E3,$F8,$04,$E3,$F6
	dc.b		$FF,$9E,$E0,$40,$F8,$04,$F5,$F8,$04;			Voice 19
	dc.b		$F7,$F8,$04,$F9,$F8,$04,$F9,$F8,$04,$E9,$F8,$04,$EB,$F8,$04,$ED
	dc.b		$F8,$04,$ED,$F8,$04,$DD,$F8,$04,$DF;			Voice 1A
	dc.b		$F8,$04,$E1,$F8,$04,$E1,$F8,$04,$D1,$F8,$04,$D3,$F8,$04,$D5,$F8
	dc.b		$04,$D5,$F8,$04,$C5,$F8,$04,$C7,$F8;			Voice 1B
	dc.b		$04,$C9,$F8,$04,$C9,$F8,$04,$B9,$F8,$04,$BB,$F8,$04,$BD,$F8,$04
	dc.b		$BD,$F8,$04,$BD,$F8,$04,$BD,$F8,$04;			Voice 1C
	dc.b		$B7,$F8,$04,$BC,$F8,$04,$B1,$F8,$04,$B9,$F8,$04,$AE,$F8,$04,$B6
	dc.b		$F8,$04,dQuickLooseSnare,$F8,$04,$97,$F8,$04,$99;			Voice 1D
	dc.b		$F8,$04,$99,$F6,$FF,$9E,$F8,$04,$AB,$F8,$04,$AB,$F8,$04,$A8,$F8
	dc.b		$04,$A5,$F8,$04,$A2,$F8,$04,$9F,$F8;			Voice 1E
	dc.b		$04,$9C,$F8,$04,$9C,$F8,$04,$A6,$F8,$04,$C2,$F8,$04,$FB,$F8,$05
	dc.b		$16,$F8,$05,$29,$F8,$05,$36,$F8,$05;			Voice 1F
	dc.b		$45,$F8,$05,$64,$F8,$05,$7F,$F8,$04,$78,$F8,$04,$78,$F8,$05,$A3
	dc.b		$F8,$05,$AB,$F8,$04,$6C,$F8,$04,$6C;			Voice 20
	dc.b		$F8,$04,$69,$F8,$04,$66,$F8,$04,$63,$F8,$04,$60,$F8,$04,$5D,$F8
	dc.b		$05,$98,$F8,$05,$A1,$F8,$05,$A8,$F8;			Voice 21
	dc.b		$05,$B8,$F8,$04,$4E,$F8,$04,$4B,$F8,$04,$48,$F8,$04,$45,$F6,$FF
	dc.b		$9E,$80,$06,$F0,$0C,$02,$03,$02,$F8;			Voice 22
	dc.b		$04,$35,$F8,$04,$35,$F8,$04,$32,$F8,$04,$2F,$F8,$04,$2C,$F8,$04
	dc.b		$29,$F8,$04,$26,$F8,$04,$26,$F8,$04;			Voice 23
	dc.b		$30,$F8,$04,$4C,$F8,$04,$85,$F8,$04,$A0,$F8,$04,$B3,$F8,$04,$C0
	dc.b		$F8,$04,$CF,$F8,$04,$EE,$F8,$05,$09;			Voice 24
	dc.b		$F8,$04,$02,$F8,$04,$02,$F8,$05,$2D,$E1,$FF,$F8,$05,$33,$F8,$03
	dc.b		$F4,$F8,$03,$F4,$F8,$03,$F1,$F8,$03;			Voice 25
	dc.b		$EE,$F8,$03,$EB,$F8,$03,$E8,$F8,$03,$E5,$F8,$05,$20,$F8,$05,$29
	dc.b		$F8,$05,$30,$F8,$05,$40,$F8,$03,$D6;			Voice 26
	dc.b		$F8,$03,$D3,$F8,$03,$D0,$F8,$03,$CD,$E1,$00,$F6,$FF,$9A,$F3,$E7
	dc.b		$F8,$06,$75,$F8,$06,$72,$F8,$06,$6F;			Voice 27
	dc.b		$F8,$06,$8E,$F8,$06,$9F,$F8,$06,$9C,$F8,$06,$99,$F8,$06,$96,$F8
	dc.b		$06,$93,$F8,$06,$90,$F8,$06,$8D,$F8;			Voice 28
	dc.b		$06,$8A,$F8,$06,$87,$F8,$06,$84,$F8,$06,$81,$F8,$06,$7E,$F8,$06
	dc.b		$7B,$F8,$06,$78,$F8,$06,$75,$F8,$06;			Voice 29
	dc.b		$72,$F8,$06,$6F,$F8,$06,$6C,$F8,$06,$69,$F8,$06,$66,$F8,$06,$63
	dc.b		$F8,$06,$60,$F8,$06,$5D,$F8,$06,$5A;			Voice 2A
	dc.b		$F8,$06,$57,$F8,$06,$54,$F8,$06,$51,$F8,$06,$64,$F8,$06,$4B,$F8
	dc.b		$06,$48,$F8,$06,$45,$F8,$06,$42,$F6;			Voice 2B
	dc.b		$FF,$9E,$F8,$06,$63,$F8,$06,$60,$F8,$06,$5D,$F8,$06,$5A,$F8,$06
	dc.b		$5F,$F8,$06,$6A,$F8,$06,$67,$F8,$06;			Voice 2C
	dc.b		$64,$F8,$06,$53,$F8,$06,$5E,$F8,$06,$5B,$F8,$06,$58,$F8,$06,$47
	dc.b		$F8,$06,$52,$F8,$06,$4F,$F8,$06,$4C;			Voice 2D
	dc.b		$F8,$06,$3B,$F8,$06,$46,$F8,$06,$43,$F8,$06,$40,$F8,$06,$2F,$F8
	dc.b		$06,$3A,$F8,$06,$37,$F8,$06,$34,$F8;			Voice 2E
	dc.b		$06,$23,$F8,$06,$2E,$F8,$06,$2B,$F8,$06,$28,$F8,$06,$25,$F8,$06
	dc.b		$22,$F8,$06,$1F,$F8,$06,$29,$F8,$06;			Voice 2F
	dc.b		$0B,$F8,$06,$16,$F8,$06,$13,$F8,$06,$10,$F6,$FF,$9E,$EF,$00,$8F
	dc.b		$0F,$80,$03,$8F,$05,$80,$0D,$8F,$15;			Voice 30
	dc.b		$80,$03,$8F,$0F,$80,$03,$8F,$0F,$80,$03,$E3,$8F,$0F,$80,$03,$8F
	dc.b		$05,$80,$0D,$8F,$15,$80,$03,$8F,$0F;			Voice 31
	dc.b		$80,$03,$8F,$0F,$80,$03,$E3,$94,$0F,$80,$03,$94,$05,$80,$0D,$94
	dc.b		$15,$80,$03,$94,$0F,$80,$03,$94,$0F;			Voice 32
	dc.b		$80,$03,$E3,$96,$0F,$80,$03,$96,$05,$80,$0D,$96,$15,$80,$03,$96
	dc.b		$05,$80,$01,$98,$05,$80,$01,$9B,$05;			Voice 33
	dc.b		$80,$01,$98,$05,$80,$01,$96,$06,$80,$E3,$91,$0F,$80,$03,$91,$05
	dc.b		$80,$0D,$91,$15,$80,$03,$91,$0F,$80;			Voice 34
	dc.b		$03,$91,$0F,$80,$03,$E3,$96,$0F,$80,$03,$96,$05,$80,$0D,$96,$15
	dc.b		$80,$03,$96,$0F,$80,$03,$96,$0F,$80;			Voice 35
	dc.b		$03,$E3,$98,$0F,$80,$03,$98,$05,$80,$0D,$98,$15,$80,$03,$98,$0F
	dc.b		$80,$03,$98,$0F,$80,$03,$E3,$EF,$01;			Voice 36
	dc.b		$D7,$06,$D9,$D4,$D7,$D2,$D4,$CF,$D2,$CD,$CF,$CB,$CD,$C8,$CB,$C6
	dc.b		$C8,$E3,$C3,$06,$C6,$C1,$C3,$BF,$C1;			Voice 37
	dc.b		$BC,$BF,$BA,$BC,$B7,$BA,$B5,$B7,$B3,$B5,$E3,$C3,$06,$C6,$C1,$C3
	dc.b		$BF,$C1,$BC,$BA,$80,$30,$E3,$EF,$03;			Voice 38
	dc.b		$CF,$12,$CB,$CD,$80,$06,$CF,$0C,$D4,$D2,$E3,$80,$60,$E3,$E7,$60
	dc.b		$E3,$DE,$12,$DB,$DC,$80,$06,$DB,$0C;			Voice 39
	dc.b		$D7,$06,$D7,$D7,$D7,$E3,$EF,$04,$CE,$03,$CF,$0F,$12,$18,$C8,$0C
	dc.b		$CB,$CD,$E3,$CE,$03,$CF,$0F,$D2,$12;			Voice 3A
	dc.b		$18,$D0,$0C,$CF,$CB,$E3,$CA,$06,$C6,$0C,$C6,$C3,$06,$C6,$18,$C3
	dc.b		$0C,$C6,$C8,$E3,$C9,$12,$D4,$D4,$0C;			Voice 3B
	dc.b		$12,$D2,$D0,$0C,$E3,$CE,$06,$CF,$0C,$CD,$12,$CB,$3C,$E3,$80,$3C
	dc.b		$C8,$0C,$CB,$CD,$E3,$CE,$12,$CD,$CB;			Voice 3C
	dc.b		$18,$C7,$D2,$0C,$E3,$E7,$48,$80,$18,$E3,$EF,$01,$CB,$06,$CD,$C8
	dc.b		$CB,$C6,$C8,$C3,$C6,$C1,$C3,$BF,$C1;			Voice 3D
	dc.b		$BC,$BF,$BA,$BC,$E3,$B7,$06,$BA,$B5,$B7,$B3,$B5,$B0,$B3,$AE,$B0
	dc.b		$AB,$AE,$A9,$AB,$A7,$A9,$E3,$B7,$06;			Voice 3E
	dc.b		$BA,$B5,$B7,$B3,$B5,$B0,$AE,$80,$30,$E3,$EF,$03,$C3,$12,$BF,$C1
	dc.b		$80,$06,$C3,$0C,$C8,$C6,$E3,$80,$60;			Voice 3F
	dc.b		$E3,$E7,$60,$E3,$D2,$12,$CF,$D0,$80,$06,$CF,$0C,$CB,$06,$CB,$CB
	dc.b		$CB,$E3,$EF,$05,$A9,$03,$AC,$B0,$B5;			Voice 40
	dc.b		$B8,$BC,$BF,$C3,$C3,$BF,$BC,$B8,$B5,$B0,$AC,$A7,$A9,$AC,$B0,$B5
	dc.b		$B8,$BC,$BF,$C3,$C3,$BF,$BC,$B8,$B5;			Voice 41
	dc.b		$B0,$AC,$A7,$E3,$A2,$03,$A9,$AE,$B2,$B5,$BA,$BE,$C3,$BE,$BA,$B5
	dc.b		$B2,$AE,$A9,$A6,$A2,$A2,$A9,$AE,$B2;			Voice 42
	dc.b		$B5,$BA,$BE,$C3,$BE,$BA,$B5,$B2,$AE,$A9,$A6,$A2,$E3,$A7,$03,$AB
	dc.b		$B3,$B7,$BA,$BE,$BF,$C3,$C6,$C3,$BF;			Voice 43
	dc.b		$BE,$BA,$B7,$B3,$AB,$A7,$AB,$B3,$B7,$BA,$BE,$BF,$C3,$C6,$C3,$BF
	dc.b		$BE,$BA,$B7,$B3,$AB,$E3,$A7,$03,$AB;			Voice 44
	dc.b		$B0,$B4,$B7,$BC,$BF,$C1,$C3,$C4,$C6,$C9,$CB,$CF,$D0,$D2,$D4,$D0
	dc.b		$CF,$CB,$C9,$C6,$C4,$C3,$C1,$BF,$BA;			Voice 45
	dc.b		$B8,$B7,$B4,$B0,$AB,$E3,$AC,$03,$B0,$B5,$B8,$BC,$BF,$C1,$C4,$C1
	dc.b		$BF,$BC,$B8,$B5,$B0,$AC,$A9,$AC,$B0;			Voice 46
	dc.b		$B5,$B8,$BC,$BF,$C1,$C4,$C1,$BF,$BC,$B8,$B5,$B0,$AC,$A9,$E3,$AC
	dc.b		$03,$B0,$B3,$B5,$B8,$BC,$BF,$C1,$C4;			Voice 47
	dc.b		$C8,$CB,$CD,$D0,$D4,$D7,$D9,$DC,$D9,$D7,$D4,$D0,$CD,$CB,$C8,$C4
	dc.b		$C1,$BF,$BC,$B8,$B5,$B3,$B0,$E3,$AC;			Voice 48
	dc.b		$03,$AF,$B3,$B5,$B8,$BB,$BF,$C1,$C4,$C1,$BF,$BB,$B8,$B5,$B3,$AF
	dc.b		$B3,$B5,$B8,$BB,$BF,$C1,$C4,$C7,$CB;			Voice 49
	dc.b		$CD,$D0,$D3,$D7,$D9,$DC,$DE,$E3,$DC,$03,$D9,$D6,$D4,$D2,$D0,$CD
	dc.b		$CA,$C8,$C6,$C4,$C1,$BE,$BA,$80,$36;			Voice 4A
	dc.b		$E3,$EF,$02,$B7,$60,$E3,$E7,$30,$B8,$18,$BA,$E3,$B3,$60,$E3,$B5
	dc.b		$60,$E3,$E7,$48,$BA,$18,$E3,$B7,$60;			Voice 4B
	dc.b		$E3,$EF,$02,$B8,$60,$E3,$E7,$60,$E3,$B5,$24,$B2,$0C,$80,$30,$E3
	dc.b		$EF,$02,$B3,$60,$E3,$E7,$48,$B7,$18;			Voice 4C
	dc.b		$E3,$B0,$60,$E3,$B2,$60,$E3,$B3,$60,$E3,$EF,$02,$B5,$60,$E3,$B4
	dc.b		$60,$E3,$E7,$60,$E3,$B0,$24,$AE,$0C;			Voice 4D
	dc.b		$80,$30,$E3,$80,$60,$E3,$E7,$60,$E3,$80,$36,$F5,$00,$AE,$06,$B0
	dc.b		$B3,$B5,$B7,$BA,$BC,$E3,$BF,$12,$BA;			Voice 4E
	dc.b		$06,$80,$BF,$C8,$CB,$CD,$01,$E1,$FC,$E7,$CD,$E1,$00,$E7,$CE,$E1
	dc.b		$FC,$E7,$CE,$E1,$00,$E7,$CF,$20,$D2;			Voice 4F
	dc.b		$06,$80,$E3,$D2,$06,$CF,$08,$E7,$CD,$01,$E7,$CC,$E7,$CB,$02,$E7
	dc.b		$CC,$06,$CD,$CB,$C8,$CB,$CD,$80,$CD;			Voice 50
	dc.b		$01,$E1,$FE,$E7,$CD,$E1,$FC,$E7,$CD,$E1,$FA,$E7,$CD,$E1,$00,$E7
	dc.b		$CE,$E1,$FE,$E7,$CE,$E1,$FC,$E7,$CE;			Voice 51
	dc.b		$E1,$FA,$E7,$CE,$E1,$00,$E7,$CF,$10,$D2,$06,$80,$E3,$D2,$06,$C8
	dc.b		$01,$E1,$04,$E7,$C8,$E1,$00,$E7,$C7;			Voice 52
	dc.b		$E1,$04,$E7,$C7,$E1,$00,$E7,$C6,$2E,$80,$0A,$C2,$06,$C3,$C6,$C8
	dc.b		$80,$E3,$E7,$06,$C2,$01,$E7,$C1,$0B;			Voice 53
	dc.b		$BF,$06,$C1,$BC,$BF,$C1,$C3,$BF,$BC,$BA,$BC,$BF,$80,$B8,$E3,$BA
	dc.b		$06,$B3,$B5,$80,$B3,$0C,$B8,$06,$B7;			Voice 54
	dc.b		$24,$BA,$06,$BC,$BA,$E3,$BA,$06,$C3,$BF,$BA,$BC,$BF,$C1,$BF,$C1
	dc.b		$C3,$C6,$C8,$BF,$C3,$BC,$BF,$E3,$BF;			Voice 55
	dc.b		$01,$E7,$C0,$E7,$C1,$0A,$80,$0C,$C6,$06,$C3,$C6,$CB,$80,$C4,$C6
	dc.b		$01,$E7,$C3,$03,$E7,$C6,$02,$CA,$E7;			Voice 56
	dc.b		$CB,$04,$80,$06,$CD,$80,$CD,$E3,$CF,$0C,$01,$E7,$D0,$05,$D6,$06
	dc.b		$D2,$D0,$CF,$CD,$D0,$CF,$CA,$CA,$01;			Voice 57
	dc.b		$E7,$C8,$E7,$C6,$02,$E7,$C8,$C4,$06,$C3,$C4,$C1,$E3,$C3,$30,$E1
	dc.b		$02,$E7,$01,$E1,$04,$E7,$C3,$E1,$06;			Voice 58
	dc.b		$E7,$C3,$E1,$08,$E7,$C3,$03,$E1,$0A,$E7,$07,$E1,$08,$E7,$03,$E1
	dc.b		$06,$E7,$01,$E1,$04,$E7,$C3,$E1,$02;			Voice 59
	dc.b		$E7,$C3,$E1,$00,$E7,$C3,$1D,$E3,$E7,$24,$F5,$08,$CB,$0C,$CA,$C8
	dc.b		$C6,$C4,$E3,$F5,$00,$BF,$60,$E3,$E7;			Voice 5A
	dc.b		$3C,$F5,$00,$BC,$06,$80,$BF,$80,$C1,$80,$E3,$C3,$09,$80,$C1,$80
	dc.b		$BF,$30,$80,$0C,$E3,$C2,$0C,$80,$06;			Voice 5B
	dc.b		$C1,$0C,$80,$06,$BF,$12,$80,$06,$BB,$12,$80,$06,$C6,$0C,$E3,$E7
	dc.b		$48,$80,$18,$E3,$80,$60,$E3,$E7,$60;			Voice 5C
	dc.b		$E3,$80,$36,$F5,$00,$A7,$06,$A9,$AB,$AE,$B0,$B3,$B5,$E3,$BA,$12
	dc.b		$B7,$06,$80,$C6,$C1,$C3,$C6,$01,$E7;			Voice 5D
	dc.b		$C6,$E7,$C7,$E7,$C7,$E7,$C8,$20,$80,$0C,$E3,$E7,$06,$D2,$CF,$08
	dc.b		$E7,$CD,$01,$E7,$CC,$E7,$CB,$02,$E7;			Voice 5E
	dc.b		$CC,$06,$CD,$CB,$C8,$CB,$CD,$80,$CD,$01,$E7,$CD,$E7,$CD,$E7,$CD
	dc.b		$E7,$CE,$E7,$CE,$E7,$CE,$E7,$CE,$E7;			Voice 5F
	dc.b		$CF,$10,$D2,$06,$E3,$80,$06,$D2,$C8,$01,$E7,$C8,$E7,$C7,$E7,$C7
	dc.b		$E7,$C6,$2E,$80,$0A,$C2,$06,$C3,$C6;			Voice 60
	dc.b		$C8,$E3,$80,$0C,$C2,$01,$E7,$C1,$0B,$BF,$06,$C1,$BC,$BF,$C1,$C3
	dc.b		$BF,$BC,$BA,$BC,$BF,$B5,$E3,$B7,$06;			Voice 61
	dc.b		$B7,$B8,$80,$B7,$0C,$B5,$06,$B3,$24,$80,$06,$BA,$BC,$E3,$C3,$06
	dc.b		$BF,$BA,$BC,$BF,$C1,$BF,$C1,$C3,$C6;			Voice 62
	dc.b		$C8,$BF,$C3,$BC,$BF,$C1,$E3,$C1,$06,$BF,$01,$E7,$C0,$E7,$C1,$0A
	dc.b		$80,$0C,$C6,$06,$C3,$C6,$CB,$80,$C4;			Voice 63
	dc.b		$C6,$01,$E7,$C3,$03,$E7,$C6,$02,$CA,$E7,$CB,$04,$80,$06,$CD,$80
	dc.b		$E3,$CD,$06,$CF,$0C,$01,$E7,$05,$D6;			Voice 64
	dc.b		$06,$D2,$D0,$CF,$CD,$D0,$CF,$CA,$CA,$01,$E7,$C8,$E7,$C6,$02,$E7
	dc.b		$C8,$C4,$06,$C3,$C4,$E3,$C1,$06,$C3;			Voice 65
	dc.b		$30,$E7,$01,$E7,$C3,$E7,$C3,$E7,$C3,$03,$E7,$07,$E7,$03,$E7,$01
	dc.b		$E7,$C3,$E7,$C3,$E7,$C3,$17,$E3,$E7;			Voice 66
	dc.b		$06,$80,$5A,$E3,$E7,$24,$F5,$08,$BF,$0C,$BE,$BC,$BA,$B8,$E3,$80
	dc.b		$06,$F5,$00,$BF,$5A,$E3,$E7,$41,$F5;			Voice 67
	dc.b		$00,$BC,$06,$80,$BF,$80,$C1,$07,$E3,$80,$06,$C3,$09,$80,$C1,$80
	dc.b		$BF,$30,$80,$06,$E3,$E7,$06,$C2,$0C;			Voice 68
	dc.b		$80,$06,$C1,$0C,$80,$06,$BF,$12,$80,$06,$BB,$12,$80,$06,$C6,$E3
	dc.b		$E7,$4E,$80,$12,$E3,$F5,$02,$82,$06;			Voice 69
	dc.b		$82,$F5,$01,$82,$0C,$F5,$02,$06,$82,$F5,$01,$82,$0C,$F5,$02,$06
	dc.b		$82,$F5,$01,$82,$0C,$F5,$02,$06,$82;			Voice 6A
	dc.b		$F5,$01,$82,$0C,$E3,$F5,$02,$82,$06,$82,$F5,$01,$82,$0C,$F5,$02
	dc.b		$06,$82,$F5,$01,$82,$0C,$80,$30,$E3;			Voice 6B
	dc.b		$F5,$02,$82,$0C,$F5,$01,$82,$F5,$02,$82,$82,$06,$82,$82,$0C,$06
	dc.b		$82,$82,$0C,$06,$82,$E3,$F5,$02,$82;			Voice 6C
	dc.b		$0C,$F5,$01,$82,$F5,$02,$82,$82,$06,$82,$80,$0C,$24,$E3,$81,$12
	dc.b		$81,$81,$18,$12,$81,$E3,$8F,$12,$81;			Voice 6D
	dc.b		$06,$82,$0C,$81,$18,$0C,$82,$06,$81,$12,$E3,$81,$12,$06,$82,$0C
	dc.b		$81,$18,$0C,$82,$06,$81,$12,$E3,$81;			Voice 6E
	dc.b		$12,$06,$82,$0C,$81,$18,$12,$81,$E3,$3A,$61,$3C,$14,$31,$9C,$DB
	dc.b		$9C,$DA,$04,$09,$04,$03,$03,$01,$03;			Voice 6F
	dc.b		$00,$1F,$0F,$0F,$AF,$21,$47,$31,$80,$0F,$1F,$00,$0A,$7F,$1F,$1F
	dc.b		$1F,$1F,$1D,$1F,$18,$14,$0F,$0E,$0F;			Voice 70
	dc.b		$0E,$07,$07,$07,$86,$00,$00,$00,$00,$2C,$64,$64,$34,$34,$1F,$12
	dc.b		$1F,$1F,$00,$00,$00,$00,$00,$01,$00;			Voice 71
	dc.b		$01,$0F,$3F,$0F,$3F,$16,$00,$17,$00,$20,$66,$65,$60,$61,$DF,$DF
	dc.b		$9F,$9F,$07,$06,$09,$06,$07,$06,$06;			Voice 72
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$09,$3B,$04,$02,$04,$01,$0D,$1F
	dc.b		$19,$12,$00,$00,$0E,$07,$00,$00,$00;			Voice 73
	dc.b		$00,$07,$08,$24,$18,$23,$26,$2A,$00,$36,$32,$04,$61,$3F,$5F,$5F
	dc.b		$5F,$5F,$0C,$0D,$09,$10,$09,$08,$08;			Voice 74
	dc.b		$10,$30,$35,$36,$D5,$2B,$10,$10,$1D,$00;			Voice 75
	even
