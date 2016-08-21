; Standard Octave Pitch Equates
smpsPitch10lo		EQU	$88
smpsPitch09lo		EQU	$94
smpsPitch08lo		EQU	$A0
smpsPitch07lo		EQU	$AC
smpsPitch06lo		EQU	$B8
smpsPitch05lo		EQU	$C4
smpsPitch04lo		EQU	$D0
smpsPitch03lo		EQU	$DC
smpsPitch02lo		EQU	$E8
smpsPitch01lo		EQU	$F4
smpsPitch00		EQU	$00
smpsPitch01hi		EQU	$0C
smpsPitch02hi		EQU	$18
smpsPitch03hi		EQU	$24
smpsPitch04hi		EQU	$30
smpsPitch05hi		EQU	$3C
smpsPitch06hi		EQU	$48
smpsPitch07hi		EQU	$54
smpsPitch08hi		EQU	$60
smpsPitch09hi		EQU	$6C
smpsPitch10hi		EQU	$78

; Note Equates
nRst			EQU	$80
nC0			EQU	$81
nCs0			EQU	$82
nD0			EQU	$83
nEb0			EQU	$84
nE0			EQU	$85
nF0			EQU	$86
nFs0			EQU	$87
nG0			EQU	$88
nAb0			EQU	$89
nA0			EQU	$8A
nBb0			EQU	$8B
nB0			EQU	$8C
nC1			EQU	$8D
nCs1			EQU	$8E
nD1			EQU	$8F
nEb1			EQU	$90
nE1			EQU	$91
nF1			EQU	$92
nFs1			EQU	$93
nG1			EQU	$94
nAb1			EQU	$95
nA1			EQU	$96
nBb1			EQU	$97
nB1			EQU	$98
nC2			EQU	$99
nCs2			EQU	$9A
nD2			EQU	$9B
nEb2			EQU	$9C
nE2			EQU	$9D
nF2			EQU	$9E
nFs2			EQU	$9F
nG2			EQU	$A0
nAb2			EQU	$A1
nA2			EQU	$A2
nBb2			EQU	$A3
nB2			EQU	$A4
nC3			EQU	$A5
nCs3			EQU	$A6
nD3			EQU	$A7
nEb3			EQU	$A8
nE3			EQU	$A9
nF3			EQU	$AA
nFs3			EQU	$AB
nG3			EQU	$AC
nAb3			EQU	$AD
nA3			EQU	$AE
nBb3			EQU	$AF
nB3			EQU	$B0
nC4			EQU	$B1
nCs4			EQU	$B2
nD4			EQU	$B3
nEb4			EQU	$B4
nE4			EQU	$B5
nF4			EQU	$B6
nFs4			EQU	$B7
nG4			EQU	$B8
nAb4			EQU	$B9
nA4			EQU	$BA
nBb4			EQU	$BB
nB4			EQU	$BC
nC5			EQU	$BD
nCs5			EQU	$BE
nD5			EQU	$BF
nEb5			EQU	$C0
nE5			EQU	$C1
nF5			EQU	$C2
nFs5			EQU	$C3
nG5			EQU	$C4
nAb5			EQU	$C5
nA5			EQU	$C6
nBb5			EQU	$C7
nB5			EQU	$C8
nC6			EQU	$C9
nCs6			EQU	$CA
nD6			EQU	$CB
nEb6			EQU	$CC
nE6			EQU	$CD
nF6			EQU	$CE
nFs6			EQU	$CF
nG6			EQU	$D0
nAb6			EQU	$D1
nA6			EQU	$D2
nBb6			EQU	$D3
nB6			EQU	$D4
nC7			EQU	$D5
nCs7			EQU	$D6
nD7			EQU	$D7
nEb7			EQU	$D8
nE7			EQU	$D9
nF7			EQU	$DA
nFs7			EQU	$DB
nG7			EQU	$DC
nAb7			EQU	$DD
nA7			EQU	$DE
nBb7			EQU	$DF

