
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
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents blockadd As System.Windows.Forms.NumericUpDown
    Friend WithEvents blocksize As System.Windows.Forms.NumericUpDown
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox3 As System.Windows.Forms.TextBox
    Friend WithEvents Button6 As System.Windows.Forms.Button
    Friend WithEvents RichTextBox1 As System.Windows.Forms.RichTextBox
    Friend WithEvents Button7 As System.Windows.Forms.Button
    Friend WithEvents Button5 As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.blockadd = New System.Windows.Forms.NumericUpDown()
        Me.blocksize = New System.Windows.Forms.NumericUpDown()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.TextBox3 = New System.Windows.Forms.TextBox()
        Me.Button6 = New System.Windows.Forms.Button()
        Me.RichTextBox1 = New System.Windows.Forms.RichTextBox()
        Me.Button7 = New System.Windows.Forms.Button()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.blockadd, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.blocksize, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(12, 117)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(120, 32)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "��4��ҳ  >>"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(12, 155)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(120, 32)
        Me.Button2.TabIndex = 1
        Me.Button2.Text = "д1��ҳ  >>"
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(12, 79)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(120, 32)
        Me.Button3.TabIndex = 2
        Me.Button3.Text = "�������к� >>"
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(12, 3)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(120, 32)
        Me.Button4.TabIndex = 3
        Me.Button4.Text = "���豸��������"
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(12, 41)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(345, 32)
        Me.Button5.TabIndex = 4
        Me.Button5.Text = "�����豸ȫ��Ψһ���豸��ţ���Ϊ���ܹ���"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(138, 86)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(175, 21)
        Me.TextBox1.TabIndex = 5
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Image)
        Me.PictureBox1.Location = New System.Drawing.Point(383, 12)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(490, 413)
        Me.PictureBox1.TabIndex = 6
        Me.PictureBox1.TabStop = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("����", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Label1.Location = New System.Drawing.Point(20, 202)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(112, 16)
        Me.Label1.TabIndex = 7
        Me.Label1.Text = "��д��ʼҳ��:"
        '
        'blockadd
        '
        Me.blockadd.Font = New System.Drawing.Font("����", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.blockadd.Location = New System.Drawing.Point(138, 197)
        Me.blockadd.Name = "blockadd"
        Me.blockadd.Size = New System.Drawing.Size(54, 26)
        Me.blockadd.TabIndex = 8
        Me.blockadd.Value = New Decimal(New Integer() {4, 0, 0, 0})
        '
        'blocksize
        '
        Me.blocksize.Font = New System.Drawing.Font("����", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.blocksize.Location = New System.Drawing.Point(289, 197)
        Me.blocksize.Name = "blocksize"
        Me.blocksize.Size = New System.Drawing.Size(54, 26)
        Me.blocksize.TabIndex = 10
        Me.blocksize.Value = New Decimal(New Integer() {12, 0, 0, 0})
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("����", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Label2.Location = New System.Drawing.Point(215, 202)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(80, 16)
        Me.Label2.TabIndex = 9
        Me.Label2.Text = "��дҳ��:"
        '
        'TextBox2
        '
        Me.TextBox2.Location = New System.Drawing.Point(139, 124)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(218, 21)
        Me.TextBox2.TabIndex = 11
        '
        'TextBox3
        '
        Me.TextBox3.Location = New System.Drawing.Point(139, 162)
        Me.TextBox3.MaxLength = 8
        Me.TextBox3.Name = "TextBox3"
        Me.TextBox3.Size = New System.Drawing.Size(77, 21)
        Me.TextBox3.TabIndex = 12
        '
        'Button6
        '
        Me.Button6.Location = New System.Drawing.Point(13, 247)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(344, 32)
        Me.Button6.TabIndex = 13
        Me.Button6.Text = "���ɶ��������һ��12�� "
        '
        'RichTextBox1
        '
        Me.RichTextBox1.Location = New System.Drawing.Point(12, 285)
        Me.RichTextBox1.Name = "RichTextBox1"
        Me.RichTextBox1.Size = New System.Drawing.Size(345, 81)
        Me.RichTextBox1.TabIndex = 14
        Me.RichTextBox1.Text = ""
        '
        'Button7
        '
        Me.Button7.Location = New System.Drawing.Point(12, 372)
        Me.Button7.Name = "Button7"
        Me.Button7.Size = New System.Drawing.Size(345, 32)
        Me.Button7.TabIndex = 15
        Me.Button7.Text = "����д�������һ��12�� "
        '
        'Form1
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(6, 14)
        Me.ClientSize = New System.Drawing.Size(879, 428)
        Me.Controls.Add(Me.Button7)
        Me.Controls.Add(Me.RichTextBox1)
        Me.Controls.Add(Me.Button6)
        Me.Controls.Add(Me.TextBox3)
        Me.Controls.Add(Me.TextBox2)
        Me.Controls.Add(Me.blocksize)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.blockadd)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Mifare Ultralight����д�����ӳ���"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.blockadd, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.blocksize, System.ComponentModel.ISupportInitialize).EndInit()
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
        If (e.KeyChar >= "0" And e.KeyChar <= "9") Or (e.KeyChar >= "A" And e.KeyChar <= "F") Or (e.KeyChar >= "a" And e.KeyChar <= "f") Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub


    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        '���ɶ���
        '����֧��:
        '��վ:

        Dim status, myctrlword As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim i As Integer
        Dim cardidhex As String
        Dim mypiccdata(0 To 47) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�
        Dim myblockaddr As Byte '��ʼ���ַ
        Dim myblocksize As Byte '�ܿ���

        myblockaddr = CByte(blockadd.Value)
        myblocksize = CByte(blocksize.Value)
        myctrlword = 0

        status = piccreadex_ul(myctrlword, mypiccserial(0), myblockaddr, myblocksize, mypiccdata(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox1.Text = cardidhex


                cardidhex = ""
                For i = 0 To myblocksize * 4 - 1
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccdata(i)), 2)
                Next
                RichTextBox1.Text = cardidhex
                MsgBox("�����ɹ���", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")

            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select
    End Sub

    Private Sub RichTextBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles RichTextBox1.KeyPress  '������ֻ������16������
        If (e.KeyChar >= "0" And e.KeyChar <= "9") Or (e.KeyChar >= "A" And e.KeyChar <= "F") Or (e.KeyChar >= "a" And e.KeyChar <= "f") Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub

    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Dim status, myctrlword As Byte '��ŷ���ֵ
        Dim mypiccserial(7) As Byte '�����к�
        Dim i As Integer
        Dim cardidhex, writstr As String
        Dim mypiccdata(0 To 47) As Byte '���������ݻ��壬Ultralight����NTAG21x�������鳤�ȱ���Ϊ16���ֽڣ�д����Ϊ4���ֽ�
        Dim myblockaddr As Byte '��ʼ���ַ
        Dim myblocksize As Byte '�ܿ���

        myblockaddr = CByte(blockadd.Value)
        myblocksize = CByte(blocksize.Value)
        myctrlword = 0

        If Len(Trim(RichTextBox1.Text)) < myblocksize * 4 Then
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

        status = piccwriteex_ul(myctrlword, mypiccserial(0), myblockaddr, myblocksize, mypiccdata(0))

        Select Case status
            Case 0
                pcdbeep(50)
                cardidhex = ""
                For i = 0 To 6
                    cardidhex = cardidhex + Strings.Right("00" + Hex(mypiccserial(i)), 2)
                Next
                TextBox1.Text = cardidhex

                MsgBox("д���ɹ���", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "��ʾ")

            Case 8
                MsgBox("�뽫�����ڸ�Ӧ����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case 23
                MsgBox("������USB��д����", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
            Case Else
                MsgBox("�����쳣�����ش��룺" + Str(status), MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "��ʾ")
        End Select
    End Sub
End Class
