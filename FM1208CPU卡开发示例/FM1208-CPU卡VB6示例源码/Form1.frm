VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "内含CPU卡简易操作的通用IC卡读写器"
   ClientHeight    =   9030
   ClientLeft      =   -15
   ClientTop       =   375
   ClientWidth     =   12255
   ForeColor       =   &H8000000F&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9030
   ScaleWidth      =   12255
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton Command2 
      Caption         =   "退       出"
      Height          =   495
      Left            =   10800
      TabIndex        =   45
      Top             =   8400
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "第二步：初始化CPU卡"
      Height          =   1215
      Left            =   120
      TabIndex        =   4
      Top             =   960
      Width           =   12015
      Begin VB.CommandButton Command1 
         Caption         =   "   扩展功能     (不常用到)"
         Height          =   585
         Left            =   10230
         TabIndex        =   52
         Top             =   240
         Width           =   1455
      End
      Begin VB.TextBox Text18 
         Height          =   285
         Left            =   4320
         MaxLength       =   4
         TabIndex        =   5
         Text            =   "256"
         Top             =   240
         Width           =   615
      End
      Begin VB.TextBox Text17 
         Height          =   285
         Left            =   2100
         TabIndex        =   7
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   570
         Width           =   4575
      End
      Begin VB.CommandButton Command12 
         Caption         =   "初始化CPU卡"
         Height          =   585
         Left            =   8760
         TabIndex        =   8
         Top             =   240
         Width           =   1455
      End
      Begin VB.CheckBox Check1 
         Caption         =   "先清空卡再初始化"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   1815
      End
      Begin VB.Label Label8 
         Caption         =   "卡密码和文件没有任何关系，卡密码只是用来清空卡，读和写文件必须用文件密码认证，用卡密码认证是无效的。"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   2100
         TabIndex        =   51
         Top             =   930
         Width           =   9705
      End
      Begin VB.Label Label3 
         Caption         =   "（要比所有文件大小总和大）"
         Height          =   255
         Left            =   5520
         TabIndex        =   41
         Top             =   240
         Width           =   2655
      End
      Begin VB.Label Label27 
         Caption         =   "卡密码(16进制数)："
         Height          =   255
         Left            =   390
         TabIndex        =   11
         Top             =   600
         Width           =   1725
      End
      Begin VB.Label Label28 
         Caption         =   "设定本次应用空间大小："
         Height          =   255
         Left            =   2280
         TabIndex        =   10
         Top             =   240
         Width           =   2055
      End
      Begin VB.Label Label32 
         Caption         =   "字节"
         Height          =   255
         Left            =   5040
         TabIndex        =   9
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "第五步：读写文件"
      Height          =   2145
      Left            =   120
      TabIndex        =   32
      Top             =   5520
      Width           =   12015
      Begin VB.TextBox Text24 
         Height          =   1335
         Left            =   3360
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   49
         Text            =   "Form1.frx":0000
         Top             =   690
         Width           =   7455
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   4530
         TabIndex        =   44
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   225
         Width           =   4485
      End
      Begin VB.ComboBox Combo5 
         Height          =   300
         ItemData        =   "Form1.frx":0060
         Left            =   1440
         List            =   "Form1.frx":006A
         Style           =   2  'Dropdown List
         TabIndex        =   43
         Top             =   270
         Width           =   1455
      End
      Begin VB.ComboBox Combo4 
         Height          =   300
         ItemData        =   "Form1.frx":0082
         Left            =   120
         List            =   "Form1.frx":0098
         Style           =   2  'Dropdown List
         TabIndex        =   42
         Top             =   270
         Width           =   1095
      End
      Begin VB.CommandButton Command17 
         Caption         =   "读"
         Height          =   420
         Left            =   10920
         TabIndex        =   36
         Top             =   307
         Width           =   975
      End
      Begin VB.CommandButton Command18 
         Caption         =   "写"
         Height          =   420
         Left            =   10920
         TabIndex        =   35
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox Text22 
         Height          =   285
         Left            =   990
         MaxLength       =   4
         TabIndex        =   34
         Text            =   "0"
         Top             =   675
         Width           =   495
      End
      Begin VB.TextBox Text23 
         Height          =   285
         Left            =   2160
         MaxLength       =   4
         TabIndex        =   33
         Text            =   "2"
         Top             =   675
         Width           =   495
      End
      Begin VB.Label Label7 
         Caption         =   "读长度最大不能超过255，写长度最大不能超过247"
         ForeColor       =   &H000000FF&
         Height          =   765
         Left            =   240
         TabIndex        =   50
         Top             =   1080
         Width           =   2535
      End
      Begin VB.Label Label5 
         Caption         =   "密码(16进制数)："
         Height          =   255
         Left            =   3120
         TabIndex        =   46
         Top             =   300
         Width           =   1455
      End
      Begin VB.Label Label34 
         Caption         =   "起始位置："
         Height          =   255
         Left            =   120
         TabIndex        =   39
         Top             =   690
         Width           =   975
      End
      Begin VB.Label Label35 
         Caption         =   "长度："
         Height          =   255
         Left            =   1680
         TabIndex        =   38
         Top             =   690
         Width           =   615
      End
      Begin VB.Label Label36 
         Caption         =   "内容："
         Height          =   255
         Left            =   2880
         TabIndex        =   37
         Top             =   690
         Width           =   615
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "第四步：修改文件密码"
      Height          =   1215
      Left            =   120
      TabIndex        =   24
      Top             =   4200
      Width           =   12015
      Begin VB.ComboBox Combo6 
         Height          =   315
         ItemData        =   "Form1.frx":00D2
         Left            =   1560
         List            =   "Form1.frx":00DC
         Style           =   2  'Dropdown List
         TabIndex        =   48
         Top             =   810
         Width           =   1815
      End
      Begin VB.CommandButton Command19 
         Caption         =   "文件密码更改"
         Height          =   540
         Left            =   10320
         TabIndex        =   29
         Top             =   360
         Width           =   1575
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         ItemData        =   "Form1.frx":00FC
         Left            =   1560
         List            =   "Form1.frx":0106
         Style           =   2  'Dropdown List
         TabIndex        =   28
         Top             =   360
         Width           =   1815
      End
      Begin VB.TextBox Text25 
         Height          =   285
         Left            =   5280
         TabIndex        =   27
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   840
         Width           =   4425
      End
      Begin VB.TextBox Text26 
         Height          =   285
         Left            =   5280
         TabIndex        =   26
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   375
         Width           =   4425
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "Form1.frx":012A
         Left            =   120
         List            =   "Form1.frx":0140
         Style           =   2  'Dropdown List
         TabIndex        =   25
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label Label37 
         AutoSize        =   -1  'True
         Caption         =   "新密码(16进制数)："
         Height          =   180
         Left            =   3630
         TabIndex        =   31
         Top             =   840
         Width           =   1620
      End
      Begin VB.Label Label38 
         AutoSize        =   -1  'True
         Caption         =   "认证密码(16进制数)："
         Height          =   180
         Left            =   3450
         TabIndex        =   30
         Top             =   390
         Width           =   1800
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "第三步：创建文件和删除文件"
      Height          =   1755
      Left            =   120
      TabIndex        =   14
      Top             =   2310
      Width           =   12015
      Begin VB.CommandButton Command13 
         Caption         =   "创建文件"
         Height          =   540
         Left            =   10320
         TabIndex        =   19
         Top             =   240
         Width           =   1575
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "Form1.frx":017A
         Left            =   120
         List            =   "Form1.frx":0190
         Style           =   2  'Dropdown List
         TabIndex        =   18
         Top             =   360
         Width           =   1095
      End
      Begin VB.TextBox Text19 
         Height          =   285
         Left            =   3060
         TabIndex        =   17
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   225
         Width           =   4455
      End
      Begin VB.TextBox Text20 
         Height          =   285
         Left            =   3060
         TabIndex        =   16
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   540
         Width           =   4455
      End
      Begin VB.TextBox Text21 
         Height          =   285
         Left            =   8790
         MaxLength       =   4
         TabIndex        =   15
         Text            =   "256"
         Top             =   255
         Width           =   615
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "2号文件：对应在目录 1680(十六进制) 下的 0002(十六进制) 文件,以此类推...."
         ForeColor       =   &H000000FF&
         Height          =   180
         Left            =   1650
         TabIndex        =   54
         Top             =   1470
         Width           =   6480
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "1号文件：对应在目录 1680(十六进制) 下的 0001(十六进制) 文件。"
         ForeColor       =   &H000000FF&
         Height          =   180
         Left            =   1650
         TabIndex        =   53
         Top             =   1230
         Width           =   5490
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "注：创建好的文件不能删除，只能重新初始化卡来清除所有文件,文件密码认证方式按照通用的 14443-4 国际标准协议。"
         ForeColor       =   &H000000FF&
         Height          =   180
         Left            =   1290
         TabIndex        =   47
         Top             =   990
         Width           =   9540
      End
      Begin VB.Label Label29 
         Caption         =   "只读密码(16进制数)："
         Height          =   255
         Left            =   1320
         TabIndex        =   23
         Top             =   300
         Width           =   1815
      End
      Begin VB.Label Label30 
         Caption         =   "读写密码(16进制数)："
         Height          =   255
         Left            =   1320
         TabIndex        =   22
         Top             =   630
         Width           =   1815
      End
      Begin VB.Label Label31 
         Caption         =   "定义文件大小："
         Height          =   255
         Left            =   7590
         TabIndex        =   21
         Top             =   270
         Width           =   1335
      End
      Begin VB.Label Label33 
         Caption         =   "字节"
         Height          =   255
         Left            =   9510
         TabIndex        =   20
         Top             =   270
         Width           =   495
      End
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2760
      TabIndex        =   13
      Top             =   510
      Width           =   1815
   End
   Begin VB.CommandButton Command7 
      Caption         =   "进入CPU卡APDU调试窗口"
      Height          =   495
      Left            =   4560
      TabIndex        =   3
      Top             =   8370
      Width           =   3015
   End
   Begin VB.CommandButton Command10 
      BackColor       =   &H00C0FFC0&
      Caption         =   "第一步：CPU卡激活"
      Height          =   345
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "注：每次拿开卡重放后都需要激活，才能驱动卡进入14443-4协议状态。"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   4920
      TabIndex        =   40
      Top             =   525
      Width           =   5895
   End
   Begin VB.Label Label1 
      Caption         =   "卡号："
      Height          =   255
      Left            =   2160
      TabIndex        =   12
      Top             =   525
      Width           =   735
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FF0000&
      X1              =   120
      X2              =   12120
      Y1              =   8190
      Y2              =   8190
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "每个按钮只调用到一个函数，以上5个函数可以让您十分钟搞定CPU卡，不需要花一两个月去熟悉CPU卡内部机制，我们都帮您搞定了！！！"
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   870
      TabIndex        =   1
      Top             =   7830
      Width           =   10890
   End
   Begin VB.Label Label22 
      Caption         =   "全国首创，只需十分钟就可轻松搞定CPU卡，简易操作指令"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   3780
      TabIndex        =   0
      Top             =   120
      Width           =   4695
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      X1              =   120
      X2              =   12120
      Y1              =   240
      Y2              =   240
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub Command1_Click()
    Form3.Show 1
