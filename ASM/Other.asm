;========================;
;     WaitVsync Sub.     ;
;========================;

WaitVsync:
	move.l	(VarVsync), d0
Sub1:
	move.l	(VarVsync), d1
	
	cmp.l   d0, d1
	beq     Sub1
	rts

WaitHsync:
	move.l	(VarHsync), d0
Sub2:
	move.l	(VarHsync), d1
	
	cmp.l   d0, d1
	beq     Sub2
	rts




ExtrnlInt:           
Bus_Error:          
AddrError:     
Illg_Inst:          
DivByZero:          
Priv_Viol:          
LineA_emu:          
LineF_emu:  
TRACE_int:        
CHK___int:            
TRAPV_int:
ExtInt:
BusError:
AError:
IlgInstr:
DivZ:
PriViol:
LineA:
LineF:
Xint:           
PrintInt:              
 RTE