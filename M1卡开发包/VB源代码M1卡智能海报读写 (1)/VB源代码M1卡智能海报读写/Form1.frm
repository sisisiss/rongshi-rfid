VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "M1��NFC���ܺ�����д���ӳ���"
   ClientHeight    =   9450
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   17625
   ForeColor       =   &H8000000F&
   LinkTopic       =   "Form1"
   ScaleHeight     =   9450
   ScaleWidth      =   17625
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text23 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3480
      TabIndex        =   67
      Text            =   "com.tencent.mm"
      Top             =   8100
      Width           =   4695
   End
   Begin VB.ComboBox Combo4 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      ItemData        =   "Form1.frx":0000
      Left            =   1080
      List            =   "Form1.frx":0031
      Style           =   2  'Dropdown List
      TabIndex        =   66
      Top             =   8160
      Width           =   1335
   End
   Begin VB.TextBox Text22 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4560
      MaxLength       =   12
      TabIndex        =   63
      Text            =   "112233445566"
      Top             =   7440
      Width           =   1335
   End
   Begin VB.TextBox Text21 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   61
      Text            =   "ABC"
      Top             =   7440
      Width           =   1215
   End
   Begin VB.ComboBox Combo3 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      ItemData        =   "Form1.frx":00A9
      Left            =   6600
      List            =   "Form1.frx":00BC
      Style           =   2  'Dropdown List
      TabIndex        =   58
      Top             =   6750
      Width           =   1455
   End
   Begin VB.TextBox Text20 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   55
      Text            =   "text/plain"
      Top             =   8820
      Width           =   2055
   End
   Begin VB.TextBox Text19 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3840
      TabIndex        =   54
      Text            =   "123456"
      Top             =   8820
      Width           =   6015
   End
   Begin VB.TextBox Text18 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   51
      Text            =   "ABC"
      Top             =   6720
      Width           =   1455
   End
   Begin VB.TextBox Text17 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   8760
      TabIndex        =   50
      Text            =   "123456"
      Top             =   6720
      Width           =   1455
   End
   Begin VB.ComboBox Combo2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      ItemData        =   "Form1.frx":00DE
      Left            =   3600
      List            =   "Form1.frx":00FA
      Style           =   2  'Dropdown List
      TabIndex        =   49
      Top             =   6750
      Width           =   1935
   End
   Begin VB.TextBox Text16 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3000
      TabIndex        =   47
      Text            =   "www.www.cn"
      Top             =   6000
      Width           =   1575
   End
   Begin VB.TextBox Text15 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   45
      Text            =   "www@www.cn"
      Top             =   6000
      Width           =   1575
   End
   Begin VB.TextBox Text14 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6960
      TabIndex        =   43
      Text            =   "�й�����"
      Top             =   5400
      Width           =   1575
   End
   Begin VB.TextBox Text13 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4680
      TabIndex        =   41
      Text            =   "����"
      Top             =   5400
      Width           =   1575
   End
   Begin VB.TextBox Text12 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2400
      TabIndex        =   39
      Text            =   "01012345678"
      Top             =   5400
      Width           =   1575
   End
   Begin VB.TextBox Text10 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   37
      Text            =   "��������"
      Top             =   5400
      Width           =   975
   End
   Begin VB.TextBox Text9 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   35
      Text            =   "01012345678"
      Top             =   4680
      Width           =   1575
   End
   Begin VB.CommandButton Command15 
      BackColor       =   &H00C0FFC0&
      Caption         =   "����  д�뿨Ƭ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9960
      Style           =   1  'Graphical
      TabIndex        =   34
      Top             =   8820
      Width           =   2175
   End
   Begin VB.CommandButton Command14 
      BackColor       =   &H00C0FFC0&
      Caption         =   "APPӦ������  д�뿨Ƭ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   8280
      Style           =   1  'Graphical
      TabIndex        =   33
      Top             =   8100
      Width           =   2655
   End
   Begin VB.CommandButton Command11 
      BackColor       =   &H00C0FFC0&
      Caption         =   "WIFI  д�뿨Ƭ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   10320
      Style           =   1  'Graphical
      TabIndex        =   32
      Top             =   6720
      Width           =   1815
   End
   Begin VB.CommandButton Command10 
      BackColor       =   &H00C0FFC0&
      Caption         =   "����  д�뿨Ƭ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6000
      Style           =   1  'Graphical
      TabIndex        =   31
      Top             =   7440
      Width           =   2175
   End
   Begin VB.CommandButton Command9 
      BackColor       =   &H00C0FFC0&
      Caption         =   "��Ƭ  д�뿨Ƭ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6360
      Style           =   1  'Graphical
      TabIndex        =   30
      Top             =   5880
      Width           =   2175
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00C0FFC0&
      Caption         =   "�绰  д�뿨Ƭ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   29
      Top             =   4680
      Width           =   2175
   End
   Begin VB.TextBox Text6 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   27
      Text            =   "������������"
      Top             =   3960
      Width           =   1575
   End
   Begin VB.TextBox Text5 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   960
      TabIndex        =   25
      Text            =   "����������ˣ��������������������������֣�����������Ʋʡ�"
      Top             =   3300
      Width           =   8775
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "���ı�   д�뿨Ƭ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9960
      Style           =   1  'Graphical
      TabIndex        =   24
      Top             =   3240
      Width           =   2175
   End
   Begin VB.CheckBox Check1 
      Caption         =   "������д�����Ŀ�����Ҫ��������룺"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   22
      Top             =   1440
      Width           =   3375
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      MaxLength       =   12
      TabIndex        =   20
      Text            =   "FFFFFFFFFFFF"
      Top             =   1860
      Width           =   1335
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      ItemData        =   "Form1.frx":0145
      Left            =   2760
      List            =   "Form1.frx":01B5
      Style           =   2  'Dropdown List
      TabIndex        =   18
      Top             =   2400
      Width           =   3255
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3600
      MaxLength       =   12
      TabIndex        =   17
      Text            =   "FFFFFFFFFFFF"
      Top             =   1380
      Width           =   1335
   End
   Begin VB.CheckBox Check2 
      Caption         =   "��Ҫд������,�����������룺"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   16
      Top             =   1920
      Width           =   2775
   End
   Begin VB.CommandButton Command13 
      BackColor       =   &H0080C0FF&
      Caption         =   "��ȡNFC�������еļ�¼"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   12240
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   600
      Width           =   2895
   End
   Begin VB.TextBox Text8 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      TabIndex        =   14
      Text            =   "23.140693"
      Top             =   3960
      Width           =   1695
   End
   Begin VB.CommandButton Command12 
      BackColor       =   &H0080C0FF&
      Caption         =   "����λ��   д�뿨Ƭ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   3960
      Width           =   2295
   End
   Begin VB.TextBox Text11 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   8175
      Left            =   12240
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   11
      Top             =   1080
      Width           =   5175
   End
   Begin VB.CommandButton Command8 
      BackColor       =   &H00C0FFC0&
      Caption         =   "������ݻ���"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5160
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   1860
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "��ճɳ�����"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5160
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   1380
      Width           =   1695
   End
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6120
      TabIndex        =   8
      Text            =   "www.baidu.com"
      Top             =   2400
      Width           =   3615
   End
   Begin VB.TextBox Text7 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   7
      Text            =   "113.321905"
      Top             =   3960
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0FFC0&
      Caption         =   "����   д�뿨Ƭ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9960
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2400
      Width           =   2175
   End
   Begin VB.CommandButton Command7 
      BackColor       =   &H00C0FFC0&
      Caption         =   "��ʼ����NFC���ܺ�����"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6960
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   1380
      Width           =   2775
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   3
      Text            =   "�ٶ�"
      Top             =   2400
      Width           =   1335
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H00C0FFC0&
      Caption         =   "�����豸ȫ��Ψһ���豸��ţ���Ϊ���ܹ���"
      Height          =   420
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   600
      Width           =   4905
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H0080C0FF&
      Caption         =   "���豸��������"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   7320
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   600
      Width           =   2415
   End
   Begin VB.Label Label25 
      Caption         =   "�豸����"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2640
      TabIndex        =   68
      Top             =   8160
      Width           =   735
   End
   Begin VB.Label Label24 
      Caption         =   "APPӦ��"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   65
      Top             =   8160
      Width           =   735
   End
   Begin VB.Label Label23 
      Caption         =   "����MAC��ַ(ʮ������)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2520
      TabIndex        =   64
      Top             =   7500
      Width           =   1935
   End
   Begin VB.Label Label22 
      Caption         =   "�豸����"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   62
      Top             =   7500
      Width           =   735
   End
   Begin VB.Label Label21 
      Caption         =   "�����㷨"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5760
      TabIndex        =   60
      Top             =   6780
      Width           =   735
   End
   Begin VB.Label Label15 
      Caption         =   "��֤��ʽ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2760
      TabIndex        =   59
      Top             =   6780
      Width           =   735
   End
   Begin VB.Label Label20 
      Caption         =   "��������"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   57
      Top             =   8880
      Width           =   735
   End
   Begin VB.Label Label19 
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3360
      TabIndex        =   56
      Top             =   8880
      Width           =   495
   End
   Begin VB.Label Label17 
      Caption         =   "��������"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   53
      Top             =   6780
      Width           =   735
   End
   Begin VB.Label Label16 
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8280
      TabIndex        =   52
      Top             =   6780
      Width           =   375
   End
   Begin VB.Label Label13 
      Caption         =   "��ַ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2520
      TabIndex        =   48
      Top             =   6060
      Width           =   495
   End
   Begin VB.Label Label12 
      Caption         =   "�ʼ�"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   46
      Top             =   6060
      Width           =   495
   End
   Begin VB.Label Label11 
      Caption         =   "��ַ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6480
      TabIndex        =   44
      Top             =   5460
      Width           =   495
   End
   Begin VB.Label Label10 
      Caption         =   "��˾"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4200
      TabIndex        =   42
      Top             =   5460
      Width           =   495
   End
   Begin VB.Label Label8 
      Caption         =   "�绰"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1920
      TabIndex        =   40
      Top             =   5460
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   38
      Top             =   5460
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "�绰"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   36
      Top             =   4740
      Width           =   495
   End
   Begin VB.Label Label6 
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   28
      Top             =   4020
      Width           =   495
   End
   Begin VB.Label Label9 
      Caption         =   "���ı�"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   26
      Top             =   3360
      Width           =   615
   End
   Begin VB.Label Label5 
      Caption         =   "ǰ׺"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2280
      TabIndex        =   23
      Top             =   2430
      Width           =   495
   End
   Begin VB.Label Label18 
      AutoSize        =   -1  'True
      Caption         =   "γ��"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   5160
      TabIndex        =   21
      Top             =   4050
      Width           =   360
   End
   Begin VB.Label Label7 
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   2640
      TabIndex        =   19
      Top             =   4050
      Width           =   420
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      BackColor       =   &H0000FFFF&
      Caption         =   "������ǰ׺�������������ĵ�ַ"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   5520
      MousePointer    =   2  'Cross
      TabIndex        =   12
      Top             =   2775
      Width           =   2520
   End
   Begin VB.Label Label3 
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   2460
      Width           =   615
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "M1��NFC���ܺ�����д���ӳ���"
      BeginProperty Font 
         Name            =   "����"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   315
      Left            =   6577
      TabIndex        =   2
      Top             =   120
      Width           =   4470
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'���豸�������캯������
Private Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

