unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,declaredll,strutils;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button7: TButton;
    Label5: TLabel;
    Edit1: TEdit;
    Button6: TButton;
    Memo1: TMemo;
    Button8: TButton;
    Button9: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button10: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    Button11: TButton;
    Label10: TLabel;
    Edit4: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button12: TButton;
    Button13: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);

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
//轻松读卡
{
技术支持：
网站：
}
var

    status:byte;//存放返回值
    myareano:byte;//区号
    authmode:byte;//密码类型，用A密码或B密码
    myctrlword:byte;//控制字
	  mypicckey:array[0..5] of byte;//密码
    mypiccserial:array[0..3] of byte;//卡序列号
    mypiccdata:array[0..47] of byte;//卡数据缓冲
    str:string;
begin

   //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
   myctrlword := BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

    //指定区号
    myareano := 8;//指定为第8区
    //批定密码模式
    authmode := 1;//大于0表示用A密码认证，推荐用A密码认证

    //指定密码
    mypicckey[0] := $ff;
    mypicckey[1] := $ff;
    mypicckey[2] := $ff;
    mypicckey[3] := $ff;
    mypicckey[4] := $ff;
    mypicckey[5] := $ff;

    status := piccreadex(myctrlword,@mypiccserial,myareano,authmode,@mypicckey,@mypiccdata);
        //在下面设定断点，然后查看mypiccserial、mypiccdata，
        //调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
        //开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
        //处理返回函数


        case status of
          0:
          begin
             setlength(str,48);
             move(mypiccdata[0],str[1],48);
             ShowMessage('读卡操作成功，卡内信息:'+str);
          end;
          8: ShowMessage('请将卡放在感应区');
          12:ShowMessage('卡密码认证失败！');
        else
          begin
              ShowMessage('操作失败，错误代码:'+IntToStr(status));
          end;
        end;

        //返回解释
        {
        #define ERR_REQUEST 8//寻卡错误
        #define ERR_READSERIAL 9//读序列吗错误
        #define ERR_SELECTCARD 10//选卡错误
        #define ERR_LOADKEY 11//装载密码错误
        #define ERR_AUTHKEY 12//密码认证错误
        #define ERR_READ 13//读卡错误
        #define ERR_WRITE 14//写卡错误

        #define ERR_NONEDLL 21//没有动态库
        #define ERR_DRIVERORDLL 22//动态库或驱动程序异常
        #define ERR_DRIVERNULL 23//驱动程序错误或尚未安装
        #define ERR_TIMEOUT 24//操作超时，一般是动态库没有反映
        #define ERR_TXSIZE 25//发送字数不够
        #define ERR_TXCRC 26//发送的CRC错
        #define ERR_RXSIZE 27//接收的字数不够
        #define ERR_RXCRC 28//接收的CRC错
        }
end;

procedure TForm1.Button2Click(Sender: TObject);
//轻松写卡
{
技术支持：
网站：
}
var
    i:integer;
    status:byte;//存放返回值
    myareano:byte;//区号
    authmode:byte;//密码类型，用A密码或B密码
    myctrlword:byte;//控制字
	  mypicckey:array[0..5] of byte;//密码
    mypiccserial:array[0..3] of byte;//卡序列号
    mypiccdata:array[0..47] of byte;//卡数据缓冲
    strls:string;
begin

   //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
   myctrlword := BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

    //指定区号
    myareano := 8;//指定为第8区
    //批定密码模式
    authmode := 1;//大于0表示用A密码认证，推荐用A密码认证

    //指定密码
    mypicckey[0] := $ff;
    mypicckey[1] := $ff;
    mypicckey[2] := $ff;
    mypicckey[3] := $ff;
    mypicckey[4] := $ff;
    mypicckey[5] := $ff;

    strls := Edit1.Text + '                                                           ';
    for i := 0 to 47 do
    begin
      mypiccdata[i] := Byte(strls[i+1]);
    end;


    status := piccwriteex(myctrlword,@mypiccserial,myareano,authmode,@mypicckey,@mypiccdata);
        //在下面设定断点，然后查看mypiccserial、mypiccdata，
        //调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
        //开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
        //处理返回函数


        case status of
          0:
          begin
              pcdbeep(38);
              ShowMessage('写卡操作成功！');
          end;
          8: ShowMessage('请将卡放在感应区');
          12:ShowMessage('卡密码认证失败！');
        else
          begin
              ShowMessage('操作失败，错误代码:'+IntToStr(status));
          end;
        end;

        //返回解释
        {
        #define ERR_REQUEST 8//寻卡错误
        #define ERR_READSERIAL 9//读序列吗错误
        #define ERR_SELECTCARD 10//选卡错误
        #define ERR_LOADKEY 11//装载密码错误
        #define ERR_AUTHKEY 12//密码认证错误
        #define ERR_READ 13//读卡错误
        #define ERR_WRITE 14//写卡错误

        #define ERR_NONEDLL 21//没有动态库
        #define ERR_DRIVERORDLL 22//动态库或驱动程序异常
        #define ERR_DRIVERNULL 23//驱动程序错误或尚未安装
        #define ERR_TIMEOUT 24//操作超时，一般是动态库没有反映
        #define ERR_TXSIZE 25//发送字数不够
        #define ERR_TXCRC 26//发送的CRC错
        #define ERR_RXSIZE 27//接收的字数不够
        #define ERR_RXCRC 28//接收的CRC错
        }
