VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "CPU����д����"
   ClientHeight    =   6495
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7605
   LinkTopic       =   "Form4"
   ScaleHeight     =   6495
   ScaleWidth      =   7605
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton Command2 
      Caption         =   "��ʼ��CPU�����½�3���ļ���ÿ���ļ�100���ֽڣ��ļ�������16��00����д����16��FF"
      Height          =   495
      Left            =   150
      TabIndex        =   9
      Top             =   60
      Width           =   7245
   End
   Begin VB.TextBox Text4 
      Alignment       =   2  'Center
      Height          =   375
      Left            =   3150
      TabIndex        =   4
      Text            =   "0"
      Top             =   690
      Width           =   945
   End
   Begin VB.TextBox Text3 
      Height          =   1215
      Left            =   150
      MultiLine       =   -1  'True
      TabIndex        =   3
      Text            =   "Form4.frx":0000
      Top             =   5100
      Width           =   7185
   End
   Begin VB.TextBox Text2 
      Height          =   1215
      Left            =   150
      MultiLine       =   -1  'True
      TabIndex        =   2
      Text            =   "Form4.frx":0006
      Top             =   3300
      Width           =   7185
   End
   Begin VB.TextBox Text1 
      Height          =   1215
      Left            =   150
      MultiLine       =   -1  'True
      TabIndex        =   1
      Text            =   "Form4.frx":000C
      Top             =   1560
      Width           =   7185
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   6900
      Top             =   630
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��ʼ��д��"
      Height          =   465
      Left            =   150
      TabIndex        =   0
      Top             =   660
      Width           =   1845
   End
   Begin VB.Label Label4 
      Caption         =   "�ļ�3���ݣ���100���ֽڣ�"
      Height          =   255
      Left            =   210
      TabIndex        =   8
      Top             =   4800
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "�ļ�2���ݣ���100���ֽڣ�"
      Height          =   255
      Left            =   180
      TabIndex        =   7
      Top             =   3030
      Width           =   2205
   End
   Begin VB.Label Label2 
      Caption         =   "�ļ�1���ݣ���100���ֽڣ�"
      Height          =   255
      Left            =   210
      TabIndex        =   6
      Top             =   1290
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "��д������"
      Height          =   195
      Left            =   2220
      TabIndex        =   5
      Top             =   840
      Width           =   915
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cardhao As Double
Dim rwcs As Long

Private Sub Command1_Click()
If Command1.Caption = "��ʼ��д��" Then
    Command1.Caption = "��ͣ����"
    Timer1.Enabled = True
    rwcs = 0
Else
    Command1.Caption = "��ʼ��д��"
    Timer1.Enabled = False
End If
End Sub

Private Sub Command2_Click()
'CPU��Ѱ����������λ��14443A-4��ָ��״̬

'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccserial(0 To 3) As Byte '�����к�
Dim myparam(0 To 3) As Byte '����
Dim myver As Byte '�����ݻ���
Dim mycode As Byte '�����ݻ���
Dim cardhao As Double

Dim keylen As Byte '��Կ����
Dim keybuf(0 To 15) As Byte '����Կ
Dim keyabuf(0 To 15) As Byte '�ļ�ֻ����Կ
Dim keybbuf(0 To 15) As Byte '�ļ���д��Կ

Dim i As Integer

status = cpurequest(VarPtr(mypiccserial(0)), VarPtr(myparam(0)), VarPtr(myver), VarPtr(mycode))

If status = 0 Or status = 52 Then
    cardhao = mypiccserial(3)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(2)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(1)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(0)
    
    For i = 0 To 15
        keybuf(i) = 255
    Next
    status = cpursinit(1, VarPtr(keybuf(0)), 16, 1000)
    
    If status = 0 Then
        For i = 0 To 15
            keyabuf(i) = 0
            keybbuf(i) = 255
        Next
        
        status = cpursfileadd_s(0, VarPtr(keyabuf(0)), 16, VarPtr(keybbuf(0)), 16, 100)
        If status = 0 Then
            status = cpursfileadd_s(1, VarPtr(keyabuf(0)), 16, VarPtr(keybbuf(0)), 16, 100)
            If status = 0 Then
                status = cpursfileadd_s(2, VarPtr(keyabuf(0)), 16, VarPtr(keybbuf(0)), 16, 100)
                If status = 0 Then
                    pcdbeep 30
                    MsgBox "CPU����ʼ�����½��ļ��ɹ�"
                End If
            End If
        End If
    End If
    
ElseIf status = 8 Then
    MsgBox "�������ÿ������ٷŵ���Ӧ��"
    
Else

    MsgBox "�쳣" + CStr(status)

End If
End Sub

Private Sub Timer1_Timer()
Dim status As Byte '��ŷ���ֵ

Dim mypiccserial(0 To 3) As Byte '�����к�
Dim myparam(0 To 3) As Byte '����
Dim myver As Byte '�����ݻ���
Dim mycode As Byte '�����ݻ���

Dim mylen As Integer

Dim i As Integer

Dim keystrlen As Byte
Dim keylen As Byte '��Կ����
Dim keybufw(0 To 15) As Byte '��Կ
Dim keybufr(0 To 15) As Byte '��Կ

Dim datalen As Integer '�ļ�����
Dim databuf(0 To 1023) As Byte '�ļ�����
    
