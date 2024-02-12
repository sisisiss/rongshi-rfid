VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "读写IC卡"
   ClientHeight    =   5040
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8805
   BeginProperty Font 
      Name            =   "宋体"
      Size            =   10.5
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5040
   ScaleWidth      =   8805
   StartUpPosition =   2  '屏幕中心
   Begin VB.OptionButton Option2 
      Caption         =   "内部密码认证"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4680
      TabIndex        =   18
      Top             =   540
      Width           =   1425
   End
   Begin VB.OptionButton Option1 
      Caption         =   "外部密码认证"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3150
      TabIndex        =   17
      Top             =   540
      Value           =   -1  'True
      Width           =   1425
   End
   Begin VB.CommandButton Command3 
      Caption         =   "驱动读写器响声"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   1050
      Width           =   1965
   End
   Begin VB.TextBox Text1 
      ForeColor       =   &H000000FF&
      Height          =   315
      Left            =   1050
      MultiLine       =   -1  'True
      TabIndex        =   15
      Top             =   4590
      Width           =   5190
   End
   Begin VB.CommandButton Command6 
      Caption         =   "改AB密码及控制字"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   2130
      Width           =   1965
   End
   Begin VB.TextBox Text3 
      Height          =   3285
      Left            =   1050
      MultiLine       =   -1  'True
      TabIndex        =   13
      Top             =   1290
      Width           =   5190
   End
   Begin VB.CommandButton Command2 
      Caption         =   "轻松写卡"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   1770
      Width           =   1965
   End
   Begin VB.CommandButton Command1 
      Caption         =   "轻松读卡"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   1410
      Width           =   1965
   End
   Begin VB.TextBox Text5 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5400
      TabIndex        =   4
      Text            =   "FFFFFFFFFFFF"
      Top             =   60
      Width           =   1215
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      ItemData        =   "Form4.frx":0000
      Left            =   3150
      List            =   "Form4.frx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   60
      Width           =   1035
   End
   Begin VB.ComboBox Combo2 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      ItemData        =   "Form4.frx":001C
      Left            =   780
      List            =   "Form4.frx":00E0
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   90
      Width           =   945
   End
   Begin VB.Label Label20 
      AutoSize        =   -1  'True
      Caption         =   "第12块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   420
      TabIndex        =   30
      Top             =   3900
      Width           =   720
   End
   Begin VB.Label Label19 
      AutoSize        =   -1  'True
      Caption         =   "第13块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   420
      TabIndex        =   29
      Top             =   4095
      Width           =   720
   End
   Begin VB.Label Label18 
      AutoSize        =   -1  'True
      Caption         =   "第14块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   420
      TabIndex        =   28
      Top             =   4305
      Width           =   720
   End
   Begin VB.Label Label17 
      AutoSize        =   -1  'True
      Caption         =   "第 9块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   27
      Top             =   3270
      Width           =   720
   End
   Begin VB.Label Label16 
      AutoSize        =   -1  'True
      Caption         =   "第10块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   26
      Top             =   3465
      Width           =   720
   End
   Begin VB.Label Label15 
      AutoSize        =   -1  'True
      Caption         =   "第11块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   25
      Top             =   3675
      Width           =   720
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      Caption         =   "第 6块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   24
      Top             =   2640
      Width           =   720
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      Caption         =   "第 7块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   23
      Top             =   2835
      Width           =   720
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "第 8块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   22
      Top             =   3045
      Width           =   720
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "第 3块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   21
      Top             =   1980
      Width           =   720
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "第 4块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   20
      Top             =   2205
      Width           =   720
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "第 5块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   19
      Top             =   2415
      Width           =   720
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "密码控制块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   60
      TabIndex        =   11
      Top             =   4680
      Width           =   1080
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "第 2块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   10
      Top             =   1755
      Width           =   720
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "第 1块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   9
      Top             =   1545
      Width           =   720
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "第 0块："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   8
      Top             =   1350
      Width           =   720
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F"
      ForeColor       =   &H00FF0000&
      Height          =   210
      Left            =   1080
      TabIndex        =   7
      Top             =   1050
      Width           =   4935
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "卡认证密码："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   4380
      TabIndex        =   5
      Top             =   150
      Width           =   1080
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "卡密码认证方式："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   1800
      TabIndex        =   3
      Top             =   150
      Width           =   1440
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "区号："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   210
      TabIndex        =   1
      Top             =   180
      Width           =   540
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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


        
'控制字定义,控制字指定,控制字的含义请查看本公司网站提供的动态库说明
Private Const BLOCK0_EN = &H1
Private Const BLOCK1_EN = &H2
Private Const BLOCK2_EN = &H4
Private Const NEEDSERIAL = &H8
Private Const EXTERNKEY = &H10
Private Const NEEDHALT = &H20


