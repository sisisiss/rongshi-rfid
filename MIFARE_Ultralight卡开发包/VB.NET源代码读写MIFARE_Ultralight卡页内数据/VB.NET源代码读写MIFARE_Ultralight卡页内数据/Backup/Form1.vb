
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
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Button1 = New System.Windows.Forms.Button
        Me.Button2 = New System.Windows.Forms.Button
        Me.Button3 = New System.Windows.Forms.Button
        Me.Button4 = New System.Windows.Forms.Button
        Me.Button5 = New System.Windows.Forms.Button
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(8, 16)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(120, 40)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "���ɶ���"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(136, 16)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(120, 40)
        Me.Button2.TabIndex = 1
        Me.Button2.Text = "����д��"
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(264, 16)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(120, 40)
        Me.Button3.TabIndex = 2
        Me.Button3.Text = "�ĵ�������"
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(392, 16)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(120, 40)
        Me.Button4.TabIndex = 3
        Me.Button4.Text = "���豸��������"
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(8, 64)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(504, 40)
        Me.Button5.TabIndex = 4
        Me.Button5.Text = "�����豸ȫ��Ψһ���豸��ţ���Ϊ���ܹ���"
        '
        'Label1
        '
        Me.Label1.Location = New System.Drawing.Point(48, 136)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(424, 16)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "���齫ICUSB.dll��OUR_MIFARE.dll���Ƶ�Ӧ�ó���ͬһĿ¼��"
        '
        'Label2
        '
        Me.Label2.Location = New System.Drawing.Point(48, 168)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(424, 16)
        Me.Label2.TabIndex = 6
        Me.Label2.Text = "ÿ����ťֻ���õ�һ������������4��������������Ӧ������Ӧ�ã����Խ�ʡ�����Ŀ���ʱ��"
        '
        'Label3
        '
        Me.Label3.Font = New System.Drawing.Font("����", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(134, Byte))
        Me.Label3.ForeColor = System.Drawing.Color.Red
        Me.Label3.Location = New System.Drawing.Point(168, 200)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(168, 40)
        Me.Label3.TabIndex = 7
        Me.Label3.Text = "��д�����ӳ���"
        '
        'Label4
        '
        Me.Label4.ForeColor = System.Drawing.Color.Red
        Me.Label4.Location = New System.Drawing.Point(48, 112)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(424, 16)
        Me.Label4.TabIndex = 8
        Me.Label4.Text = "��VB.net�ı༭״̬��˫�����ϰ�ť���Բ鿴����"
        '
        'Form1
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(6, 14)
        Me.ClientSize = New System.Drawing.Size(520, 262)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

        '���ɶ���
        '����֧��:
        '��վ:

        Dim data() As Byte
        Dim status As Byte '��ŷ���ֵ

        Dim addrlong As IntPtr


        Dim myareano As Byte '����
        Dim authmode As Byte '�������ͣ���A�����B����
        Dim myctrlword As Byte '������

        Dim mypiccserial(3) As Byte '�����к�,��0~3�ĸ��ֽ�
        Dim mypicckey(5) As Byte '����,��0~5�����ֽ�
        Dim mypiccdata(47) As Byte '�����ݻ���,��0~47��ʮ�˸��ֽ�




        'Dim mypiccserial As stru_serial '�����к�
        'Dim mypicckey As stru_picckey '����
        'Dim mypiccdata As stru_piccdata0_2 '�����ݻ���

        'Public Structure stru_serial

        'Public Structure stru_picckey

        'Public Structure stru_piccdata0_2

        '������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
        myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY

        'ָ������
        myareano = 8 'ָ��Ϊ��8��
        '��������ģʽ
        authmode = 1 '����0��ʾ��A������֤���Ƽ���A������֤

        'ָ������

        'mypicckey.picckey0 = (&HFF)
        'mypicckey.picckey1 = (&HFF)
        'mypicckey.picckey2 = (&HFF)
        'mypicckey.picckey3 = (&HFF)
        'mypicckey.picckey4 = (&HFF)
        'mypicckey.picckey5 = (&HFF)

        mypicckey(0) = (&HFF)
        mypicckey(1) = (&HFF)
        mypicckey(2) = (&HFF)
        mypicckey(3) = (&HFF)
        mypicckey(4) = (&HFF)
        mypicckey(5) = (&HFF)

        authmode = &HAA

        status = piccreadex(myctrlword, mypiccserial(0), myareano, authmode, mypicckey(0), mypiccdata(0))
        '�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
        '������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
        '������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
        '�����غ���
        Select Case status

            Case 0


                MsgBox("�����ɹ�")

            Case 8

                MsgBox("�뽫�����ڸ�Ӧ��")
            Case 12
                MsgBox("��������֤ʧ��")

            Case 21 'û�ж�̬��
                MsgBox("�Ҳ�����̬��ICUSB.DLL���뽫ICUSB.DLL��������ǰ��Ŀ��binĿ¼��")

            Case Else
                MsgBox("�쳣")

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
        Dim i As Integer
        Dim status As Byte '��ŷ���ֵ
        Dim myareano As Byte '����
        Dim authmode As Byte '�������ͣ���A�����B����
        Dim myctrlword As Byte '������
        Dim mypicckey(5) As Byte '����
        Dim mypiccserial(3) As Byte '�����к�
        Dim mypiccdata(47) As Byte '�����ݻ���


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
        For i = 0 To 47
            mypiccdata(i) = i
        Next i

        status = piccwriteex(myctrlword, mypiccserial(0), myareano, authmode, mypicckey(0), mypiccdata(0))
        '�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
        '������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
        '������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
        '�����غ���
        Select Case status

            Case 0

                MsgBox("�����ɹ�")

            Case 8

                MsgBox("�뽫�����ڸ�Ӧ��")
            Case 12

                MsgBox("��������֤ʧ��")

            Case 21 'û�ж�̬��
                MsgBox("�Ҳ�����̬��ICUSB.DLL���뽫ICUSB.DLL��������ǰ��Ŀ��binĿ¼��")

            Case Else
                MsgBox("�쳣")

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
        '�޸ĵ�������
        '����֧��:
        '��վ:
        Dim i As Integer

        Dim status As Byte '��ŷ���ֵ
        Dim myareano As Byte '����
        Dim authmode As Byte '�������ͣ���A�����B����
        Dim myctrlword As Byte '������
        Dim mypiccserial(3) As Byte '�����к�
        Dim mypiccoldkey(5) As Byte '������
        Dim mypiccnewkey(5) As Byte '������







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

        status = piccchangesinglekey(myctrlword, mypiccserial(0), myareano, authmode, mypiccoldkey(0), mypiccnewkey(0))

        '�����غ���
        Select Case status

            Case 0

                MsgBox("�����ɹ�")

            Case 8

                MsgBox("�뽫�����ڸ�Ӧ��")
            Case 12

                MsgBox("��������֤ʧ��")

            Case 21 'û�ж�̬��
                MsgBox("�Ҳ�����̬��WY-ICUSB.DLL�뽫WY-ICUSB.DLL������VB��װ���Ŀ¼VB98��")

            Case Else
                MsgBox("�쳣")

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
End Class
