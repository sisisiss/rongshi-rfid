VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Ntag��ǩ��̬��"
   ClientHeight    =   2925
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8100
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2925
   ScaleWidth      =   8100
   StartUpPosition =   1  '����������
   Begin VB.CommandButton Command2 
      Caption         =   "����Ƭ���Ͼ�̬����������Ŀ鲻���ٴ��޸ģ�"
      Height          =   405
      Left            =   3270
      TabIndex        =   17
      Top             =   1740
      Width           =   4425
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��ѯntag��ǩ�ľ�̬��״̬"
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
      Caption         =   "��ѡ��Ҫ�Ӿ�̬���Ŀ飬��һ���������ܽ��������ܸ��Ŀ������ݡ�"
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
Dim status As Byte '��ŷ���ֵ
Dim mypiccdata(0 To 15) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�
Dim mypiccserial(0 To 6) As Byte '�����к�
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
Dim status As Byte '��ŷ���ֵ
Dim mypicclockdata(0 To 3) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�
Dim mypiccserial(0 To 6) As Byte '�����к�
Dim i As Integer
Dim BitStr As String
Dim answ As Integer

answ = MsgBox("��ȷ��Ҫ����Ƭ���Ͼ�̬���������Ŀ鲻�ܽ�����������Ϣ��", vbQuestion + vbOKCancel, "��ʾ")
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
    status = picclock_ntag(0, VarPtr(mypicclockdata(0))) '����0~15dҳ
    If status = 0 Then
        MsgBox "Ntag��ǩ��̬�����óɹ���", vbInformation + vbOKOnly, "��ʾ"
    Else
        Form1.disperr status
    End If
Else
    Form1.disperr status
End If

End Sub


