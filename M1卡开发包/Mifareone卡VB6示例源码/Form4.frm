VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "��дIC��"
   ClientHeight    =   5040
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8805
   BeginProperty Font 
      Name            =   "����"
      Size            =   10.5
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5040
   ScaleWidth      =   8805
   StartUpPosition =   2  '��Ļ����
   Begin VB.OptionButton Option2 
      Caption         =   "�ڲ�������֤"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4680
      TabIndex        =   18
      Top             =   540
      Width           =   1425
   End
   Begin VB.OptionButton Option1 
      Caption         =   "�ⲿ������֤"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3150
      TabIndex        =   17
      Top             =   540
      Value           =   -1  'True
      Width           =   1425
   End
   Begin VB.CommandButton Command3 
      Caption         =   "������д������"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   1050
      Width           =   1965
   End
   Begin VB.TextBox Text1 
      ForeColor       =   &H000000FF&
      Height          =   315
      Left            =   1050
      MultiLine       =   -1  'True
      TabIndex        =   15
      Top             =   4590
      Width           =   5190
   End
   Begin VB.CommandButton Command6 
      Caption         =   "��AB���뼰������"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   2130
      Width           =   1965
   End
   Begin VB.TextBox Text3 
      Height          =   3285
      Left            =   1050
      MultiLine       =   -1  'True
      TabIndex        =   13
      Top             =   1290
      Width           =   5190
   End
   Begin VB.CommandButton Command2 
      Caption         =   "����д��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   1770
      Width           =   1965
   End
   Begin VB.CommandButton Command1 
      Caption         =   "���ɶ���"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   1410
      Width           =   1965
   End
   Begin VB.TextBox Text5 
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5400
      TabIndex        =   4
      Text            =   "FFFFFFFFFFFF"
      Top             =   60
      Width           =   1215
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      ItemData        =   "Form4.frx":0000
      Left            =   3150
      List            =   "Form4.frx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   60
      Width           =   1035
   End
   Begin VB.ComboBox Combo2 
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      ItemData        =   "Form4.frx":001C
      Left            =   780
      List            =   "Form4.frx":00E0
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   90
      Width           =   945
   End
   Begin VB.Label Label20 
      AutoSize        =   -1  'True
      Caption         =   "��12�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   420
      TabIndex        =   30
      Top             =   3900
      Width           =   720
   End
   Begin VB.Label Label19 
      AutoSize        =   -1  'True
      Caption         =   "��13�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   420
      TabIndex        =   29
      Top             =   4095
      Width           =   720
   End
   Begin VB.Label Label18 
      AutoSize        =   -1  'True
      Caption         =   "��14�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   420
      TabIndex        =   28
      Top             =   4305
      Width           =   720
   End
   Begin VB.Label Label17 
      AutoSize        =   -1  'True
      Caption         =   "�� 9�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   27
      Top             =   3270
      Width           =   720
   End
   Begin VB.Label Label16 
      AutoSize        =   -1  'True
      Caption         =   "��10�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   26
      Top             =   3465
      Width           =   720
   End
   Begin VB.Label Label15 
      AutoSize        =   -1  'True
      Caption         =   "��11�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   25
      Top             =   3675
      Width           =   720
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      Caption         =   "�� 6�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   24
      Top             =   2640
      Width           =   720
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      Caption         =   "�� 7�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   23
      Top             =   2835
      Width           =   720
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "�� 8�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   22
      Top             =   3045
      Width           =   720
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "�� 3�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   21
      Top             =   1980
      Width           =   720
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "�� 4�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   20
      Top             =   2205
      Width           =   720
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "�� 5�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   19
      Top             =   2415
      Width           =   720
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "������ƿ飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Left            =   60
      TabIndex        =   11
      Top             =   4680
      Width           =   1080
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "�� 2�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   10
      Top             =   1755
      Width           =   720
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "�� 1�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   9
      Top             =   1545
      Width           =   720
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "�� 0�飺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Left            =   390
      TabIndex        =   8
      Top             =   1350
      Width           =   720
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F"
      ForeColor       =   &H00FF0000&
      Height          =   210
      Left            =   1080
      TabIndex        =   7
      Top             =   1050
      Width           =   4935
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "����֤���룺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   4380
      TabIndex        =   5
      Top             =   150
      Width           =   1080
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��������֤��ʽ��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   1800
      TabIndex        =   3
      Top             =   150
      Width           =   1440
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "���ţ�"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   210
      TabIndex        =   1
      Top             =   180
      Width           =   540
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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


        
'�����ֶ���,������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
Private Const BLOCK0_EN = &H1
Private Const BLOCK1_EN = &H2
Private Const BLOCK2_EN = &H4
Private Const NEEDSERIAL = &H8
Private Const EXTERNKEY = &H10
Private Const NEEDHALT = &H20


