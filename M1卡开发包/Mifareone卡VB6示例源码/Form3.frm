VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "�������ڲ���֤����װ�ع���"
   ClientHeight    =   9885
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   17295
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9885
   ScaleWidth      =   17295
   StartUpPosition =   1  '����������
   Begin VB.CommandButton Command6 
      Caption         =   "����A����"
      Height          =   435
      Left            =   9360
      TabIndex        =   131
      Top             =   5190
      Width           =   1095
   End
   Begin VB.CommandButton Command5 
      Caption         =   "����B����"
      Height          =   435
      Left            =   9360
      TabIndex        =   130
      Top             =   4470
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "ȡ��ѡ����"
      Height          =   405
      Left            =   10380
      TabIndex        =   129
      Top             =   3600
      Width           =   1125
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ѡ��ȫ����"
      Height          =   405
      Left            =   9240
      TabIndex        =   128
      Top             =   3600
      Width           =   1125
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��39��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   39
      Left            =   13470
      TabIndex        =   127
      Top             =   6540
      Width           =   975
   End
   Begin VB.TextBox Text17 
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
      Index           =   39
      Left            =   15660
      TabIndex        =   126
      Text            =   "FFFFFFFFFFFF"
      Top             =   6540
      Width           =   1425
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   39
      ItemData        =   "Form3.frx":0000
      Left            =   14520
      List            =   "Form3.frx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   125
      Top             =   6540
      Width           =   1095
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��38��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   38
      Left            =   13470
      TabIndex        =   124
      Top             =   6090
      Width           =   975
   End
   Begin VB.TextBox Text17 
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
      Index           =   38
      Left            =   15660
      TabIndex        =   123
      Text            =   "FFFFFFFFFFFF"
      Top             =   6090
      Width           =   1425
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   38
      ItemData        =   "Form3.frx":001E
      Left            =   14520
      List            =   "Form3.frx":0028
      Style           =   2  'Dropdown List
      TabIndex        =   122
      Top             =   6090
      Width           =   1095
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��37��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   37
      Left            =   13470
      TabIndex        =   121
      Top             =   5670
      Width           =   975
   End
   Begin VB.TextBox Text17 
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
      Index           =   37
      Left            =   15660
      TabIndex        =   120
      Text            =   "FFFFFFFFFFFF"
      Top             =   5670
      Width           =   1425
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   37
      ItemData        =   "Form3.frx":003C
      Left            =   14520
      List            =   "Form3.frx":0046
      Style           =   2  'Dropdown List
      TabIndex        =   119
      Top             =   5670
      Width           =   1095
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��36��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   36
      Left            =   13470
      TabIndex        =   118
      Top             =   5280
      Width           =   975
   End
   Begin VB.TextBox Text17 
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
      Index           =   36
      Left            =   15660
      TabIndex        =   117
      Text            =   "FFFFFFFFFFFF"
      Top             =   5280
      Width           =   1425
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   36
      ItemData        =   "Form3.frx":005A
      Left            =   14520
      List            =   "Form3.frx":0064
      Style           =   2  'Dropdown List
      TabIndex        =   116
      Top             =   5280
      Width           =   1095
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��35��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   35
      Left            =   13470
      TabIndex        =   115
      Top             =   4830
      Width           =   975
   End
   Begin VB.TextBox Text17 
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
      Index           =   35
      Left            =   15660
      TabIndex        =   114
      Text            =   "FFFFFFFFFFFF"
      Top             =   4830
      Width           =   1425
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   35
      ItemData        =   "Form3.frx":0078
      Left            =   14520
      List            =   "Form3.frx":0082
      Style           =   2  'Dropdown List
      TabIndex        =   113
      Top             =   4830
      Width           =   1095
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��34��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   34
      Left            =   13470
      TabIndex        =   112
      Top             =   4440
      Width           =   975
   End
   Begin VB.TextBox Text17 
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
      Index           =   34
      Left            =   15660
      TabIndex        =   111
      Text            =   "FFFFFFFFFFFF"
      Top             =   4440
      Width           =   1425
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   34
      ItemData        =   "Form3.frx":0096
      Left            =   14520
      List            =   "Form3.frx":00A0
      Style           =   2  'Dropdown List
      TabIndex        =   110
      Top             =   4440
      Width           =   1095
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��33��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   33
      Left            =   13470
      TabIndex        =   109
      Top             =   3990
      Width           =   975
   End
   Begin VB.TextBox Text17 
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
      Index           =   33
      Left            =   15660
      TabIndex        =   108
      Text            =   "FFFFFFFFFFFF"
      Top             =   3990
      Width           =   1425
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   33
      ItemData        =   "Form3.frx":00B4
      Left            =   14520
      List            =   "Form3.frx":00BE
      Style           =   2  'Dropdown List
      TabIndex        =   107
      Top             =   3990
      Width           =   1095
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��32��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   32
      Left            =   13470
      TabIndex        =   106
      Top             =   3540
      Width           =   975
   End
   Begin VB.TextBox Text17 
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
      Index           =   32
      Left            =   15660
      TabIndex        =   105
      Text            =   "FFFFFFFFFFFF"
      Top             =   3540
      Width           =   1425
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   32
      ItemData        =   "Form3.frx":00D2
      Left            =   14520
      List            =   "Form3.frx":00DC
      Style           =   2  'Dropdown List
      TabIndex        =   104
      Top             =   3540
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   31
      ItemData        =   "Form3.frx":00F0
      Left            =   14490
      List            =   "Form3.frx":00FA
      Style           =   2  'Dropdown List
      TabIndex        =   103
      Top             =   3090
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   31
      Left            =   15630
      TabIndex        =   102
      Text            =   "FFFFFFFFFFFF"
      Top             =   3090
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��31��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   31
      Left            =   13470
      TabIndex        =   101
      Top             =   3090
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   30
      ItemData        =   "Form3.frx":010E
      Left            =   14490
      List            =   "Form3.frx":0118
      Style           =   2  'Dropdown List
      TabIndex        =   100
      Top             =   2640
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   30
      Left            =   15630
      TabIndex        =   99
      Text            =   "FFFFFFFFFFFF"
      Top             =   2640
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��30��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   30
      Left            =   13470
      TabIndex        =   98
      Top             =   2640
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   29
      ItemData        =   "Form3.frx":012C
      Left            =   14490
      List            =   "Form3.frx":0136
      Style           =   2  'Dropdown List
      TabIndex        =   97
      Top             =   2190
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   29
      Left            =   15630
      TabIndex        =   96
      Text            =   "FFFFFFFFFFFF"
      Top             =   2190
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��29��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   29
      Left            =   13470
      TabIndex        =   95
      Top             =   2190
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   28
      ItemData        =   "Form3.frx":014A
      Left            =   14490
      List            =   "Form3.frx":0154
      Style           =   2  'Dropdown List
      TabIndex        =   94
      Top             =   1740
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   28
      Left            =   15630
      TabIndex        =   93
      Text            =   "FFFFFFFFFFFF"
      Top             =   1740
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��28��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   28
      Left            =   13470
      TabIndex        =   92
      Top             =   1740
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   27
      ItemData        =   "Form3.frx":0168
      Left            =   14490
      List            =   "Form3.frx":0172
      Style           =   2  'Dropdown List
      TabIndex        =   91
      Top             =   1350
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   27
      Left            =   15630
      TabIndex        =   90
      Text            =   "FFFFFFFFFFFF"
      Top             =   1350
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��27��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   27
      Left            =   13470
      TabIndex        =   89
      Top             =   1350
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   26
      ItemData        =   "Form3.frx":0186
      Left            =   14490
      List            =   "Form3.frx":0190
      Style           =   2  'Dropdown List
      TabIndex        =   88
      Top             =   930
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   26
      Left            =   15630
      TabIndex        =   87
      Text            =   "FFFFFFFFFFFF"
      Top             =   930
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��26��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   26
      Left            =   13470
      TabIndex        =   86
      Top             =   930
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   25
      ItemData        =   "Form3.frx":01A4
      Left            =   14490
      List            =   "Form3.frx":01AE
      Style           =   2  'Dropdown List
      TabIndex        =   85
      Top             =   540
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   25
      Left            =   15630
      TabIndex        =   84
      Text            =   "FFFFFFFFFFFF"
      Top             =   540
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��25��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   25
      Left            =   13470
      TabIndex        =   83
      Top             =   540
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   24
      ItemData        =   "Form3.frx":01C2
      Left            =   14490
      List            =   "Form3.frx":01CC
      Style           =   2  'Dropdown List
      TabIndex        =   82
      Top             =   120
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   24
      Left            =   15630
      TabIndex        =   81
      Text            =   "FFFFFFFFFFFF"
      Top             =   120
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��24��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   24
      Left            =   13470
      TabIndex        =   80
      Top             =   120
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   23
      ItemData        =   "Form3.frx":01E0
      Left            =   10260
      List            =   "Form3.frx":01EA
      Style           =   2  'Dropdown List
      TabIndex        =   79
      Top             =   3060
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   23
      Left            =   11400
      TabIndex        =   78
      Text            =   "FFFFFFFFFFFF"
      Top             =   3060
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��23��"
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
      Index           =   23
      Left            =   9270
      TabIndex        =   77
      Top             =   3060
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   22
      ItemData        =   "Form3.frx":01FE
      Left            =   10260
      List            =   "Form3.frx":0208
      Style           =   2  'Dropdown List
      TabIndex        =   76
      Top             =   2640
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   22
      Left            =   11400
      TabIndex        =   75
      Text            =   "FFFFFFFFFFFF"
      Top             =   2640
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��22��"
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
      Index           =   22
      Left            =   9270
      TabIndex        =   74
      Top             =   2640
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   21
      ItemData        =   "Form3.frx":021C
      Left            =   10260
      List            =   "Form3.frx":0226
      Style           =   2  'Dropdown List
      TabIndex        =   73
      Top             =   2250
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   21
      Left            =   11400
      TabIndex        =   72
      Text            =   "FFFFFFFFFFFF"
      Top             =   2250
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��21��"
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
      Index           =   21
      Left            =   9270
      TabIndex        =   71
      Top             =   2250
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   20
      ItemData        =   "Form3.frx":023A
      Left            =   10260
      List            =   "Form3.frx":0244
      Style           =   2  'Dropdown List
      TabIndex        =   70
      Top             =   1830
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   20
      Left            =   11400
      TabIndex        =   69
      Text            =   "FFFFFFFFFFFF"
      Top             =   1830
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��20��"
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
      Index           =   20
      Left            =   9270
      TabIndex        =   68
      Top             =   1830
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   19
      ItemData        =   "Form3.frx":0258
      Left            =   10260
      List            =   "Form3.frx":0262
      Style           =   2  'Dropdown List
      TabIndex        =   67
      Top             =   1380
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   19
      Left            =   11400
      TabIndex        =   66
      Text            =   "FFFFFFFFFFFF"
      Top             =   1380
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��19��"
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
      Index           =   19
      Left            =   9270
      TabIndex        =   65
      Top             =   1380
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   18
      ItemData        =   "Form3.frx":0276
      Left            =   10260
      List            =   "Form3.frx":0280
      Style           =   2  'Dropdown List
      TabIndex        =   64
      Top             =   990
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   18
      Left            =   11400
      TabIndex        =   63
      Text            =   "FFFFFFFFFFFF"
      Top             =   990
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��18��"
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
      Index           =   18
      Left            =   9270
      TabIndex        =   62
      Top             =   990
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   17
      ItemData        =   "Form3.frx":0294
      Left            =   10260
      List            =   "Form3.frx":029E
      Style           =   2  'Dropdown List
      TabIndex        =   61
      Top             =   570
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   17
      Left            =   11400
      TabIndex        =   60
      Text            =   "FFFFFFFFFFFF"
      Top             =   570
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��17��"
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
      Index           =   17
      Left            =   9270
      TabIndex        =   59
      Top             =   570
      Width           =   975
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   16
      ItemData        =   "Form3.frx":02B2
      Left            =   10260
      List            =   "Form3.frx":02BC
      Style           =   2  'Dropdown List
      TabIndex        =   58
      Top             =   120
      Width           =   1095
   End
   Begin VB.TextBox Text17 
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
      Index           =   16
      Left            =   11400
      TabIndex        =   57
      Text            =   "FFFFFFFFFFFF"
      Top             =   120
      Width           =   1425
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��16��"
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
      Index           =   16
      Left            =   9270
      TabIndex        =   56
      Top             =   120
      Width           =   975
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      ItemData        =   "Form3.frx":02D0
      Left            =   2430
      List            =   "Form3.frx":02DA
      Style           =   2  'Dropdown List
      TabIndex        =   55
      Top             =   9450
      Width           =   1245
   End
   Begin VB.CommandButton Command1 
      Caption         =   "���ڲ������дIC��"
      Height          =   405
      Left            =   150
      TabIndex        =   54
      Top             =   9420
      Width           =   2265
   End
   Begin VB.CommandButton Command4 
      Caption         =   "���豸��������"
      Height          =   465
      Left            =   5010
      TabIndex        =   52
      Top             =   3540
      Width           =   1485
   End
   Begin VB.ListBox List1 
      Height          =   5100
      Left            =   120
      TabIndex        =   51
      Top             =   4050
      Width           =   8565
   End
   Begin VB.CommandButton Command24 
      BackColor       =   &H0080FF80&
      Caption         =   "������װ�ص���������"
      Height          =   465
      Left            =   6510
      Style           =   1  'Graphical
      TabIndex        =   50
      Top             =   3540
      Width           =   2115
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��15��"
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
      Index           =   15
      Left            =   5040
      TabIndex        =   49
      Top             =   3090
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��14��"
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
      Index           =   14
      Left            =   5040
      TabIndex        =   48
      Top             =   2655
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��13��"
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
      Index           =   13
      Left            =   5040
      TabIndex        =   47
      Top             =   2220
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��12��"
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
      Index           =   12
      Left            =   5040
      TabIndex        =   46
      Top             =   1785
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��11��"
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
      Index           =   11
      Left            =   5040
      TabIndex        =   45
      Top             =   1350
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��10��"
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
      Index           =   10
      Left            =   5040
      TabIndex        =   44
      Top             =   930
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��09��"
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
      Index           =   9
      Left            =   5040
      TabIndex        =   43
      Top             =   495
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��08��"
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
      Index           =   8
      Left            =   5040
      TabIndex        =   42
      Top             =   60
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��07��"
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
      Index           =   7
      Left            =   180
      TabIndex        =   41
      Top             =   3090
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��06��"
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
      Index           =   6
      Left            =   150
      TabIndex        =   40
      Top             =   2655
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��05��"
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
      Index           =   5
      Left            =   150
      TabIndex        =   39
      Top             =   2220
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��04��"
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
      Index           =   4
      Left            =   150
      TabIndex        =   38
      Top             =   1785
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��03��"
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
      Index           =   3
      Left            =   150
      TabIndex        =   37
      Top             =   1350
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��02��"
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
      Index           =   2
      Left            =   150
      TabIndex        =   36
      Top             =   930
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��01��"
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
      Index           =   1
      Left            =   150
      TabIndex        =   35
      Top             =   495
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      Caption         =   "��00��"
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
      Index           =   0
      Left            =   150
      TabIndex        =   34
      Top             =   60
      Width           =   975
   End
   Begin VB.TextBox Text17 
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
      Index           =   15
      Left            =   7170
      TabIndex        =   33
      Text            =   "FFFFFFFFFFFF"
      Top             =   3090
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   14
      Left            =   7170
      TabIndex        =   32
      Text            =   "FFFFFFFFFFFF"
      Top             =   2655
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   13
      Left            =   7170
      TabIndex        =   31
      Text            =   "FFFFFFFFFFFF"
      Top             =   2220
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   12
      Left            =   7170
      TabIndex        =   30
      Text            =   "FFFFFFFFFFFF"
      Top             =   1785
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   11
      Left            =   7170
      TabIndex        =   29
      Text            =   "FFFFFFFFFFFF"
      Top             =   1350
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   10
      Left            =   7170
      TabIndex        =   28
      Text            =   "FFFFFFFFFFFF"
      Top             =   930
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   9
      Left            =   7170
      TabIndex        =   27
      Text            =   "FFFFFFFFFFFF"
      Top             =   495
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   8
      Left            =   7170
      TabIndex        =   26
      Text            =   "FFFFFFFFFFFF"
      Top             =   60
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   7
      Left            =   2280
      TabIndex        =   25
      Text            =   "FFFFFFFFFFFF"
      Top             =   3090
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   6
      Left            =   2280
      TabIndex        =   24
      Text            =   "FFFFFFFFFFFF"
      Top             =   2655
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   5
      Left            =   2280
      TabIndex        =   23
      Text            =   "FFFFFFFFFFFF"
      Top             =   2220
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   4
      Left            =   2280
      TabIndex        =   22
      Text            =   "FFFFFFFFFFFF"
      Top             =   1785
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   3
      Left            =   2280
      TabIndex        =   21
      Text            =   "FFFFFFFFFFFF"
      Top             =   1350
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   2
      Left            =   2280
      TabIndex        =   20
      Text            =   "FFFFFFFFFFFF"
      Top             =   930
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   1
      Left            =   2280
      TabIndex        =   19
      Text            =   "FFFFFFFFFFFF"
      Top             =   495
      Width           =   1425
   End
   Begin VB.TextBox Text17 
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
      Index           =   0
      Left            =   2280
      TabIndex        =   18
      Text            =   "FFFFFFFFFFFF"
      Top             =   60
      Width           =   1425
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   0
      ItemData        =   "Form3.frx":02EE
      Left            =   1140
      List            =   "Form3.frx":02F8
      Style           =   2  'Dropdown List
      TabIndex        =   17
      Top             =   60
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   1
      ItemData        =   "Form3.frx":030C
      Left            =   1140
      List            =   "Form3.frx":0316
      Style           =   2  'Dropdown List
      TabIndex        =   16
      Top             =   480
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   2
      ItemData        =   "Form3.frx":032A
      Left            =   1140
      List            =   "Form3.frx":0334
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   930
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   3
      ItemData        =   "Form3.frx":0348
      Left            =   1140
      List            =   "Form3.frx":0352
      Style           =   2  'Dropdown List
      TabIndex        =   14
      Top             =   1350
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   4
      ItemData        =   "Form3.frx":0366
      Left            =   1140
      List            =   "Form3.frx":0370
      Style           =   2  'Dropdown List
      TabIndex        =   13
      Top             =   1770
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   5
      ItemData        =   "Form3.frx":0384
      Left            =   1140
      List            =   "Form3.frx":038E
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   2220
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   6
      ItemData        =   "Form3.frx":03A2
      Left            =   1140
      List            =   "Form3.frx":03AC
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   2640
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   7
      ItemData        =   "Form3.frx":03C0
      Left            =   1140
      List            =   "Form3.frx":03CA
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   3090
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   8
      ItemData        =   "Form3.frx":03DE
      Left            =   6030
      List            =   "Form3.frx":03E8
      Style           =   2  'Dropdown List
      TabIndex        =   9
      Top             =   60
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   9
      ItemData        =   "Form3.frx":03FC
      Left            =   6030
      List            =   "Form3.frx":0406
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   480
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   10
      ItemData        =   "Form3.frx":041A
      Left            =   6030
      List            =   "Form3.frx":0424
      Style           =   2  'Dropdown List
      TabIndex        =   7
      Top             =   930
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   11
      ItemData        =   "Form3.frx":0438
      Left            =   6030
      List            =   "Form3.frx":0442
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   1350
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   12
      ItemData        =   "Form3.frx":0456
      Left            =   6030
      List            =   "Form3.frx":0460
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   1800
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   13
      ItemData        =   "Form3.frx":0474
      Left            =   6000
      List            =   "Form3.frx":047E
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   2220
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   14
      ItemData        =   "Form3.frx":0492
      Left            =   6000
      List            =   "Form3.frx":049C
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   2640
      Width           =   1095
   End
   Begin VB.ComboBox Combo16 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   15
      ItemData        =   "Form3.frx":04B0
      Left            =   6000
      List            =   "Form3.frx":04BA
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   3090
      Width           =   1095
   End
   Begin VB.CommandButton Command63 
      Caption         =   "ѡ��ȫ����"
      Height          =   405
      Left            =   150
      TabIndex        =   1
      Top             =   3570
      Width           =   1125
   End
   Begin VB.CommandButton Command64 
      Caption         =   "ȡ��ѡ����"
      Height          =   405
      Left            =   1290
      TabIndex        =   0
      Top             =   3570
      Width           =   1125
   End
   Begin VB.Label Label1 
      BackColor       =   &H0000FFFF&
      Caption         =   "                       ����ϵͳʹ�� B �����д��Ƭ��"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   3990
      TabIndex        =   53
      Top             =   9570
      Width           =   4695
   End
