; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Sun Jan 13 2013, 16:27:52
; -------------------------------------------------------

ssonicv_Header:
	smpsHeaderVoice	ssonicv_Voices
	smpsHeaderChan	6,3
	smpsHeaderTempo	$1, $3
	smpsHeaderDAC	ssonicv_DAC
	smpsHeaderFM	ssonicv_FM1,	$f4, $10
	smpsHeaderFM	ssonicv_FM2,	$f4, $14
	smpsHeaderFM	ssonicv_FM3,	$0, $a
	smpsHeaderFM	ssonicv_FM4,	$f4, $16
	smpsHeaderFM	ssonicv_FM5,	$f4, $14
	smpsHeaderPSG	ssonicv_PSG1,	$dc, $4, $0
	smpsHeaderPSG	ssonicv_PSG2,	$dc, $2, $0
	smpsHeaderPSG	ssonicv_PSG3,	$dc, $2, $0

ssonicv_FM1:
	smpsCall	ssonicv_FM1_p0
ssonicv_FM1_Loop:
	smpsCall	ssonicv_FM1_p1
	smpsCall	ssonicv_FM1_p2
	smpsCall	ssonicv_FM1_p3
	smpsJump	ssonicv_FM1_Loop

ssonicv_FM2:
	smpsCall	ssonicv_FM2_p0
ssonicv_FM2_Loop:
	smpsCall	ssonicv_FM2_p1
	smpsCall	ssonicv_FM2_p2
	smpsCall	ssonicv_FM2_p3
	smpsJump	ssonicv_FM2_Loop

ssonicv_FM3:
	smpsCall	ssonicv_FM3_p0
ssonicv_FM3_Loop:
	smpsCall	ssonicv_FM3_p1
	smpsCall	ssonicv_FM3_p2
	smpsCall	ssonicv_FM3_p3
	smpsJump	ssonicv_FM3_Loop

ssonicv_FM4:
	smpsCall	ssonicv_FM4_p0
ssonicv_FM4_Loop:
	smpsCall	ssonicv_FM4_p1
	smpsCall	ssonicv_FM4_p2
	smpsCall	ssonicv_FM4_p3
	smpsJump	ssonicv_FM4_Loop

ssonicv_FM5:
	smpsCall	ssonicv_FM5_p0
ssonicv_FM5_Loop:
	smpsCall	ssonicv_FM5_p1
	smpsCall	ssonicv_FM5_p2
	smpsCall	ssonicv_FM5_p0
	smpsJump	ssonicv_FM5_Loop

ssonicv_PSG1:
	smpsCall	ssonicv_PSG1_p0
ssonicv_PSG1_Loop:
	smpsCall	ssonicv_PSG1_p1
	smpsCall	ssonicv_PSG1_p2
	smpsCall	ssonicv_PSG1_p3
	smpsJump	ssonicv_PSG1_Loop

ssonicv_PSG2:
	smpsCall	ssonicv_PSG2_p0
ssonicv_PSG2_Loop:
	smpsCall	ssonicv_PSG2_p0
	smpsCall	ssonicv_PSG2_p0
	smpsCall	ssonicv_PSG2_p0
	smpsJump	ssonicv_PSG2_Loop

ssonicv_PSG3:
	smpsPSGform	$E7
	smpsCall	ssonicv_PSG3_p0
ssonicv_PSG3_Loop:
	smpsCall	ssonicv_PSG3_p1
	smpsCall	ssonicv_PSG3_p2
	smpsCall	ssonicv_PSG3_p3
	smpsJump	ssonicv_PSG3_Loop

ssonicv_DAC:
	smpsCall	ssonicv_DAC_p0
ssonicv_DAC_Loop:
	smpsCall	ssonicv_DAC_p1
	smpsCall	ssonicv_DAC_p2
	smpsCall	ssonicv_DAC_p3
	smpsJump	ssonicv_DAC_Loop


; Pattern data for FM1
ssonicv_FM1_p0:
	smpsFMvoice	$1
	dc.b		$c4,$c
	dc.b		$c3
	dc.b		$c1,$8
	dc.b		$bf,$4
	dc.b		$c1
	dc.b		$c3
	dc.b		$c4
	dc.b		$c6
	dc.b		$c8
	dc.b		$c9
	dc.b		$cb
	dc.b		$bf,$c
	dc.b		$80,$4
	dc.b		$c4,$c
	dc.b		$80,$4
	dc.b		$c6,$8
	dc.b		$80,$4
	dc.b		$c4,$8
	dc.b		$80,$4
	dc.b		$c2,$8
	smpsReturn

