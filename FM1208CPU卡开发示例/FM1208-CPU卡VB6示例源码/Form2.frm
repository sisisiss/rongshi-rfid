VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "CPU卡APDU调试"
   ClientHeight    =   7215
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   13245
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7215
   ScaleWidth      =   13245
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command7 
      Caption         =   "第一步：CPU卡激活"
      Height          =   420
      Left            =   120
      TabIndex        =   44
      Top             =   240
      Width           =   2055
   End
   Begin VB.TextBox Text2 
      Height          =   2055
      Left            =   4320
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   43
      Text            =   "Form2.frx":0000
      Top             =   960
      Width           =   3375
   End
   Begin VB.TextBox Text3 
      Height          =   2055
      Left            =   8880
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   42
      Top             =   960
      Width           =   3375
   End
   Begin VB.CommandButton Command8 
      Caption         =   "第二步：CPU卡发送接收调试 >>"
      Height          =   1065
      Left            =   7800
      TabIndex        =   41
      Top             =   1440
      Width           =   975
   End
   Begin VB.ListBox List1 
      BackColor       =   &H00E0E0E0&
      Height          =   2010
      ItemData        =   "Form2.frx":0011
      Left            =   120
      List            =   "Form2.frx":004E
      TabIndex        =   40
      Top             =   960
      Width           =   3975
   End
   Begin VB.TextBox Text7 
      Height          =   285
      Left            =   9720
      Locked          =   -1  'True
      TabIndex        =   39
      Top             =   600
      Width           =   2535
   End
   Begin VB.CommandButton Command14 
      Caption         =   "加密调试"
      Height          =   375
      Left            =   6720
      TabIndex        =   38
      Top             =   240
      Width           =   975
   End
   Begin VB.CommandButton Command15 
      Caption         =   "解密调试"
      Height          =   375
      Left            =   7800
      TabIndex        =   37
      Top             =   240
      Width           =   975
   End
   Begin VB.Frame Frame1 
      Caption         =   "计算MAC码"
      Height          =   3975
      Left            =   4320
      TabIndex        =   26
      Top             =   3120
      Width           =   4095
      Begin VB.TextBox Text10 
         Height          =   285
         Left            =   600
         TabIndex        =   30
         Text            =   "11 22 33 44"
         Top             =   3240
         Width           =   1215
      End
      Begin VB.CommandButton Command16 
         Caption         =   "计算MAC"
         Height          =   375
         Left            =   120
         TabIndex        =   31
         Top             =   2760
         Width           =   3855
      End
      Begin VB.TextBox Text11 
         Height          =   285
         Left            =   720
         TabIndex        =   29
         Text            =   "00 00 00 00"
         Top             =   240
         Width           =   1215
      End
      Begin VB.TextBox Text9 
         Height          =   735
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   28
         Text            =   "Form2.frx":020C
         Top             =   1440
         Width           =   3855
      End
      Begin VB.TextBox Text12 
         Height          =   285
         Left            =   120
         TabIndex        =   27
         Text            =   "4F F6 3E 5D 02 FF CA 1B"
         Top             =   840
         Width           =   3855
      End
      Begin VB.Label Label12 
         Caption         =   "明文(不需要后补80，否则出错)"
         Height          =   255
         Left            =   120
         TabIndex        =   36
         Top             =   1200
         Width           =   2535
      End
      Begin VB.Label Label13 
         Caption         =   "结果"
         Height          =   255
         Left            =   120
         TabIndex        =   35
         Top             =   3240
         Width           =   495
      End
      Begin VB.Label Label14 
         Caption         =   "随机数"
         Height          =   255
         Left            =   120
         TabIndex        =   34
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label15 
         Caption         =   "密钥"
         Height          =   255
         Left            =   120
         TabIndex        =   33
         Top             =   600
         Width           =   495
      End
      Begin VB.Label Label17 
         BackColor       =   &H00C0FFFF&
         Caption         =   "注：可输入8字节的密钥或16字节密钥，自动按字节数计算结果！"
         Height          =   495
         Left            =   120
         TabIndex        =   32
         Top             =   2160
         Width           =   3855
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "外部认证密钥密文计算"
      Height          =   2775
      Left            =   120
      TabIndex        =   17
      Top             =   3120
      Width           =   4095
      Begin VB.TextBox Text8 
         Height          =   285
         Left            =   120
         TabIndex        =   21
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   960
         Width           =   3855
      End
      Begin VB.TextBox Text4 
         Height          =   285
         Left            =   720
         TabIndex        =   20
         Text            =   "11 22 33 44"
         Top             =   360
         Width           =   1215
      End
      Begin VB.TextBox Text6 
         Height          =   285
         Left            =   600
         TabIndex        =   19
         Text            =   "11 22 33 44 55 66 77 88"
         Top             =   2400
         Width           =   2055
      End
      Begin VB.CommandButton Command9 
         Caption         =   "加密(外部认证所需)>>"
         Height          =   375
         Left            =   120
         TabIndex        =   18
         Top             =   1920
         Width           =   3855
      End
      Begin VB.Label Label11 
         Caption         =   "密钥"
         Height          =   255
         Left            =   120
         TabIndex        =   25
         Top             =   720
         Width           =   495
      End
      Begin VB.Label Label7 
         Caption         =   "随机数"
         Height          =   255
         Left            =   120
         TabIndex        =   24
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label9 
         Caption         =   "结果"
         Height          =   255
         Left            =   120
         TabIndex        =   23
         Top             =   2400
         Width           =   495
      End
      Begin VB.Label Label16 
         BackColor       =   &H00C0FFFF&
         Caption         =   "注：可输入8字节的密钥或16字节密钥，自动按字节数计算结果！"
         Height          =   495
         Left            =   120
         TabIndex        =   22
         Top             =   1320
         Width           =   3855
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "数据加密"
      Height          =   3975
      Left            =   8520
      TabIndex        =   6
      Top             =   3120
      Width           =   4095
      Begin VB.TextBox Text5 
         Height          =   285
         Left            =   120
         TabIndex        =   10
         Text            =   "4F F6 3E 5D 02 FF CA 1B"
         Top             =   480
         Width           =   3855
      End
      Begin VB.TextBox Text13 
         Height          =   615
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   9
         Text            =   "Form2.frx":0244
         Top             =   1560
         Width           =   3855
      End
      Begin VB.CommandButton Command11 
         Caption         =   "计算密文"
         Height          =   375
         Left            =   120
         TabIndex        =   8
         Top             =   2280
         Width           =   3855
      End
      Begin VB.TextBox Text14 
         Height          =   855
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   7
         Top             =   3000
         Width           =   3855
      End
      Begin VB.Label Label26 
         Caption         =   "0"
         Height          =   255
         Left            =   1680
         TabIndex        =   11
         Top             =   2760
         Width           =   2175
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "注：可输入8字节的密钥或16字节密钥，自动按字节数计算结果！"
         Height          =   480
         Left            =   120
         TabIndex        =   16
         Top             =   840
         Width           =   3855
      End
      Begin VB.Label Label18 
         Caption         =   "密钥"
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label21 
         Caption         =   "明文(不需要后补80，否则出错)"
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   1320
         Width           =   2535
      End
      Begin VB.Label Label2 
         Caption         =   "密文"
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   2760
         Width           =   495
      End
      Begin VB.Label Label25 
         Caption         =   "长度(字节)："
         Height          =   255
         Left            =   720
         TabIndex        =   12
         Top             =   2760
         Width           =   1095
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "ASCII码转换"
      Height          =   1095
      Left            =   120
      TabIndex        =   0
      Top             =   6000
      Width           =   4095
      Begin VB.TextBox Text16 
         Height          =   285
         Left            =   1920
         TabIndex        =   1
         Top             =   720
         Width           =   2055
      End
      Begin VB.TextBox Text15 
         Height          =   285
         Left            =   720
         TabIndex        =   3
         Text            =   "abcdefg"
         Top             =   240
         Width           =   3255
      End
      Begin VB.CommandButton Command20 
         Caption         =   "计算>>"
         Height          =   375
         Left            =   120
         TabIndex        =   2
         Top             =   600
         Width           =   855
      End
      Begin VB.Label Label20 
         Caption         =   "字符串"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label24 
         Caption         =   "16进制数"
         Height          =   255
         Left            =   1080
         TabIndex        =   4
         Top             =   720
         Width           =   855
      End
   End
   Begin VB.Label Label19 
      Caption         =   "CPU卡APDU调试"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   5490
      TabIndex        =   45
      Top             =   0
      Width           =   1395
   End
   Begin VB.Label Label5 
      Caption         =   "发送(16进制数，用空隔隔开)"
      Height          =   255
      Left            =   4320
      TabIndex        =   48
      Top             =   720
      Width           =   2295
   End
   Begin VB.Label Label6 
      Caption         =   "接收结果："
      Height          =   255
      Left            =   8880
      TabIndex        =   47
      Top             =   600
      Width           =   975
   End
   Begin VB.Label Label10 
      Caption         =   "快捷输入命令样板"
      Height          =   255
      Left            =   120
      TabIndex        =   46
      Top             =   720
      Width           =   2295
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FF0000&
      X1              =   120
      X2              =   12240
      Y1              =   120
      Y2              =   120
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Command11_Click()
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim mylen As Integer
    Dim keylen As Byte '密钥长度，8或16个字节
    Dim i As Integer
    Dim j As Integer
    
    Dim keybuf(0 To 15) As Byte '密钥
    
    Dim sendbuf(0 To 255) As Byte '明文数据缓冲
    
    Dim calcbuf(0 To 255) As Byte '计算结果
    Dim calcbuflen As Long '计算结果
    
    '取密钥
    strls1 = Text5.Text
    mylen = Len(strls1)
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    If (Len(strls) > 16) Then
        '为16字节密码
        keylen = 16
    Else
        keylen = 8
    End If
    
    strls = strls + "00000000000000000000000000000000"
    
    
    mylen = Len(strls)
    
    strls1 = ""
    If (keylen = 16) Then
        For i = 1 To 31 Step 2
            strls1 = strls1 + Mid(strls, i, 2) + " "
    
        Next i
        
        Text5.Text = Trim(strls1)
        j = 0
        For i = 1 To 31 Step 2
            strls2 = Mid(strls, i, 2)
            keybuf(j) = CByte("&h" & strls2)
            j = j + 1
        Next i
    Else
    
        For i = 1 To 15 Step 2
            strls1 = strls1 + Mid(strls, i, 2) + " "
        
        Next i
        Text5.Text = Trim(strls1)
        j = 0
        For i = 1 To 15 Step 2
            strls2 = Mid(strls, i, 2)
            keybuf(j) = CByte("&h" & strls2)
            j = j + 1
        Next i
        
        
    End If
    
    '取明文
    strls1 = Text13.Text
    
    
    mylen = Len(strls1)
    
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If strls2 = "[" Or strls2 = "]" Then
            MsgBox "请先按[]中的提示，在[]中输入所需的数据，并删除[]"
            Exit Sub
        End If
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    mylen = Len(strls)
    
    If ((mylen Mod 2) > 0) Then
        strls = strls + "0"
        mylen = mylen + 1
    End If
    
    strls1 = ""
    For i = 1 To (mylen - 1) Step 2
        strls1 = strls1 + Mid(strls, i, 2) + " "
    
    Next i
    
    Text13.Text = Trim(strls1)
    
    j = 0
    For i = 1 To (mylen - 1) Step 2
        strls2 = Mid(strls, i, 2)
        sendbuf(j) = CByte("&h" & strls2)
        
        j = j + 1
    
    Next i
    
    cpudata3desenc VarPtr(sendbuf(0)), j, VarPtr(keybuf(0)), keylen, VarPtr(calcbuf(0)), VarPtr(calcbuflen)
    
    strls = ""
    For i = 0 To (calcbuflen - 1)
        strls = strls & Right("0" & Hex(calcbuf(i)), 2) & " "
    
    Next i

    Text14.Text = Trim(strls)
    
    Label26.Caption = CStr(calcbuflen) & "，十六进制为：" & Right("0" & Hex(calcbuflen), 2)
    

