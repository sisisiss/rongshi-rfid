#ifndef OURMIFARE_H
#define OURMIFARE_H

extern "C" unsigned char piccrequest(unsigned char *serial);
extern "C" unsigned char piccrequestex(unsigned char *serial);

extern "C" unsigned char piccwriteserial(unsigned char ctrlword, unsigned char *serial, unsigned char keyA1B0, unsigned char *picckey, unsigned char *piccdata0);

extern "C" unsigned char piccread(unsigned char block,unsigned char *piccdata);
extern "C" unsigned char piccread3(unsigned char block,unsigned char blocknum,unsigned char *piccdata3);
extern "C" unsigned char piccauthkey1(unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *picckey);
extern "C" unsigned char piccauthkey2(unsigned char *serial,unsigned char area,unsigned char keyA1B0);
extern "C" unsigned char pcdwritekeytoe2(unsigned char area,unsigned char keyA1B0,unsigned char *picckey);
extern "C" unsigned char pcdwritekeytoram(unsigned char startarea,unsigned char areanumber,unsigned char *picckey);
extern "C" unsigned char pcdwritekeytoramex(unsigned char startarea, unsigned char areanumber, unsigned char *picckey);

extern "C" unsigned char piccreadex(unsigned char ctrlword,unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *picckey,unsigned char *piccdata0_2);
extern "C" unsigned char piccreadex3(unsigned char area, unsigned char the_area_start_block, unsigned char blocknum, unsigned char* piccdata3);

extern "C" unsigned char piccwrite(unsigned char block,unsigned char *piccdata);
extern "C" unsigned char piccwrite3(unsigned char block,unsigned char blocknum,unsigned char *piccdata3);
extern "C" unsigned char picchalt();

extern "C" unsigned char piccwriteex(unsigned char ctrlword,unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *picckey,unsigned char *piccdata0_2);
extern "C" unsigned char piccwriteex3(unsigned char area, unsigned char the_area_start_block, unsigned char blocknum, unsigned char* piccdata3);

extern "C" unsigned char piccchangeallkey(unsigned char ctrlword,unsigned char *serial,unsigned char *areaflag,unsigned char keyA1B0);

extern "C" unsigned char piccchangeallkeyex(unsigned char ctrlword, unsigned char *serial, unsigned char *areaflag);

extern "C" unsigned char piccchangesinglekey(unsigned char ctrlword,unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *piccoldkey,unsigned char *piccnewkey);

extern "C" unsigned char piccchangesinglekeyex(unsigned char ctrlword,unsigned char *serial,unsigned char area,unsigned char keyA1B0,unsigned char *piccoldkey,unsigned char *piccnewdata);

extern "C" unsigned char pcdbeep(unsigned long xms);

extern "C" unsigned char pcdgetdevicenumber(unsigned char *devicenumber);

extern "C" unsigned char lcddispfull(unsigned char *lcdstr);


extern "C" unsigned char pcdgetcustomizedata1(unsigned char *customizedata1);
extern "C" unsigned char pcdgetcustomizedata2(unsigned char *customizedata2,unsigned char *devicenumber);

extern "C" unsigned char pcdsetcustomizedata1(unsigned char *customizedata1);
extern "C" unsigned char pcdsetcustomizedata2(unsigned char *customizedata2);

extern "C" unsigned char picccmd(unsigned char BitFramingVal, unsigned char ChannelRedundancyVal, unsigned char *sendbuf, unsigned long sendlen, unsigned char *revbuf, unsigned long *revlen);

extern "C" unsigned char piccpasswordsettingcard(unsigned char keymode, unsigned char *piccoldkey, unsigned char *settingdata);


//Mifare Ultralight卡，UL卡

extern "C" unsigned char piccrequest_ul(unsigned char *serial);

extern "C" unsigned char piccread_ul(unsigned char block,unsigned char *piccdata);
extern "C" unsigned char piccwrite_ul(unsigned char block,unsigned char *piccdata);


extern "C" unsigned char piccreadex_ul(unsigned char ctrlword,unsigned char *serial,unsigned char blockaddr,unsigned char blocksize,unsigned char *piccdata);

extern "C" unsigned char piccwriteex_ul(unsigned char ctrlword,unsigned char *serial,unsigned char blockaddr,unsigned char blocksize,unsigned char *piccdata);

