VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "NTAG21x����д�����ӳ���"
   ClientHeight    =   11805
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8100
   ForeColor       =   &H8000000F&
   LinkTopic       =   "Form1"
   ScaleHeight     =   11805
   ScaleWidth      =   8100
   StartUpPosition =   2  '��Ļ����
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
      Caption         =   "��ȡ�������������ֵ"
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
      Caption         =   "��Ҫ��֤��������ܼ�������"
      Height          =   255
      Left            =   360
      TabIndex        =   44
      Top             =   6360
      Width           =   2775
   End
   Begin VB.CommandButton Command13 
      BackColor       =   &H0080C0FF&
      Caption         =   "���ÿ����뼰��������"
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
      Caption         =   "�������������뱣��"
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
      Caption         =   "��Ҫ��֤��������ܼ�������"
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
      Caption         =   "����д�������һ��11ҳ"
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
      Caption         =   "���ɶ��������һ��12ҳ"
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
      Caption         =   "����16ҳ��֮���ҳ���������ݺ��޷��ָ���"
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
      Caption         =   "��ȡ����ǩ����Ϣ��������֤���Ƿ�NXP���濨"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   21
      Top             =   4680
      Width           =   7575
   End
   Begin VB.CommandButton Command8 
      BackColor       =   &H00C0FFC0&
      Caption         =   "��ȡ���İ汾�ż��ͺ�"
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
      Caption         =   "����3~15ҳ���������ݺ��޷��ָ���"
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
      Caption         =   "������֤"
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
      Caption         =   "д1��ҳ"
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
      Caption         =   "��4��ҳ"
      Height          =   375
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      BackColor       =   &H00C0FFC0&
      Caption         =   "��һ�����������к�"
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
      Caption         =   "�����豸ȫ��Ψһ���豸��ţ���Ϊ���ܹ���"
      Height          =   420
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1080
      Width           =   4905
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H0080C0FF&
      Caption         =   "���豸��������"
      Height          =   420
      Left            =   5400
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1080
      Width           =   2415
   End
   Begin VB.Label Label18 
      AutoSize        =   -1  'True
      Caption         =   "�����룺"
      Height          =   195
      Left            =   2280
      TabIndex        =   50
      Top             =   7200
      Width           =   720
   End
   Begin VB.Label Label7 
      Caption         =   "��"
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
      Caption         =   "����������������0Ϊ���޴Σ���"
      Height          =   255
      Left            =   4080
      TabIndex        =   42
      Top             =   7200
      Width           =   2655
   End
   Begin VB.Label Label16 
      Caption         =   "ҳ��ʼ�����뱣��"
      Height          =   195
      Left            =   3840
      TabIndex        =   39
      Top             =   6870
      Width           =   1620
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      Caption         =   "����"
      Height          =   195
      Left            =   1680
      TabIndex        =   34
      Top             =   9600
      Width           =   360
   End
   Begin VB.Label Label13 
      Caption         =   "ҳ��"
      Height          =   195
      Left            =   600
      TabIndex        =   32
      Top             =   9600
      Width           =   360
   End
   Begin VB.Label Label12 
      Caption         =   "ʵ��ֻ��Ҫ��������ָ��Ϳ�������ʹ��NTAG��"
      Height          =   255
      Left            =   360
      TabIndex        =   30
      Top             =   6000
      Width           =   4215
   End
   Begin VB.Label Label11 
      Caption         =   "��ʼҳ��"
      Height          =   255
      Left            =   240
      TabIndex        =   29
      Top             =   9165
      Width           =   735
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "����"
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
      Caption         =   "���ڶ�д���ĵ���ָ�"
      Height          =   195
      Left            =   240
      TabIndex        =   24
      Top             =   11040
      Width           =   1980
   End
   Begin VB.Label Label9 
      Caption         =   "������"
      Height          =   195
      Left            =   240
      TabIndex        =   18
      Top             =   3360
      Width           =   540
   End
   Begin VB.Label Label8 
      Caption         =   "��ʼҳ��"
      Height          =   255
      Left            =   1680
      TabIndex        =   15
      Top             =   2700
      Width           =   735
   End
   Begin VB.Label Label6 
      Caption         =   "д������"
      Height          =   255
      Left            =   3120
      TabIndex        =   13
      Top             =   2700
      Width           =   735
   End
   Begin VB.Label Label5 
      Caption         =   "��������"
      Height          =   255
      Left            =   3120
      TabIndex        =   10
      Top             =   2280
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "��ʼҳ��"
      Height          =   255
      Left            =   1680
      TabIndex        =   7
      Top             =   2280
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "NTAG21x����д�����ӳ���"
      BeginProperty Font 
         Name            =   "����"
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
      Caption         =   "���齫OUR_MIFARE.dll���Ƶ�Ӧ�ó���ͬһĿ¼��"
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