End
Attribute VB_Name = "Form3"
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

Dim oldkh As String

Private Sub Command1_Click()
Dim I As Integer
Dim status As Byte '��ŷ���ֵ
Dim myctrlword As Byte '������
Dim mypicckey(0 To 5) As Byte '����
Dim mypiccserial(0 To 3) As Byte '�����к�
Dim mypiccdata(0 To 47) As Byte '�����ݻ���
    
List1.Clear

myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN
For I = 0 To 39
    If Check4(I).Value > 0 Then
        myareano = I
        authmode = Combo1.ListIndex
        status = piccreadex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
        If status = 0 Then
            List1.AddItem (Format(I, "00") & " �����ڲ�������֤�����ɹ���")
            status = piccwriteex(myctrlword, VarPtr(mypiccserial(0)), myareano, authmode, VarPtr(mypicckey(0)), VarPtr(mypiccdata(0)))
            If status = 0 Then
                List1.AddItem (Format(I, "00") & " �����ڲ�������֤д���ɹ���")
            Else
                List1.AddItem (Format(I, "00") & " �����ڲ�������֤д��ʧ�ܣ�������룺" & Format(status, "0"))
            End If
        Else
            List1.AddItem (Format(I, "00") & " �����ڲ�������֤����ʧ�ܣ�������룺" & Format(status, "0"))
        End If
    End If
