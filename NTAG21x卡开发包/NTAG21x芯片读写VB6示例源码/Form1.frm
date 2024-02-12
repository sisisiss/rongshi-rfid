VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "NTAG21x卡读写器例子程序"
   ClientHeight    =   11805
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8100
   ForeColor       =   &H8000000F&
   LinkTopic       =   "Form1"
   ScaleHeight     =   11805
   ScaleWidth      =   8100
   StartUpPosition =   2  '屏幕中心
   Begin VB.TextBox Text16 
      Height          =   375
      Left            =   3000
      MaxLength       =   8
      TabIndex        =   49
      Text            =   "12345678"
      Top             =   7200
      Width           =   975
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "Form1.frx":0000
      Left            =   360
      List            =   "Form1.frx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   47
      Top             =   6840
      Width           =   2415
   End
   Begin VB.CommandButton Command14 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFC0&
      Caption         =   "读取卡单向计数器的值"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   46
      Top             =   5160
      Width           =   3735
   End
   Begin VB.TextBox Text15 
      Height          =   375
      Left            =   3120
      MaxLength       =   8
      TabIndex        =   45
      Text            =   "12345678"
      Top             =   6360
      Width           =   975
   End
   Begin VB.CheckBox Check3 
      Caption         =   "需要认证卡密码才能继续操作"
      Height          =   255
      Left            =   360
      TabIndex        =   44
      Top             =   6360
      Width           =   2775
   End
   Begin VB.CommandButton Command13 
      BackColor       =   &H0080C0FF&
      Caption         =   "设置卡密码及保护机制"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   43
      Top             =   7920
      Width           =   2895
   End
   Begin VB.TextBox Text14 
      Height          =   285
      Left            =   6840
      TabIndex        =   41
      Text            =   "0"
      Top             =   7200
      Width           =   495
   End
   Begin VB.CheckBox Check2 
      Caption         =   "开启读操作密码保护"
      Height          =   255
      Left            =   5400
      TabIndex        =   40
      Top             =   6840
      Width           =   1935
   End
   Begin VB.TextBox Text13 
      Height          =   285
      Left            =   3240
      TabIndex        =   38
      Text            =   "144"
      Top             =   6840
      Width           =   495
   End
   Begin VB.CheckBox Check1 
      Caption         =   "需要认证卡密码才能继续操作"
      Height          =   255
      Left            =   360
      TabIndex        =   37
      Top             =   8760
      Width           =   2655
   End
   Begin VB.TextBox Text12 
      Height          =   375
      Left            =   3120
      MaxLength       =   8
      TabIndex        =   36
      Text            =   "12345678"
      Top             =   8760
      Width           =   975
   End
   Begin VB.CommandButton Command12 
      BackColor       =   &H0080C0FF&
      Caption         =   "轻松写卡，最多一次11页"
      Height          =   375
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   35
      Top             =   10440
      Width           =   2895
   End
   Begin VB.TextBox Text11 
      Height          =   615
      Left            =   2160
      MultiLine       =   -1  'True
      TabIndex        =   33
      Top             =   9600
      Width           =   5655
   End
   Begin VB.TextBox Text10 
      Height          =   285
      Left            =   1080
      TabIndex        =   31
      Text            =   "10"
      Top             =   9600
      Width           =   495
   End
   Begin VB.CommandButton Command11 
      BackColor       =   &H0080C0FF&
      Caption         =   "轻松读卡，最多一次12页"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   27
      Top             =   10440
      Width           =   2895
   End
   Begin VB.TextBox Text9 
      Height          =   285
      Left            =   1080
      TabIndex        =   26
      Text            =   "0"
      Top             =   9165
      Width           =   495
   End
   Begin VB.TextBox Text8 
      Height          =   375
      Left            =   2160
      TabIndex        =   25
      Top             =   9165
      Width           =   5655
   End
   Begin VB.TextBox Text7 
      Height          =   735
      Left            =   2160
      MultiLine       =   -1  'True
      TabIndex        =   23
      Top             =   10920
      Width           =   5655
   End
   Begin VB.CommandButton Command10 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFC0&
      Caption         =   "锁定16页及之后的页（锁死数据后无法恢复）"
      Height          =   375
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   22
      Top             =   4200
      Width           =   3735
   End
   Begin VB.CommandButton Command9 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFC0&
      Caption         =   "读取卡的签名信息，可以验证卡是否NXP正版卡"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   21
      Top             =   4680
      Width           =   7575
   End
   Begin VB.CommandButton Command8 
      BackColor       =   &H00C0FFC0&
      Caption         =   "读取卡的版本号及型号"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   3720
      Width           =   3735
   End
   Begin VB.CommandButton Command6 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFC0&
      Caption         =   "锁定3~15页（锁死数据后无法恢复）"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   4200
      Width           =   3735
   End
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   960
      MaxLength       =   8
      TabIndex        =   17
      Text            =   "12345678"
      Top             =   3270
      Width           =   975
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "密码认证"
      Height          =   375
      Left            =   2160
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   3270
      Width           =   1575
   End
   Begin VB.TextBox Text5 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   2520
      TabIndex        =   14
      Text            =   "4"
      Top             =   2685
      Width           =   495
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "写1个页"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   2640
      Width           =   1215
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   3960
      MaxLength       =   8
      TabIndex        =   11
      Text            =   "00000000"
      Top             =   2640
      Width           =   975
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   3960
      TabIndex        =   9
      Top             =   2220
      Width           =   3855
   End
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   2520
      TabIndex        =   8
      Text            =   "0"
      Top             =   2265
      Width           =   495
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0FFC0&
      Caption         =   "读4个页"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      BackColor       =   &H00C0FFC0&
      Caption         =   "第一步：读卡序列号"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1680
      Width           =   3615
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   3960
      TabIndex        =   4
      Top             =   1680
      Width           =   3855
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H00C0FFC0&
      Caption         =   "读出设备全球唯一的设备编号，作为加密狗用"
      Height          =   420
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1080
      Width           =   4905
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H0080C0FF&
      Caption         =   "让设备发出声响"
      Height          =   420
      Left            =   5400
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1080
      Width           =   2415
   End
   Begin VB.Label Label18 
      AutoSize        =   -1  'True
      Caption         =   "新密码："
      Height          =   195
      Left            =   2280
      TabIndex        =   50
      Top             =   7200
      Width           =   720
   End
   Begin VB.Label Label7 
      Caption         =   "从"
      Height          =   195
      Left            =   3000
      TabIndex        =   48
      Top             =   6840
      Width           =   300
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00C0C0C0&
      BorderWidth     =   2
      X1              =   240
      X2              =   7800
      Y1              =   8520
      Y2              =   8520
   End
   Begin VB.Label Label17 
      Caption         =   "允许密码错误次数（0为不限次）："
      Height          =   255
      Left            =   4080
      TabIndex        =   42
      Top             =   7200
      Width           =   2655
   End
   Begin VB.Label Label16 
      Caption         =   "页开始有密码保护"
      Height          =   195
      Left            =   3840
      TabIndex        =   39
      Top             =   6870
      Width           =   1620
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      Caption         =   "数据"
      Height          =   195
      Left            =   1680
      TabIndex        =   34
      Top             =   9600
      Width           =   360
   End
   Begin VB.Label Label13 
      Caption         =   "页数"
      Height          =   195
      Left            =   600
      TabIndex        =   32
      Top             =   9600
      Width           =   360
   End
   Begin VB.Label Label12 
      Caption         =   "实际只需要以下三种指令，就可以轻松使用NTAG卡"
      Height          =   255
      Left            =   360
      TabIndex        =   30
      Top             =   6000
      Width           =   4215
   End
   Begin VB.Label Label11 
      Caption         =   "起始页号"
      Height          =   255
      Left            =   240
      TabIndex        =   29
      Top             =   9165
      Width           =   735
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "卡号"
      Height          =   195
      Left            =   1680
      TabIndex        =   28
      Top             =   9165
      Width           =   360
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000C000&
      BorderWidth     =   5
      X1              =   0
      X2              =   8040
      Y1              =   5880
      Y2              =   5880
   End
   Begin VB.Label Label1 
      Caption         =   "串口读写器的调试指令："
      Height          =   195
      Left            =   240
      TabIndex        =   24
      Top             =   11040
      Width           =   1980
   End
   Begin VB.Label Label9 
      Caption         =   "卡密码"
      Height          =   195
      Left            =   240
      TabIndex        =   18
      Top             =   3360
      Width           =   540
   End
   Begin VB.Label Label8 
      Caption         =   "起始页号"
      Height          =   255
      Left            =   1680
      TabIndex        =   15
      Top             =   2700
      Width           =   735
   End
   Begin VB.Label Label6 
      Caption         =   "写入数据"
      Height          =   255
      Left            =   3120
      TabIndex        =   13
      Top             =   2700
      Width           =   735
   End
   Begin VB.Label Label5 
      Caption         =   "读出数据"
      Height          =   255
      Left            =   3120
      TabIndex        =   10
      Top             =   2280
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "起始页号"
      Height          =   255
      Left            =   1680
      TabIndex        =   7
      Top             =   2280
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "NTAG21x卡读写器例子程序"
      BeginProperty Font 
         Name            =   "黑体"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   300
      Left            =   2325
      TabIndex        =   3
      Top             =   120
      Width           =   3450
   End
   Begin VB.Label Label2 
      Caption         =   "建议将OUR_MIFARE.dll复制到应用程序同一目录下"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   360
      Left            =   360
      TabIndex        =   2
      Top             =   600
      Width           =   6090
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit






'以下三条函数，可以轻松操作





Private Sub Command1_Click()
'读页
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypiccdata(0 To 15) As Byte '读卡的数据缓冲，Ultralight卡及NTAG21x卡的数组长度必须为16个字节，写卡的为4个字节

Dim i As Integer

Dim str As String

status = piccread_ul(CByte(Text2), VarPtr(mypiccdata(0)))

str = ""
Select Case status

    Case 0:
        For i = 0 To 15
        
            
            
            str = str + Right("0" + Hex(mypiccdata(i)), 2)
        Next i
        
        
        Text3.Text = str
        
        
    Case 8:
    
        Text3.Text = "请将卡放在感应区"
        

    Case 23: '没有动态库
        Text3.Text = "请连上USB 读写器"
        
    Case 13: '读卡失败
        Text3.Text = "读卡失败，请先执行第一步读卡序列号！"
        
        
    Case Else
        
        Text3.Text = "异常" + CStr(status)

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
'
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypicclockdata(0 To 3) As Byte '读卡的数据缓冲，Ultralight卡及NTAG21x卡的数组长度必须为16个字节，写卡的为4个字节

Dim i As Integer



mypicclockdata(0) = &H1
mypicclockdata(1) = &H1
mypicclockdata(2) = 0
mypicclockdata(3) = 0

        
status = picclock_ntag(1, VarPtr(mypicclockdata(0))) '锁定0~15d页