'���������������������ɲ���





Private Sub Command1_Click()
'��ҳ
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccdata(0 To 15) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�

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
    
        Text3.Text = "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        Text3.Text = "������USB ��д��"
        
    Case 13: '����ʧ��
        Text3.Text = "����ʧ�ܣ�����ִ�е�һ���������кţ�"
        
        
    Case Else
        
        Text3.Text = "�쳣" + CStr(status)

End Select

        






'���ؽ���
'#define ERR_REQUEST 8'Ѱ������
'#define ERR_READSERIAL 9'�����������
'#define ERR_SELECTCARD 10'ѡ������
'#define ERR_LOADKEY 11'װ���������
'#define ERR_AUTHKEY 12'������֤����
'#define ERR_READ 13'��������
'#define ERR_WRITE 14'д������
'#define ERR_NONEDLL 21'û�ж�̬��
'#define ERR_DRIVERORDLL 22'��̬������������쳣
'#define ERR_DRIVERNULL 23'��������������δ��װ
'#define ERR_TIMEOUT 24'������ʱ��һ���Ƕ�̬��û�з�ӳ
'#define ERR_TXSIZE 25'������������
'#define ERR_TXCRC 26'���͵�CRC��
'#define ERR_RXSIZE 27'���յ���������
'#define ERR_RXCRC 28'���յ�CRC��
End Sub

Private Sub Command10_Click()
'
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypicclockdata(0 To 3) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�

Dim i As Integer



mypicclockdata(0) = &H1
mypicclockdata(1) = &H1
mypicclockdata(2) = 0
mypicclockdata(3) = 0

        
status = picclock_ntag(1, VarPtr(mypicclockdata(0))) '����0~15dҳ

Select Case status

    Case 0:
        
        
        MsgBox "16~XXҳ����λд��ɹ�������"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
      

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
    Case 14: 'д��ʧ��

        MsgBox "д��ʧ�ܣ�����ִ�е�һ���������кţ�"
        
        
    Case Else
        
        MsgBox "�쳣" + CStr(status)

End Select

    'MsgBox "Ϊ��ֹ��������¿����ϣ���ʱ���ṩ�˲�����Դ�룡"
End Sub

Private Sub Command11_Click()
'���ɶ���
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte '������

Dim mypiccserial(0 To 6) As Byte '�����к�

Dim mypicckey(0 To 3) As Byte '����֤����

Dim myblockaddr As Byte '��ʼ���ַ

Dim myblocksize As Byte '�ܿ���

Dim mypiccdata(0 To 47) As Byte '���������ݻ��壬�����Զ���12���鹲48���ֽ�

Dim i As Integer

Dim str As String

Dim datastrls As String

Dim strls1 As String

Dim strls2 As String

Dim comedc As Byte



If Check1.Value > 0 Then

     'ȡ����
    strls1 = Text12.Text
    
    If (Len(strls1) < 8) Then
        MsgBox "���볤�Ȳ��㣡"
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

    myctrlword = NEEDKEY '��Ҫ����

Else

    myctrlword = 0
    
End If


myblockaddr = CByte(Trim(Text9.Text)) 'ULtralight�����ݿ��3�鿪ʼ

myblocksize = CByte(Trim(Text10.Text))


'�������ģ���ʽ��
comedc = &H1B

str = "0F1B"

'������
str = str + Right("0" + Hex(myctrlword), 2)

comedc = comedc Xor myctrlword

'����
For i = 0 To 6
    
    str = str + Right("0" + Hex(mypiccserial(i)), 2)
    
    comedc = comedc Xor mypiccserial(i)
    
Next i

'����
For i = 0 To 3
    
    str = str + Right("0" + Hex(mypicckey(i)), 2)
    
    comedc = comedc Xor mypicckey(i)
    
Next i

