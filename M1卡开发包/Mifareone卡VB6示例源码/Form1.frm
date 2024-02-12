VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "读写器例子程序"
   ClientHeight    =   11130
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7965
   ForeColor       =   &H8000000F&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11130
   ScaleWidth      =   7965
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton Command26 
      Caption         =   " 读写FM11RF32国产S70卡"
      Height          =   405
      Left            =   2430
      TabIndex        =   42
      Top             =   9060
      Width           =   2355
   End
   Begin VB.CommandButton Command25 
      Caption         =   " 读写指定64个扇区"
      Height          =   405
      Left            =   6930
      TabIndex        =   41
      Top             =   10950
      Width           =   2115
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   150
      Top             =   10230
   End
   Begin VB.CommandButton Command24 
      Caption         =   "开始侦听HID ICLASS CSN"
      Height          =   375
      Left            =   270
      TabIndex        =   40
      Top             =   10290
      Width           =   2265
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   7500
      Top             =   9810
   End
   Begin VB.TextBox Text8 
      ForeColor       =   &H000000FF&
      Height          =   855
      Left            =   2670
      MultiLine       =   -1  'True
      TabIndex        =   39
      Top             =   9810
      Width           =   4965
   End
   Begin VB.CommandButton Command23 
      Caption         =   "开始侦听二代身份证UID"
      Height          =   375
      Left            =   300
      TabIndex        =   38
      Top             =   9810
      Width           =   2265
   End
   Begin VB.CommandButton Command22 
      Caption         =   "扩展功能 将卡认证密码写入芯片"
      Height          =   375
      Left            =   4830
      TabIndex        =   37
      Top             =   9090
      Width           =   3045
   End
   Begin VB.CommandButton Command21 
      Caption         =   "扩展功能 读写指定扇区"
      Height          =   405
      Left            =   270
      TabIndex        =   36
      Top             =   9060
      Width           =   2115
   End
   Begin VB.TextBox Text7 
      Height          =   345
      Left            =   870
      TabIndex        =   34
      Top             =   8490
      Width           =   4785
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   150
      Left            =   7140
      Top             =   7020
   End
   Begin VB.CommandButton Command20 
      Caption         =   "开始校验卡密码"
      Height          =   375
      Left            =   5700
      TabIndex        =   33
      Top             =   8460
      Width           =   1995
   End
   Begin VB.TextBox Text6 
      Height          =   315
      Left            =   4290
      TabIndex        =   31
      Text            =   "FFFFFFFFFFFF"
      Top             =   8100
      Width           =   1305
   End
   Begin VB.ComboBox Combo2 
      Height          =   300
      ItemData        =   "Form1.frx":0000
      Left            =   840
      List            =   "Form1.frx":0034
      Style           =   2  'Dropdown List
      TabIndex        =   28
      Top             =   8115
      Width           =   705
   End
   Begin VB.TextBox Text5 
      Height          =   315
      Left            =   2190
      TabIndex        =   27
      Text            =   "FFFFFFFFFFFF"
      Top             =   8100
      Width           =   1305
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   7410
      Top             =   4380
   End
   Begin VB.CommandButton Command19 
      Caption         =   "开始侦听设备编号"
      Height          =   375
      Left            =   4290
      TabIndex        =   25
      Top             =   4350
      Width           =   1815
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      ItemData        =   "Form1.frx":006E
      Left            =   3990
      List            =   "Form1.frx":008A
      Style           =   2  'Dropdown List
      TabIndex        =   24
      Top             =   7560
      Width           =   825
   End
   Begin VB.CommandButton Command18 
      Caption         =   "写S70卡"
      Height          =   345
      Left            =   6450
      TabIndex        =   23
      Top             =   7560
      Width           =   1305
   End
   Begin VB.TextBox Text4 
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   330
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   7530
      Width           =   3480
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1665
      Left            =   330
      MultiLine       =   -1  'True
      TabIndex        =   21
      Top             =   5820
      Width           =   7410
   End
   Begin VB.CommandButton Command17 
      Caption         =   "读S70卡"
      Height          =   345
      Left            =   5130
      TabIndex        =   20
      Top             =   7590
      Width           =   1305
   End
   Begin VB.CommandButton Command16 
      Caption         =   "用内部密码认证轻松写卡"
      Height          =   390
      Left            =   4860
      TabIndex        =   19
      Top             =   5190
      Width           =   2145
   End
   Begin VB.CommandButton Command15 
      Caption         =   "用内部密码认证轻松读卡"
      Height          =   390
      Left            =   2640
      TabIndex        =   18
      Top             =   5190
      Width           =   2145
   End
   Begin VB.CommandButton Command14 
      Caption         =   "将卡认证密码写入芯片"
      Height          =   375
      Left            =   360
      TabIndex        =   17
      Top             =   5190
      Width           =   2235
   End
   Begin VB.TextBox Text2 
      Height          =   405
      Left            =   2190
      TabIndex        =   16
      Top             =   4350
      Width           =   1965
   End
   Begin VB.CommandButton Command13 
      Caption         =   "开始侦听读卡"
      Height          =   375
      Left            =   300
      TabIndex        =   15
      Top             =   4380
      Width           =   1815
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   6630
      Top             =   4440
   End
   Begin VB.CommandButton Command12 
      Caption         =   "写数据到指定块"
      Height          =   540
      Left            =   6060
      TabIndex        =   14
      Top             =   3510
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   2070
      TabIndex        =   13
      Top             =   3690
      Width           =   3855
   End
   Begin VB.CommandButton Command11 
      Caption         =   "读指定块数据"
      Height          =   540
      Left            =   180
      TabIndex        =   12
      Top             =   3510
      Width           =   1815
   End
   Begin VB.CommandButton Command10 
      Caption         =   "写设备存储区2"
      Height          =   540
      Left            =   6000
      TabIndex        =   11
      Top             =   2310
      Width           =   1815
   End
   Begin VB.CommandButton Command9 
      Caption         =   "读设备存储区2"
      Height          =   540
      Left            =   4050
      TabIndex        =   10
      Top             =   2310
      Width           =   1815
   End
   Begin VB.CommandButton Command8 
      Caption         =   "读设备存储区1"
      Height          =   540
      Left            =   150
      TabIndex        =   9
      Top             =   2310
      Width           =   1815
   End
   Begin VB.CommandButton Command7 
      Caption         =   "写设备存储区1"
      Height          =   540
      Left            =   2100
      TabIndex        =   8
      Top             =   2310
      Width           =   1815
   End
   Begin VB.CommandButton Command6 
      Caption         =   "改AB密码及控制字"
      Height          =   540
      Left            =   6000
      TabIndex        =   7
      Top             =   1590
      Width           =   1815
   End
   Begin VB.CommandButton Command5 
      Caption         =   "读出设备全球唯一的设备编号，作为加密狗用"
      Height          =   540
      Left            =   150
      TabIndex        =   4
      Top             =   1575
      Width           =   5685
   End
   Begin VB.CommandButton Command4 
      Caption         =   "让设备发出声响"
      Height          =   540
      Left            =   6000
      TabIndex        =   3
      Top             =   150
      Width           =   1815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "改单区密码"
      Height          =   540
      Left            =   4050
      TabIndex        =   2
      Top             =   150
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "轻松写卡"
      Height          =   540
      Left            =   2100
      TabIndex        =   1
      Top             =   150
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "轻松读卡"
      Height          =   540
      Left            =   150
      TabIndex        =   0
      Top             =   150
      Width           =   1815
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "状态："
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   330
      TabIndex        =   35
      Top             =   8580
      Width           =   540
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "B密码："
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   3720
      TabIndex        =   32
      Top             =   8235
      Width           =   630
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "A密码："
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   1620
      TabIndex        =   30
      Top             =   8235
      Width           =   630
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "区号："
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   330
      TabIndex        =   29
      Top             =   8235
      Width           =   540
   End
   Begin VB.Label Label1 
      Height          =   255
      Left            =   2220
      TabIndex        =   26
      Top             =   4830
      Width           =   1935
   End
   Begin VB.Label Label3 
      Caption         =   "每个按钮只调用到一个函数，以上4个函数可以轻松应付各类应用，可以节省大量的开发时间"
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   300
      TabIndex        =   6
      Top             =   840
      Width           =   7365
   End
   Begin VB.Label Label2 
      Caption         =   "建议将OUR_MIFARE.dll复制到应用程序同一目录下"
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   240
      TabIndex        =   5
      Top             =   3150
      Width           =   6090
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Open the comport
Private Declare Function piccreadex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long, ByVal piccdata0_2 As Long) As Byte

