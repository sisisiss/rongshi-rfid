VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�ں�CPU����д����ײ�����ͨ��IC����д�� 2019���ͻ��Լ����豸������д�����Ͷ���һ��"
   ClientHeight    =   10155
   ClientLeft      =   -15
   ClientTop       =   375
   ClientWidth     =   12255
   ForeColor       =   &H8000000F&
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10155
   ScaleWidth      =   12255
   StartUpPosition =   2  '��Ļ����
   Begin VB.TextBox Text27 
      Height          =   1095
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   55
      Text            =   "Form1.frx":0000
      Top             =   7560
      Width           =   12015
   End
   Begin VB.CommandButton Command4 
      Caption         =   "����PSAM��APDU���Դ���"
      Height          =   495
      Left            =   6720
      TabIndex        =   54
      Top             =   9360
      Width           =   3015
   End
   Begin VB.CommandButton Command2 
      Caption         =   "��       ��"
      Height          =   495
      Left            =   10800
      TabIndex        =   46
      Top             =   9360
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "�ڶ�������ʼ��CPU��"
      Height          =   1215
      Left            =   120
      TabIndex        =   5
      Top             =   960
      Width           =   12015
      Begin VB.CommandButton Command1 
         Caption         =   "   ��չ����     (�����õ�)"
         Height          =   585
         Left            =   10680
         TabIndex        =   53
         Top             =   240
         Width           =   1215
      End
      Begin VB.TextBox Text18 
         Height          =   285
         Left            =   4320
         MaxLength       =   4
         TabIndex        =   6
         Text            =   "256"
         Top             =   240
         Width           =   615
      End
      Begin VB.TextBox Text17 
         Height          =   285
         Left            =   1680
         TabIndex        =   8
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   600
         Width           =   3735
      End
      Begin VB.CommandButton Command12 
         Caption         =   "��ʼ��CPU��"
         Height          =   585
         Left            =   8760
         TabIndex        =   9
         Top             =   240
         Width           =   1695
      End
      Begin VB.CheckBox Check1 
         Caption         =   "����տ��ٳ�ʼ��"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   240
         Width           =   1815
      End
      Begin VB.Label Label8 
         Caption         =   "��������ļ�û���κι�ϵ��������ֻ��������տ�������д�ļ�����Ч�ġ�"
         ForeColor       =   &H000000FF&
         Height          =   495
         Left            =   5520
         TabIndex        =   52
         Top             =   600
         Width           =   3135
      End
      Begin VB.Label Label3 
         Caption         =   "��Ҫ�������ļ���С�ܺʹ�"
         Height          =   255
         Left            =   5520
         TabIndex        =   42
         Top             =   240
         Width           =   2655
      End
      Begin VB.Label Label27 
         Caption         =   "������(16������)��"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   600
         Width           =   1575
      End
      Begin VB.Label Label28 
         Caption         =   "�趨����Ӧ�ÿռ��С��"
         Height          =   255
         Left            =   2280
         TabIndex        =   11
         Top             =   240
         Width           =   2055
      End
      Begin VB.Label Label32 
         Caption         =   "�ֽ�"
         Height          =   255
         Left            =   5040
         TabIndex        =   10
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "���岽����д�ļ�"
      Height          =   2535
      Left            =   120
      TabIndex        =   33
      Top             =   4920
      Width           =   12015
      Begin VB.CommandButton Command3 
         Caption         =   "��ʼ��д��"
         Height          =   465
         Left            =   9180
         TabIndex        =   56
         Top             =   330
         Width           =   1455
      End
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   50
         Left            =   11220
         Top             =   1890
      End
      Begin VB.TextBox Text24 
         Height          =   1335
         Left            =   3360
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   50
         Text            =   "Form1.frx":04F5
         Top             =   960
         Width           =   7455
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   4440
         TabIndex        =   45
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   375
         Width           =   3735
      End
      Begin VB.ComboBox Combo5 
         Height          =   315
         ItemData        =   "Form1.frx":0555
         Left            =   1440
         List            =   "Form1.frx":055F
         Style           =   2  'Dropdown List
         TabIndex        =   44
         Top             =   360
         Width           =   1455
      End
      Begin VB.ComboBox Combo4 
         Height          =   315
         ItemData        =   "Form1.frx":0577
         Left            =   120
         List            =   "Form1.frx":058D
         Style           =   2  'Dropdown List
         TabIndex        =   43
         Top             =   360
         Width           =   1095
      End
      Begin VB.CommandButton Command17 
         Caption         =   "��"
         Height          =   420
         Left            =   10920
         TabIndex        =   37
         Top             =   307
         Width           =   975
      End
      Begin VB.CommandButton Command18 
         Caption         =   "   ��д��     д����"
         Height          =   660
         Left            =   10920
         TabIndex        =   36
         Top             =   847
         Width           =   975
      End
      Begin VB.TextBox Text22 
         Height          =   285
         Left            =   960
         MaxLength       =   4
         TabIndex        =   35
         Text            =   "0"
         Top             =   915
         Width           =   495
      End
      Begin VB.TextBox Text23 
         Height          =   285
         Left            =   2160
         MaxLength       =   4
         TabIndex        =   34
         Text            =   "2"
         Top             =   915
         Width           =   495
      End
      Begin VB.Label Label7 
         Caption         =   "����������ܳ���255��д��������ܳ���247"
         ForeColor       =   &H000000FF&
         Height          =   855
         Left            =   1440
         TabIndex        =   51
         Top             =   1320
         Width           =   1815
      End
      Begin VB.Label Label5 
         Caption         =   "����(16������)��"
         Height          =   255
         Left            =   3120
         TabIndex        =   47
         Top             =   390
         Width           =   1455
      End
      Begin VB.Label Label34 
         Caption         =   "��ʼλ�ã�"
         Height          =   255
         Left            =   120
         TabIndex        =   40
         Top             =   930
         Width           =   975
      End
      Begin VB.Label Label35 
         Caption         =   "���ȣ�"
         Height          =   255
         Left            =   1680
         TabIndex        =   39
         Top             =   930
         Width           =   615
      End
      Begin VB.Label Label36 
         Caption         =   "���ݣ�"
         Height          =   255
         Left            =   2880
         TabIndex        =   38
         Top             =   930
         Width           =   615
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "���Ĳ����޸��ļ�����"
      Height          =   1215
      Left            =   120
      TabIndex        =   25
      Top             =   3600
      Width           =   12015
      Begin VB.ComboBox Combo6 
         Height          =   315
         ItemData        =   "Form1.frx":05C7
         Left            =   1560
         List            =   "Form1.frx":05D1
         Style           =   2  'Dropdown List
         TabIndex        =   49
         Top             =   810
         Width           =   1815
      End
      Begin VB.CommandButton Command19 
         Caption         =   "�ļ��������"
         Height          =   540
         Left            =   10320
         TabIndex        =   30
         Top             =   360
         Width           =   1575
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         ItemData        =   "Form1.frx":05F1
         Left            =   1560
         List            =   "Form1.frx":05FB
         Style           =   2  'Dropdown List
         TabIndex        =   29
         Top             =   360
         Width           =   1815
      End
      Begin VB.TextBox Text25 
         Height          =   285
         Left            =   5280
         TabIndex        =   28
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   840
         Width           =   3735
      End
      Begin VB.TextBox Text26 
         Height          =   285
         Left            =   5280
         TabIndex        =   27
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   375
         Width           =   3735
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "Form1.frx":061F
         Left            =   120
         List            =   "Form1.frx":0635
         Style           =   2  'Dropdown List
         TabIndex        =   26
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label Label37 
         Caption         =   " ������(16������)��"
         Height          =   255
         Left            =   3720
         TabIndex        =   32
         Top             =   840
         Width           =   1695
      End
      Begin VB.Label Label38 
         Caption         =   "��֤����(16������)��"
         Height          =   255
         Left            =   3600
         TabIndex        =   31
         Top             =   390
         Width           =   1815
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "�������������ļ���ɾ���ļ�"
      Height          =   1215
      Left            =   120
      TabIndex        =   15
      Top             =   2280
      Width           =   12015
      Begin VB.CommandButton Command13 
         Caption         =   "��д��_�����ļ�"
         Height          =   540
         Left            =   9720
         TabIndex        =   20
         Top             =   240
         Width           =   2175
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "Form1.frx":066F
         Left            =   120
         List            =   "Form1.frx":0685
         Style           =   2  'Dropdown List
         TabIndex        =   19
         Top             =   360
         Width           =   1095
      End
      Begin VB.TextBox Text19 
         Height          =   285
         Left            =   3000
         TabIndex        =   18
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   375
         Width           =   3735
      End
      Begin VB.TextBox Text20 
         Height          =   285
         Left            =   3000
         TabIndex        =   17
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   720
         Width           =   3735
      End
      Begin VB.TextBox Text21 
         Height          =   285
         Left            =   8040
         MaxLength       =   4
         TabIndex        =   16
         Text            =   "256"
         Top             =   375
         Width           =   615
      End
      Begin VB.Label Label6 
         Caption         =   "ע�������õ��ļ�����ɾ����ֻ�����³�ʼ��������������ļ�"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   6840
         TabIndex        =   48
         Top             =   840
         Width           =   5055
      End
      Begin VB.Label Label29 
         Caption         =   "ֻ������(16������)��"
         Height          =   255
         Left            =   1320
         TabIndex        =   24
         Top             =   390
         Width           =   1815
      End
      Begin VB.Label Label30 
         Caption         =   "��д����(16������)��"
         Height          =   255
         Left            =   1320
         TabIndex        =   23
         Top             =   750
         Width           =   1815
      End
      Begin VB.Label Label31 
         Caption         =   "�����ļ���С��"
         Height          =   255
         Left            =   6840
         TabIndex        =   22
         Top             =   390
         Width           =   1335
      End
      Begin VB.Label Label33 
         Caption         =   "�ֽ�"
         Height          =   255
         Left            =   8760
         TabIndex        =   21
         Top             =   390
         Width           =   495
      End
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2760
      TabIndex        =   14
      Top             =   510
      Width           =   1815
   End
   Begin VB.CommandButton Command7 
      Caption         =   "����CPU��APDU���Դ���"
      Height          =   495
      Left            =   1080
      TabIndex        =   3
      Top             =   9360
      Width           =   3015
   End
   Begin VB.CommandButton Command10 
      Caption         =   "��һ����CPU������"
      Height          =   345
      Left            =   120
      TabIndex        =   2
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "ע��ÿ���ÿ����طź���Ҫ�����������������14443-4Э��״̬��"
      Height          =   255
      Left            =   4920
      TabIndex        =   41
      Top             =   525
      Width           =   5895
   End
   Begin VB.Label Label1 
      Caption         =   "���ţ�"
      Height          =   255
      Left            =   2160
      TabIndex        =   13
      Top             =   525
      Width           =   735
   End
   Begin VB.Label Label19 
      Caption         =   "  APDU����"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   5370
      TabIndex        =   4
      Top             =   9000
      Width           =   945
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FF0000&
      X1              =   120
      X2              =   12120
      Y1              =   9120
      Y2              =   9120
   End
   Begin VB.Label Label4 
      Caption         =   "ÿ����ťֻ���õ�һ������������5��������������ʮ���Ӹ㶨CPU��������Ҫ��һ������ȥ��ϤCPU���ڲ����ƣ����Ƕ������㶨�ˣ�����"
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   120
      TabIndex        =   1
      Top             =   8760
      Width           =   12165
   End
   Begin VB.Label Label22 
      Caption         =   "ȫ���״���ֻ��ʮ���ӾͿ����ɸ㶨CPU�������ײ���ָ��"
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
Dim cardhao As Double
Private Sub Command1_Click()
    Form3.Show 1