'ҳ��ַ
str = str + Right("0" + Hex(myblockaddr), 2)
comedc = comedc Xor myblockaddr


'ҳ��
str = str + Right("0" + Hex(myblocksize), 2)
comedc = comedc Xor myblocksize

'У����
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
    
        Text8.Text = "�뽫�����ڸ�Ӧ��"
        
    Case 12:
    
        Text8.Text = "�������"
        
    Case 13:
    
        Text8.Text = "����ʧ�ܣ�������Ҫ��֤����"
        

    Case 23: 'û�ж�̬��
        Text8.Text = "������USB ��д��"
        
        
    Case Else
        
        Text8.Text = "�쳣" + CStr(status)

End Select
End Sub

Private Sub Command12_Click()
'����д��
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte '������

Dim mypiccserial(0 To 6) As Byte '�����к�

Dim mypicckey(0 To 3) As Byte '����֤����

Dim myblockaddr As Byte '��ʼ���ַ

Dim myblocksize As Byte '�ܿ���

Dim mypiccdata(0 To 47) As Byte '���������ݻ��壬�����Զ���12���鹲48���ֽ�

Dim i As Integer

Dim mylen As Integer

Dim strls1 As String
Dim strls2 As String

Dim datastrls As String

Dim datastrlen As Integer '������ַ�����
Dim datalen As Integer '��Ҫ�����ݳ���

Dim comedc As Byte

Dim str As String


If Check1.Value > 0 Then

     'ȡ����
    strls1 = Text12.Text
    
    If (Len(strls1) < 8) Then
        MsgBox "���볤�Ȳ��㣡"
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

    myctrlword = NEEDKEY '��Ҫ����

Else

    myctrlword = 0
    
End If

myblockaddr = CByte(Trim(Text9.Text))

myblocksize = CByte(Trim(Text10.Text))

datalen = CLng(Text10.Text)
    
If (datalen < 1) Then
    MsgBox "����д���ҳ������С��1�����������룡"
    Text10.SetFocus
    Exit Sub
End If

datalen = datalen * 4

 'ȡ����
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
    MsgBox "���Ȳ������ݣ�"
    Text11.SetFocus
    Exit Sub
End If


For i = 1 To datalen
    strls2 = Mid(datastrls, (i - 1) * 2 + 1, 2)
    
    mypiccdata(i - 1) = CByte("&h" & strls2)
    
Next i
    

'�������ģ���ʽ��
comedc = &H1C

str = "3B1C"

'������
str = str + Right("0" + Hex(myctrlword), 2)

comedc = comedc Xor myctrlword

'����
For i = 0 To 6
    
    str = str + Right("0" + Hex(mypiccserial(i)), 2)
    
    comedc = comedc Xor mypiccserial(i)
    
Next i

'����
For i = 0 To 3
    
    str = str + Right("0" + Hex(mypicckey(i)), 2)
    
    comedc = comedc Xor mypicckey(i)
    
Next i

'ҳ��ַ
str = str + Right("0" + Hex(myblockaddr), 2)
comedc = comedc Xor myblockaddr


'ҳ��
str = str + Right("0" + Hex(myblocksize), 2)
comedc = comedc Xor myblocksize

'����
For i = 0 To 43
    
    str = str + Right("0" + Hex(mypiccdata(i)), 2)
    
    comedc = comedc Xor mypiccdata(i)
    
Next i


'У����
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
        
        MsgBox "д��ɹ���"
        
    Case 8:
    
        Text8.Text = "�뽫�����ڸ�Ӧ��"
        
    Case 12:
    
        Text8.Text = "�������"
        
    Case 14:
    
        Text8.Text = "д��ʧ�ܣ�������Ҫ��֤����"
        

    Case 23: 'û�ж�̬��
        Text8.Text = "������USB ��д��"
        
        
    Case Else
        
        Text8.Text = "�쳣" + CStr(status)


End Select
End Sub

Private Sub Command13_Click()
'���ÿ����뼰�������� -- ��ʼ����
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte '������

Dim mypiccserial(0 To 6) As Byte '�����к�

Dim mypicckey(0 To 3) As Byte '����֤����

Dim mypiccdata(0 To 15) As Byte '���������ݻ��壬�����Զ���12���鹲48���ֽ�

Dim i As Integer

Dim mylen As Integer

Dim strls1 As String
Dim strls2 As String

