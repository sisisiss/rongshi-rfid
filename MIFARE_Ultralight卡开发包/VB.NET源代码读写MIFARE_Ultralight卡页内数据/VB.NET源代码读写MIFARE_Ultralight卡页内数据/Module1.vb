Module Module1

    '���豸�������캯������
    Public Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

    '��ȡ�豸��ź�������
    Public Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByRef devicenumber As Byte) As Byte

    'Ѱ��ѡ�����
    Public Declare Function piccrequest_ul Lib "OUR_MIFARE.dll" (ByRef devicenumber As Byte) As Byte

    '����
    Public Declare Function piccread_ul Lib "OUR_MIFARE.dll" (ByVal blockaddr As Byte, ByRef piccdata As Byte) As Byte

    'д��
    Public Declare Function piccwrite_ul Lib "OUR_MIFARE.dll" (ByVal blockaddr As Byte, ByRef piccdata As Byte) As Byte

    '���ɶ���
    Public Declare Function piccreadex_ul Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByRef serial As Byte, ByVal blockaddr As Byte, ByVal blocksize As Byte, ByRef piccdata As Byte) As Byte

    '����д��
    Public Declare Function piccwriteex_ul Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByRef serial As Byte, ByVal blockaddr As Byte, ByVal blocksize As Byte, ByRef piccdata As Byte) As Byte


    '�����ֶ���,������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
    Public Const BLOCK0_EN = &H1 '������0��
    Public Const BLOCK1_EN = &H2 '������1��
    Public Const BLOCK2_EN = &H4 '������2��
    Public Const NEEDSERIAL = &H8 '����ָ�����кŵĿ��Ų���
    Public Const EXTERNKEY = &H10 '��Ҫ�ڲ�����ָ����֤����
    Public Const NEEDHALT = &H20 '���������߸ÿ��������ÿ����ٷŻظ�Ӧ���������¸�Ӧ����
End Module