end;

procedure TForm1.Button3Click(Sender: TObject);
//改单区密码
{
技术支持：
网站：
}
var
    status:byte;//存放返回值
    myareano:byte;//区号
    authmode:byte;//密码类型，用A密码或B密码
    myctrlword:byte;//控制字
	  mypiccnewkey:array[0..5] of byte;//新密码
    mypiccserial:array[0..5] of byte;//卡序列号
    mypiccoldkey:array[0..5] of byte;//旧密码

begin
   //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
   myctrlword := 0;

    //指定区号
    myareano := 8;//指定为第8区
    //批定密码模式
    authmode := 1;//大于0表示用A密码认证，推荐用A密码认证

    //指定密码
    //指定旧密码
        mypiccoldkey[0] := $ff;
        mypiccoldkey[1] := $ff;
        mypiccoldkey[2] := $ff;
        mypiccoldkey[3] := $ff;
        mypiccoldkey[4] := $ff;
        mypiccoldkey[5] := $ff;
        //指定新密码,注意：指定新密码时一定要记住，否则有可能找不回密码，导致该卡报废。
        mypiccnewkey[0] := $ff;
        mypiccnewkey[1] := $ff;
        mypiccnewkey[2] := $ff;
        mypiccnewkey[3] := $ff;
        mypiccnewkey[4] := $ff;
        mypiccnewkey[5] := $ff;

        status := piccchangesinglekey(myctrlword,@mypiccserial,myareano,authmode,@mypiccoldkey,@mypiccnewkey);
        case status of
          0: ShowMessage('操作成功');
          8: ShowMessage('请将卡放在感应区');
        else ;
        end;

        //返回解释
        {
        #define ERR_REQUEST 8//寻卡错误
        #define ERR_READSERIAL 9//读序列吗错误
        #define ERR_SELECTCARD 10//选卡错误
        #define ERR_LOADKEY 11//装载密码错误
        #define ERR_AUTHKEY 12//密码认证错误
        #define ERR_READ 13//读卡错误
        #define ERR_WRITE 14//写卡错误

        #define ERR_NONEDLL 21//没有动态库
        #define ERR_DRIVERORDLL 22//动态库或驱动程序异常
        #define ERR_DRIVERNULL 23//驱动程序错误或尚未安装
        #define ERR_TIMEOUT 24//操作超时，一般是动态库没有反映
        #define ERR_TXSIZE 25//发送字数不够
        #define ERR_TXCRC 26//发送的CRC错
        #define ERR_RXSIZE 27//接收的字数不够
        #define ERR_RXCRC 28//接收的CRC错
        }
end;

procedure TForm1.Button5Click(Sender: TObject);
//轻松读卡
{
技术支持：
网站：
}
var
        devno:array[0..3] of byte;//设备编号
begin

        if pcdgetdevicenumber(@devno) = 0 then
        begin
          pcdbeep(50);
          ShowMessage('设备编号:'+IntToStr(devno[0]) + '-' + IntToStr(devno[1]) + '-' + IntToStr(devno[2]) + '-' + IntToStr(devno[3]));
        end;


        //返回解释
        {
        #define ERR_REQUEST 8//寻卡错误
        #define ERR_READSERIAL 9//读序列吗错误
        #define ERR_SELECTCARD 10//选卡错误
        #define ERR_LOADKEY 11//装载密码错误
        #define ERR_AUTHKEY 12//密码认证错误
        #define ERR_READ 13//读卡错误
        #define ERR_WRITE 14//写卡错误

        #define ERR_NONEDLL 21//没有动态库
        #define ERR_DRIVERORDLL 22//动态库或驱动程序异常
        #define ERR_DRIVERNULL 23//驱动程序错误或尚未安装
        #define ERR_TIMEOUT 24//操作超时，一般是动态库没有反映
        #define ERR_TXSIZE 25//发送字数不够
        #define ERR_TXCRC 26//发送的CRC错
        #define ERR_RXSIZE 27//接收的字数不够
        #define ERR_RXCRC 28//接收的CRC错
        }