End Sub

Private Sub Command14_Click()
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim mylen As Integer
    Dim i As Integer
    Dim j As Integer
    Dim sendbuf(0 To 255) As Byte '卡数据缓冲
    
    Dim revbuf(0 To 255) As Byte '卡数据缓冲
    
    
        
    strls1 = Text2.Text
    
    
    mylen = Len(strls1)
    
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If strls2 = "[" Or strls2 = "]" Then
            MsgBox "请先按[]中的提示，在[]中输入所需的数据，并删除[]"
            Exit Sub
        End If
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    mylen = Len(strls)
    
    If ((mylen Mod 2) > 0) Then
        strls = strls + "0"
        mylen = mylen + 1
    End If
    
    strls1 = ""
    For i = 1 To (mylen - 1) Step 2
        strls1 = strls1 + Mid(strls, i, 2) + " "
    
    Next i
    
    Text2.Text = Trim(strls1)
    
    j = 0
    For i = 1 To (mylen - 1) Step 2
        strls2 = Mid(strls, i, 2)
        sendbuf(j) = CByte("&h" & strls2)
        
        j = j + 1
    
    Next i
    
    mylen = j
    
    jm VarPtr(sendbuf(0)), VarPtr(revbuf(0)), mylen
    
    j = 0
    strls = ""
    While j < mylen
    
        strls = strls & Right("0" & Hex(revbuf(j)), 2)
        j = j + 1
        
    Wend
    
    Text3.Text = strls