'Close the comport
Private Declare Function piccwriteex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long, ByVal piccdata0_2 As Long) As Byte

'修改单区函数声明
Private Declare Function piccchangesinglekey Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal piccoldkey As Long, ByVal piccnewkey As Long) As Byte

Private Declare Function piccchangesinglekeyex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal piccoldkey As Long, ByVal piccnewkey As Long) As Byte

'让设备发出声响函数声明
Private Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

'读取设备编号函数声明
Private Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByVal devicenumber As Long) As Byte

'寻卡并返回该卡的序列号
Private Declare Function piccrequest Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

'寻卡并选中指定序列号的IC卡，必须指定序列号
Private Declare Function piccrequestex Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

'将密码写入芯片内部保密性极高的只写区域，此函数写入密码仅仅是为了piccauthkey2函数的使用。
Private Declare Function pcdwritekeytoe2 Lib "OUR_MIFARE.dll" (ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long) As Byte

'密码认证方式1，用外部密码认证，必须指定外部密码。本函数必须在piccrequest或piccrequestex函数执行之后运行，并且要紧接着调用，中途不能调用其他函数。
Private Declare Function piccauthkey1 Lib "OUR_MIFARE.dll" (ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long) As Byte

'读出一块的数据，也就是16个字节。必须在执行piccrequest或 Piccrequestex函数，接着执行piccauthkey1或 piccauthkey2函数，然后执行piccread才能成功读出一块的数据。
Private Declare Function piccread Lib "OUR_MIFARE.dll" (ByVal block As Byte, ByVal piccdata As Long) As Byte