Private Sub Command1_Click()

Dim status As Byte '存放返回值

Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 255) As Byte '卡数据缓冲
Dim myblockdata(0 To 15) As Byte '卡数据缓冲



'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
If Option1.Value Then myctrlword = myctrlword + EXTERNKEY    '外部密码认证

'指定区号
myareano = Combo2.ListIndex  '指定为第8区
'批定密码模式
authmode = Combo1.ListIndex  '大于0表示用A密码认证，推荐用A密码认证

'指定密码
mypicckey(0) = "&H" & Mid(Text5, 1, 2)
mypicckey(1) = "&H" & Mid(Text5, 3, 2)
mypicckey(2) = "&H" & Mid(Text5, 5, 2)
mypicckey(3) = "&H" & Mid(Text5, 7, 2)
mypicckey(4) = "&H" & Mid(Text5, 9, 2)
mypicckey(5) = "&H" & Mid(Text5, 11, 2)
            
Text3.Text = ""
Text1.Text = ""

status = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
            
'在下面设定断点，然后查看mypiccserial、mypiccdata，
'调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
'开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
'处理返回函数
Select Case status

    Case 0:
         If myareano < 63 Then
                infstr = ""
                For j = 0 To 2
                   For I = 0 To 15
                       infstr = infstr + Right("00" + Hex(mypiccdata(j * 16 + I)), 2) + " "
                   Next I
                Next j
                Text3.Text = infstr
                
                infstr = ""
                status = piccread(myareano * 4 + 3, VarPtr(myblockdata(0)))
                If status = 0 Then
                    For I = 0 To 15
                        infstr = infstr + Right("00" + Hex(myblockdata(I)), 2) + " "
                    Next I
                    Text1.Text = infstr
                End If
                pcdbeep 50
                MsgBox "操作成功"
         Else
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
                    readinf = readinf + Format(Hex(mypiccdata(I)), "00") + " "
                Next
                Text3.Text = readinf
                
                readinf = ""
                For I = 240 To 255     '15块密码控制块
                    readinf = readinf + Format(Hex(mypiccdata(I)), "00") + " "
                Next
                Text1.Text = readinf
                
                MsgBox "读卡成功"
         
         End If
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常" + Format(status, "0")

End Select
End Sub

Private Sub Command2_Click()
Dim writestr As String
Dim I As Integer

Dim status As Byte '存放返回值
Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypicckey(0 To 5) As Byte '密码
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccdata(0 To 47) As Byte '卡数据缓冲
Dim writhdata(0 To 240) As Byte '卡数据缓冲
Dim myblockdata(0 To 15) As Byte '卡数据缓冲

writestr = Trim(Text3.Text)

If Combo2.ListIndex < 64 Then
    If Len(Trim(writestr)) < 143 Then
        MsgBox "写卡数据不足，请补足写卡数据"
        Exit Sub
    End If
    For I = 0 To 47
        mypiccdata(I) = "&H" + Mid(writestr, I * 3 + 1, 2)
    Next I
Else
    If Len(Trim(writestr)) < 719 Then
        MsgBox "写卡数据不足，请补足写卡数据"
        Exit Sub
    End If
    For I = 0 To 239
        writhdata(I) = "&H" + Mid(writestr, I * 3 + 1, 2)
        If I <= 47 Then mypiccdata(I) = writhdata(I)
    Next I
End If

On Error GoTo err1:

'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
If Option1.Value Then myctrlword = myctrlword + EXTERNKEY    '外部密码认证

'指定区号
myareano = Combo2.ListIndex  '指定为第8区
'批定密码模式
authmode = Combo1.ListIndex  '大于0表示用A密码认证，推荐用A密码认证

'指定密码
mypicckey(0) = "&H" & Mid(Text5, 1, 2)
mypicckey(1) = "&H" & Mid(Text5, 3, 2)
mypicckey(2) = "&H" & Mid(Text5, 5, 2)
mypicckey(3) = "&H" & Mid(Text5, 7, 2)
mypicckey(4) = "&H" & Mid(Text5, 9, 2)
mypicckey(5) = "&H" & Mid(Text5, 11, 2)

