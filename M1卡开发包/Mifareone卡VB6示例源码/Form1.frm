VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "��д�����ӳ���"
   ClientHeight    =   11130
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7965
   ForeColor       =   &H8000000F&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11130
   ScaleWidth      =   7965
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton Command26 
      Caption         =   " ��дFM11RF32����S70��"
      Height          =   405
      Left            =   2430
      TabIndex        =   42
      Top             =   9060
      Width           =   2355
   End
   Begin VB.CommandButton Command25 
      Caption         =   " ��дָ��64������"
      Height          =   405
      Left            =   6930
      TabIndex        =   41
      Top             =   10950
      Width           =   2115
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   150
      Top             =   10230
   End
   Begin VB.CommandButton Command24 
      Caption         =   "��ʼ����HID ICLASS CSN"
      Height          =   375
      Left            =   270
      TabIndex        =   40
      Top             =   10290
      Width           =   2265
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   7500
      Top             =   9810
   End
   Begin VB.TextBox Text8 
      ForeColor       =   &H000000FF&
      Height          =   855
      Left            =   2670
      MultiLine       =   -1  'True
      TabIndex        =   39
      Top             =   9810
      Width           =   4965
   End
   Begin VB.CommandButton Command23 
      Caption         =   "��ʼ�����������֤UID"
      Height          =   375
      Left            =   300
      TabIndex        =   38
      Top             =   9810
      Width           =   2265
   End
   Begin VB.CommandButton Command22 
      Caption         =   "��չ���� ������֤����д��оƬ"
      Height          =   375
      Left            =   4830
      TabIndex        =   37
      Top             =   9090
      Width           =   3045
   End
   Begin VB.CommandButton Command21 
      Caption         =   "��չ���� ��дָ������"
      Height          =   405
      Left            =   270
      TabIndex        =   36
      Top             =   9060
      Width           =   2115
   End
   Begin VB.TextBox Text7 
      Height          =   345
      Left            =   870
      TabIndex        =   34
      Top             =   8490
      Width           =   4785
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   150
      Left            =   7140
      Top             =   7020
   End
   Begin VB.CommandButton Command20 
      Caption         =   "��ʼУ�鿨����"
      Height          =   375
      Left            =   5700
      TabIndex        =   33
      Top             =   8460
      Width           =   1995
   End
   Begin VB.TextBox Text6 
      Height          =   315
      Left            =   4290
      TabIndex        =   31
      Text            =   "FFFFFFFFFFFF"
      Top             =   8100
      Width           =   1305
   End
   Begin VB.ComboBox Combo2 
      Height          =   300
      ItemData        =   "Form1.frx":0000
      Left            =   840
      List            =   "Form1.frx":0034
      Style           =   2  'Dropdown List
      TabIndex        =   28
      Top             =   8115
      Width           =   705
   End
   Begin VB.TextBox Text5 
      Height          =   315
      Left            =   2190
      TabIndex        =   27
      Text            =   "FFFFFFFFFFFF"
      Top             =   8100
      Width           =   1305
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   7410
      Top             =   4380
   End
   Begin VB.CommandButton Command19 
      Caption         =   "��ʼ�����豸���"
      Height          =   375
      Left            =   4290
      TabIndex        =   25
      Top             =   4350
      Width           =   1815
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      ItemData        =   "Form1.frx":006E
      Left            =   3990
      List            =   "Form1.frx":008A
      Style           =   2  'Dropdown List
      TabIndex        =   24
      Top             =   7560
      Width           =   825
   End
   Begin VB.CommandButton Command18 
      Caption         =   "дS70��"
      Height          =   345
      Left            =   6450
      TabIndex        =   23
      Top             =   7560
      Width           =   1305
   End
   Begin VB.TextBox Text4 
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   330
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   7530
      Width           =   3480
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1665
      Left            =   330
      MultiLine       =   -1  'True
      TabIndex        =   21
      Top             =   5820
      Width           =   7410
   End
   Begin VB.CommandButton Command17 
      Caption         =   "��S70��"
      Height          =   345
      Left            =   5130
      TabIndex        =   20
      Top             =   7590
      Width           =   1305
   End
   Begin VB.CommandButton Command16 
      Caption         =   "���ڲ�������֤����д��"
      Height          =   390
      Left            =   4860
      TabIndex        =   19
      Top             =   5190
      Width           =   2145
   End
   Begin VB.CommandButton Command15 
      Caption         =   "���ڲ�������֤���ɶ���"
      Height          =   390
      Left            =   2640
      TabIndex        =   18
      Top             =   5190
      Width           =   2145
   End
   Begin VB.CommandButton Command14 
      Caption         =   "������֤����д��оƬ"
      Height          =   375
      Left            =   360
      TabIndex        =   17
      Top             =   5190
      Width           =   2235
   End
   Begin VB.TextBox Text2 
      Height          =   405
      Left            =   2190
      TabIndex        =   16
      Top             =   4350
      Width           =   1965
   End
   Begin VB.CommandButton Command13 
      Caption         =   "��ʼ��������"
      Height          =   375
      Left            =   300
      TabIndex        =   15
      Top             =   4380
      Width           =   1815
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   6630
      Top             =   4440
   End
   Begin VB.CommandButton Command12 
      Caption         =   "д���ݵ�ָ����"
      Height          =   540
      Left            =   6060
      TabIndex        =   14
      Top             =   3510
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   2070
      TabIndex        =   13
      Top             =   3690
      Width           =   3855
   End
   Begin VB.CommandButton Command11 
      Caption         =   "��ָ��������"
      Height          =   540
      Left            =   180
      TabIndex        =   12
      Top             =   3510
      Width           =   1815
   End
   Begin VB.CommandButton Command10 
      Caption         =   "д�豸�洢��2"
      Height          =   540
      Left            =   6000
      TabIndex        =   11
      Top             =   2310
      Width           =   1815
   End
   Begin VB.CommandButton Command9 
      Caption         =   "���豸�洢��2"
      Height          =   540
      Left            =   4050
      TabIndex        =   10
      Top             =   2310
      Width           =   1815
   End
   Begin VB.CommandButton Command8 
      Caption         =   "���豸�洢��1"
      Height          =   540
      Left            =   150
      TabIndex        =   9
      Top             =   2310
      Width           =   1815
   End
   Begin VB.CommandButton Command7 
      Caption         =   "д�豸�洢��1"
      Height          =   540
      Left            =   2100
      TabIndex        =   8
      Top             =   2310
      Width           =   1815
   End
   Begin VB.CommandButton Command6 
      Caption         =   "��AB���뼰������"
      Height          =   540
      Left            =   6000
      TabIndex        =   7
      Top             =   1590
      Width           =   1815
   End
   Begin VB.CommandButton Command5 
      Caption         =   "�����豸ȫ��Ψһ���豸��ţ���Ϊ���ܹ���"
      Height          =   540
      Left            =   150
      TabIndex        =   4
      Top             =   1575
      Width           =   5685
   End
   Begin VB.CommandButton Command4 
      Caption         =   "���豸��������"
      Height          =   540
      Left            =   6000
      TabIndex        =   3
      Top             =   150
      Width           =   1815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "�ĵ�������"
      Height          =   540
      Left            =   4050
      TabIndex        =   2
      Top             =   150
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "����д��"
      Height          =   540
      Left            =   2100
      TabIndex        =   1
      Top             =   150
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "���ɶ���"
      Height          =   540
      Left            =   150
      TabIndex        =   0
      Top             =   150
      Width           =   1815
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "״̬��"
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   330
      TabIndex        =   35
      Top             =   8580
      Width           =   540
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "B���룺"
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   3720
      TabIndex        =   32
      Top             =   8235
      Width           =   630
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "A���룺"
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   1620
      TabIndex        =   30
      Top             =   8235
      Width           =   630
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "���ţ�"
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   330
      TabIndex        =   29
      Top             =   8235
      Width           =   540
   End
   Begin VB.Label Label1 
      Height          =   255
      Left            =   2220
      TabIndex        =   26
      Top             =   4830
      Width           =   1935
   End
   Begin VB.Label Label3 
      Caption         =   "ÿ����ťֻ���õ�һ������������4��������������Ӧ������Ӧ�ã����Խ�ʡ�����Ŀ���ʱ��"
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   300
      TabIndex        =   6
      Top             =   840
      Width           =   7365
   End
   Begin VB.Label Label2 
      Caption         =   "���齫OUR_MIFARE.dll���Ƶ�Ӧ�ó���ͬһĿ¼��"
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   240
      TabIndex        =   5
      Top             =   3150
      Width           =   6090
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Open the comport
Private Declare Function piccreadex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long, ByVal piccdata0_2 As Long) As Byte