ssonicv_FM1_p1:
	dc.b		$80,$8
	dc.b		$c8,$10
	dc.b		$c4,$4
	dc.b		$80
	dc.b		$c0,$8
	dc.b		$c4,$4
	dc.b		$80
	dc.b		$c2,$8
	dc.b		$c6,$4
	dc.b		$80
	dc.b		$bf,$c
	dc.b		$80,$4
	dc.b		$c4,$c
	dc.b		$80,$4
	dc.b		$c6,$8
	dc.b		$80,$4
	dc.b		$c4,$8
	dc.b		$80,$4
	dc.b		$c2,$8
	smpsReturn

ssonicv_FM1_p2:
	dc.b		$80,$8
	dc.b		$c8,$10
	dc.b		$c4,$4
	dc.b		$80
	dc.b		$c0,$8
	dc.b		$c4
	dc.b		$c0,$4
	dc.b		$c4
	dc.b		$c2
	dc.b		$c6
	dc.b		$c4,$c
	dc.b		$c0
	dc.b		$c4,$6
	dc.b		$80,$2
	dc.b		$c6,$4
	dc.b		$80
	dc.b		$c2,$14
	dc.b		$80,$4
	smpsReturn

ssonicv_FM1_p3:
	dc.b		$c7,$c
	dc.b		$c3
	dc.b		$c7,$6
	dc.b		$80,$2
	dc.b		$c9,$6
	dc.b		$80,$2
	dc.b		$c7,$4
	dc.b		$ca
	dc.b		$c9
	dc.b		$c7
	dc.b		$c5
	dc.b		$c0
	dc.b		$bf,$c
	dc.b		$80,$4
	dc.b		$c4,$c
	dc.b		$80,$4
	dc.b		$c6,$8
	dc.b		$80,$4
	dc.b		$c4,$8
	dc.b		$80,$4
	dc.b		$c2,$8
	smpsReturn

; Pattern data for FM2
ssonicv_FM2_p0:
	smpsFMvoice	$1
	dc.b		$bf,$c
	dc.b		$bd
	dc.b		$ba,$8
	dc.b		$b7,$4
	dc.b		$ba
	dc.b		$bd
	dc.b		$bf
	dc.b		$c3
	dc.b		$c4
	dc.b		$c1
	dc.b		$bd
	dc.b		$bc,$e
	dc.b		$80,$2
	dc.b		$bc,$e
	dc.b		$80,$2
	dc.b		$bd,$a
	dc.b		$80,$2
	dc.b		$bd,$a
	dc.b		$80,$2
	dc.b		$bd,$8
	smpsReturn

ssonicv_FM2_p1:
	dc.b		$e7,$2
	dc.b		$80,$6
	dc.b		$c1,$e
	dc.b		$80,$2
	dc.b		$c1,$6
	dc.b		$80,$2
	dc.b		$bb,$e
	dc.b		$80,$2
	dc.b		$bd,$e
	dc.b		$80,$2
	dc.b		$bc,$e
	dc.b		$80,$2
	dc.b		$bc,$e
	dc.b		$80,$2
	dc.b		$bd,$a
	dc.b		$80,$2
	dc.b		$bd,$a
	dc.b		$80,$2
	dc.b		$bd,$8
	smpsReturn

ssonicv_FM2_p2:
	dc.b		$e7,$2
	dc.b		$80,$6
	dc.b		$c1,$e
	dc.b		$80,$2
	dc.b		$c1,$6
	dc.b		$80,$2
	dc.b		$bb,$c
	dc.b		$80,$4
	dc.b		$bb,$8
	dc.b		$bd
	dc.b		$bb,$1e
	dc.b		$80,$2
	dc.b		$bd,$1e
	dc.b		$80,$2
	smpsReturn

ssonicv_FM2_p3:
	dc.b		$be,$1e
	dc.b		$80,$2
	dc.b		$c0,$16
	dc.b		$80,$a
	dc.b		$bc,$e
	dc.b		$80,$2
	dc.b		$bc,$e
	dc.b		$80,$2
	dc.b		$bd,$a
	dc.b		$80,$2
	dc.b		$bd,$a
	dc.b		$80,$2
	dc.b		$bd,$8
	smpsReturn

; Pattern data for FM3
ssonicv_FM3_p0:
	smpsFMvoice	$0
	dc.b		$a5,$c
	dc.b		$a9
	dc.b		$ac,$8
	dc.b		$ab,$4
	dc.b		$a9
	dc.b		$a7
	dc.b		$ae
	dc.b		$ac
	dc.b		$ab
	dc.b		$a9
	dc.b		$a7
	dc.b		$ac
	dc.b		$80
	dc.b		$ac,$6
	dc.b		$80,$2
	dc.b		$a7,$4
	dc.b		$80
	dc.b		$a7,$8
	dc.b		$aa,$4
	dc.b		$80
	dc.b		$aa
	dc.b		$a5,$8
	dc.b		$80,$4
	dc.b		$a5,$8
	smpsReturn

