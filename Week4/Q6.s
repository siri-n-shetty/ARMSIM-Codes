.data
Array:  	.word 1, 3, 5, 7, 9, 11, 13, 15, 17, 19
Key:    	.word 11
Length: 	.word 10

.text
    	LDR R0, =Array         
    	LDR R2, =Key           
    	LDR R2, [R2]           
    	LDR R1, =Length        
    	LDR R1, [R1]           
    	MOV R3, #0             
    	SUB R1, R1, #1         

binary_search:
    	CMP R3, R1             
    	BGT not_found          

    	ADD R4, R3, R1         
    	LSR R4, R4, #1         
    	LDR R5, [R0, R4, LSL #2] 

    	CMP R5, R2             
    	BEQ found              
    	BLT update_low         
    
update_high:
    	SUB R1, R4, #1         
    	B binary_search

update_low:
    	ADD R3, R4, #1         
    	B binary_search

found:
    	MOV R0, #1             
    	B end

not_found:
    	MOV R0, #0             

end:
    	SWI 0x011              
.end