'Close the comport
Private Declare Function piccwriteex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long, ByVal piccdata0_2 As Long) As Byte

'�޸ĵ�����������
Private Declare Function piccchangesinglekey Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal piccoldkey As Long, ByVal piccnewkey As Long) As Byte

Private Declare Function piccchangesinglekeyex Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal piccoldkey As Long, ByVal piccnewkey As Long) As Byte

'���豸�������캯������
Private Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

'��ȡ�豸��ź�������
Private Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByVal devicenumber As Long) As Byte

'Ѱ�������ظÿ������к�
Private Declare Function piccrequest Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

'Ѱ����ѡ��ָ�����кŵ�IC��������ָ�����к�
Private Declare Function piccrequestex Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

'������д��оƬ�ڲ������Լ��ߵ�ֻд���򣬴˺���д�����������Ϊ��piccauthkey2������ʹ�á�
Private Declare Function pcdwritekeytoe2 Lib "OUR_MIFARE.dll" (ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long) As Byte

'������֤��ʽ1�����ⲿ������֤������ָ���ⲿ���롣������������piccrequest��piccrequestex����ִ��֮�����У�����Ҫ�����ŵ��ã���;���ܵ�������������
Private Declare Function piccauthkey1 Lib "OUR_MIFARE.dll" (ByVal serial As Long, ByVal area As Byte, ByVal keyA1B0 As Byte, ByVal picckey As Long) As Byte

