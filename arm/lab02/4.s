 AREA Data,DATA,READWRITE
Datastruct SPACE 280     ;分配280个字节单元
 MAP Datastruct           ;内存表的首地址为Datastruct内存块
consta FIELD 4          ;定义consta的长度为4字节，相对地址0
constb FIELD 4          ;定义constb的长度为4字节，相对地址4
x FIELD 8               ;定义x的长度为8字节，相对地址8
y FIELD 8               ;定义y的长度为8字节，相对地址16
string FIELD 256        ;定义string的长度为256字节，相对地址24
 AREA Code,CODE,READWRITE 
 ENTRY
 MOV R0,#200	;给R0赋初值
 LDR R1,=Datastruct	;将内存块首地址给R0
 STR R0,[R1]	;将R0中的值存放到以R1的值为地址的存储单元中去
HERE B HERE
 END