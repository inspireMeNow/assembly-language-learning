    AREA INIT ,CODE , READONLY
	ENTRY
        LDMIA R0!,{R1-R5}  ; ��R0��ַ��������5�������ݼ��ص�R1-R5�У�����R0����20
        ADD R1, R1, #1     ; ��R1����1
        ADD R2, R2, #2     ; ��R2����2
        ADD R3, R3, #3     ; ��R3����3
        ADD R4, R4, #4     ; ��R4����4
        ADD R5, R5, #5     ; ��R5����5
        SUB R0, R0, #20    ; ��R0����ԭ����ֵ
        STMIA R0!,{R1-R5}  ; ��R1-R5�е����ݴ��ԭ���Ĵ洢��Ԫ������R0����20
    END