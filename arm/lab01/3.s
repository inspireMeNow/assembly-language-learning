	AREA INIT ,CODE , READONLY
	ENTRY
		LDR R0,=0x000000EE ;��һ������λ
		LDR R1,=0x000000FF ;��һ������λ
		LDR R2,=0x00000098 ;�ڶ�������λ
		LDR R3,=0x76543210 ;�ڶ�������λ
		LDR R4,=0x40001000 ;�����ַ
		ADDS R5,R1,R3 ;�ӷ��ı��λ
		ADC R6,R0,R2 ;����λ�ӷ�
		STMIA R4!,{R5,R6}
	END