Attribute VB_Name = "Module1"
Public Declare Function piccrequest Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

Public Declare Function piccreadex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long, ByVal piccdata0_2 As Long) As Byte

Public Declare Function piccwriteex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long, ByVal piccdata0_2 As Long) As Byte

'�޸ĵ�����������
Public Declare Function piccchangesinglekey Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal piccoldkey As Long, ByVal piccnewkey As Long) As Byte

'���豸�������캯������
Public Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

'��ȡ�豸��ź�������
Public Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByVal devicenumber As Long) As Byte

'CPU��Ѱ����������λ��14443A-4��ָ��״̬
Public Declare Function cpurequest Lib "OUR_MIFARE.dll" (ByVal serial As Long, ByVal param As Long, ByVal cosver As Long, ByVal code As Long) As Byte

'CPU�����ͽ��յ���
Public Declare Function cpuisoapdu Lib "OUR_MIFARE.dll" (ByVal sendbuf As Long, ByVal sendlen As Long, ByVal revbuf As Long, ByVal revlen As Long) As Byte

'����CPU��δ��ɵ�ָ��
Public Declare Function cpuruncontinue Lib "OUR_MIFARE.dll" () As Byte

'CPU������Ӧ�ú���

'��ʼ��������(ctrlword�Ƿ���Ҫ����տ�,����Ҫ��յĻ������������뿨���룬�����볤��)ctrlword_0�Ƿ�����տ�������ռ䣨�ֽ�������
Public Declare Function cpursinit Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal key As Long, ByVal keylen As Byte, ByVal customsize As Long) As Byte

'�޸Ŀ����룬��������ļ�û���κι�ϵ��������ֻ��������տ�������д�ļ�����Ч�ġ�
Public Declare Function cpurscardkeychg Lib "OUR_MIFARE.dll" (ByVal oldkey As Long, ByVal oldkeylen As Byte, ByVal newkey As Long, ByVal newkeylen As Byte) As Byte


'ǿ����տ�����cpursinit�����ɹ���ʼ��������������붪ȥ�ˣ����Գ��������µ�ǿ����տ�������տ�������״̬��
Public Declare Function cpurscardclr Lib "OUR_MIFARE.dll" () As Byte



'//�����ļ����ļ����0~5���ļ�ֻ�����룺����,�ļ���д����,���ȣ�����ռ�)
Public Declare Function cpursfileadd Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal readonlykey As Long, ByVal readonlykeylen As Byte, ByVal writekey As Long, ByVal writekeylen As Byte, ByVal customsize As Long) As Byte
'
'//д�ļ�����(�ļ����,�ļ���д����,���볤��,д����ʼλ��,д�볤�ȣ�д������)
Public Declare Function cpursfiledatawrite Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal keytype As Byte, ByVal key As Long, ByVal keylen As Byte, ByVal startaddr As Long, ByVal databuf As Long, ByVal datalen As Long) As Byte

'//���ļ�����(�ļ����,��д����,���볤��,��ȡ��ʼλ��,��ȡ����,��������)
Public Declare Function cpursfiledataread Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal keytype As Byte, ByVal key As Long, ByVal keylen As Byte, ByVal startaddr As Long, ByVal databuf As Long, ByVal datalen As Long) As Byte

'�޸��ļ����룬�޸ĺ���������ס��������ļ����޷�����
Public Declare Function cpursfilekeychg Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal keytype As Byte, ByVal oldkey As Long, ByVal oldkeylen As Byte, ByVal newkey As Long, ByVal newkeylen As Byte) As Byte


'CPU��������������
Public Declare Sub cpucalcexauthkey Lib "OUR_MIFARE.dll" (ByVal randdata As Long, ByVal key As Long, ByVal keylen As Byte, ByVal result As Long)

'CPU���ݼ�������
Public Declare Sub cpudata3desenc Lib "OUR_MIFARE.dll" (ByVal indatabuf As Long, ByVal indatalen As Long, ByVal key As Long, ByVal keylen As Byte, ByVal outdatabuf As Long, ByVal outdatalen As Long)

'CPU���ݽ�������
Public Declare Sub cpudesdec Lib "OUR_MIFARE.dll" (ByVal randdata As Long, ByVal key As Long, ByVal result As Long)

'CPU������MAC
Public Declare Sub cpucalcmac Lib "OUR_MIFARE.dll" (ByVal randdata As Long, ByVal sendbuf As Long, ByVal sendlen As Long, ByVal key As Long, ByVal keylen As Byte, ByVal result As Long)

Public Declare Sub jm_u Lib "OUR_MIFARE.dll" (ByVal oldbuf As Long, ByVal jmbuf As Long, ByVal jmlen As Byte)

Public Declare Sub jm Lib "OUR_MIFARE.dll" (ByVal oldbuf As Long, ByVal jmbuf As Long, ByVal jmlen As Byte)

'CPU���ļ������������
Public Const NEWKEYR = &H0 '����ֻ������
Public Const NEWKEYWR = &H1 '���Ķ�д����

Public Const OLDKEYR = &H0 '��ֻ��������֤
Public Const OLDKEYWR = &H2 '�ö�д������֤

'�����ֶ���,������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
Public Const BLOCK0_EN = &H1
Public Const BLOCK1_EN = &H2
Public Const BLOCK2_EN = &H4
Public Const NEEDSERIAL = &H8
Public Const EXTERNKEY = &H10
Public Const NEEDHALT = &H20

