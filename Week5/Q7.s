@Write a program in ARM7TDMI-ISA to generate a diagonal matrix.
@Note: do not read the matrix elements

.data
matrix: .space 36            
diagonal_value: .word 1      

.text
    LDR R4, =matrix         
    MOV R5, #0              
    MOV R6, #0            

   
    LDR R3, =diagonal_value  
    LDR R3, [R3]            

initialize_matrix:
    CMP R5, #3               
    BEQ finish              


    ADD R2, R4, R5, LSL #4   

    STR R3, [R2]

    ADD R5, R5, #1

    B initialize_matrix

finish:
    .end