Dim datastrls As String

Dim datastrlen As Integer '������ַ�����
Dim datalen As Integer '��Ҫ�����ݳ���

Dim comedc As Byte

Dim str As String

If Check3.Value > 0 Then

     'ȡ����
    strls1 = Text15.Text
    
    If (Len(strls1) < 8) Then
        MsgBox "���볤�Ȳ��㣡"
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

    myctrlword = NEEDKEY '��Ҫ����

Else

    myctrlword = 0
    
End If

'����׼��

If Combo1.ListIndex = 0 Then
    'ȡ������
    strls1 = Text16.Text
    
    If (Len(strls1) < 8) Then
        MsgBox "���볤�Ȳ��㣡"
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

    myctrlword = myctrlword + &H4 '���¿�����
    
    mypiccdata(0) = &H0 'MIRROR
    
    mypiccdata(1) = &H0 'RFUI
    
    mypiccdata(2) = &H0 'MIRROR_PAGE
    
    mypiccdata(3) = CByte(Text13.Text) 'AUTH0
    
    myctrlword = myctrlword + &H1 '���¿�����
    
    
    'ACCESS
    mypiccdata(4) = CByte(Text14.Text) Mod 8
    
    If Check2.Value > 0 Then
    
        mypiccdata(4) = mypiccdata(4) + &H80
        

    Else
 
        
        
    End If
    
    '���ü�����

    mypiccdata(5) = &H0
    mypiccdata(6) = &H0
    mypiccdata(7) = &H0
    
    
    
    myctrlword = myctrlword + &H2 '���¿�����
    
    
    
Else
    
    mypiccdata(0) = &H0 'MIRROR
    
    mypiccdata(1) = &H0 'RFUI
    
    mypiccdata(2) = &H0 'MIRROR_PAGE
    
    mypiccdata(3) = &HFF 'AUTH0
    
    myctrlword = myctrlword + &H1 '���¿�����
    
    mypiccdata(4) = &H0
    
    mypiccdata(5) = &H0
    mypiccdata(6) = &H0
    mypiccdata(7) = &H0
    
    myctrlword = myctrlword + &H2 '���¿�����
    
    

    
End If

'�������ģ���ʽ��
comedc = &H16

str = "1D16"

'������
str = str + Right("0" + Hex(myctrlword), 2)

comedc = comedc Xor myctrlword

'����
For i = 0 To 6
    
    str = str + Right("0" + Hex(mypiccserial(i)), 2)
    
    comedc = comedc Xor mypiccserial(i)
    
Next i

'����
For i = 0 To 3
    
    str = str + Right("0" + Hex(mypicckey(i)), 2)
    
    comedc = comedc Xor mypicckey(i)
    
Next i

'����
For i = 0 To 15
    
    str = str + Right("0" + Hex(mypiccdata(i)), 2)
    
    comedc = comedc Xor mypiccdata(i)
    
Next i


'У����
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
        
        MsgBox "��ʼ�����ɹ���"
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 12:
    
        MsgBox "�������"
        
    Case 14:
    
        MsgBox "����ʧ�ܣ�������Ҫ��֤����"
        
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣" + CStr(status)


End Select
End Sub

Private Sub Command14_Click()
'��ȡ�������������ֵ
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypicccntdata(0 To 2) As Byte    '�������ĵ������������������ˮ�ţ�

Dim i As Integer

Dim str As String


status = piccreadcnt_ntag(VarPtr(mypicccntdata(0)))

str = ""
Select Case status

    Case 0:
        For i = 0 To 2
            
            str = str + Right("0" + Hex(mypicccntdata(i)), 2)
        Next i
        
        
        MsgBox "�������ĵ����������" + str
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 13
        MsgBox "����ʧ�ܣ�����ִ�е�һ���������к����ԣ�������ǲ��У������Ǽ�����������δ���û򿨱���֧�ּ������ܣ�"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣" + CStr(status)

End Select
End Sub

Private Sub Command2_Click()
'дҳ
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccdata(0 To 3) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�

Dim i As Integer

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Byte '�����ַ����ĳ���


'ȡ����
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

    MsgBox "д�����ݳ��Ȳ���"
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
        
        
        MsgBox "���ĵ�" + Text5 + "ҳ����д��ɹ�������"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
      

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
    Case 14: 'д��ʧ��

        MsgBox "д��ʧ�ܣ�����ִ�е�һ���������кţ�"
        
        
    Case Else
        
        MsgBox "�쳣" + CStr(status)