End Sub

Private Sub Command15_Click()
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim mylen As Integer
    Dim i As Integer
    Dim j As Integer
    Dim sendbuf(0 To 255) As Byte '卡数据缓冲
    
    Dim revbuf(0 To 255) As Byte '卡数据缓冲
    
    
        
    strls1 = Text3.Text
    
    
    mylen = Len(strls1)
    
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If strls2 = "[" Or strls2 = "]" Then
            MsgBox "请先按[]中的提示，在[]中输入所需的数据，并删除[]"
            Exit Sub
        End If
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    mylen = Len(strls)
    
    If ((mylen Mod 2) > 0) Then
        strls = strls + "0"
        mylen = mylen + 1
    End If
    
    strls1 = ""
    For i = 1 To (mylen - 1) Step 2
        strls1 = strls1 + Mid(strls, i, 2) + " "
    
    Next i
    
    Text3.Text = Trim(strls1)
    
    j = 0
    For i = 1 To (mylen - 1) Step 2
        strls2 = Mid(strls, i, 2)
        sendbuf(j) = CByte("&h" & strls2)
        
        j = j + 1
    
    Next i
    
    mylen = j
    
    jm_u VarPtr(sendbuf(0)), VarPtr(revbuf(0)), mylen
    
    j = 0
    strls = ""
    While j < mylen
    
        strls = strls & Right("0" & Hex(revbuf(j)), 2)
        j = j + 1
        
    Wend
    
    Text2.Text = strls
