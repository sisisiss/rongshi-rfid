VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "��չ���ܣ�һ������õ����������"
   ClientHeight    =   2610
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   7470
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2610
   ScaleWidth      =   7470
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      Caption         =   "ǿ����տ�"
      Height          =   1095
      Left            =   0
      TabIndex        =   6
      Top             =   1320
      Width           =   7455
      Begin VB.CommandButton Command1 
         Caption         =   "ǿ����տ�"
         Height          =   540
         Left            =   5760
         TabIndex        =   8
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label Label1 
         Caption         =   "ǿ����տ�����cpursinit�����ɹ���ʼ��������������붪ȥ�ˣ����Գ�����ǿ����տ�������տ�������״̬��"
         ForeColor       =   &H000000FF&
         Height          =   495
         Left            =   120
         TabIndex        =   7
         Top             =   360
         Width           =   5415
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "�޸Ŀ�����"
      Height          =   1215
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7455
      Begin VB.TextBox Text26 
         Height          =   285
         Left            =   1800
         TabIndex        =   3
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   375
         Width           =   3735
      End
      Begin VB.TextBox Text25 
         Height          =   285
         Left            =   1800
         TabIndex        =   2
         Text            =   "FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"
         Top             =   840
         Width           =   3735
      End
      Begin VB.CommandButton Command19 
         Caption         =   "���������"
         Height          =   540
         Left            =   5760
         TabIndex        =   1
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label Label38 
         Caption         =   "������(16������)��"
         Height          =   255
         Left            =   180
         TabIndex        =   5
         Top             =   390
         Width           =   1575
      End
      Begin VB.Label Label37 
         Caption         =   " ������(16������)��"
         Height          =   255
         Left            =   180
         TabIndex        =   4
         Top             =   840
         Width           =   1575
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Dim status As Byte
    
    status = cpurscardclr()

    If status = 0 Then
        pcdbeep 20
        MsgBox "ǿ����տ��ɹ���"
    ElseIf status = 64 Then
        MsgBox "�˿�Ϊδ��������cpursinit�����ɹ���ʼ���Ŀ���"
    
    Else
        RetText status
    End If
    
    
End Sub

Private Sub Command19_Click()
    Dim strls As String
    Dim strls1 As String
    Dim strls2 As String
    
    Dim oldkeystrls As String
    Dim newkeystrls As String
    
    Dim mylen As Integer
    
    Dim i As Integer
    
    Dim oldkeystrlen As Integer
    Dim oldkeylen As Byte '��Կ����
    Dim oldnewkeyuf(0 To 15) As Byte '��Կ
    
    Dim newkeystrlen As Integer
    Dim newkeylen As Byte '��Կ����
    Dim newkeybuf(0 To 15) As Byte '��Կ
    
    Dim status As Byte
        
    'ȡԭ����
    strls1 = Text26.Text
    mylen = Len(strls1)
    oldkeystrls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            oldkeystrls = oldkeystrls + strls2
        End If
    
    Next i
    
    oldkeystrlen = Len(oldkeystrls)
    
    If (oldkeystrlen < 1) Then
        MsgBox "�����������룡"
        Text26.SetFocus
        Exit Sub
    End If
    
    
    'ȡ������
    strls1 = Text25.Text
    mylen = Len(strls1)
    newkeystrls = ""
    
    For i = 1 To mylen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            newkeystrls = newkeystrls + strls2
        End If
    
    Next i
    
    newkeystrlen = Len(newkeystrls)
    
    If (newkeystrlen < 1) Then
        MsgBox "�����������룡"
        Text25.SetFocus
        Exit Sub
    End If
    

    '��ȡԭ����
    If (oldkeystrlen Mod 2) > 0 Then
        oldkeystrls = oldkeystrls & "0"
        oldkeystrlen = oldkeystrlen + 1
    End If
    
    strls1 = ""
    oldkeylen = 0
    For i = 1 To oldkeystrlen Step 2
        strls2 = Mid(oldkeystrls, i, 2)
        
        strls1 = strls1 + strls2 + " "
        
        oldnewkeyuf(oldkeylen) = CByte("&h" & strls2)
        oldkeylen = oldkeylen + 1
        
    Next i
    
    Text26.Text = Trim(strls1)
    
    '��ȡ������
    If (newkeystrlen Mod 2) > 0 Then
        newkeystrls = newkeystrls & "0"
        newkeystrlen = newkeystrlen + 1
    End If
    
    strls1 = ""
    newkeylen = 0
    For i = 1 To newkeystrlen Step 2
        strls2 = Mid(newkeystrls, i, 2)
        
        strls1 = strls1 + strls2 + " "
        
        newkeybuf(newkeylen) = CByte("&h" & strls2)
        newkeylen = newkeylen + 1
        
    Next i
    
    Text25.Text = Trim(strls1)
    
    status = cpurscardkeychg(VarPtr(oldnewkeyuf(0)), oldkeylen, VarPtr(newkeybuf(0)), newkeylen)

    If status = 0 Then
        pcdbeep 20
        MsgBox "�޸Ŀ�����ɹ���"
    Else
        RetText status
    End If
End Sub