Next
Exit Sub

End Sub

Private Sub Command2_Click()
Dim I As Integer
For I = 16 To 39
    Check4(I).Value = 1
Next
End Sub

Private Sub Command24_Click()
Dim I As Integer
Dim status As Byte '��ŷ���ֵ
Dim myareano As Byte '����
Dim authmode As Byte '�������ͣ���A�����B����
Dim mypicckey(0 To 5) As Byte '����
Dim keystr As String
    
On Error GoTo err1:
List1.Clear
For I = 0 To 39
    If Check4(I).Value > 0 Then
        myareano = I
        authmode = Combo16(I).ListIndex
        keystr = Trim(Text17(I).Text)
        mypicckey(0) = "&H" & Mid(keystr, 1, 2)
        mypicckey(1) = "&H" & Mid(keystr, 3, 2)
        mypicckey(2) = "&H" & Mid(keystr, 5, 2)
        mypicckey(3) = "&H" & Mid(keystr, 7, 2)
        mypicckey(4) = "&H" & Mid(keystr, 9, 2)
        mypicckey(5) = "&H" & Mid(keystr, 11, 2)
        status = pcdwritekeytoe2(myareano, authmode, VarPtr(mypicckey(0)))
        If status = 0 Then
            List1.AddItem (Format(I, "00") & " ������װ��ɹ���")
        Else
            List1.AddItem (Format(I, "00") & " ������װ��ʧ�ܣ�������룺" & Format(status, "0"))
        End If
    End If
Next
Exit Sub

err1:
    MsgBox (Format(I, "00") & " �������������"), vbCritical + vbOKOnly, "��ʾ"
End Sub

Private Sub Command3_Click()
Dim I As Integer
For I = 16 To 39
    Check4(I).Value = 0
Next
End Sub

Private Sub Command4_Click()
pcdbeep 50
End Sub

Private Sub Command5_Click()
Dim I As Integer
For I = 0 To 39
    Check4(I).Value = 1
    Combo16(I).ListIndex = 0
    Text17(I).Text = "222222222222"
Next
End Sub

Private Sub Command6_Click()
Dim I As Integer
For I = 0 To 39
    Check4(I).Value = 1
    Combo16(I).ListIndex = 1
    Text17(I).Text = "111111111111"
Next
End Sub

Private Sub Command63_Click()
Dim I As Integer
For I = 0 To 15
    Check4(I).Value = 1
Next
End Sub

Private Sub Command64_Click()
Dim I As Integer
For I = 0 To 15
    Check4(I).Value = 0
Next
End Sub

Private Sub Form_Load()
Dim I As Integer
For I = 0 To 39
    Combo16(I).ListIndex = 0
    Check4(I).Value = 1
Next
Combo1.ListIndex = 0
End Sub
