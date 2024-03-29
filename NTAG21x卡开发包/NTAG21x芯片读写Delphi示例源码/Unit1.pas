unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,declaredll,strutils, jpeg, ComCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button4: TButton;
    Button5: TButton;
    Button10: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Button12: TButton;
    Button13: TButton;
    Edit2: TEdit;
    TabSheet3: TTabSheet;
    Label10: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button9: TButton;
    Memo1: TMemo;
    Button8: TButton;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Edit7: TEdit;
    Label3: TLabel;
    CheckBox2: TCheckBox;
    Label5: TLabel;
    Edit8: TEdit;
    Label6: TLabel;
    Edit9: TEdit;
    SpeedButton7: TSpeedButton;
    CheckBox3: TCheckBox;
    Edit10: TEdit;
    Label7: TLabel;
    Edit11: TEdit;
    Label8: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Label9: TLabel;
    Label4: TLabel;
    Memo2: TMemo;
    Label11: TLabel;
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);

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




procedure TForm1.Button8Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicckey:array[0..3] of byte;  //认证密码
  mypicdata:array[0..47] of byte;  //块内数据
  myctrlword,blockaddr,blocksize:byte;                  //控制字，读操作起始块地址，读写块数
  i:integer;
  CardIdHex,strls:string;
  comedc:byte;
  commstr:string; //串口调试指令  