'��ȡ�豸��ź�������
Private Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByVal devicenumber As Long) As Byte

   
'�����ֶ���,������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
Private Const NEEDSERIAL = &H8
Private Const NEEDKEY = &H10
Private Const NEEDHALT = &H20

'���ܺ���

Private Declare Sub tagbuf_clear Lib "OUR_MIFARE.dll" ()
Private Declare Function tagbuf_addtext Lib "OUR_MIFARE.dll" (ByVal languagecodestr As String, ByVal languagecodestrlen As Long, ByVal textstr As String, ByVal textstrlen As Long) As Byte
Private Declare Function tagbuf_adduri Lib "OUR_MIFARE.dll" (ByVal languagecodestr As String, ByVal languagecodestrlen As Long, ByVal titlestr As String, ByVal titlestrlen As Long, ByVal uriheaderindex As Long, ByVal uristr As String, ByVal uristrlen As Long) As Byte
Private Declare Function tagbuf_addbusinesscard Lib "OUR_MIFARE.dll" (ByVal infostr As String, ByVal infostrlen As Long) As Byte
Private Declare Function tagbuf_addwifi Lib "OUR_MIFARE.dll" (ByVal ssidstr As String, ByVal ssidstrlen As Long, ByVal authtype As Long, ByVal crypttype As Long, ByVal keystr As String, ByVal keystrlen As Long) As Byte
Private Declare Function tagbuf_addbluetooth Lib "OUR_MIFARE.dll" (ByVal blenamestr As String, ByVal blenamestrlen As Long, ByRef blemac As Byte) As Byte
Private Declare Function tagbuf_addapp Lib "OUR_MIFARE.dll" (ByVal packagestr As String, ByVal packagestrlen As Long) As Byte
Private Declare Function tagbuf_adddata Lib "OUR_MIFARE.dll" (ByVal typestr As String, ByVal typestrlen As Long, ByVal datastr As String, ByVal datastrlen As Long) As Byte