'CPU����������������
'50  RATS���󣬳��ҵ��Դ��룬�û��������
'51  PPS���󣬳��ҵ��Դ��룬�û��������
'52  �ѽ�����14443-4Э��״̬���ɽ���CPU���������в�����
'53  CPU������ͨѶ����
'54  ���ݲ��㣬��Ҫ���ŷ���δ��ɵ�����������
'55  ����ACKָ��������ÿ����ŷ������ݻ���
'56  ��ո�Ŀ¼ʧ��
'57  ��Ƭ��֧�ֹ���
'58  ��Ƭ��ʼ��ʧ��
'59  ����Ŀռ䲻��
'60  ���β�����ʵ���Ѵ���
'61  ���㹻�ռ�
'62  �ļ�������
'63  Ȩ�޲���,�п�������ֻ��������֤����Ȩ���Ķ�д����
'64  ���벻���ڣ�����Կ�ļ�δ����
'65  ���ͳ��ȴ���
'66  Le���󣬼����յ����ݳ���ָ������
'67  ���ܲ�֧�ֻ�����MF ��Ƭ������
'68  ������֤��ʶ�������࣬�������ѱ�����
'86  ���ĺ�����볤�ȱ���ʹ���ʱ�ĳ���һ��
'87  Ӧ��Ŀ¼������
'88  Ӧ���ļ�������
'89  �ļ��Ų��ܳ���5
'90  ��ȡ�ļ�ʱ���صĳ��Ȳ��㣬���ݿ��ܲ���ȷ
'91  һ�ζ��ļ��ĳ��Ȳ��ܳ���255
'92  һ��д�ļ��ĳ��Ȳ��ܳ���247


Public Sub RetText(ByVal RetCode As Byte)

    If RetCode = 0 Then

        MsgBox "�����ɹ�"
        
    ElseIf RetCode = 8 Then
        MsgBox "�������ÿ������ٷŵ���Ӧ��"
        
    ElseIf RetCode = 50 Then
        MsgBox "RATS���󣬳��ҵ��Դ��룬�û��������"
    ElseIf RetCode = 51 Then
        MsgBox "PPS���󣬳��ҵ��Դ��룬�û��������"
    ElseIf RetCode = 52 Then
        MsgBox "�ѽ�����14443-4Э��״̬���ɽ���CPU���������в�����"
    ElseIf RetCode = 53 Then
        MsgBox "CPU������ͨѶ����"
    ElseIf RetCode = 54 Then
        MsgBox "���ݲ��㣬��Ҫ���ŷ���δ��ɵ�����������"
    ElseIf RetCode = 55 Then
        MsgBox "����ACKָ��������ÿ����ŷ������ݻ���"
    ElseIf RetCode = 56 Then
        MsgBox "��ո�Ŀ¼ʧ��"
    ElseIf RetCode = 57 Then
        MsgBox "��Ƭ��֧�ֹ���"
    ElseIf RetCode = 58 Then
        MsgBox "��Ƭ��ʼ��ʧ��"
    ElseIf RetCode = 59 Then
        MsgBox "����Ŀռ䲻��"
    ElseIf RetCode = 60 Then
        MsgBox "���β�����ʵ���Ѵ���"
    ElseIf RetCode = 61 Then
        MsgBox "���㹻�ռ�"
    ElseIf RetCode = 62 Then
        MsgBox "�ļ�������"
    ElseIf RetCode = 63 Then
        MsgBox "Ȩ�޲���,�п�������ֻ��������֤�������޷����Ķ�д������޷�д�ļ�"
    ElseIf RetCode = 64 Then
        MsgBox "���벻���ڣ�����Կ�ļ�δ����"
    ElseIf RetCode = 65 Then
        MsgBox "���ͳ��ȴ���"
    ElseIf RetCode = 66 Then
        MsgBox "Le���󣬼����յ����ݳ���ָ������"
    ElseIf RetCode = 67 Then
        MsgBox "���ܲ�֧�ֻ�����MF ��Ƭ������"
    ElseIf RetCode = 68 Then
        MsgBox "������֤��ʶ�������࣬�������ѱ�����"
    ElseIf RetCode = 86 Then
        MsgBox "���ĺ�����볤�ȱ���ʹ���ʱ�ĳ���һ��"
    ElseIf RetCode = 87 Then
        MsgBox "Ӧ��Ŀ¼������"
    ElseIf RetCode = 88 Then
        MsgBox "Ӧ���ļ�������"
    ElseIf RetCode = 89 Then
        MsgBox "�ļ��Ų��ܳ���5"
    ElseIf RetCode = 90 Then
        MsgBox "��ȡ�ļ�ʱ���صĳ��Ȳ��㣬���ݿ��ܲ���ȷ"
    ElseIf RetCode = 91 Then
        MsgBox "һ�ζ��ļ��ĳ��Ȳ��ܳ���255"
    ElseIf RetCode = 92 Then
        MsgBox "һ��д�ļ��ĳ��Ȳ��ܳ���247"
    ElseIf RetCode >= 70 And RetCode <= 85 Then
        MsgBox "�������ʣ�����Ϊ" & CStr(RetCode - 70) & "�����Ϊ0�������뽫�������޷�����֤"
    Else
        MsgBox "δ֪���󣬴�ʶ���룺" & CStr(RetCode)
    End If
End Sub










