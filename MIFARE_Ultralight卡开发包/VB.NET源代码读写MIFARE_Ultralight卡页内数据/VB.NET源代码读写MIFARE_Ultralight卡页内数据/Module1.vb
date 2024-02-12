Module Module1

    '让设备发出声响函数声明
    Public Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

    '读取设备编号函数声明
    Public Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByRef devicenumber As Byte) As Byte

    '寻卡选卡激活卡
    Public Declare Function piccrequest_ul Lib "OUR_MIFARE.dll" (ByRef devicenumber As Byte) As Byte

    '读块
    Public Declare Function piccread_ul Lib "OUR_MIFARE.dll" (ByVal blockaddr As Byte, ByRef piccdata As Byte) As Byte

    '写块
    Public Declare Function piccwrite_ul Lib "OUR_MIFARE.dll" (ByVal blockaddr As Byte, ByRef piccdata As Byte) As Byte

    '轻松读卡
    Public Declare Function piccreadex_ul Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByRef serial As Byte, ByVal blockaddr As Byte, ByVal blocksize As Byte, ByRef piccdata As Byte) As Byte

    '轻松写卡
    Public Declare Function piccwriteex_ul Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByRef serial As Byte, ByVal blockaddr As Byte, ByVal blocksize As Byte, ByRef piccdata As Byte) As Byte


    '控制字定义,控制字指定,控制字的含义请查看本公司网站提供的动态库说明
    Public Const BLOCK0_EN = &H1 '操作第0块
    Public Const BLOCK1_EN = &H2 '操作第1块
    Public Const BLOCK2_EN = &H4 '操作第2块
    Public Const NEEDSERIAL = &H8 '仅对指定序列号的卡号操作
    Public Const EXTERNKEY = &H10 '需要在参数中指定认证密码
    Public Const NEEDHALT = &H20 '操作后休眠该卡，必须拿开卡再放回感应区才能重新感应到卡
End Module