status = piccwriteex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
Select Case status

    Case 0:
        If Combo2.ListIndex > 64 Then
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
        End If
        
        pcdbeep 50
        MsgBox "写卡成功"
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常" + Format(status, "0")

End Select

Exit Sub


err1:
    MsgBox "写卡数据错误，请输入正确的16进制写卡数据"

End Sub

Private Sub Command3_Click()
pcdbeep 50
End Sub

Private Sub Command6_Click()
Dim I As Integer

Dim status As Byte '存放返回值
Dim myareano As Byte '区号
Dim authmode As Byte '密码类型，用A密码或B密码
Dim myctrlword As Byte '控制字
Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim mypiccoldkey(0 To 5) As Byte '旧密码
Dim mypiccnewkey(0 To 16) As Byte '新密码



'控制字指定,控制字的含义请查看本公司网站提供的动态库说明
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
If Option1.Value Then myctrlword = myctrlword + EXTERNKEY    '外部密码认证

'指定区号
myareano = Combo2.ListIndex  '指定为第8区
'批定密码模式
authmode = Combo1.ListIndex  '大于0表示用A密码认证，推荐用A密码认证

'指定密码
 On Error GoTo err1:
 
mypiccoldkey(0) = "&H" & Mid(Text5, 1, 2)
mypiccoldkey(1) = "&H" & Mid(Text5, 3, 2)
mypiccoldkey(2) = "&H" & Mid(Text5, 5, 2)
mypiccoldkey(3) = "&H" & Mid(Text5, 7, 2)
mypiccoldkey(4) = "&H" & Mid(Text5, 9, 2)
mypiccoldkey(5) = "&H" & Mid(Text5, 11, 2)


'指定新密码,注意：指定新密码时一定要记住，否则有可能找不回密码，导致该卡报废。
newkey = Trim(Text1.Text)
For I = 0 To 15
    mypiccnewkey(I) = "&H" & Mid(newkey, I * 3 + 1, 2)
Next

'mypiccnewkey(0) = "&H" & Mid(Text1, 1, 2)  'A密码
'mypiccnewkey(1) = "&H" & Mid(Text1, 4, 2)
'mypiccnewkey(2) = "&H" & Mid(Text1, 7, 2)
'mypiccnewkey(3) = "&H" & Mid(Text1, 10, 2)
'mypiccnewkey(4) = "&H" & Mid(Text1, 13, 2)
'mypiccnewkey(5) = "&H" & Mid(Text1, 16, 2)
'
'mypiccnewkey(6) = "&H" & Mid(Text1, 19, 2) '控制字
'mypiccnewkey(7) = "&H" & Mid(Text1, 22, 2)
'mypiccnewkey(8) = "&H" & Mid(Text1, 25, 2)
'mypiccnewkey(9) = "&H" & Mid(Text1, 28, 2)
'
'mypiccnewkey(10) = "&H" & Mid(Text1, 31, 2) 'B密码
'mypiccnewkey(11) = "&H" & Mid(Text1, 34, 2)
'mypiccnewkey(12) = "&H" & Mid(Text1, 37, 2)
'mypiccnewkey(13) = "&H" & Mid(Text1, 40, 2)
'mypiccnewkey(14) = "&H" & Mid(Text1, 43, 2)
'mypiccnewkey(15) = "&H" & Mid(Text1, 46, 2)


mypiccnewkey(16) = &H3  '3是表示同时更改A、B、 密码权限访问字，为2表示密码权限访问字不更改，只改A、B密码，为0表示只改A密码

answ = MsgBox("您确定修改密码控制块的数据吗，此块数据如果改写了错误的数据卡片将报废！", vbQuestion + vbOKCancel, "警告")
If answ <> vbOK Then Exit Sub

status = piccchangesinglekeyex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypiccoldkey(0)), VarPtr(mypiccnewkey(0)))

'处理返回函数
Select Case status

    Case 0:
        pcdbeep 50
        MsgBox "操作成功"
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        
    Case 21 '没有动态库
        MsgBox "找不到动态库ICUSB.DLL请将ICUSB.DLL拷贝到VB安装后的目录VB98下"
    
    Case Else
        MsgBox "异常" + Format(status, "0")

End Select

Exit Sub


err1:
    MsgBox "写卡数据错误，请输入正确的16进制写卡数据"

End Sub

Private Sub Form_Load()
Combo1.ListIndex = 1
Combo2.ListIndex = 16


End Sub