end;

procedure TForm1.Button4Click(Sender: TObject);
//让设备发出声音
{
技术支持：
网站：
}
begin
  pcdbeep(50);
end;


procedure TForm1.Button7Click(Sender: TObject);
var
    status:byte;//存放返回值
    myareano:byte;//区号
    authmode:byte;//密码类型，用A密码或B密码
    myctrlword:byte;//控制字
	  mypiccoldkey:array[0..5] of byte;//新密码
    mypiccserial:array[0..5] of byte;//卡序列号
    mypiccdata:array[0..16] of byte;//旧密码
begin
  //控制字指定,控制字的含义请查看本公司网站提供的动态库说明

  myctrlword := EXTERNKEY;
  myareano := 1;
  authmode := 1;

  //指定旧密码
  mypiccoldkey[0] := $FF;
  mypiccoldkey[1] := $FF;
  mypiccoldkey[2] := $FF;
  mypiccoldkey[3] := $FF;
  mypiccoldkey[4] := $FF;
  mypiccoldkey[5] := $FF;

  //'指定新A密码
  mypiccdata[0] := $FF;
  mypiccdata[1] := $FF;
  mypiccdata[2] := $FF;
  mypiccdata[3] := $FF;
  mypiccdata[4] := $FF;
  mypiccdata[5] := $FF;

  //访问控制位，请慎重，改错可能导致卡做废************************************************************************************
  mypiccdata[6] := $FF;
  mypiccdata[7] := $07;
  mypiccdata[8] := $80;
  mypiccdata[9] := $69;

  //'指定新B密码
  mypiccdata[10] := $FF;
  mypiccdata[11] := $FF;
  mypiccdata[12] := $FF;
  mypiccdata[13] := $FF;
  mypiccdata[14] := $FF;
  mypiccdata[15] := $FF;

  mypiccdata[16] := 3; //为1表示更改访问控制位，为2表示更改B密码，为3表示同时更改访问控制位及B密码，A密码在任何情况下都更改！

  status := piccchangesinglekeyex(myctrlword,@mypiccserial,myareano,authmode,@mypiccoldkey,@mypiccdata);
  If  status = 0 then
  begin
    pcdbeep(100);
    ShowMessage('OK');
  end
  else if status = 8 then
  begin
    ShowMessage('请将卡放在感应区');
  end
  else
  begin
    pcdbeep(50);
    sleep(100);
    pcdbeep(50);

    ShowMessage('错误代码:' + IntToStr(status));
  end;



end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  lcddispfull(PChar(Edit1.Text));
end;

procedure TForm1.Button8Click(Sender: TObject);
//轻松写卡
{
技术支持：
网站：
}
var
    i:integer;
    status:byte;//存放返回值
    myareano:byte;//区号
    authmode:byte;//密码类型，用A密码或B密码
    myctrlword:byte;//控制字
	  mypicckey:array[0..5] of byte;//密码
    mypiccserial:array[0..3] of byte;//卡序列号
    mypiccdata:array[0..47] of byte;//卡数据缓冲
    strls:string;