Select Case status

    Case 0:
        
        
        MsgBox "16~XX页锁定位写入成功！！！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
      

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
    Case 14: '写卡失败

        MsgBox "写卡失败，请先执行第一步读卡序列号！"
        
        
    Case Else
        
        MsgBox "异常" + CStr(status)

End Select

    'MsgBox "为防止误操作导致卡做废，暂时不提供此操作的源码！"
End Sub

Private Sub Command11_Click()
'轻松读卡
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte '控制字

Dim mypiccserial(0 To 6) As Byte '卡序列号

Dim mypicckey(0 To 3) As Byte '卡认证密码

Dim myblockaddr As Byte '起始块地址

Dim myblocksize As Byte '总块数

Dim mypiccdata(0 To 47) As Byte '读卡的数据缓冲，最大可以读出12个块共48个字节

Dim i As Integer

Dim str As String

Dim datastrls As String

Dim strls1 As String

Dim strls2 As String

Dim comedc As Byte



If Check1.Value > 0 Then

     '取密码
    strls1 = Text12.Text
    
    If (Len(strls1) < 8) Then
        MsgBox "密码长度不足！"
        Text12.SetFocus
        Exit Sub
    End If
    
    datastrls = ""
    
    For i = 1 To 8
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            datastrls = datastrls + strls2
        End If
    
    Next i

    For i = 1 To 4
        strls2 = Mid(datastrls, (i - 1) * 2 + 1, 2)
        
        mypicckey(i - 1) = CByte("&h" & strls2)
    
    Next i

    myctrlword = NEEDKEY '需要密码