ssonicv_FM3_p1:
	dc.b		$a9,$4
	dc.b		$80
	dc.b		$a9
	dc.b		$a4,$8
	dc.b		$80,$4
	dc.b		$a4,$8
	dc.b		$a8,$2
	dc.b		$80
	dc.b		$a8,$4
	dc.b		$a3,$8
	dc.b		$aa,$2
	dc.b		$80
	dc.b		$aa,$4
	dc.b		$a5,$8
	dc.b		$ac,$4
	dc.b		$80
	dc.b		$ac,$6
	dc.b		$80,$2
	dc.b		$a7,$4
	dc.b		$80
	dc.b		$a7,$8
	dc.b		$aa,$4
	dc.b		$80
	dc.b		$aa
	dc.b		$a5,$8
	dc.b		$80,$4
	dc.b		$a5,$8
	smpsReturn

ssonicv_FM3_p2:
	dc.b		$a9,$4
	dc.b		$80
	dc.b		$a9
	dc.b		$a4,$8
	dc.b		$80,$4
	dc.b		$a4,$8
	dc.b		$a8,$2
	dc.b		$80
	dc.b		$a8,$4
	dc.b		$a3,$8
	dc.b		$aa,$2
	dc.b		$80
	dc.b		$aa,$4
	dc.b		$a5,$8
	dc.b		$a8
	dc.b		$a3,$4
	dc.b		$a8,$8
	dc.b		$af,$4
	dc.b		$ad
	dc.b		$ac
	dc.b		$aa,$8
	dc.b		$a5,$4
	dc.b		$aa,$8
	dc.b		$b1,$4
	dc.b		$b6,$8
	smpsReturn

ssonicv_FM3_p3:
	dc.b		$ab,$8
	dc.b		$a6,$4
	dc.b		$ab,$8
	dc.b		$b2,$4
	dc.b		$b0
	dc.b		$af
	dc.b		$ad,$8
	dc.b		$a8,$4
	dc.b		$ad,$8
	dc.b		$b4,$4
	dc.b		$b9,$8
	dc.b		$ac,$4
	dc.b		$80
	dc.b		$ac,$6
	dc.b		$80,$2
	dc.b		$a7,$4
	dc.b		$80
	dc.b		$a7,$8
	dc.b		$aa,$4
	dc.b		$80
	dc.b		$aa
	dc.b		$a5,$8
	dc.b		$80,$4
	dc.b		$a5,$8
	smpsReturn

; Pattern data for FM4
ssonicv_FM4_p0:
	dc.b		$e7,$8
	smpsFMvoice	$1
	dc.b		$c4,$c
	dc.b		$c3
	dc.b		$c1,$8
	dc.b		$bf,$4
	dc.b		$c1
	dc.b		$c3
	dc.b		$c4
	dc.b		$c6
	dc.b		$c8
	dc.b		$c9
	dc.b		$cb
	dc.b		$bf,$c
	dc.b		$80,$4
	dc.b		$c4,$c
	dc.b		$80,$4
	dc.b		$c6,$8
	dc.b		$80,$4
	dc.b		$c4,$8
	dc.b		$80,$4
	smpsReturn

ssonicv_FM4_p1:
	dc.b		$c2,$8
	dc.b		$80
	dc.b		$c8,$10
	dc.b		$c4,$4
	dc.b		$80
	dc.b		$c0,$8
	dc.b		$c4,$4
	dc.b		$80
	dc.b		$c2,$8
	dc.b		$c6,$4
	dc.b		$80
	dc.b		$bf,$c
	dc.b		$80,$4
	dc.b		$c4,$c
	dc.b		$80,$4
	dc.b		$c6,$8
	dc.b		$80,$4
	dc.b		$c4,$8
	dc.b		$80,$4
	smpsReturn

ssonicv_FM4_p2:
	dc.b		$c2,$8
	dc.b		$80
	dc.b		$c8,$10
	dc.b		$c4,$4
	dc.b		$80
	dc.b		$c0,$8
	dc.b		$c4
	dc.b		$c0,$4
	dc.b		$c4
	dc.b		$c2
	dc.b		$c6
	dc.b		$c4,$c
	dc.b		$c0
	dc.b		$c4,$6
	dc.b		$80,$2
	dc.b		$c6,$4
	dc.b		$80
	dc.b		$c2,$10
	smpsReturn