'写一块的数据，也就是16个字节。必须在执行piccrequest或 Piccrequestex函数，接着执行piccauthkey1或 piccauthkey2函数，然后执行piccread才能成功读出一块的数据。
Private Declare Function piccwrite Lib "OUR_MIFARE.dll" (ByVal block As Byte, ByVal piccdata As Long) As Byte

'读设备存储区1
Private Declare Function pcdgetcustomizedata1 Lib "OUR_MIFARE.dll" (ByVal readerdata As Long) As Byte

'写设备存储区1
Private Declare Function pcdsetcustomizedata1 Lib "OUR_MIFARE.dll" (ByVal readerdata As Long) As Byte


'读设备存储区2
Private Declare Function pcdgetcustomizedata2 Lib "OUR_MIFARE.dll" (ByVal readerdata As Long, ByVal devicenumber As Long) As Byte

'写设备存储区2
Private Declare Function pcdsetcustomizedata2 Lib "OUR_MIFARE.dll" (ByVal readerdata As Long) As Byte

Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

'读二代证UID
Private Declare Function sfzrequest Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

'读iclass csn
Private Declare Function iso15693iclassreadcsn Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte
        
'控制字定义,控制字指定,控制字的含义请查看本公司网站提供的动态库说明
Private Const BLOCK0_EN = &H1
Private Const BLOCK1_EN = &H2
Private Const BLOCK2_EN = &H4
Private Const NEEDSERIAL = &H8
Private Const EXTERNKEY = &H10
Private Const NEEDHALT = &H20

Dim oldkh As String


Private Sub Command1_Click()
'轻松读卡
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 47) As Byte '卡数据缓冲
Dim myblockdata(0 To 15) As Byte '卡数据缓冲



'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'指定区号
myareano = 8 '指定为第8区
'批定密码模式
authmode = 1 '大于0表示用A密码认证，推荐用A密码认证

'指定密码
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

status = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'在下面设定断点，然后查看mypiccserial、mypiccdata，
'调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
'开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
'处理返回函数
Select Case status

    Case 0:
        status = piccread(35, VarPtr(myblockdata(0)))
        MsgBox "操作成功"
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常错误：" + Format(status, "0")

End Select



'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错



End Sub

Private Sub Command10_Click()
'写设备存储区2

'技术支持:
'网站:
Dim status As Byte

Dim devdata(0 To 7) As Byte  '设备存储器数据

devdata(0) = 11
devdata(1) = 12
devdata(2) = 13
devdata(3) = 14
devdata(4) = 15
devdata(5) = 16
devdata(6) = 17
devdata(7) = 18

status = pcdsetcustomizedata2(VarPtr(devdata(0)))

Select Case status

    Case 0:
    
        MsgBox "操作成功"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常错误：" + Format(status, "0")
End Select


'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错

End Sub

Private Sub Command11_Click()
'读卡
'技术支持:
'网站:
Dim status As Byte '存放返回值
Dim I As Integer
Dim readinf As String
Dim myareano As Byte '区号
Dim myblock As Byte  '块号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 47) As Byte '卡数据缓冲
Dim myblockdata(0 To 15) As Byte '卡数据缓冲

'指定区号
myareano = 8 '指定为第8区
myblock = myareano * 4 + 0    ''块号为区号*4+0、1、2、3，其中第3块为密码控制块
'批定密码模式
authmode = 1 '大于0表示用A密码认证，推荐用A密码认证

'指定密码
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

Text1 = ""
status = piccrequest(VarPtr(mypiccserial(0)))
If status = 0 Then
    status = piccauthkey1(VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)))
    If status = 0 Then
        status = piccread(myblock, VarPtr(myblockdata(0)))
        If status = 0 Then
            readinf = ""
            For I = 0 To 15
                readinf = readinf + Format(Hex(myblockdata(I)), "00")
            Next
            Text1 = readinf
        Else
            errdlag status
        End If
    Else
        errdlag status
    End If
Else
    errdlag status
End If
End Sub

Private Sub Command12_Click()
'写卡
'技术支持:
'网站:
Dim status As Byte '存放返回值
Dim I As Integer
Dim writinf As String
Dim myareano As Byte '区号
Dim myblock As Byte  '块号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 47) As Byte '卡数据缓冲
Dim myblockdata(0 To 15) As Byte '卡数据缓冲

'指定区号
myareano = 8 '指定为第8区
myblock = myareano * 4 + 0    '块号为区号*4+0、1、2、3，其中第3块为密码控制块
'批定密码模式
authmode = 1 '大于0表示用A密码认证，推荐用A密码认证

