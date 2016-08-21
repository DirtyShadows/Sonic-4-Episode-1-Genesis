; ---------------------------------------------------------------------------
; Debug	list - Green Hill
; ---------------------------------------------------------------------------
	dc.w (((Debug_GHz_End-Debug_GHz-$02)/$08))			; number of items in list
	dc.l Map_obj25+$25000000	; mappings pointer, object type * 10^6
	dc.b 0,	0, $27,	$B2		; subtype, frame, VRAM setting (2 bytes)
	dc.l Map_obj26+$26000000
	dc.b 8,	$A, 6, $80
	dc.l Map_obj26+$26000000
	dc.b 6,	8, 6, $80
	dc.l Map_obj26+$26000000
	dc.b 5,	7, 6, $80
	dc.l Map_obj26+$26000000
	dc.b 4,	6, 6, $80
	dc.l Map_obj26+$26000000
	dc.b 3,	5, 6, $80
	dc.l Map_obj26+$26000000
	dc.b 2,	4, 6, $80
	dc.l Map_obj26+$26000000
	dc.b 1,	3, 6, $80
	dc.l Map_obj1F+$1F000000
	dc.b 0,	0, 4, 0
	dc.l Map_obj22+$22000000
	dc.b 0,	0, 4, $44
	dc.l Map_obj2B+$2B000000
	dc.b 0,	0, 4, $7B
	dc.l Map_obj36+$36000000
	dc.b 0,	0, 5, $1B
	dc.l Map_obj18+$18000000
	dc.b 0,	0, $40,	0
	dc.l Map_obj3B+$3B000000
	dc.b 0,	0, $63,	$D0
	dc.l Map_obj40+$40000000
	dc.b 0,	0, 4, $F0
	dc.l Map_obj41+$41000000
	dc.b 0,	0, 5, $23
	dc.l Map_obj41+$41000000
	dc.b $10,	3, 5, $33
	dc.l Map_obj41+$41000000
	dc.b $20,	6, 5, $23
;	dc.l Map_obj41+$41000000
;	dc.b 1,	0, 5, $23
;	dc.l Map_obj41+$41000000
;	dc.b $40,	$A, 5, $23
	dc.l Map_obj3E+$3E000000
	dc.b 0,	0, 0, $24
	dc.l Map_obj3E+$3E010000
	dc.b 1,	0, 0, $24
	dc.l Map_obj42+$42000000
	dc.b 0,	0, $24,	$9B
	dc.l Map_obj44+$44000000
	dc.b 0,	0, $43,	$4C
	dc.l Map_obj48+$19000000
	dc.b 0,	0, $43,	$AA
	dc.l Map_SpdBooster+$4F000000
	dc.b 0,	0, 5,	$F4
	dc.l Map_obj10+$10000000
	dc.b 1,	0,  $43,$B2
	dc.l Map_obj19+$19000000
	dc.b 1,	0,  $43,$B2
	dc.l Map_obj79+$79000000
	dc.b 1,	0, 6, $C0
	dc.l Map_obj4B+$4B000000
	dc.b 0,	0, $24,	0
	dc.l Map_obj7D+$7D000000
	dc.b 1,	1, $84,	$B6
	dc.l Map_obj11+$11000000
	dc.b $C,	0, $43,	$8E
	even