//NTAG21X卡的操作
extern "C" unsigned char piccauthkey_ntag(unsigned char *picckey, unsigned char *piccntagpack);
extern "C" unsigned char piccreadex_ntag(unsigned char ctrlword, unsigned char *serial, unsigned char *picckey, unsigned char blockaddr, unsigned char blocksize, unsigned char *piccdata);
extern "C" unsigned char piccwriteex_ntag(unsigned char ctrlword, unsigned char *serial, unsigned char *picckey, unsigned char blockaddr, unsigned char blocksize, unsigned char *piccdata);
extern "C" unsigned char piccinit_ntag(unsigned char ctrlword, unsigned char *serial, unsigned char *picckey, unsigned char *piccdata);
extern "C" unsigned char picclock_ntag(unsigned char locktype, unsigned char *lockdata);
extern "C" unsigned char piccgetversion_ntag(unsigned char *piccversiondata);
extern "C" unsigned char piccreadcnt_ntag(unsigned char *picccntdata);
extern "C" unsigned char piccreadsig_ntag(unsigned char *piccsigdata);

//15693卡的操作

//功 能：寻卡，能返回在工作区域内卡的序列号（UID）及DSFID
extern "C" unsigned char iso15693inventory(unsigned char flags, unsigned char afi, unsigned char masklen, unsigned char *maskuid,unsigned char *revuid);

extern "C" unsigned char iso15693inventory16(unsigned char flags, unsigned char afi, unsigned char masklen, unsigned char *maskuid,unsigned char *revlen,unsigned char *revuid);

//使卡进入闲置（Quiet）状态
extern "C" unsigned char iso15693stayquiet(unsigned char flags, unsigned char *uid);

//使卡进入选择（selected ）状态
extern "C" unsigned char iso15693Select(unsigned char flags, unsigned char *uid);

//功能：使卡进入准备（Ready）状态
extern "C" unsigned char iso15693resettoready(unsigned char flags, unsigned char *uid);

//功能：读块数据
extern "C" unsigned char iso15693readblock(unsigned char flags, unsigned char startblock,unsigned char blocknum, unsigned char *uid,unsigned char *revlen,unsigned char *revbuf);

//功能：写块数据
extern "C" unsigned char iso15693writeblock(unsigned char flags, unsigned char startblock,unsigned char blocknum, unsigned char *uid,unsigned char writelen,unsigned char *writebuf);

//功能：锁块数据
extern "C" unsigned char iso15693lockblock(unsigned char flags, unsigned char blockaddr,unsigned char *uid);

//功能：写AFI
extern "C" unsigned char iso15693writeafi(unsigned char flags, unsigned char afi,unsigned char *uid);

//功能：锁AFI
extern "C" unsigned char iso15693lockafi(unsigned char flags, unsigned char *uid);

//功能：写DSFID
extern "C" unsigned char iso15693writedsfid(unsigned char flags, unsigned char dsfid,unsigned char *uid);

//功能：锁DSFID
extern "C" unsigned char iso15693lockdsfid(unsigned char flags, unsigned char *uid);

//功能：取卡信息
extern "C" unsigned char iso15693readinfo(unsigned char flags, unsigned char *uid,unsigned char *revlen,unsigned char *revbuf);

//功能：取卡安全信息
extern "C" unsigned char iso15693readsecuritystate(unsigned char flags, unsigned char startblock,unsigned char blocknum, unsigned char *uid,unsigned char *revlen,unsigned char *revbuf);

//功能：轻松读卡,*revbuf返回的第1字节为长度，
extern "C" unsigned char iso15693readex(unsigned char ctrlword, unsigned char afi, unsigned char startblock,unsigned char blocknum, unsigned char *uid, unsigned char *revbuf);

//功能：轻松写卡,*writebuf,第一个字节为长度，
extern "C" unsigned char iso15693writeex(unsigned char ctrlword,unsigned char afi, unsigned char startblock,unsigned char blocknum, unsigned char *uid,unsigned char *writebuf);

//功能：发送接收调试指令
extern "C" unsigned char iso15693transceive(unsigned char *sendbuf, unsigned char sendlen, unsigned char *revbuf, unsigned char *revlen, unsigned char delay_ms);

extern "C" unsigned char cpurequest(unsigned char *serial, unsigned char *param, unsigned char *cosver, unsigned char *code);

