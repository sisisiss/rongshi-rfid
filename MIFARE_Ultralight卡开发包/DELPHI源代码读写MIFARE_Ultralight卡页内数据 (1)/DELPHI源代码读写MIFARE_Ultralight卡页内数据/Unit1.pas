unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,declaredll,strutils, jpeg;

type
  TForm1 = class(TForm)
    Button4: TButton;
    Button5: TButton;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Edit3: TEdit;
    Label10: TLabel;
    Edit4: TEdit;
    Button12: TButton;
    Button13: TButton;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Memo1: TMemo;
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  port,baud:integer;



implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
//���ɶ���
{
����֧�֣�
��վ��
}
var

    status:byte;//��ŷ���ֵ
    myareano:byte;//����
    authmode:byte;//�������ͣ���A�����B����
    myctrlword:byte;//������
	  mypicckey:array[0..5] of byte;//����
    mypiccserial:array[0..3] of byte;//�����к�
    mypiccdata:array[0..47] of byte;//�����ݻ���
    str:string;
begin

   //������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
   myctrlword := BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

    //ָ������
    myareano := 8;//ָ��Ϊ��8��
    //��������ģʽ
    authmode := 1;//����0��ʾ��A������֤���Ƽ���A������֤

    //ָ������
    mypicckey[0] := $ff;
    mypicckey[1] := $ff;
    mypicckey[2] := $ff;
    mypicckey[3] := $ff;
    mypicckey[4] := $ff;
    mypicckey[5] := $ff;

    status := piccreadex(myctrlword,@mypiccserial,myareano,authmode,@mypicckey,@mypiccdata);
        //�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
        //������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
        //������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
        //�����غ���


        case status of
          0:
          begin
             setlength(str,48);
             move(mypiccdata[0],str[1],48);
             ShowMessage('���������ɹ���������Ϣ:'+str);
          end;
          8: ShowMessage('�뽫�����ڸ�Ӧ��');
          12:ShowMessage('��������֤ʧ�ܣ�');
        else
          begin
              ShowMessage('����ʧ�ܣ��������:'+IntToStr(status));
          end;
        end;

        //���ؽ���
        {
        #define ERR_REQUEST 8//Ѱ������
        #define ERR_READSERIAL 9//�����������
        #define ERR_SELECTCARD 10//ѡ������
        #define ERR_LOADKEY 11//װ���������
        #define ERR_AUTHKEY 12//������֤����
        #define ERR_READ 13//��������
        #define ERR_WRITE 14//д������

        #define ERR_NONEDLL 21//û�ж�̬��
        #define ERR_DRIVERORDLL 22//��̬������������쳣
        #define ERR_DRIVERNULL 23//��������������δ��װ
        #define ERR_TIMEOUT 24//������ʱ��һ���Ƕ�̬��û�з�ӳ
        #define ERR_TXSIZE 25//������������
        #define ERR_TXCRC 26//���͵�CRC��
        #define ERR_RXSIZE 27//���յ���������
        #define ERR_RXCRC 28//���յ�CRC��
        }
end;

procedure TForm1.Button3Click(Sender: TObject);
//�ĵ�������
{
����֧�֣�
��վ��
}
var
    status:byte;//��ŷ���ֵ
    myareano:byte;//����
    authmode:byte;//�������ͣ���A�����B����
    myctrlword:byte;//������
	  mypiccnewkey:array[0..5] of byte;//������
    mypiccserial:array[0..5] of byte;//�����к�
    mypiccoldkey:array[0..5] of byte;//������

begin
   //������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
   myctrlword := 0;

    //ָ������
    myareano := 8;//ָ��Ϊ��8��
    //��������ģʽ
    authmode := 1;//����0��ʾ��A������֤���Ƽ���A������֤

    //ָ������
    //ָ��������
        mypiccoldkey[0] := $ff;
        mypiccoldkey[1] := $ff;
        mypiccoldkey[2] := $ff;
        mypiccoldkey[3] := $ff;
        mypiccoldkey[4] := $ff;
        mypiccoldkey[5] := $ff;
        //ָ��������,ע�⣺ָ��������ʱһ��Ҫ��ס�������п����Ҳ������룬���¸ÿ����ϡ�
        mypiccnewkey[0] := $ff;
        mypiccnewkey[1] := $ff;
        mypiccnewkey[2] := $ff;
        mypiccnewkey[3] := $ff;
        mypiccnewkey[4] := $ff;
        mypiccnewkey[5] := $ff;

        status := piccchangesinglekey(myctrlword,@mypiccserial,myareano,authmode,@mypiccoldkey,@mypiccnewkey);
        case status of
          0: ShowMessage('�����ɹ�');
          8: ShowMessage('�뽫�����ڸ�Ӧ��');
        else ;
        end;

        //���ؽ���
        {
        #define ERR_REQUEST 8//Ѱ������
        #define ERR_READSERIAL 9//�����������
        #define ERR_SELECTCARD 10//ѡ������
        #define ERR_LOADKEY 11//װ���������
        #define ERR_AUTHKEY 12//������֤����
        #define ERR_READ 13//��������
        #define ERR_WRITE 14//д������

        #define ERR_NONEDLL 21//û�ж�̬��
        #define ERR_DRIVERORDLL 22//��̬������������쳣
        #define ERR_DRIVERNULL 23//��������������δ��װ
        #define ERR_TIMEOUT 24//������ʱ��һ���Ƕ�̬��û�з�ӳ
        #define ERR_TXSIZE 25//������������
        #define ERR_TXCRC 26//���͵�CRC��
        #define ERR_RXSIZE 27//���յ���������
        #define ERR_RXCRC 28//���յ�CRC��
        }
