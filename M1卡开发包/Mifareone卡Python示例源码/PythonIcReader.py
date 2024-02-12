#python通过缩进来表示代码块，不可以随意更改每行前面的空白，否则程序会运行错误！！！如果缩进不一致，就会报错： IndentationError
#!/usr/bin/env python
# -*- coding: utf-8 -*-
#python -m pdb xxx.py 调试程度 n命令单步执行，s命令单步执行 会进入函数内部  b xx ,c
#import pdb    pdb.set_trace() 设断点

import ctypes             #调用DLL动态库要有这个引用
import sys
import os
import struct             #struct的pack函数把任意数据类型变成字符串
import pdb                #引入程序调试功能，可用  pdb.set_trace()  设置程序调试断点

#IC卡操作错误代码解释
def PrintErrInf(Errcode):
    if(Errcode==8):
        print('错误代码：8，未寻到卡，请重新拿开卡后再放到感应区！')
    elif(Errcode==1):
        print('错误代码：1，0~2块都没读出来，可能刷卡太块。但卡序列号已被读出来！')
    elif(Errcode==2):
        print('错误代码：2，第0块已被读出，但1~2块读取失败。卡序列号已被读出来！')
    elif(Errcode==3):    
        print('错误代码：3，第0、1块已被读出，但2块读取失败。卡序列号已被读出来！')
    elif(Errcode==9):
        print('错误代码：9，有多张卡在感应区，寻卡过程中防冲突失败，读序列吗错误！')
    elif(Errcode==10):
        print('错误代码：10，该卡可能已被休眠，无法选中卡片！')
    elif(Errcode==11):
        print('错误代码：11，密码装载失败！')        
    elif(Errcode==12):
        print('错误代码：12，卡片密码认证失败！')
    elif(Errcode==13):
        print('错误代码：13，读本块失败，原因是刷卡太快或本块所对应的区还没通过密码认证！')
    elif(Errcode==14):
        print('错误代码：14，写本块失败，原因是刷卡太快或本块所对应的区还没通过密码认证！')
    elif(Errcode==21):
        print('错误代码：21，没有动态库！')
    elif(Errcode==22):
        print('错误代码：22，动态库或驱动程序异常！')
    elif(Errcode==23):
        print('错误代码：23，驱动程序错误或尚未安装！')
    elif(Errcode==24):
        print('错误代码：24，操作超时，一般是动态库没有反映！')
    elif(Errcode==25):
        print('错误代码：25，发送字数不够！')
    elif(Errcode==26):
        print('错误代码：26，发送的CRC错！')
    elif(Errcode==27):
        print('错误代码：27，接收的字数不够！')
    elif(Errcode==28):
        print('错误代码：28，接收的CRC错！')
    else:
        print('未知错误，错误代码：'+str(status))


if sys.platform == 'linux' or sys.platform == 'mac':
    # Linux加载当前目录下的so库
    dllfile = sys.path[0] + '/libOURMIFARE.so'
    Objdll = ctypes.cdll.LoadLibrary(dllfile)
else:
    # windows系统加载当前目录下的DLL库
    dllfile = sys.path[0] + '\OUR_MIFARE.dll'
    Objdll = ctypes.windll.LoadLibrary(dllfile)
    Objdll = ctypes.WinDLL(dllfile)

#控制字定义
BLOCK0_EN=eval('0x01')        #读写块0
BLOCK1_EN=eval('0x02')        #读写块1
BLOCK2_EN=eval('0x04')        #读写块2
NEEDSERIAL=eval('0x08')       #读写指定序列号的卡
EXTERNKEY=eval('0x10')        #需要每次指定密码
NEEDHALT=eval('0x20')         #写卡后是否休眠卡

