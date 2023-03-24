    AREA INIT ,CODE , READONLY
	ENTRY
        LDMIA R0!,{R1-R5}  ; 将R0地址处连续的5个字数据加载到R1-R5中，并将R0加上20
        ADD R1, R1, #1     ; 将R1加上1
        ADD R2, R2, #2     ; 将R2加上2
        ADD R3, R3, #3     ; 将R3加上3
        ADD R4, R4, #4     ; 将R4加上4
        ADD R5, R5, #5     ; 将R5加上5
        SUB R0, R0, #20    ; 将R0减回原来的值
        STMIA R0!,{R1-R5}  ; 将R1-R5中的数据存回原来的存储单元，并将R0加上20
    END