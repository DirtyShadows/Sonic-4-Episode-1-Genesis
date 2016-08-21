; ==========================================================================
; -------------------------------------------------------------------------
; Sonic 2 Text Code Generator (Title Card Mappings)
; -------------------------------------------------------------------------
; Created by: Selbi (2010)
; 
; Thanks to:
; - IDA, for kind of helping at converting the binary into an ASM file
; - Xenowhirl, for his SonMapED tool
; - shobiz, for answering some questions in the Basic Q&A thread
; - Whoever did the Text Editing SCHG page, for saving me ages of research
; - Irixion, for beta testing
; -------------------------------------------------------------------------
; ==========================================================================

; -----------------------------------------------------------------------
; Title Card Mappings
; (Created with IDA, SonMapEd and a lot of manual typing)
;    The marked as unused ones are basically using no text, they are
;    pointing to EHZ's text in the original. If you are wondering, why
;    they are named, those were the original zones.
; -----------------------------------------------------------------------

; Obj34_MapUnc_147BA:
		dc.w TC_EHZ-Obj34_MapUnc_147BA		; Emerald Hill Zone
		dc.w TC_Unused1-Obj34_MapUnc_147BA	; XXX Unknown
		dc.w TC_Unused2-Obj34_MapUnc_147BA	; XXX Wood Zone
		dc.w TC_Unused3-Obj34_MapUnc_147BA	; XXX Dust Hill Zone
		dc.w TC_MTZ-Obj34_MapUnc_147BA		; Metropolis Zone Act 1+2
		dc.w TC_MTZ3-Obj34_MapUnc_147BA		; Metropolis Zone Act 3
		dc.w TC_WFZ-Obj34_MapUnc_147BA		; Wing Fortress Zone
		dc.w TC_HTZ-Obj34_MapUnc_147BA		; Hill Top Zone
		dc.w TC_HPZ-Obj34_MapUnc_147BA		; Hidden Palace Zone
		dc.w TC_Unused4-Obj34_MapUnc_147BA	; XXX Genocide City Zone
		dc.w TC_OOZ-Obj34_MapUnc_147BA		; Oil Ocean Zone
		dc.w TC_MCZ-Obj34_MapUnc_147BA		; Mystic Cave Zone
		dc.w TC_CNZ-Obj34_MapUnc_147BA		; Casino Night Zone
		dc.w TC_CPZ-Obj34_MapUnc_147BA		; Chemical Plant Zone
		dc.w TC_DEZ-Obj34_MapUnc_147BA		; Death Egg Zone
		dc.w TC_ARZ-Obj34_MapUnc_147BA		; Aquatic Ruin Zone
		dc.w TC_SCZ-Obj34_MapUnc_147BA		; Sky Chase Zone

		dc.w TC_ZONE-Obj34_MapUnc_147BA		; "ZONE" Text
		dc.w TC_No1-Obj34_MapUnc_147BA		; Act Number 1
		dc.w TC_No2-Obj34_MapUnc_147BA		; Act Number 2
		dc.w TC_No3-Obj34_MapUnc_147BA		; Act Number 3
		dc.w TC_STH-Obj34_MapUnc_147BA		; "SONIC THE HEDGEHOG" Text
		dc.w TC_RedStripes-Obj34_MapUnc_147BA	; Red Stripes


TC_EHZ:		dc.w $A				; SPLASH HILL
		dc.b 0, 5, $85, $DE, $82, $EF, $FF, $D8	; S
		dc.b 0, 5, $85, $E2, $82, $F1, $FF, $E8	; P
		dc.b 0, 5, $85, $E6, $82, $F3, $FF, $F8	; L
		dc.b 0, 5, $85, $EA, $82, $F5, 0, $8	; A
		dc.b 0, 5, $85, $DE, $82, $EF, 0, $18	; S
		dc.b 0, 5, $85, $EE, $82, $F7, 0, $28	; H

		dc.b 0, 5, $85, $EE, $82, $F7, 0, $48	; H
		dc.b 0, 1, $85, $F2, $82, $F9, 0, $58	; I
		dc.b 0, 5, $85, $E6, $82, $F3, 0, $60	; L
		dc.b 0, 5, $85, $E6, $82, $F3, 0, $70	; L