extern "C" unsigned char cpurequestex(unsigned char *serial, unsigned char *param, unsigned char *cosver, unsigned char *code, unsigned char *ats);

extern "C" unsigned char cpuisoapdu(unsigned char *sendbuf, unsigned long sendlen, unsigned char *revbuf, unsigned long *revlen);

extern "C" unsigned char cpurats(unsigned char *param, unsigned char *cosver, unsigned char *code);

//荣士CPU卡简易应用函数

//初始化函数，(ctrlword是否需要先清空卡,不需要清空的话，可以需输入卡密码，卡密码长度)ctrlword_0是否先清空卡，分配空间（字节数），
//返回0表示可以使用荣士强制清空卡功能，返回1表示初始成功，但荣士强制清空卡功能再用，返回6X，表示应用目录标识已被占用。
extern "C" unsigned char cpursinit(unsigned char ctrlword, unsigned char *key, unsigned char keylen, unsigned long customsize);

//修改卡密码，修改后，请妥慎记住，如卡密码忘记，卡将无法再用。
extern "C" unsigned char cpurscardkeychg(unsigned char *oldkey, unsigned char oldkeylen, unsigned char *newkey, unsigned char newkeylen);

//荣士强制清空卡
extern "C" unsigned char cpurscardclr();

//增加文件（文件序号0~5，文件只读密码：长度,文件读写密码,长度，分配空间)
extern "C" unsigned char cpursfileadd(unsigned char fileno, unsigned char *readonlykey, unsigned char readonlykeylen, unsigned char *writekey, unsigned char writekeylen, unsigned long customsize);

//写文件数据(文件序号,文件读写密码,密码长度,写入起始位置,写入长度，写入内容)
extern "C" unsigned char cpursfiledatawrite(unsigned char fileno, unsigned char keytype, unsigned char *key, unsigned char keylen, unsigned long startaddr, unsigned char *databuf, unsigned long datalen);

//读文件数据(文件序号,读写密码,密码长度,读取起始位置,读取长度,读出内容)
extern "C" unsigned char cpursfiledataread(unsigned char fileno, unsigned char keytype, unsigned char *key, unsigned char keylen, unsigned long startaddr, unsigned char *databuf, unsigned long datalen);

//修改文件密码，修改后，请妥慎记住，否则该文件将无法再用
extern "C" unsigned char cpursfilekeychg(unsigned char fileno, unsigned char keytype, unsigned char *oldkey, unsigned char oldkeylen, unsigned char *newkey, unsigned char newkeylen);


//易写版增加文件，文件类型为28，不是E8，写文件时没有线路保护和加密，存放在0x1681的目录下（文件序号0~5，文件只读密码：长度,文件读写密码,长度，分配空间),
extern "C" unsigned char cpursfileadd_s(unsigned char fileno, unsigned char *readonlykey, unsigned char readonlykeylen, unsigned char *writekey, unsigned char writekeylen, unsigned long customsize);
extern "C" unsigned char cpursfiledatawrite_s(unsigned char fileno, unsigned char keytype, unsigned char *key, unsigned char keylen, unsigned long startaddr, unsigned char *databuf, unsigned long datalen);




extern "C" void cpucalcexauthkey(unsigned char *randdata, unsigned char *key, unsigned char keylen, unsigned char *result); //用随机数加密

extern "C" void cpudesdec(unsigned char *src, unsigned char *key, unsigned char *result); //解密	 :	 明文  、密
extern "C" void cpucalcmac(unsigned char *randdata, unsigned char *databuf, unsigned long datalen, unsigned char *key, unsigned char keylen, unsigned char *macbuf); //计算MAC
extern "C" void cpudata3desenc(unsigned char *indatabuf, unsigned long indatalen, unsigned char *key, unsigned char keylen, unsigned char *outdatabuf, unsigned long *outdatalen); //加密计算

extern "C" void jm_u(unsigned char oldbuf[], unsigned char jmbuf[], unsigned char jmlen);
extern "C" void jm(unsigned char oldbuf[], unsigned char jmbuf[], unsigned char jmlen);

//SAM卡操作
extern "C" unsigned char samrequest(unsigned char samslotnumber, unsigned char *revbuf, unsigned char *revlen);

extern "C" unsigned char samisoapdu(unsigned char *sendbuf, unsigned long sendlen, unsigned char *revbuf, unsigned long *revlen);

#endif // OURMIFARE_H
