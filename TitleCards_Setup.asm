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
; Title Card Setup Code (You only need to edit "word_15832:")
; -----------------------------------------------------------------------
; ==============================================
; --- Letter Loading Offsets ---
; Do NOT modify this list, unless you really
; know what you are doing!
; If you want to do it anyway, these offsets
; are pointing to the starting byte of the
; Letter Loading List.
; ----------------------------------------------
byte_15820:
	dc.b $00	; EHZ
	dc.b 0		; null
	dc.b 0		; WZ
	dc.b 0		; null
	dc.b $12	; MZ
	dc.b $12	; MZ Act 3
	dc.b $B4	; WFZ
	dc.b $24	; HTZ
	dc.b $36	; HPZ
	dc.b 0		; null
	dc.b $48	; OOZ
	dc.b $5A	; MCZ
	dc.b $6C	; CNZ
	dc.b $7E	; CPZ
	dc.b $C6	; DEZ
	dc.b $90	; ARZ
	dc.b $A2	; SCZ
	dc.b 0		; null
	even

; ==============================================
; --- Macro List for Letters ---
; Used for the Letter Loading List below (I did
; this to make my and your life easier, but it's
; not really necesary of course).
; Format: $OOSS
; OO = Tile Offset
; S  = Size in number of tiles (Every letter is
;      $4, except W and M, which are $6 and I
;      and the dot, which are $2.)
; NOTE: E, N, O and Z are not implented, as they
;       are not part of the dynamic text loading
;       system. I just added them here to make
;       it clear.
; ----------------------------------------------
_A =	$0004
_B =	$0404
_C =	$0804
_D =	$0C04
;E =	$FF04
_F =	$1004
_G =	$1404
_H =	$1804
_I =	$1C02
_J =	$1E04
_K =	$2204
_L =	$2604
_M =	$2A06
;N =	$FF04
;O =	$FF04
_P =	$3004
_Q =	$3404
_R =	$3804	
_S =	$3C04
_T =	$4004
_U =	$4404
_V =	$4804
_W =	$4C06
_X =	$5204
_Y =	$5604
;Z =	$FF04
TCEnd =	$FFFF

; ==============================================
; --- Letter Loading List ---
; * Each character only once.
; * Letters E, N, O and Z are completely missing,
;   as they are part of the main title card
;   system ("ZONE", "ACT", etc.)
; * TCEnd tells the game that the end of the
;   list has been reached.
; * The additional 0s are to pad the line to $9
;   bytes, so the offset list doesn't need to be
;   changed if you use a shorter or longer name.
; ----------------------------------------------
word_15832:
	dc.w _S, _P, _L, _A, _H, _I, TCEnd, 0, 0	; EHZ
	dc.w _M, _T, _R, _P, _L, _I, _S, TCEnd, 0	; MZ
	dc.w _H, _I, _L, _T, _P, TCEnd, 0, 0, 0		; HTZ
	dc.w _H, _I, _D, _P, _A, _L, _C, TCEnd, 0	; HPZ
	dc.w _I, _L, _D, _S, _R, _T, TCEnd, 0, 0	; OOZ
	dc.w _M, _Y, _S, _T, _I, _C, _A, _V, TCEnd	; MCZ
	dc.w _C, _A, _S, _I, _G, _H, _T, TCEnd, 0	; CNZ
	dc.w _C, _H, _M, _I, _A, _L, _P, _T, TCEnd	; CPZ
	dc.w _S, _Y, _L, _V, _A, _I, _C, _T, TCEnd	; ARZ
	dc.w _S, _K, _Y, _C, _H, _A, TCEnd, 0, 0	; SCZ
	dc.w _W, _I, _G, _F, _R, _T, _S, TCEnd, 0	; WFZ
	dc.w _D, _A, _T, _H, _G, TCEnd, 0, 0, 0		; DEZ
	even

; ==============================================
; End of Title Card Setup
; ==============================================