VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "M1卡NFC智能海报读写例子程序"
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
      Text            =   "中国广州"
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
      Text            =   "电子"
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
      Text            =   "张三李四"
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
      Caption         =   "数据  写入卡片"
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
      Caption         =   "APP应用自启  写入卡片"
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
      Caption         =   "WIFI  写入卡片"
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
      Caption         =   "蓝牙  写入卡片"
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
      Caption         =   "名片  写入卡片"
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
      Caption         =   "电话  写入卡片"
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
      Text            =   "广州体育中心"
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
      Text            =   "轻轻的我走了，正如我轻轻的来；我轻轻的招手，作别西天的云彩。"
      Top             =   3300
      Width           =   8775
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "纯文本   写入卡片"
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
      Caption         =   "操作有写保护的卡，需要输入旧密码："
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
      Caption         =   "需要写卡保护,请输入新密码："
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
      Caption         =   "读取NFC海报卡中的记录"
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
      Caption         =   "地理位置   写入卡片"
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
      Caption         =   "清空数据缓冲"
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
      Caption         =   "清空成出厂卡"
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
      Caption         =   "链接   写入卡片"
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
      Caption         =   "初始化成NFC智能海报卡"
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
      Text            =   "百度"
      Top             =   2400
      Width           =   1335
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H00C0FFC0&
      Caption         =   "读出设备全球唯一的设备编号，作为加密狗用"
      Height          =   420
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   600
      Width           =   4905
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H0080C0FF&
      Caption         =   "让设备发出声响"
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
      Caption         =   "设备名称"
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
      Caption         =   "APP应用"
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
      Caption         =   "蓝牙MAC地址(十六进制)"
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
      Caption         =   "设备名称"
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
      Caption         =   "加密算法"
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
      Caption         =   "认证方式"
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
      Caption         =   "数据类型"
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
      Caption         =   "数据"
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
      Caption         =   "网络名称"
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
      Caption         =   "密码"
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
      Caption         =   "网址"
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
      Caption         =   "邮件"
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
      Caption         =   "地址"
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
      Caption         =   "公司"
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
      Caption         =   "电话"
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
      Caption         =   "姓名"
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
      Caption         =   "电话"
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
      Caption         =   "地名"
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
      Caption         =   "纯文本"
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
      Caption         =   "前缀"
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
      Caption         =   "纬度"
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
      Caption         =   "经度"
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
      Caption         =   "由于无前缀，请输入完整的地址"
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
      Caption         =   "标题"
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
      Caption         =   "M1卡NFC智能海报读写例子程序"
      BeginProperty Font 
         Name            =   "黑体"
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

'让设备发出声响函数声明
Private Declare Function pcdbeep Lib "OUR_MIFARE.dll" (ByVal xms As Long) As Byte

'读取设备编号函数声明
Private Declare Function pcdgetdevicenumber Lib "OUR_MIFARE.dll" (ByVal devicenumber As Long) As Byte

   
'控制字定义,控制字指定,控制字的含义请查看本公司网站提供的动态库说明
Private Const NEEDSERIAL = &H8
Private Const NEEDKEY = &H10
Private Const NEEDHALT = &H20

'智能海报

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
            
            Label14.Caption = "由于无前缀，请输入完整的地址"
            
        Case 1, 2
            
            Label14.Caption = "例如：baidu.com"

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

Private Sub Command1_Click() '将链接写入卡片

'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim newpicckey(0 To 5) As Byte '需要认证的密码

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度


Dim languagecodestr As String

Dim languagecodestrlen As Long

Dim titlestr As String

Dim titlestrlen As Long

Dim uriheaderindex As Long

Dim uristr As String

Dim uristrlen As Long

'语言编码，英文为en,中文为zh
languagecodestr = "en"
languagecodestrlen = 2

'标题
titlestr = Text3.Text
titlestrlen = LenB(StrConv(titlestr, vbFromUnicode))

'链接前缀
uriheaderindex = Combo1.ListIndex