begin
    myctrlword := 0;

    if CheckBox3.Checked then
    begin
         strls := StringReplace(edit10.Text, #13#10, '', [rfReplaceAll]) ;
         if length(strls)<> 8 then
         begin
               Application.MessageBox('密码长度不足！', '警告', MB_OK+MB_ICONASTERISK);
               edit1.SetFocus;
               exit;
         end
         else
         begin
             for i:=0 to 3 do
             begin
                 mypicckey[i]:=strtoint('$'+midstr(strls,i*2+1,2));
             end;
             myctrlword:=16;
         end;
    end;

    blockaddr:=Strtoint(Edit11.Text);
    blocksize:=Strtoint(Edit12.Text);

    strls := StringReplace(memo1.Text, #13#10, '', [rfReplaceAll])  + '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';  //写卡信息不足后面补0
    for i:=0 to blocksize*4-1 do
    begin
         mypicdata[i]:=strtoint('$'+midstr(strls,i*2+1,2));
    end;

    //--------------------------------------------------
    comedc:=$1C;
    commstr:='3B1C'; //串口调试指令

    commstr:=commstr + inttohex(myctrlword,2);
    comedc:=comedc xor  myctrlword;

    for i:=0 to 6 do
    begin
         commstr:=commstr + inttohex(mypiccserial[i],2);
         comedc:=comedc xor  mypiccserial[i];
    end;

    for i:=0 to 3 do
    begin
         commstr:=commstr + inttohex(mypicckey[i],2);
         comedc:=comedc xor  mypicckey[i];
    end;

    commstr:=commstr + inttohex(blockaddr,2);
    comedc:=comedc xor  blockaddr;

    commstr:=commstr + inttohex(blocksize,2);
    comedc:=comedc xor  blocksize;

    for i:=0 to 43 do
    begin
         commstr:=commstr + inttohex(mypicdata[i],2);
         comedc:=comedc xor  mypicdata[i];
    end;

    commstr:=commstr + inttohex(comedc,2);
    Memo2.Text :=  commstr;
    //---------------------------------------------------

    status := piccwriteex_ntag(myctrlword,@mypiccserial,@mypicckey,blockaddr,blocksize,@mypicdata);
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

             ShowMessage('写卡成功！');

          end;

        8:  ShowMessage('请将卡放在感应区');

        12:  ShowMessage('密码错误');

        14:  ShowMessage('写卡失败，可能需要验证密码 或者 页已经锁死！');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage('写卡失败，错误代码：'+IntToStr(status));
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
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicckey:array[0..3] of byte;  //认证密码
  mypicdata:array[0..47] of byte;  //块内数据
  myctrlword,blockaddr,blocksize:byte;                  //控制字，读操作起始块地址，读写块数
  i:integer;
  CardIdHex,strls:string;

  comedc:byte;
  commstr:string; //串口调试指令  

begin
    myctrlword := 0;

    if CheckBox3.Checked then
    begin
         strls := StringReplace(edit10.Text, #13#10, '', [rfReplaceAll]) ;
         if length(strls)<> 8 then
         begin
               Application.MessageBox('密码长度不足！', '警告', MB_OK+MB_ICONASTERISK);
               edit1.SetFocus;
               exit;
         end
         else
         begin
             for i:=0 to 3 do
             begin
                 mypicckey[i]:=strtoint('$'+midstr(strls,i*2+1,2));
             end;
             myctrlword:=16;
         end;
    end;

    blockaddr:=Strtoint(Edit11.Text);
    blocksize:=Strtoint(Edit12.Text);

    //--------------------------------------------------
    comedc:=$1B;
    commstr:='0F1B'; //串口调试指令

    commstr:=commstr + inttohex(myctrlword,2);
    comedc:=comedc xor  myctrlword;

    for i:=0 to 6 do
    begin
         commstr:=commstr + inttohex(mypiccserial[i],2);
         comedc:=comedc xor  mypiccserial[i];
    end;

    for i:=0 to 3 do
    begin
         commstr:=commstr + inttohex(mypicckey[i],2);
         comedc:=comedc xor  mypicckey[i];
    end;

    commstr:=commstr + inttohex(blockaddr,2);
    comedc:=comedc xor  blockaddr;

    commstr:=commstr + inttohex(blocksize,2);
    comedc:=comedc xor  blocksize;

    commstr:=commstr + inttohex(comedc,2);
    Memo2.Text :=  commstr;
    //---------------------------------------------------

    status := piccreadex_ntag(myctrlword,@mypiccserial,@mypicckey,blockaddr,blocksize,@mypicdata);
    case status of
          0:
          begin
             pcdbeep(50);

             CardIdHex:='';
             for i:=0 to 6 do
             begin
                  CardIdHex:=CardIdHex+inttohex(mypiccserial[i],2);
             end;
             Edit13.Text := CardIdHex;

             CardIdHex:='';
             for i:=0 to blocksize*4-1 do
             begin
                  CardIdHex:=CardIdHex+inttohex(mypicdata[i],2);
             end;
             memo1.Text := CardIdHex;

             ShowMessage('读卡成功！');

          end;

        8:  ShowMessage('请将卡放在感应区');

        12:  ShowMessage('密码错误');

        13:  ShowMessage('读卡失败，可能需要验证密码');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage('读卡失败，错误代码：'+IntToStr(status));
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
  mypiccserial:array[0..6] of byte;//卡序列号
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
             ShowMessage('读卡操作成功!');
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

procedure TForm1.Button13Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicdata:array[0..3] of byte;  //块内数据
  blockaddr:byte;                  //读操作起始块地址
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
                 ShowMessage('写卡操成功！');
             end
             else
             begin
                 ShowMessage('写卡操失败！错误代码：'+IntToStr(status));
             end;
          end;

        8:  ShowMessage('请将卡放在感应区');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

end;

procedure TForm1.Button12Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicdata:array[0..15] of byte;  //块内数据
  blockaddr:byte;                  //读操作起始块地址
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
                 ShowMessage('读卡操成功！');
             end
             else
             begin
                 ShowMessage('读卡操失败！错误代码：'+IntToStr(status));
             end;
          end;

        8:  ShowMessage('请将卡放在感应区');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    pcdbeep(50);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicckey:array[0..3] of byte;  //认证密码
  mypiccntagpack:array[0..1] of byte;    //返回的确认码
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

             strls := StringReplace(edit6.Text, #13#10, '', [rfReplaceAll])  + '00000000';
             for i:=0 to 3 do
             begin
                 mypicckey[i]:=strtoint('$'+midstr(strls,i*2+1,2));
             end;

             status := piccauthkey_ntag(@mypicckey,@mypiccntagpack);
             if status=0 then
             begin
                 pcdbeep(50);
                 ShowMessage('卡密码认证成功！确认码为：'+inttohex(mypiccntagpack[0],2)+inttohex(mypiccntagpack[1],2));
             end
             else
             begin
                 ShowMessage('卡密码认证失败！错误代码：'+IntToStr(status));
             end;
          end;

        8:  ShowMessage('请将卡放在感应区');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicdata:array[0..15] of byte;  //块内数据
  mypiccversiondata:array[0..7] of byte;                  //卡版本信息
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


             status := piccgetversion_ntag(@mypiccversiondata);
             if status=0 then
             begin
                 pcdbeep(50);
                 CardIdHex:='';
                 for i:=0 to 7 do
                 begin
                     CardIdHex:=CardIdHex+inttohex(mypicdata[i],2);
                 end;
                 ShowMessage('卡版本信息：'+CardIdHex);
             end
             else
             begin
                 ShowMessage('读卡版本信息失败！错误代码：'+IntToStr(status));
             end;
          end;

        8:  ShowMessage('请将卡放在感应区');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicdata:array[0..15] of byte;  //块内数据
  piccsigdata:array[0..31] of byte;                  //卡签字信息
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


             status := piccreadsig_ntag(@piccsigdata);
             if status=0 then
             begin
                 pcdbeep(50);
                 CardIdHex:='';
                 for i:=0 to 31 do
                 begin
                     CardIdHex:=CardIdHex+inttohex(mypicdata[i],2);
                 end;
                 ShowMessage('卡签字信息：'+CardIdHex);
             end
             else
             begin
                 ShowMessage('读卡签字信息失败！错误代码：'+IntToStr(status));
             end;
          end;

        8:  ShowMessage('请将卡放在感应区');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;


end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicdata:array[0..15] of byte;  //块内数据
  mypicccntdata:array[0..31] of byte;                  //卡操作的单向计数器（卡操作流水号）
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

             status := piccreadcnt_ntag(@mypicccntdata);
             if status=0 then
             begin
                 pcdbeep(50);
                 CardIdHex:='';
                 for i:=0 to 2 do
                 begin
                     CardIdHex:=CardIdHex+inttohex(mypicdata[i],2);
                 end;
                 ShowMessage('卡操作的单向计数器：'+CardIdHex);
             end
             else
             begin
                 ShowMessage('读卡操作的单向计数器失败！错误代码：'+IntToStr(status));
             end;
          end;

        8:  ShowMessage('请将卡放在感应区');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicdata:array[0..15] of byte;  //块内数据
  mypicclockdata:array[0..3] of byte;                  //读卡的数据缓冲，Ultralight卡及NTAG21x卡的数组长度必须为16个字节，写卡的为4个字节
  i,Result :integer;
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

             Result := Application.MessageBox('确定要锁定3~15页的数据吗？锁死数据后无法更改！', '警告', MB_YESNO or MB_ICONQUESTION);
             if Result=ID_YES then
             begin
                   mypicclockdata[0] := 0 ;       //不要随便修改这几个字节数据，除非你确定知道数据的意义
                   mypicclockdata[1] := 0;
                   mypicclockdata[2] := $F9;
                   mypicclockdata[3] := 0;

                   status := picclock_ntag(0,@mypicclockdata);       //锁定0~15d页
                   if status=0 then
                   begin
                       pcdbeep(50);
                       ShowMessage('0~15页锁定位写入成功！');
                   end
                   else if status=14 then
                   begin
                       ShowMessage('写卡失败，请先执行第一步读卡序列号！');
                   end
                   else
                   begin
                       ShowMessage('写卡失败！错误代码：'+IntToStr(status));
                   end;
             end;
          end;

        8:  ShowMessage('请将卡放在感应区');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

end;



procedure TForm1.SpeedButton6Click(Sender: TObject);
var
  status:byte;//存放返回值
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicdata:array[0..15] of byte;  //块内数据
  mypicclockdata:array[0..3] of byte;                  //读卡的数据缓冲，Ultralight卡及NTAG21x卡的数组长度必须为16个字节，写卡的为4个字节
  i,Result :integer;
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

             Result := Application.MessageBox('确定要锁定16页以后的数据吗？锁死数据后无法更改！', '警告', MB_YESNO or MB_ICONQUESTION);
             if Result=ID_YES then
             begin
                   mypicclockdata[0] := 1 ;       //不要随便修改这几个字节数据，除非你确定知道数据的意义
                   mypicclockdata[1] := 1;
                   mypicclockdata[2] := 0;
                   mypicclockdata[3] := 0;

                   status := picclock_ntag(1,@mypicclockdata);       //锁定0~15d页
                   if status=0 then
                   begin
                       pcdbeep(50);
                       ShowMessage('16页以后的数据锁定位写入成功！');
                   end
                   else if status=14 then
                   begin
                       ShowMessage('写卡失败，请先执行第一步读卡序列号！');
                   end
                   else
                   begin
                       ShowMessage('写卡失败！错误代码：'+IntToStr(status));
                   end;
             end;
          end;

        8:  ShowMessage('请将卡放在感应区');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    ComboBox1.ItemIndex:=1;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
var
  status,myctrlword:byte;//存放返回值,控制字
  mypiccserial:array[0..6] of byte;//卡序列号
  mypicckey:array[0..3] of byte;  //认证密码
  mypiccdata:array[0..15] of byte;    //数据缓冲

  comedc:byte;
  commstr:string; //串口调试指令

  i:integer;
  CardIdHex,strls:string;

begin
    myctrlword:=0;

    if CheckBox1.Checked then
    begin
         strls := StringReplace(edit1.Text, #13#10, '', [rfReplaceAll]) ;
         if length(strls)<> 8 then
         begin
               Application.MessageBox('密码长度不足！', '警告', MB_OK+MB_ICONASTERISK);
               edit1.SetFocus;
               exit;
         end
         else
         begin
             for i:=0 to 3 do
             begin
                 mypicckey[i]:=strtoint('$'+midstr(strls,i*2+1,2));
             end;
             myctrlword:=16;
         end;
    end;

    if  ComboBox1.ItemIndex=0 then
    begin
         strls := StringReplace(edit8.Text, #13#10, '', [rfReplaceAll]) ;
         if length(strls)<> 8 then
         begin
               Application.MessageBox('密码长度不足！', '警告', MB_OK+MB_ICONASTERISK);
               edit8.SetFocus;
               exit;
         end;

         for i:=0 to 3 do
         begin
             mypiccdata[i+8]:=strtoint('$'+midstr(strls,i*2+1,2));
         end;

         mypiccdata[12] := $16;  //'PACK
         mypiccdata[13] := $16;  //'PACK
         mypiccdata[14] := 0 ;   //'RFUI
         mypiccdata[15] := 0 ;   //'RFUI

         myctrlword := myctrlword + 4;  //'更新控制字

         mypiccdata[0] := 0 ;   //'MIRROR
         mypiccdata[1] := 0 ;   //'RFUI
         mypiccdata[2] := 0 ;   //'MIRROR_PAGE
         mypiccdata[3] := Strtoint(edit7.Text) ; //'AUTH0

         myctrlword := myctrlword + 1;  //'更新控制字

         mypiccdata[4] := Strtoint(edit9.Text) mod 8 ; //'AUTH0
         if CheckBox2.Checked then
         begin
              mypiccdata[4] := mypiccdata[4] + $80 ;
         end;

        //启用计数器
        mypiccdata[5] := 0;
        mypiccdata[6] := 0;
        mypiccdata[7] := 0;

        myctrlword := myctrlword + 2 ;  //更新控制字
    end
    else
    begin
        mypiccdata[0] := 0 ;  //'MIRROR
        mypiccdata[1] := 0;   // 'RFUI
        mypiccdata[2] := 0;   //'MIRROR_PAGE
        mypiccdata[3] := $FF; // 'AUTH0

        myctrlword := myctrlword + 1;  //'更新控制字

        mypiccdata[4] := 0 ;

        mypiccdata[5] := 0;
        mypiccdata[6] := 0;
        mypiccdata[7] := 0;

        myctrlword := myctrlword + 2;  //'更新控制字
    end;

    //--------------------------------------------------
    comedc:=$16;
    commstr:='1D16'; //串口调试指令

    commstr:=commstr + inttohex(myctrlword,2);
    comedc:=comedc xor  myctrlword;

    for i:=0 to 6 do
    begin
         commstr:=commstr + inttohex(mypiccserial[i],2);
         comedc:=comedc xor  mypiccserial[i];
    end;

    for i:=0 to 3 do
    begin
         commstr:=commstr + inttohex(mypicckey[i],2);
         comedc:=comedc xor  mypicckey[i];
    end;

    for i:=0 to 15 do
    begin
         commstr:=commstr + inttohex(mypiccdata[i],2);
         comedc:=comedc xor  mypiccdata[i];
    end;

    commstr:=commstr + inttohex(comedc,2);
    Memo2.Text :=  commstr;

    //---------------------------------------------------

    status := piccinit_ntag(myctrlword,@mypiccserial,@mypicckey,@mypiccdata);
    case status of
          0:
          begin
             pcdbeep(50);
             CardIdHex:='';
             for i:=0 to 6 do
             begin
                  CardIdHex:=CardIdHex+inttohex(mypiccserial[i],2);
             end;
             Edit13.Text := CardIdHex;

             ShowMessage('初始化卡成功！');
          end;

        8:  ShowMessage('请将卡放在感应区');

        12:  ShowMessage('密码错误');

        14:  ShowMessage('初始化卡失败，可能需要验证密码');

        23: ShowMessage('请连上USB 读写器');

        else
          begin
            ShowMessage(IntToStr(status));
          end;
        end;

end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not ( Key in ['0'..'9','a'..'f','A'..'F',#13,#16,#8]) then
begin
    Key := #0 ;
    Exit ;
end;
end;

end.