'指定密码
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

If myblock Mod 4 = 3 Then
    I = MsgBox("    你确定要修改密码及控制块数据吗？如写入错误的信息此扇区将报废。", vbQuestion + vbOKCancel, "警告")
    If I <> vbOK Then Exit Sub
End If

status = piccrequest(VarPtr(mypiccserial(0)))
If status = 0 Then
    status = piccauthkey1(VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)))
    If status = 0 Then
        writinf = Trim(Text1.Text) + "FFFFFFFFFFFFFF078069FFFFFFFFFFFF"
        For I = 0 To 15
            myblockdata(I) = "&H" + Mid(writinf, I * 2 + 1, 2)
        Next
        
        status = piccwrite(myblock, VarPtr(myblockdata(0)))
        If status = 0 Then
            pcdbeep 50
            MsgBox "写卡操作成功！", vbInformation + vbOKOnly, "提示"
        Else
            errdlag status
        End If
    Else
        errdlag status
    End If
Else
    errdlag status
End If
End Sub

Private Sub Command13_Click()
    If Command13.Caption = "开始侦听读卡" Then
        Timer1.Enabled = True
        Command13.Caption = "暂停侦听读卡"
        
    Else
        Timer1.Enabled = False
        Command13.Caption = "开始侦听读卡"
    End If
End Sub

Private Sub Command14_Click()
'读卡
'技术支持:
'网站:
Dim status As Byte '存放返回值
Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim mypicckey(0 To 5) As Byte '密码

'指定区号
myareano = 8 '指定为第8区
'批定密码模式
authmode = 1 '大于0表示用A密码认证，推荐用A密码认证

'指定密码
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF


    status = pcdwritekeytoe2(myareano, authmode, VarPtr(mypicckey(0)))
    If status = 0 Then
        MsgBox "IC卡认证密码已经写入读写器!"
    Else
        errdlag status
    End If
End Sub

Private Sub Command15_Click()
'轻松读卡
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 47) As Byte '卡数据缓冲
Dim myblockdata(0 To 15) As Byte '卡数据缓冲



'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
'指定区号
myareano = 8 '指定为第8区
'批定密码模式
authmode = 1 '大于0表示用A密码认证，推荐用A密码认证

'内部密码认证，可以不传认证密码，更加安全
'mypicckey(0) = &HF0
'mypicckey(1) = &HF0
'mypicckey(2) = &HF0
'mypicckey(3) = &HF0
'mypicckey(4) = &HF0
'mypicckey(5) = &HF0

status = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'在下面设定断点，然后查看mypiccserial、mypiccdata，
'调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
'开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
'处理返回函数
Select Case status

    Case 0:
        status = piccread(35, VarPtr(myblockdata(0)))   '读密码及控制位区
        MsgBox "操作成功"
        
    
    Case Else
        errdlag status

End Select

End Sub

Private Sub Command16_Click()
'轻松写卡
'技术支持:
'网站:
Dim I As Integer

Dim status As Byte '存放返回值
Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 47) As Byte '卡数据缓冲
        

'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
'指定区号
myareano = 8 '指定为第8区
'批定密码模式
authmode = 1 '大于0表示用A密码认证，推荐用A密码认证

'内部密码认证，可以不传认证密码，更加安全
'mypicckey(0) = &HF0
'mypicckey(1) = &HF0
'mypicckey(2) = &HF0
'mypicckey(3) = &HF0
'mypicckey(4) = &HF0
'mypicckey(5) = &HF0

'指定卡数据
For I = 0 To 47
    mypiccdata(I) = I
Next I

status = piccwriteex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'在下面设定断点，然后查看mypiccserial、mypiccdata，
'调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
'开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
'处理返回函数
Select Case status

    Case 0:
    
        MsgBox "操作成功"
        
    
    Case Else
        errdlag status

End Select

End Sub

Private Sub Command17_Click()
'轻松读卡
'技术支持:
'网站:
Dim status As Byte '存放返回值
Dim I, j, p As Integer
Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 255) As Byte '卡数据缓冲
Dim myblockdata(0 To 15) As Byte '卡数据缓冲
Dim readinf  As String


'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'指定区号
myareano = Val(Combo1.Text)  '指定区
'批定密码模式
authmode = 0 '大于0表示用A密码认证，推荐用A密码认证

'指定密码
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

Text3.Text = ""

status = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'在下面设定断点，然后查看mypiccserial、mypiccdata，
'调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
'开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
'处理返回函数
Select Case status

    Case 0:
        p = 48
        For I = 3 To 15
            status = piccread(128 + ((myareano - 32) * 16) + I, VarPtr(myblockdata(0)))
            If status = 0 Then
                For j = 0 To 15
                    mypiccdata(p) = myblockdata(j)
                    p = p + 1
                Next
            Else
                MsgBox "读第" & Format(myareano * 4 + I, "0") & "块数据出错！"
                Exit Sub
            End If
        Next
        readinf = ""
        For I = 0 To 239         '0-14块 数据块
            readinf = readinf + Format(Hex(mypiccdata(I)), "00")
        Next
        Text3.Text = readinf
        
        readinf = ""
        For I = 240 To 255     '15块密码控制块
            readinf = readinf + Format(Hex(mypiccdata(I)), "00")
        Next
        Text4.Text = readinf
        
        MsgBox "读卡成功"
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常错误：" + Format(status, "0")

End Select
End Sub

Private Sub Command18_Click()
'轻松写卡
'技术支持:
'网站:
Dim I, j, p As Integer

Dim status As Byte '存放返回值
Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 47) As Byte '卡数据缓冲
Dim myblockdata(0 To 15) As Byte '卡数据缓冲
Dim writhdata(0 To 240) As Byte '卡数据缓冲
Dim writinf As String
        


'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'指定区号
myareano = Val(Combo1.Text) '指定为第8区
'批定密码模式
authmode = 1 '大于0表示用A密码认证，推荐用A密码认证

'指定密码
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

writinf = Trim(Text3.Text)
For I = 0 To 239
    writinf = writinf + "00"
Next

'指定卡数据
For I = 0 To 239
    writhdata(I) = "&H" + Mid(writinf, I * 2 + 1, 2)
    If I <= 47 Then mypiccdata(I) = writhdata(I)
Next I

status = piccwriteex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'在下面设定断点，然后查看mypiccserial、mypiccdata，
'调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
'开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
'处理返回函数
Select Case status
    Case 0:
         j = 0
         p = 3
         For I = 48 To 239
             myblockdata(j) = writhdata(I)
             j = j + 1
             If j = 16 Then
                status = piccwrite(128 + ((myareano - 32) * 16) + p, VarPtr(myblockdata(0)))
                If status = 0 Then
                    j = 0
                    p = p + 1
                Else
                   MsgBox "写" & Format(128 + ((myareano - 32) * 16) + p, "0") & "块错误"
                   Exit Sub
                End If
             End If
         Next
         
         pcdbeep 50
         MsgBox "操作成功"
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常错误：" + Format(status, "0")

End Select

End Sub

Private Sub Command19_Click()
    If Command19.Caption = "开始侦听设备编号" Then
'        Text2 = 0
        Timer2.Enabled = True
        Command19.Caption = "暂停侦听设备编号"
        
    Else
        Timer2.Enabled = False
        Command19.Caption = "开始侦听设备编号"
        Label1.Caption = ""
    End If
End Sub

Private Sub Command2_Click()
'轻松写卡
'技术支持:
'网站:
Dim I As Integer

Dim status As Byte '存放返回值
Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 47) As Byte '卡数据缓冲

        


'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'指定区号
myareano = 8 '指定为第8区
'批定密码模式
authmode = 1 '大于0表示用A密码认证，推荐用A密码认证

'指定密码
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

'指定卡数据
For I = 0 To 47
    mypiccdata(I) = I
Next I

status = piccwriteex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'在下面设定断点，然后查看mypiccserial、mypiccdata，
'调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
'开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
'处理返回函数
Select Case status

    Case 0:
    
        MsgBox "操作成功"
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常错误：" + Format(status, "0")

End Select



'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub

Private Sub Command20_Click()
If Len(Text5) = 12 And Len(Text6) = 12 Then
    If Command20.Caption = "开始校验卡密码" Then
        Timer3.Enabled = True
        Command20.Caption = "暂停"
        oldkh = ""
    Else
        Timer1.Enabled = False
        Command20.Caption = "开始校验卡密码"
    End If
Else
    MsgBox "密码不对"
End If

End Sub

Private Sub Command21_Click()
Form2.Show 1
End Sub

Private Sub Command22_Click()
Form3.Show 1
End Sub

Private Sub Command23_Click()
    If Command23.Caption = "开始侦听二代身份证UID" Then
        Timer4.Enabled = True
        Command23.Caption = "暂停侦听读卡"
        
    Else
        Timer4.Enabled = False
        Command23.Caption = "开始侦听二代身份证UID"
        Text8.Text = ""
    End If
End Sub

Private Sub Command24_Click()
    If Command24.Caption = "开始侦听HID ICLASS CSN" Then
        Timer5.Enabled = True
        Command24.Caption = "暂停侦听读卡"
        
    Else
        Timer5.Enabled = False
        Command24.Caption = "开始侦听HID ICLASS CSN"
        Text8.Text = ""
    End If
End Sub

Private Sub Command25_Click()
Form4.Show 1
End Sub

Private Sub Command26_Click()
Form5.Show 1
End Sub

Private Sub Command3_Click()
'修改单区密码
'技术支持:
'网站:
Dim I As Integer