begin

   //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
   myctrlword := BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

    //指定区号
    myareano := 8;//指定为第8区
    //批定密码模式
    authmode := 1;//大于0表示用A密码认证，推荐用A密码认证

    //指定密码
    mypicckey[0] := $ff;
    mypicckey[1] := $ff;
    mypicckey[2] := $ff;
    mypicckey[3] := $ff;
    mypicckey[4] := $ff;
    mypicckey[5] := $ff;

    strls := StringReplace(memo1.Lines.Text, #13#10, '', [rfReplaceAll])  + '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
    for i := 0 to 47 do
    begin
      mypiccdata[i] := strtoint('$'+midstr(strls,i*2+1,2))
    end;

    status := piccwriteex(myctrlword,@mypiccserial,myareano,authmode,@mypicckey,@mypiccdata);
        //在下面设定断点，然后查看mypiccserial、mypiccdata，
        //调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
        //开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
        //处理返回函数


        case status of
          0:
          begin
              pcdbeep(38);
              ShowMessage('将右栏16进制数据写入卡内成功！');
          end;
          8: ShowMessage('请将卡放在感应区');
          12:ShowMessage('卡密码认证失败！');
        else
          begin
              ShowMessage('操作失败，错误代码:'+IntToStr(status));
          end;
        end;

        //返回解释
        {
        #define ERR_REQUEST 8//寻卡错误
        #define ERR_READSERIAL 9//读序列吗错误
        #define ERR_SELECTCARD 10//选卡错误
        #define ERR_LOADKEY 11//装载密码错误
        #define ERR_AUTHKEY 12//密码认证错误
        #define ERR_READ 13//读卡错误
        #define ERR_WRITE 14//写卡错误

        #define ERR_NONEDLL 21//没有动态库
        #define ERR_DRIVERORDLL 22//动态库或驱动程序异常
        #define ERR_DRIVERNULL 23//驱动程序错误或尚未安装
        #define ERR_TIMEOUT 24//操作超时，一般是动态库没有反映
        #define ERR_TXSIZE 25//发送字数不够
        #define ERR_TXCRC 26//发送的CRC错
        #define ERR_RXSIZE 27//接收的字数不够
        #define ERR_RXCRC 28//接收的CRC错
        }
end;

procedure TForm1.Button9Click(Sender: TObject);
//轻松读卡
{
技术支持：
网站：
}
var
    i:integer;
    status:byte;//存放返回值
    myareano:byte;//区号
    authmode:byte;//密码类型，用A密码或B密码
    myctrlword:byte;//控制字
	  mypicckey:array[0..5] of byte;//密码
    mypiccserial:array[0..3] of byte;//卡序列号
    mypiccdata:array[0..47] of byte;//卡数据缓冲
    str:string;
begin

   //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
   myctrlword := BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

    //指定区号
    myareano := 8;//指定为第8区
    //批定密码模式
    authmode := 1;//大于0表示用A密码认证，推荐用A密码认证

    //指定密码
    mypicckey[0] := $ff;
    mypicckey[1] := $ff;
    mypicckey[2] := $ff;
    mypicckey[3] := $ff;
    mypicckey[4] := $ff;
    mypicckey[5] := $ff;

    status := piccreadex(myctrlword,@mypiccserial,myareano,authmode,@mypicckey,@mypiccdata);
        //在下面设定断点，然后查看mypiccserial、mypiccdata，
        //调用完 piccreadex函数可读出卡序列号到 mypiccserial，读出卡数据到mypiccdata，
        //开发人员根据自己的需要处理mypiccserial、mypiccdata 中的数据了。
        //处理返回函数


        case status of
          0:
          begin
             str:='';
             for i:=0 to 47 do
             begin
                str:=str+IntToHex(mypiccdata[i],2);
             end;
             memo1.Text :=str;
             ShowMessage('读卡操作成功，卡内信息已显示在右栏。');
          end;
          8: ShowMessage('请将卡放在感应区');
          12:ShowMessage('卡密码认证失败！');
        else
          begin

          ShowMessage(IntToStr(status));
          end;



        end;

        //返回解释
        {
        #define ERR_REQUEST 8//寻卡错误
        #define ERR_READSERIAL 9//读序列吗错误
        #define ERR_SELECTCARD 10//选卡错误
        #define ERR_LOADKEY 11//装载密码错误
        #define ERR_AUTHKEY 12//密码认证错误
        #define ERR_READ 13//读卡错误
        #define ERR_WRITE 14//写卡错误

        #define ERR_NONEDLL 21//没有动态库
        #define ERR_DRIVERORDLL 22//动态库或驱动程序异常
        #define ERR_DRIVERNULL 23//驱动程序错误或尚未安装
        #define ERR_TIMEOUT 24//操作超时，一般是动态库没有反映
        #define ERR_TXSIZE 25//发送字数不够
        #define ERR_TXCRC 26//发送的CRC错
        #define ERR_RXSIZE 27//接收的字数不够
        #define ERR_RXCRC 28//接收的CRC错
        }
end;

procedure TForm1.Button10Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..3] of byte;//卡序列号
  cardnumber:Longword;//Longword为无符号32bit的整型

