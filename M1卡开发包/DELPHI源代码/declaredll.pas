unit declaredll;

interface
     //������������
     function piccreadex(ctrlword:byte;pserial:pbyte;area:byte;keyA1B0:byte;picckey:pbyte;piccdata0_2:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //д����������
     function piccwriteex(ctrlword:byte;pserial:pbyte;area:byte;keyA1B0:byte;picckey:pbyte;piccdata0_2:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //������������������
     function pcdbeep(xms:integer):byte;stdcall;external 'OUR_MIFARE.dll';

     //�޸ĵ������뺯������
     function piccchangesinglekey(ctrlword:byte;pserial:pbyte;area:byte;keyA1B0:byte;piccoldkey:pbyte;piccnewkey:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //�޸ĵ�������ĵ���AB�������ʿ���λ��������
     function piccchangesinglekeyex(ctrlword:byte;serial:pbyte;area:byte;keyA1B0:byte;piccoldkey:pbyte;piccdata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //�����豸��ź�������
     function pcdgetdevicenumber(pdevicenumber:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //ֻ��ȡ���ź���
     function piccrequest(pserial:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //������ʾ
      function lcddispfull(lcdstr:PChar):byte;stdcall;external 'OUR_MIFARE.dll';

     //��д0��0��UID
      function piccwriteserial(ctrlword:byte;pserial:pbyte;keyA1B0:byte;picckey:pbyte;piccdata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

      //��7�ֽڿ���
      function  piccrequest_ul(piccdata:pbyte):byte; stdcall;external 'OUR_MIFARE.dll';

const
   //���¿����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
    BLOCK0_EN = $01;  //����0
    BLOCK1_EN = $02;  //����1
    BLOCK2_EN = $04;   //����2
    NEEDSERIAL = $08;  //�Ƿ���Ҫֻ��ָ��ϵ�кŵĿ�����
    EXTERNKEY = $10;   //�Ƿ�ʹ���ⲿ����
    NEEDHALT = $20;   //�Ƿ����߱���

implementation



end.