'����һ������ݣ�Ҳ����16���ֽڡ�������ִ��piccrequest�� Piccrequestex����������ִ��piccauthkey1�� piccauthkey2������Ȼ��ִ��piccread���ܳɹ�����һ������ݡ�
Private Declare Function piccread Lib "OUR_MIFARE.dll" (ByVal block As Byte, ByVal piccdata As Long) As Byte

'дһ������ݣ�Ҳ����16���ֽڡ�������ִ��piccrequest�� Piccrequestex����������ִ��piccauthkey1�� piccauthkey2������Ȼ��ִ��piccread���ܳɹ�����һ������ݡ�
Private Declare Function piccwrite Lib "OUR_MIFARE.dll" (ByVal block As Byte, ByVal piccdata As Long) As Byte

'���豸�洢��1
Private Declare Function pcdgetcustomizedata1 Lib "OUR_MIFARE.dll" (ByVal readerdata As Long) As Byte

'д�豸�洢��1
Private Declare Function pcdsetcustomizedata1 Lib "OUR_MIFARE.dll" (ByVal readerdata As Long) As Byte


'���豸�洢��2
Private Declare Function pcdgetcustomizedata2 Lib "OUR_MIFARE.dll" (ByVal readerdata As Long, ByVal devicenumber As Long) As Byte

'д�豸�洢��2
Private Declare Function pcdsetcustomizedata2 Lib "OUR_MIFARE.dll" (ByVal readerdata As Long) As Byte

Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

'������֤UID
Private Declare Function sfzrequest Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte

'��iclass csn
Private Declare Function iso15693iclassreadcsn Lib "OUR_MIFARE.dll" (ByVal serial As Long) As Byte
        
'�����ֶ���,������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
Private Const BLOCK0_EN = &H1
Private Const BLOCK1_EN = &H2
Private Const BLOCK2_EN = &H4
Private Const NEEDSERIAL = &H8
Private Const EXTERNKEY = &H10
Private Const NEEDHALT = &H20

Dim oldkh As String


Private Sub Command1_Click()
'���ɶ���
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 47) As Byte '�����ݻ���
Dim myblockdata(0 To 15) As Byte '�����ݻ���



'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'ָ������
myareano = 8 'ָ��Ϊ��8��
'��������ģʽ
authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

'ָ������
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

status = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
'������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
'������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
'�����غ���
Select Case status

    Case 0:
        status = piccread(35, VarPtr(myblockdata(0)))
        MsgBox "�����ɹ�"
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣����" + Format(status, "0")

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
'д�豸�洢��2

'����֧��:
'��վ:
Dim status As Byte

Dim devdata(0 To 7) As Byte  '�豸�洢������

devdata(0) = 11
devdata(1) = 12
devdata(2) = 13
devdata(3) = 14
devdata(4) = 15
devdata(5) = 16
devdata(6) = 17
devdata(7) = 18

status = pcdsetcustomizedata2(VarPtr(devdata(0)))

Select Case status

    Case 0:
    
        MsgBox "�����ɹ�"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣����" + Format(status, "0")
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

Private Sub Command11_Click()
'����
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ
Dim I As Integer
Dim readinf As String
Dim myareano As Byte '����
Dim myblock As Byte  '���
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 47) As Byte '�����ݻ���
Dim myblockdata(0 To 15) As Byte '�����ݻ���

'ָ������
myareano = 8 'ָ��Ϊ��8��
myblock = myareano * 4 + 0    ''���Ϊ����*4+0��1��2��3�����е�3��Ϊ������ƿ�
'��������ģʽ
authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

'ָ������
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

Text1 = ""
status = piccrequest(VarPtr(mypiccserial(0)))
If status = 0 Then
    status = piccauthkey1(VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)))
    If status = 0 Then
        status = piccread(myblock, VarPtr(myblockdata(0)))
        If status = 0 Then
            readinf = ""
            For I = 0 To 15
                readinf = readinf + Format(Hex(myblockdata(I)), "00")
            Next
            Text1 = readinf
        Else
            errdlag status
        End If
    Else
        errdlag status
    End If
Else
    errdlag status
End If
End Sub