'链接
uristr = Text4.Text
uristrlen = LenB(StrConv(uristr, vbFromUnicode))

tagbuf_clear

status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen)
'可以写入多条记录
'status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen) '第二条记录
'status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen) '第三条记录
'status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen) '第四条记录


If (status > 0) Then

    MsgBox "异常：" + CStr(status)
    Exit Sub

End If




'旧密码
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
    
        MsgBox "密码长度不足"
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

'新密码
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
    
        MsgBox "密码长度不足"
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
        MsgBox "写卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select

'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub

Private Sub Command10_Click() '蓝牙  写入卡片
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim newpicckey(0 To 5) As Byte '需要认证的密码

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度

Dim blenamestr As String
Dim blenamestrlen As Long

'蓝牙MAC地址
Dim blemac(0 To 5) As Byte '蓝牙MAC地址


'蓝牙设备名称
blenamestr = Text21.Text
blenamestrlen = LenB(StrConv(blenamestr, vbFromUnicode))

'蓝牙MAC地址
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

    MsgBox "蓝牙MAC地址长度不足"
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

'可以写入多条记录

If (status > 0) Then

    MsgBox "异常：" + CStr(status)
    Exit Sub

End If


'旧密码
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
    
        MsgBox "密码长度不足"
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

'新密码
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
    
        MsgBox "密码长度不足"
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
        MsgBox "写卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select
End Sub

Private Sub Command11_Click() 'WIFI  写入卡片

'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim newpicckey(0 To 5) As Byte '需要认证的密码

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度

Dim ssidstr As String
Dim ssidstrlen As Long

Dim authtype As Long
Dim crypttype As Long

Dim keystr As String
Dim keystrlen As Long

'WIFI名称
ssidstr = Text18.Text
ssidstrlen = LenB(StrConv(ssidstr, vbFromUnicode))

'加密方式
authtype = Combo2.ListIndex

'加密算法
crypttype = Combo3.ListIndex

'密码
keystr = Text17.Text
keystrlen = LenB(StrConv(keystr, vbFromUnicode))

tagbuf_clear

status = tagbuf_addwifi(ssidstr, ssidstrlen, authtype, crypttype, keystr, keystrlen)

'可以写入多条记录

If (status > 0) Then

    MsgBox "异常：" + CStr(status)
    Exit Sub

End If


'旧密码
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
    
        MsgBox "密码长度不足"
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

'新密码
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
    
        MsgBox "密码长度不足"
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
        MsgBox "写卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select
End Sub

Private Sub Command12_Click() '将地理位置写入卡片
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim newpicckey(0 To 5) As Byte '需要认证的密码

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度


Dim languagecodestr As String

Dim languagecodestrlen As Long

Dim titlestr As String

Dim titlestrlen As Long

Dim uriheaderindex As Long

Dim uristr As String

Dim uristrlen As Long

'语言编码，英文为en,中文为zh
languagecodestr = "en"
languagecodestrlen = 2

'标题
titlestr = Text6.Text
titlestrlen = LenB(StrConv(titlestr, vbFromUnicode))

'地理位置没有链接前缀
uriheaderindex = 0

'地址位置
uristr = "geo:" + Text8.Text + "," + Text7.Text
uristrlen = LenB(StrConv(uristr, vbFromUnicode))

tagbuf_clear

status = tagbuf_adduri(languagecodestr, languagecodestrlen, titlestr, titlestrlen, uriheaderindex, uristr, uristrlen)


If (status > 0) Then

    MsgBox "异常：" + CStr(status)
    Exit Sub

End If




'旧密码
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
    
        MsgBox "密码长度不足"
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

'新密码
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
    
        MsgBox "密码长度不足"
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
        MsgBox "写卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select

'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub

Private Sub Command13_Click() '读取NFC海报卡中的记录

    
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim ndefstr As String
Dim revstrlen(1) As Long
Dim recordnumber(1) As Long


Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度


