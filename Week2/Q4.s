@Write a program to find GCD of two numbers

.text
    MOV R0, #16        		@Initialize R0 with 10
    MOV R1, #32         		@Initialize R1 with 8

compare_loop:
    CMP R0, R1         		@Compare the values in R0 and R1
    BEQ end_program    	@If equal, go to end_program

    BGT greater_than   	@If R0 > R1, go to greater_than

less_than:
    SUB R1, R1, R0     		@Subtract R1 from R0
    B compare_loop     		@Repeat compare_loop

greater_than:
    SUB R0, R0, R1     		@Subtract R0 from R1
    B compare_loop     		@Repeat compare_loop

end_program:
    SWI 0x11          
.end