End Sub

Private Sub Command10_Click()
'CPU��Ѱ����������λ��14443A-4��ָ��״̬

'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccserial(0 To 3) As Byte '�����к�
Dim myparam(0 To 3) As Byte '����
Dim myver As Byte '�����ݻ���
Dim mycode As Byte '�����ݻ���
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
    
    MsgBox "��λCPU���ɹ�,CPU������14443A-4��Э��ģʽ�����Խ����ظ������ڶ������е����ˡ�" + Chr(13) + Chr(10) + "����:" + Hex(mypiccserial(0)) + "-" + Hex(mypiccserial(1)) + "-" + Hex(mypiccserial(2)) + "-" + Hex(mypiccserial(3)) + _
    ",����:" + Hex(myparam(0)) + "-" + Hex(myparam(1)) + "-" + Hex(myparam(2)) + "-" + Hex(myparam(3)) + _
    ",�汾:" + Hex(myver) + _
    "�����̴���(����Ϊ90):" + Hex(mycode)
    
ElseIf status = 8 Then
    MsgBox "�������ÿ������ٷŵ���Ӧ��"
    
Else

    MsgBox "�쳣" + CStr(status)

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
    Dim keylen As Byte '��Կ����
    Dim keybuf(0 To 15) As Byte '��Կ
    
    Dim status As Byte
        
    

    'ȡ����
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
        MsgBox "�����������룡"
        Text17.SetFocus
        Exit Sub
    End If
    
    If Trim(Text18.Text) = "" Then
        MsgBox "��������Ӧ�ÿռ��С��"
        Text18.Text = ""
        Text18.SetFocus
        Exit Sub
    End If
    
    spacesize = CLng(Text18.Text)
    
    If (spacesize < 1) Then
        MsgBox "Ӧ�ÿռ��СΪ0�����������룡"
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
        MsgBox "��ʼ�����ɹ�"
    Else
        RetText status
    End If
    
    


    