End Sub

Private Sub Command10_Click()
'CPU卡寻卡及将卡复位到14443A-4的指令状态

'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim myparam(0 To 3) As Byte '参数
Dim myver As Byte '卡数据缓冲
Dim mycode As Byte '卡数据缓冲
Dim cardhao As Double

status = cpurequest(VarPtr(mypiccserial(0)), VarPtr(myparam(0)), VarPtr(myver), VarPtr(mycode))

If status = 0 Or status = 52 Then

    cardhao = mypiccserial(3)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(2)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(1)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(0)
    pcdbeep 20
    
    Text1.Text = Right("000000000" + CStr(cardhao), 10)
    
    MsgBox "复位CPU卡成功,CPU卡进入14443A-4的协议模式，可以接着重复操作第二步进行调试了。" + Chr(13) + Chr(10) + "卡号:" + Hex(mypiccserial(0)) + "-" + Hex(mypiccserial(1)) + "-" + Hex(mypiccserial(2)) + "-" + Hex(mypiccserial(3)) + _
    ",参数:" + Hex(myparam(0)) + "-" + Hex(myparam(1)) + "-" + Hex(myparam(2)) + "-" + Hex(myparam(3)) + _
    ",版本:" + Hex(myver) + _
    "，厂商代码(复旦为90):" + Hex(mycode)
    