begin
    status := piccrequest(@mypiccserial);
    case status of
          0:
          begin
             if RadioButton1.Checked then
             begin
                 cardnumber:= mypiccserial[0]*256*256*256+mypiccserial[1]*256*256+mypiccserial[2]*256+mypiccserial[3];
                 Edit2.Text := RightStr('0000000000'+IntToStr(cardnumber),10);
                 Edit3.Text :=inttohex(mypiccserial[0],2)+inttohex(mypiccserial[1],2)+inttohex(mypiccserial[2],2)+inttohex(mypiccserial[3],2);
             end
             else
             begin
                 cardnumber:= mypiccserial[3]*256*256*256+mypiccserial[2]*256*256+mypiccserial[1]*256+mypiccserial[0];
                 Edit2.Text := RightStr('0000000000'+IntToStr(cardnumber),10);
                 Edit3.Text :=inttohex(mypiccserial[3],2)+inttohex(mypiccserial[2],2)+inttohex(mypiccserial[1],2)+inttohex(mypiccserial[0],2);
             end;
             //ShowMessage('读卡操作成功!');
          end;
          8: ShowMessage('请将卡放在感应区');
        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

        //返回解释
        {
        #define ERR_REQUEST 8//寻卡错误
        #define ERR_READSERIAL 9//读序列吗错误
        #define ERR_SELECTCARD 10//选卡错误
        #define ERR_LOADKEY 11//装载密码错误
        #define ERR_AUTHKEY 12//密码认证错误
        #define ERR_READ 13//读卡错误
        #define ERR_WRITE 14//写卡错误

        #define ERR_NONEDLL 21//没有动态库
        #define ERR_DRIVERORDLL 22//动态库或驱动程序异常
        #define ERR_DRIVERNULL 23//驱动程序错误或尚未安装
        #define ERR_TIMEOUT 24//操作超时，一般是动态库没有反映
        #define ERR_TXSIZE 25//发送字数不够
        #define ERR_TXCRC 26//发送的CRC错
        #define ERR_RXSIZE 27//接收的字数不够
        #define ERR_RXCRC 28//接收的CRC错
        }

end;

procedure TForm1.Button11Click(Sender: TObject);
//轻松读卡
{
技术支持：
网站：
}
var
    i:integer;
    x:LongWord ;
    status:byte;//存放返回值
    edc:byte;//校验码
    authmode:byte;//密码类型，用A密码或B密码
    myctrlword:byte;//控制字
	  mypicckey:array[0..5] of byte;//密码
    mypiccserial:array[0..3] of byte;//卡序列号
    mypiccdata:array[0..15] of byte;//卡数据缓冲
    str:string;

begin
    for i:=0 to 16 do
    begin
        if i<4 then  mypiccserial[i]:=0;
        if i<6 then  mypicckey[i]:=0;
        mypiccdata[i]:=0;
    end;

    x:= StrToInt64(Edit4.text) ;
    if x>4294967295 then
    begin
       Showmessage('卡号最大取值：4294967295') ;
       exit;
    end;

    edc:=0;
    for i:=3 downto 0 do
    begin
       mypiccdata[i]:= x and 255;
       edc:=edc xor mypiccdata[i];
       x:=x shr 8;
    end;
    mypiccdata[4]:= edc;

    myctrlword:=BLOCK0_EN;
    authmode:=0;
    status:=piccwriteserial(myctrlword,@mypiccserial,authmode,@mypicckey,@mypiccdata);
    case status of
          0:
          begin
              pcdbeep(38);
              ShowMessage('将右栏16进制数据写入卡内成功！');
          end;
          8: ShowMessage('请将卡放在感应区');
          12:ShowMessage('卡密码认证失败！');
        else
          begin
              ShowMessage('操作失败，错误代码:'+IntToStr(status));
          end;
   end;
end;

procedure TForm1.Button12Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  cardnumber:Longword;//Longword为无符号32bit的整型