TC_Unused1:	dc.w $B				; EMERALD HILL
		dc.b 0, 5, $85, $80, $82, $C0, $FF, $C3	; E
		dc.b 0, 9, $85, $DE, $82, $EF, $FF, $D0	; M
		dc.b 0, 5, $85, $80, $82, $C0, $FF, $E8	; E
		dc.b 0, 5, $85, $E4, $82, $F2, $FF, $F8	; R
		dc.b 0, 5, $85, $E8, $82, $F4, 0, 8	; A
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $18	; L
		dc.b 0, 5, $85, $F0, $82, $F8, 0, $28	; D

		dc.b 0, 5, $85, $F4, $82, $FA, 0, $48	; H
		dc.b 0, 1, $85, $F8, $82, $FC, 0, $58	; I
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $60	; L
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $70	; L

TC_Unused2:	dc.w $B				; EMERALD HILL
		dc.b 0, 5, $85, $80, $82, $C0, $FF, $C3	; E
		dc.b 0, 9, $85, $DE, $82, $EF, $FF, $D0	; M
		dc.b 0, 5, $85, $80, $82, $C0, $FF, $E8	; E
		dc.b 0, 5, $85, $E4, $82, $F2, $FF, $F8	; R
		dc.b 0, 5, $85, $E8, $82, $F4, 0, 8	; A
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $18	; L
		dc.b 0, 5, $85, $F0, $82, $F8, 0, $28	; D

		dc.b 0, 5, $85, $F4, $82, $FA, 0, $48	; H
		dc.b 0, 1, $85, $F8, $82, $FC, 0, $58	; I
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $60	; L
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $70	; L

TC_Unused3:		dc.w $4				; WOOD
		dc.b 0, 9, $85, $DE, $82, $EF, 0, $38	; W
		dc.b 0, 5, $85,$88, $82,$C4, 0, $50	; O
		dc.b 0, 5, $85,$88, $82,$C4, 0, $60	; O
		dc.b 0, 5, $85, $E4, $82, $F2, 0, $70	; D

TC_MTZ:		dc.w $A				; METROPOLIS
		dc.b 0, 9, $85, $DE, $82, $EF, $FF, $E0	; M
		dc.b 0, 5, $85, $80, $82, $C0, $FF, $F8	; E
		dc.b 0, 5, $85, $E4, $82, $F2, 0, 8	; T
		dc.b 0, 5, $85, $E8, $82, $F4, 0, $18	; R
		dc.b 0, 5, $85, $88, $82, $C4, 0, $28	; O
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $38	; P
		dc.b 0, 5, $85, $88, $82, $C4, 0, $48	; O
		dc.b 0, 5, $85, $F0, $82, $F8, 0, $58	; L
		dc.b 0, 1, $85, $F4, $82, $FA, 0, $68	; I
		dc.b 0, 5, $85, $F6, $82, $FB, 0, $70	; S

TC_MTZ3:	dc.w $A				; METROPOLIS
		dc.b 0, 9, $85, $DE, $82, $EF, $FF, $E0	; M
		dc.b 0, 5, $85, $80, $82, $C0, $FF, $F8	; E
		dc.b 0, 5, $85, $E4, $82, $F2, 0, 8	; T
		dc.b 0, 5, $85, $E8, $82, $F4, 0, $18	; R
		dc.b 0, 5, $85, $88, $82, $C4, 0, $28	; O
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $38	; P
		dc.b 0, 5, $85, $88, $82, $C4, 0, $48	; O
		dc.b 0, 5, $85, $F0, $82, $F8, 0, $58	; L
		dc.b 0, 1, $85, $F4, $82, $FA, 0, $68	; I
		dc.b 0, 5, $85, $F6, $82, $FB, 0, $70	; S

