
	AREA INIT ,CODE , READONLY

	ENTRY
		
		MOV R0,#1
		
		MOV R1,#20
		
		CMP R0,#10
		
		CMPEQ R1,#20
		
		ADDNE R0,R0,R1
		
		
	END
 