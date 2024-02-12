object Form1: TForm1
  Left = 986
  Top = 217
  Width = 615
  Height = 666
  BorderIcons = [biSystemMenu]
  Caption = 'IC'#21345#35835#20889#20989#25968'OUR_MIFARE.dll'#20351#29992#31034#20363
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 72
    Top = 547
    Width = 497
    Height = 21
    AutoSize = False
    Caption = #22312'DELPHI'#32534#36753#29366#24577#19979#21452#20987#20197#19978#25353#38062#21487#20197#26597#30475#20195#30721
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 611
    Width = 569
    Height = 21
    AutoSize = False
    Caption = #27599#20010#25353#38062#21482#35843#29992#21040#19968#20010#20989#25968#65292#20197#19978'4'#20010#20989#25968#21487#20197#36731#26494#24212#20184#21508#31867#24212#29992#65292#21487#20197#33410#30465#22823#37327#30340#24320#21457#26102#38388
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 108
    Top = 583
    Width = 433
    Height = 17
    AutoSize = False
    Caption = #24314#35758#23558'OUR_MIFARE.dll'#21644'ICUSB.DLL'#22797#21046#21040#24212#29992#31243#24207#21516#19968#30446#24405#19979
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 173
    Top = 71
    Width = 96
    Height = 16
    Caption = #21313#20845#36827#21046#25968#25454
  end
  object Label6: TLabel
    Left = 512
    Top = 92
    Width = 56
    Height = 16
    Caption = #31532' 0 '#22359
  end
  object Label7: TLabel
    Left = 512
    Top = 114
    Width = 56
    Height = 16
    Caption = #31532' 1 '#22359
  end
  object Label8: TLabel
    Left = 512
    Top = 134
    Width = 56
    Height = 16
    Caption = #31532' 2 '#22359
  end
  object Label1: TLabel
    Left = 162
    Top = 272
    Width = 80
    Height = 16
    Caption = '10'#36827#21046#21345#21495
  end
  object Label9: TLabel
    Left = 376
    Top = 272
    Width = 80
    Height = 16
    Caption = '16'#36827#21046#21345#21495
  end
  object Label10: TLabel
    Left = 173
    Top = 511
    Width = 80
    Height = 16
    Caption = '10'#36827#21046'UID:'
  end
  object Button1: TButton
    Left = 169
    Top = 177
    Width = 153
    Height = 35
    Caption = #20174#21345#20013#35835#20986#27721#23383#23383#31526
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 21
    Top = 177
    Width = 142
    Height = 35
    Caption = #20889#27721#23383#23383#31526#21040#21345#20013
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 21
    Top = 396
    Width = 137
    Height = 37
    Caption = #25913#21333#21306#23494#30721
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 7
    Width = 129
    Height = 41
    Caption = #35753#35774#22791#21457#20986#22768#21709
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 24
    Top = 457
    Width = 561
    Height = 36
    Caption = #35835#20986#35774#22791#20840#29699#21807#19968#30340#35774#22791#32534#21495#65292#20316#20026#21152#23494#29399#29992
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button7: TButton
    Left = 165
    Top = 396
    Width = 417
    Height = 37
    Caption = #25913#21333#21306'AB'#23494#30721#25110#35775#38382#25511#21046#20301
    TabOrder = 5
    OnClick = Button7Click
  end
  object Edit1: TEdit
    Left = 21
    Top = 216
    Width = 561
    Height = 24
    TabOrder = 6
    Text = #22825#19979#33521#38596#20986#25105#36744','#19968#20837#27743#28246#23681#26376#20652#12290#19968#21306#33021#20889'48'#20010'Bytes'
  end
  object Button6: TButton
    Left = 424
    Top = 177
    Width = 153
    Height = 35
    Caption = #21457#36865#26174#31034
    TabOrder = 7
    OnClick = Button6Click
  end
  object Memo1: TMemo
    Left = 172
    Top = 90
    Width = 333
    Height = 64
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#20116#31508#36755#20837#27861
    Lines.Strings = (
      '000102030405060708090A0B0C0D0E0F'
      '000102030405060708090A0B0C0D0E0F'
      '000102030405060708090A0B0C0D0E0F')
    ParentFont = False
    TabOrder = 8
  end
  object Button8: TButton
    Left = 16
    Top = 115
    Width = 129
    Height = 41
    Caption = #36731#26494#20889#21345
    TabOrder = 9
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 16
    Top = 73
    Width = 129
    Height = 41
    Caption = #36731#26494#35835#21345
    TabOrder = 10
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 21
    Top = 305
    Width = 132
    Height = 34
    Caption = #21482#35835'IC'#21345#21345#21495
    TabOrder = 11
    OnClick = Button10Click
  end
  object Edit2: TEdit
    Left = 246
    Top = 265
    Width = 110
    Height = 24
    TabOrder = 12
  end
  object Edit3: TEdit
    Left = 464
    Top = 265
    Width = 124
    Height = 24
    TabOrder = 13
  end
  object Button11: TButton
    Left = 24
    Top = 496
    Width = 129
    Height = 34
    Caption = #25913#20889'UID'#21345'0'#21306'0'#22359
    TabOrder = 14
    OnClick = Button11Click
  end
  object Edit4: TEdit
    Left = 264
    Top = 504
    Width = 121
    Height = 24
    TabOrder = 15
    Text = '0000000001'
  end
  object RadioButton1: TRadioButton
    Left = 24
    Top = 271
    Width = 60
    Height = 22
    Caption = #27491#30721
    TabOrder = 16
  end
  object RadioButton2: TRadioButton
    Left = 89
    Top = 271
    Width = 61
    Height = 22
    Caption = #21453#30721
    Checked = True
    TabOrder = 17
    TabStop = True
  end
  object Button12: TButton
    Left = 181
    Top = 305
    Width = 148
    Height = 35
    Caption = #21482#35835'7'#23383#33410#21345#24207#21495
    TabOrder = 18
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 352
    Top = 306
    Width = 238
    Height = 33
    Caption = #33258#21160#35782#21035#35835#21462'IC'#21450'7'#23383#33410#21345#21495
    TabOrder = 19
    OnClick = Button13Click
  end
end