Private Sub Command1_Click()

Dim status As Byte '��ŷ���ֵ

Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 255) As Byte '�����ݻ���
Dim myblockdata(0 To 15) As Byte '�����ݻ���



'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
If Option1.Value Then myctrlword = myctrlword + EXTERNKEY    '�ⲿ������֤

'ָ������
myareano = Combo2.ListIndex  'ָ��Ϊ��8��
'��������ģʽ
authmode = Combo1.ListIndex  '����0��ʾ��A������֤���Ƽ���A������֤

'ָ������
mypicckey(0) = "&H" & Mid(Text5, 1, 2)
mypicckey(1) = "&H" & Mid(Text5, 3, 2)
mypicckey(2) = "&H" & Mid(Text5, 5, 2)
mypicckey(3) = "&H" & Mid(Text5, 7, 2)
mypicckey(4) = "&H" & Mid(Text5, 9, 2)
mypicckey(5) = "&H" & Mid(Text5, 11, 2)
            
Text3.Text = ""
Text1.Text = ""

status = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
            
'�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
'������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
'������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
'�����غ���
Select Case status

    Case 0:
         If myareano < 63 Then
                infstr = ""
                For j = 0 To 2
                   For I = 0 To 15
                       infstr = infstr + Right("00" + Hex(mypiccdata(j * 16 + I)), 2) + " "
                   Next I
                Next j
                Text3.Text = infstr
                
                infstr = ""
                status = piccread(myareano * 4 + 3, VarPtr(myblockdata(0)))
                If status = 0 Then
                    For I = 0 To 15
                        infstr = infstr + Right("00" + Hex(myblockdata(I)), 2) + " "
                    Next I
                    Text1.Text = infstr
                End If
                pcdbeep 50
                MsgBox "�����ɹ�"
         Else
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
                    readinf = readinf + Format(Hex(mypiccdata(I)), "00") + " "
                Next
                Text3.Text = readinf
                
                readinf = ""
                For I = 240 To 255     '15��������ƿ�
                    readinf = readinf + Format(Hex(mypiccdata(I)), "00") + " "
                Next
                Text1.Text = readinf
                
                MsgBox "�����ɹ�"
         
         End If
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣" + Format(status, "0")

End Select
End Sub

Private Sub Command2_Click()
Dim writestr As String
Dim I As Integer

Dim status As Byte '��ŷ���ֵ
Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 47) As Byte '�����ݻ���
Dim writhdata(0 To 240) As Byte '�����ݻ���
Dim myblockdata(0 To 15) As Byte '�����ݻ���

writestr = Trim(Text3.Text)

If Combo2.ListIndex < 64 Then
    If Len(Trim(writestr)) < 143 Then
        MsgBox "д�����ݲ��㣬�벹��д������"
        Exit Sub
    End If
    For I = 0 To 47
        mypiccdata(I) = "&H" + Mid(writestr, I * 3 + 1, 2)
    Next I
Else
    If Len(Trim(writestr)) < 719 Then
        MsgBox "д�����ݲ��㣬�벹��д������"
        Exit Sub
    End If
    For I = 0 To 239
        writhdata(I) = "&H" + Mid(writestr, I * 3 + 1, 2)
        If I <= 47 Then mypiccdata(I) = writhdata(I)
    Next I
End If

On Error GoTo err1:

'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
If Option1.Value Then myctrlword = myctrlword + EXTERNKEY    '�ⲿ������֤

'ָ������
myareano = Combo2.ListIndex  'ָ��Ϊ��8��
'��������ģʽ
authmode = Combo1.ListIndex  '����0��ʾ��A������֤���Ƽ���A������֤

'ָ������
mypicckey(0) = "&H" & Mid(Text5, 1, 2)
mypicckey(1) = "&H" & Mid(Text5, 3, 2)
mypicckey(2) = "&H" & Mid(Text5, 5, 2)
mypicckey(3) = "&H" & Mid(Text5, 7, 2)
mypicckey(4) = "&H" & Mid(Text5, 9, 2)
mypicckey(5) = "&H" & Mid(Text5, 11, 2)

