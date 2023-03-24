	AREA INIT ,CODE , READONLY
	ENTRY
		LDR R0,=0x000000EE ;第一个数高位
		LDR R1,=0x000000FF ;第一个数低位
		LDR R2,=0x00000098 ;第二个数高位
		LDR R3,=0x76543210 ;第二个数低位
		LDR R4,=0x40001000 ;存入地址
		ADDS R5,R1,R3 ;加法改变进位
		ADC R6,R0,R2 ;带进位加法
		STMIA R4!,{R5,R6}
	END