Dim status As Byte '存放返回值
Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccoldkey(0 To 5) As Byte '旧密码
Dim mypiccnewkey(0 To 5) As Byte '新密码




        


'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'指定区号
myareano = 8 '指定为第8区
'批定密码模式
authmode = 1 '大于0表示用A密码认证，推荐用A密码认证

'指定旧密码
mypiccoldkey(0) = &HFF
mypiccoldkey(1) = &HFF
mypiccoldkey(2) = &HFF
mypiccoldkey(3) = &HFF
mypiccoldkey(4) = &HFF
mypiccoldkey(5) = &HFF

'指定新密码,注意：指定新密码时一定要记住，否则有可能找不回密码，导致该卡报废。
mypiccnewkey(0) = &HFF
mypiccnewkey(1) = &HFF
mypiccnewkey(2) = &HFF
mypiccnewkey(3) = &HFF
mypiccnewkey(4) = &HFF
mypiccnewkey(5) = &HFF

status = piccchangesinglekey(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypiccoldkey(0)), VarPtr(mypiccnewkey(0)))

'处理返回函数
Select Case status

    Case 0:
    
        MsgBox "操作成功"
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常错误：" + Format(status, "0")

End Select



'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub

Private Sub Command4_Click()
'让设备发出声音
'技术支持:
'网站:
    pcdbeep 50
End Sub

Private Sub Command5_Click()
'读取设备编号，可做为软件加密狗用,也可以根据此编号在公司网站上查询保修期限

'技术支持:
'网站:
Dim status As Byte

Dim devno(0 To 3) As Byte '设备编号

status = pcdgetdevicenumber(VarPtr(devno(0)))

If status = 0 Then
    MsgBox CStr(devno(0)) + "-" + CStr(devno(1)) + "-" + CStr(devno(2)) + "-" + CStr(devno(3))
End If




'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub

Private Sub Command6_Click()
'修改单区密码
'技术支持:
'网站:
Dim I As Integer

Dim status As Byte '存放返回值
Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccoldkey(0 To 5) As Byte '旧密码
Dim mypiccnewkey(0 To 16) As Byte '新密码




        


'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'指定区号
myareano = 10 '指定为第8区
'批定密码模式
authmode = 1 '大于0表示用A密码认证，推荐用A密码认证

'指定旧密码
mypiccoldkey(0) = &HFF
mypiccoldkey(1) = &HFF
mypiccoldkey(2) = &HFF
mypiccoldkey(3) = &HFF
mypiccoldkey(4) = &HFF
mypiccoldkey(5) = &HFF

'指定新密码,注意：指定新密码时一定要记住，否则有可能找不回密码，导致该卡报废。
mypiccnewkey(0) = &HFF  'A密码
mypiccnewkey(1) = &HFF
mypiccnewkey(2) = &HFF
mypiccnewkey(3) = &HFF
mypiccnewkey(4) = &HFF
mypiccnewkey(5) = &HFF

mypiccnewkey(6) = &HFF  '控制字
mypiccnewkey(7) = &H7
mypiccnewkey(8) = &H80
mypiccnewkey(9) = &H69

mypiccnewkey(10) = &HFF  'B密码
mypiccnewkey(11) = &HFF
mypiccnewkey(12) = &HFF
mypiccnewkey(13) = &HFF
mypiccnewkey(14) = &HFF
mypiccnewkey(15) = &HFF

mypiccnewkey(16) = &H3  '3是表示同时更改A、B、 密码权限访问字，为2表示密码权限访问字不更改，只改A、B密码，为0表示只改A密码


status = piccchangesinglekeyex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypiccoldkey(0)), VarPtr(mypiccnewkey(0)))

'处理返回函数
Select Case status

    Case 0:
    
        MsgBox "操作成功"
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常错误：" + Format(status, "0")

End Select



'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub

Private Sub Command7_Click()
'写设备存储区1

'技术支持:
'网站:
Dim status As Byte

Dim devdata(0 To 3) As Byte  '设备存储器数据

devdata(0) = 1
devdata(1) = 2
devdata(2) = 3
devdata(3) = 4


status = pcdsetcustomizedata1(VarPtr(devdata(0)))

Select Case status

    Case 0:
    
        MsgBox "操作成功"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常错误：" + Format(status, "0")

End Select






'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub

Private Sub Command8_Click()
'读设备存储区1

'技术支持:
'网站:
Dim status As Byte

Dim devdata(0 To 3) As Byte  '设备存储器数据

status = pcdgetcustomizedata1(VarPtr(devdata(0)))

If status = 0 Then
    MsgBox CStr(devdata(0)) + "-" + CStr(devdata(1)) + "-" + CStr(devdata(2)) + "-" + CStr(devdata(3))
End If



'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub

Private Sub Command9_Click()
'读设备存储区2

'技术支持:
'网站:
Dim status As Byte

Dim devdata(0 To 7) As Byte  '设备存储器数据
Dim devno(0 To 3) As Byte '设备编号


