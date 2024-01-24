.text
MOV R0, #20		@B
MOV R1, #40		@C
ADDS R2, R1, R0		@A = B+C
SUBS R3, R2, R1		@D = A-C
RSB R3, R1, R2		@D = A-C using RSB
.end
