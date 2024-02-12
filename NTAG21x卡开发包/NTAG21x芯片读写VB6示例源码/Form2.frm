VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Ntag标签静态锁"
   ClientHeight    =   2925
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8100
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2925
   ScaleWidth      =   8100
   StartUpPosition =   1  '所有者中心
   Begin VB.CommandButton Command2 
      Caption         =   "将卡片加上静态锁（锁定后的块不能再次修改）"
      Height          =   405
      Left            =   3270
      TabIndex        =   17
      Top             =   1740
      Width           =   4425
   End
   Begin VB.CommandButton Command1 
      Caption         =   "查询ntag标签的静态锁状态"
      Height          =   405
      Left            =   480
      TabIndex        =   16
      Top             =   1740
      Width           =   2745
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 15"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   15
      Left            =   6630
      TabIndex        =   15
      Top             =   1260
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 14"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   14
      Left            =   5370
      TabIndex        =   14
      Top             =   1260
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 13"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   13
      Left            =   4140
      TabIndex        =   13
      Top             =   1260
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 12"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   12
      Left            =   2880
      TabIndex        =   12
      Top             =   1260
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 11"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   11
      Left            =   1680
      TabIndex        =   11
      Top             =   1260
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 10"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   10
      Left            =   480
      TabIndex        =   10
      Top             =   1260
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 9"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   9
      Left            =   6630
      TabIndex        =   9
      Top             =   840
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 8"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   8
      Left            =   5370
      TabIndex        =   8
      Top             =   840
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 7"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   7
      Left            =   4140
      TabIndex        =   7
      Top             =   840
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 6"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   6
      Left            =   2880
      TabIndex        =   6
      Top             =   840
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 5"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   5
      Left            =   1680
      TabIndex        =   5
      Top             =   840
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Lock 4"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   4
      Left            =   480
      TabIndex        =   4
      Top             =   840
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "LCC"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   3
      Left            =   4140
      TabIndex        =   3
      Top             =   420
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "BL15-10"
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   2
      Left            =   2880
      TabIndex        =   2
      Top             =   420
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "BL9-4"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   1
      Left            =   1680
      TabIndex        =   1
      Top             =   420
      Width           =   1035
   End
   Begin VB.CheckBox Check1 
      Caption         =   "BLCC"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   0
      Left            =   480
      TabIndex        =   0
      Top             =   420
      Width           =   1035
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "请选择要加静态锁的块，块一旦锁定不能解锁、不能更改块内数据。"
      ForeColor       =   &H000000FF&
      Height          =   225
      Left            =   510
      TabIndex        =   18
      Top             =   60
      Width           =   7185
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim status As Byte '存放返回值
Dim mypiccdata(0 To 15) As Byte '读卡的数据缓冲，Ultralight卡及NTAG21x卡的数组长度必须为16个字节，写卡的为4个字节
Dim mypiccserial(0 To 6) As Byte '卡序列号
Dim i As Integer
Dim BitStr As String

status = piccrequest_ul(VarPtr(mypiccserial(0)))
If status = 0 Then
    status = piccread_ul(CByte(0), VarPtr(mypiccdata(0)))
    If status = 0 Then
         BitStr = DecToBin(mypiccdata(10))
         For i = 1 To 8
            Check1(8 - i).Value = Val(Mid(BitStr, i, 1))
         Next
         
         BitStr = DecToBin(mypiccdata(11))
         For i = 1 To 8
            Check1(16 - i).Value = Val(Mid(BitStr, i, 1))
         Next
    Else
        Form1.disperr status
    End If
Else
    Form1.disperr status
End If

End Sub

Private Sub Command2_Click()
Dim status As Byte '存放返回值
Dim mypicclockdata(0 To 3) As Byte '读卡的数据缓冲，Ultralight卡及NTAG21x卡的数组长度必须为16个字节，写卡的为4个字节
Dim mypiccserial(0 To 6) As Byte '卡序列号
Dim i As Integer
Dim BitStr As String
Dim answ As Integer

answ = MsgBox("您确定要将卡片加上静态锁吗？锁定的块不能解锁、更改信息。", vbQuestion + vbOKCancel, "提示")
If answ <> vbOK Then Exit Sub

mypicclockdata(0) = 0
mypicclockdata(1) = 0

BitStr = ""
For i = 1 To 8
   If Check1(8 - i).Value > 0 Then BitStr = BitStr & "1" Else BitStr = BitStr & "0"
Next
mypicclockdata(2) = BintoDec(BitStr)

BitStr = ""
For i = 1 To 8
   If Check1(16 - i).Value > 0 Then BitStr = BitStr & "1" Else BitStr = BitStr & "0"
Next
mypicclockdata(3) = BintoDec(BitStr)

status = piccrequest_ul(VarPtr(mypiccserial(0)))
If status = 0 Then
    status = picclock_ntag(0, VarPtr(mypicclockdata(0))) '锁定0~15d页
    If status = 0 Then
        MsgBox "Ntag标签静态锁设置成功！", vbInformation + vbOKOnly, "提示"
    Else
        Form1.disperr status
    End If
Else
    Form1.disperr status
End If

End Sub


