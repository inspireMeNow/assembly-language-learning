 AREA Data,DATA,READWRITE
Datastruct SPACE 280     ;����280���ֽڵ�Ԫ
 MAP Datastruct           ;�ڴ����׵�ַΪDatastruct�ڴ��
consta FIELD 4          ;����consta�ĳ���Ϊ4�ֽڣ���Ե�ַ0
constb FIELD 4          ;����constb�ĳ���Ϊ4�ֽڣ���Ե�ַ4
x FIELD 8               ;����x�ĳ���Ϊ8�ֽڣ���Ե�ַ8
y FIELD 8               ;����y�ĳ���Ϊ8�ֽڣ���Ե�ַ16
string FIELD 256        ;����string�ĳ���Ϊ256�ֽڣ���Ե�ַ24
 AREA Code,CODE,READWRITE 
 ENTRY
 MOV R0,#200	;��R0����ֵ
 LDR R1,=Datastruct	;���ڴ���׵�ַ��R0
 STR R0,[R1]	;��R0�е�ֵ��ŵ���R1��ֵΪ��ַ�Ĵ洢��Ԫ��ȥ
HERE B HERE
 END