Else

    myctrlword = 0
    
End If


myblockaddr = CByte(Trim(Text9.Text)) 'ULtralight卡数据块从3块开始

myblocksize = CByte(Trim(Text10.Text))


'输出串口模块调式码
comedc = &H1B

str = "0F1B"

'控制字
str = str + Right("0" + Hex(myctrlword), 2)

comedc = comedc Xor myctrlword

'卡号
For i = 0 To 6
    
    str = str + Right("0" + Hex(mypiccserial(i)), 2)
    
    comedc = comedc Xor mypiccserial(i)
    
Next i

'密码
For i = 0 To 3
    
    str = str + Right("0" + Hex(mypicckey(i)), 2)
    
    comedc = comedc Xor mypicckey(i)
    
Next i

'页地址
str = str + Right("0" + Hex(myblockaddr), 2)
comedc = comedc Xor myblockaddr


'页数
str = str + Right("0" + Hex(myblocksize), 2)
comedc = comedc Xor myblocksize

'校验码
str = str + Right("0" + Hex(comedc), 2)

Text7.Text = str

status = piccreadex_ntag(myctrlword, VarPtr(mypiccserial(0)), VarPtr(mypicckey(0)), myblockaddr, myblocksize, VarPtr(mypiccdata(0)))


Text8.Text = ""
Text11.Text = ""
Select Case status

    Case 0:
    
        str = ""
        For i = 0 To 6
            
            str = str + Right("0" + Hex(mypiccserial(i)), 2)
        Next i

        Text8.Text = str
        
        
        str = ""
        For i = 0 To (myblocksize * 4 - 1)
            
            str = str + Right("0" + Hex(mypiccdata(i)), 2)
        Next i

        Text11.Text = str
  
    Case 8:
    
        Text8.Text = "请将卡放在感应区"
        
    Case 12:
    
        Text8.Text = "密码错误"
        
    Case 13:
    
        Text8.Text = "读卡失败，可能需要验证密码"
        

    Case 23: '没有动态库
        Text8.Text = "请连上USB 读写器"
        
        
    Case Else
        
        Text8.Text = "异常" + CStr(status)

End Select
End Sub

Private Sub Command12_Click()
'轻松写卡
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte '控制字

Dim mypiccserial(0 To 6) As Byte '卡序列号

Dim mypicckey(0 To 3) As Byte '卡认证密码

Dim myblockaddr As Byte '起始块地址

Dim myblocksize As Byte '总块数

Dim mypiccdata(0 To 47) As Byte '读卡的数据缓冲，最大可以读出12个块共48个字节

Dim i As Integer

Dim mylen As Integer

Dim strls1 As String
Dim strls2 As String

Dim datastrls As String

Dim datastrlen As Integer '输入的字符长度
Dim datalen As Integer '需要的数据长度

Dim comedc As Byte

Dim str As String


If Check1.Value > 0 Then

     '取密码
    strls1 = Text12.Text
    
    If (Len(strls1) < 8) Then
        MsgBox "密码长度不足！"
        Text12.SetFocus
        Exit Sub
    End If
    
    datastrls = ""
    
    For i = 1 To 8
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            datastrls = datastrls + strls2
        End If
    
    Next i

    For i = 1 To 4
        strls2 = Mid(datastrls, (i - 1) * 2 + 1, 2)
        
        mypicckey(i - 1) = CByte("&h" & strls2)
    
    Next i

    myctrlword = NEEDKEY '需要密码

Else

    myctrlword = 0
    
End If

myblockaddr = CByte(Trim(Text9.Text))

myblocksize = CByte(Trim(Text10.Text))

datalen = CLng(Text10.Text)
    
If (datalen < 1) Then
    MsgBox "本次写入的页数不能小于1，请重新输入！"
    Text10.SetFocus
    Exit Sub
End If

datalen = datalen * 4

 '取数据
strls1 = Text11.Text
mylen = Len(strls1)
datastrls = ""


