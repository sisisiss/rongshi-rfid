unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,  Dialogs, RzTray, Menus, ExtCtrls, ImgList,
  StdCtrls,declaredll;


type
  TForm1 = class(TForm)
    tmr1: TTimer;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    S1: TMenuItem;
    N3: TMenuItem;
    O1: TMenuItem;
    N4: TMenuItem;
    X1: TMenuItem;
    il1: TImageList;
    rztrycn1: TRzTrayIcon;
    btn1: TButton;
    CheckBox1: TCheckBox;
    procedure N1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure X1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure O1Click(Sender: TObject);

  private
    { Private declarations }
    isenclose:Boolean ;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Reading:Boolean ;

implementation

{$R *.dfm}
procedure SendKeys(sSend:string);
var
    i:integer;
    focushld,windowhld:hwnd;
    threadld:dword;
    ch: byte;
begin
  windowhld:=GetForegroundWindow;           //���ǰ̨Ӧ�ó���Ļ���ڵľ��

  threadld:=GetWindowThreadProcessId(Windowhld,nil);        //��ȡ��ָ�����ڹ�����һ���һ�����̺��̱߳�ʶ��

  AttachThreadInput(GetCurrentThreadId,threadld,true);
    //ͨ����ϵͳ�ڵ�ÿ���̶߳����Լ���������С�          //
    //AttachThreadInput�����̺߳ͽ��̹���������С�        //
    //�������̺߳����뽹�㡢���ڼ����겶�񡢼���״̬ //
    //�Լ��������״̬������빲��״̬          //
  Focushld:=getfocus;
    //���ӵ�����뽹��Ĵ��ڵľ��
  AttachThreadInput(GetCurrentThreadId,threadld,false );
  if focushld = 0 then Exit;
    //���û�����뽹�����˳����͹���
  i := 1;
  while i <= Length(sSend) do
    //�ù��̷���ָ���ַ�������Ӣ�ĽԿ��ԣ�
  begin  
    ch := byte(sSend[ i ]);
    if Windows.IsDBCSLeadByte(ch) then
    begin
      Inc(i);
      SendMessage(focushld, WM_IME_CHAR, MakeWord(byte(sSend[ i ]), ch), 0);
      Sleep(25);
    end
    else
      SendMessage(focushld, WM_IME_CHAR, word(ch), 0);
      Inc(i);
      Sleep(25);
  end;
  postmessage(focushld,WM_keydown,13,0);  
    //����һ������Enter����
end;


procedure TForm1.N1Click(Sender: TObject);
begin
      ShowWindow(Application.Handle, SW_RESTORE);
      Form1.Show();
      Form1.WindowState :=  wsNormal;
      //SetWindowLong(Application.Handle, GWL_EXSTYLE, WS_EX_TOOLWINDOW);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if(not isenclose) then
  begin
    Form1.Hide();
    ShowWindow(Application.Handle,SW_HIDE);
    CanClose := False;
    //����
  end;
end;

procedure TForm1.X1Click(Sender: TObject);
begin
  if(Application.MessageBox('�Ƿ����Ҫ�˳�����������?', '����', MB_YESNO +MB_ICONINFORMATION) = IDYES) then
  begin
    isenclose := True;
    Close();
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
       pcdbeep(50);
end;

procedure TForm1.tmr1Timer(Sender: TObject);
var
    status:byte;//��ŷ���ֵ
    myareano:byte;//����
    authmode:byte;//�������ͣ���A�����B����
    myctrlword:byte;//������
	  mypicckey:array[0..5] of byte;//����
    mypiccserial:array[0..3] of byte;//�����к�
    mypiccdata:array[0..47] of byte;//�����ݻ���
    strls:string;
    i:Integer ;
begin
    try

        if Reading= True then
        begin
            //������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
            myctrlword := BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

            //ָ������
            myareano := 1;//ָ��Ϊ��8��
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
            if status= 0 then
            begin
                picchalt;

                if CheckBox1.Checked =True then
                begin
                   pcdbeep(12);
                end;

                strls:='';
                for i := 0 to 7 do
                begin
                     strls := strls+inttohex(mypiccdata[i],2);
                end;
                //for i := 0 to 3 do
                //begin
                //     strls := strls+inttohex(mypiccserial[i],2);
                //end;
                SendKeys(strls);
            end;
        end;
      finally

      end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     Reading:=True ;
end;

procedure TForm1.S1Click(Sender: TObject);
begin
    O1.Enabled :=True ;
    S1.Enabled :=False  ;
    Reading:= True;
end;

procedure TForm1.O1Click(Sender: TObject);
begin
    O1.Enabled :=False ;
    S1.Enabled :=True ;
    Reading:=False;
end;

end.