Private Declare Sub tagbuf_read Lib "OUR_MIFARE.dll" (ByVal revstr As String, ByRef revstrlen As Long, ByRef recordnumber As Long)

Private Declare Function piccclear_ndeftag Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByRef serial As Byte, ByRef oldkey As Byte) As Byte
Private Declare Function piccwrite_ndeftag Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByRef serial As Byte, ByRef oldkey As Byte, ByRef newkey As Byte) As Byte
Private Declare Function piccread_ndeftag Lib "OUR_MIFARE.dll" (ByVal ctrlword As Byte, ByRef serial As Byte, ByRef oldkey As Byte) As Byte




Private Sub Combo1_Click()
    Select Case Combo1.ListIndex
    
        Case 0:
            
            Label14.Caption = "������ǰ׺�������������ĵ�ַ"
            
        Case 1, 2
            
            Label14.Caption = "���磺baidu.com"

        Case Else
            
            Label14.Caption = ""
            
    
    End Select
End Sub



Private Sub Combo4_Click()
    Dim packagestr(0 To 14) As String
    packagestr(0) = "com.tencent.mobileqq"
    packagestr(1) = "com.android.mms"
    packagestr(2) = "com.android.camera"
    packagestr(3) = "com.tencent.mm"
    packagestr(4) = "com.alibaba.android.rimet"
    packagestr(5) = "com.taobao.taobao"
    packagestr(6) = "com.taobao.qianniu"
    packagestr(7) = "com.fcbox.hiveconsumer"
    packagestr(8) = "com.eg.android.AlipayGphone"
    packagestr(9) = "com.android.contacts"
    packagestr(10) = "com.baidu.BaiduMap"
    packagestr(11) = "com.kugou.android"
    packagestr(12) = "com.cebbank.mobile.cemb"
    packagestr(13) = "com.netease.newsreader.activity"
    packagestr(14) = "com.icbc"

    If Combo4.ListIndex < 15 Then
        Text23.Text = packagestr(Combo4.ListIndex)
    End If