TC_WFZ:		dc.w $C				; WING FORTRESS
		dc.b 0, 9, $85, $DE, $82, $EF, $FF, $B1	; W
		dc.b 0, 1, $85, $E4, $82, $F2, $FF, $C8	; I
		dc.b 0, 5, $85, $84, $82, $C2, $FF, $D0	; N
		dc.b 0, 5, $85, $E6, $82, $F3, $FF, $E0	; G

		dc.b 0, 5, $85, $EA, $82, $F5, 0, 1	; F
		dc.b 0, 5, $85, $88, $82, $C4, 0, $10	; O
		dc.b 0, 5, $85, $EE, $82, $F7, 0, $20	; R
		dc.b 0, 5, $85, $F2, $82, $F9, 0, $30	; T
		dc.b 0, 5, $85, $EE, $82, $F7, 0, $40	; R
		dc.b 0, 5, $85, $80, $82, $C0, 0, $50	; E
		dc.b 0, 5, $85, $F6, $82, $FB, 0, $5F	; S
		dc.b 0, 5, $85, $F6, $82, $FB, 0, $6F	; S

TC_HTZ:		dc.w $7				; HILL TOP
		dc.b 0, 5, $85, $DE, $82, $EF, 0, 8	; H
		dc.b 0, 1, $85, $E2, $82, $F1, 0, $18	; I
		dc.b 0, 5, $85, $E4, $82, $F2, 0, $20	; L
		dc.b 0, 5, $85, $E4, $82, $F2, 0, $30	; L

		dc.b 0, 5, $85, $E8, $82, $F4, 0, $51	; T
		dc.b 0, 5, $85, $88, $82, $C4, 0, $60	; O
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $70	; P
	
TC_HPZ:		dc.w $C				; HIDDEN PALACE
		dc.b 0, 5, $85, $DE, $82, $EF, $FF, $B8	; H
		dc.b 0, 1, $85, $E2, $82, $F1, $FF, $C8	; I
		dc.b 0, 5, $85, $E4, $82, $F2, $FF, $D0	; D
		dc.b 0, 5, $85, $E4, $82, $F2, $FF, $E0	; D
		dc.b 0, 5, $85, $80, $82, $C0, $FF, $F0	; E
		dc.b 0, 5, $85, $84, $82, $C2, 0, 0	; N

		dc.b 0, 5, $85, $E8, $82, $F4, 0, $20	; P
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $30	; A
		dc.b 0, 5, $85, $F0, $82, $F8, 0, $40	; L
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $50	; A
		dc.b 0, 5, $85, $F4, $82, $FA, 0, $60	; C
		dc.b 0, 5, $85, $80, $82, $C0, 0, $70	; E

TC_Unused4:	dc.w $B				; EMERALD HILL
		dc.b 0, 5, $85, $80, $82, $C0, $FF, $C3	; E
		dc.b 0, 9, $85, $DE, $82, $EF, $FF, $D0	; M
		dc.b 0, 5, $85, $80, $82, $C0, $FF, $E8	; E
		dc.b 0, 5, $85, $E4, $82, $F2, $FF, $F8	; R
		dc.b 0, 5, $85, $E8, $82, $F4, 0, 8	; A
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $18	; L
		dc.b 0, 5, $85, $F0, $82, $F8, 0, $28	; D

		dc.b 0, 5, $85, $F4, $82, $FA, 0, $48	; H
		dc.b 0, 1, $85, $F8, $82, $FC, 0, $58	; I
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $60	; L
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $70	; L

TC_OOZ:		dc.w $9				; OIL DESERT
		dc.b 0, 5, $85,$88, $82,$C4, $FF, $E8	; O
		dc.b 0, 1, $85, $DE, $82, $EF, $FF, $F8	; I
		dc.b 0, 5, $85, $E0, $82, $F0, 0, $0	; L

		dc.b 0, 5, $85, $E4, $82, $F2, 0, $20	; D
		dc.b 0, 5, $85, $80, $82, $C0, 0, $30	; E
		dc.b 0, 5, $85, $E8, $82, $F4, 0, $40	; S
		dc.b 0, 5, $85, $80, $82, $C0, 0, $50	; E
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $60	; R
		dc.b 0, 5, $85, $F0, $82, $F8, 0, $70	; T