end;

procedure TForm1.Button5Click(Sender: TObject);
//���ɶ���
{
����֧�֣�
��վ��
}
var
        devno:array[0..3] of byte;//�豸���
begin

        if pcdgetdevicenumber(@devno) = 0 then
        begin
          pcdbeep(50);
          ShowMessage('�豸���:'+IntToStr(devno[0]) + '-' + IntToStr(devno[1]) + '-' + IntToStr(devno[2]) + '-' + IntToStr(devno[3]));
        end;


        //���ؽ���
        {
        #define ERR_REQUEST 8//Ѱ������
        #define ERR_READSERIAL 9//�����������
        #define ERR_SELECTCARD 10//ѡ������
        #define ERR_LOADKEY 11//װ���������
        #define ERR_AUTHKEY 12//������֤����
        #define ERR_READ 13//��������
        #define ERR_WRITE 14//д������

        #define ERR_NONEDLL 21//û�ж�̬��
        #define ERR_DRIVERORDLL 22//��̬������������쳣
        #define ERR_DRIVERNULL 23//��������������δ��װ
        #define ERR_TIMEOUT 24//������ʱ��һ���Ƕ�̬��û�з�ӳ
        #define ERR_TXSIZE 25//������������
        #define ERR_TXCRC 26//���͵�CRC��
        #define ERR_RXSIZE 27//���յ���������
        #define ERR_RXCRC 28//���յ�CRC��
        }
end;

procedure TForm1.Button4Click(Sender: TObject);
//���豸��������
{
����֧�֣�
��վ��
}
begin
  pcdbeep(50);
end;


procedure TForm1.Button7Click(Sender: TObject);
var
    status:byte;//��ŷ���ֵ
    myareano:byte;//����
    authmode:byte;//�������ͣ���A�����B����
    myctrlword:byte;//������
	  mypiccoldkey:array[0..5] of byte;//������
    mypiccserial:array[0..5] of byte;//�����к�
    mypiccdata:array[0..16] of byte;//������
begin
  //������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��

  myctrlword := EXTERNKEY;
  myareano := 1;
  authmode := 1;

  //ָ��������
  mypiccoldkey[0] := $FF;
  mypiccoldkey[1] := $FF;
  mypiccoldkey[2] := $FF;
  mypiccoldkey[3] := $FF;
  mypiccoldkey[4] := $FF;
  mypiccoldkey[5] := $FF;

  //'ָ����A����
  mypiccdata[0] := $FF;
  mypiccdata[1] := $FF;
  mypiccdata[2] := $FF;
  mypiccdata[3] := $FF;
  mypiccdata[4] := $FF;
  mypiccdata[5] := $FF;

  //���ʿ���λ�������أ��Ĵ���ܵ��¿�����************************************************************************************
  mypiccdata[6] := $FF;
  mypiccdata[7] := $07;
  mypiccdata[8] := $80;
  mypiccdata[9] := $69;

  //'ָ����B����
  mypiccdata[10] := $FF;
  mypiccdata[11] := $FF;
  mypiccdata[12] := $FF;
  mypiccdata[13] := $FF;
  mypiccdata[14] := $FF;
  mypiccdata[15] := $FF;

  mypiccdata[16] := 3; //Ϊ1��ʾ���ķ��ʿ���λ��Ϊ2��ʾ����B���룬Ϊ3��ʾͬʱ���ķ��ʿ���λ��B���룬A�������κ�����¶����ģ�

  status := piccchangesinglekeyex(myctrlword,@mypiccserial,myareano,authmode,@mypiccoldkey,@mypiccdata);
  If  status = 0 then
  begin
    pcdbeep(100);
    ShowMessage('OK');
  end
  else if status = 8 then
  begin
    ShowMessage('�뽫�����ڸ�Ӧ��');
  end
  else
  begin
    pcdbeep(50);
    sleep(100);
    pcdbeep(50);

    ShowMessage('�������:' + IntToStr(status));
  end;