End Sub

Private Sub Command1_Click() '������д�뿨Ƭ

'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim newpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���


Dim languagecodestr As String

Dim languagecodestrlen As Long

Dim titlestr As String

Dim titlestrlen As Long

Dim uriheaderindex As Long

Dim uristr As String

Dim uristrlen As Long

'���Ա��룬Ӣ��Ϊen,����Ϊzh
languagecodestr = "en"
languagecodestrlen = 2

'����
titlestr = Text3.Text
titlestrlen = LenB(StrConv(titlestr, vbFromUnicode))

'����ǰ׺
uriheaderindex = Combo1.ListIndex


'����
uristr = Text4.Text
uristrlen = LenB(StrConv(uristr, vbFromUnicode))

tagbuf_clear

status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen)
'����д�������¼
'status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen) '�ڶ�����¼
'status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen) '��������¼
'status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen) '��������¼


If (status > 0) Then

    MsgBox "�쳣��" + CStr(status)
    Exit Sub

End If




'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'������
If (Check2.Value > 0) Then
    
    strls1 = Text2.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text2.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        newpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If
       
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If

If Check2.Value > 0 Then
    myctrlword = myctrlword + &H4
End If


status = piccwrite_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0), newpicckey(0))

Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "д���ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

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

Private Sub Command10_Click() '����  д�뿨Ƭ
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim newpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���

Dim blenamestr As String
Dim blenamestrlen As Long