Private Sub Command12_Click()
'д��
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ
Dim I As Integer
Dim writinf As String
Dim myareano As Byte '����
Dim myblock As Byte  '���
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 47) As Byte '�����ݻ���
Dim myblockdata(0 To 15) As Byte '�����ݻ���

'ָ������
myareano = 8 'ָ��Ϊ��8��
myblock = myareano * 4 + 0    '���Ϊ����*4+0��1��2��3�����е�3��Ϊ������ƿ�
'��������ģʽ
authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

'ָ������
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

If myblock Mod 4 = 3 Then
    I = MsgBox("    ��ȷ��Ҫ�޸����뼰���ƿ���������д��������Ϣ�����������ϡ�", vbQuestion + vbOKCancel, "����")
    If I <> vbOK Then Exit Sub
End If

status = piccrequest(VarPtr(mypiccserial(0)))
If status = 0 Then
    status = piccauthkey1(VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)))
    If status = 0 Then
        writinf = Trim(Text1.Text) + "FFFFFFFFFFFFFF078069FFFFFFFFFFFF"
        For I = 0 To 15
            myblockdata(I) = "&H" + Mid(writinf, I * 2 + 1, 2)
        Next
        
        status = piccwrite(myblock, VarPtr(myblockdata(0)))
        If status = 0 Then
            pcdbeep 50
            MsgBox "д�������ɹ���", vbInformation + vbOKOnly, "��ʾ"
        Else
            errdlag status
        End If
    Else
        errdlag status
    End If
Else
    errdlag status
End If
End Sub

Private Sub Command13_Click()
    If Command13.Caption = "��ʼ��������" Then
        Timer1.Enabled = True
        Command13.Caption = "��ͣ��������"
        
    Else
        Timer1.Enabled = False
        Command13.Caption = "��ʼ��������"
    End If
End Sub

Private Sub Command14_Click()
'����
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ
Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim mypicckey(0 To 5) As Byte '����

'ָ������
myareano = 8 'ָ��Ϊ��8��
'��������ģʽ
authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

'ָ������
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF


    status = pcdwritekeytoe2(myareano, authmode, VarPtr(mypicckey(0)))
    If status = 0 Then
        MsgBox "IC����֤�����Ѿ�д���д��!"
    Else
        errdlag status
    End If
End Sub

Private Sub Command15_Click()
'���ɶ���
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 47) As Byte '�����ݻ���
Dim myblockdata(0 To 15) As Byte '�����ݻ���



'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
'ָ������
myareano = 8 'ָ��Ϊ��8��
'��������ģʽ
authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

'�ڲ�������֤�����Բ�����֤���룬���Ӱ�ȫ
'mypicckey(0) = &HF0
'mypicckey(1) = &HF0
'mypicckey(2) = &HF0
'mypicckey(3) = &HF0
'mypicckey(4) = &HF0
'mypicckey(5) = &HF0

status = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
'������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
'������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
'�����غ���
Select Case status

    Case 0:
        status = piccread(35, VarPtr(myblockdata(0)))   '�����뼰����λ��
        MsgBox "�����ɹ�"
        
    
    Case Else
        errdlag status

End Select

End Sub

Private Sub Command16_Click()
'����д��
'����֧��:
'��վ:
Dim I As Integer

Dim status As Byte '��ŷ���ֵ
Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 47) As Byte '�����ݻ���
        

'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
'ָ������
myareano = 8 'ָ��Ϊ��8��
'��������ģʽ
authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

'�ڲ�������֤�����Բ�����֤���룬���Ӱ�ȫ
'mypicckey(0) = &HF0
'mypicckey(1) = &HF0
'mypicckey(2) = &HF0
'mypicckey(3) = &HF0
'mypicckey(4) = &HF0
'mypicckey(5) = &HF0

'ָ��������
For I = 0 To 47
    mypiccdata(I) = I
Next I

status = piccwriteex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
'������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
'������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
'�����غ���
Select Case status

    Case 0:
    
        MsgBox "�����ɹ�"
        
    
    Case Else
        errdlag status

End Select

End Sub

Private Sub Command17_Click()
'���ɶ���
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ
Dim I, j, p As Integer
Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 255) As Byte '�����ݻ���
Dim myblockdata(0 To 15) As Byte '�����ݻ���
Dim readinf  As String


'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'ָ������
myareano = Val(Combo1.Text)  'ָ����
'��������ģʽ
authmode = 0 '����0��ʾ��A������֤���Ƽ���A������֤

'ָ������
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

Text3.Text = ""

status = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
'������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
'������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
'�����غ���
Select Case status

    Case 0:
        p = 48
        For I = 3 To 15
            status = piccread(128 + ((myareano - 32) * 16) + I, VarPtr(myblockdata(0)))
            If status = 0 Then
                For j = 0 To 15
                    mypiccdata(p) = myblockdata(j)
                    p = p + 1
                Next
            Else
                MsgBox "����" & Format(myareano * 4 + I, "0") & "�����ݳ���"
                Exit Sub
            End If
        Next
        readinf = ""
        For I = 0 To 239         '0-14�� ���ݿ�
            readinf = readinf + Format(Hex(mypiccdata(I)), "00")
        Next
        Text3.Text = readinf
        
        readinf = ""
        For I = 240 To 255     '15��������ƿ�
            readinf = readinf + Format(Hex(mypiccdata(I)), "00")
        Next
        Text4.Text = readinf
        
        MsgBox "�����ɹ�"
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣����" + Format(status, "0")

End Select
End Sub

Private Sub Command18_Click()
'����д��
'����֧��:
'��վ:
Dim I, j, p As Integer

Dim status As Byte '��ŷ���ֵ
Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 47) As Byte '�����ݻ���
Dim myblockdata(0 To 15) As Byte '�����ݻ���
Dim writhdata(0 To 240) As Byte '�����ݻ���
Dim writinf As String
        


'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'ָ������
myareano = Val(Combo1.Text) 'ָ��Ϊ��8��
'��������ģʽ
authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

'ָ������
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

writinf = Trim(Text3.Text)
For I = 0 To 239
    writinf = writinf + "00"
Next

'ָ��������
For I = 0 To 239
    writhdata(I) = "&H" + Mid(writinf, I * 2 + 1, 2)
    If I <= 47 Then mypiccdata(I) = writhdata(I)
Next I

status = piccwriteex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
'������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
'������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
'�����غ���
Select Case status
    Case 0:
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
                   MsgBox "д" & Format(128 + ((myareano - 32) * 16) + p, "0") & "�����"
                   Exit Sub
                End If
             End If
         Next
         
         pcdbeep 50
         MsgBox "�����ɹ�"
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣����" + Format(status, "0")

End Select

End Sub

Private Sub Command19_Click()
    If Command19.Caption = "��ʼ�����豸���" Then
'        Text2 = 0
        Timer2.Enabled = True
        Command19.Caption = "��ͣ�����豸���"
        
    Else
        Timer2.Enabled = False
        Command19.Caption = "��ʼ�����豸���"
        Label1.Caption = ""
    End If
End Sub

Private Sub Command2_Click()
'����д��
'����֧��:
'��վ:
Dim I As Integer

Dim status As Byte '��ŷ���ֵ
Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 47) As Byte '�����ݻ���

        


'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'ָ������
myareano = 8 'ָ��Ϊ��8��
'��������ģʽ
authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

'ָ������
mypicckey(0) = &HFF
mypicckey(1) = &HFF
mypicckey(2) = &HFF
mypicckey(3) = &HFF
mypicckey(4) = &HFF
mypicckey(5) = &HFF

'ָ��������
For I = 0 To 47
    mypiccdata(I) = I
Next I

status = piccwriteex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
'�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
'������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
'������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
'�����غ���
Select Case status

    Case 0:
    
        MsgBox "�����ɹ�"
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣����" + Format(status, "0")

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

Private Sub Command20_Click()
If Len(Text5) = 12 And Len(Text6) = 12 Then
    If Command20.Caption = "��ʼУ�鿨����" Then
        Timer3.Enabled = True
        Command20.Caption = "��ͣ"
        oldkh = ""
    Else
        Timer1.Enabled = False
        Command20.Caption = "��ʼУ�鿨����"
    End If
Else
    MsgBox "���벻��"
End If

End Sub

Private Sub Command21_Click()
Form2.Show 1
End Sub

Private Sub Command22_Click()
Form3.Show 1
End Sub

Private Sub Command23_Click()
    If Command23.Caption = "��ʼ�����������֤UID" Then
        Timer4.Enabled = True
        Command23.Caption = "��ͣ��������"
        
    Else
        Timer4.Enabled = False
        Command23.Caption = "��ʼ�����������֤UID"
        Text8.Text = ""
    End If
End Sub

Private Sub Command24_Click()
    If Command24.Caption = "��ʼ����HID ICLASS CSN" Then
        Timer5.Enabled = True
        Command24.Caption = "��ͣ��������"
        
    Else
        Timer5.Enabled = False
        Command24.Caption = "��ʼ����HID ICLASS CSN"
        Text8.Text = ""
    End If
End Sub

Private Sub Command25_Click()
Form4.Show 1
End Sub

Private Sub Command26_Click()
Form5.Show 1
End Sub

Private Sub Command3_Click()
'�޸ĵ�������
'����֧��:
'��վ:
Dim I As Integer

Dim status As Byte '��ŷ���ֵ
Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccoldkey(0 To 5) As Byte '������
Dim mypiccnewkey(0 To 5) As Byte '������




        


