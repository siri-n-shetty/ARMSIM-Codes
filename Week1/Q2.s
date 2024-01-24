@Convert the following assignment into ARM.
@F = ( G + H ) - ( I + J ).
@Use the register R0 to R4 as operands  F to J respectively.

.text
MOV R1, #10	@G
MOV R2, #20	@H
MOV R3, #30	@I
MOV R4, #40	@J
ADDS R5, R1, R2
ADDS R6, R3, R4
SUBS R0, R5, R6
.end