; DAC Equates
dSnareS3 equ $81
dSnare equ dSnareS3
dHighTom equ $82
dHiTom	equ	dHighTom
dMidTomS3 equ $83
dMidTom equ dMidTomS3
dLowTomS3 equ $84
dLowTom	equ dLowTomS3
dFloorTomS3 equ $85
dKickS3 equ $86
dKick equ dKickS3
dMuffledSnare equ $87
dCrashCymbal equ dMuffledSnare+1
dRideCymbal equ $89
dLowMetalHit equ $8A
dMetalHit equ $8B
dHighMetalHit equ $8C
dHigherMetalHit equ dHighMetalHit+1
dMidMetalHit equ $8E
dClapS3 equ $8F
dElectricHighTom equ $90
dElectricMidTom equ dElectricHighTom+1
dElectricLowTom equ $92
dElectricFloorTom equ $93
dTightSnare equ dElectricFloorTom+1
dMidpitchSnare equ $95
dLooseSnare equ $96
dLooserSnare equ $97
dHiTimpaniS3 equ dLooserSnare+1
dHiTimpani equ dHiTimpaniS3
dLowTimpaniS3 equ $99
dLowTimpani equ dLowTimpaniS3
dMidTimpaniS3 equ $9A
dMidTimpani equ dMidTimpaniS3
dQuickLooseSnare equ $9B
dClick equ dQuickLooseSnare+1
dPowerKick equ $9D
dQuickGlassCrash equ $9E
dGlassCrashSnare equ dQuickGlassCrash+1
dGlassCrash equ $A0
dGlassCrashKick equ $A1
dQuietGlassCrash equ $A2
dOddSnareKick equ dQuietGlassCrash+1
dKickExtraBass equ $A4
dComeOn equ $A5
dDanceSnare equ $A6
dLooseKick equ $A7
dModLooseKick equ dLooseKick+1
dWoo equ $A9
dGo equ $AA
dSnareGo equ $AB
dPowerTom equ $AC
dHiWoodBlock equ $AD
dLowWoodBlock equ $AE
dHiHitDrum equ dLowWoodBlock+1
dLowHitDrum equ $B0
dMetalCrashHit equ $B1
dEchoedClapHit equ $B2
dEchoedClapHit_S3 equ dEchoedClapHit
dLowerEchoedClapHit equ dEchoedClapHit+1
dLowerEchoedClapHit_S3 equ	dLowerEchoedClapHit
dHipHopHitKick equ $B4
dHipHopHitPowerKick equ $B5
dBassHey equ dHipHopHitPowerKick+1
dDanceStyleKick equ $B7
dHipHopHitKick2 equ $B8
dHipHopHitKick3 equ $B9
dReverseFadingWind equ dHipHopHitKick3+1
dScratchS3 equ $BB
dLooseSnareNoise equ $BC
dPowerKick2 equ $BD
dCrashingNoiseWoo equ dPowerKick2+1
dQuickHit equ $BF
dKickHey equ $C0
dPowerKickHit equ $C1
dLowPowerKickHit equ dPowerKickHit+1
dLowerPowerKickHit equ $C3
dLowestPowerKickHit equ $C4
dKickS1 equ $C5
dSnareS1 equ $C6
dTimpaniS1	EQU	$C7
dHiTimpaniS1 equ $CC
dMidTimpaniS1 equ $CD
dLowTimpaniS1 equ $CE
dVLowTimpani equ $CF
dSAVSnare equ $D6
dSAVSnare2 equ $D7
; ---------------------------------------------------------------------------------------------
; PSG flutter equates
fTone_01	equ		$01
fTone_02	equ		fTone_01+1
fTone_03	equ		fTone_02+1
fTone_04	equ		fTone_03+1
fTone_05	equ		fTone_04+1
fTone_06	equ		fTone_05+1
fTone_07	equ		fTone_06+1
fTone_08	equ		fTone_07+1
fTone_09	equ		fTone_08+1
fTone_0A	equ		fTone_09+1
fTone_0B	equ		fTone_0A+1
fTone_0C	equ		fTone_0B+1
fTone_0D	equ		fTone_0C+1