status = pcdgetcustomizedata2(VarPtr(devdata(0)), VarPtr(devno(0)))

If status = 0 Then
    MsgBox "数据：" + CStr(devdata(0)) + "-" + CStr(devdata(1)) + "-" + CStr(devdata(2)) + "-" + CStr(devdata(3)) + "-" + CStr(devdata(4)) + "-" + CStr(devdata(5)) + "-" + CStr(devdata(6)) + "-" + CStr(devdata(7)) + _
    "设备编号：" + CStr(devno(0)) + "-" + CStr(devno(1)) + "-" + CStr(devno(2)) + "-" + CStr(devno(3))
End If



'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub

Private Sub errdlag(ByVal status As Byte)
Select Case status
    Case 1
        MsgBox "0~2块都没读出来，可能刷卡太块。但卡序列号已被读出来。", vbCritical + vbOKOnly, "提示"
    Case 2
        MsgBox "第0块已被读出，但1~2块读取失败。卡序列号已被读出来。", vbCritical + vbOKOnly, "提示"
    Case 3
        MsgBox "第0、1块已被读出，但2块读取失败。卡序列号已被读出来。", vbCritical + vbOKOnly, "提示"
    Case 8
        MsgBox "请将卡放在感应区。", vbCritical + vbOKOnly, "提示"
    Case 9
        MsgBox "有多张卡在感应区，寻卡过程中防冲突失败。", vbCritical + vbOKOnly, "提示"
    Case 10
        MsgBox "该卡可能已被休眠，无法选中。", vbCritical + vbOKOnly, "提示"
    Case 11
        MsgBox "密码装载失败。", vbCritical + vbOKOnly, "提示"
    Case 12
        MsgBox "卡密码认证失败。", vbCritical + vbOKOnly, "提示"
    Case 13
        MsgBox "读块数据失败，原因是本块所对应的区还没通过密码认证。", vbCritical + vbOKOnly, "提示"
    Case 14
        MsgBox "写块数据失败，原因是本块所对应的区还没通过密码认证。", vbCritical + vbOKOnly, "提示"
    Case 21
        MsgBox "没有动态库，动态库调用异常。", vbCritical + vbOKOnly, "提示"
    Case 22
        MsgBox "动态库或驱动程序异常，解决方法是退出程序，拔出IC卡读写器，重装驱动程序再插上IC卡读写器重试。", vbCritical + vbOKOnly, "提示"
    Case 23
        MsgBox "驱动程序错误或尚未安装。", vbCritical + vbOKOnly, "提示"
    Case 24
        MsgBox "操作超时，一般是动态库没有反应。", vbCritical + vbOKOnly, "提示"
    Case 25
        MsgBox "发送字数不够。", vbCritical + vbOKOnly, "提示"
    Case 26
        MsgBox "发送的CRC错。", vbCritical + vbOKOnly, "提示"
    Case 27
        MsgBox "接收的字数不够。", vbCritical + vbOKOnly, "提示"
    Case 28
        MsgBox "接收的CRC错。", vbCritical + vbOKOnly, "提示"
End Select
End Sub

Private Sub Form_Load()
Combo1.ListIndex = 0
Combo2.ListIndex = 8
End Sub

Private Sub Timer1_Timer()
'轻松读卡
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypiccserial(0 To 3) As Byte '卡序列号


Dim cardhao As Double



status = piccrequest(VarPtr(mypiccserial(0)))
'在下面设定断点，然后查看mypiccserial、mypiccdata，
'调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
'开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
'处理返回函数
Select Case status

    Case 0:

        cardhao = mypiccserial(3)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(2)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(1)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(0)
        
        
        Text2.Text = Right("000000000" + CStr(cardhao), 10)
        
        pcdbeep 30
    Case 8:
    
        Text2.Text = "请将卡放在感应区"
        
    Case 21: '没有动态库
        Text2.Text = "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    

    Case 23: '没有动态库
        Text2.Text = "请连上USB 读写器"
        
        
    Case Else
        
        Text2.Text = "异常错误：" + Format(status, "0")
End Select

End Sub

Private Sub Timer2_Timer()
Dim status As Byte

Dim devno(0 To 3) As Byte '设备编号

status = pcdgetdevicenumber(VarPtr(devno(0)))

If status = 0 Then
    pcdbeep 10
    Text2 = Val(Text2) + 1
    Label1.Caption = CStr(devno(0)) + "-" + CStr(devno(1)) + "-" + CStr(devno(2)) + "-" + CStr(devno(3))
End If
End Sub

Private Sub Timer3_Timer()
Dim status As Byte '存放返回值
Dim statusa As Byte '存放返回值
Dim statusb As Byte '存放返回值
Dim dispstr As String

Dim cardhao As Double

Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 47) As Byte '卡数据缓冲
Dim myblockdata(0 To 15) As Byte '卡数据缓冲