'����MAC��ַ
Dim blemac(0 To 5) As Byte '����MAC��ַ


'�����豸����
blenamestr = Text21.Text
blenamestrlen = LenB(StrConv(blenamestr, vbFromUnicode))

'����MAC��ַ
strls1 = Text22.Text
strlen = Len(strls1)
str = ""

For i = 1 To strlen
    strls2 = Mid(strls1, i, 1)
    If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
        str = str + strls2
    End If

Next i

strlen = Len(str)

If strlen < 12 Then

    MsgBox "����MAC��ַ���Ȳ���"
    Text1.SetFocus
    Exit Sub
End If

strlen = 0
For i = 1 To 12 Step 2
    strls2 = Mid(str, i, 2)
    
    blemac(strlen) = CByte("&h" & strls2)
    strlen = strlen + 1
    
Next i


tagbuf_clear

status = tagbuf_addbluetooth(blenamestr, blenamestrlen, blemac(0))

'����д�������¼

If (status > 0) Then

    MsgBox "�쳣��" + CStr(status)
    Exit Sub

End If


'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'������
If (Check2.Value > 0) Then
    
    strls1 = Text2.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text2.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        newpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If
       
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If

If Check2.Value > 0 Then
    myctrlword = myctrlword + &H4
End If


status = piccwrite_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0), newpicckey(0))

Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "д���ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

End Select
End Sub

Private Sub Command11_Click() 'WIFI  д�뿨Ƭ

'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim newpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���

Dim ssidstr As String
Dim ssidstrlen As Long

Dim authtype As Long
Dim crypttype As Long

Dim keystr As String
Dim keystrlen As Long

'WIFI����
ssidstr = Text18.Text
ssidstrlen = LenB(StrConv(ssidstr, vbFromUnicode))

'���ܷ�ʽ
authtype = Combo2.ListIndex

'�����㷨
crypttype = Combo3.ListIndex

'����
keystr = Text17.Text
keystrlen = LenB(StrConv(keystr, vbFromUnicode))

tagbuf_clear

status = tagbuf_addwifi(ssidstr, ssidstrlen, authtype, crypttype, keystr, keystrlen)

'����д�������¼

If (status > 0) Then

    MsgBox "�쳣��" + CStr(status)
    Exit Sub

End If


'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'������
If (Check2.Value > 0) Then
    
    strls1 = Text2.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text2.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        newpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If
       
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If

If Check2.Value > 0 Then
    myctrlword = myctrlword + &H4
End If


status = piccwrite_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0), newpicckey(0))

Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "д���ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

End Select
End Sub

Private Sub Command12_Click() '������λ��д�뿨Ƭ
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim newpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���


Dim languagecodestr As String

Dim languagecodestrlen As Long

Dim titlestr As String

Dim titlestrlen As Long

Dim uriheaderindex As Long

Dim uristr As String

Dim uristrlen As Long

'���Ա��룬Ӣ��Ϊen,����Ϊzh
languagecodestr = "en"
languagecodestrlen = 2

'����
titlestr = Text6.Text
titlestrlen = LenB(StrConv(titlestr, vbFromUnicode))

'����λ��û������ǰ׺
uriheaderindex = 0

'��ַλ��
uristr = "geo:" + Text8.Text + "," + Text7.Text
uristrlen = LenB(StrConv(uristr, vbFromUnicode))

tagbuf_clear

status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen)


If (status > 0) Then

    MsgBox "�쳣��" + CStr(status)
    Exit Sub

End If




'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'������
If (Check2.Value > 0) Then
    
    strls1 = Text2.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text2.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        newpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If
       
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If

If Check2.Value > 0 Then
    myctrlword = myctrlword + &H4
End If


    status = piccwrite_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0), newpicckey(0))

    Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "д���ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

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

Private Sub Command13_Click() '��ȡNFC�������еļ�¼

    
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim ndefstr As String
Dim revstrlen(1) As Long
Dim recordnumber(1) As Long


Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���


'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

       
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If


status = piccread_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0))

Select Case status

    Case 0:
        ndefstr = String(2048, 0)
    
        tagbuf_read ndefstr, revstrlen(0), recordnumber(0)
        
        Text11.Text = ndefstr
        pcdbeep 38
        MsgBox "�����ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

End Select


    
End Sub