sTone_01	equ		$01
sTone_02	equ		sTone_01+1
sTone_03	equ		sTone_02+1
sTone_04	equ		sTone_03+1
sTone_05	equ		sTone_04+1
sTone_06	equ		sTone_05+1
sTone_07	equ		sTone_06+1
sTone_08	equ		sTone_07+1
sTone_09	equ		sTone_08+1
sTone_0A	equ		sTone_09+1
sTone_0B	equ		sTone_0A+1
sTone_0C	equ		sTone_0B+1
sTone_0D	equ		sTone_0C+1
sTone_0E	equ		sTone_0D+1
sTone_0F	equ		sTone_0E+1
sTone_10	equ		sTone_0F+1
sTone_11	equ		sTone_10+1
sTone_12	equ		sTone_11+1
sTone_13	equ		sTone_12+1
sTone_14	equ		sTone_13+1
sTone_15	equ		sTone_14+1
sTone_16	equ		sTone_15+1
sTone_17	equ		sTone_16+1
sTone_18	equ		sTone_17+1
sTone_19	equ		sTone_18+1
sTone_1A	equ		sTone_19+1
sTone_1B	equ		sTone_1A+1
sTone_1C	equ		sTone_1B+1
sTone_1D	equ		sTone_1C+1
sTone_1E	equ		sTone_1D+1
sTone_1F	equ		sTone_1E+1
sTone_20	equ		sTone_1F+1
sTone_21	equ		sTone_20+1
sTone_22	equ		sTone_21+1
sTone_23	equ		sTone_22+1
sTone_24	equ		sTone_23+1
sTone_25	equ		sTone_24+1
sTone_26	equ		sTone_25+1
sTone_27	equ		sTone_26+1
		; For conversions:

; ---------------------------------------------------------------------------------------------
; Channel IDs for SFX
cPSG1				EQU $80
cPSG2				EQU $A0
cPSG3				EQU $C0
cNoise				EQU $E0	; Not for use in S3/S&K/S3D
cFM3				EQU $02
cFM4				EQU $04
cFM5				EQU $05
cFM6				EQU $06	; Only in S3/S&K/S3D, overrides DAC

; ---------------------------------------------------------------------------------------------
; Header Macros
smpsHeaderStartSong macro ver
;SourceDriver set ver
songStart set *
	endm

smpsHeaderStartSongConvert macro ver
;SourceDriver set ver
songStart set *
	endm
; Header - Set up FM Channel
smpsHeaderSFXChannel macro chanid,loc,pitch,vol
;	if (SonicDriverVer> equ 3)&&(chanid equ  equ cNoise)
;		fatal "Using channel ID of cNoise ($E0) in Sonic 3 driver is dangerous. Fix the song so that it turns into a noise channel instead."
;	elseif (SonicDriverVer<3)&&(chanid equ  equ cFM6)
;		fatal "Using channel ID of FM6 ($06) in Sonic 1 or Sonic 2 drivers is unsupported. Change it to another channel."
;	endif
	dc.b	$80,chanid
;	if SonicDriverVer<>1
;		dc.w	z80_ptr(loc)
;	else
		dc.w	loc-songStart
;	endif
;	if (chanid&$80)<>0
;		PSGPitchConvert pitch
;	else
		dc.b	pitch
;	endif
	dc.b	vol
	endm

smpsHeaderVoiceUVB macro
;	if songStart<>*
;		fatal "Missing smpsHeaderStartSong or smpsHeaderStartSongConvert"
;	endif
;	if SonicDriverVer==0
		dc.l	UniVoiceBank
;	elseif SonicDriverVer>=3
;		dc.w	little_endian(z80_UniVoiceBank)
;	endif
	endm
; Header Macros
; Header - Set up Voice Location
smpsHeaderVoice macro loc
songStart set *
	dc.w	loc-songStart
	endm
; Header - Set up Channel Usage	
smpsHeaderChan macro fm,psg
	dc.b	fm,psg
	endm
; Header - Set up Tempo
smpsHeaderTempo macro div,mod
	dc.b	div,mod
	endm
; Header - Set up DAC Channel
smpsHeaderDAC macro loc
	dc.w	loc-songStart
	dc.w	$00
	endm