'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'ָ������
myareano = 8 'ָ��Ϊ��8��
'��������ģʽ
authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

'ָ��������
mypiccoldkey(0) = &HFF
mypiccoldkey(1) = &HFF
mypiccoldkey(2) = &HFF
mypiccoldkey(3) = &HFF
mypiccoldkey(4) = &HFF
mypiccoldkey(5) = &HFF

'ָ��������,ע�⣺ָ��������ʱһ��Ҫ��ס�������п����Ҳ������룬���¸ÿ����ϡ�
mypiccnewkey(0) = &HFF
mypiccnewkey(1) = &HFF
mypiccnewkey(2) = &HFF
mypiccnewkey(3) = &HFF
mypiccnewkey(4) = &HFF
mypiccnewkey(5) = &HFF

status = piccchangesinglekey(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypiccoldkey(0)), VarPtr(mypiccnewkey(0)))

'�����غ���
Select Case status

    Case 0:
    
        MsgBox "�����ɹ�"
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣����" + Format(status, "0")

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
'�޸ĵ�������
'����֧��:
'��վ:
Dim I As Integer

Dim status As Byte '��ŷ���ֵ
Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccoldkey(0 To 5) As Byte '������
Dim mypiccnewkey(0 To 16) As Byte '������




        


'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

'ָ������
myareano = 10 'ָ��Ϊ��8��
'��������ģʽ
authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

'ָ��������
mypiccoldkey(0) = &HFF
mypiccoldkey(1) = &HFF
mypiccoldkey(2) = &HFF
mypiccoldkey(3) = &HFF
mypiccoldkey(4) = &HFF
mypiccoldkey(5) = &HFF

'ָ��������,ע�⣺ָ��������ʱһ��Ҫ��ס�������п����Ҳ������룬���¸ÿ����ϡ�
mypiccnewkey(0) = &HFF  'A����
mypiccnewkey(1) = &HFF
mypiccnewkey(2) = &HFF
mypiccnewkey(3) = &HFF
mypiccnewkey(4) = &HFF
mypiccnewkey(5) = &HFF

mypiccnewkey(6) = &HFF  '������
mypiccnewkey(7) = &H7
mypiccnewkey(8) = &H80
mypiccnewkey(9) = &H69

mypiccnewkey(10) = &HFF  'B����
mypiccnewkey(11) = &HFF
mypiccnewkey(12) = &HFF
mypiccnewkey(13) = &HFF
mypiccnewkey(14) = &HFF
mypiccnewkey(15) = &HFF

mypiccnewkey(16) = &H3  '3�Ǳ�ʾͬʱ����A��B�� ����Ȩ�޷����֣�Ϊ2��ʾ����Ȩ�޷����ֲ����ģ�ֻ��A��B���룬Ϊ0��ʾֻ��A����


status = piccchangesinglekeyex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypiccoldkey(0)), VarPtr(mypiccnewkey(0)))

'�����غ���
Select Case status

    Case 0:
    
        MsgBox "�����ɹ�"
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣����" + Format(status, "0")

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
'д�豸�洢��1

'����֧��:
'��վ:
Dim status As Byte

Dim devdata(0 To 3) As Byte  '�豸�洢������

devdata(0) = 1
devdata(1) = 2
devdata(2) = 3
devdata(3) = 4


status = pcdsetcustomizedata1(VarPtr(devdata(0)))

Select Case status

    Case 0:
    
        MsgBox "�����ɹ�"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣����" + Format(status, "0")

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
'���豸�洢��1

'����֧��:
'��վ:
Dim status As Byte

Dim devdata(0 To 3) As Byte  '�豸�洢������

status = pcdgetcustomizedata1(VarPtr(devdata(0)))

If status = 0 Then
    MsgBox CStr(devdata(0)) + "-" + CStr(devdata(1)) + "-" + CStr(devdata(2)) + "-" + CStr(devdata(3))
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

Private Sub Command9_Click()
'���豸�洢��2

'����֧��:
'��վ:
Dim status As Byte

Dim devdata(0 To 7) As Byte  '�豸�洢������
Dim devno(0 To 3) As Byte '�豸���


status = pcdgetcustomizedata2(VarPtr(devdata(0)), VarPtr(devno(0)))

If status = 0 Then
    MsgBox "���ݣ�" + CStr(devdata(0)) + "-" + CStr(devdata(1)) + "-" + CStr(devdata(2)) + "-" + CStr(devdata(3)) + "-" + CStr(devdata(4)) + "-" + CStr(devdata(5)) + "-" + CStr(devdata(6)) + "-" + CStr(devdata(7)) + _
    "�豸��ţ�" + CStr(devno(0)) + "-" + CStr(devno(1)) + "-" + CStr(devno(2)) + "-" + CStr(devno(3))
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