ssonicv_FM4_p3:
	dc.b		$e7,$4
	dc.b		$80
	dc.b		$c7,$c
	dc.b		$c3
	dc.b		$c7,$6
	dc.b		$80,$2
	dc.b		$c9,$6
	dc.b		$80,$2
	dc.b		$c7,$4
	dc.b		$ca
	dc.b		$c9
	dc.b		$c7
	dc.b		$c9
	dc.b		$cb
	dc.b		$bf,$c
	dc.b		$80,$4
	dc.b		$c4,$c
	dc.b		$80,$4
	dc.b		$c6,$8
	dc.b		$80,$4
	dc.b		$c4,$8
	dc.b		$80,$4
	smpsReturn

; Pattern data for FM5
ssonicv_FM5_p0:
	dc.b		$e7,$40
	smpsFMvoice	$2
	dc.b		$c4,$4
	dc.b		$80
	dc.b		$c8
	dc.b		$80
	dc.b		$bf
	dc.b		$80
	dc.b		$c4
	dc.b		$80
	dc.b		$c6,$a
	dc.b		$80,$2
	dc.b		$c9,$a
	dc.b		$80,$2
	dc.b		$c4,$6
	dc.b		$80,$2
	smpsReturn

ssonicv_FM5_p1:
	dc.b		$c1,$4
	dc.b		$80
	dc.b		$c1,$e
	dc.b		$80,$2
	dc.b		$c4,$8
	dc.b		$80,$20
	dc.b		$c4,$4
	dc.b		$80
	dc.b		$c4
	dc.b		$80
	dc.b		$bf
	dc.b		$80
	dc.b		$c4
	dc.b		$80
	dc.b		$c6,$a
	dc.b		$80,$2
	dc.b		$c9,$a
	dc.b		$80,$2
	dc.b		$c4,$6
	dc.b		$80,$2
	smpsReturn

ssonicv_FM5_p2:
	dc.b		$c1,$4
	dc.b		$80
	dc.b		$c1,$e
	dc.b		$80,$2
	dc.b		$c4,$8
	dc.b		$80,$60
	smpsReturn

; Pattern data for PSG1
ssonicv_PSG1_p0:
	dc.b		$e7,$40
	smpsPSGvoice	$1
	dc.b		$c8,$4
	dc.b		$80
	dc.b		$c4
	dc.b		$80
	dc.b		$c8
	dc.b		$80
	dc.b		$c8
	dc.b		$80
	dc.b		$c9,$a
	dc.b		$80,$2
	dc.b		$c4,$a
	dc.b		$80,$2
	dc.b		$c9,$6
	dc.b		$80,$2
	smpsReturn

ssonicv_PSG1_p1:
	dc.b		$c8,$4
	dc.b		$80
	dc.b		$c8,$e
	dc.b		$80,$2
	dc.b		$c8,$8
	dc.b		$d0,$4
	dc.b		$ce
	dc.b		$cc
	dc.b		$d5
	dc.b		$d3
	dc.b		$d2
	dc.b		$d0
	dc.b		$ce
	dc.b		$c8
	dc.b		$80
	dc.b		$c8
	dc.b		$80
	dc.b		$c8
	dc.b		$80
	dc.b		$c8
	dc.b		$80
	dc.b		$c9,$a
	dc.b		$80,$2
	dc.b		$c4,$a
	dc.b		$80,$2
	dc.b		$c9,$6
	dc.b		$80,$2
	smpsReturn

ssonicv_PSG1_p2:
	dc.b		$c8,$4
	dc.b		$80
	dc.b		$c8,$e
	dc.b		$80,$2
	dc.b		$c8,$8
	dc.b		$d0,$4
	dc.b		$ce
	dc.b		$cc
	dc.b		$d5
	dc.b		$d3
	dc.b		$d2
	dc.b		$d0
	dc.b		$ce
	dc.b		$c0
	dc.b		$c7
	dc.b		$cc
	dc.b		$ce
	dc.b		$d1
	dc.b		$d0
	dc.b		$ce
	dc.b		$cc
	dc.b		$ce
	dc.b		$c2
	dc.b		$c6
	dc.b		$c7
	dc.b		$c9
	dc.b		$cc
	dc.b		$ce
	dc.b		$d2
	smpsReturn

