; How to install this:

; Go to "Cred_ClrPallet:"
; Replace:
; "		move.b	#$8A,($FFFFD080).w ; load credits object"
; with:
; "		jsr	Credits_MapLoad"
; Now, go to the "end of ROM", and put this above it:

;		include  EniCredProg.asm
;		even
;EniCred_0:	incbin	credeni\cred0.bin	; Credits #0 mappings
;		even
;EniCred_1:	incbin	credeni\cred1.bin	; Credits #1 mappings
;		even
;EniCred_2:	incbin	credeni\cred2.bin	; Credits #2 mappings
;		even
;EniCred_3:	incbin	credeni\cred3.bin	; Credits #3 mappings
;		even
;EniCred_4:	incbin	credeni\cred4.bin	; Credits #4 mappings
;		even
;EniCred_5:	incbin	credeni\cred5.bin	; Credits #5 mappings
;		even
;EniCred_6:	incbin	credeni\cred6.bin	; Credits #6 mappings
;		even
;EniCred_7:	incbin	credeni\cred7.bin	; Credits #7 mappings
;		even
;EniCred_8:	incbin	credeni\cred8.bin	; Credits #8 mappings
;		even
;EniCred_9:	incbin	credeni\cred9.bin	; Credits #9 mappings
;		even

; Then uncomment it

Credits_Mappings:
		dc.l	EniCred_0	; credit id = 0
		dc.l	EniCred_1	; credit id = 1
		dc.l	EniCred_2	; credit id = 2
		dc.l	EniCred_3	; credit id = 3
		dc.l	EniCred_4	; credit id = 4
		dc.l	EniCred_5	; credit id = 5
		dc.l	EniCred_6	; credit id = 6
		dc.l	EniCred_7	; credit id = 7
		dc.l	EniCred_8	; credit id = 8
		dc.l	EniCred_9	; credit id = 9

Credits_MapLoad:
		cmpi.b	#$1C,($FFFFF600).w
		bne.s	Credits_MapLoad_Title
		
		move.w	($FFFFFFF4).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	Credits_Mappings(pc,d0.w),a0
		jmp	Credits_MapLoad_cont
		
Credits_MapLoad_Title:
		lea EniCred_Title,a0

Credits_MapLoad_cont:
		lea	($FF0000).l,a1
		moveq	#0,d0		; location of art in VRAM
		jsr	EniDec
		;lea	($FF0000).l,a1	; EniDec doesn't change a1
		move.l	#$40000003,d0
		moveq	#40-1,d1	 ; X size = 40
		moveq	#28-1,d2	 ; Y size = 28
		jmp	ShowVDPGraphics
;EniCredEnd:
;		rts

EniCred_0:	incbin	credeni\cred0.bin	; Credits #0 mappings
		even
EniCred_1:	incbin	credeni\cred1.bin	; Credits #1 mappings
		even
EniCred_2:	incbin	credeni\cred2.bin	; Credits #2 mappings
		even
EniCred_3:	incbin	credeni\cred3.bin	; Credits #3 mappings
		even
EniCred_4:	incbin	credeni\cred4.bin	; Credits #4 mappings
		even
EniCred_5:	incbin	credeni\cred5.bin	; Credits #5 mappings
		even
EniCred_6:	incbin	credeni\cred6.bin	; Credits #6 mappings
		even
EniCred_7:	incbin	credeni\cred7.bin	; Credits #7 mappings
		even
EniCred_8:	incbin	credeni\cred8.bin	; Credits #8 mappings
		even
EniCred_9:	incbin	credeni\cred9.bin	; Credits #9 mappings
		even
EniCred_Title:	incbin	credeni\credtitle.bin	; "Sonic Team Presents" mappings
		even