end;

procedure TForm1.Button8Click(Sender: TObject);
var
  status:byte;//��ŷ���ֵ
  mypiccserial:array[0..6] of byte;//�����к�
  mypicdata:array[0..47] of byte;  //��������
  myctrlword,blockaddr,blocksize:byte;                  //�����֣���������ʼ���ַ����д����
  i:integer;
  CardIdHex,strls:string;

begin
    myctrlword := 0;
    blockaddr:=Strtoint(Edit5.Text);
    blocksize:=Strtoint(Edit6.Text);
    strls := StringReplace(memo1.Text, #13#10, '', [rfReplaceAll])  + '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';  //д����Ϣ������油0
    for i:=0 to blocksize*4-1 do
    begin
         mypicdata[i]:=strtoint('$'+midstr(strls,i*2+1,2));
    end;

    status := piccwriteex_ul(myctrlword,@mypiccserial,blockaddr,blocksize,@mypicdata);
    case status of
          0:
          begin
             pcdbeep(50);

             CardIdHex:='';
             for i:=0 to 6 do
             begin
                  CardIdHex:=CardIdHex+inttohex(mypiccserial[i],2);
             end;
             Edit3.Text := CardIdHex;

             ShowMessage('д���ɹ���');

          end;

        8:  ShowMessage('�뽫�����ڸ�Ӧ��');

        23: ShowMessage('������USB ��д��');

        else
          begin
            ShowMessage('����ʧ�ܣ�������룺'+IntToStr(status));
          end;
        end;

        //���ؽ���
        {
        #define ERR_REQUEST 8//Ѱ������
        #define ERR_READSERIAL 9//�����������
        #define ERR_SELECTCARD 10//ѡ������
        #define ERR_LOADKEY 11//װ���������
        #define ERR_AUTHKEY 12//������֤����
        #define ERR_READ 13//��������
        #define ERR_WRITE 14//д������

        #define ERR_NONEDLL 21//û�ж�̬��
        #define ERR_DRIVERORDLL 22//��̬������������쳣
        #define ERR_DRIVERNULL 23//��������������δ��װ
        #define ERR_TIMEOUT 24//������ʱ��һ���Ƕ�̬��û�з�ӳ
        #define ERR_TXSIZE 25//������������
        #define ERR_TXCRC 26//���͵�CRC��
        #define ERR_RXSIZE 27//���յ���������
        #define ERR_RXCRC 28//���յ�CRC��
        }
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  status:byte;//��ŷ���ֵ
  mypiccserial:array[0..6] of byte;//�����к�
  mypicdata:array[0..47] of byte;  //��������
  myctrlword,blockaddr,blocksize:byte;                  //�����֣���������ʼ���ַ����д����
  i:integer;
  CardIdHex,strls:string;

begin
    myctrlword := 0;
    blockaddr:=Strtoint(Edit5.Text);
    blocksize:=Strtoint(Edit6.Text);

    status := piccreadex_ul(myctrlword,@mypiccserial,blockaddr,blocksize,@mypicdata);
    case status of
          0:
          begin
             pcdbeep(50);

             CardIdHex:='';
             for i:=0 to 6 do
             begin
                  CardIdHex:=CardIdHex+inttohex(mypiccserial[i],2);
             end;
             Edit3.Text := CardIdHex;

             CardIdHex:='';
             for i:=0 to blocksize*4-1 do
             begin
                  CardIdHex:=CardIdHex+inttohex(mypicdata[i],2);
             end;
             memo1.Text := CardIdHex;

             ShowMessage('�����ɹ���');

          end;

        8:  ShowMessage('�뽫�����ڸ�Ӧ��');

        23: ShowMessage('������USB ��д��');

        else
          begin
            ShowMessage('����ʧ�ܣ�������룺'+IntToStr(status));
          end;
        end;

        //���ؽ���
        {
        #define ERR_REQUEST 8//Ѱ������
        #define ERR_READSERIAL 9//�����������
        #define ERR_SELECTCARD 10//ѡ������
        #define ERR_LOADKEY 11//װ���������
        #define ERR_AUTHKEY 12//������֤����
        #define ERR_READ 13//��������
        #define ERR_WRITE 14//д������

        #define ERR_NONEDLL 21//û�ж�̬��
        #define ERR_DRIVERORDLL 22//��̬������������쳣
        #define ERR_DRIVERNULL 23//��������������δ��װ
        #define ERR_TIMEOUT 24//������ʱ��һ���Ƕ�̬��û�з�ӳ
        #define ERR_TXSIZE 25//������������
        #define ERR_TXCRC 26//���͵�CRC��
        #define ERR_RXSIZE 27//���յ���������
        #define ERR_RXCRC 28//���յ�CRC��
        }
end;

procedure TForm1.Button10Click(Sender: TObject);
var
  status:byte;//��ŷ���ֵ
  mypiccserial:array[0..6] of byte;//�����к�
  i:integer;
  CardIdHex:string;

begin
    status := piccrequest_ul(@mypiccserial);
    case status of
          0:
          begin
              pcdbeep(50);
             CardIdHex:='';
             for i:=0 to 6 do
             begin
                  CardIdHex:=CardIdHex+inttohex(mypiccserial[i],2);
             end;
             Edit3.Text := CardIdHex;
             ShowMessage('���������ɹ�!');
          end;
          8: ShowMessage('�뽫�����ڸ�Ӧ��');
        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

        //���ؽ���
        {
        #define ERR_REQUEST 8//Ѱ������
        #define ERR_READSERIAL 9//�����������
        #define ERR_SELECTCARD 10//ѡ������
        #define ERR_LOADKEY 11//װ���������
        #define ERR_AUTHKEY 12//������֤����
        #define ERR_READ 13//��������
        #define ERR_WRITE 14//д������

        #define ERR_NONEDLL 21//û�ж�̬��
        #define ERR_DRIVERORDLL 22//��̬������������쳣
        #define ERR_DRIVERNULL 23//��������������δ��װ
        #define ERR_TIMEOUT 24//������ʱ��һ���Ƕ�̬��û�з�ӳ
        #define ERR_TXSIZE 25//������������
        #define ERR_TXCRC 26//���͵�CRC��
        #define ERR_RXSIZE 27//���յ���������
        #define ERR_RXCRC 28//���յ�CRC��
        }

end;

procedure TForm1.Button13Click(Sender: TObject);
var
  status:byte;//��ŷ���ֵ
  mypiccserial:array[0..6] of byte;//�����к�
  mypicdata:array[0..3] of byte;  //��������
  blockaddr:byte;                  //��������ʼ���ַ
  i:integer;
  CardIdHex,strls:string;

begin
    status := piccrequest_ul(@mypiccserial);
    case status of
          0:
          begin
             CardIdHex:='';
             for i:=0 to 6 do
             begin
                  CardIdHex:=CardIdHex+inttohex(mypiccserial[i],2);
             end;
             Edit3.Text := CardIdHex;

             strls := StringReplace(edit2.Text, #13#10, '', [rfReplaceAll])  + '00000000';
             for i:=0 to 3 do
             begin
                 mypicdata[i]:=strtoint('$'+midstr(strls,i*2+1,2));
             end;

             blockaddr:=Strtoint(Edit5.Text);

             status := piccwrite_ul(blockaddr,@mypicdata);
             if status=0 then
             begin
                 pcdbeep(50);
                 ShowMessage('д���ٳɹ���');
             end
             else
             begin
                 ShowMessage('д����ʧ�ܣ�������룺'+IntToStr(status));
             end;
          end;

        8:  ShowMessage('�뽫�����ڸ�Ӧ��');

        23: ShowMessage('������USB ��д��');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

end;

procedure TForm1.Button12Click(Sender: TObject);
var
  status:byte;//��ŷ���ֵ
  mypiccserial:array[0..6] of byte;//�����к�
  mypicdata:array[0..15] of byte;  //��������
  blockaddr:byte;                  //��������ʼ���ַ
  i:integer;
  CardIdHex,strls:string;

begin
    status := piccrequest_ul(@mypiccserial);
    case status of
          0:
          begin
             CardIdHex:='';
             for i:=0 to 6 do
             begin
                  CardIdHex:=CardIdHex+inttohex(mypiccserial[i],2);
             end;
             Edit3.Text := CardIdHex;

             blockaddr:=Strtoint(Edit5.Text);

             status := piccread_ul(blockaddr,@mypicdata);
             if status=0 then
             begin
                 pcdbeep(50);
                 CardIdHex:='';
                 for i:=0 to 15 do
                 begin
                     CardIdHex:=CardIdHex+inttohex(mypicdata[i],2);
                 end;
                 Edit4.Text := CardIdHex;
                 ShowMessage('�����ٳɹ���');
             end
             else
             begin
                 ShowMessage('������ʧ�ܣ�������룺'+IntToStr(status));
             end;
          end;

        8:  ShowMessage('�뽫�����ڸ�Ӧ��');

        23: ShowMessage('������USB ��д��');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

end;

end.