ElseIf status = 8 Then
    MsgBox "请重新拿开卡后再放到感应区"
    
Else

    MsgBox "异常" + CStr(status)

End If
End Sub

Private Sub Command12_Click()
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String

    Dim mylen As Integer
    
    Dim i As Integer
    
    Dim spacesize As Long
    
    Dim keystrlen As Byte
    Dim keylen As Byte '密钥长度
    Dim keybuf(0 To 15) As Byte '密钥
    
    Dim status As Byte
        
    

    '取密码
    strls1 = Text17.Text
    mylen = Len(strls1)
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    keystrlen = Len(strls)
    
    If (keystrlen < 1) Then
        MsgBox "请先输入密码！"
        Text17.SetFocus
        Exit Sub
    End If
    
    If Trim(Text18.Text) = "" Then
        MsgBox "请先输入应用空间大小！"
        Text18.Text = ""
        Text18.SetFocus
        Exit Sub
    End If
    
    spacesize = CLng(Text18.Text)
    
    If (spacesize < 1) Then
        MsgBox "应用空间大小为0，请重新输入！"
        Text18.SetFocus
        Exit Sub
    End If

    
    If (keystrlen Mod 2) > 0 Then
        strls = strls & "0"
        keystrlen = keystrlen + 1
    End If
    
    strls1 = ""
    keylen = 0
    For i = 1 To keystrlen Step 2
        strls2 = Mid(strls, i, 2)
        
        strls1 = strls1 + strls2 + " "
        
        keybuf(keylen) = CByte("&h" & strls2)
        keylen = keylen + 1
        
    Next i
    Text17.Text = Trim(strls1)
    
    If (Check1.Value > 0) Then
        i = 1
    Else
        i = 0
    End If
    status = cpursinit(i, VarPtr(keybuf(0)), keylen, spacesize)
    
    If status = 0 Then
        pcdbeep 20
        MsgBox "初始化卡成功"
    Else
        RetText status
    End If
    
    


    