TC_MCZ:		dc.w $A				; MYSTIC CAVE
		dc.b 0, 9, $85, $DE, $82, $EF, $FF, $D0	; M
		dc.b 0, 5, $85, $E4, $82, $F2, $FF, $E8	; Y
		dc.b 0, 5, $85, $E8, $82, $F4, $FF, $F8	; S
		dc.b 0, 5, $85, $EC, $82, $F6, 0, 8	; T
		dc.b 0, 1, $85, $F0, $82, $F8, 0, $18	; I
		dc.b 0, 5, $85, $F2, $82, $F9, 0, $20	; C

		dc.b 0, 5, $85, $F2, $82, $F9, 0, $41	; C
		dc.b 0, 5, $85, $F6, $82, $FB, 0, $50	; A
		dc.b 0, 5, $85, $FA, $82, $FD, 0, $60	; V
		dc.b 0, 5, $85, $80, $82, $C0, 0, $70	; E

TC_CNZ:		dc.w $B				; CASINO NIGHT
		dc.b 0, 5, $85, $DE, $82, $EF, $FF, $D1	; C
		dc.b 0, 5, $85, $E2, $82, $F1, $FF, $E0	; A
		dc.b 0, 5, $85, $E6, $82, $F3, $FF, $F0	; S
		dc.b 0, 1, $85, $EA, $82, $F5, 0, 0	; I
		dc.b 0, 5, $85, $84, $82, $C2, 0, 8	; N
		dc.b 0, 5, $85, $88, $82, $C4, 0, $18	; O

		dc.b 0, 5, $85, $84, $82, $C2, 0, $38	; N
		dc.b 0, 1, $85, $EA, $82, $F5, 0, $48	; I
		dc.b 0, 5, $85, $EC, $82, $F6, 0, $50	; G
		dc.b 0, 5, $85, $F0, $82, $F8, 0, $60	; H
		dc.b 0, 5, $85, $F4, $82, $FA, 0, $70	; T

TC_CPZ:		dc.w $D				; CHEMICAL PLANT
		dc.b 0, 5, $85, $DE, $82, $EF, $FF, $A4	; C
		dc.b 0, 5, $85, $E2, $82, $F1, $FF, $B4	; H
		dc.b 0, 5, $85, $80, $82, $C0, $FF, $C4	; E
		dc.b 0, 9, $85, $E6, $82, $F3, $FF, $D1	; M
		dc.b 0, 1, $85, $EC, $82, $F6, $FF, $E9	; I
		dc.b 0, 5, $85, $DE, $82, $EF, $FF, $F1	; C
		dc.b 0, 5, $85, $EE, $82, $F7, 0, 0	; A
		dc.b 0, 5, $85, $F2, $82, $F9, 0, $10	; L

		dc.b 0, 5, $85, $F6, $82, $FB, 0, $31	; P
		dc.b 0, 5, $85, $F2, $82, $F9, 0, $41	; L
		dc.b 0, 5, $85, $EE, $82, $F7, 0, $50	; A
		dc.b 0, 5, $85, $84, $82, $C2, 0, $60	; N
		dc.b 0, 5, $85, $FA, $82, $FD, 0, $70	; T

TC_DEZ:		dc.w $8				; DEATH EGG
		dc.b 0, 5, $85, $DE, $82, $EF, $FF, $F2	; D
		dc.b 0, 5, $85, $80, $82, $C0, 0, 2	; E
		dc.b 0, 5, $85, $E2, $82, $F1, 0, $10	; A
		dc.b 0, 5, $85, $E6, $82, $F3, 0, $20	; T
		dc.b 0, 5, $85, $EA, $82, $F5, 0, $30	; H

		dc.b 0, 5, $85, $80, $82, $C0, 0, $51	; E
		dc.b 0, 5, $85, $EE, $82, $F7, 0, $60	; G
		dc.b 0, 5, $85, $EE, $82, $F7, 0, $70	; G

