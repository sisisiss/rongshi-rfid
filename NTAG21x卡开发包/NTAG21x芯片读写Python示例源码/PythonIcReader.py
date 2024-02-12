#python通过缩进来表示代码块，不可以随意更改每行前面的空白，否则程序会运行错误！！！如果缩进不一致，就会报错： IndentationError
#!/usr/bin/env python
# -*- coding: utf-8 -*-
#python -m pdb xxx.py 调试程度 n命令单步执行，s命令单步执行 会进入函数内部  b xx ,c
#import pdb    pdb.set_trace() 设断点

import ctypes             #调用DLL动态库要有这个引用
import sys
import os
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
        print('错误代码：13，读本块失败，可能需要验证密码！')
    elif(Errcode==14):
        print('错误代码：14，写本块失败，可能需要验证密码！')
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

#加载当前目录下的DLL
dllfile=sys.path[0]+'\OUR_MIFARE.dll'
Objdll = ctypes.windll.LoadLibrary(dllfile)
Objdll = ctypes.WinDLL(dllfile)

#根据入口参数执行不同功能
if(len(sys.argv)>1): 
    if(str(sys.argv[1])=='0'):    #驱动读写器发出响声
        Objdll.pcdbeep(50)
        print('驱动读写器嘀一声！')
        
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
            
    elif(str(sys.argv[1])=='2'):  #读卡的序列号
        mypiccserial=bytes(7)     #7个字节卡序列号
        status = Objdll.piccrequest_ul(mypiccserial) % 256
        if(status==0):
            Objdll.pcdbeep(38)
            
            piccserialStr=''
            for num in range(0,len(mypiccserial)):
                piccserialStr=piccserialStr+'%02x ' % (mypiccserial[num])
            print('7字节卡序号:'+ piccserialStr)
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='3'):  #读卡内4个页的数据
        mypiccserial=bytes(7)     #7个字节卡序列号缓冲
        mypiccdata=bytes(16)      #16个字节读卡的数据缓冲
        ReadPageBegin=4           #起始页地址

        status = Objdll.piccrequest_ul(mypiccserial) % 256            #寻卡并读卡的序列号
        if(status==0):
            piccserialStr=''
            for num in range(0,len(mypiccserial)):
                piccserialStr=piccserialStr+'%02x ' % (mypiccserial[num])
            print('7字节卡序号:'+ piccserialStr)

            status = Objdll.piccread_ul(ReadPageBegin,mypiccdata) % 256
            if(status==0):
                Objdll.pcdbeep(38)
                
                piccdataStr=''
                for num in range(0,len(mypiccdata)):
                    piccdataStr=piccdataStr+'%02x ' % (mypiccdata[num])
                print('块%d-块%d数据:' % (ReadPageBegin,ReadPageBegin+3)+piccdataStr)
            else:
                PrintErrInf(status)
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='4'):       #写一个页数据
        mypiccserial=bytes(7)          #7个字节卡序列号
        mypiccdata=bytes([0,1,2,3])    #1个页4个字节的写卡数据
        WritePage=4                    #改写页地址

        status = Objdll.piccrequest_ul(mypiccserial) % 256     #寻卡并读卡的序列号
        if(status==0):
            piccserialStr=''
            for num in range(0,len(mypiccserial)):
                piccserialStr=piccserialStr+'%02x ' % (mypiccserial[num])
            print('7字节卡序号:'+ piccserialStr)

            status = Objdll.piccwrite_ul(WritePage,mypiccdata) % 256
            if(status==0):
                Objdll.pcdbeep(38)
                print('改写块%d内数据成功!' % (WritePage))
            else:
                PrintErrInf(status)
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='5'):       #认证卡片密码
        mypiccserial=bytes(7)          #7个字节卡序列号
        mypicckey=bytes([eval('0x12'),eval('0x34'),eval('0x56'),eval('0x78')])     #4个字节的卡密码
        mypiccntagpack=bytes([0,0])    #返回的确认码

        status = Objdll.piccrequest_ul(mypiccserial) % 256                         #寻卡并读卡的序列号
        if(status==0):
            piccserialStr=''
            for num in range(0,len(mypiccserial)):
                piccserialStr=piccserialStr+'%02x ' % (mypiccserial[num])
            print('7字节卡序号:'+ piccserialStr)

            status = Objdll.piccauthkey_ntag(mypicckey,mypiccntagpack) % 256
            if(status==0):
                Objdll.pcdbeep(38)
                print('卡密码认证成功!确认码为：%02x%02x' % (mypiccntagpack[0],mypiccntagpack[1]))
            else:
                PrintErrInf(status)
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='6'):  #轻松读卡，一次最多可读12页共48个字节的数据
        mypiccserial=bytes(7)     #7个字节卡序列号缓冲
        mypicckey=bytes(4)        #4个字节的认证密码缓冲
        mypiccdata=bytes(48)      #48个字节读卡的数据缓冲
        myblockaddr=4             #起始页地址
        myblocksize=10            #读卡页数
        myctrlword=0              #取值0不需要认证密码，16要认证卡密码

        if(myctrlword==16):
            mypicckey=bytes([eval('0x12'),eval('0x34'),eval('0x56'),eval('0x78')])     #4个字节的认证密码
            
        status = Objdll.piccreadex_ntag(myctrlword,mypiccserial,mypicckey,myblockaddr,myblocksize,mypiccdata) % 256
        if(status==0):
            Objdll.pcdbeep(38)
            
            piccserialStr=''
            for num in range(0,len(mypiccserial)):
                piccserialStr=piccserialStr+'%02x ' % (mypiccserial[num])
            print('7字节卡序号:'+ piccserialStr)
            
            ReadInf=''
            for num in range(0,myblocksize*4):
                ReadInf=ReadInf+'%02x ' % (mypiccdata[num])
            print('读出卡内数据:'+ ReadInf)
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='7'):  #轻松写卡，一次最多可读11页共44个字节的数据
        mypiccserial=bytes(7)     #7个字节卡序列号缓冲
        mypicckey=bytes(4)        #4个字节的认证密码缓冲
        myblockaddr=4             #起始页地址
        myblocksize=11            #读卡页数
        myctrlword=0              #取值0不需要认证密码，16要认证卡密码
        
        if(myctrlword==16):
            mypicckey=bytes([eval('0x12'),eval('0x34'),eval('0x56'),eval('0x78')])     #4个字节的认证密码
            
        #mypiccdata=bytes([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43])    #写入卡片内数据，一次最多写入44个字节
        #如果要写字符串等信息,将字符串转成字节数组写入
        Writeinf='伟大的中华人民共和国万岁!2020-weidadezhonhuarenmingongheguowangshi'
        Writeinf=Writeinf[0:44]                     #一个扇区最多写44个字节
        mypiccdata=bytes(Writeinf, encoding='gbk')  #将要写入的信息转bytes

        status = Objdll.piccwriteex_ntag(myctrlword,mypiccserial,mypicckey,myblockaddr,myblocksize,mypiccdata) % 256
        if(status==0):
            Objdll.pcdbeep(38)
            
            piccserialStr=''
            for num in range(0,len(mypiccserial)):
                piccserialStr=piccserialStr+'%02x ' % (mypiccserial[num])
            print('7字节卡序号:'+ piccserialStr+'，写卡成功！')
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='8'):      #设置卡密码及保护机制
        mypicckey=bytes(4)            #4个字节的认证密码
        newPickey=bytes(4)            #4个字节的新密码
        mypiccserial=bytes(7)         #7个字节卡序列号缓冲
        EnOrDisKey=1                  #0开启密码保护功能，1取消密码保护功能
        ReadNeedKey=0                 #取值0读卡不需要认证密码，非0读卡也要认证密码
        myctrlword=16                 #取值0不需要认证密码，16要认证卡密码  对卡操作
        KeyErrNum=0                   #对卡操作允许密码错误次数（0为不限次）
        buf4=0
        
        mypiccdata=bytes([0,0,0])     #配置信息
        Barr3=bytes(1)
        Barr4=bytes(1)
        Barr5=bytes(1)
        Barr6=bytes(1)
        Barr7=bytes(1)
        Barr12=bytes(1)
        Barr13=bytes(1)
        Barr14=bytes(1)
        Barr15=bytes(1)
        
        if(myctrlword==16):           #本次带密码操作卡片
            mypicckey=bytes([eval('0x12'),eval('0x34'),eval('0x56'),eval('0x78')])     #4个字节的认证密码
        
        if(EnOrDisKey==0):            #卡片开启密码保护功能，开启后要记住卡密码，否则卡报废！！！
            myctrlword=myctrlword+4
            Barr3=bytes([20])         #配置：密码保护起始页，要根据不同类型的卡来设置
            myctrlword=myctrlword+1
            
            buf4=KeyErrNum % 8        #配置：最大卡密码认证错误次数
            if(ReadNeedKey>0):        #配置：读卡时需要认证卡密码
                buf4=buf4+eval('0x80')
            Barr4=bytes([buf4])
            
            myctrlword=myctrlword+2   #配置：启用计数器
            newPickey=bytes([eval('0x12'),eval('0x34'),eval('0x56'),eval('0x78')])     #配置：4个字节的新密码
            
            Barr12=bytes([eval('0x16')])
            Barr13=bytes([eval('0x16')])
        else:                         #卡片取消密码保护功能
            Barr3=bytes([eval('0xFF')])
            myctrlword=myctrlword+1
            myctrlword=myctrlword+2
        
        mypiccdata=mypiccdata+Barr3+Barr4+Barr5+Barr6+Barr7+newPickey+Barr12+Barr13+Barr14+Barr15  #拼接配置信息

        status = Objdll.piccinit_ntag(myctrlword,mypiccserial,mypicckey,mypiccdata) % 256
        if(status==0):
            Objdll.pcdbeep(38)
            
            piccserialStr=''
            for num in range(0,len(mypiccserial)):
                piccserialStr=piccserialStr+'%02x ' % (mypiccserial[num])
            print('7字节卡序号:'+ piccserialStr+'，设置卡密码及保护机制成功！')
        else:
            PrintErrInf(status)
            
    else:
        print('请加入正确的参数运行程序')
else:
    print('\n')
    print('请加以下参数运行程序：')
    print('参数 0 驱动读卡器嘀一声')
    print('参数 1 读4个字节设备编号')
    print('参数 2 读7个字节卡序列号')
    print('参数 3 读卡内4个页的数据')
    print('参数 4 改写1个页的数据')
    print('参数 5 认证卡片密码')
    print('参数 6 轻松读卡，一次最多可读12页共48个字节的数据')
    print('参数 7 轻松写卡，一次最多可写11页共44个字节的数据')
    print('参数 8 设置卡密码及保护机制')
        
sys.exit()
