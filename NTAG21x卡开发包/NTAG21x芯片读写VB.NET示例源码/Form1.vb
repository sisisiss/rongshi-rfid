
Public Class Form1
    Inherits System.Windows.Forms.Form

#Region " Windows ������������ɵĴ��� "

    Public Sub New()
        MyBase.New()

        '�õ����� Windows ���������������ġ�
        InitializeComponent()

        '�� InitializeComponent() ����֮������κγ�ʼ��

    End Sub

    '������д dispose ����������б�
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Windows ����������������
    Private components As System.ComponentModel.IContainer

    'ע��: ���¹����� Windows ����������������
    '����ʹ�� Windows ����������޸Ĵ˹��̡�
    '��Ҫʹ�ô���༭���޸�����
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents blockadd As System.Windows.Forms.NumericUpDown
    Friend WithEvents beginp As System.Windows.Forms.NumericUpDown
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox3 As System.Windows.Forms.TextBox
    Friend WithEvents Button6 As System.Windows.Forms.Button
    Friend WithEvents RichTextBox1 As System.Windows.Forms.RichTextBox
    Friend WithEvents Button7 As System.Windows.Forms.Button
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage3 As System.Windows.Forms.TabPage
    Friend WithEvents TextBox4 As System.Windows.Forms.TextBox
    Friend WithEvents Button8 As System.Windows.Forms.Button
    Friend WithEvents Button9 As System.Windows.Forms.Button
    Friend WithEvents Button10 As System.Windows.Forms.Button
    Friend WithEvents Button11 As System.Windows.Forms.Button
    Friend WithEvents Button13 As System.Windows.Forms.Button
    Friend WithEvents Button12 As System.Windows.Forms.Button
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents CheckBox1 As System.Windows.Forms.CheckBox
    Friend WithEvents Button14 As System.Windows.Forms.Button
    Friend WithEvents Limitau As System.Windows.Forms.NumericUpDown
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents TextBox6 As System.Windows.Forms.TextBox
    Friend WithEvents CheckBox2 As System.Windows.Forms.CheckBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents TextBox5 As System.Windows.Forms.TextBox
    Friend WithEvents RichTextBox2 As System.Windows.Forms.RichTextBox
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents TextBox8 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox7 As System.Windows.Forms.TextBox
    Friend WithEvents CheckBox3 As System.Windows.Forms.CheckBox
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents rwps As System.Windows.Forms.NumericUpDown
    Friend WithEvents rwbeginp As System.Windows.Forms.NumericUpDown
    Friend WithEvents Button5 As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.blockadd = New System.Windows.Forms.NumericUpDown()
        Me.beginp = New System.Windows.Forms.NumericUpDown()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.TextBox3 = New System.Windows.Forms.TextBox()
        Me.Button6 = New System.Windows.Forms.Button()
        Me.RichTextBox1 = New System.Windows.Forms.RichTextBox()
        Me.Button7 = New System.Windows.Forms.Button()
        Me.TabControl1 = New System.Windows.Forms.TabControl()
        Me.TabPage1 = New System.Windows.Forms.TabPage()
        Me.Button13 = New System.Windows.Forms.Button()
        Me.Button12 = New System.Windows.Forms.Button()
        Me.Button11 = New System.Windows.Forms.Button()
        Me.Button10 = New System.Windows.Forms.Button()
        Me.Button9 = New System.Windows.Forms.Button()
        Me.TextBox4 = New System.Windows.Forms.TextBox()
        Me.Button8 = New System.Windows.Forms.Button()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.rwps = New System.Windows.Forms.NumericUpDown()
        Me.rwbeginp = New System.Windows.Forms.NumericUpDown()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.TextBox8 = New System.Windows.Forms.TextBox()
        Me.TextBox7 = New System.Windows.Forms.TextBox()
        Me.CheckBox3 = New System.Windows.Forms.CheckBox()
        Me.RichTextBox2 = New System.Windows.Forms.RichTextBox()
        Me.Button14 = New System.Windows.Forms.Button()
        Me.Limitau = New System.Windows.Forms.NumericUpDown()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.TextBox6 = New System.Windows.Forms.TextBox()
        Me.CheckBox2 = New System.Windows.Forms.CheckBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.ComboBox1 = New System.Windows.Forms.ComboBox()
        Me.TextBox5 = New System.Windows.Forms.TextBox()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.TabPage3 = New System.Windows.Forms.TabPage()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.Label4 = New System.Windows.Forms.Label()
        CType(Me.blockadd, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.beginp, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        CType(Me.rwps, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.rwbeginp, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Limitau, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage3.SuspendLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(57, 229)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(120, 32)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "��4��ҳ  >>"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(57, 267)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(120, 32)
        Me.Button2.TabIndex = 1
        Me.Button2.Text = "д1��ҳ  >>"
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(57, 131)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(120, 32)
        Me.Button3.TabIndex = 2
        Me.Button3.Text = "�������к� >>"
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(57, 34)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(120, 32)
        Me.Button4.TabIndex = 3
        Me.Button4.Text = "���豸��������"
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(57, 72)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(345, 32)
        Me.Button5.TabIndex = 4
        Me.Button5.Text = "�����豸ȫ��Ψһ���豸��ţ���Ϊ���ܹ���"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(183, 138)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(175, 21)
        Me.TextBox1.TabIndex = 5
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("����", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Label1.Location = New System.Drawing.Point(65, 196)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(112, 16)
        Me.Label1.TabIndex = 7
        Me.Label1.Text = "��д��ʼҳ��:"
        '
        'blockadd
        '
        Me.blockadd.Font = New System.Drawing.Font("����", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.blockadd.Location = New System.Drawing.Point(183, 191)
        Me.blockadd.Name = "blockadd"
        Me.blockadd.Size = New System.Drawing.Size(54, 26)
        Me.blockadd.TabIndex = 8
        Me.blockadd.Value = New Decimal(New Integer() {4, 0, 0, 0})
        '
        'beginp
        '
        Me.beginp.Font = New System.Drawing.Font("����", 10.5!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.beginp.Location = New System.Drawing.Point(69, 49)
        Me.beginp.Name = "beginp"
        Me.beginp.Size = New System.Drawing.Size(55, 23)
        Me.beginp.TabIndex = 10
        Me.beginp.Value = New Decimal(New Integer() {12, 0, 0, 0})
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("����", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Label2.Location = New System.Drawing.Point(23, 167)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(59, 12)
        Me.Label2.TabIndex = 9
        Me.Label2.Text = "�����к�:"
        '
        'TextBox2
        '
        Me.TextBox2.Location = New System.Drawing.Point(184, 236)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(218, 21)
        Me.TextBox2.TabIndex = 11
        '
        'TextBox3
        '
        Me.TextBox3.Location = New System.Drawing.Point(184, 274)
        Me.TextBox3.MaxLength = 8
        Me.TextBox3.Name = "TextBox3"
        Me.TextBox3.Size = New System.Drawing.Size(77, 21)
        Me.TextBox3.TabIndex = 12
        '
        'Button6
        '
        Me.Button6.Location = New System.Drawing.Point(90, 263)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(344, 32)
        Me.Button6.TabIndex = 13
        Me.Button6.Text = "���ɶ��������һ��12�� "
        '
        'RichTextBox1
        '
        Me.RichTextBox1.Location = New System.Drawing.Point(89, 188)
        Me.RichTextBox1.Name = "RichTextBox1"
        Me.RichTextBox1.Size = New System.Drawing.Size(727, 67)
        Me.RichTextBox1.TabIndex = 14
        Me.RichTextBox1.Text = ""
        '
        'Button7
        '
        Me.Button7.Location = New System.Drawing.Point(471, 263)
        Me.Button7.Name = "Button7"
        Me.Button7.Size = New System.Drawing.Size(345, 32)
        Me.Button7.TabIndex = 15
        Me.Button7.Text = "����д�������һ��11�� "
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Controls.Add(Me.TabPage3)
        Me.TabControl1.Location = New System.Drawing.Point(1, 1)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(861, 426)
        Me.TabControl1.TabIndex = 16
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.Button13)
        Me.TabPage1.Controls.Add(Me.Button12)
        Me.TabPage1.Controls.Add(Me.Button11)
        Me.TabPage1.Controls.Add(Me.Button10)
        Me.TabPage1.Controls.Add(Me.Button9)
        Me.TabPage1.Controls.Add(Me.TextBox4)
        Me.TabPage1.Controls.Add(Me.Button8)
        Me.TabPage1.Controls.Add(Me.Button4)
        Me.TabPage1.Controls.Add(Me.Button5)
        Me.TabPage1.Controls.Add(Me.Button3)
        Me.TabPage1.Controls.Add(Me.TextBox1)
        Me.TabPage1.Controls.Add(Me.TextBox3)
        Me.TabPage1.Controls.Add(Me.Button1)
        Me.TabPage1.Controls.Add(Me.blockadd)
        Me.TabPage1.Controls.Add(Me.TextBox2)
        Me.TabPage1.Controls.Add(Me.Label1)
        Me.TabPage1.Controls.Add(Me.Button2)
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(853, 400)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "NTAG21xҳ��д����      "
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'Button13
        '
        Me.Button13.ForeColor = System.Drawing.Color.Red
        Me.Button13.Location = New System.Drawing.Point(452, 327)
        Me.Button13.Name = "Button13"
        Me.Button13.Size = New System.Drawing.Size(337, 32)
        Me.Button13.TabIndex = 19
        Me.Button13.Text = "����16ҳ��֮���ҳ���������ݺ��޷��ָ���"
        '
        'Button12
        '
        Me.Button12.ForeColor = System.Drawing.Color.Red
        Me.Button12.Location = New System.Drawing.Point(452, 278)
        Me.Button12.Name = "Button12"
        Me.Button12.Size = New System.Drawing.Size(337, 32)
        Me.Button12.TabIndex = 18
        Me.Button12.Text = "����3~15ҳ���������ݺ��޷��ָ���"
        '
        'Button11
        '
        Me.Button11.Location = New System.Drawing.Point(452, 229)
        Me.Button11.Name = "Button11"
        Me.Button11.Size = New System.Drawing.Size(337, 32)
        Me.Button11.TabIndex = 17
        Me.Button11.Text = "��ȡ�������������ֵ"
        '
        'Button10
        '
        Me.Button10.Location = New System.Drawing.Point(452, 180)
        Me.Button10.Name = "Button10"
        Me.Button10.Size = New System.Drawing.Size(337, 32)
        Me.Button10.TabIndex = 16
        Me.Button10.Text = "��ȡ����ǩ����Ϣ��������֤���Ƿ�NXP���濨"
        '
        'Button9
        '
        Me.Button9.Location = New System.Drawing.Point(452, 131)
        Me.Button9.Name = "Button9"
        Me.Button9.Size = New System.Drawing.Size(337, 32)
        Me.Button9.TabIndex = 15
        Me.Button9.Text = "��ȡ���İ汾�ż��ͺ�"
        '
        'TextBox4
        '
        Me.TextBox4.Location = New System.Drawing.Point(184, 334)
        Me.TextBox4.MaxLength = 8
        Me.TextBox4.Name = "TextBox4"
        Me.TextBox4.Size = New System.Drawing.Size(77, 21)
        Me.TextBox4.TabIndex = 14
        Me.TextBox4.Text = "12345678"
        '
        'Button8
        '
        Me.Button8.Location = New System.Drawing.Point(57, 327)
        Me.Button8.Name = "Button8"
        Me.Button8.Size = New System.Drawing.Size(120, 32)
        Me.Button8.TabIndex = 13
        Me.Button8.Text = "��������֤  >>"
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.Label10)
        Me.TabPage2.Controls.Add(Me.Label9)
        Me.TabPage2.Controls.Add(Me.rwps)
        Me.TabPage2.Controls.Add(Me.rwbeginp)
        Me.TabPage2.Controls.Add(Me.Label8)
        Me.TabPage2.Controls.Add(Me.Label7)
        Me.TabPage2.Controls.Add(Me.TextBox8)
        Me.TabPage2.Controls.Add(Me.TextBox7)
        Me.TabPage2.Controls.Add(Me.CheckBox3)
        Me.TabPage2.Controls.Add(Me.RichTextBox2)
        Me.TabPage2.Controls.Add(Me.Button14)
        Me.TabPage2.Controls.Add(Me.Limitau)
        Me.TabPage2.Controls.Add(Me.Label6)
        Me.TabPage2.Controls.Add(Me.TextBox6)
        Me.TabPage2.Controls.Add(Me.CheckBox2)
        Me.TabPage2.Controls.Add(Me.Label5)
        Me.TabPage2.Controls.Add(Me.Label3)
        Me.TabPage2.Controls.Add(Me.ComboBox1)
        Me.TabPage2.Controls.Add(Me.TextBox5)
        Me.TabPage2.Controls.Add(Me.CheckBox1)
        Me.TabPage2.Controls.Add(Me.Button6)
        Me.TabPage2.Controls.Add(Me.Label2)
        Me.TabPage2.Controls.Add(Me.beginp)
        Me.TabPage2.Controls.Add(Me.Button7)
        Me.TabPage2.Controls.Add(Me.RichTextBox1)
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(853, 400)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "NTAG21x���ɶ�д����      "
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'Label10
        '
        Me.Label10.Font = New System.Drawing.Font("����", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Label10.Location = New System.Drawing.Point(30, 340)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(54, 53)
        Me.Label10.TabIndex = 35
        Me.Label10.Text = "���ڶ�д���ĵ���ָ��:"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Font = New System.Drawing.Font("����", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Label9.Location = New System.Drawing.Point(23, 191)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(59, 12)
        Me.Label9.TabIndex = 34
        Me.Label9.Text = "ҳ������:"
        '
        'rwps
        '
        Me.rwps.Font = New System.Drawing.Font("����", 10.5!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.rwps.Location = New System.Drawing.Point(506, 157)
        Me.rwps.Name = "rwps"
        Me.rwps.Size = New System.Drawing.Size(55, 23)
        Me.rwps.TabIndex = 33
        Me.rwps.Value = New Decimal(New Integer() {10, 0, 0, 0})
        '
        'rwbeginp
        '
        Me.rwbeginp.Font = New System.Drawing.Font("����", 10.5!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.rwbeginp.Location = New System.Drawing.Point(344, 156)
        Me.rwbeginp.Name = "rwbeginp"
        Me.rwbeginp.Size = New System.Drawing.Size(58, 23)
        Me.rwbeginp.TabIndex = 32
        Me.rwbeginp.Value = New Decimal(New Integer() {30, 0, 0, 0})
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("����", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Label8.Location = New System.Drawing.Point(446, 167)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(65, 12)
        Me.Label8.TabIndex = 31
        Me.Label8.Text = "��дҳ����"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("����", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Label7.Location = New System.Drawing.Point(257, 167)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(89, 12)
        Me.Label7.TabIndex = 30
        Me.Label7.Text = "��д��ʼҳ�ţ�"
        '
        'TextBox8
        '
        Me.TextBox8.Location = New System.Drawing.Point(88, 158)
        Me.TextBox8.Name = "TextBox8"
        Me.TextBox8.Size = New System.Drawing.Size(130, 21)
        Me.TextBox8.TabIndex = 29
        '
        'TextBox7
        '
        Me.TextBox7.Location = New System.Drawing.Point(344, 131)
        Me.TextBox7.MaxLength = 8
        Me.TextBox7.Name = "TextBox7"
        Me.TextBox7.Size = New System.Drawing.Size(59, 21)
        Me.TextBox7.TabIndex = 28
        Me.TextBox7.Text = "12345678"
        '
        'CheckBox3
        '
        Me.CheckBox3.AutoSize = True
        Me.CheckBox3.Location = New System.Drawing.Point(89, 135)
        Me.CheckBox3.Name = "CheckBox3"
        Me.CheckBox3.Size = New System.Drawing.Size(258, 16)
        Me.CheckBox3.TabIndex = 27
        Me.CheckBox3.Text = "ѡ������֤��������ܼ�������,��֤���룺"
        Me.CheckBox3.UseVisualStyleBackColor = True
        '
        'RichTextBox2
        '
        Me.RichTextBox2.Location = New System.Drawing.Point(89, 336)
        Me.RichTextBox2.Name = "RichTextBox2"
        Me.RichTextBox2.Size = New System.Drawing.Size(728, 47)
        Me.RichTextBox2.TabIndex = 26
        Me.RichTextBox2.Text = ""
        '
        'Button14
        '
        Me.Button14.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(192, Byte), Integer))
        Me.Button14.Location = New System.Drawing.Point(23, 78)
        Me.Button14.Name = "Button14"
        Me.Button14.Size = New System.Drawing.Size(793, 30)
        Me.Button14.TabIndex = 25
        Me.Button14.Text = "�����ϲ������ÿ����뼰��������"
        Me.Button14.UseVisualStyleBackColor = False
        '
        'Limitau
        '
        Me.Limitau.Font = New System.Drawing.Font("����", 10.5!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Limitau.Location = New System.Drawing.Point(699, 46)
        Me.Limitau.Name = "Limitau"
        Me.Limitau.Size = New System.Drawing.Size(55, 23)
        Me.Limitau.TabIndex = 24
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(513, 54)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(191, 12)
        Me.Label6.TabIndex = 23
        Me.Label6.Text = "����������������0Ϊ���޴Σ���"
        '
        'TextBox6
        '
        Me.TextBox6.Location = New System.Drawing.Point(448, 48)
        Me.TextBox6.MaxLength = 8
        Me.TextBox6.Name = "TextBox6"
        Me.TextBox6.Size = New System.Drawing.Size(59, 21)
        Me.TextBox6.TabIndex = 22
        Me.TextBox6.Text = "12345678"
        '
        'CheckBox2
        '
        Me.CheckBox2.AutoSize = True
        Me.CheckBox2.Location = New System.Drawing.Point(238, 53)
        Me.CheckBox2.Name = "CheckBox2"
        Me.CheckBox2.Size = New System.Drawing.Size(216, 16)
        Me.CheckBox2.TabIndex = 21
        Me.CheckBox2.Text = "ѡ�������������뱣���������룺"
        Me.CheckBox2.UseVisualStyleBackColor = True
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(130, 54)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(113, 12)
        Me.Label5.TabIndex = 20
        Me.Label5.Text = "ҳ��ʼ�����뱣����"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(45, 54)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(17, 12)
        Me.Label3.TabIndex = 19
        Me.Label3.Text = "��"
        '
        'ComboBox1
        '
        Me.ComboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBox1.ForeColor = System.Drawing.Color.Red
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Items.AddRange(New Object() {"�������뱣������", "ȡ�����뱣������"})
        Me.ComboBox1.Location = New System.Drawing.Point(395, 16)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(146, 20)
        Me.ComboBox1.TabIndex = 18
        '
        'TextBox5
        '
        Me.TextBox5.Location = New System.Drawing.Point(325, 15)
        Me.TextBox5.MaxLength = 8
        Me.TextBox5.Name = "TextBox5"
        Me.TextBox5.Size = New System.Drawing.Size(59, 21)
        Me.TextBox5.TabIndex = 17
        Me.TextBox5.Text = "12345678"
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.Font = New System.Drawing.Font("����", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.CheckBox1.Location = New System.Drawing.Point(71, 19)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(258, 16)
        Me.CheckBox1.TabIndex = 16
        Me.CheckBox1.Text = "ѡ������֤��������ܼ�������,��֤���룺"
        Me.CheckBox1.UseVisualStyleBackColor = True
        '
        'TabPage3
        '
        Me.TabPage3.Controls.Add(Me.PictureBox1)
        Me.TabPage3.Location = New System.Drawing.Point(4, 22)
        Me.TabPage3.Name = "TabPage3"
        Me.TabPage3.Size = New System.Drawing.Size(853, 400)
        Me.TabPage3.TabIndex = 2
        Me.TabPage3.Text = "NTAG21x�����ݽṹ˵��      "
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Image)
        Me.PictureBox1.Location = New System.Drawing.Point(3, 3)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(850, 397)
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("����", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Label4.ForeColor = System.Drawing.Color.Blue
        Me.Label4.Location = New System.Drawing.Point(240, 439)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(360, 16)
        Me.Label4.TabIndex = 18
        Me.Label4.Text = "���齫OUR_MIFARE.dll���Ƶ�Ӧ�ó���ͬһĿ¼��"
        '
        'Form1
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(6, 14)
        Me.ClientSize = New System.Drawing.Size(863, 463)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.TabControl1)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "NTAG21x����д�����ӳ���"
        CType(Me.blockadd, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.beginp, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.TabPage1.PerformLayout()
        Me.TabPage2.ResumeLayout(False)
        Me.TabPage2.PerformLayout()
        CType(Me.rwps, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.rwbeginp, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Limitau, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage3.ResumeLayout(False)
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

#End Region

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

        '���ɶ���
        '����֧��:
        '��վ:

        Dim status As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim i As Integer
        Dim cardidhex As String
        Dim mypiccdata(0 To 15) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�
        Dim myblockaddr As Byte '��ʼ���ַ

        status = piccrequest_ul(mypiccserial(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox1.Text = cardidhex

                myblockaddr = CByte(blockadd.Value)
                status = piccread_ul(myblockaddr, mypiccdata(0))
                If status = 0 Then
                    cardidhex = ""
                    For i = 0 To 15
                        cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccdata(i)), 2)
                    Next
                    TextBox2.Text = cardidhex
                    MsgBox("�����ɹ���", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
                Else
                    MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                End If
            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
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

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        '��ȡ�豸��ţ�����Ϊ������ܹ���,Ҳ���Ը��ݴ˱���ڹ�˾��վ�ϲ�ѯ��������

        '����֧��:
        '��վ:
        Dim status As Byte '��ŷ���ֵ
        Dim devno(3) As Byte '�豸���

        status = pcdgetdevicenumber(devno(0))

        If status = 0 Then
            pcdbeep(50)
            MsgBox(CStr(devno(0)) + "-" + CStr(devno(1)) + "-" + CStr(devno(2)) + "-" + CStr(devno(3)))
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

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        pcdbeep(50)
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        '����д��
        '����֧��:
        '��վ:
        '���ɶ���
        '����֧��:
        '��վ:

        Dim status As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim i As Integer
        Dim cardidhex, writstr As String
        Dim mypiccdata(0 To 3) As Byte 'д�������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�
        Dim myblockaddr As Byte '��ʼ���ַ

        If Len(Trim(TextBox3.Text)) < 8 Then
            i = MsgBox("д����Ϣ���㣬�Ƿ��ں����Զ���0��", MsgBoxStyle.Question + MsgBoxStyle.OkCancel, "��ʾ")
            If i <> vbOK Then
                TextBox3.Select()
                Exit Sub
            Else
                TextBox3.Text = Strings.Left(Trim(TextBox3.Text) + "00000000", 8)
                writstr = Strings.Left(Trim(TextBox3.Text) + "00000000", 8)
            End If
        Else
            writstr = Trim(TextBox3.Text)
        End If

        status = piccrequest_ul(mypiccserial(0))

        Select Case status
            Case 0
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox1.Text = cardidhex

                For i = 0 To 3
                    mypiccdata(i) = CByte("&H" & Mid(writstr, i * 2 + 1, 2))
                Next

                myblockaddr = CByte(blockadd.Value)
                status = piccwrite_ul(myblockaddr, mypiccdata(0))
                If status = 0 Then
                    pcdbeep(50)
                    MsgBox("д���ɹ���", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
                ElseIf status = 14 Then
                    MsgBox("д��ʧ�ܣ�����ҳ�Ѿ������������޸Ļ�Ҫ��֤���롣", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                Else
                    MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                End If
            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
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

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim status As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim i As Integer
        Dim cardidhex As String

        status = piccrequest_ul(mypiccserial(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox1.Text = cardidhex
                MsgBox("�������кųɹ���", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
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

    Private Sub TextBox3_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox3.KeyPress
        If (e.KeyChar >= "0" And e.KeyChar <= "9") Or (e.KeyChar >= "A" And e.KeyChar <= "F") Or (e.KeyChar >= "a" And e.KeyChar <= "f") Then    '����ֻ������16������
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub


    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        '���ɶ���
        '����֧��:
        '��վ:
        Dim i As Integer
        Dim cardidhex, authkey, Str As String
        Dim status, myctrlword, comedc As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim mypicckey(0 To 3) As Byte '��֤����
        Dim mypiccdata(0 To 47) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�
        Dim myblockaddr As Byte '��ʼ���ַ
        Dim myblocksize As Byte '�ܿ���

        If CheckBox3.Checked Then
            If Len(Trim(TextBox7.Text)) < 8 Then
                i = MsgBox("����֤����λ�����㣡", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                If i <> vbOK Then
                    TextBox7.Select()
                    Exit Sub
                End If
            Else
                authkey = Trim(TextBox7.Text)
                For i = 0 To 3
                    mypicckey(i) = CByte("&H" & Mid(authkey, i * 2 + 1, 2))
                Next
            End If
            myctrlword = &H10  '��Ҫ��֤��������ټ���
        Else
            myctrlword = 0
        End If

        myblockaddr = CByte(rwbeginp.Value)
        myblocksize = CByte(rwps.Value)

        '-------------------------------------------------------------------------
        '�������ģ���ʽ��
        comedc = &H1B
        Str = "0F1B"

        '������
        Str = Str + Strings.Right("00" + Hex(myctrlword), 2)
        comedc = comedc Xor myctrlword

        '����
        For i = 0 To 6
            Str = Str + Strings.Right("00" + Hex(mypiccserial(i)), 2)
            comedc = comedc Xor mypiccserial(i)
        Next i

        '����
        For i = 0 To 3
            Str = Str + Strings.Right("00" + Hex(mypicckey(i)), 2)
            comedc = comedc Xor mypicckey(i)
        Next i

        '��ʼҳ��
        Str = Str + Strings.Right("00" + Hex(myblockaddr), 2)
        comedc = comedc Xor myblockaddr

        '���дҳ��
        Str = Str + Strings.Right("00" + Hex(myblocksize), 2)
        comedc = comedc Xor myblocksize

        'У����
        Str = Str + Strings.Right("00" + Hex(comedc), 2)
        RichTextBox2.Text = Str
        '-------------------------------------------------------------------------


        status = piccreadex_ntag(myctrlword, mypiccserial(0), mypicckey(0), myblockaddr, myblocksize, mypiccdata(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox8.Text = cardidhex


                cardidhex = ""
                For i = 0 To myblocksize * 4 - 1
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccdata(i)), 2)
                Next
                RichTextBox1.Text = cardidhex
                MsgBox("�����ɹ���", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")

            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 12
                MsgBox("�������", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 13
                MsgBox("����ʧ�ܣ�������Ҫ��֤���룡", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select
    End Sub

    Private Sub RichTextBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles RichTextBox1.KeyPress  '������ֻ������16������
        If (e.KeyChar >= "0" And e.KeyChar <= "9") Or (e.KeyChar >= "A" And e.KeyChar <= "F") Or (e.KeyChar >= "a" And e.KeyChar <= "f") Then    '����ֻ������16������
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub

    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        '����֧��:
        '��վ:
        Dim i As Integer
        Dim cardidhex, authkey, Str, writstr As String
        Dim status, myctrlword, comedc As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim mypicckey(0 To 3) As Byte '��֤����
        Dim mypiccdata(0 To 47) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�
        Dim myblockaddr As Byte '��ʼ���ַ
        Dim myblocksize As Byte '�ܿ���

        If rwps.Value < 1 Or rwps.Value > 11 Then
            MsgBox("д��ҳ���������0��С��12��", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Exit Sub
        End If

        myblockaddr = CByte(rwbeginp.Value)
        myblocksize = CByte(rwps.Value)

        If CheckBox3.Checked Then
            If Len(Trim(TextBox7.Text)) < 8 Then
                i = MsgBox("����֤����λ�����㣡", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                If i <> vbOK Then
                    TextBox7.Select()
                    Exit Sub
                End If
            Else
                authkey = Trim(TextBox7.Text)
                For i = 0 To 3
                    mypicckey(i) = CByte("&H" & Mid(authkey, i * 2 + 1, 2))
                Next
            End If
            myctrlword = &H10  '��Ҫ��֤��������ټ���
        Else
            myctrlword = 0
        End If

        If Len(Trim(RichTextBox1.Text)) < myblocksize * 4 * 2 Then
            i = MsgBox("д����Ϣ���㣬�Ƿ��ں����Զ���0��", MsgBoxStyle.Question + MsgBoxStyle.OkCancel, "��ʾ")
            If i <> vbOK Then
                RichTextBox1.Select()
                Exit Sub
            Else
                RichTextBox1.Text = Strings.Left(Trim(RichTextBox1.Text) + "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000", myblocksize * 4 * 2)
                writstr = Strings.Left(Trim(RichTextBox1.Text) + "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000", myblocksize * 4 * 2)
            End If
        Else
            writstr = Trim(RichTextBox1.Text)
        End If

        For i = 0 To myblocksize * 4 - 1
            mypiccdata(i) = CByte("&H" & Mid(writstr, i * 2 + 1, 2))
        Next



        '-------------------------------------------------------------------------
        '�������ģ���ʽ��
        comedc = &H1C
        Str = "3B1C"

        '������
        Str = Str + Strings.Right("00" + Hex(myctrlword), 2)
        comedc = comedc Xor myctrlword

        '����
        For i = 0 To 6
            Str = Str + Strings.Right("00" + Hex(mypiccserial(i)), 2)
            comedc = comedc Xor mypiccserial(i)
        Next i

        '����
        For i = 0 To 3
            Str = Str + Strings.Right("00" + Hex(mypicckey(i)), 2)
            comedc = comedc Xor mypicckey(i)
        Next i

        '��ʼҳ��
        Str = Str + Strings.Right("00" + Hex(myblockaddr), 2)
        comedc = comedc Xor myblockaddr

        '���дҳ��
        Str = Str + Strings.Right("00" + Hex(myblocksize), 2)
        comedc = comedc Xor myblocksize

        For i = 0 To 43
            Str = Str + Strings.Right("00" + Hex(mypiccdata(i)), 2)
            comedc = comedc Xor mypiccdata(i)
        Next

        'У����
        Str = Str + Strings.Right("00" + Hex(comedc), 2)
        RichTextBox2.Text = Str
        '-------------------------------------------------------------------------


        status = piccwriteex_ntag(myctrlword, mypiccserial(0), mypicckey(0), myblockaddr, myblocksize, mypiccdata(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox8.Text = cardidhex

                MsgBox("д���ɹ���", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")

            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 12
                MsgBox("�������", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 14
                MsgBox("д��ʧ�ܣ�������Ҫ��֤�����ҳ�Ѿ�������", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ComboBox1.SelectedIndex = 1
    End Sub

    Private Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        Dim status As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim i As Integer
        Dim cardidhex, keystr As String
        Dim mypicckey(0 To 3) As Byte '4�ֽڿ���֤����
        Dim mypiccntagpack(0 To 1) As Byte '2�ֽ�ȷ����

        If Len(Trim(TextBox4.Text)) <> 8 Then
            TextBox4.Select()
            MsgBox("��֤���������4���ֽ�8λ���֣�", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Exit Sub
        Else
            keystr = Trim(TextBox4.Text)
        End If

        status = piccrequest_ul(mypiccserial(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox8.Text = cardidhex

                For i = 0 To 3
                    mypicckey(i) = CByte("&H" & Mid(keystr, i * 2 + 1, 2))
                Next

                status = piccauthkey_ntag(mypicckey(0), mypiccntagpack(0))
                If status = 0 Then
                    MsgBox("��������֤�ɹ���ȷ����Ϊ��" + Strings.Right("00" + Hex(mypiccntagpack(0)), 2) + Strings.Right("00" + Hex(mypiccntagpack(1)), 2), MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
                ElseIf status = 12 Then
                    MsgBox("��������֤���󣬷��ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                Else
                    MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                End If
            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select
    End Sub

    Private Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Dim status As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim piccversiondata(7) As Byte '���汾��Ϣ
        Dim i As Integer
        Dim cardidhex As String

        status = piccrequest_ul(mypiccserial(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox1.Text = cardidhex

                status = piccgetversion_ntag(piccversiondata(0))
                If status = 0 Then
                    cardidhex = ""
                    For i = 0 To 7
                        cardidhex = cardidhex + Strings.Right("00" + Hex(piccversiondata(i)), 2)
                    Next
                    MsgBox("���汾��Ϣ��" + cardidhex, MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
                Else
                    MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                End If

            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select
    End Sub

    Private Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
        Dim status As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim piccsigdata(31) As Byte '��ǩ����Ϣ
        Dim i As Integer
        Dim cardidhex As String

        status = piccrequest_ul(mypiccserial(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox1.Text = cardidhex

                status = piccreadsig_ntag(piccsigdata(0))
                If status = 0 Then
                    cardidhex = ""
                    For i = 0 To 31
                        cardidhex = cardidhex + Strings.Right("00" + Hex(piccsigdata(i)), 2)
                    Next
                    MsgBox("��ǩ����Ϣ��" + cardidhex, MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
                Else
                    MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                End If

            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select
    End Sub

    Private Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
        Dim status As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim mypicccntdata(2) As Byte '�������ĵ������������������ˮ�ţ�
        Dim i As Integer
        Dim cardidhex As String

        status = piccrequest_ul(mypiccserial(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox1.Text = cardidhex

                status = piccreadcnt_ntag(mypicccntdata(0))
                If status = 0 Then
                    cardidhex = ""
                    For i = 0 To 2
                        cardidhex = cardidhex + Strings.Right("00" + Hex(mypicccntdata(i)), 2)
                    Next
                    MsgBox("�������ĵ����������" + cardidhex, MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
                ElseIf status = 13 Then
                    MsgBox("    �����Ǽ�����������δ���û򿨱���֧�ּ������ܣ����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                Else
                    MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                End If

            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select
    End Sub

    Private Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        Dim status As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim mypicclockdata(3) As Byte 'д����Ϊ4���ֽ�
        Dim i, answ As Integer
        Dim cardidhex As String

        status = piccrequest_ul(mypiccserial(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox1.Text = cardidhex

                answ = MsgBox("    ȷ��Ҫ����������0~15ҳ����������Щҳ�����ݲ����ٸ��ġ�", MsgBoxStyle.Question + MsgBoxStyle.YesNo, "��ʾ")
                If answ = vbOK Then
                    mypicclockdata(0) = 0        '������ȷ���˽��⼸���ֽڵ���˼������Ҫ���޸�
                    mypicclockdata(1) = 0
                    mypicclockdata(2) = &HF9
                    mypicclockdata(3) = 0

                    status = picclock_ntag(0, mypicclockdata(0))   '����0~15dҳ
                    If status = 0 Then
                        pcdbeep(50)
                        MsgBox("0~15ҳ����λд��ɹ�������", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
                    ElseIf status = 14 Then
                        MsgBox("д��ʧ�ܣ�", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
                    Else
                        MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                    End If
                End If
            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select
    End Sub

    Private Sub TextBox4_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox4.KeyPress
        If (e.KeyChar >= "0" And e.KeyChar <= "9") Or (e.KeyChar >= "A" And e.KeyChar <= "F") Or (e.KeyChar >= "a" And e.KeyChar <= "f") Then   '����ֻ������16������
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub


    Private Sub Button13_Click(sender As Object, e As EventArgs) Handles Button13.Click
        Dim status As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim mypicclockdata(3) As Byte 'д����Ϊ4���ֽ�
        Dim i, answ As Integer
        Dim cardidhex As String

        status = piccrequest_ul(mypiccserial(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox1.Text = cardidhex

                answ = MsgBox("    ȷ��Ҫ��������16ҳ�Ժ����������������Щҳ�����ݲ����ٸ��ġ�", MsgBoxStyle.Question + MsgBoxStyle.YesNo, "��ʾ")
                If answ = vbOK Then
                    mypicclockdata(0) = &H1      '������ȷ���˽��⼸���ֽڵ���˼������Ҫ���޸�
                    mypicclockdata(1) = &H1
                    mypicclockdata(2) = 0
                    mypicclockdata(3) = 0

                    status = picclock_ntag(1, mypicclockdata(0))   '����0~15dҳ
                    If status = 0 Then
                        pcdbeep(50)
                        MsgBox("16�Ժ��ҳ����λд��ɹ�������", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
                    ElseIf status = 14 Then
                        MsgBox("д��ʧ�ܣ�", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
                    Else
                        MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                    End If
                End If
            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select
    End Sub


    Private Sub Button14_Click(sender As Object, e As EventArgs) Handles Button14.Click
        Dim status, myctrlword, comedc As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim i As Integer
        Dim cardidhex, authkey, Str As String
        Dim mypicckey(0 To 3) As Byte '��֤����
        Dim mypiccdata(0 To 15) As Byte '��ʼ��������

        If CheckBox1.Checked Then
            If Len(Trim(TextBox5.Text)) < 8 Then
                i = MsgBox("����֤����λ�����㣡", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                If i <> vbOK Then
                    TextBox5.Select()
                    Exit Sub
                End If
            Else
                authkey = Trim(TextBox5.Text)
                For i = 0 To 3
                    mypicckey(i) = CByte("&H" & Mid(authkey, i * 2 + 1, 2))
                Next
            End If
            myctrlword = &H10  '��Ҫ��֤��������ټ���
        Else
            myctrlword = 0
        End If

        If ComboBox1.SelectedIndex = 0 Then      '�����������뱣������
            If Len(Trim(TextBox6.Text)) < 8 Then
                i = MsgBox("��������λ�����㣡", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
                If i <> vbOK Then
                    TextBox6.Select()
                    Exit Sub
                End If
            Else
                authkey = Trim(TextBox6.Text)
                For i = 0 To 3
                    mypiccdata(i + 8) = CByte("&H" & Mid(authkey, i * 2 + 1, 2))
                Next
            End If

            mypiccdata(12) = &H16  'PACK
            mypiccdata(13) = &H16  'PACK
            mypiccdata(14) = 0     'RFUI
            mypiccdata(15) = 0     'RFUI

            myctrlword = myctrlword + 4  '  //'���¿�����

            mypiccdata(0) = 0      'MIRROR
            mypiccdata(1) = 0      'RFUI
            mypiccdata(2) = 0      'MIRROR_PAGE
            mypiccdata(3) = beginp.Value  'AUTH0

            myctrlword = myctrlword + 1 '���¿�����

            mypiccdata(4) = Limitau.Value Mod 8 'AUTH0
            If CheckBox2.Checked Then
                mypiccdata(4) = mypiccdata(4) + &H80
            End If

            '���ü�����
            mypiccdata(5) = 0
            mypiccdata(6) = 0
            mypiccdata(7) = 0

            myctrlword = myctrlword + 2  '���¿�����
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

        '-------------------------------------------------------------------------
        '�������ģ���ʽ��
        comedc = &H16
        Str = "1D16"

        '������
        Str = Str + Strings.Right("00" + Hex(myctrlword), 2)
        comedc = comedc Xor myctrlword

        '����
        For i = 0 To 6
            Str = Str + Strings.Right("00" + Hex(mypiccserial(i)), 2)
            comedc = comedc Xor mypiccserial(i)
        Next i

        '����
        For i = 0 To 3
            Str = Str + Strings.Right("00" + Hex(mypicckey(i)), 2)
            comedc = comedc Xor mypicckey(i)
        Next i

        '����
        For i = 0 To 15
            Str = Str + Strings.Right("00" + Hex(mypiccdata(i)), 2)
            comedc = comedc Xor mypiccdata(i)
        Next i


        'У����
        Str = Str + Strings.Right("00" + Hex(comedc), 2)
        RichTextBox2.Text = Str
        '-------------------------------------------------------------------------

        status = piccinit_ntag(myctrlword, mypiccserial(0), mypicckey(0), mypiccdata(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox8.Text = cardidhex
                MsgBox("��ʼ�����ɹ���", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")
            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 12
                MsgBox("�������", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 14
                MsgBox("����ʧ�ܣ�������Ҫ��֤���룡", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select

    End Sub

    Private Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles TextBox4.TextChanged

    End Sub

    Private Sub TextBox5_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox5.KeyPress
        If (e.KeyChar >= "0" And e.KeyChar <= "9") Or (e.KeyChar >= "A" And e.KeyChar <= "F") Or (e.KeyChar >= "a" And e.KeyChar <= "f") Then   '����ֻ������16������
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub

    Private Sub TextBox5_TextChanged(sender As Object, e As EventArgs) Handles TextBox5.TextChanged

    End Sub

    Private Sub TextBox6_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox6.KeyPress
        If (e.KeyChar >= "0" And e.KeyChar <= "9") Or (e.KeyChar >= "A" And e.KeyChar <= "F") Or (e.KeyChar >= "a" And e.KeyChar <= "f") Then   '����ֻ������16������
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub

    Private Sub TextBox6_TextChanged(sender As Object, e As EventArgs) Handles TextBox6.TextChanged

    End Sub

    Private Sub TextBox7_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox7.KeyPress
        If (e.KeyChar >= "0" And e.KeyChar <= "9") Or (e.KeyChar >= "A" And e.KeyChar <= "F") Or (e.KeyChar >= "a" And e.KeyChar <= "f") Then   '����ֻ������16������
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub

    Private Sub TextBox7_TextChanged(sender As Object, e As EventArgs) Handles TextBox7.TextChanged

    End Sub

    Private Sub RichTextBox1_TextChanged(sender As Object, e As EventArgs) Handles RichTextBox1.TextChanged

    End Sub
End Class