Private Sub Command14_Click() 'APPӦ������  д�뿨Ƭ
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim newpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���

Dim packagestr As String
Dim packagestrlen As Long

packagestr = Text23.Text
packagestrlen = LenB(StrConv(packagestr, vbFromUnicode))



tagbuf_clear

status = tagbuf_addapp(packagestr, packagestrlen)

'����д�������¼

If (status > 0) Then

    MsgBox "�쳣��" + CStr(status)
    Exit Sub

End If


'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'������
If (Check2.Value > 0) Then
    
    strls1 = Text2.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text2.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        newpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If
       
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If

If Check2.Value > 0 Then
    myctrlword = myctrlword + &H4
End If


status = piccwrite_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0), newpicckey(0))

Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "д���ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

End Select
End Sub

Private Sub Command15_Click() '����  д�뿨Ƭ
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim newpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���

Dim typestr As String
Dim typestrlen As Long
Dim datastr As String
Dim datastrlen As Long

typestr = Text20.Text
typestrlen = LenB(StrConv(typestr, vbFromUnicode))

datastr = Text19.Text
datastrlen = LenB(StrConv(datastr, vbFromUnicode))

tagbuf_clear

status = tagbuf_adddata(typestr, typestrlen, datastr, datastrlen)

'����д�������¼

If (status > 0) Then

    MsgBox "�쳣��" + CStr(status)
    Exit Sub

End If


'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'������
If (Check2.Value > 0) Then
    
    strls1 = Text2.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text2.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        newpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If
       
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If

If Check2.Value > 0 Then
    myctrlword = myctrlword + &H4
End If


status = piccwrite_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0), newpicckey(0))

Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "д���ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

End Select
End Sub

Private Sub Command2_Click() '�����ı�д�뿨Ƭ

'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim newpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���

Dim languagecodestr As String

Dim languagecodestrlen As Long

Dim textstr As String

Dim textstrlen As Long

'���Ա��룬Ӣ��Ϊen,����Ϊzh
languagecodestr = "en"
languagecodestrlen = 2

'�ı�
textstr = Text5.Text
textstrlen = LenB(StrConv(textstr, vbFromUnicode))

tagbuf_clear

status = tagbuf_addtext(languagecodestr, languagecodestrlen, textstr, textstrlen)


If (status > 0) Then

    MsgBox "�쳣��" + CStr(status)
    Exit Sub

End If


'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'������
If (Check2.Value > 0) Then
    
    strls1 = Text2.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text2.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        newpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If

If Check2.Value > 0 Then
    myctrlword = myctrlword + &H4
End If

    status = piccwrite_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0), newpicckey(0))

    Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "д���ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

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

Private Sub Command3_Click() '���Ϊ������
    
'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ
Dim myctrlword As Byte

Dim i As Integer


Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������


Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���

'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'ctrlword:bit3ָ������bit4Ϊ1����ָ������Ϊ0��ʾ�ڲ����룬bit5����������߿�,bit6��ָ������д����bit7����NFCĬ������д��,���bit6��bit7��Ϊ1����ʾ����ָ������д����������Ծ���NFCĬ������,bit6��bit7��Ϊ0ʱ�൱�ڶ�Ϊ1
'bit1Ϊ1����ͬʱ��Ϊ����ʱ��FF,����λҲ��Ϊ�����Ŀ�
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10 + &H2
Else
    myctrlword = &H80 + &H10 + &H2
End If

status = piccclear_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0))

Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "��ճɳ������ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

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


Private Sub Command6_Click() '�绰  д�뿨Ƭ

'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim newpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���

Dim languagecodestr As String

Dim languagecodestrlen As Long

Dim uristr As String

Dim uristrlen As Long

'���Ա��룬Ӣ��Ϊen,����Ϊzh
languagecodestr = "en"
languagecodestrlen = 2


'����
uristr = Text9.Text
uristrlen = LenB(StrConv(uristr, vbFromUnicode))

tagbuf_clear

status = tagbuf_adduri(languagecodestr, languagecodestrlen, "", 0, 5, uristr, uristrlen)

If (status > 0) Then

    MsgBox "�쳣��" + CStr(status)
    Exit Sub

End If


'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'������
If (Check2.Value > 0) Then
    
    strls1 = Text2.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text2.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        newpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If
       
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If

