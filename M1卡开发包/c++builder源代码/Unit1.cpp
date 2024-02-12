//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"

//�����ֶ���
#define BLOCK0_EN  0x01
#define BLOCK1_EN  0x02
#define BLOCK2_EN  0x04
#define NEEDSERIAL 0x08
#define EXTERNKEY  0x10
#define NEEDHALT   0x20


//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button1Click(TObject *Sender)
//���ɶ���
{
/*
����֧�֣�
��վ��
*/

        unsigned char status;//��ŷ���ֵ
        unsigned char myareano;//����
        unsigned char authmode;//�������ͣ���A�����B����
        unsigned char myctrlword;//������
	unsigned char mypicckey[6];//����
        unsigned char mypiccserial[4];//�����к�
        unsigned char mypiccdata[48]; //�����ݻ���

        unsigned char (__stdcall *piccreadex)(unsigned char ctrlword,unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *picckey,unsigned char *piccdata0_2);
        //�ж϶�̬���Ƿ����
        AnsiString FileName=ExtractFilePath(Application->ExeName);
        if(FileName.SubString(FileName.Length(),1) != "\\")
        {
             FileName += "\\";
        }
        FileName += "OUR_MIFARE.dll";
        if(!FileExists(FileName))
        {
                ShowMessage("�޷���Ӧ�ó�����ļ����ҵ�OUR_MIFARE.dll");
                return;
        }
        //��ȡ����
        HINSTANCE hDll;
        hDll=LoadLibrary(FileName.c_str());
        piccreadex = (unsigned char (__stdcall *)(unsigned char,unsigned char *,unsigned char,unsigned char,unsigned char *,unsigned char *))GetProcAddress(hDll,"piccreadex");

        //������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
        myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

        //ָ������
        myareano = 8;//ָ��Ϊ��8��
        //��������ģʽ
        authmode = 1;//����0��ʾ��A������֤���Ƽ���A������֤

        //ָ������
        mypicckey[0] = 0xff;
        mypicckey[1] = 0xff;
        mypicckey[2] = 0xff;
        mypicckey[3] = 0xff;
        mypicckey[4] = 0xff;
        mypicckey[5] = 0xff;

        status = piccreadex(myctrlword,mypiccserial,myareano,authmode,mypicckey,mypiccdata);

        FreeLibrary(hDll);
        
        //�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
        //������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
        //������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
        //�����غ���
        switch(status)
        {
                case 0:
                        ShowMessage("�����ɹ�");
                        break;
                //......
                case 8:
                        ShowMessage("�뽫�����ڸ�Ӧ��");
                        break;



        }


        //���ؽ���
        /*
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



        */




}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
//���豸��������
{
/*
����֧�֣�
��վ��
*/
        unsigned char (__stdcall *pcdbeep)(unsigned long xms);
        //�ж϶�̬���Ƿ����
        AnsiString FileName=ExtractFilePath(Application->ExeName);
        if(FileName.SubString(FileName.Length(),1) != "\\")
        {
             FileName += "\\";
        }
        FileName += "OUR_MIFARE.dll";
        if(!FileExists(FileName))
        {
                ShowMessage("�޷���Ӧ�ó�����ļ����ҵ�OUR_MIFARE.dll");
                return;
        }

        //��ȡ����
        HINSTANCE hDll;
        hDll=LoadLibrary(FileName.c_str());
        pcdbeep = (unsigned char (__stdcall *)(unsigned long))GetProcAddress(hDll,"pcdbeep");
        pcdbeep(50);
        FreeLibrary(hDll);


}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
//����д��
{
/*
����֧�֣�
��վ��
*/
        int i;
        unsigned char status;//��ŷ���ֵ
        unsigned char myareano;//����
        unsigned char authmode;//�������ͣ���A�����B����
        unsigned char myctrlword;//������
	unsigned char mypicckey[6];//����
        unsigned char mypiccserial[4];//�����к�
        unsigned char mypiccdata[48]; //�����ݻ���

        unsigned char (__stdcall *piccwriteex)(unsigned char ctrlword,unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *picckey,unsigned char *piccdata0_2);
        //�ж϶�̬���Ƿ����
        AnsiString FileName=ExtractFilePath(Application->ExeName);
        if(FileName.SubString(FileName.Length(),1) != "\\")
        {
             FileName += "\\";
        }
        FileName += "OUR_MIFARE.dll";
        if(!FileExists(FileName))
        {
                ShowMessage("�޷���Ӧ�ó�����ļ����ҵ�OUR_MIFARE.dll");
                return;
        }
        //��ȡ����
        HINSTANCE hDll;
        hDll=LoadLibrary(FileName.c_str());
        piccwriteex = (unsigned char (__stdcall *)(unsigned char,unsigned char *,unsigned char,unsigned char,unsigned char *,unsigned char *))GetProcAddress(hDll,"piccwriteex");
        //������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
        myctrlword = BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY;

        //ָ������
        myareano = 8;//ָ��Ϊ��8��
        //��������ģʽ
        authmode = 1;//����0��ʾ��A������֤���Ƽ���A������֤

        //ָ������
        mypicckey[0] = 0xff;
        mypicckey[1] = 0xff;
        mypicckey[2] = 0xff;
        mypicckey[3] = 0xff;
        mypicckey[4] = 0xff;
        mypicckey[5] = 0xff;

        //ָ��������
        for(i = 0;i<48;i++)
        {
                mypiccdata[i] = i;
        }
        //д��
        status = piccwriteex(myctrlword,mypiccserial,myareano,authmode,mypicckey,mypiccdata);

        FreeLibrary(hDll);
        //�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
        //������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
        //������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
        //�����غ���
        switch(status)
        {
                case 0:
                        ShowMessage("�����ɹ�");
                        break;
                //......
                case 8:
                        ShowMessage("�뽫�����ڸ�Ӧ��");
                        break;


        }


        //���ؽ���
        /*
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
        */

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
//�޸ĵ�������,ֻ��A��B���룬���ܸ�����Ȩ�޷����֣���һ��ֻ�ܸ�A��B�����е�һ����
{

/*
����֧�֣�
��վ��
*/

        unsigned char status;//��ŷ���ֵ
        unsigned char myareano;//����
        unsigned char authmode;//�������ͣ���A�����B����
        unsigned char myctrlword;//������

	unsigned char mypiccnewkey[6];//������
        unsigned char mypiccserial[4];//�����к�
        unsigned char mypiccoldkey[6];//������

        unsigned char (__stdcall *piccchangesinglekey)(unsigned char ctrlword,unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *piccoldkey,unsigned char *piccnewkey);
        //�ж϶�̬���Ƿ����
        AnsiString FileName=ExtractFilePath(Application->ExeName);
        if(FileName.SubString(FileName.Length(),1) != "\\")
        {
             FileName += "\\";
        }
        FileName += "OUR_MIFARE.dll";
        if(!FileExists(FileName))
        {
                ShowMessage("�޷���Ӧ�ó�����ļ����ҵ�OUR_MIFARE.dll");
                return;
        }

        //��ȡ����
        HINSTANCE hDll;
        hDll=LoadLibrary(FileName.c_str());
        piccchangesinglekey = (unsigned char (__stdcall *)(unsigned char ,unsigned char *,unsigned char ,unsigned char ,unsigned char *,unsigned char *))GetProcAddress(hDll,"piccchangesinglekey");

        //������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
        myctrlword = 0;

        //ָ������
        myareano = 8;//ָ��Ϊ��8��
        //��������ģʽ
        authmode = 1;//����0��ʾ��A������֤���Ƽ���A������֤

        //ָ��������
        mypiccoldkey[0] = 0xff;
        mypiccoldkey[1] = 0xff;
        mypiccoldkey[2] = 0xff;
        mypiccoldkey[3] = 0xff;
        mypiccoldkey[4] = 0xff;
        mypiccoldkey[5] = 0xff;

        //ָ��������,ע�⣺ָ��������ʱһ��Ҫ��ס�������п����Ҳ������룬���¸ÿ����ϡ�
        mypiccnewkey[0] = 0xff;
        mypiccnewkey[1] = 0xff;
        mypiccnewkey[2] = 0xff;
        mypiccnewkey[3] = 0xff;
        mypiccnewkey[4] = 0xff;
        mypiccnewkey[5] = 0xff;

        status = piccchangesinglekey(myctrlword,mypiccserial,myareano,authmode,mypiccoldkey,mypiccnewkey);

        FreeLibrary(hDll);
        //����ֵ����
        switch(status)
        {
                case 0:
                        ShowMessage("�����ɹ�");
                        break;
                //......
                case 8:
                        ShowMessage("�뽫�����ڸ�Ӧ��");
                        break;

        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
//��ȡ�豸��ţ�����Ϊ������ܹ���,Ҳ���Ը��ݴ˱���ڹ�˾��վ�ϲ�ѯ��������
{
/*
����֧�֣�
��վ��
*/

        unsigned char devno[4];//�豸���
        unsigned char (__stdcall *pcdgetdevicenumber)(unsigned char *devicenumber);
        //�ж϶�̬���Ƿ����
        AnsiString FileName=ExtractFilePath(Application->ExeName);
        if(FileName.SubString(FileName.Length(),1) != "\\")
        {
             FileName += "\\";
        }
        FileName += "OUR_MIFARE.dll";
        if(!FileExists(FileName))
        {
                ShowMessage("�޷���Ӧ�ó�����ļ����ҵ�OUR_MIFARE.dll");
                return;
        }

        //��ȡ����
        HINSTANCE hDll;
        hDll=LoadLibrary(FileName.c_str());
        pcdgetdevicenumber = (unsigned char (__stdcall *)(unsigned char *))GetProcAddress(hDll,"pcdgetdevicenumber");


        if(!pcdgetdevicenumber(devno))
        {
                FreeLibrary(hDll);
                ShowMessage(IntToStr(devno[0]) + "-" + IntToStr(devno[1]) + "-" + IntToStr(devno[2]) + "-" + IntToStr(devno[3]));
        }
        else
        {
                FreeLibrary(hDll);
        }

}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button6Click(TObject *Sender)
{//�޸ĵ�������,��ͬʱ��A��B���롢����Ȩ�޷�����


        unsigned char status;//��ŷ���ֵ
        unsigned char myareano;//����
        unsigned char authmode;//�������ͣ���A�����B����
        unsigned char myctrlword;//������
	unsigned char mypiccoldkey[6];//������
        unsigned char mypiccserial[4];//�����к�
        unsigned char mypiccdata[17]; //������A����6���ֽڣ�����Ȩ�޷�����4���ֽڣ���B����6���ֽڣ�ָ��������Ŀ�ı�־Ϊ1���ֽڣ�
                                      //����ֽ�Ϊ3�Ǳ�ʾͬʱ����A��B�� ����Ȩ�޷����֣�Ϊ2��ʾ����Ȩ�޷����ֲ����ģ�ֻ��A��B���룬Ϊ0��ʾֻ��A����

        unsigned char (__stdcall *piccchangesinglekeyex)(unsigned char ctrlword,unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *piccoldkey,unsigned char *piccnewkey);

        AnsiString FileName=ExtractFilePath(Application->ExeName);
        if(FileName.SubString(FileName.Length(),1) != "\\")
        {
             FileName += "\\";
        }
        FileName += "OUR_MIFARE.dll";
        if(!FileExists(FileName))
        {
                ShowMessage("�޷���Ӧ�ó�����ļ����ҵ�OUR_MIFARE.dll");
                return;
        }

        HINSTANCE hDll;
        hDll=LoadLibrary(FileName.c_str());
        piccchangesinglekeyex = (unsigned char (__stdcall *)(unsigned char ,unsigned char *,unsigned char ,unsigned char ,unsigned char *,unsigned char *))GetProcAddress(hDll,"piccchangesinglekeyex");

        myctrlword =EXTERNKEY;//�ú����������������֤
        myareano = 8;//�ĵ�8��������
        authmode = 0xaa;//��A������֤

        //������
        mypiccoldkey[0] = 0xff;
        mypiccoldkey[1] = 0xff;
        mypiccoldkey[2] = 0xff;
        mypiccoldkey[3] = 0xff;
        mypiccoldkey[4] = 0xff;
        mypiccoldkey[5] = 0xff;

        //��A����
        mypiccdata[0] = 0xff;
        mypiccdata[1] = 0xff;
        mypiccdata[2] = 0xff;
        mypiccdata[3] = 0xff;
        mypiccdata[4] = 0xff;
        mypiccdata[5] = 0xff;

        //����Ȩ�޷�����,������Ϊ FF 07 80 69
        mypiccdata[6] = 0xff;
        mypiccdata[7] = 0x07;
        mypiccdata[8] = 0x80;
        mypiccdata[9] = 0x69;

        //��B����
        mypiccdata[10] = 0xff;
        mypiccdata[11] = 0xff;
        mypiccdata[12] = 0xff;
        mypiccdata[13] = 0xff;
        mypiccdata[14] = 0xff;
        mypiccdata[15] = 0xff;

        //ָ��������Ŀ�ı�־
        mypiccdata[16] = 0x2;//ֻ��A�����B���룬��ʱ��������Ȩ�޷�����

        status = piccchangesinglekeyex(myctrlword,mypiccserial,myareano,authmode,mypiccoldkey,mypiccdata);
        FreeLibrary(hDll);
        switch(status)
        {
                case 0:
                        ShowMessage("�����ɹ�");
                        break;
                //......
                case 8:
                        ShowMessage("�뽫�����ڸ�Ӧ��");
                        break;

                case 30:
                        ShowMessage("����Ȩ�޷����ִ���");
                        break;
        }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button7Click(TObject *Sender)
{
        /*
        unsigned char (__stdcall *lcddispfull)(LPSTR lcdstr);


        //�ж϶�̬���Ƿ����
        AnsiString FileName=ExtractFilePath(Application->ExeName);
        if(FileName.SubString(FileName.Length(),1) != "\\")
        {
             FileName += "\\";
        }
        FileName += "OUR_MIFARE.dll";
        if(!FileExists(FileName))
        {
                ShowMessage("�޷���Ӧ�ó�����ļ����ҵ�OUR_MIFARE.dll");
                return;
        }

        //��ȡ����
        HINSTANCE hDll;
        hDll=LoadLibrary(FileName.c_str());

        lcddispfull = (unsigned char (__stdcall *)(LPSTR ))GetProcAddress(hDll,"lcddispfull");


        //lcddispfull(Edit1->Text.c_str());
        FreeLibrary(hDll);
        */
}
//---------------------------------------------------------------------------