End Sub

Private Sub Command16_Click()
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim mylen As Integer
    Dim keylen As Byte '密钥长度，8或16个字节
    Dim i As Integer
    Dim j As Integer
    Dim randbuf(0 To 3) As Byte '随机数
    
    Dim keybuf(0 To 15) As Byte '密钥
    
    Dim macbuf(0 To 3) As Byte '计算结果
    
    Dim sendbuf(0 To 255) As Byte '卡数据缓冲
    
    '取随机数
    strls1 = Text11.Text
    mylen = Len(strls1)
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    strls = strls + "00000000"
    
    mylen = Len(strls)
    
    strls1 = ""
    For i = 1 To 7 Step 2
        strls1 = strls1 + Mid(strls, i, 2) + " "
    
    Next i
    
    Text11.Text = Trim(strls1)
    j = 0
    For i = 1 To 7 Step 2
        strls2 = Mid(strls, i, 2)
        randbuf(j) = CByte("&h" & strls2)
        j = j + 1
    Next i
    
    
    
    '取密钥
    strls1 = Text12.Text
    mylen = Len(strls1)
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    If (Len(strls) > 16) Then
        '为16字节密码
        keylen = 16
    Else
        keylen = 8
    End If
    
    strls = strls + "00000000000000000000000000000000"
    
    
    mylen = Len(strls)
    
    strls1 = ""
    If (keylen = 16) Then
        For i = 1 To 31 Step 2
            strls1 = strls1 + Mid(strls, i, 2) + " "
    
        Next i
        
        Text12.Text = Trim(strls1)
        j = 0
        For i = 1 To 31 Step 2
            strls2 = Mid(strls, i, 2)
            keybuf(j) = CByte("&h" & strls2)
            j = j + 1
        Next i
    Else
    
        For i = 1 To 15 Step 2
            strls1 = strls1 + Mid(strls, i, 2) + " "
        
        Next i
        Text12.Text = Trim(strls1)
        j = 0
        For i = 1 To 15 Step 2
            strls2 = Mid(strls, i, 2)
            keybuf(j) = CByte("&h" & strls2)
            j = j + 1
        Next i
        
        
    End If
    
    '取明文
    strls1 = Text9.Text
    
    
    mylen = Len(strls1)
    
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If strls2 = "[" Or strls2 = "]" Then
            MsgBox "请先按[]中的提示，在[]中输入所需的数据，并删除[]"
            Exit Sub
        End If
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    mylen = Len(strls)
    
    If ((mylen Mod 2) > 0) Then
        strls = strls + "0"
        mylen = mylen + 1
    End If
    
    strls1 = ""
    For i = 1 To (mylen - 1) Step 2
        strls1 = strls1 + Mid(strls, i, 2) + " "
    
    Next i
    
    Text9.Text = Trim(strls1)
    
    j = 0
    For i = 1 To (mylen - 1) Step 2
        strls2 = Mid(strls, i, 2)
        sendbuf(j) = CByte("&h" & strls2)
        
        j = j + 1
    
    Next i
    
    cpucalcmac VarPtr(randbuf(0)), VarPtr(sendbuf(0)), j, VarPtr(keybuf(0)), keylen, VarPtr(macbuf(0))
    
    strls = ""
    For i = 0 To 3
        strls = strls & Right("0" & Hex(macbuf(i)), 2) & " "
    
    Next i

    Text10.Text = Trim(strls)