ssonicv_PSG1_p3:
	dc.b		$cf,$4
	dc.b		$c3
	dc.b		$c7
	dc.b		$ca
	dc.b		$cf
	dc.b		$d3
	dc.b		$d7
	dc.b		$cf
	dc.b		$dd
	dc.b		$d8
	dc.b		$d5
	dc.b		$d3
	dc.b		$d1
	dc.b		$cc
	dc.b		$c9
	dc.b		$c5
	dc.b		$c8
	dc.b		$80
	dc.b		$c4
	dc.b		$80
	dc.b		$c8
	dc.b		$80
	dc.b		$c8
	dc.b		$80
	dc.b		$c9,$a
	dc.b		$80,$2
	dc.b		$c4,$a
	dc.b		$80,$2
	dc.b		$c9,$6
	dc.b		$80,$2
	smpsReturn

; Pattern data for PSG2
ssonicv_PSG2_p0:
	dc.b		$80,$1
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

; Pattern data for PSG3 (Noise)
ssonicv_PSG3_p0:
	smpsPSGvoice	$2
	dc.b		$82,$4
	dc.b		$80
	dc.b		$82
	dc.b		$82
	dc.b		$80
	dc.b		$82
	dc.b		$82
	dc.b		$80
	dc.b		$82
	dc.b		$80
	dc.b		$82
	dc.b		$82
	dc.b		$80
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80,$c
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80
	smpsReturn

ssonicv_PSG3_p1:
	dc.b		$e7,$8
	smpsPSGvoice	$2
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80,$c
	dc.b		$82,$4
	dc.b		$80,$c
	dc.b		$82,$4
	dc.b		$80,$c
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80,$c
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80
	smpsReturn

ssonicv_PSG3_p2:
	dc.b		$e7,$8
	smpsPSGvoice	$2
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80,$c
	dc.b		$82,$4
	dc.b		$80
	dc.b		$82
	dc.b		$82
	dc.b		$80
	dc.b		$82
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80,$c
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80
	smpsReturn

ssonicv_PSG3_p3:
	dc.b		$e7,$8
	smpsPSGvoice	$2
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80,$c
	dc.b		$82,$4
	dc.b		$80,$8
	dc.b		$82,$4
	dc.b		$82
	dc.b		$80
	smpsReturn

; Pattern data for DAC
ssonicv_DAC_p0:
	dc.b		$81,$4
	dc.b		$80
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$82
	dc.b		$80
	dc.b		$81
	dc.b		$80
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$82
	dc.b		$80,$8
	dc.b		$81,$4
	dc.b		$82
	dc.b		$80
	dc.b		$81
	dc.b		$80
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$82
	dc.b		$82
	smpsReturn

ssonicv_DAC_p1:
	dc.b		$81,$4
	dc.b		$80
	dc.b		$82
	dc.b		$80,$8
	dc.b		$81,$4
	dc.b		$82
	dc.b		$82
	dc.b		$81
	dc.b		$81
	dc.b		$82
	dc.b		$82
	dc.b		$81
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$82
	dc.b		$80,$8
	dc.b		$81,$4
	dc.b		$82
	dc.b		$80
	dc.b		$81
	dc.b		$80
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$82
	dc.b		$82
	smpsReturn

ssonicv_DAC_p2:
	dc.b		$81,$4
	dc.b		$80
	dc.b		$82
	dc.b		$80,$8
	dc.b		$81,$4
	dc.b		$82
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$82
	dc.b		$80
	dc.b		$81
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$82
	dc.b		$80
	dc.b		$81
	dc.b		$80
	dc.b		$82
	dc.b		$80,$8
	dc.b		$81,$4
	dc.b		$82
	dc.b		$82
	smpsReturn

ssonicv_DAC_p3:
	dc.b		$81,$4
	dc.b		$80
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$82
	dc.b		$80
	dc.b		$81,$8
	dc.b		$82,$4
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$82
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$82
	dc.b		$80,$8
	dc.b		$81,$4
	dc.b		$82
	dc.b		$80
	dc.b		$81
	dc.b		$80
	dc.b		$82
	dc.b		$81
	dc.b		$80
	dc.b		$81
	dc.b		$82
	dc.b		$82
	smpsReturn

ssonicv_Voices:
	dc.b	$8,$a,$70,$30,$0,$1f,$1f,$5f,$5f,$12,$e,$a,$a,$0,$4,$4
	dc.b	$3,$2f,$2f,$2f,$2f,$24,$2d,$13,$0	; Voice 0 (D.Guitar.B)
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$87,$1C,$22,$15,$7F;			Voice 01
	dc.b	$39,$d,$1,$2,$1,$9f,$1f,$1f,$5f,$a,$9,$9,$4,$8,$7,$7
	dc.b	$7,$24,$24,$24,$28,$22,$26,$24,$0	; Voice 2 (A. Guitar3.ins)
	even
