; 1-arg instruction that's self-patching to remove 0-offset optimization
insn1op	 macro oper,x
	  if (substr("x",0,2)<>"0(") && (substr("x",0,3)<>"ID(")
		!oper	x
	  else
		!oper	1+x
		!org	*-1
		!dc.b	0
	  endif
	 endm

; 2-arg instruction that's self-patching to remove 0-offset optimization
insn2op	 macro oper,x,y
	  if (substr("x",0,2)<>"0(") && (substr("x",0,3)<>"ID(")
		  if (substr("y",0,2)<>"0(") && (substr("y",0,3)<>"ID(")
			!oper	x,y
		  else
			!oper	x,1+y
			!org	*-1
			!dc.b	0
		  endif
	  else
		if substr("y",0,1)<>"D"
		  if (substr("y",0,2)<>"0(") && (substr("y",0,3)<>"ID(")
start:
			!oper	1+x,y
end:
			!org	start+3
			!dc.b	0
			!org	end
		  else
			!oper	1+x,1+y
			!org	*-3
			!dc.b	0
			!org	*+1
			!dc.b	0
		  endif
		else
			!oper	1+x,y
			!org	*-1
			!dc.b	0
		endif
	  endif
	 endm

	; instructions that were used with 0(a#) syntax
	; defined to assemble as they originally did
_move	macro
		insn2op move.ATTRIBUTE, ALLARGS
	endm
_add	macro
		insn2op add.ATTRIBUTE, ALLARGS
	endm
_addq	macro
		insn2op addq.ATTRIBUTE, ALLARGS
	endm
_cmp	macro
		insn2op cmp.ATTRIBUTE, ALLARGS
	endm
_cmpi	macro
		insn2op cmpi.ATTRIBUTE, ALLARGS
	endm
_clr	macro
		insn1op clr.ATTRIBUTE, ALLARGS
	endm
_tst	macro
		insn1op tst.ATTRIBUTE, ALLARGS
	endm