End Sub


Private Sub Command13_Click() '�����ļ�

    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim keyastrls As String
    Dim keybstrls As String
    
    Dim mylen As Integer
    
    Dim i As Integer
    
    
    
    Dim spacesize As Long
    
    Dim keyastrlen As Byte
    Dim keyalen As Byte '��Կ����
    Dim keyabuf(0 To 15) As Byte '��Կ
    
    Dim keybstrlen As Byte
    Dim keyblen As Byte '��Կ����
    Dim keybbuf(0 To 15) As Byte '��Կ
    
    Dim status As Byte
        
    'ȡֻ������
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
        MsgBox "�����������룡"
        Text19.SetFocus
        Exit Sub
    End If
    
    
    'ȡ��д����
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
        MsgBox "�����������룡"
        Text20.SetFocus
        Exit Sub
    End If
    
    '�ļ���С
    If Trim(Text21.Text) = "" Then
        MsgBox "���������ļ���С��"
        Text21.Text = ""
        Text21.SetFocus
        Exit Sub
    End If
    
    spacesize = CLng(Text21.Text)
    
    If (spacesize < 1) Then
        MsgBox "�ļ���СΪ0�����������룡"
        Text21.SetFocus
        Exit Sub
    End If

    '��ȡֻ������
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
    
    '��ȡ��д����
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

    status = cpursfileadd_s(i, VarPtr(keyabuf(0)), keyalen, VarPtr(keybbuf(0)), keyblen, spacesize)
    
    If status = 0 Then
        pcdbeep 20
        MsgBox "�����ļ��ɹ�"
    ElseIf status = 60 Then
        
        MsgBox "�ļ��Ѿ����ڣ������ٴδ���"
    Else
        RetText status
    End If
