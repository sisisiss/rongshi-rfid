Attribute VB_Name = "Module1"
Public Declare Function piccrequest Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

Public Declare Function piccreadex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long, ByVal piccdata0_2 As Long) As Byte

Public Declare Function piccwriteex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long, ByVal piccdata0_2 As Long) As Byte

'修改单区函数声明
Public Declare Function piccchangesinglekey Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal piccoldkey As Long, ByVal piccnewkey As Long) As Byte

'让设备发出声响函数声明
Public Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

'读取设备编号函数声明
Public Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByVal devicenumber As Long) As Byte

'CPU卡寻卡及将卡复位到14443A-4的指令状态
Public Declare Function cpurequest Lib "OUR_MIFARE.dll" (ByVal serial As Long, ByVal param As Long, ByVal cosver As Long, ByVal code As Long) As Byte

'CPU卡发送接收调试
Public Declare Function cpuisoapdu Lib "OUR_MIFARE.dll" (ByVal sendbuf As Long, ByVal sendlen As Long, ByVal revbuf As Long, ByVal revlen As Long) As Byte

'继续CPU卡未完成的指令
Public Declare Function cpuruncontinue Lib "OUR_MIFARE.dll" () As Byte

'CPU卡简易应用函数

'初始化函数，(ctrlword是否需要先清空卡,不需要清空的话，可以需输入卡密码，卡密码长度)ctrlword_0是否先清空卡，分配空间（字节数），
Public Declare Function cpursinit Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal key As Long, ByVal keylen As Byte, ByVal customsize As Long) As Byte

'修改卡密码，卡密码和文件没有任何关系，卡密码只是用来清空卡，读和写文件是无效的。
Public Declare Function cpurscardkeychg Lib "OUR_MIFARE.dll" (ByVal oldkey As Long, ByVal oldkeylen As Byte, ByVal newkey As Long, ByVal newkeylen As Byte) As Byte


'强制清空卡，用cpursinit函数成功初始化过后，如果卡密码丢去了，可以尝试用以下的强制清空卡函数清空卡至出厂状态。
Public Declare Function cpurscardclr Lib "OUR_MIFARE.dll" () As Byte



'//增加文件（文件序号0~5，文件只读密码：长度,文件读写密码,长度，分配空间)
Public Declare Function cpursfileadd Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal readonlykey As Long, ByVal readonlykeylen As Byte, ByVal writekey As Long, ByVal writekeylen As Byte, ByVal customsize As Long) As Byte
'
'//写文件数据(文件序号,文件读写密码,密码长度,写入起始位置,写入长度，写入内容)
Public Declare Function cpursfiledatawrite Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal keytype As Byte, ByVal key As Long, ByVal keylen As Byte, ByVal startaddr As Long, ByVal databuf As Long, ByVal datalen As Long) As Byte

'//读文件数据(文件序号,读写密码,密码长度,读取起始位置,读取长度,读出内容)
Public Declare Function cpursfiledataread Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal keytype As Byte, ByVal key As Long, ByVal keylen As Byte, ByVal startaddr As Long, ByVal databuf As Long, ByVal datalen As Long) As Byte

'修改文件密码，修改后，请妥慎记住，否则该文件将无法再用
Public Declare Function cpursfilekeychg Lib "OUR_MIFARE.dll" (ByVal fileno As Byte, ByVal keytype As Byte, ByVal oldkey As Long, ByVal oldkeylen As Byte, ByVal newkey As Long, ByVal newkeylen As Byte) As Byte


'CPU卡随机码加密运算
Public Declare Sub cpucalcexauthkey Lib "OUR_MIFARE.dll" (ByVal randdata As Long, ByVal key As Long, ByVal keylen As Byte, ByVal result As Long)

'CPU数据加密运算
Public Declare Sub cpudata3desenc Lib "OUR_MIFARE.dll" (ByVal indatabuf As Long, ByVal indatalen As Long, ByVal key As Long, ByVal keylen As Byte, ByVal outdatabuf As Long, ByVal outdatalen As Long)

'CPU数据解密运算
Public Declare Sub cpudesdec Lib "OUR_MIFARE.dll" (ByVal randdata As Long, ByVal key As Long, ByVal result As Long)

'CPU卡计算MAC
Public Declare Sub cpucalcmac Lib "OUR_MIFARE.dll" (ByVal randdata As Long, ByVal sendbuf As Long, ByVal sendlen As Long, ByVal key As Long, ByVal keylen As Byte, ByVal result As Long)

Public Declare Sub jm_u Lib "OUR_MIFARE.dll" (ByVal oldbuf As Long, ByVal jmbuf As Long, ByVal jmlen As Byte)

Public Declare Sub jm Lib "OUR_MIFARE.dll" (ByVal oldbuf As Long, ByVal jmbuf As Long, ByVal jmlen As Byte)

'CPU卡文件密码更改配置
Public Const NEWKEYR = &H0 '更改只读密码
Public Const NEWKEYWR = &H1 '更改读写密码