status = piccwriteex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
Select Case status

    Case 0:
        If Combo2.ListIndex > 64 Then
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
        End If
        
        pcdbeep 50
        MsgBox "д���ɹ�"
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣" + Format(status, "0")

End Select

Exit Sub


err1:
    MsgBox "д�����ݴ�����������ȷ��16����д������"

End Sub

Private Sub Command3_Click()
pcdbeep 50
End Sub

Private Sub Command6_Click()
Dim I As Integer

Dim status As Byte '��ŷ���ֵ
Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim myctrlword As Byte '������
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccoldkey(0 To 5) As Byte '������
Dim mypiccnewkey(0 To 16) As Byte '������



'������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
If Option1.Value Then myctrlword = myctrlword + EXTERNKEY    '�ⲿ������֤

'ָ������
myareano = Combo2.ListIndex  'ָ��Ϊ��8��
'��������ģʽ
authmode = Combo1.ListIndex  '����0��ʾ��A������֤���Ƽ���A������֤

'ָ������
 On Error GoTo err1:
 
mypiccoldkey(0) = "&H" & Mid(Text5, 1, 2)
mypiccoldkey(1) = "&H" & Mid(Text5, 3, 2)
mypiccoldkey(2) = "&H" & Mid(Text5, 5, 2)
mypiccoldkey(3) = "&H" & Mid(Text5, 7, 2)
mypiccoldkey(4) = "&H" & Mid(Text5, 9, 2)
mypiccoldkey(5) = "&H" & Mid(Text5, 11, 2)


'ָ��������,ע�⣺ָ��������ʱһ��Ҫ��ס�������п����Ҳ������룬���¸ÿ����ϡ�
newkey = Trim(Text1.Text)
For I = 0 To 15
    mypiccnewkey(I) = "&H" & Mid(newkey, I * 3 + 1, 2)
Next

'mypiccnewkey(0) = "&H" & Mid(Text1, 1, 2)  'A����
'mypiccnewkey(1) = "&H" & Mid(Text1, 4, 2)
'mypiccnewkey(2) = "&H" & Mid(Text1, 7, 2)
'mypiccnewkey(3) = "&H" & Mid(Text1, 10, 2)
'mypiccnewkey(4) = "&H" & Mid(Text1, 13, 2)
'mypiccnewkey(5) = "&H" & Mid(Text1, 16, 2)
'
'mypiccnewkey(6) = "&H" & Mid(Text1, 19, 2) '������
'mypiccnewkey(7) = "&H" & Mid(Text1, 22, 2)
'mypiccnewkey(8) = "&H" & Mid(Text1, 25, 2)
'mypiccnewkey(9) = "&H" & Mid(Text1, 28, 2)
'
'mypiccnewkey(10) = "&H" & Mid(Text1, 31, 2) 'B����
'mypiccnewkey(11) = "&H" & Mid(Text1, 34, 2)
'mypiccnewkey(12) = "&H" & Mid(Text1, 37, 2)
'mypiccnewkey(13) = "&H" & Mid(Text1, 40, 2)
'mypiccnewkey(14) = "&H" & Mid(Text1, 43, 2)
'mypiccnewkey(15) = "&H" & Mid(Text1, 46, 2)


mypiccnewkey(16) = &H3  '3�Ǳ�ʾͬʱ����A��B�� ����Ȩ�޷����֣�Ϊ2��ʾ����Ȩ�޷����ֲ����ģ�ֻ��A��B���룬Ϊ0��ʾֻ��A����

answ = MsgBox("��ȷ���޸�������ƿ�������𣬴˿����������д�˴�������ݿ�Ƭ�����ϣ�", vbQuestion + vbOKCancel, "����")
If answ <> vbOK Then Exit Sub

status = piccchangesinglekeyex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypiccoldkey(0)), VarPtr(mypiccnewkey(0)))

'�����غ���
Select Case status

    Case 0:
        pcdbeep 50
        MsgBox "�����ɹ�"
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        
    Case 21 'û�ж�̬��
        MsgBox "�Ҳ�����̬��ICUSB.DLL�뽫ICUSB.DLL������VB��װ���Ŀ¼VB98��"
    
    Case Else
        MsgBox "�쳣" + Format(status, "0")

End Select

Exit Sub


err1:
    MsgBox "д�����ݴ�����������ȷ��16����д������"

End Sub

Private Sub Form_Load()
Combo1.ListIndex = 1
Combo2.ListIndex = 16


End Sub