'旧密码
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
    
        MsgBox "密码长度不足"
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
        MsgBox "读卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select


    
End Sub

Private Sub Command14_Click() 'APP应用自启  写入卡片
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim newpicckey(0 To 5) As Byte '需要认证的密码

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度

Dim packagestr As String
Dim packagestrlen As Long

packagestr = Text23.Text
packagestrlen = LenB(StrConv(packagestr, vbFromUnicode))



tagbuf_clear

status = tagbuf_addapp(packagestr, packagestrlen)

'可以写入多条记录

If (status > 0) Then

    MsgBox "异常：" + CStr(status)
    Exit Sub

End If


'旧密码
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
    
        MsgBox "密码长度不足"
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

'新密码
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
    
        MsgBox "密码长度不足"
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
        MsgBox "写卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select
End Sub

Private Sub Command15_Click() '数据  写入卡片
'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim newpicckey(0 To 5) As Byte '需要认证的密码

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度

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

'可以写入多条记录

If (status > 0) Then

    MsgBox "异常：" + CStr(status)
    Exit Sub

End If


'旧密码
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
    
        MsgBox "密码长度不足"
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

'新密码
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
    
        MsgBox "密码长度不足"
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
        MsgBox "写卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select
End Sub

Private Sub Command2_Click() '将纯文本写入卡片

'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim newpicckey(0 To 5) As Byte '需要认证的密码

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度

Dim languagecodestr As String

Dim languagecodestrlen As Long

Dim textstr As String

Dim textstrlen As Long

'语言编码，英文为en,中文为zh
languagecodestr = "en"
languagecodestrlen = 2

'文本
textstr = Text5.Text
textstrlen = LenB(StrConv(textstr, vbFromUnicode))

tagbuf_clear

status = tagbuf_addtext(languagecodestr, languagecodestrlen, textstr, textstrlen)


If (status > 0) Then

    MsgBox "异常：" + CStr(status)
    Exit Sub

End If


'旧密码
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
    
        MsgBox "密码长度不足"
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

'新密码
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
    
        MsgBox "密码长度不足"
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
        MsgBox "写卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select

'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub

Private Sub Command3_Click() '清空为出厂卡
    
'技术支持:
'网站:
Dim status As Byte '存放返回值
Dim myctrlword As Byte

Dim i As Integer


Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码


Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度

'旧密码
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
    
        MsgBox "密码长度不足"
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

'ctrlword:bit3指定卡，bit4为1函数指定密码为0表示内部密码，bit5操作完后休眠卡,bit6用指定密码写卡，bit7尝试NFC默认密码写卡,如果bit6和bit7都为1，表示先用指定密码写卡，如果不对就用NFC默认密码,bit6和bit7都为0时相当于都为1
'bit1为1将卡同时改为出厂时的FF,访问位也改为出厂的卡
If Check1.Value > 0 Then
    myctrlword = &H80 + &H40 + &H10 + &H2
Else
    myctrlword = &H80 + &H10 + &H2
End If

status = piccclear_ndeftag(myctrlword, mypiccserial(0), oldpicckey(0))

Select Case status

    Case 0:
        
        pcdbeep 38
        MsgBox "清空成出厂卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select

    
End Sub

Private Sub Command4_Click()
'让设备发出声音
'技术支持:
'网站:
    pcdbeep 50
    
End Sub

Private Sub Command5_Click()
'读取设备编号，可做为软件加密狗用,也可以根据此编号在公司网站上查询保修期限

'技术支持:
'网站:
Dim status As Byte

Dim devno(0 To 3) As Byte '设备编号

status = pcdgetdevicenumber(VarPtr(devno(0)))

If status = 0 Then
    MsgBox CStr(devno(0)) + "-" + CStr(devno(1)) + "-" + CStr(devno(2)) + "-" + CStr(devno(3))
End If