End Sub


Private Sub Command13_Click() '创建文件

    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim keyastrls As String
    Dim keybstrls As String
    
    Dim mylen As Integer
    
    Dim i As Integer
    
    
    
    Dim spacesize As Long
    
    Dim keyastrlen As Byte
    Dim keyalen As Byte '密钥长度
    Dim keyabuf(0 To 15) As Byte '密钥
    
    Dim keybstrlen As Byte
    Dim keyblen As Byte '密钥长度
    Dim keybbuf(0 To 15) As Byte '密钥
    
    Dim status As Byte
        
    '取只读密码
    strls1 = Text19.Text
    mylen = Len(strls1)
    keyastrls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            keyastrls = keyastrls + strls2
        End If
    
    Next i
    
    keyastrlen = Len(keyastrls)
    
    If (keyastrlen < 1) Then
        MsgBox "请先输入密码！"
        Text19.SetFocus
        Exit Sub
    End If
    
    
    '取读写密码
    strls1 = Text20.Text
    mylen = Len(strls1)
    keybstrls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            keybstrls = keybstrls + strls2
        End If
    
    Next i
    
    keybstrlen = Len(keybstrls)
    
    If (keybstrlen < 1) Then
        MsgBox "请先输入密码！"
        Text20.SetFocus
        Exit Sub
    End If
    
    '文件大小
    If Trim(Text21.Text) = "" Then
        MsgBox "请先输入文件大小！"
        Text21.Text = ""
        Text21.SetFocus
        Exit Sub
    End If
    
    spacesize = CLng(Text21.Text)
    
    If (spacesize < 1) Then
        MsgBox "文件大小为0，请重新输入！"
        Text21.SetFocus
        Exit Sub
    End If

    '提取只读密码
    If (keyastrlen Mod 2) > 0 Then
        keyastrls = keyastrls & "0"
        keyastrlen = keyastrlen + 1
    End If
    
    strls1 = ""
    keyalen = 0
    For i = 1 To keyastrlen Step 2
        strls2 = Mid(keyastrls, i, 2)
        
        strls1 = strls1 + strls2 + " "
        
        keyabuf(keyalen) = CByte("&h" & strls2)
        keyalen = keyalen + 1
        
    Next i
    
    Text19.Text = Trim(strls1)
    
    '提取读写密码
    If (keybstrlen Mod 2) > 0 Then
        keybstrls = keybstrls & "0"
        keybstrlen = keybstrlen + 1
    End If
    
    strls1 = ""
    keyblen = 0
    For i = 1 To keybstrlen Step 2
        strls2 = Mid(keybstrls, i, 2)
        
        strls1 = strls1 + strls2 + " "
        
        keybbuf(keyblen) = CByte("&h" & strls2)
        keyblen = keyblen + 1
        
    Next i
    
    Text20.Text = Trim(strls1)
    
    
    
    
    i = Combo1.ListIndex

    status = cpursfileadd(i, VarPtr(keyabuf(0)), keyalen, VarPtr(keybbuf(0)), keyblen, spacesize)
    
    If status = 0 Then
        pcdbeep 20
        MsgBox "创建文件成功"
    ElseIf status = 60 Then
        
        MsgBox "文件已经存在，不能再次创建"
    Else
        RetText status
    End If