For i = 1 To mylen
    strls2 = Mid(strls1, i, 1)
    If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
        datastrls = datastrls + strls2
    End If

Next i




    
datastrlen = Len(datastrls)

If (datastrlen < (datalen * 2)) Then
    MsgBox "请先补齐数据！"
    Text11.SetFocus
    Exit Sub
End If


For i = 1 To datalen
    strls2 = Mid(datastrls, (i - 1) * 2 + 1, 2)
    
    mypiccdata(i - 1) = CByte("&h" & strls2)
    
Next i
    

'输出串口模块调式码
comedc = &H1C

str = "3B1C"

'控制字
str = str + Right("0" + Hex(myctrlword), 2)

comedc = comedc Xor myctrlword

'卡号
For i = 0 To 6
    
    str = str + Right("0" + Hex(mypiccserial(i)), 2)
    
    comedc = comedc Xor mypiccserial(i)
    
Next i

'密码
For i = 0 To 3
    
    str = str + Right("0" + Hex(mypicckey(i)), 2)
    
    comedc = comedc Xor mypicckey(i)
    
Next i

'页地址
str = str + Right("0" + Hex(myblockaddr), 2)
comedc = comedc Xor myblockaddr


'页数
str = str + Right("0" + Hex(myblocksize), 2)
comedc = comedc Xor myblocksize

'数据
For i = 0 To 43
    
    str = str + Right("0" + Hex(mypiccdata(i)), 2)
    
    comedc = comedc Xor mypiccdata(i)
    
Next i


'校验码
str = str + Right("0" + Hex(comedc), 2)

Text7.Text = str


status = piccwriteex_ntag(myctrlword, VarPtr(mypiccserial(0)), VarPtr(mypicckey(0)), myblockaddr, myblocksize, VarPtr(mypiccdata(0)))


Select Case status

    Case 0:
    
        strls1 = ""
        For i = 0 To 6
            
            strls1 = strls1 + Right("0" + Hex(mypiccserial(i)), 2)
        Next i

        Text8.Text = strls1
        
        MsgBox "写入成功！"
        
    Case 8:
    
        Text8.Text = "请将卡放在感应区"
        
    Case 12:
    
        Text8.Text = "密码错误"
        
    Case 14:
    
        Text8.Text = "写卡失败，可能需要验证密码"
        

    Case 23: '没有动态库
        Text8.Text = "请连上USB 读写器"
        
        
    Case Else
        
        Text8.Text = "异常" + CStr(status)


End Select
End Sub

Private Sub Command13_Click()
'设置卡密码及保护机制 -- 初始化卡
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte '控制字

Dim mypiccserial(0 To 6) As Byte '卡序列号

Dim mypicckey(0 To 3) As Byte '卡认证密码

Dim mypiccdata(0 To 15) As Byte '读卡的数据缓冲，最大可以读出12个块共48个字节

Dim i As Integer

Dim mylen As Integer

Dim strls1 As String
Dim strls2 As String

Dim datastrls As String

Dim datastrlen As Integer '输入的字符长度
Dim datalen As Integer '需要的数据长度

Dim comedc As Byte

Dim str As String

If Check3.Value > 0 Then

     '取密码
    strls1 = Text15.Text
    
    If (Len(strls1) < 8) Then
        MsgBox "密码长度不足！"
        Text15.SetFocus
        Exit Sub
    End If
    
    datastrls = ""
    
    For i = 1 To 8
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            datastrls = datastrls + strls2
        End If
    
    Next i

    For i = 1 To 4
        strls2 = Mid(datastrls, (i - 1) * 2 + 1, 2)
        
        mypicckey(i - 1) = CByte("&h" & strls2)
    
    Next i

    myctrlword = NEEDKEY '需要密码

Else

    myctrlword = 0
    
End If

'数据准备

