unit declaredll;

interface
     //驱动蜂鸣器函数声明
     function pcdbeep(xms:integer):byte;stdcall;external 'OUR_MIFARE.dll';

     //读出设备编号函数声明
     function pcdgetdevicenumber(pdevicenumber:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //只读取卡号函数
     function piccrequest_ul(pserial:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //读块内数据
     function piccread_ul(blockaddr:byte;piccdata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //写块内数据
     function piccwrite_ul(blockaddr:byte;piccdata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //认证密码
     function piccauthkey_ntag(picckey:pbyte;piccntagpack:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //只读取卡的版本号及型号
     function piccgetversion_ntag(mypiccversiondata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //读取卡的签字信息
     function piccreadsig_ntag(piccsigdata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //读取卡的单向操作计数器（操作流水号）
     function piccreadcnt_ntag(picccntdata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //锁定页数据
     function picclock_ntag(locktype:byte;serial:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //初始化卡
     function piccinit_ntag(ctrlword:byte;pserial:pbyte;picckey:pbyte;piccdata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //轻松读卡
     function piccreadex_ntag(ctrlword:byte;pserial:pbyte;picckey:pbyte;blockaddr:byte;blocksize:byte;piccdata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

     //轻松写卡
     function piccwriteex_ntag(ctrlword:byte;pserial:pbyte;picckey:pbyte;blockaddr:byte;blocksize:byte;piccdata:pbyte):byte;stdcall;external 'OUR_MIFARE.dll';

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