End Sub

Private Sub Command20_Click()
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim mylen As Integer
    Dim i As Integer
    Dim j As Integer

    strls1 = Text15.Text
    
    mylen = Len(strls1)
    
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    mylen = Len(strls)
    
    
    strls1 = ""
    For i = 1 To mylen
        strls2 = Mid(strls, i, 1)
        strls1 = strls1 + Right("0" + Hex(Asc(strls2)), 2) + " "
    Next i
    
    Text16.Text = strls1
       
End Sub

Private Sub Command7_Click()
'CPU卡寻卡及将卡复位到14443A-4的指令状态

'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim mypiccserial(0 To 3) As Byte '卡序列号
Dim myparam(0 To 3) As Byte '参数
Dim myver As Byte '卡数据缓冲
Dim mycode As Byte '卡数据缓冲


status = cpurequest(VarPtr(mypiccserial(0)), VarPtr(myparam(0)), VarPtr(myver), VarPtr(mycode))

If status = 0 Or status = 52 Then

    pcdbeep 20
    
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

Private Sub Command8_Click()
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim mylen As Integer
    Dim i As Integer
    Dim j As Integer
    Dim sendbuf(0 To 1023) As Byte '卡数据缓冲
    
    Dim revbuflen As Integer
    Dim revbuf(0 To 1023) As Byte '卡数据缓冲
    Dim status As Byte
    
    
    
        
    strls1 = Text2.Text
    
    
    mylen = Len(strls1)
    
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If strls2 = "[" Or strls2 = "]" Then
            MsgBox "请先按[]中的提示，在[]中输入所需的数据，并删除[]"
            Exit Sub
        End If
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    mylen = Len(strls)
    
    If ((mylen Mod 2) > 0) Then
        strls = strls + "0"
        mylen = mylen + 1
    End If
    
    strls1 = ""
    For i = 1 To (mylen - 1) Step 2
        strls1 = strls1 + Mid(strls, i, 2) + " "
    
    Next i
    
    Text2.Text = Trim(strls1)
    
    j = 0
    For i = 1 To (mylen - 1) Step 2
        strls2 = Mid(strls, i, 2)
        sendbuf(j) = CByte("&h" & strls2)
        
        j = j + 1
    
    Next i
    
    
    
    revbuflen = 255
    status = cpuisoapdu(VarPtr(sendbuf(0)), j, VarPtr(revbuf(0)), VarPtr(revbuflen))

    '处理返回函数
    If status = 0 Or status = 55 Then
        
        j = 0
        strls = ""
        While j < revbuflen
        
            strls = strls & Right("0" & Hex(revbuf(j)), 2)
            j = j + 1
            
        Wend
        
        Text3.Text = strls
        
        If status = 0 Then
        
            If (Right(strls, 4) = "9000") Then
                
                If sendbuf(1) = &H84 Then
                    Text7.Text = "读取随机码成功"
                    '取随指数指令，把结果放在Text4，和Text11，方便调试
                    Text4.Text = Right("0" & Hex(revbuf(0)), 2) & " " & Right("0" & Hex(revbuf(1)), 2) & " " & Right("0" & Hex(revbuf(2)), 2) & " " & Right("0" & Hex(revbuf(3)), 2)
                    Text11.Text = Text4.Text
                ElseIf sendbuf(1) = &HB0 Then
                    Text7.Text = "读取二进制文件成功"
                Else
                    Text7.Text = "成功"
                End If
            ElseIf (Right(strls, 4) = "6281") Then
                Text7.Text = "回送的数据可能错误"
            ElseIf (Right(strls, 4) = "6283") Then
                Text7.Text = "选择文件无效，文件或密钥校验错误"
            ElseIf (Right(strls, 4) = "6400") Then
                Text7.Text = "状态标志未改变"
            ElseIf (Right(strls, 4) = "6581") Then
                Text7.Text = "写EEPROM 不成功"
            ElseIf (Right(strls, 4) = "6700") Then
                Text7.Text = "长度错误"
            ElseIf (Right(strls, 4) = "6900") Then
                Text7.Text = "CLA 与线路保护要求不匹配"
            ElseIf (Right(strls, 4) = "6901") Then
                Text7.Text = "无效的状态"
            ElseIf (Right(strls, 4) = "6981") Then
                Text7.Text = "命令与文件结构不相容"
            ElseIf (Right(strls, 4) = "6982") Then
                Text7.Text = "不满足安全状态"
            ElseIf (Right(strls, 4) = "6983") Then
                Text7.Text = "密钥被锁死"
            ElseIf (Right(strls, 4) = "6984") Then
                Text7.Text = "MAC格式不符合"
            ElseIf (Right(strls, 4) = "6985") Then
                Text7.Text = "使用条件不满足"
            ElseIf (Right(strls, 4) = "6986") Then
                Text7.Text = "请先选择文件"
            ElseIf (Right(strls, 4) = "6987") Then
                Text7.Text = "无安全报文"
            ElseIf (Right(strls, 4) = "6988") Then
                Text7.Text = "安全报文数据项不正确"
            ElseIf (Right(strls, 4) = "6A80") Then
                Text7.Text = "数据域参数错误"
            ElseIf (Right(strls, 4) = "6A81") Then
                Text7.Text = "功能不支持或卡中无MF 或卡片已锁定"
            ElseIf (Right(strls, 4) = "6A82") Then
                Text7.Text = "文件未找到"
            ElseIf (Right(strls, 4) = "6A83") Then
                Text7.Text = "记录未找到"
            ElseIf (Right(strls, 4) = "6A84") Then
                Text7.Text = "文件无足够空间"
            ElseIf (Right(strls, 4) = "6A86") Then
                Text7.Text = "参数P1 P2 错误"
            ElseIf (Right(strls, 4) = "6A88") Then
                Text7.Text = "密钥未找到"
            ElseIf (Right(strls, 4) = "6B00") Then
                Text7.Text = "在达到Le/Lc 字节之前文件结束，偏移量错误"
            ElseIf (Right(strls, 4) = "6E00") Then
                Text7.Text = "无效的CLA"
            ElseIf (Right(strls, 4) = "6F00") Then
                Text7.Text = "数据无效"
            ElseIf (Right(strls, 4) = "9302") Then
                Text7.Text = "MAC 错误"
            ElseIf (Right(strls, 4) = "9303") Then
                Text7.Text = "应用已被锁定"
            ElseIf (Right(strls, 4) = "9401") Then
                Text7.Text = "金额不足"
            ElseIf (Right(strls, 4) = "9403") Then
                Text7.Text = "密钥未找到"
            ElseIf (Right(strls, 4) = "9406") Then
                Text7.Text = "所需的MAC 不可用"
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Right(strls, 4) = "") Then
                Text7.Text = ""
            ElseIf (Left(Right(strls, 4), 3) = "63C") Then
                i = CInt("&h" + Right(strls, 1))
                If (i > 0) Then
                    Text7.Text = "再试 " + CStr(i) + " 次错误密码将锁定"
                Else
                    Text7.Text = "密码已被锁定"
                End If
                
            End If
            
            pcdbeep 20
        
        Else
            MsgBox "异常：" & CStr(status) & "还有剩余数据没接收完，请再发AA继续接收后面的数据！"
        
        End If
        
        
        
    ElseIf status = 53 Then
    '发送无线信息后，CPU卡没返回
        Text3.Text = ""
        MsgBox "异常：" & CStr(status) + "，已出现发送无线信息后CPU卡没响应，请重新拿开卡后再放到感应区，再重新点【第一步：CPU卡复位】。"
    
    Else
        MsgBox "异常：" & CStr(status)
    End If
   
    