End Sub

Private Sub Command17_Click() '读文件
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim keystrls As String
    Dim datastrls As String
    
    Dim mylen As Integer
    
    Dim i As Integer
    
    Dim keystrlen As Byte
    Dim keylen As Byte '密钥长度
    Dim keybuf(0 To 15) As Byte '密钥
    
    Dim datalen As Integer '文件长度
    Dim databuf(0 To 1023) As Byte '文件内容
    
    Dim datastart As Integer
    
   
    Dim status As Byte
    
    
        
    '取认证密码
    strls1 = Text2.Text
    mylen = Len(strls1)
    keystrls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            keystrls = keystrls + strls2
        End If
    
    Next i
    
    keystrlen = Len(keystrls)
    
    If (keystrlen < 1) Then
        MsgBox "请先输入密码！"
        Text2.SetFocus
        Exit Sub
    End If
    
    '文件起始地址
    If Trim(Text22.Text) = "" Then
        MsgBox "请先输入文件起始地址！"
        Text22.Text = ""
        Text22.SetFocus
        Exit Sub
    End If
    datastart = CLng(Text22.Text)
    
    If (datastart < 0) Then
        MsgBox "文件起始地址不能小于0，请重新输入！"
        Text18.SetFocus
        Exit Sub
    End If
    
    '本次读取的长度
    If Trim(Text23.Text) = "" Then
        MsgBox "请先输入本次读取的长度（单位为字节）！"
        Text23.Text = ""
        Text23.SetFocus
        Exit Sub
    End If
    
    datalen = CLng(Text23.Text)
    
    If (datalen < 1) Then
        MsgBox "本次读取的长度不能小于1，请重新输入！"
        Text23.SetFocus
        Exit Sub
    End If
    
   
    '提取认证密码
    If (keystrlen Mod 2) > 0 Then
        keystrls = keystrls & "0"
        keystrlen = keystrlen + 1
    End If
    
    strls1 = ""
    keylen = 0
    For i = 1 To keystrlen Step 2
        strls2 = Mid(keystrls, i, 2)
        
        strls1 = strls1 + strls2 + " "
        
        keybuf(keylen) = CByte("&h" & strls2)
        keylen = keylen + 1
        
    Next i
    
    Text2.Text = Trim(strls1)
    
    '用来认证的密码类型
    If Combo5.ListIndex = 0 Then
        i = OLDKEYR '用只读密码来认证
    Else
        i = OLDKEYWR '用读写密码来认证
    End If
    

    status = cpursfiledataread(Combo4.ListIndex, i, VarPtr(keybuf(0)), keylen, datastart, VarPtr(databuf(0)), datalen)
    
    If status = 0 Then
        i = 0
        strls = ""
        While i < datalen
        
            strls = strls & Right("0" & Hex(databuf(i)), 2) & " "
            i = i + 1
        Wend
        
        Text24.Text = Trim(strls)
    
        pcdbeep 20
    Else
        RetText status
    End If
End Sub