begin
    status := piccrequest_ul(@mypiccserial);
    case status of
          0:
          begin
             if RadioButton1.Checked then
             begin
                 cardnumber:= mypiccserial[1]*256*256*256+mypiccserial[2]*256*256+mypiccserial[3]*256+mypiccserial[4];
                 Edit3.Text :=inttohex(mypiccserial[0],2)+inttohex(mypiccserial[1],2)+inttohex(mypiccserial[2],2)+inttohex(mypiccserial[3],2)+inttohex(mypiccserial[4],2)+inttohex(mypiccserial[5],2)+inttohex(mypiccserial[6],2);
             end
             else
             begin
                 cardnumber:= mypiccserial[4]*256*256*256+mypiccserial[3]*256*256+mypiccserial[2]*256+mypiccserial[1];
                 Edit3.Text :=inttohex(mypiccserial[6],2)+inttohex(mypiccserial[5],2)+inttohex(mypiccserial[4],2)+inttohex(mypiccserial[3],2)+inttohex(mypiccserial[2],2)+inttohex(mypiccserial[1],2)+inttohex(mypiccserial[0],2);
             end;

             Edit2.Text := RightStr('0000000000'+IntToStr(cardnumber),10);


             //ShowMessage('读卡操作成功!');
          end;
          8: ShowMessage('请将卡放在感应区');
        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
    status:byte;//存放返回值
    i:integer;
    myareano:byte;//区号
    authmode:byte;//密码类型，用A密码或B密码
    myctrlword:byte;//控制字
	  mypicckey:array[0..5] of byte;//密码
    mypiccserial:array[0..6] of byte;//卡序列号
    mypiccdata:array[0..47] of byte;//卡数据缓冲
    str:string;
    cardnumber:Longword;//Longword为无符号32bit的整型

begin
    //控制字指定,控制字的含义请查看本公司网站提供的动态库说明
    myctrlword := BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

    //指定区号
    myareano := 8;//指定为第8区
    //批定密码模式
    authmode := 1;//大于0表示用A密码认证，推荐用A密码认证

    //指定密码
    mypicckey[0] := $ff;
    mypicckey[1] := $ff;
    mypicckey[2] := $ff;
    mypicckey[3] := $ff;
    mypicckey[4] := $ff;
    mypicckey[5] := $ff;

    status := piccreadex(myctrlword,@mypiccserial,myareano,authmode,@mypicckey,@mypiccdata);
    case status of
          8:
          begin
              status := piccrequest_ul(@mypiccserial);
              case status of
                   0:
                   begin
                        if RadioButton1.Checked then
                        begin
                            cardnumber:= mypiccserial[1]*256*256*256+mypiccserial[2]*256*256+mypiccserial[3]*256+mypiccserial[4];
                            Edit2.Text := RightStr('0000000000'+IntToStr(cardnumber),10);
                            Edit3.Text :=inttohex(mypiccserial[0],2)+inttohex(mypiccserial[1],2)+inttohex(mypiccserial[2],2)+inttohex(mypiccserial[3],2)+inttohex(mypiccserial[4],2)+inttohex(mypiccserial[5],2)+inttohex(mypiccserial[6],2);
                        end
                        else
                        begin
                            cardnumber:= mypiccserial[4]*256*256*256+mypiccserial[3]*256*256+mypiccserial[2]*256+mypiccserial[1];
                            Edit2.Text := RightStr('0000000000'+IntToStr(cardnumber),10);
                            Edit3.Text :=inttohex(mypiccserial[6],2)+inttohex(mypiccserial[5],2)+inttohex(mypiccserial[4],2)+inttohex(mypiccserial[3],2)+inttohex(mypiccserial[2],2)+inttohex(mypiccserial[1],2)+inttohex(mypiccserial[0],2);
                        end;

                   end;
                   8:
                   begin
                        ShowMessage('请将卡放在感应区');
                   end;
                   else
                   begin
                        ShowMessage(IntToStr(status));
                   end;
              end;
          end
          else
          begin
             if RadioButton1.Checked then
             begin
                 cardnumber:= mypiccserial[0]*256*256*256+mypiccserial[1]*256*256+mypiccserial[2]*256+mypiccserial[3];
                 Edit2.Text := RightStr('0000000000'+IntToStr(cardnumber),10);
                 Edit3.Text :=inttohex(mypiccserial[0],2)+inttohex(mypiccserial[1],2)+inttohex(mypiccserial[2],2)+inttohex(mypiccserial[3],2);
             end
             else
             begin
                 cardnumber:= mypiccserial[3]*256*256*256+mypiccserial[2]*256*256+mypiccserial[1]*256+mypiccserial[0];
                 Edit2.Text := RightStr('0000000000'+IntToStr(cardnumber),10);
                 Edit3.Text :=inttohex(mypiccserial[3],2)+inttohex(mypiccserial[2],2)+inttohex(mypiccserial[1],2)+inttohex(mypiccserial[0],2);
             end;
          end;
    end;

end;

end.