Dim fileno As Byte        '�ļ���
Dim authmo As Integer        '������֤��ʽ
Dim datastart As Integer  '��ʼ��ַ

Dim rwinf, H2b, L2b As Double
Dim HexStr As String

status = cpurequest(VarPtr(mypiccserial(0)), VarPtr(myparam(0)), VarPtr(myver), VarPtr(mycode))
If status = 0 Or status = 52 Then
    cardhao = mypiccserial(3)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(2)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(1)
    cardhao = cardhao * 256
    cardhao = cardhao + mypiccserial(0)
    
    fileno = 0
    authmo = 1
    keylen = 16
    datastart = 0
    datalen = 100
    For i = 0 To 15
        keybufr(i) = 0
    Next
    Text1.Text = ""
    status = cpursfiledataread(fileno, authmo, VarPtr(keybufr(0)), keylen, datastart, VarPtr(databuf(0)), datalen)
    If status = 0 Then
        i = 0
        strls = ""
        While i < datalen
            strls = strls & Right("0" & Hex(databuf(i)), 2) & " "
            i = i + 1
        Wend
        Text1.Text = Trim(strls)
        
        rwinf = databuf(0)
        rwinf = rwinf * 256
        rwinf = rwinf + databuf(1)
        rwinf = rwinf * 256
        rwinf = rwinf + databuf(2)
        rwinf = rwinf * 256
        rwinf = rwinf + databuf(3)
    
        rwinf = rwinf + 1
        
        H2b = Int(rwinf / (65536))
        L2b = rwinf - H2b * 65536
        
        HexStr = Right("0000" + Hex(H2b), 4) + Right("0000" + Hex(L2b), 4)
        
        For i = 0 To 3
           databuf(i) = "&H" + Mid(HexStr, i * 2 + 1, 2)
        Next
        For i = 0 To 15
            keybufw(i) = 255
        Next
        authmo = 2
        status = cpursfiledatawrite_s(fileno, authmo, VarPtr(keybufw(0)), keylen, datastart, VarPtr(databuf(0)), datalen)
        
        If status = 0 Then
            fileno = 1
            authmo = 1
            keylen = 16
            datastart = 0
            datalen = 100
            For i = 0 To 15
                keybufr(i) = 0
            Next
            Text2.Text = ""
            status = cpursfiledataread(fileno, authmo, VarPtr(keybufr(0)), keylen, datastart, VarPtr(databuf(0)), datalen)
            If status = 0 Then
                i = 0
                strls = ""
                While i < datalen
                    strls = strls & Right("0" & Hex(databuf(i)), 2) & " "
                    i = i + 1
                Wend
                Text2.Text = Trim(strls)
                
                rwinf = databuf(0)
                rwinf = rwinf * 256
                rwinf = rwinf + databuf(1)
                rwinf = rwinf * 256
                rwinf = rwinf + databuf(2)
                rwinf = rwinf * 256
                rwinf = rwinf + databuf(3)
            
                rwinf = rwinf + 1
                
                H2b = Int(rwinf / (65536))
                L2b = rwinf - H2b * 65536
                
                HexStr = Right("0000" + Hex(H2b), 4) + Right("0000" + Hex(L2b), 4)
                
                For i = 0 To 3
                   databuf(i) = "&H" + Mid(HexStr, i * 2 + 1, 2)
                Next
                For i = 0 To 15
                    keybufw(i) = 255
                Next
                authmo = 2
                status = cpursfiledatawrite_s(fileno, authmo, VarPtr(keybufw(0)), keylen, datastart, VarPtr(databuf(0)), datalen)
                
                If status = 0 Then
                    fileno = 2
                    authmo = 1
                    keylen = 16
                    datastart = 0
                    datalen = 100
                    For i = 0 To 15
                        keybufr(i) = 0
                    Next
                    Text3.Text = ""
                    status = cpursfiledataread(fileno, authmo, VarPtr(keybufr(0)), keylen, datastart, VarPtr(databuf(0)), datalen)
                    If status = 0 Then
                        i = 0
                        strls = ""
                        While i < datalen
                            strls = strls & Right("0" & Hex(databuf(i)), 2) & " "
                            i = i + 1
                        Wend
                        Text3.Text = Trim(strls)
                        
                        rwinf = databuf(0)
                        rwinf = rwinf * 256
                        rwinf = rwinf + databuf(1)
                        rwinf = rwinf * 256
                        rwinf = rwinf + databuf(2)
                        rwinf = rwinf * 256
                        rwinf = rwinf + databuf(3)
                    
                        rwinf = rwinf + 1
                        
                        H2b = Int(rwinf / (65536))
                        L2b = rwinf - H2b * 65536
                        
                        HexStr = Right("0000" + Hex(H2b), 4) + Right("0000" + Hex(L2b), 4)
                        
                        For i = 0 To 3
                           databuf(i) = "&H" + Mid(HexStr, i * 2 + 1, 2)
                        Next
                        For i = 0 To 15
                            keybufw(i) = 255
                        Next
                        authmo = 2
                        status = cpursfiledatawrite_s(fileno, authmo, VarPtr(keybufw(0)), keylen, datastart, VarPtr(databuf(0)), datalen)
                        
                    End If
                End If
            End If
        End If
    End If
    

    
    rwcs = rwcs + 1
    Text4 = rwcs
Else
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
End If

End Sub