Private Sub Command18_Click() '写文件
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim keystrls As String
    Dim datastrls As String
    
    Dim mylen As Integer
    
    Dim i As Integer
    
    Dim keystrlen As Byte
    Dim keylen As Byte '密钥长度
    Dim keybuf(0 To 15) As Byte '密钥
    
    Dim datastrlen As Integer
    Dim datalen As Integer '文件长度
    Dim databuf(0 To 1023) As Byte '文件内容
    Dim datastart As Integer
    Dim status As Byte
        
    '取认证密码
    strls1 = Text2.Text
    mylen = Len(strls1)
    keystrls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            keystrls = keystrls + strls2
        End If
    
    Next i
    
    keystrlen = Len(keystrls)
    
    If (keystrlen < 1) Then
        MsgBox "请先输入密码！"
        Text2.SetFocus
        Exit Sub
    End If
    
    '文件起始地址
    If Trim(Text22.Text) = "" Then
        MsgBox "请先输入文件起始地址！"
        Text22.Text = ""
        Text22.SetFocus
        Exit Sub
    End If
    datastart = CLng(Text22.Text)
    
    If (datastart < 0) Then
        MsgBox "文件起始地址不能小于0，请重新输入！"
        Text18.SetFocus
        Exit Sub
    End If
    
    '本次读取的长度
    If Trim(Text23.Text) = "" Then
        MsgBox "请先输入本次读取的长度（单位为字节）！"
        Text23.Text = ""
        Text23.SetFocus
        Exit Sub
    End If
    
    datalen = CLng(Text23.Text)
    
    If (datalen < 1) Then
        MsgBox "本次读取的长度不能小于1，请重新输入！"
        Text23.SetFocus
        Exit Sub
    End If
    
    
    '取数据
    strls1 = Text24.Text
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
        Text24.SetFocus
        Exit Sub
    End If
    

    '提取认证密码
    If (keystrlen Mod 2) > 0 Then
        keystrls = keystrls & "0"
        keystrlen = keystrlen + 1
    End If
    
    strls1 = ""
    keylen = 0
    For i = 1 To keystrlen Step 2
        strls2 = Mid(keystrls, i, 2)
        
        strls1 = strls1 + strls2 + " "
        
        keybuf(keylen) = CByte("&h" & strls2)
        keylen = keylen + 1
        
    Next i
    
    Text2.Text = Trim(strls1)
    
    '提取文件内容
    If (datastrlen Mod 2) > 0 Then
        datastrls = datastrls & "0"
        datastrlen = datastrlen + 1
    End If
    
    strls1 = ""

    For i = 1 To datalen
        strls2 = Mid(datastrls, (i - 1) * 2 + 1, 2)
        
        strls1 = strls1 + strls2 + " "
        
        databuf(i - 1) = CByte("&h" & strls2)
        
    Next i
    
    'Text24.Text = Trim(strls1)
    
    '需要更改的密码类型
    If Combo6.ListIndex = 0 Then
        i = NEWKEYR '更改只读密码
    Else
        i = NEWKEYWR '更改读写密码
    End If
    
    '用来认证的密码类型
    If Combo5.ListIndex = 0 Then
        i = OLDKEYR '用只读密码来认证
    Else
        i = OLDKEYWR  '用读写密码来认证
    End If
    
    status = cpursfiledatawrite(Combo4.ListIndex, i, VarPtr(keybuf(0)), keylen, datastart, VarPtr(databuf(0)), datalen)
       
    If status = 0 Then
        pcdbeep 20
        MsgBox "写入文件成功！"
    Else
        RetText status
    End If
End Sub

