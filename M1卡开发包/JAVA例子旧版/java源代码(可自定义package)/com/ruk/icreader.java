package com.ruk;

public class icreader
{
	public native static byte pcdgetdevicenumber(byte[] devicenumber);static{System.loadLibrary("OUR_MIFARE");}//��ȡ�豸���

	public native static byte pcdbeep(int xms);static{System.loadLibrary("OUR_MIFARE");}//���豸��������

	public native static byte piccreadex(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] picckey,byte[] piccdata0_2);static{System.loadLibrary("OUR_MIFARE");}//���ɶ���

	public native static byte piccwriteex(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] picckey,byte[] piccdata0_2);static{System.loadLibrary("OUR_MIFARE");}//����д��

	public native static byte piccchangesinglekey(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] piccoldkey,byte[] piccnewkey);static{System.loadLibrary("OUR_MIFARE");}//�ĵ�������

	public native static byte piccchangesinglekeyex(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] piccoldkey,byte[] piccdata);static{System.loadLibrary("OUR_MIFARE");}//�ĵ������룬��ͬʱ�޸�A���룬������Ȩ�޷�����(����Ȩ�ޱ���)��B����
	

}