End Sub

Private Sub Command9_Click()
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim mylen As Integer
    Dim keylen As Byte '密钥长度，8或16个字节
    
    Dim i As Integer
    Dim j As Integer
    
    Dim randbuf(0 To 3) As Byte '随机数
    
    Dim keybuf(0 To 15) As Byte '密钥
    
    Dim revbuf(0 To 7) As Byte '计算结果
    
    '取随机数
    strls1 = Text4.Text
    mylen = Len(strls1)
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    strls = strls + "0000000000000000"
    
    mylen = Len(strls)
    
    strls1 = ""
    For i = 1 To 7 Step 2
        strls1 = strls1 + Mid(strls, i, 2) + " "
    
    Next i
    
    Text4.Text = Trim(strls1)
    j = 0
    For i = 1 To 7 Step 2
        strls2 = Mid(strls, i, 2)
        randbuf(j) = CByte("&h" & strls2)
        j = j + 1
    Next i
    
    
    '取密钥
    strls1 = Text8.Text
    mylen = Len(strls1)
    strls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            strls = strls + strls2
        End If
    
    Next i
    
    If (Len(strls) > 16) Then
        '为16字节密码
        keylen = 16
    Else
        keylen = 8
    End If
    
    strls = strls + "00000000000000000000000000000000"
    
    
    mylen = Len(strls)
    
    strls1 = ""
    If (keylen = 16) Then
        For i = 1 To 31 Step 2
            strls1 = strls1 + Mid(strls, i, 2) + " "
    
        Next i
        
        Text8.Text = Trim(strls1)
        j = 0
        For i = 1 To 31 Step 2
            strls2 = Mid(strls, i, 2)
            keybuf(j) = CByte("&h" & strls2)
            j = j + 1
        Next i
    Else
    
        For i = 1 To 15 Step 2
            strls1 = strls1 + Mid(strls, i, 2) + " "
        
        Next i
        Text8.Text = Trim(strls1)
        j = 0
        For i = 1 To 15 Step 2
            strls2 = Mid(strls, i, 2)
            keybuf(j) = CByte("&h" & strls2)
            j = j + 1
        Next i
        
        
    End If
    
 
    

    cpucalcexauthkey VarPtr(randbuf(0)), VarPtr(keybuf(0)), keylen, VarPtr(revbuf(0))

    strls = ""
    For i = 0 To 7
        strls = strls & Right("0" & Hex(revbuf(i)), 2) & " "
    
    Next i

    Text6.Text = Trim(strls)
    