End Select

   


End Sub

Private Sub Command3_Click()
    
'NTAG21x������֤
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccserial(0 To 6) As Byte '�����к�

Dim mypicckey(0 To 3) As Byte '��Ҫ��֤������

Dim mypiccntagpack(0 To 1) As Byte '��֤�󷵻ص�ȷ����

Dim i As Integer

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Byte '�����ַ����ĳ���


'ȡ����
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

    MsgBox "���볤�Ȳ���"
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
        
        
        MsgBox "��������֤�ɹ���ȷ����Ϊ��" + Right("0" + Hex(mypiccntagpack(0)), 2) + Right("0" + Hex(mypiccntagpack(1)), 2)
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣" + CStr(status)

End Select

    
End Sub

Private Sub Command4_Click()
'���豸��������
'����֧��:
'��վ:
    pcdbeep 50
    
    Text7.Text = "030F32003D"
    
End Sub

Private Sub Command5_Click()
'��ȡ�豸��ţ�����Ϊ������ܹ���,Ҳ���Ը��ݴ˱���ڹ�˾��վ�ϲ�ѯ��������
Dim status As Byte
Dim devno(0 To 3) As Byte '�豸���

status = pcdgetdevicenumber(VarPtr(devno(0)))

If status = 0 Then
    MsgBox CStr(devno(0)) + "-" + CStr(devno(1)) + "-" + CStr(devno(2)) + "-" + CStr(devno(3)), vbInformation + vbOKOnly, "��ʾ"
Else
    disperr status
End If

End Sub

Private Sub Command6_Click()

'
'����֧��:
'��վ:
'Dim status As Byte '��ŷ���ֵ
'Dim mypicclockdata(0 To 3) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�
'Dim i As Integer
'
'mypicclockdata(0) = 0
'mypicclockdata(1) = 0
'mypicclockdata(2) = &HF9
'mypicclockdata(3) = 0
'
'
'status = picclock_ntag(0, VarPtr(mypicclockdata(0))) '����0~15dҳ
'Select Case status
'    Case 0:
'        MsgBox "0~15ҳ����λд��ɹ�������"
'    Case 8:
'        MsgBox "�뽫�����ڸ�Ӧ��"
'    Case 23: 'û�ж�̬��
'        MsgBox "������USB ��д��"
'    Case 14: 'д��ʧ��
'        MsgBox "д��ʧ�ܣ�����ִ�е�һ���������кţ�"
'    Case Else
'        MsgBox "�쳣" + CStr(status)
'End Select

Form2.Show 1
   
End Sub

Private Sub Command7_Click()
'���������к�
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccserial(0 To 6) As Byte '�����к�

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
    
        Text1.Text = "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        Text1.Text = "������USB ��д��"
        
        
    Case Else
        
        Text1.Text = "�쳣" + CStr(status)

End Select



'���ؽ���
'#define ERR_REQUEST 8'Ѱ������
'#define ERR_READSERIAL 9'�����������
'#define ERR_SELECTCARD 10'ѡ������
'#define ERR_LOADKEY 11'װ���������
'#define ERR_AUTHKEY 12'������֤����
'#define ERR_READ 13'��������
'#define ERR_WRITE 14'д������
'#define ERR_NONEDLL 21'û�ж�̬��
'#define ERR_DRIVERORDLL 22'��̬������������쳣
'#define ERR_DRIVERNULL 23'��������������δ��װ
'#define ERR_TIMEOUT 24'������ʱ��һ���Ƕ�̬��û�з�ӳ
'#define ERR_TXSIZE 25'������������
'#define ERR_TXCRC 26'���͵�CRC��
'#define ERR_RXSIZE 27'���յ���������
'#define ERR_RXCRC 28'���յ�CRC��
End Sub


Private Sub Command8_Click()
'��ȡ���İ汾�ż��ͺ�
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccversiondata(0 To 7) As Byte  '���汾��Ϣ

Dim i As Integer

Dim str As String


status = piccgetversion_ntag(VarPtr(mypiccversiondata(0)))