Private Sub errdlag(ByVal status As Byte)
Select Case status
    Case 1
        MsgBox "0~2�鶼û������������ˢ��̫�顣�������к��ѱ���������", vbCritical + vbOKOnly, "��ʾ"
    Case 2
        MsgBox "��0���ѱ���������1~2���ȡʧ�ܡ������к��ѱ���������", vbCritical + vbOKOnly, "��ʾ"
    Case 3
        MsgBox "��0��1���ѱ���������2���ȡʧ�ܡ������к��ѱ���������", vbCritical + vbOKOnly, "��ʾ"
    Case 8
        MsgBox "�뽫�����ڸ�Ӧ����", vbCritical + vbOKOnly, "��ʾ"
    Case 9
        MsgBox "�ж��ſ��ڸ�Ӧ����Ѱ�������з���ͻʧ�ܡ�", vbCritical + vbOKOnly, "��ʾ"
    Case 10
        MsgBox "�ÿ������ѱ����ߣ��޷�ѡ�С�", vbCritical + vbOKOnly, "��ʾ"
    Case 11
        MsgBox "����װ��ʧ�ܡ�", vbCritical + vbOKOnly, "��ʾ"
    Case 12
        MsgBox "��������֤ʧ�ܡ�", vbCritical + vbOKOnly, "��ʾ"
    Case 13
        MsgBox "��������ʧ�ܣ�ԭ���Ǳ�������Ӧ������ûͨ��������֤��", vbCritical + vbOKOnly, "��ʾ"
    Case 14
        MsgBox "д������ʧ�ܣ�ԭ���Ǳ�������Ӧ������ûͨ��������֤��", vbCritical + vbOKOnly, "��ʾ"
    Case 21
        MsgBox "û�ж�̬�⣬��̬������쳣��", vbCritical + vbOKOnly, "��ʾ"
    Case 22
        MsgBox "��̬������������쳣������������˳����򣬰γ�IC����д������װ���������ٲ���IC����д�����ԡ�", vbCritical + vbOKOnly, "��ʾ"
    Case 23
        MsgBox "��������������δ��װ��", vbCritical + vbOKOnly, "��ʾ"
    Case 24
        MsgBox "������ʱ��һ���Ƕ�̬��û�з�Ӧ��", vbCritical + vbOKOnly, "��ʾ"
    Case 25
        MsgBox "��������������", vbCritical + vbOKOnly, "��ʾ"
    Case 26
        MsgBox "���͵�CRC��", vbCritical + vbOKOnly, "��ʾ"
    Case 27
        MsgBox "���յ�����������", vbCritical + vbOKOnly, "��ʾ"
    Case 28
        MsgBox "���յ�CRC��", vbCritical + vbOKOnly, "��ʾ"
End Select
End Sub

Private Sub Form_Load()
Combo1.ListIndex = 0
Combo2.ListIndex = 8
End Sub

Private Sub Timer1_Timer()
'���ɶ���
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim mypiccserial(0 To 3) As Byte '�����к�


Dim cardhao As Double



status = piccrequest(VarPtr(mypiccserial(0)))
'�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
'������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
'������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
'�����غ���
Select Case status

    Case 0:

        cardhao = mypiccserial(3)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(2)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(1)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(0)
        
        
        Text2.Text = Right("000000000" + CStr(cardhao), 10)
        
        pcdbeep 30
    Case 8:
    
        Text2.Text = "�뽫�����ڸ�Ӧ��"
        
    Case 21: 'û�ж�̬��
        Text2.Text = "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    

    Case 23: 'û�ж�̬��
        Text2.Text = "������USB ��д��"
        
        
    Case Else
        
        Text2.Text = "�쳣����" + Format(status, "0")
End Select

End Sub

Private Sub Timer2_Timer()
Dim status As Byte

Dim devno(0 To 3) As Byte '�豸���

status = pcdgetdevicenumber(VarPtr(devno(0)))

If status = 0 Then
    pcdbeep 10
    Text2 = Val(Text2) + 1
    Label1.Caption = CStr(devno(0)) + "-" + CStr(devno(1)) + "-" + CStr(devno(2)) + "-" + CStr(devno(3))
End If
End Sub

Private Sub Timer3_Timer()
Dim status As Byte '��ŷ���ֵ
Dim statusa As Byte '��ŷ���ֵ
Dim statusb As Byte '��ŷ���ֵ
Dim dispstr As String

Dim cardhao As Double

Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 47) As Byte '�����ݻ���
Dim myblockdata(0 To 15) As Byte '�����ݻ���


