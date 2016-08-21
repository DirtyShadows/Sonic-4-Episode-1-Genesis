C64_charset_load:
	; Load the text characters into VRAM.
	; d0 == color to use.
	; Starting address: $0000 (tile 0)
	lea	($C00004), a0
	lea	($C00000), a1
	move.l	#$40000000, (a0); Base address: $0000
	
	; Make sure d0 is within range.
	and.b	#$F, d0
	
	; Number of characters: $80
	moveq	#$7F, d1
	
	; Load the address of the characters table.
	lea	(C64_charset), a2
	
C64_charset_load_char_loop:
		; d2 == row number.
		moveq	#7, d2
		
C64_charset_load_char_row_loop:
			moveq	#0, d3		; d3 == current row video data.
			move.b	(a2)+, d4	; d4 == current character byte.
			moveq	#7, d5		; d5 == current column.
			
C64_charset_load_char_col_loop:
				; Test the MSB of the low byte.
				btst	#7, d4
				beq.s	.no_pixel
				
				; Pixel is set.
				or.l	d0, d3
				
.no_pixel:
				lsl.l	#4, d3	; Left-shift the current video data.
				add.w	d4, d4	; Left-shift the character data.
				
				; Next column.
				dbf	d5, C64_charset_load_char_col_loop
			
			; Send the row to VRAM.
			move.l	d3, (a1)
			
			; Next row.
			dbf	d2, C64_charset_load_char_row_loop
		
		; Next character.
		dbf	d1, C64_charset_load_char_loop
	
	; Finished loading the character data into VRAM.
	rts