; Header macros for SFX (not for music)
; Header - Set up Tempo
smpsHeaderTempoSFX macro div
	dc.b	div
	endm
; EFxx[yy] - Set Voice of FM channel to xx; xx < 0 means yy present
smpsSetvoice macro voice,songID
;	if (SonicDriverVer> equ 3)&&("songID"<>"")
;		dc.b	$EF,voice|$80,songID+$81
;	else
		dc.b	$EF,voice
;	endif
	endm
; Header - Set up Channel Usage
smpsHeaderChanSFX macro chan
	dc.b	chan
	endm
; Header - Set up FM Channel	
smpsHeaderFM macro loc,pitch,vol
	dc.w	loc-songStart
	dc.b	pitch,vol
	endm
; Header - Set up PSG Channel
smpsHeaderPSG macro loc,pitch,vol,voice
	dc.w	loc-songStart
	dc.b	pitch,vol
	dc.w	voice
	endm

; Co-ord Flag Macros and Equates
; E0xx - Panning, AMS, FMS
smpsPan macro direction,amsfms
panNone set $00
panRight set $40
panLeft set $80
panCentre set $C0
panCenter set $C0 ; silly Americans :U
	dc.b $E0,direction+amsfms
	endm
	
; E1xx - Alter note values by xx
smpsAlterNote macro val
	dc.b	$E1,val
	endm
	
; E2xx - Unknown
smpsE2 macro val
	dc.b	$E2,val
	endm

; E3 - Return (generally used after F8)
smpsReturn macro val
	dc.b	$E3
	endm
	
; E4 - Fade in previous song (ie. 1-Up)
smpsFade macro val
	dc.b	$E4
	endm

; E5xx - Set channel tempo divider to xx
smpsChanTempoDiv macro val
	dc.b	$E5,val
	endm
	
; E6xx - Alter Volume by xx
smpsAlterVol macro val
	dc.b	$E6,val
	endm
	
; E7 - Prevent attack of next note
smpsNoAttack	EQU $E7

; E8xx - Set note fill to xx
smpsNoteFill macro val
	dc.b	$E8,val
	endm
	
; E9xx - Add xx to channel pitch
smpsAlterPitch macro val
	dc.b	$E9,val
	endm
	
; EAxx - Set music tempo modifier to xx
smpsSetTempoMod macro val
	dc.b	$EA,val
	endm
	
; EBxx - Set music tempo divider to xx
smpsSetTempoDiv macro val
	dc.b	$EB,val
	endm
	
; ECxx - Set Volume to xx
smpsSetVol macro val
	dc.b	$EC,val
	endm
	
; Works on all drivers
smpsPSGAlterVol macro vol
	dc.b	$EC,vol
	endm
; ED - Unknown
smpsED		EQU $ED
	
; EE - Unknown (Something to do with voice selection)
smpsEE 		EQU $EE
	
; EFxx - Set Voice of FM channel to xx
smpsFMvoice macro voice
	dc.b	$EF,voice
	endm

; F0wwxxyyzz - Modulation - ww: wait time - xx: modulation speed - yy: change per step - zz: number of steps
smpsModSet macro wait,speed,change,step
	dc.b	$F0,wait,speed,change,step
	endm
	
; F1 - Turn on Modulation
smpsModOn 	EQU $F1

; Set Modulation
smpsModChange2 macro fmmod,psgmod
	dc.b	$F1,fmmod,psgmod
	endm

; Set Modulation
smpsModChange macro val
	dc.b	$F4,val
	endm

; F2 - End of channel
smpsStop macro
	dc.b	$F2
	endm
	
; F3xx - PSG waveform to xx
smpsPSGform macro form
	dc.b	$F3,form
	endm

; Turn off Modulation
smpsModOff macro
;	if SonicDriverVer> equ 3
;		dc.b	$FA
;	else
		dc.b	$F4
;	endif
	endm
	
; F5xx - PSG voice to xx
smpsPSGvoice macro voice
	dc.b	$F5,voice
	endm