TC_ARZ:		dc.w $E				; SYLVANIA CASTLE
		dc.b 0, 5, $85, $DE, $82, $EF, $FF, $98	; S
		dc.b 0, 5, $85, $E2, $82, $F1, $FF, $A8	; Y
		dc.b 0, 5, $85, $E6, $82, $F3, $FF, $B8	; L
		dc.b 0, 5, $85, $EA, $82, $F5, $FF, $C8	; V
		dc.b 0, 5, $85, $EE, $82, $F7, $FF, $D8	; A
		dc.b 0, 5, $85, $84, $82, $C2, $FF, $E8	; N
		dc.b 0, 1, $85, $F2, $82, $F9, $FF, $F8	; I
		dc.b 0, 5, $85, $EE, $82, $F7, 0, $0	; A

		dc.b 0, 5, $85, $F4, $82, $FA, 0, $20	; C
		dc.b 0, 5, $85, $EE, $82, $F7, 0, $30	; A
		dc.b 0, 5, $85, $DE, $82, $EF, 0, $40	; S
		dc.b 0, 5, $85, $F8, $82, $FC, 0, $50	; T
		dc.b 0, 5, $85, $E6, $82, $F3, 0, $60	; L
		dc.b 0, 5, $85, $80, $82, $C0, 0, $70	; E
		
TC_SCZ:		dc.w $8				; SKY CHASE
		dc.b 0, 5, $85, $DE, $82, $EF, $FF, $F0	; S
		dc.b 0, 5, $85, $E2, $82, $F1, 0, 0	; K
		dc.b 0, 5, $85, $E6, $82, $F3, 0, $10	; Y

		dc.b 0, 5, $85, $EA, $82, $F5, 0, $30	; C
		dc.b 0, 5, $85, $EE, $82, $F7, 0, $40	; H
		dc.b 0, 5, $85, $F2, $82, $F9, 0, $50	; A
		dc.b 0, 5, $85, $DE, $82, $EF, 0, $60	; S
		dc.b 0, 5, $85, $80, $82, $C0, 0, $70	; E

; ===============================================
; --- Miscellaneous Mappings ---
; -----------------------------------------------

TC_ZONE:	dc.w $4				; ZONE
		dc.b 0, 5, $85, $8C, $82, $C6, 0, 1	; Z
		dc.b 0, 5, $85, $88, $82, $C4, 0, $10	; O
		dc.b 0, 5, $85, $84, $82, $C2, 0, $20	; N
		dc.b 0, 5, $85, $80, $82, $C0, 0, $30	; E

TC_No1:		dc.w $1
		dc.b 0, 7, $A5, $90, $A2, $C8, 0, 0	; 1

TC_No2:		dc.w $1
		dc.b 0, $B, $A5, $98, $A2, $CC, 0, 0	; 2

TC_No3:		dc.w $1
		dc.b 0, $B, $A5, $A4, $A2, $D2, 0, 0	; 3

TC_STH:		dc.w $5
		dc.b 0, $D, $85, $B0, $82, $D8, $FF, $B8
		dc.b 0, $D, $85, $B8, $82, $DC, $FF, $D8
		dc.b 0, $D, $85, $C0, $82, $E0, $FF, $F8
		dc.b 0, $D, $85, $C8, $82, $E4, 0, $18
		dc.b 0, 5, $85, $D0, $82, $E8, 0, $38

TC_RedStripes:	dc.w $7
		dc.b $90, 3, $85, $D4, $82, $EA, 0, 0
		dc.b $B0, 3, $85, $D4, $82, $EA, 0, 0
		dc.b $D0, 3, $85, $D4, $82, $EA, 0, 0
		dc.b $F0, 3, $85, $D4, $82, $EA, 0, 0
		dc.b $10, 3, $85, $D4, $82, $EA, 0, 0
		dc.b $30, 3, $85, $D4, $82, $EA, 0, 0
		dc.b $50, 3, $85, $D4, $82, $EA, 0, 0
		even

; ==============================================
; End of Title Card Mappings
; ==============================================