Public Const OLDKEYR = &H0 '用只读密码认证
Public Const OLDKEYWR = &H2 '用读写密码认证

'控制字定义,控制字指定,控制字的含义请查看本公司网站提供的动态库说明
Public Const BLOCK0_EN = &H1
Public Const BLOCK1_EN = &H2
Public Const BLOCK2_EN = &H4
Public Const NEEDSERIAL = &H8
Public Const EXTERNKEY = &H10
Public Const NEEDHALT = &H20

'CPU卡操作错误代码解释
'50  RATS错误，厂家调试代码，用户不需理会
'51  PPS错误，厂家调试代码，用户不需理会
'52  已进入了14443-4协议状态，可进行CPU卡功能所有操作了
'53  CPU卡功能通讯错误
'54  数据不足，需要接着发送未完成的数据至卡上
'55  发送ACK指令给卡，让卡接着发送数据回来
'56  清空根目录失败
'57  卡片不支持功能
'58  卡片初始化失败
'59  分配的空间不足
'60  本次操作的实体已存在
'61  无足够空间
'62  文件不存在
'63  权限不足,有可能是用只读密码认证，无权更改读写密码
'64  密码不存在，或密钥文件未创建
'65  传送长度错误
'66  Le错误，即接收的数据长度指定过大
'67  功能不支持或卡中无MF 或卡片已锁定
'68  密码认证错识次数过多，该密码已被锁死
'86  更改后的密码长度必须和创建时的长度一致
'87  应用目录不存在
'88  应用文件不存在
'89  文件号不能超过5
'90  读取文件时返回的长度不足，数据可能不正确
'91  一次读文件的长度不能超过255
'92  一次写文件的长度不能超过247


Public Sub RetText(ByVal RetCode As Byte)

    If RetCode = 0 Then

        MsgBox "操作成功"
        
    ElseIf RetCode = 8 Then
        MsgBox "请重新拿开卡后再放到感应区"
        
    ElseIf RetCode = 50 Then
        MsgBox "RATS错误，厂家调试代码，用户不需理会"
    ElseIf RetCode = 51 Then
        MsgBox "PPS错误，厂家调试代码，用户不需理会"
    ElseIf RetCode = 52 Then
        MsgBox "已进入了14443-4协议状态，可进行CPU卡功能所有操作了"
    ElseIf RetCode = 53 Then
        MsgBox "CPU卡功能通讯错误"
    ElseIf RetCode = 54 Then
        MsgBox "数据不足，需要接着发送未完成的数据至卡上"
    ElseIf RetCode = 55 Then
        MsgBox "发送ACK指令给卡，让卡接着发送数据回来"
    ElseIf RetCode = 56 Then
        MsgBox "清空根目录失败"
    ElseIf RetCode = 57 Then
        MsgBox "卡片不支持功能"
    ElseIf RetCode = 58 Then
        MsgBox "卡片初始化失败"
    ElseIf RetCode = 59 Then
        MsgBox "分配的空间不足"
    ElseIf RetCode = 60 Then
        MsgBox "本次操作的实体已存在"
    ElseIf RetCode = 61 Then
        MsgBox "无足够空间"
    ElseIf RetCode = 62 Then
        MsgBox "文件不存在"
    ElseIf RetCode = 63 Then
        MsgBox "权限不足,有可能是用只读密码认证，导致无法更改读写密码或无法写文件"
    ElseIf RetCode = 64 Then
        MsgBox "密码不存在，或密钥文件未创建"
    ElseIf RetCode = 65 Then
        MsgBox "传送长度错误"
    ElseIf RetCode = 66 Then
        MsgBox "Le错误，即接收的数据长度指定过大"
    ElseIf RetCode = 67 Then
        MsgBox "功能不支持或卡中无MF 或卡片已锁定"
    ElseIf RetCode = 68 Then
        MsgBox "密码认证错识次数过多，该密码已被锁死"
    ElseIf RetCode = 86 Then
        MsgBox "更改后的密码长度必须和创建时的长度一致"
    ElseIf RetCode = 87 Then
        MsgBox "应用目录不存在"
    ElseIf RetCode = 88 Then
        MsgBox "应用文件不存在"
    ElseIf RetCode = 89 Then
        MsgBox "文件号不能超过5"
    ElseIf RetCode = 90 Then
        MsgBox "读取文件时返回的长度不足，数据可能不正确"
    ElseIf RetCode = 91 Then
        MsgBox "一次读文件的长度不能超过255"
    ElseIf RetCode = 92 Then
        MsgBox "一次写文件的长度不能超过247"
    ElseIf RetCode >= 70 And RetCode <= 85 Then
        MsgBox "密码错误，剩余次数为" & CStr(RetCode - 70) & "，如果为0，该密码将锁死，无法再认证"
    Else
        MsgBox "未知错误，错识代码：" & CStr(RetCode)
    End If
End Sub










