VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Mifare Ultralight����д�����ӳ���"
   ClientHeight    =   7305
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14730
   ForeColor       =   &H8000000F&
   LinkTopic       =   "Form1"
   ScaleHeight     =   7305
   ScaleWidth      =   14730
   StartUpPosition =   2  '��Ļ����
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      Height          =   6105
      Left            =   7320
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   6045
      ScaleWidth      =   7320
      TabIndex        =   28
      Top             =   360
      Width           =   7380
   End
   Begin VB.TextBox Text9 
      Height          =   285
      Left            =   3270
      TabIndex        =   26
      Top             =   3840
      Width           =   3735
   End
   Begin VB.CommandButton Command8 
      Caption         =   "����д�������һ��12��  <<"
      Height          =   495
      Left            =   120
      TabIndex        =   24
      Top             =   5310
      Width           =   2805
   End
   Begin VB.TextBox Text8 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   2130
      TabIndex        =   22
      Text            =   "12"
      Top             =   3840
      Width           =   495
   End
   Begin VB.CommandButton Command6 
      Caption         =   "���ɶ��������һ��12��  >>"
      Height          =   495
      Left            =   120
      TabIndex        =   19
      Top             =   4740
      Width           =   2805
   End
   Begin VB.TextBox Text7 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   990
      TabIndex        =   18
      Text            =   "4"
      Top             =   3840
      Width           =   495
   End
   Begin VB.TextBox Text6 
      BeginProperty Font 
         Name            =   "����"
         Size            =   21.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2925
      Left            =   3270
      MultiLine       =   -1  'True
      TabIndex        =   17
      Top             =   4230
      Width           =   3735
   End
   Begin VB.CommandButton Command3 
      Caption         =   "����ָ��ҳ"
      Height          =   375
      Left            =   5370
      TabIndex        =   16
      Top             =   3000
      Width           =   1695
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   2280
      TabIndex        =   14
      Text            =   "0"
      Top             =   3045
      Width           =   495
   End
   Begin VB.CommandButton Command2 
      Caption         =   "д1��ҳ"
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   3000
      Width           =   1215
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   3840
      MaxLength       =   8
      TabIndex        =   11
      Text            =   "00000000"
      Top             =   3000
      Width           =   975
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   3840
      TabIndex        =   9
      Top             =   2400
      Width           =   3255
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2280
      TabIndex        =   8
      Text            =   "0"
      Top             =   2445
      Width           =   495
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��4��ҳ"
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "�������к�"
      Height          =   540
      Left            =   120
      TabIndex        =   5
      Top             =   1680
      Width           =   3615
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   3840
      TabIndex        =   4
      Top             =   1680
      Width           =   3255
   End
   Begin VB.CommandButton Command5 
      Caption         =   "�����豸ȫ��Ψһ���豸��ţ���Ϊ���ܹ���"
      Height          =   540
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   4905
   End
   Begin VB.CommandButton Command4 
      Caption         =   "���豸��������"
      Height          =   540
      Left            =   5280
      TabIndex        =   0
      Top             =   1080
      Width           =   1815
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Ultralight���Ŀ��ṹ��"
      Height          =   195
      Left            =   7440
      TabIndex        =   29
      Top             =   60
      Width           =   1875
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "����:"
      Height          =   180
      Left            =   2790
      TabIndex        =   27
      Top             =   3900
      Width           =   450
   End
   Begin VB.Label Label11 
      Caption         =   "    �����������������Ϳ������ɲ���Ultralight����ÿ�������Զ���д12���������ݡ�"
      Height          =   750
      Left            =   150
      TabIndex        =   25
      Top             =   6390
      Width           =   2790
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "����:"
      Height          =   180
      Left            =   1650
      TabIndex        =   23
      Top             =   3900
      Width           =   450
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "��ʼ���:"
      Height          =   180
      Left            =   90
      TabIndex        =   21
      Top             =   3900
      Width           =   810
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "����:"
      Height          =   180
      Left            =   2790
      TabIndex        =   20
      Top             =   4200
      Width           =   450
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000C000&
      BorderWidth     =   5
      X1              =   -120
      X2              =   7320
      Y1              =   3660
      Y2              =   3660
   End
   Begin VB.Label Label8 
      Caption         =   "��ʼҳ��"
      Height          =   255
      Left            =   1440
      TabIndex        =   15
      Top             =   3060
      Width           =   735
   End
   Begin VB.Label Label6 
      Caption         =   "д������"
      Height          =   255
      Left            =   3000
      TabIndex        =   13
      Top             =   3060
      Width           =   735
   End
   Begin VB.Label Label5 
      Caption         =   "��������"
      Height          =   255
      Left            =   3000
      TabIndex        =   10
      Top             =   2460
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "��ʼҳ��"
      Height          =   255
      Left            =   1440
      TabIndex        =   7
      Top             =   2460
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "Mifare Ultralight����д�����ӳ���"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   1590
      TabIndex        =   3
      Top             =   120
      Width           =   3960
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
      Left            =   840
      TabIndex        =   2
      Top             =   480
      Width           =   6090
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'Ѱ��ѡ�����
Private Declare Function piccrequest_ul Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

'����
Private Declare Function piccread_ul Lib "OUR_MIFARE.dll" (ByVal blockaddr As Byte, ByVal piccdata As Long) As Byte

'д��
Private Declare Function piccwrite_ul Lib "OUR_MIFARE.dll" (ByVal blockaddr As Byte, ByVal piccdata As Long) As Byte

'���豸�������캯������
Private Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

'��ȡ�豸��ź�������
Private Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByVal devicenumber As Long) As Byte
        
'�����ֶ���,������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
Private Const NEEDSERIAL = &H8
Private Const NEEDHALT = &H20