End Sub

Private Sub Command17_Click() '���ļ�
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim keystrls As String
    Dim datastrls As String
    
    Dim mylen As Integer
    
    Dim i As Integer
    
    Dim keystrlen As Byte
    Dim keylen As Byte '��Կ����
    Dim keybuf(0 To 15) As Byte '��Կ
    
    Dim datalen As Integer '�ļ�����
    Dim databuf(0 To 1023) As Byte '�ļ�����
    
    Dim datastart As Integer
    
   
    Dim status As Byte
    
    
        
    'ȡ��֤����
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
        MsgBox "�����������룡"
        Text2.SetFocus
        Exit Sub
    End If
    
    '�ļ���ʼ��ַ
    If Trim(Text22.Text) = "" Then
        MsgBox "���������ļ���ʼ��ַ��"
        Text22.Text = ""
        Text22.SetFocus
        Exit Sub
    End If
    datastart = CLng(Text22.Text)
    
    If (datastart < 0) Then
        MsgBox "�ļ���ʼ��ַ����С��0�����������룡"
        Text18.SetFocus
        Exit Sub
    End If
    
    '���ζ�ȡ�ĳ���
    If Trim(Text23.Text) = "" Then
        MsgBox "�������뱾�ζ�ȡ�ĳ��ȣ���λΪ�ֽڣ���"
        Text23.Text = ""
        Text23.SetFocus
        Exit Sub
    End If
    
    datalen = CLng(Text23.Text)
    
    If (datalen < 1) Then
        MsgBox "���ζ�ȡ�ĳ��Ȳ���С��1�����������룡"
        Text23.SetFocus
        Exit Sub
    End If
    
   
    '��ȡ��֤����
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
        
        If keylen >= 16 Then
            Exit For
        End If
        
    Next i
    
    Text2.Text = Trim(strls1)
    
    '������֤����������
    If Combo5.ListIndex = 0 Then
        i = OLDKEYR '��ֻ����������֤
    Else
        i = OLDKEYWR '�ö�д��������֤
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

