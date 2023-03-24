    AREA INIT ,CODE , READONLY
	ENTRY
        MOV R0,#0x00009000
        MOV R1,#1
        MOV R2,#2
        STR R2,[R0]
        SWP R1,R1,[R0]
        SWP R2,R2,[R0]
    END