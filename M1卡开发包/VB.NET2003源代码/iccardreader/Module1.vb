Module Module1

    '������������
    Public Declare Function piccreadex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByRef serial As Byte, ByVal area As Byte, ByVal keyA1B0 As Byte, ByRef picckey As Byte, ByRef piccdata0_2 As Byte) As Byte
    'д����������
    Public Declare Function piccwriteex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByRef serial As Byte, ByVal area As Byte, ByVal keyA1B0 As Byte, ByRef picckey As Byte, ByRef piccdata0_2 As Byte) As Byte
    '�޸ĵ�����������
    Public Declare Function piccchangesinglekey Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByRef serial As Byte, ByVal area As Byte, ByVal keyA1B0 As Byte, ByRef piccoldkey As Byte, ByRef piccnewkey As Byte) As Byte
    '���豸�������캯������
    Public Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte
    '��ȡ�豸��ź�������
    Public Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByRef devicenumber As Byte) As Byte
    '�����ֶ���,������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
    Public Const BLOCK0_EN = &H1 '������0��
    Public Const BLOCK1_EN = &H2 '������1��
    Public Const BLOCK2_EN = &H4 '������2��
    Public Const NEEDSERIAL = &H8 '����ָ�����кŵĿ��Ų���
    Public Const EXTERNKEY = &H10 '��Ҫ�ڲ�����ָ����֤����
    Public Const NEEDHALT = &H20 '���������߸ÿ��������ÿ����ٷŻظ�Ӧ���������¸�Ӧ����
End Module