Private Sub Command18_Click() 'д�ļ�
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim keystrls As String
    Dim datastrls As String
    
    Dim mylen As Integer
    
    Dim i As Integer
    
    Dim keystrlen As Byte
    Dim keylen As Byte '��Կ����
    Dim keybuf(0 To 15) As Byte '��Կ
    
    Dim datastrlen As Integer
    Dim datalen As Integer '�ļ�����
    Dim databuf(0 To 1023) As Byte '�ļ�����
    Dim datastart As Integer
    Dim status As Byte
        
    'ȡ��֤����
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
        MsgBox "�����������룡"
        Text2.SetFocus
        Exit Sub
    End If
    
    '�ļ���ʼ��ַ
    If Trim(Text22.Text) = "" Then
        MsgBox "���������ļ���ʼ��ַ��"
        Text22.Text = ""
        Text22.SetFocus
        Exit Sub
    End If
    datastart = CLng(Text22.Text)
    
    If (datastart < 0) Then
        MsgBox "�ļ���ʼ��ַ����С��0�����������룡"
        Text18.SetFocus
        Exit Sub
    End If
    
    '���ζ�ȡ�ĳ���
    If Trim(Text23.Text) = "" Then
        MsgBox "�������뱾�ζ�ȡ�ĳ��ȣ���λΪ�ֽڣ���"
        Text23.Text = ""
        Text23.SetFocus
        Exit Sub
    End If
    
    datalen = CLng(Text23.Text)
    
    If (datalen < 1) Then
        MsgBox "���ζ�ȡ�ĳ��Ȳ���С��1�����������룡"
        Text23.SetFocus
        Exit Sub
    End If
    
    
    'ȡ����
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
        MsgBox "���Ȳ������ݣ�"
        Text24.SetFocus
        Exit Sub
    End If
    

    '��ȡ��֤����
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
    
    '��ȡ�ļ�����
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
    
    '��Ҫ���ĵ���������
    If Combo6.ListIndex = 0 Then
        i = NEWKEYR '����ֻ������
    Else
        i = NEWKEYWR '���Ķ�д����
    End If
    
    '������֤����������
    If Combo5.ListIndex = 0 Then
        i = OLDKEYR '��ֻ����������֤
    Else
        i = OLDKEYWR  '�ö�д��������֤
    End If
    
    status = cpursfiledatawrite_s(Combo4.ListIndex, i, VarPtr(keybuf(0)), keylen, datastart, VarPtr(databuf(0)), datalen)
       
    If status = 0 Then
        pcdbeep 20
        MsgBox "д���ļ��ɹ���", vbInformation + vbOKOnly, "FM1208��CPU����д��"
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
    Dim keyalen As Byte '��Կ����
    Dim keyabuf(0 To 15) As Byte '��Կ
    
    Dim keybstrlen As Integer
    Dim keyblen As Byte '��Կ����
    Dim keybbuf(0 To 15) As Byte '��Կ
    
    Dim status As Byte
        
    'ȡԭ����
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
        MsgBox "�����������룡"
        Text26.SetFocus
        Exit Sub
    End If
    
    
    'ȡ������
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
        MsgBox "�����������룡"
        Text25.SetFocus
        Exit Sub
    End If
    

    '��ȡԭ����
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
    
    '��ȡ������
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
    
    '��Ҫ���ĵ���������
    If Combo6.ListIndex = 0 Then
        i = NEWKEYR '����ֻ������
    Else
        i = NEWKEYWR '���Ķ�д����
    End If
    
    '������֤����������
    If Combo2.ListIndex = 0 Then
        i = i + OLDKEYR '��ֻ����������֤
    Else
        i = i + OLDKEYWR '�ö�д��������֤
    End If
    
    status = cpursfilekeychg(Combo3.ListIndex, i, VarPtr(keyabuf(0)), keyalen, VarPtr(keybbuf(0)), keyblen)
    
    If status = 0 Then
        pcdbeep 20
        MsgBox "�޸��ļ�����ɹ���"
    Else
        RetText status
    End If
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Command3_Click()
Form4.Show 1

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

Private Sub Timer1_Timer()
Dim status As Byte '��ŷ���ֵ

Dim mypiccserial(0 To 3) As Byte '�����к�
Dim myparam(0 To 3) As Byte '����
Dim myver As Byte '�����ݻ���
Dim mycode As Byte '�����ݻ���

status = cpurequest(VarPtr(mypiccserial(0)), VarPtr(myparam(0)), VarPtr(myver), VarPtr(mycode))
If status = 0 Or status = 52 Then
    cardhao = mypiccserial(3)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(2)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(1)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(0)
End If
End Sub