If Check2.Value > 0 Then
    myctrlword = myctrlword + &H4
End If


    status = piccwrite_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0), newpicckey(0))

    Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "д���ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

End Select

End Sub

Private Sub Command7_Click() '��ʼ����NFC���ܺ�����

'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ
Dim myctrlword As Byte
Dim i As Integer


Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim newpicckey(0 To 5) As Byte '��Ҫ��֤������


Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���

'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'������
If (Check2.Value > 0) Then
    
    strls1 = Text2.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text2.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        newpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'ctrlword:bit3ָ������bit4Ϊ1����ָ������Ϊ0��ʾ�ڲ����룬bit5����������߿�,bit6��ָ������д����bit7����NFCĬ������д��,���bit6��bit7��Ϊ1����ʾ��Ҫָ������д����������Ծ���NFCĬ������
'bit2Ϊ1д����ͬʱ��B�����Ϊnewkeyָ�������롣

tagbuf_clear

If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If

If Check2.Value > 0 Then
    myctrlword = myctrlword + &H4
End If

    status = piccwrite_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0), newpicckey(0))

    Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "��ʼ�����ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

End Select
End Sub


Private Sub Command8_Click() '������ݻ���
    tagbuf_clear
End Sub


Private Sub Command9_Click() '��Ƭ  д�뿨Ƭ

'����֧��:
'��վ:
Dim status As Byte '��ŷ���ֵ

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '�����к�

Dim oldpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim newpicckey(0 To 5) As Byte '��Ҫ��֤������

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '�����ַ����ĳ���

Dim infostr As String

Dim infostrlen As Long


'��Ƭ��Ϣ

infostr = "BEGIN:VCARD" & Chr(10)
infostr = infostr & "VERSION:3.0" & Chr(10)
infostr = infostr & "FN:" & Text10.Text & Chr(10)
infostr = infostr & "TEL:" & Text12.Text & Chr(10)
infostr = infostr & "ORG:" & Text13.Text & Chr(10)
infostr = infostr & "ADR:" & Text14.Text & Chr(10)
infostr = infostr & "EMAIL:" & Text15.Text & Chr(10)
infostr = infostr & "URL:" & Text16.Text & Chr(10)
infostr = infostr & "END:VCARD"

infostrlen = LenB(StrConv(infostr, vbFromUnicode))

tagbuf_clear

status = tagbuf_addbusinesscard(infostr, infostrlen)
'����д�������¼



If (status > 0) Then

    MsgBox "�쳣��" + CStr(status)
    Exit Sub

End If




'������
If (Check1.Value > 0) Then
    
    strls1 = Text1.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text1.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        oldpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If

'������
If (Check2.Value > 0) Then
    
    strls1 = Text2.Text
    strlen = Len(strls1)
    str = ""
    
    For i = 1 To strlen
        strls2 = Mid(strls1, i, 1)
        If (strls2 <> " ") And (strls2 <> vbCr) And (strls2 <> vbCrLf) And (strls2 <> vbLf) Then 'vbcr,vbcrlf,vblf
            str = str + strls2
        End If
    
    Next i
    
    strlen = Len(str)
    
    If strlen < 12 Then
    
        MsgBox "���볤�Ȳ���"
        Text2.SetFocus
        Exit Sub
    End If
    
    strlen = 0
    For i = 1 To 12 Step 2
        strls2 = Mid(str, i, 2)
        
        newpicckey(strlen) = CByte("&h" & strls2)
        strlen = strlen + 1
        
    Next i
End If
       
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10
Else
    myctrlword = &H80 + &H10
End If

If Check2.Value > 0 Then
    myctrlword = myctrlword + &H4
End If


    status = piccwrite_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0), newpicckey(0))

    Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "д���ɹ���"
        
        
    Case 8:
    
        MsgBox "�뽫�����ڸ�Ӧ��"
        

    Case 23: 'û�ж�̬��
        MsgBox "������USB ��д��"
        
        
    Case Else
        
        MsgBox "�쳣��" + CStr(status)

End Select
End Sub

Private Sub Form_Load()
    Combo1.ListIndex = 0 '��ǰ׺
    Combo2.ListIndex = 7 'WPA+WPA2����
    Combo3.ListIndex = 4 '��ǰ׺
    Combo4.ListIndex = 3 '΢��
End Sub

