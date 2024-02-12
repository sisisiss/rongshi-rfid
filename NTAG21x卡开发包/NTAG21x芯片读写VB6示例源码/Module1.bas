Attribute VB_Name = "Module1"
'Ѱ��ѡ�����
Public Declare Function piccrequest_ul Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

'��ҳ
Public Declare Function piccread_ul Lib "OUR_MIFARE.dll" (ByVal area As Byte, ByVal piccdata As Long) As Byte

'дҳ
Public Declare Function piccauthkey_ntag Lib "OUR_MIFARE.dll" (ByVal picckey As Long, ByVal piccntagpack As Long) As Byte

'ntag21x����������֤
Public Declare Function piccwrite_ul Lib "OUR_MIFARE.dll" (ByVal area As Byte, ByVal piccdata As Long) As Byte

'���豸�������캯������
Public Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

'��ȡ�豸��ź�������
Public Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByVal devicenumber As Long) As Byte

'����ҳ����
Public Declare Function picclock_ntag Lib "OUR_MIFARE.dll" (ByVal locktype As Byte, ByVal serial As Long) As Byte

'��ȡ���汾��Ϣ
Public Declare Function piccgetversion_ntag Lib "OUR_MIFARE.dll" (ByVal piccversiondata As Long) As Byte

'��ȡ���ĵ��������������������ˮ�ţ�
Public Declare Function piccreadcnt_ntag Lib "OUR_MIFARE.dll" (ByVal picccntdata As Long) As Byte

'��ȡ����ǩ����Ϣ
Public Declare Function piccreadsig_ntag Lib "OUR_MIFARE.dll" (ByVal piccsigdata As Long) As Byte

   
'�����ֶ���,������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
Public Const NEEDSERIAL = &H8
Public Const NEEDKEY = &H10
Public Const NEEDHALT = &H20

'���������������Ϳ������ɲ���ntag21x��

'���ɶ���
Public Declare Function piccreadex_ntag Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal picckey As Long, ByVal blockaddr As Byte, ByVal blocksize As Byte, ByVal piccdata As Long) As Byte

'����д��
Public Declare Function piccwriteex_ntag Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal picckey As Long, ByVal blockaddr As Byte, ByVal blocksize As Byte, ByVal piccdata As Long) As Byte

'��ʼ����
Public Declare Function piccinit_ntag Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal picckey As Long, ByVal piccdata As Long) As Byte


Public Function DecToBin(ByVal indata As Byte) As String
DecToBin = ""
Do While indata > 0
    DecToBin = CStr(indata Mod 2) + DecToBin
    indata = Int(indata / 2)
Loop
DecToBin = Right("00000000" & DecToBin, 8)
End Function
Public Function BintoDec(ByVal indata As String) As Byte
Dim strlen As Integer
Dim i As Integer
indata = Trim(indata)
strlen = Len(indata)
BintoDec = 0
For i = 0 To strlen - 1
    If Mid(indata, strlen - i, 1) = "1" Then
       BintoDec = BintoDec + (2 ^ i)
    End If
Next
End Function