Private Sub Command19_Click()
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim keyastrls As String
    Dim keybstrls As String
    
    Dim mylen As Integer
    
    Dim i As Integer
    
    Dim keyastrlen As Integer
    Dim keyalen As Byte '密钥长度
    Dim keyabuf(0 To 15) As Byte '密钥
    
    Dim keybstrlen As Integer
    Dim keyblen As Byte '密钥长度
    Dim keybbuf(0 To 15) As Byte '密钥
    
    Dim status As Byte
        
    '取原密码
    strls1 = Text26.Text
    mylen = Len(strls1)
    keyastrls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            keyastrls = keyastrls + strls2
        End If
    
    Next i
    
    keyastrlen = Len(keyastrls)
    
    If (keyastrlen < 1) Then
        MsgBox "请先输入密码！"
        Text26.SetFocus
        Exit Sub
    End If
    
    
    '取新密码
    strls1 = Text25.Text
    mylen = Len(strls1)
    keybstrls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            keybstrls = keybstrls + strls2
        End If
    
    Next i
    
    keybstrlen = Len(keybstrls)
    
    If (keybstrlen < 1) Then
        MsgBox "请先输入密码！"
        Text25.SetFocus
        Exit Sub
    End If
    

    '提取原密码
    If (keyastrlen Mod 2) > 0 Then
        keyastrls = keyastrls & "0"
        keyastrlen = keyastrlen + 1
    End If
    
    strls1 = ""
    keyalen = 0
    For i = 1 To keyastrlen Step 2
        strls2 = Mid(keyastrls, i, 2)
        
        strls1 = strls1 + strls2 + " "
        
        keyabuf(keyalen) = CByte("&h" & strls2)
        keyalen = keyalen + 1
        
    Next i
    
    Text26.Text = Trim(strls1)
    
    '提取新密码
    If (keybstrlen Mod 2) > 0 Then
        keybstrls = keybstrls & "0"
        keybstrlen = keybstrlen + 1
    End If
    
    strls1 = ""
    keyblen = 0
    For i = 1 To keybstrlen Step 2
        strls2 = Mid(keybstrls, i, 2)
        
        strls1 = strls1 + strls2 + " "
        
        keybbuf(keyblen) = CByte("&h" & strls2)
        keyblen = keyblen + 1
        
    Next i
    
    Text25.Text = Trim(strls1)
    
    '需要更改的密码类型
    If Combo6.ListIndex = 0 Then
        i = NEWKEYR '更改只读密码
    Else
        i = NEWKEYWR '更改读写密码
    End If
    
    '用来认证的密码类型
    If Combo2.ListIndex = 0 Then
        i = i + OLDKEYR '用只读密码来认证
    Else
        i = i + OLDKEYWR '用读写密码来认证
    End If
    
    status = cpursfilekeychg(Combo3.ListIndex, i, VarPtr(keyabuf(0)), keyalen, VarPtr(keybbuf(0)), keyblen)
    
    If status = 0 Then
        pcdbeep 20
        MsgBox "修改文件密码成功！"
    Else
        RetText status
    End If
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Command7_Click()
    Form2.Show 1
End Sub

Private Sub Form_Load()
    Combo1.ListIndex = 0
    Combo2.ListIndex = 0
    Combo3.ListIndex = 0
    Combo4.ListIndex = 0
    Combo5.ListIndex = 0
    Combo6.ListIndex = 0
    
End Sub

Private Sub Text17_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39)) Or ((KeyAscii >= &H61) And (KeyAscii <= &H66)) Or ((KeyAscii >= &H41) And (KeyAscii <= &H46))) Then
        KeyAscii = 0
    End If
End Sub

Private Sub Text18_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39))) Then
        KeyAscii = 0
    End If
End Sub

Private Sub Text19_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39)) Or ((KeyAscii >= &H61) And (KeyAscii <= &H66)) Or ((KeyAscii >= &H41) And (KeyAscii <= &H46))) Then
        KeyAscii = 0
    End If
End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39)) Or ((KeyAscii >= &H61) And (KeyAscii <= &H66)) Or ((KeyAscii >= &H41) And (KeyAscii <= &H46))) Then
        KeyAscii = 0
    End If
End Sub

Private Sub Text20_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39)) Or ((KeyAscii >= &H61) And (KeyAscii <= &H66)) Or ((KeyAscii >= &H41) And (KeyAscii <= &H46))) Then
        KeyAscii = 0
    End If
End Sub

Private Sub Text21_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39))) Then
        KeyAscii = 0
    End If
End Sub

Private Sub Text22_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39))) Then
        KeyAscii = 0
    End If
End Sub

Private Sub Text23_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39))) Then
        KeyAscii = 0
    End If
End Sub

Private Sub Text24_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39)) Or ((KeyAscii >= &H61) And (KeyAscii <= &H66)) Or ((KeyAscii >= &H41) And (KeyAscii <= &H46))) Then
        KeyAscii = 0
    End If
End Sub

Private Sub Text25_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39)) Or ((KeyAscii >= &H61) And (KeyAscii <= &H66)) Or ((KeyAscii >= &H41) And (KeyAscii <= &H46))) Then
        KeyAscii = 0
    End If
End Sub

Private Sub Text26_KeyPress(KeyAscii As Integer)
    If Not ((KeyAscii = 8) Or (KeyAscii = 3) Or (KeyAscii = 22) Or (KeyAscii = 24) Or (KeyAscii = &H20) Or ((KeyAscii >= &H30) And (KeyAscii <= &H39)) Or ((KeyAscii >= &H61) And (KeyAscii <= &H66)) Or ((KeyAscii >= &H41) And (KeyAscii <= &H46))) Then
        KeyAscii = 0
    End If
End Sub