; F6xxxx - Jump to xxxx
smpsJump macro loc
	dc.b	$F6
	dc.w	loc-*-1
	endm

; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing
smpsLoop macro index,loops,loc
	dc.b	$F7
	dc.b	index,loops
	dc.w	loc-*-1
	endm

; F8xxxx - Call pattern at xxxx, saving return point
smpsCall macro loc
	dc.b	$F8
	dc.w	loc-*-1
	endm

; ---------------------------------------------------------------------------------------------
; Alter Volume
smpsFMAlterVol macro val1,val2
;	if (SonicDriverVer> equ 3)&&("val2"<>"")
;		dc.b	$E5,val1,val2
;	else
		dc.b	$E6,val1
;	endif
	endm
; F9 - Unknown
smpsF9		EQU $F9

; Voices - Feedback
smpsVcFeedback macro val
vcFeedback set val
	endm

; Voices - Algorithm
smpsVcAlgorithm macro val
vcAlgorithm set val
	endm

smpsVcUnusedBits macro val
vcUnusedBits set val
	endm

; Voices - Detune
smpsVcDetune macro op1,op2,op3,op4
vcDT1 set op1
vcDT2 set op2
vcDT3 set op3
vcDT4 set op4
	endm

; Voices - Coarse-Frequency
smpsVcCoarseFreq macro op1,op2,op3,op4
vcCF1 set op1
vcCF2 set op2
vcCF3 set op3
vcCF4 set op4
	endm

; Voices - Rate Scale
smpsVcRateScale macro op1,op2,op3,op4
vcRS1 set op1
vcRS2 set op2
vcRS3 set op3
vcRS4 set op4
	endm

; Voices - Attack Rate
smpsVcAttackRate macro op1,op2,op3,op4
vcAR1 set op1
vcAR2 set op2
vcAR3 set op3
vcAR4 set op4
	endm

; Voices - Amplitude Modulation
smpsVcAmpMod macro op1,op2,op3,op4
vcAM1 set op1
vcAM2 set op2
vcAM3 set op3
vcAM4 set op4
	endm

; Voices - First Decay Rate
smpsVcDecayRate1 macro op1,op2,op3,op4
vcD1R1 set op1
vcD1R2 set op2
vcD1R3 set op3
vcD1R4 set op4
	endm

; Voices - Second Decay Rate
smpsVcDecayRate2 macro op1,op2,op3,op4
vcD2R1 set op1
vcD2R2 set op2
vcD2R3 set op3
vcD2R4 set op4
	endm

; Voices - Decay Level	
smpsVcDecayLevel macro op1,op2,op3,op4
vcDL1 set op1
vcDL2 set op2
vcDL3 set op3
vcDL4 set op4
	endm

; Voices - Release Rate
smpsVcReleaseRate macro op1,op2,op3,op4
vcRR1 set op1
vcRR2 set op2
vcRR3 set op3
vcRR4 set op4
	endm

; Voices - Total Level
smpsVcTotalLevel macro op1,op2,op3,op4
vcTL1 set op1
vcTL2 set op2
vcTL3 set op3
vcTL4 set op4
	dc.b	(vcFeedback<<3)+vcAlgorithm
	dc.b	(vcDT4<<4)+vcCF4,(vcDT3<<4)+vcCF3,(vcDT2<<4)+vcCF2,(vcDT1<<4)+vcCF1
	dc.b	(vcRS4<<6)+vcAR4,(vcRS3<<6)+vcAR3,(vcRS2<<6)+vcAR2,(vcRS1<<6)+vcAR1
	dc.b	(vcAM4<<5)+vcD1R4,(vcAM3<<5)+vcD1R3,(vcAM2<<5)+vcD1R2,(vcAM1<<5)+vcD1R1
	dc.b	vcD2R4,vcD2R3,vcD2R2,vcD2R1
	dc.b	(vcDL4<<4)+vcRR4,(vcDL3<<4)+vcRR3,(vcDL2<<4)+vcRR2,(vcDL1<<4)+vcRR1
	dc.b	vcTL4,vcTL3,vcTL2,vcTL1	
	endm