str = ""
Select Case status

    Case 0:
        For i = 0 To 7
            
            str = str + Right("0" + Hex(mypiccversiondata(i)), 2)
        Next i
        
        
        MsgBox "���汾��Ϣ��" + str
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 13
        MsgBox "����ʧ�ܣ�����ִ�е�һ���������кţ�"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣" + CStr(status)

End Select
End Sub

Private Sub Command9_Click()
'��ȡ����ǩ����Ϣ��������֤���Ƿ�NXP���濨
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccsigdata(0 To 31) As Byte   '��ǩ����Ϣ

Dim i As Integer

Dim str As String


status = piccreadsig_ntag(VarPtr(mypiccsigdata(0)))

str = ""
Select Case status

    Case 0:
        For i = 0 To 31
            
            str = str + Right("0" + Hex(mypiccsigdata(i)), 2)
        Next i
        
        
        MsgBox "��ǩ����Ϣ��" + str
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 13
        MsgBox "����ʧ�ܣ�����ִ�е�һ���������кţ�"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣" + CStr(status)

End Select
End Sub

Private Sub Form_Load()
    Combo1.ListIndex = 1 'ȡ�����뱣������
End Sub

Public Sub disperr(ByVal errcode As Byte)
Select Case errcode
       Case 8
            MsgBox "Ѱ�������뽫�����ڸ�Ӧ����", vbCritical + vbOKOnly, "��ʾ"
       Case 9
            MsgBox "�������кŴ���", vbCritical + vbOKOnly, "��ʾ"
       Case 10
            MsgBox "ѡ������", vbCritical + vbOKOnly, "��ʾ"
       Case 11
            MsgBox "װ���������", vbCritical + vbOKOnly, "��ʾ"
       Case 12
            MsgBox "��Ƭ������֤����", vbCritical + vbOKOnly, "��ʾ"
       Case 13
            MsgBox "����ʧ�ܣ�����ִ�е�һ���������кţ�", vbCritical + vbOKOnly, "��ʾ"
       Case 14
            MsgBox "д����������ִ�е�һ���������кţ�", vbCritical + vbOKOnly, "��ʾ"
       Case 13
            MsgBox "����ʧ�ܣ�����ִ�е�һ���������кţ�", vbCritical + vbOKOnly, "��ʾ"
       Case 21
            MsgBox "û�ж�̬�⣡", vbCritical + vbOKOnly, "��ʾ"
       Case 22
            MsgBox "��̬������������쳣��", vbCritical + vbOKOnly, "��ʾ"
       Case 23
            MsgBox "����ʧ�ܣ�������USB��д����", vbCritical + vbOKOnly, "��ʾ"
       Case 24
            MsgBox "������ʱ��һ���Ƕ�̬��û�з�Ӧ��", vbCritical + vbOKOnly, "��ʾ"
       Case 25
            MsgBox "������������������DLL�汾���豸��һ�£�", vbCritical + vbOKOnly, "��ʾ"
       Case 26
            MsgBox "���͵�CRC������DLL�汾���豸��һ�£�", vbCritical + vbOKOnly, "��ʾ"
       Case 27
            MsgBox "���յ���������������DLL�汾���豸��һ�£�", vbCritical + vbOKOnly, "��ʾ"
       Case 28
            MsgBox "���յ�CRC������DLL�汾���豸��һ�£�", vbCritical + vbOKOnly, "��ʾ"
      Case Else
            MsgBox "δ֪���쳣���룺" + CStr(errcode), vbCritical + vbOKOnly, "��ʾ"
End Select

'���ؽ���
'#define ERR_REQUEST 8'Ѱ������
'#define ERR_READSERIAL 9'�����������
'#define ERR_SELECTCARD 10'ѡ������
'#define ERR_LOADKEY 11'װ���������
'#define ERR_AUTHKEY 12'������֤����
'#define ERR_READ 13'��������
'#define ERR_WRITE 14'д������
'#define ERR_NONEDLL 21'û�ж�̬��
'#define ERR_DRIVERORDLL 22'��̬������������쳣
'#define ERR_DRIVERNULL 23'��������������δ��װ
'#define ERR_TIMEOUT 24'������ʱ��һ���Ƕ�̬��û�з�ӳ
'#define ERR_TXSIZE 25'������������
'#define ERR_TXCRC 26'���͵�CRC��
'#define ERR_RXSIZE 27'���յ���������
'#define ERR_RXCRC 28'���յ�CRC��
End Sub