If Combo1.ListIndex = 0 Then
    '取新密码
    strls1 = Text16.Text
    
    If (Len(strls1) < 8) Then
        MsgBox "密码长度不足！"
        Text16.SetFocus
        Exit Sub
    End If
    
    datastrls = ""
    
    For i = 1 To 8
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            datastrls = datastrls + strls2
        End If
    
    Next i
    
    For i = 1 To 4
        strls2 = Mid(datastrls, (i - 1) * 2 + 1, 2)
        
        mypiccdata(i - 1 + 8) = CByte("&h" & strls2) 'PWD
    
    Next i
    
    mypiccdata(12) = &H16 'PACK
    mypiccdata(13) = &H16 'PACK
    mypiccdata(14) = &H0 'RFUI
    mypiccdata(15) = &H0 'RFUI

    myctrlword = myctrlword + &H4 '更新控制字
    
    mypiccdata(0) = &H0 'MIRROR
    
    mypiccdata(1) = &H0 'RFUI
    
    mypiccdata(2) = &H0 'MIRROR_PAGE
    
    mypiccdata(3) = CByte(Text13.Text) 'AUTH0
    
    myctrlword = myctrlword + &H1 '更新控制字
    
    
    'ACCESS
    mypiccdata(4) = CByte(Text14.Text) Mod 8
    
    If Check2.Value > 0 Then
    
        mypiccdata(4) = mypiccdata(4) + &H80
        

    Else
 
        
        
    End If
    
    '启用计数器

    mypiccdata(5) = &H0
    mypiccdata(6) = &H0
    mypiccdata(7) = &H0
    
    
    
    myctrlword = myctrlword + &H2 '更新控制字
    
    
    
Else
    
    mypiccdata(0) = &H0 'MIRROR
    
    mypiccdata(1) = &H0 'RFUI
    
    mypiccdata(2) = &H0 'MIRROR_PAGE
    
    mypiccdata(3) = &HFF 'AUTH0
    
    myctrlword = myctrlword + &H1 '更新控制字
    
    mypiccdata(4) = &H0
    
    mypiccdata(5) = &H0
    mypiccdata(6) = &H0
    mypiccdata(7) = &H0
    
    myctrlword = myctrlword + &H2 '更新控制字
    
    

    
End If

'输出串口模块调式码
comedc = &H16

str = "1D16"

'控制字
str = str + Right("0" + Hex(myctrlword), 2)

comedc = comedc Xor myctrlword

'卡号
For i = 0 To 6
    
    str = str + Right("0" + Hex(mypiccserial(i)), 2)
    
    comedc = comedc Xor mypiccserial(i)
    
Next i

'密码
For i = 0 To 3
    
    str = str + Right("0" + Hex(mypicckey(i)), 2)
    
    comedc = comedc Xor mypicckey(i)
    
Next i

'数据
For i = 0 To 15
    
    str = str + Right("0" + Hex(mypiccdata(i)), 2)
    
    comedc = comedc Xor mypiccdata(i)
    
Next i


'校验码
str = str + Right("0" + Hex(comedc), 2)

Text7.Text = str


status = piccinit_ntag(myctrlword, VarPtr(mypiccserial(0)), VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))


Select Case status

    Case 0:
    
        strls1 = ""
        For i = 0 To 6
            
            strls1 = strls1 + Right("0" + Hex(mypiccserial(i)), 2)
        Next i

        Text8.Text = strls1
        
        MsgBox "初始化卡成功！"
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 12:
    
        MsgBox "密码错误"
        
    Case 14:
    
        MsgBox "设置失败，可能需要验证密码"
        
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常" + CStr(status)


End Select
End Sub

Private Sub Command14_Click()
'读取卡单向计数器的值
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypicccntdata(0 To 2) As Byte    '卡操作的单向计数器（卡操作流水号）

Dim i As Integer

Dim str As String


status = piccreadcnt_ntag(VarPtr(mypicccntdata(0)))

str = ""
Select Case status

    Case 0:
        For i = 0 To 2
            
            str = str + Right("0" + Hex(mypicccntdata(i)), 2)
        Next i
        
        
        MsgBox "卡操作的单向计数器：" + str
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 13
        MsgBox "读卡失败，请先执行第一步读卡序列号再试，如果还是不行，可能是计数器功能尚未启用或卡本身不支持计数功能！"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常" + CStr(status)

End Select
End Sub

Private Sub Command2_Click()
'写页
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypiccdata(0 To 3) As Byte '读卡的数据缓冲，Ultralight卡及NTAG21x卡的数组长度必须为16个字节，写卡的为4个字节

