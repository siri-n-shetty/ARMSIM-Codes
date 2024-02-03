.text
	MOV R0, #0xF0  
	MOV R1, #32          
	MOV R2, #0           
	MOV R3, #0           

check_loop:
	ANDS R4, R0, #1      
	CMP R4, #0           
	ADDNE R2, R2, #1     
	ADDEQ R3, R3, #1     
	LSR R0, R0, #1       
	SUBS R1, R1, #1      
	BNE check_loop       

check_parity:
	ANDS R4, R2, #1      
	BEQ even_parity      
	B odd_parity         

even_parity:	
	B done

odd_parity:
	B done

done:
	SWI 0X011
.end