#根据入口参数执行不同功能
if(len(sys.argv)>1): 
    if(str(sys.argv[1])=='0'):    #驱动读写器发出响声
        Objdll.pcdbeep(50)
        print('驱动读卡器嘀一声！')
        
    elif(str(sys.argv[1])=='1'):  #读取设备的出厂编号
        devno=bytes(4)            #声明4个字节缓冲
        status=Objdll.pcdgetdevicenumber(devno) % 256
        if(status==0):
            Objdll.pcdbeep(38)
            
            SerialNum=''
            for num in range(0,len(devno)):
                SerialNum=SerialNum+'%02x' % (devno[num])
                if(num<len(devno)-1):
                    SerialNum=SerialNum+'-'
            print('设备出厂编号:'+ SerialNum)
        else:
            print('读取设备编号失败，错误代码：'+str(status))
            
    elif(str(sys.argv[1])=='2'):  #轻松读取卡内某扇区3个块共48个字节数据
        myctrlword=BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY        #读写控制字
        myareano=8    #指定读写区号为第8区
        authmode=1    #大于0表示用A密码认证，推荐用A密码认证
        mypicckey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #卡片认证密码,16进制
        mypiccserial=bytes(4)            #4字节卡序列号缓冲
        mypiccdata=bytes(48)             #读卡数据缓冲，一个扇区共48个字节
        status = Objdll.piccreadex(myctrlword, mypiccserial, myareano, authmode, mypicckey, mypiccdata) % 256
        if(status==0):
            Objdll.pcdbeep(38)
            
            Cardno=mypiccserial[0]
            Cardno=Cardno+(mypiccserial[1]*256)
            Cardno=Cardno+(mypiccserial[2]*65536)
            Cardno=Cardno+(mypiccserial[3]*16777216)
            CardnoStr='%010d' % Cardno
            print('10进制卡号:'+CardnoStr)
            
            piccdataStr=''
            for num in range(0,len(mypiccdata)):
                piccdataStr=piccdataStr+'%02x ' % (mypiccdata[num])
            print('卡内数据:'+ piccdataStr)
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='3'):  #轻松改写卡内某扇区3个块共48个字节数据
        myctrlword=BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY        #读写控制字
        myareano=8                #指定读写区号为第8区
        authmode=1                #大于0表示用A密码认证，推荐用A密码认证
        mypicckey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #卡片认证密码,16进制
        mypiccserial=bytes(4)     #4字节卡序列号缓冲
        
        #mypiccdata=bytes([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47])    #写入卡片内数据，一个扇区最多写入48个字节
        #如果要写字符串等信息,将字符串转成字节数组写入
        Writeinf='伟大的中华人民共和国万岁!2020-weidadezhonhuarenmingongheguowangshi'
        Writeinf=Writeinf[0:48]                     #一个扇区最多写48个字节
        mypiccdata=bytes(Writeinf, encoding='gbk')  #将要写入的信息转bytes
        
        status = Objdll.piccwriteex(myctrlword, mypiccserial, myareano, authmode, mypicckey, mypiccdata) % 256
        if(status==0):
            Objdll.pcdbeep(38)
            print('16进制卡号:%02x%02x%02x%02x，写卡成功！' % (mypiccserial[0],mypiccserial[1],mypiccserial[2],mypiccserial[3]))
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='4'):  #修改卡片的A密码+控制字+B密码
        myctrlword=BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY        #读写控制字
        myareano=8                #指定读写区号为第8区
        authmode=1                #大于0表示用A密码认证，推荐用A密码认证
        mypiccoldkey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #卡片认证密码,16进制
        
        #mypiccnewkey 指定6字节新A密码+4字节控制码+6字节B密码+1字节功能码 ,注意：指定新密码时一定要记住，否则有可能找不回密码，导致该卡报废！！！
        #功能码为：3 表示同时更改A、B 密码及权限访问字
        #功能码为：2 表示密码权限访问字不更改，只改A、B密码
        #功能码为：0 示只改A密码
        
        mypiccnewkey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0x07'),eval('0x80'),eval('0x69'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0x03')])
        mypiccserial=bytes(4)     #4字节卡序列号缓冲
        status = Objdll.piccchangesinglekeyex(myctrlword, mypiccserial, myareano, authmode, mypiccoldkey, mypiccnewkey) % 256
        if(status==0):
            Objdll.pcdbeep(38)
            print('16进制卡号:%02x%02x%02x%02x，更改卡密码成功！' % (mypiccserial[0],mypiccserial[1],mypiccserial[2],mypiccserial[3]))
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='5'):  #读取某块共16个字节数据
        myareano=8                #指定读写区号为第8区
        myblock=myareano*4+0      #块号为区号*4+0、1、2、3，其中第3块为密码控制块，
        authmode=1                #大于0表示用A密码认证，推荐用A密码认证
        mypicckey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #卡片认证密码,16进制
        mypiccserial=bytes(4)     #4字节卡序列号缓冲
        myblockdata=bytes(16)     #读卡数据缓冲，一个块共16个字节
        
        status = Objdll.piccrequest(mypiccserial) % 256                                     #寻找感应区内的卡片
        if(status==0):
            status = Objdll.piccauthkey1(mypiccserial,myareano,authmode,mypicckey) % 256    #寻到卡后，认证要读块所在扇区的密码
            if(status==0):
                status = Objdll.piccread(myblock,myblockdata) % 256                         #密码认证成功，读块数据
                if(status==0):
                    Objdll.pcdbeep(38)
                    ReadInf=''
                    for num in range(0,len(myblockdata)):
                        ReadInf=ReadInf+'%02x ' % (myblockdata[num])
                    print('卡号:%02x%02x%02x%02x，读块数据成功！' % (mypiccserial[0],mypiccserial[1],mypiccserial[2],mypiccserial[3]))
                    print('块内16进制数据:'+ReadInf)
                else:
                    PrintErrInf(status)
            else:
                PrintErrInf(status)
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='6'):      #写取某块共16个字节数据
        myareano=8                    #指定写区号为第8区
        blockid=0                     #指定写块号0、1、2、3，其中第3块为密码控制块，如改写第三块要确定写入的数据正确否这个扇区将报废！！！
        myblock=myareano*4+blockid    #块地址=扇区号*4+块号
        authmode=1                    #大于0表示用A密码认证，推荐用A密码认证
        mypicckey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #卡片认证密码,16进制
        mypiccserial=bytes(4)         #4字节卡序列号缓冲
        
        if(blockid<3):
            myblockdata=bytes([0,1,2,3,4,5,6,7,8,9,10,11,12,13,15,15])     #写卡数据缓冲，一个块共16个字节
        else:
            #改写第3块是修改卡密码及控制字，修改前要确定数据是否正确，修改后要记住改写的密码！否则报废此扇区！！！以下信息表示改A\B密码：FFFFFFFFFFFF,不改控制位
            myblockdata=bytes([255,255,255,255,255,255,eval('0xFF'),eval('0x07'),eval('0x80'),eval('0x69'),255,255,255,255,255,255])     
            
        status = Objdll.piccrequest(mypiccserial) % 256                                     #寻找感应区内的卡片
        if(status==0):
            status = Objdll.piccauthkey1(mypiccserial,myareano,authmode,mypicckey) % 256    #寻到卡后，认证要读块所在扇区的密码
            if(status==0):
                status = Objdll.piccwrite(myblock,myblockdata) % 256                        #密码认证成功，写块数据
                if(status==0):
                    Objdll.pcdbeep(38)
                    print('卡号:%02x%02x%02x%02x，写块数据成功！' % (mypiccserial[0],mypiccserial[1],mypiccserial[2],mypiccserial[3]))
                else:
                    PrintErrInf(status)
            else:
                PrintErrInf(status)
        else:
            PrintErrInf(status)

    elif(str(sys.argv[1])=='7'):      #写UID卡0区0块卡号
        myctrlword=BLOCK0_EN          #读写控制字
        authmode=0                    #大于0表示用A密码认证，推荐用A密码认证
        mypicckey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #卡片认证密码,16进制
        mypiccserial=bytes(4)         #4字节卡序列号缓冲
        mypiccdata=bytes(16)          #16字节写入数据缓冲，UID卡号是前面4个字节，第五字节必须等于前四个字节的异或和

        mypiccdata=struct.pack('<I',1234567890)   #将卡号转字节数组低位在前

        status=Objdll.piccwriteserial(myctrlword,mypiccserial,authmode,mypicckey,mypiccdata) % 256 
        if(status==0):
            status = Objdll.piccrequest(mypiccserial) % 256                                  #寻找感应区内的卡片
            if(status==0):
                Objdll.pcdbeep(38)
                Cardno=mypiccserial[0]
                Cardno=Cardno+(mypiccserial[1]*256)
                Cardno=Cardno+(mypiccserial[2]*65536)
                Cardno=Cardno+(mypiccserial[3]*16777216)
                print('写10进制卡号:%010d 成功！' % Cardno)
            else:
                PrintErrInf(status)
        else:
            PrintErrInf(status)

    else:
        print('请加入正确的参数运行程序')
else:
    print('\n')
    print('请加以下参数运行程序：')
    print('参数 0 驱动读卡器嘀一声')
    print('参数 1 读4个字节设备编号')
    print('参数 2 读取某扇区3个块共48个字节卡内数据')
    print('参数 3 改写某扇区3个块共48个字节数据')
    print('参数 4 修改卡片密码及控制位')
    print('参数 5 读取某块16个字节数据')
    print('参数 6 改写某块16个字节数据')
    print('参数 7 写UID卡0区0块卡号')
            
sys.exit()