End Sub

Private Sub List1_DblClick()
    If List1.ListIndex = 0 Then
        Text2.Text = "00 A4 00 00 00"
    ElseIf List1.ListIndex = 1 Then
        Text2.Text = "00 A4 00 00 02 3F 00"
    ElseIf List1.ListIndex = 2 Then
        Text2.Text = "00 84 00 00 04"
    ElseIf List1.ListIndex = 3 Then
        Text2.Text = "00 82 00 00 08 [8字节密文数据(严重声明：如果密码错误多次，返回值从63CX变为63C0时卡将作废)]"
    ElseIf List1.ListIndex = 4 Then
        Text2.Text = "80 0E 00 00 00"
    ElseIf List1.ListIndex = 5 Then '建立 MF目录下的密钥文件
        Text2.Text = "80 E0 00 00 07 3F 00 B0 01 F0 FF FF"
    ElseIf List1.ListIndex = 6 Then '密钥文件建好后给其增加8字节密钥
        Text2.Text = "80 D4 01 00 0D 39 F0 F0 AA 55 FF FF FF FF FF FF FF FF"
    ElseIf List1.ListIndex = 7 Then '密钥文件建好后给其增加16字节密钥
        Text2.Text = "80 D4 01 00 15 39 F0 F0 AA 55 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
    ElseIf List1.ListIndex = 8 Then '修改8字节密钥
        Text2.Text = "80 D4 [不能为01，应输入密码类型，如39或36] 00 0D 39 F0 F0 AA 55 FF FF FF FF FF FF FF FF"
    ElseIf List1.ListIndex = 9 Then '修改16字节密钥
        Text2.Text = "80 D4 [不能为01，应输入密码类型，如39或36] 00 15 39 F0 F0 AA 55 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
        
    ElseIf List1.ListIndex = 10 Then '建立目录文件 DF
        Text2.Text = "80 E0 3F 01 0D 38 05 20 F0 F0 95 FF FF 44 44 46 30 31"
    ElseIf List1.ListIndex = 11 Then '建立 DF目录下密钥文件
        Text2.Text = "80 E0 00 01 07 3F 01 8F 95 F0 FF FF"
    ElseIf List1.ListIndex = 12 Then '在 DF目录下密钥文件里增加口令密钥
        Text2.Text = "80 D4 01 01 0D 3A F0 EF 44 55 12 34 56 78 12 34 56 78"
    ElseIf List1.ListIndex = 13 Then '选择 DF 目录
        Text2.Text = "00 A4 00 00 02 3F 01"
    ElseIf List1.ListIndex = 14 Then '建立二进制文件
        Text2.Text = "80 E0 00 03 07 28 00 1E F0 F0 FF 01"
    ElseIf List1.ListIndex = 15 Then '选择要操作的二进制文件
        Text2.Text = "00 A4 00 00 02 00 03"
    ElseIf List1.ListIndex = 16 Then '写二进制数据进文件
        Text2.Text = "00 D6 00 00 05 01 02 03 04 05"
    ElseIf List1.ListIndex = 17 Then '验证口令密钥
        Text2.Text = ""
    ElseIf List1.ListIndex = 18 Then '读出二进制文件
        Text2.Text = "00 B0 00 00 00 00"
    End If
End Sub
