 AREA Adding,CODE,READONLY
strcpy 
	   LDRB R2,[R0],#1
	   STRB R2,[R1],#1
	   CMP R2,#0
	   BNE strcpy
	   MOV PC,LR
	ENTRY
	 LDR R0,=src
	 LDR R1,=dst
	 LDR R3,=src
	 LDR R4,=dst
	 BL strcpy
HERE B HERE
	AREA Sumdata,DATA,READWRITE
src DCB "Hello World!",0
dst SPACE 100
	END