status = piccrequest(VarPtr(mypiccserial(0)))
'�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
'������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
'������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
'�����غ���
Select Case status

    Case 0:

        cardhao = mypiccserial(3)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(2)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(1)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(0)
        
        If oldkh <> Format(cardhao, "0") Then
            oldkh = cardhao
            dispstr = Right("000000000" + CStr(cardhao), 10)
            
            '������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
            myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY
    
            'ָ������
            myareano = Combo2.ListIndex   'ָ����
            '��������ģʽ
            authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤
            
            'ָ������
            mypicckey(0) = "&H" & Mid(Text5, 1, 2)
            mypicckey(1) = "&H" & Mid(Text5, 3, 2)
            mypicckey(2) = "&H" & Mid(Text5, 5, 2)
            mypicckey(3) = "&H" & Mid(Text5, 7, 2)
            mypicckey(4) = "&H" & Mid(Text5, 9, 2)
            mypicckey(5) = "&H" & Mid(Text5, 11, 2)
            statusa = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
            
            authmode = 0 '����0��ʾ��A������֤���Ƽ���A������֤
            mypicckey(0) = "&H" & Mid(Text6, 1, 2)
            mypicckey(1) = "&H" & Mid(Text6, 3, 2)
            mypicckey(2) = "&H" & Mid(Text6, 5, 2)
            mypicckey(3) = "&H" & Mid(Text6, 7, 2)
            mypicckey(4) = "&H" & Mid(Text6, 9, 2)
            mypicckey(5) = "&H" & Mid(Text6, 11, 2)
            statusb = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
            
            
            If statusa = 0 Then
                dispstr = dispstr + "��A������֤�ɹ�"
            Else
                dispstr = dispstr + "��A������֤ʧ�ܣ�����"
            End If
            If statusb = 0 Then
                dispstr = dispstr + "��B������֤�ɹ���"
            Else
                dispstr = dispstr + "��B������֤ʧ�ܣ�����"
            End If
            Text7 = dispstr
            
            If statusa + statusb = 0 Then
                Text7.ForeColor = &H80000008
                pcdbeep 38
            Else
                Text7.ForeColor = &HFF&
                pcdbeep 30
                Sleep 50
                pcdbeep 50
                Sleep 50
                pcdbeep 80
                
            End If
        End If
    Case 8:
    
        Text7.Text = "�뽫�����ڸ�Ӧ��"
        
    Case 21: 'û�ж�̬��
        Text7.Text = "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    

    Case 23: 'û�ж�̬��
'        Text7.Text = "������USB ��д��"
        
        
    Case Else
        
        Text7.Text = "�쳣����" + Format(status, "0")

End Select

End Sub

Private Sub Timer4_Timer()
Dim status As Byte '��ŷ���ֵ
Dim mypiccserial(0 To 7) As Byte '�����к�
Dim cardhao As Double
Dim dispstr As String
status = sfzrequest(VarPtr(mypiccserial(0)))
Select Case status
    Case 0:

        cardhao = mypiccserial(3)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(2)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(1)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(0)
        
        dispstr = "��ȡ8λ16����UID��"
        For I = 7 To 0 Step -1
            dispstr = dispstr + Right("00" + Hex(mypiccserial(I)), 2) + " "
        Next
        dispstr = dispstr + "��ת8H10D���ţ�" + Right("000000000" + CStr(cardhao), 10)
        Text8.Text = dispstr
        
        pcdbeep 30
    Case 8:
        Text8.Text = "�뽫�������֤���ڸ�Ӧ��..."
    Case 21: 'û�ж�̬��
        Text8.Text = "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    Case 23: 'û�ж�̬��
        Text8.Text = "������δ���ӻ���ļ�����"
    Case Else
        
        Text8.Text = "�쳣����" + Format(status, "0")
End Select
End Sub

Private Sub Timer5_Timer()
Dim status As Byte '��ŷ���ֵ
Dim mypiccserial(0 To 7) As Byte '�����к�
Dim cardhao As Double
Dim dispstr As String
status = iso15693iclassreadcsn(VarPtr(mypiccserial(0)))
Select Case status
    Case 0:

        cardhao = mypiccserial(3)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(2)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(1)
        cardhao = cardhao * 256
        cardhao = cardhao + mypiccserial(0)
        
        dispstr = "��ȡ8λ16����UID��"
        For I = 7 To 0 Step -1
            dispstr = dispstr + Right("00" + Hex(mypiccserial(I)), 2) + " "
        Next
        dispstr = dispstr + "��ת8H10D���ţ�" + Right("000000000" + CStr(cardhao), 10)
        Text8.Text = dispstr
        
        pcdbeep 30
    Case 8:
        Text8.Text = "�뽫HID iCLass�����ڸ�Ӧ��..."
    Case 21: 'û�ж�̬��
        Text8.Text = "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    Case 23: 'û�ж�̬��
        Text8.Text = "������δ���ӻ���ļ�����"
    Case Else
        
        Text8.Text = "�쳣����" + Format(status, "0")
End Select

End Sub
