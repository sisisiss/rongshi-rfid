unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,declaredll,strutils;

type
  TForm2 = class(TForm)
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Button11: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
   status: Byte;
begin
   if Application.MessageBox('你确定要强制清空当前CPU卡吗？', '信息提示', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
   begin
        status := cpurscardclr();
        if status=0 then
        begin
           pcdbeep(50);
           showmessage('强制清空卡成功！')
        end
        else
        begin
            if  status=64 then showmessage('此卡为未经过我们cpursinit函数成功初始化的卡！') else
                MsgInf(status);;
        end;
   end;
end;

procedure TForm2.Button11Click(Sender: TObject);
var
    strls2:String;
    i:integer;
    keytype:byte;
    readkeylen:Byte;//'认证密钥长度
    writkeylen:Byte;//'新密钥长度
    readkeybuf:array[0..15] of  Byte;// '认证密钥
    writkeybuf:array[0..15] of  Byte;// '新密钥

    status: Byte;
begin
    strls2:=edit8.Text+'FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF';
    FOR i:=0 TO 15 DO
    Begin
        readkeybuf[i]:=strtoint('$'+midstr(strls2,i*3+1,2));
    end;

    strls2:=edit9.Text+'FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF';
    FOR i:=0 TO 15 DO
    Begin
        writkeybuf[i]:=strtoint('$'+midstr(strls2,i*3+1,2));
    end;

    status:=cpurscardkeychg(@readkeybuf, 16,@writkeybuf, 16);
    case status of
         0:
           begin
               pcdbeep(50);
               showmessage('修改卡密码成功!');
           end;
         else
            MsgInf(status);
    end;
end;

end.