Dim i As Integer

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Byte '数据字符串的长度


'取数据
strls1 = Text4.Text
strlen = Len(strls1)
str = ""

For i = 1 To strlen
    strls2 = Mid(strls1, i, 1)
    If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
        str = str + strls2
    End If

Next i

strlen = Len(str)

If strlen < 8 Then

    MsgBox "写入数据长度不足"
    Text4.SetFocus
    Exit Sub
End If

strlen = 0
For i = 1 To 8 Step 2
    strls2 = Mid(str, i, 2)
    
    mypiccdata(strlen) = CByte("&h" & strls2)
    strlen = strlen + 1
    
Next i

        
status = piccwrite_ul(CByte(Text5), VarPtr(mypiccdata(0)))

str = ""
Select Case status

    Case 0:
        
        
        MsgBox "卡的第" + Text5 + "页数据写入成功！！！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
      

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
    Case 14: '写卡失败

        MsgBox "写卡失败，请先执行第一步读卡序列号！"
        
        
    Case Else
        
        MsgBox "异常" + CStr(status)

End Select

   


End Sub

Private Sub Command3_Click()
    
'NTAG21x密码认证
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypiccserial(0 To 6) As Byte '卡序列号

Dim mypicckey(0 To 3) As Byte '需要认证的密码

Dim mypiccntagpack(0 To 1) As Byte '认证后返回的确认码

Dim i As Integer

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Byte '数据字符串的长度


'取数据
strls1 = Text6.Text
strlen = Len(strls1)
str = ""

For i = 1 To strlen
    strls2 = Mid(strls1, i, 1)
    If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
        str = str + strls2
    End If

Next i

strlen = Len(str)

If strlen < 8 Then

    MsgBox "密码长度不足"
    Text6.SetFocus
    Exit Sub
End If

strlen = 0
For i = 1 To 8 Step 2
    strls2 = Mid(str, i, 2)
    
    mypicckey(strlen) = CByte("&h" & strls2)
    strlen = strlen + 1
    
Next i


status = piccauthkey_ntag(VarPtr(mypicckey(0)), VarPtr(mypiccntagpack(0)))

Select Case status

    Case 0:
        
        
        MsgBox "卡密码认证成功！确认码为：" + Right("0" + Hex(mypiccntagpack(0)), 2) + Right("0" + Hex(mypiccntagpack(1)), 2)
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常" + CStr(status)

End Select

    
End Sub

Private Sub Command4_Click()
'让设备发出声音
'技术支持:
'网站:
    pcdbeep 50
    
    Text7.Text = "030F32003D"
    
End Sub

Private Sub Command5_Click()
'读取设备编号，可做为软件加密狗用,也可以根据此编号在公司网站上查询保修期限
Dim status As Byte
Dim devno(0 To 3) As Byte '设备编号

status = pcdgetdevicenumber(VarPtr(devno(0)))

If status = 0 Then
    MsgBox CStr(devno(0)) + "-" + CStr(devno(1)) + "-" + CStr(devno(2)) + "-" + CStr(devno(3)), vbInformation + vbOKOnly, "提示"
Else
    disperr status
End If

End Sub

Private Sub Command6_Click()

'
'技术支持:
'网站:
'Dim status As Byte '存放返回值
'Dim mypicclockdata(0 To 3) As Byte '读卡的数据缓冲，Ultralight卡及NTAG21x卡的数组长度必须为16个字节，写卡的为4个字节
'Dim i As Integer
'
'mypicclockdata(0) = 0
'mypicclockdata(1) = 0
'mypicclockdata(2) = &HF9
'mypicclockdata(3) = 0
'
'
'status = picclock_ntag(0, VarPtr(mypicclockdata(0))) '锁定0~15d页
'Select Case status
'    Case 0:
'        MsgBox "0~15页锁定位写入成功！！！"
'    Case 8:
'        MsgBox "请将卡放在感应区"
'    Case 23: '没有动态库
'        MsgBox "请连上USB 读写器"
'    Case 14: '写卡失败
'        MsgBox "写卡失败，请先执行第一步读卡序列号！"
'    Case Else
'        MsgBox "异常" + CStr(status)
'End Select

Form2.Show 1
   