'返回解释
'#define ERR_REQUEST 8'寻卡错误
'#define ERR_READSERIAL 9'读序列吗错误
'#define ERR_SELECTCARD 10'选卡错误
'#define ERR_LOADKEY 11'装载密码错误
'#define ERR_AUTHKEY 12'密码认证错误
'#define ERR_READ 13'读卡错误
'#define ERR_WRITE 14'写卡错误
'#define ERR_NONEDLL 21'没有动态库
'#define ERR_DRIVERORDLL 22'动态库或驱动程序异常
'#define ERR_DRIVERNULL 23'驱动程序错误或尚未安装
'#define ERR_TIMEOUT 24'操作超时，一般是动态库没有反映
'#define ERR_TXSIZE 25'发送字数不够
'#define ERR_TXCRC 26'发送的CRC错
'#define ERR_RXSIZE 27'接收的字数不够
'#define ERR_RXCRC 28'接收的CRC错
End Sub


Private Sub Command6_Click() '电话  写入卡片

'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim newpicckey(0 To 5) As Byte '需要认证的密码

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度

Dim languagecodestr As String

Dim languagecodestrlen As Long

Dim uristr As String

Dim uristrlen As Long

'语言编码，英文为en,中文为zh
languagecodestr = "en"
languagecodestrlen = 2


'链接
uristr = Text9.Text
uristrlen = LenB(StrConv(uristr, vbFromUnicode))

tagbuf_clear

status = tagbuf_adduri(languagecodestr, languagecodestrlen, "", 0, 5, uristr, uristrlen)

If (status > 0) Then

    MsgBox "异常：" + CStr(status)
    Exit Sub

End If


'旧密码
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
    
        MsgBox "密码长度不足"
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

'新密码
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
    
        MsgBox "密码长度不足"
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
        MsgBox "写卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select

End Sub

Private Sub Command7_Click() '初始化成NFC智能海报卡

'技术支持:
'网站:
Dim status As Byte '存放返回值
Dim myctrlword As Byte
Dim i As Integer


Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim newpicckey(0 To 5) As Byte '需要认证的密码


Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度

'旧密码
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
    
        MsgBox "密码长度不足"
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

'新密码
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
    
        MsgBox "密码长度不足"
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

'ctrlword:bit3指定卡，bit4为1函数指定密码为0表示内部密码，bit5操作完后休眠卡,bit6用指定密码写卡，bit7尝试NFC默认密码写卡,如果bit6和bit7都为1，表示先要指定密码写卡，如果不对就用NFC默认密码
'bit2为1写卡后同时将B密码改为newkey指定的密码。

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
        MsgBox "初始化卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select
End Sub


Private Sub Command8_Click() '清空数据缓冲
    tagbuf_clear
End Sub


Private Sub Command9_Click() '名片  写入卡片

'技术支持:
'网站:
Dim status As Byte '存放返回值

Dim myctrlword As Byte
Dim i As Integer

Dim mypiccserial(0 To 3) As Byte '卡序列号

Dim oldpicckey(0 To 5) As Byte '需要认证的密码

Dim newpicckey(0 To 5) As Byte '需要认证的密码

Dim str As String
Dim strls1 As String
Dim strls2 As String

Dim strlen As Integer  '数据字符串的长度

Dim infostr As String

Dim infostrlen As Long


'名片信息

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
'可以写入多条记录



If (status > 0) Then

    MsgBox "异常：" + CStr(status)
    Exit Sub

End If




'旧密码
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
    
        MsgBox "密码长度不足"
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

'新密码
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
    
        MsgBox "密码长度不足"
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
        MsgBox "写卡成功！"
        
        
    Case 8:
    
        MsgBox "请将卡放在感应区"
        

    Case 23: '没有动态库
        MsgBox "请连上USB 读写器"
        
        
    Case Else
        
        MsgBox "异常：" + CStr(status)

End Select
End Sub

Private Sub Form_Load()
    Combo1.ListIndex = 0 '无前缀
    Combo2.ListIndex = 7 'WPA+WPA2个人
    Combo3.ListIndex = 4 '无前缀
    Combo4.ListIndex = 3 '微信
End Sub

