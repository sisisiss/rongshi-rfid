unit declaredll;

interface
     //读卡函数声明
     function piccreadex(ctrlword:byte;pserial:pbyte;area:byte;keyA1B0:byte;picckey:pbyte;piccdata0_2:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //写卡函数声明
     function piccwriteex(ctrlword:byte;pserial:pbyte;area:byte;keyA1B0:byte;picckey:pbyte;piccdata0_2:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //驱动蜂鸣器函数声明
     function pcdbeep(xms:integer):byte;stdcall;external 'OUR_MIFARE.dll';

     //修改单区密码函数声明
     function piccchangesinglekey(ctrlword:byte;pserial:pbyte;area:byte;keyA1B0:byte;piccoldkey:pbyte;piccnewkey:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //修改单区密码改单区AB密码或访问控制位函数声明
     function piccchangesinglekeyex(ctrlword:byte;serial:pbyte;area:byte;keyA1B0:byte;piccoldkey:pbyte;piccdata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';
     //读出编号函数声明
     function pcdgetdevicenumber(pdevicenumber:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //发送显示
      function lcddispfull(lcdstr:PChar):byte;stdcall;external 'OUR_MIFARE.dll';

      function picchalt():byte;stdcall;external 'OUR_MIFARE.dll';





const
   //以下控制字的含义请查看本公司网站提供的动态库说明
    BLOCK0_EN = $01;  //读块0
    BLOCK1_EN = $02;  //读块1
    BLOCK2_EN = $04;   //读块2
    NEEDSERIAL = $08;  //是否需要只对指定系列号的卡操作
    EXTERNKEY = $10;   //是否使用外部密码
    NEEDHALT = $20;   //是否休眠本卡

implementation



end.
 