 AREA Adding,CODE,READONLY
	 ENTRY
	 MACRO
	 strcpy
find LDRB R2,[R0],#1
	 STRB R2,[R1],#1
	 CMP R2,#0
	 BNE find
	 MEND
	 
	 LDR R0,=src
	 LDR R1,=dst
	 LDR R3,=src
	 LDR R4,=dst
	 strcpy
HERE B HERE
 AREA Sumdata,DATA,READWRITE
src DCB "Hello world!",0
dst SPACE 100
	END