'���������������Ϳ������ɲ���Ultralight��

'���ɶ���
Private Declare Function piccreadex_ul Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal blockaddr As Byte, ByVal blocksize As Byte, ByVal piccdata As Long) As Byte

'����д��
Private Declare Function piccwriteex_ul Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal blockaddr As Byte, ByVal blocksize As Byte, ByVal piccdata As Long) As Byte

Private Sub Command1_Click()
'��ҳ
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccserial(0 To 6) As Byte '�����к�

Dim mypiccdata(0 To 15) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�

Dim i As Integer

Dim str As String

status = piccrequest_ul(VarPtr(mypiccserial(0)))

str = ""
Text3.Text = ""
Select Case status

    Case 0:
        For i = 0 To 6
            
            str = str + Right("0" + Hex(mypiccserial(i)), 2)
        Next i
        
        
        Text1.Text = str
        
        
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
                
                
            Case Else
                
                Text3.Text = "�쳣" + CStr(status)
        
        End Select

        
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

Private Sub Command2_Click()
'дҳ
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccserial(0 To 6) As Byte '�����к�

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


status = piccrequest_ul(VarPtr(mypiccserial(0)))


str = ""

Select Case status

    Case 0:
        For i = 0 To 6
        
            
            
            str = str + Right("0" + Hex(mypiccserial(i)), 2)
        Next i
        
        
        Text1.Text = str

        status = piccwrite_ul(CByte(Text5), VarPtr(mypiccdata(0)))
        
        str = ""
        Select Case status
        
            Case 0:
                
                
                MsgBox "���ĵ�" + Text2 + "ҳ����д��ɹ�������"
                
                
            Case 8:
            
                MsgBox "�뽫�����ڸ�Ӧ��"
                
        
            Case 23: 'û�ж�̬��
                MsgBox "������USB ��д��"
                
                
            Case Else
                
                MsgBox "�쳣" + CStr(status)
        
        End Select

        
        

        
    Case 8:
    
        Text1.Text = "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        Text1.Text = "������USB ��д��"
        
        
    Case Else
        
        Text1.Text = "�쳣" + CStr(status)

End Select
End Sub

Private Sub Command4_Click()
'���豸��������
'����֧��:
'��վ:
    pcdbeep 50
End Sub

Private Sub Command5_Click()
'��ȡ�豸��ţ�����Ϊ������ܹ���,Ҳ���Ը��ݴ˱���ڹ�˾��վ�ϲ�ѯ��������

'����֧��:
'��վ:
Dim status As Byte

Dim devno(0 To 3) As Byte '�豸���

status = pcdgetdevicenumber(VarPtr(devno(0)))

If status = 0 Then
    MsgBox CStr(devno(0)) + "-" + CStr(devno(1)) + "-" + CStr(devno(2)) + "-" + CStr(devno(3))
End If




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

Private Sub Command6_Click()
'���ɶ���
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte '������

Dim mypiccserial(0 To 6) As Byte '�����к�

Dim myblockaddr As Byte '��ʼ���ַ

Dim myblocksize As Byte '�ܿ���

Dim mypiccdata(0 To 47) As Byte '���������ݻ��壬�����Զ���12���鹲48���ֽ�

Dim i As Integer

Dim str As String

myctrlword = 0


myblockaddr = CByte(Trim(Text7.Text)) 'ULtralight�����ݿ��3�鿪ʼ

myblocksize = CByte(Trim(Text8.Text))

status = piccreadex_ul(myctrlword, VarPtr(mypiccserial(0)), myblockaddr, myblocksize, VarPtr(mypiccdata(0)))


Text9.Text = ""
Text6.Text = ""
Select Case status

    Case 0:
    
        str = ""
        For i = 0 To 6
            
            str = str + Right("0" + Hex(mypiccserial(i)), 2)
        Next i

        Text9.Text = str
        
        
        str = ""
        For i = 0 To (myblocksize * 4 - 1)
            
            str = str + Right("0" + Hex(mypiccdata(i)), 2)
        Next i

        Text6.Text = str
  
    Case 8:
    
        Text9.Text = "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        Text9.Text = "������USB ��д��"
        
        
    Case Else
        
        Text9.Text = "�쳣" + CStr(status)

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
'����д��
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte '������

Dim mypiccserial(0 To 6) As Byte '�����к�

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

myctrlword = 0

myblockaddr = CByte(Trim(Text7.Text)) 'ULtralight�����ݿ��3�鿪ʼ

myblocksize = CByte(Trim(Text8.Text))

datalen = CLng(Text8.Text) * 4
    
If (datalen < 1) Then
    MsgBox "����д��ĳ��Ȳ���С��1�����������룡"
    Text8.SetFocus
    Exit Sub
End If

 'ȡ����
strls1 = Text6.Text
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
    Text6.SetFocus
    Exit Sub
End If


For i = 1 To datalen
    strls2 = Mid(datastrls, (i - 1) * 2 + 1, 2)
    
    mypiccdata(i - 1) = CByte("&h" & strls2)
    
Next i
    


status = piccwriteex_ul(myctrlword, VarPtr(mypiccserial(0)), myblockaddr, myblocksize, VarPtr(mypiccdata(0)))


Select Case status

    Case 0:
    
        strls1 = ""
        For i = 0 To 6
            
            strls1 = strls1 + Right("0" + Hex(mypiccserial(i)), 2)
        Next i

        Text9.Text = strls1
        
        MsgBox "д��ɹ���"
        
  
    Case 8:
    
        Text9.Text = "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        Text9.Text = "������USB ��д��"
        
        
    Case Else
        
        Text9.Text = "�쳣" + CStr(status)

End Select


End Sub