C64_charset:
		; $00 - $0F
		dc.l	$00000000, $00000000	; NULL
		dc.l	$00000000, $00000000	; ☺ [TODO]
		dc.l	$00000000, $00000000	; ☻ [TODO]
		dc.l	$367F7F7F, $3E1C0800	; ♥
		dc.l	$081C3E7F, $3E1C0800	; ♦
		dc.l	$18186666, $18183C00	; ♣
		dc.l	$081C3E7F, $7F1C3E00	; ♠
		dc.l	$003C7E7E, $7E7E3C00	; •
		dc.l	$FFC38181, $8181C3FF	; ◘
		dc.l	$003C7E66, $667E3C00	; ○
		dc.l	$FFC38199, $9981C3FF	; ◙
		dc.l	$00000000, $00000000	; ♂ [TODO]
		dc.l	$00000000, $00000000	; ♀ [TODO]
		dc.l	$00000000, $00000000	; ♪ [TODO]
		dc.l	$00000000, $00000000	; ♫ [TODO]
		dc.l	$00000000, $00000000	; ☼ [TODO]
		
		; $10 - $1F
		dc.l	$00000000, $00000000	; ► [TODO]
		dc.l	$00000000, $00000000	; ◄ [TODO]
		dc.l	$00000000, $00000000	; ↕ [TODO]
		dc.l	$66666666, $00006600	; ‼
		dc.l	$00000000, $00000000	; ¶ [TODO]
		dc.l	$00000000, $00000000	; § [TODO]
		dc.l	$00000000, $00000000	; ▬ [TODO]
		dc.l	$00000000, $00000000	; ↨ [TODO]
		dc.l	$00183C7E, $18181818	; ↑
		dc.l	$00181818, $187E3C18	; ↓
		dc.l	$0004067F, $7F060400	; →
		dc.l	$0010307F, $7F301000	; ←
		dc.l	$00000000, $00000000	; ∟ [TODO]
		dc.l	$00000000, $00000000	; ↔ [TODO]
		dc.l	$00000000, $00000000	; ▲ [TODO]
		dc.l	$00000000, $00000000	; ▼ [TODO]
		
		; $20 - $2F
		dc.l	$00000000, $00000000	; Space
		dc.l	$18181818, $00001800	; !
		dc.l	$66666600, $00000000	; "
		dc.l	$6666FF66, $FF666600	; #
		dc.l	$183E603C, $067C1800	; $
		dc.l	$62660C18, $30664600	; %
		dc.l	$3C663C38, $67663F00	; &
		dc.l	$060C1800, $00000000	; '
		dc.l	$0C183030, $30180C00	; (
		dc.l	$30180C0C, $0C183000	; )
		dc.l	$00663CFF, $3C660000	; *
		dc.l	$0018187E, $18180000	; +
		dc.l	$00000000, $001C1C30	; ,
		dc.l	$0000007E, $00000000	; -
		dc.l	$00000000, $00181800	; .
		dc.l	$0003060C, $18306000	; /
		
		; $30 - $3F
		dc.l	$3C666E76, $66663C00	; 0
		dc.l	$18183818, $18187E00	; 1
		dc.l	$3C66060C, $30607E00	; 2
		dc.l	$3C66061C, $06663C00	; 3
		dc.l	$060E1E66, $7F060600	; 4
		dc.l	$7E607C06, $06663C00	; 5
		dc.l	$3C66607C, $66663C00	; 6
		dc.l	$7E660C18, $18181800	; 7
		dc.l	$3C66663C, $66663C00	; 8
		dc.l	$3C66663E, $06663C00	; 9
		dc.l	$00001800, $00180000	; :
		dc.l	$00001800, $00181830	; ;
		dc.l	$0E183060, $30180E00	; <
		dc.l	$00007E00, $7E000000	; =
		dc.l	$70180C06, $0C187000	; >
		dc.l	$3C66060C, $18001800	; ?
		
		; $40 - $4F
		dc.l	$3C666E6E, $60623C00	; @
		dc.l	$183C667E, $66666600	; A
		dc.l	$7C66667C, $66667C00	; B
		dc.l	$3C666060, $60663C00	; C
		dc.l	$786C6666, $666C7800	; D
		dc.l	$7E606078, $60607E00	; E
		dc.l	$7E606078, $60606000	; F
		dc.l	$3C66606E, $66663C00	; G
		dc.l	$6666667E, $66666600	; H
		dc.l	$3C181818, $18183C00	; I
		dc.l	$1E0C0C0C, $0C6C3800	; J
		dc.l	$666C7870, $786C6600	; K
		dc.l	$60606060, $60607E00	; L
		dc.l	$63777F6B, $63636300	; M
		dc.l	$66767E7E, $6E666600	; N
		dc.l	$3C666666, $66663C00	; O
		
		; $50 - $5F
		dc.l	$7C66667C, $60606000	; P
		dc.l	$3C666666, $663C0E00	; Q
		dc.l	$7C66667C, $786C6600	; R
		dc.l	$3C66603C, $06663C00	; S
		dc.l	$7E181818, $18181800	; T
		dc.l	$66666666, $66663C00	; U
		dc.l	$66666666, $663C1800	; V
		dc.l	$6363636B, $7F776300	; W
		dc.l	$66663C18, $3C666600	; X
		dc.l	$6666663C, $18181800	; Y
		dc.l	$7E060C18, $30607E00	; Z
		dc.l	$3C303030, $30303C00	; [
		dc.l	$00603018, $0C060300	; Backslash
		dc.l	$3C0C0C0C, $0C0C3C00	; ]
		dc.l	$00000000, $00000000	; ^ [TODO]
		dc.l	$00000000, $000000FF	; _
		
		; $60 - $6F
		dc.l	$60301800, $00000000	; `
		dc.l	$00003C06, $3E663E00	; a
		dc.l	$0060607C, $66667C00	; b
		dc.l	$00003C60, $60603C00	; c
		dc.l	$0006063E, $66663E00	; d
		dc.l	$00003C66, $7E603C00	; e
		dc.l	$000E183E, $18181800	; f
		dc.l	$00003E66, $663E067C	; g
		dc.l	$0060607C, $66666600	; h
		dc.l	$00180038, $18183C00	; i
		dc.l	$00060006, $0606063C	; j
		dc.l	$0060606C, $786C6600	; k
		dc.l	$00381818, $18183C00	; l
		dc.l	$0000667F, $7F6B6300	; m
		dc.l	$00007C66, $66666600	; n
		dc.l	$00003C66, $66663C00	; o
		
		; $70 - $7F
		dc.l	$00007C66, $667C6060	; p
		dc.l	$00003E66, $663E0606	; q
		dc.l	$00007C66, $60606000	; r
		dc.l	$00003E60, $3C067C00	; s
		dc.l	$00187E18, $18180E00 	; t
		dc.l	$00006666, $66663E00	; u
		dc.l	$00006666, $663C1800	; v
		dc.l	$0000636B, $7F3E3600	; w
		dc.l	$0000663C, $183C6600	; x
		dc.l	$00006666, $663E0C78	; y
		dc.l	$00007E0C, $18307E00	; z
		dc.l	$00000000, $00000000	; { [TODO]
		dc.l	$00000000, $00000000	; | [TODO]
		dc.l	$00000000, $00000000	; } [TODO]
		dc.l	$00000000, $00000000	; ~ [TODO]
		dc.l	$00000000, $00000000	; ⌂ [TODO]
