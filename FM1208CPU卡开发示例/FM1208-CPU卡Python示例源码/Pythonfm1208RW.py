#!/usr/bin/env python
# -*- coding: utf-8 -*-

import ctypes             #调用DLL动态库要有这个引用
import sys
import os
import pdb                #引入程序调试功能，可用  pdb.set_trace()  设置程序调试断点

#CPU卡操作错误代码解释
def PrintErrInf(Errcode):
    if(Errcode==8):
        print('请重新拿开卡后再放到感应区！')
    elif(Errcode==50):
        print('RATS错误，厂家调试代码，用户不需理会！')
    elif(Errcode==51):
        print('PPS错误，厂家调试代码，用户不需理会！')
    elif(Errcode==52):
        print('已进入了14443-4协议状态，可进行CPU卡功能所有操作了！')
    elif(Errcode==53):
        print('CPU卡功能通讯错误,请先激活卡片！')        
    elif(Errcode==54):
        print('数据不足，需要接着发送未完成的数据至卡上！')
    elif(Errcode==55):
        print('发送ACK指令给卡，让卡接着发送数据回来！')
    elif(Errcode==56):
        print('清空根目录失败！')
    elif(Errcode==57):
        print('卡片不支持功能！')
    elif(Errcode==58):
        print('卡片初始化失败!')
    elif(Errcode==59):
        print('分配的空间不足!')
    elif(Errcode==60):
        print('本次操作的实体已存在！')
    elif(Errcode==61):
        print('无足够空间！')
    elif(Errcode==62):
        print('文件不存在！')
    elif(Errcode==63):
        print('权限不足,有可能是用只读密码认证，导致无法更改读写密码或无法写文件！')
    elif(Errcode==64):
        print('密码不存在，或密钥文件未创建！')
    elif(Errcode==65):
        print('传送长度错误！')
    elif(Errcode==66):
        print('Le错误，即接收的数据长度指定过大！')
    elif(Errcode==67):
        print('功能不支持或卡中无MF 或卡片已锁定！')
    elif(Errcode==68):
        print('密码认证错误次数过多，该密码已被锁死！')
    elif(Errcode>=70 and Errcode<=85):
        print('密码错误，剩余次数为 %d ，如果为0，该密码将锁死，无法再认证！' % (RetCode - 70))
    elif(Errcode==86):
        print('更改后的密码长度必须和创建时的长度一致！')
    elif(Errcode==87):
        print('应用目录不存在！')
    elif(Errcode==88):
        print('应用文件不存在！')
    elif(Errcode==89):
        print('文件号不能超过 5 ')
    elif(Errcode==90):
        print('读取文件时返回的长度不足，数据可能不正确！')
    elif(Errcode==91):
        print('一次读文件的长度不能超过 255')
    elif(Errcode==92):
        print('一次写文件的长度不能超过 247')
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
        
    elif(str(sys.argv[1])=='1'):  #读取设备的出厂编号
        devno=bytes([0,0,0,0])    #声明4个字节缓冲
        status=Objdll.pcdgetdevicenumber(devno)
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
            
    elif(str(sys.argv[1])=='2'):         #激活CPU卡，每次卡离开过感应区都要先激活才能继续操作卡片
        mypiccserial=bytes([0,0,0,0])    #卡序列号
        myparam=bytes([0,0,0,0])         #卡参数
        myver=bytes([0])
        mycode=bytes([0])
        
        status = Objdll.cpurequest(mypiccserial, myparam, myver, mycode)
        if(status==0 or status==52):
            Objdll.pcdbeep(38)
            
            Cardno=mypiccserial[0]
            Cardno=Cardno+(mypiccserial[1]*256)
            Cardno=Cardno+(mypiccserial[2]*65536)
            Cardno=Cardno+(mypiccserial[3]*16777216)
            CardnoStr='%010d' % Cardno
            print('10进制卡号:'+CardnoStr)
            print('16进制卡号:%02x-%02x-%02x-%02x' % (mypiccserial[0],mypiccserial[1],mypiccserial[2],mypiccserial[3]))
            print('参数:%02x-%02x-%02x-%02x' % (myparam[0],myparam[1],myparam[2],myparam[3]))
            print('版本:%02x' % (myver[0]))
            print('厂商代码(复旦为90):%02x' % (mycode[0]))
            
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='3'):   #初始化CPU卡
        mypicckey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #卡片认证密码,16进制，最好不要随便修改，此密码不影响数据安全
        mykeylen=len(mypicckey)
        spacesize=1000             #应用空间大小(要大于所有文件总和)，根据不同容量的卡设不同值
        emptycard=1                #取值1将先清空卡，取值为0不清空现有数据
        
        status = Objdll.cpursinit(emptycard, mypicckey, mykeylen, spacesize)
        if(status==0):
            Objdll.pcdbeep(38)
            print('初始化卡成功！')
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='4'):  #创建文件
        RFilekey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #文件只读密码,16进制
        WFilekey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #文件读写密码,16进制
        RKLen=len(RFilekey)       #只读密码长度
        WKLen=len(WFilekey)       #读写密码长度
        FileIndex=0               #文件号，取值0 到 5
        FileSize=255              #指定文件大小
        
        status = Objdll.cpursfileadd(FileIndex, RFilekey, RKLen, WFilekey, WKLen, FileSize)
        if(status==0):
            Objdll.pcdbeep(38)
            print('创建文件成功')
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='5'):  #修改文件密码
        Autkey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #认证密码,16进制
        Newkey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #新密码,16进制
        AKLen=len(Autkey)       #认证密码长度
        NKLen=len(Newkey)       #新密码长度
        FileIndex=0             #文件号，取值0 到 5
        
        ChaKey=0                #取值 0 表示更改只读密码，   取值 1 表示更改读写密码
        OldKey=0                #取值 0 表示用只读密码来认证，取值 2 表示用读写密码来认证
        ctrlCode=ChaKey+OldKey
        
        status = Objdll.cpursfilekeychg(FileIndex, ctrlCode, Autkey, AKLen, Newkey, NKLen)
        if(status==0):
            Objdll.pcdbeep(38)
            print('修改文件密码成功')
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='6'):  #读CPU卡内文件信息
        Autkey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #认证密码,16进制
        AKLen=len(Autkey)       #认证密码长度
        FileIndex=0             #文件号，取值0 到 5
        DataStart=0             #读起始位置
        DataLen=10              #读长度最大不能超过255
        DataBuf=bytes([0,0,0,0,0,0,0,0,0,0])         #读数据缓冲
        ctrlCode=2              #取值 0 表示用只读密码来认证，取值 2 表示用读写密码来认证
        
        status = Objdll.cpursfiledataread(FileIndex, ctrlCode, Autkey, AKLen, DataStart, DataBuf,DataLen)
        if(status==0):
            Objdll.pcdbeep(38)
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='7'):  #写数据到文件内
        Autkey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #认证密码,16进制
        AKLen=len(Autkey)       #认证密码长度
        FileIndex=0             #文件号，取值0 到 5
        DataStart=0             #写起始位置
        DataLen=10              #写数据长度,最大不能超过255
        DataBuf=bytes([0,1,2,3,4,5,6,7,8,9])         #写数据缓冲
        ctrlCode=2              #取值 0 表示用只读密码来认证，取值 2 表示用读写密码来认证
        
        status = Objdll.cpursfiledatawrite(FileIndex, ctrlCode, Autkey, AKLen, DataStart, DataBuf,DataLen)
        if(status==0):
            Objdll.pcdbeep(38)
            print('写数据到文件内成功！')
        else:
            PrintErrInf(status)
            
    elif(str(sys.argv[1])=='8'):  #修改卡片密码
        Oldkey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #旧密码,16进制
        Newkey=bytes([eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF'),eval('0xFF')])  #新密码,16进制
        OKLen=len(Oldkey)       #旧密码长度
        NKLen=len(Newkey)       #新密码长度
        
        status = Objdll.cpurscardkeychg(Oldkey, OKLen, Newkey, NKLen)
        if(status==0):
            Objdll.pcdbeep(38)
            print('修改卡密码成功！')
        else:
            PrintErrInf(status)

    elif(str(sys.argv[1])=='9'):  #强制清空已用cpursinit函数成功初始化过的卡
        status = Objdll.cpurscardclr()
        if(status==0):
            Objdll.pcdbeep(38)
            print('强制清空卡成功！')
        elif(status==64):
            print('此卡为未经过我们cpursinit函数成功初始化的卡！')
        else:
            PrintErrInf(status)
            
    else:
        print('请加入正确的参数运行程序')
else:
        print('\n')
        print('请加以下参数运行程序：')
        print('参数 0 驱动读卡器嘀一声')
        print('参数 1 读4个字节设备编号')
        print('参数 2 激活CPU卡')
        print('参数 3 初始化CPU卡')
        print('参数 4 创建文件')
        print('参数 5 修改文件密码')
        print('参数 6 读CPU卡内文件信息')
        print('参数 7 写数据到文件内')
        print('参数 8 更改CPU卡认证密码')
        print('参数 9 强制清空已用cpursinit函数成功初始化过的卡')
sys.exit()