status = piccrequest(VarPtr(mypiccserial(0)))
'在下面设定断点，然后查看mypiccserial、mypiccdata，
'调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
'开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
'处理返回函数
Select Case status

    Case 0:

        cardhao = mypiccserial(3)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(2)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(1)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(0)
        
        If oldkh <> Format(cardhao, "0") Then
            oldkh = cardhao
            dispstr = Right("000000000" + CStr(cardhao), 10)
            
            '控制字指定,控制字的含义请查看本公司网站提供的动态库说明
            myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY
    
            '指定区号
            myareano = Combo2.ListIndex   '指定区
            '批定密码模式
            authmode = 1 '大于0表示用A密码认证，推荐用A密码认证
            
            '指定密码
            mypicckey(0) = "&H" & Mid(Text5, 1, 2)
            mypicckey(1) = "&H" & Mid(Text5, 3, 2)
            mypicckey(2) = "&H" & Mid(Text5, 5, 2)
            mypicckey(3) = "&H" & Mid(Text5, 7, 2)
            mypicckey(4) = "&H" & Mid(Text5, 9, 2)
            mypicckey(5) = "&H" & Mid(Text5, 11, 2)
            statusa = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
            
            authmode = 0 '大于0表示用A密码认证，推荐用A密码认证
            mypicckey(0) = "&H" & Mid(Text6, 1, 2)
            mypicckey(1) = "&H" & Mid(Text6, 3, 2)
            mypicckey(2) = "&H" & Mid(Text6, 5, 2)
            mypicckey(3) = "&H" & Mid(Text6, 7, 2)
            mypicckey(4) = "&H" & Mid(Text6, 9, 2)
            mypicckey(5) = "&H" & Mid(Text6, 11, 2)
            statusb = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
            
            
            If statusa = 0 Then
                dispstr = dispstr + "，A密码认证成功"
            Else
                dispstr = dispstr + "，A密码认证失败！！！"
            End If
            If statusb = 0 Then
                dispstr = dispstr + "，B密码认证成功。"
            Else
                dispstr = dispstr + "，B密码认证失败！！！"
            End If
            Text7 = dispstr
            
            If statusa + statusb = 0 Then
                Text7.ForeColor = &H80000008
                pcdbeep 38
            Else
                Text7.ForeColor = &HFF&
                pcdbeep 30
                Sleep 50
                pcdbeep 50
                Sleep 50
                pcdbeep 80
                
            End If
        End If
    Case 8:
    
        Text7.Text = "请将卡放在感应区"
        
    Case 21: '没有动态库
        Text7.Text = "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    

    Case 23: '没有动态库
'        Text7.Text = "请连上USB 读写器"
        
        
    Case Else
        
        Text7.Text = "异常错误：" + Format(status, "0")

End Select

End Sub

Private Sub Timer4_Timer()
Dim status As Byte '存放返回值
Dim mypiccserial(0 To 7) As Byte '卡序列号
Dim cardhao As Double
Dim dispstr As String
status = sfzrequest(VarPtr(mypiccserial(0)))
Select Case status
    Case 0:

        cardhao = mypiccserial(3)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(2)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(1)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(0)
        
        dispstr = "读取8位16进制UID："
        For I = 7 To 0 Step -1
            dispstr = dispstr + Right("00" + Hex(mypiccserial(I)), 2) + " "
        Next
        dispstr = dispstr + "，转8H10D卡号：" + Right("000000000" + CStr(cardhao), 10)
        Text8.Text = dispstr
        
        pcdbeep 30
    Case 8:
        Text8.Text = "请将二代身份证放在感应区..."
    Case 21: '没有动态库
        Text8.Text = "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    Case 23: '没有动态库
        Text8.Text = "发卡器未连接或库文件错误！"
    Case Else
        
        Text8.Text = "异常错误：" + Format(status, "0")
End Select
End Sub

Private Sub Timer5_Timer()
Dim status As Byte '存放返回值
Dim mypiccserial(0 To 7) As Byte '卡序列号
Dim cardhao As Double
Dim dispstr As String
status = iso15693iclassreadcsn(VarPtr(mypiccserial(0)))
Select Case status
    Case 0:

        cardhao = mypiccserial(3)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(2)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(1)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(0)
        
        dispstr = "读取8位16进制UID："
        For I = 7 To 0 Step -1
            dispstr = dispstr + Right("00" + Hex(mypiccserial(I)), 2) + " "
        Next
        dispstr = dispstr + "，转8H10D卡号：" + Right("000000000" + CStr(cardhao), 10)
        Text8.Text = dispstr
        
        pcdbeep 30
    Case 8:
        Text8.Text = "请将HID iCLass卡放在感应区..."
    Case 21: '没有动态库
        Text8.Text = "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    Case 23: '没有动态库
        Text8.Text = "发卡器未连接或库文件错误！"
    Case Else
        
        Text8.Text = "异常错误：" + Format(status, "0")
End Select

End Sub
