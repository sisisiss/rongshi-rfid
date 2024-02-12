Attribute VB_Name = "Module1"
'寻卡选卡激活卡
Public Declare Function piccrequest_ul Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

'读页
Public Declare Function piccread_ul Lib "OUR_MIFARE.dll" (ByVal area As Byte, ByVal piccdata As Long) As Byte

'写页
Public Declare Function piccauthkey_ntag Lib "OUR_MIFARE.dll" (ByVal picckey As Long, ByVal piccntagpack As Long) As Byte

'ntag21x卡的密码认证
Public Declare Function piccwrite_ul Lib "OUR_MIFARE.dll" (ByVal area As Byte, ByVal piccdata As Long) As Byte

'让设备发出声响函数声明
Public Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

'读取设备编号函数声明
Public Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByVal devicenumber As Long) As Byte

'锁定页数据
Public Declare Function picclock_ntag Lib "OUR_MIFARE.dll" (ByVal locktype As Byte, ByVal serial As Long) As Byte

'读取卡版本信息
Public Declare Function piccgetversion_ntag Lib "OUR_MIFARE.dll" (ByVal piccversiondata As Long) As Byte

'读取卡的单向操作计数器（操作流水号）
Public Declare Function piccreadcnt_ntag Lib "OUR_MIFARE.dll" (ByVal picccntdata As Long) As Byte

'读取卡的签字信息
Public Declare Function piccreadsig_ntag Lib "OUR_MIFARE.dll" (ByVal piccsigdata As Long) As Byte

   
'控制字定义,控制字指定,控制字的含义请查看本公司网站提供的动态库说明
Public Const NEEDSERIAL = &H8
Public Const NEEDKEY = &H10
Public Const NEEDHALT = &H20

'用以下两条函数就可以轻松操作ntag21x卡

'轻松读卡
Public Declare Function piccreadex_ntag Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal picckey As Long, ByVal blockaddr As Byte, ByVal blocksize As Byte, ByVal piccdata As Long) As Byte

'轻松写卡
Public Declare Function piccwriteex_ntag Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal picckey As Long, ByVal blockaddr As Byte, ByVal blocksize As Byte, ByVal piccdata As Long) As Byte

'初始化卡
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