End Sub

Private Sub Command7_Click()
'读卡的序列号
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypiccserial(0 To 6) As Byte '卡序列号

Dim i As Integer

Dim str As String


status = piccrequest_ul(VarPtr(mypiccserial(0)))

str = ""
Select Case status

    Case 0:
        For i = 0 To 6
            str = str + Right("0" + Hex(mypiccserial(i)), 2)
        Next i
        
        Text1.Text = str
                
    Case 8:
    
        Text1.Text = "请将卡放在感应区"
        

    Case 23: '没有动态库
        Text1.Text = "请连上USB 读写器"
        
        
    Case Else
        
        Text1.Text = "异常" + CStr(status)

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
'读取卡的版本号及型号
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypiccversiondata(0 To 7) As Byte  '卡版本信息

Dim i As Integer

Dim str As String


status = piccgetversion_ntag(VarPtr(mypiccversiondata(0)))

str = ""
Select Case status

    Case 0:
        For i = 0 To 7
            
            str = str + Right("0" + Hex(mypiccversiondata(i)), 2)
        Next i
        
        
        MsgBox "卡版本信息：" + str
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 13
        MsgBox "读卡失败，请先执行第一步读卡序列号！"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常" + CStr(status)

End Select
End Sub

Private Sub Command9_Click()
'读取卡的签字信息，可以验证卡是否NXP正版卡
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypiccsigdata(0 To 31) As Byte   '卡签字信息

Dim i As Integer

Dim str As String


status = piccreadsig_ntag(VarPtr(mypiccsigdata(0)))

str = ""
Select Case status

    Case 0:
        For i = 0 To 31
            
            str = str + Right("0" + Hex(mypiccsigdata(i)), 2)
        Next i
        
        
        MsgBox "卡签字信息：" + str
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 13
        MsgBox "读卡失败，请先执行第一步读卡序列号！"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常" + CStr(status)

End Select
End Sub

Private Sub Form_Load()
    Combo1.ListIndex = 1 '取消密码保护功能
End Sub

Public Sub disperr(ByVal errcode As Byte)
Select Case errcode
       Case 8
            MsgBox "寻卡错误，请将卡放在感应区！", vbCritical + vbOKOnly, "提示"
       Case 9
            MsgBox "读卡序列号错误！", vbCritical + vbOKOnly, "提示"
       Case 10
            MsgBox "选卡错误！", vbCritical + vbOKOnly, "提示"
       Case 11
            MsgBox "装载密码错误！", vbCritical + vbOKOnly, "提示"
       Case 12
            MsgBox "卡片密码认证错误！", vbCritical + vbOKOnly, "提示"
       Case 13
            MsgBox "读卡失败，请先执行第一步读卡序列号！", vbCritical + vbOKOnly, "提示"
       Case 14
            MsgBox "写卡错误，请先执行第一步读卡序列号！", vbCritical + vbOKOnly, "提示"
       Case 13
            MsgBox "操作失败，请先执行第一步读卡序列号！", vbCritical + vbOKOnly, "提示"
       Case 21
            MsgBox "没有动态库！", vbCritical + vbOKOnly, "提示"
       Case 22
            MsgBox "动态库或驱动程序异常！", vbCritical + vbOKOnly, "提示"
       Case 23
            MsgBox "操作失败，请连上USB读写器！", vbCritical + vbOKOnly, "提示"
       Case 24
            MsgBox "操作超时，一般是动态库没有反应！", vbCritical + vbOKOnly, "提示"
       Case 25
            MsgBox "发送字数不够，可能DLL版本与设备不一致！", vbCritical + vbOKOnly, "提示"
       Case 26
            MsgBox "发送的CRC错，可能DLL版本与设备不一致！", vbCritical + vbOKOnly, "提示"
       Case 27
            MsgBox "接收的字数不够，可能DLL版本与设备不一致！", vbCritical + vbOKOnly, "提示"
       Case 28
            MsgBox "接收的CRC错，可能DLL版本与设备不一致！", vbCritical + vbOKOnly, "提示"
      Case Else
            MsgBox "未知的异常代码：" + CStr(errcode), vbCritical + vbOKOnly, "提示"
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
