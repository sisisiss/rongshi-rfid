public class icreadertest
{
	private native static byte pcdgetdevicenumber(byte[] devicenumber);static{System.loadLibrary("OUR_MIFARE");}//��ȡ�豸���

	private native static byte pcdbeep(int xms);static{System.loadLibrary("OUR_MIFARE");}//���豸��������

	private native static byte piccreadex(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] picckey,byte[] piccdata0_2);static{System.loadLibrary("OUR_MIFARE");}//���ɶ���

	private native static byte piccwriteex(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] picckey,byte[] piccdata0_2);static{System.loadLibrary("OUR_MIFARE");}//����д��

	private native static byte piccchangesinglekey(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] piccoldkey,byte[] piccnewkey);static{System.loadLibrary("OUR_MIFARE");}//�ĵ�������

	private native static byte piccchangesinglekeyex(byte ctrlword,byte[] serial,byte area,byte keyA1B0,byte[] piccoldkey,byte[] piccdata);static{System.loadLibrary("OUR_MIFARE");}//�ĵ������룬��ͬʱ�޸�A���룬������Ȩ�޷�����(����Ȩ�ޱ���)��B����
	
	private static final byte BLOCK0_EN = 0x01;//������0��
	private static final byte BLOCK1_EN = 0x02;//������1��
	private static final byte BLOCK2_EN = 0x04;//������2��
	private static final byte NEEDSERIAL = 0x08;//����ָ�����кŵĿ�����
	private static final byte EXTERNKEY = 0x10;//ʹ�ú���ʱ��ָ�����룬����ʹ��Ԥ���ڶ�д���е����루������ֻ��д�룬�޷��������ܰ�ȫ��
	private static final byte NEEDHALT = 0x20;//������д����˳�����߸ÿ������ߺ󣬿��������뿪��Ӧ�����ٷŻظ�Ӧ�������ܽ��еڶ��β�����

	public static void main(String[] args)
	{

		// TODO Auto-generated method stub
		if(args.length == 0)
		{
			System.out.println("�����������!");
			return;
		}
		//Java��ֻ��ʹ��string1.equals(string2)�ķ�ʽ���Ƚ��ַ��� 
		if(args[0].equals("1"))
		{//��ȡ�豸��ţ�����Ϊ������ܹ���,Ҳ���Ը��ݴ˱���ڹ�˾��վ�ϲ�ѯ��������
			int status;//��ŷ���ֵ
			byte[] devicenumber = new byte[4];
			status = (int)(pcdgetdevicenumber(devicenumber) & 0xff);//& 0xff����תΪ�޷���������
			System.out.print("\n\n1-��ȡ�豸���\n");
			System.out.print("���:");
			if(status == 0)
			{
				System.out.print("��ȡ�ɹ�!�豸���Ϊ" + (devicenumber[0] & 0xff) + "-" + (devicenumber[1] & 0xff) + "-" + (devicenumber[2] & 0xff) + "-" + (devicenumber[3] & 0xff));
				System.out.print("\n\n");
			}
			else
			{
				System.out.print("�������:" + Integer.toString(status) +"\n\n");
			}
		}
		else if(args[0].equals("2"))
		{//���豸��������
			System.out.print("\n\n2-������������һ��\n");
			System.out.print("���:�����������������һ����ʾ�ɹ�����������������Ƿ��������ߣ�\n\n");
			pcdbeep(50);


		}
		else if(args[0].equals("3"))
		{//���ɶ���
			int status;//��ŷ���ֵ
            		byte myareano;//����
            		byte authmode;//�������ͣ���A�����B����
            		byte myctrlword;//������
            		byte[] mypicckey = new byte[6];//����
            		byte[] mypiccserial = new byte[4];//�����к�
            		byte[] mypiccdata = new byte[48]; //�����ݻ���

			//������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
            		myctrlword = (byte)(BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY);

            		//ָ������
            		myareano = 8;//ָ��Ϊ��8��
            		//��������ģʽ
            		authmode = 1;//����0��ʾ��A������֤���Ƽ���A������֤

            		//ָ������
            		mypicckey[0] = (byte)0xff;
            		mypicckey[1] = (byte)0xff;
            		mypicckey[2] = (byte)0xff;
            		mypicckey[3] = (byte)0xff;
            		mypicckey[4] = (byte)0xff;
            		mypicckey[5] = (byte)0xff;

            		status = (int)(piccreadex(myctrlword, mypiccserial, myareano, authmode, mypicckey, mypiccdata) & 0xff);

			System.out.print("\n\n3-���ɶ���\n");
	
			switch (status)
            		{
                		case 0:
                    			System.out.print("���:�ɹ�!�����к�Ϊ" + Integer.toHexString(mypiccserial[0] & 0xff) + "-" + Integer.toHexString(mypiccserial[1] & 0xff) + "-" + Integer.toHexString(mypiccserial[2] & 0xff) + "-" + Integer.toHexString(mypiccserial[3] & 0xff));
					System.out.print("\n���������ݴ����mypiccdata������");
					System.out.print("\n\n");
					pcdbeep(50);
                    			break;
                			//......
                		case 8:
					System.out.print("�뽫�����ڸ�Ӧ��...\n\n");

                    			break;
                		default:
                    			System.out.print("�������:" + Integer.toString(status) +"\n\n");
                    			break;


            		}
		}
		else if(args[0].equals("4"))
		{//����д��

            		int i;
                        int status;//��ŷ���ֵ
                        byte myareano;//����
                        byte authmode;//�������ͣ���A�����B����
                        byte myctrlword;//������
                        byte[] mypicckey = new byte[6];//����
                        byte[] mypiccserial = new byte[4];//�����к�
                        byte[] mypiccdata = new byte[48]; //�����ݻ���
                        //������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��

                        myctrlword = (byte)(BLOCK0_EN + BLOCK1_EN + BLOCK2_EN + EXTERNKEY);

                        //ָ������
                        myareano = 8;//ָ��Ϊ��8��
                        //��������ģʽ
                        authmode = 1;//����0��ʾ��A������֤���Ƽ���A������֤

                        //ָ������
                        mypicckey[0] = (byte)0xff;
            		mypicckey[1] = (byte)0xff;
            		mypicckey[2] = (byte)0xff;
            		mypicckey[3] = (byte)0xff;
            		mypicckey[4] = (byte)0xff;
            		mypicckey[5] = (byte)0xff;

                        //ָ��������
                        for (i = 0; i < 48; i++)
                        {
                            mypiccdata[i] = (byte)i;
                        }

                        status = (int)(piccwriteex(myctrlword, mypiccserial, myareano, authmode, mypicckey, mypiccdata) & 0xff);
                        //�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
                        //������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
                        //������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
                        //�����غ���

			System.out.print("\n\n4-����д��\n");
                        switch (status)
                        {
                        	case 0:
					System.out.print("���:�ɹ�!�����к�Ϊ" + Integer.toHexString(mypiccserial[0] & 0xff) + "-" + Integer.toHexString(mypiccserial[1] & 0xff) + "-" + Integer.toHexString(mypiccserial[2] & 0xff) + "-" + Integer.toHexString(mypiccserial[3] & 0xff));
					System.out.print("\nmypiccdata�����е�������д�뿨������");
					System.out.print("\n\n");
					pcdbeep(50);

					break;
                            	//......
                            	case 8:
                                	System.out.print("�뽫�����ڸ�Ӧ��...\n\n");
                                	break;

                            	default:
                                	System.out.print("�������:" + Integer.toString(status) +"\n\n");
                                	break;

                        }



		}
		else if(args[0].equals("5"))
		{//�ĵ�������

			int status;//��ŷ���ֵ
                        byte myareano;//����
                        byte authmode;//�������ͣ���A�����B����
                        byte myctrlword;//������
                        byte[] mypiccserial = new byte[4];//�����к�

			byte[] piccoldkey = new byte[6];//������
                        byte[] piccnewkey = new byte[6]; //������.


                        //������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
                        myctrlword = EXTERNKEY;

                        //ָ������
                        myareano = 8;//ָ��Ϊ��8��
                        //��������ģʽ
                        authmode = 1;//����0��ʾ��A������֤���Ƽ���A������֤

                        //ָ��������
                        piccoldkey[0] = (byte)0xff;
                        piccoldkey[1] = (byte)0xff;
                        piccoldkey[2] = (byte)0xff;
                        piccoldkey[3] = (byte)0xff;
                        piccoldkey[4] = (byte)0xff;
                        piccoldkey[5] = (byte)0xff;

                        //ָ��������,ע�⣺ָ��������ʱһ��Ҫ��ס�������п����Ҳ������룬���¸ÿ����ϡ�
                        piccnewkey[0] = (byte)0xff;
                        piccnewkey[1] = (byte)0xff;
                        piccnewkey[2] = (byte)0xff;
                        piccnewkey[3] = (byte)0xff;
                        piccnewkey[4] = (byte)0xff;
                        piccnewkey[5] = (byte)0xff;

                        status = (int)(piccchangesinglekey(myctrlword, mypiccserial, myareano, authmode, piccoldkey, piccnewkey) & 0xff);
                        //�������趨�ϵ㣬Ȼ��鿴mypiccserial��mypiccdata��
                        //������ piccreadex�����ɶ��������кŵ� mypiccserial�����������ݵ�mypiccdata��
                        //������Ա�����Լ�����Ҫ����mypiccserial��mypiccdata �е������ˡ�
                        //�����غ���
			System.out.print("\n\n5-�ĵ�������\n");
                        switch (status)
                        {
				case 0:
					System.out.print("���:�ɹ�!�����к�Ϊ" + Integer.toHexString(mypiccserial[0] & 0xff) + "-" + Integer.toHexString(mypiccserial[1] & 0xff) + "-" + Integer.toHexString(mypiccserial[2] & 0xff) + "-" + Integer.toHexString(mypiccserial[3] & 0xff));
					System.out.print("\n�����ѱ��޸�!");
					System.out.print("\n\n");
					pcdbeep(50);

                                	break;
                            	//......
				case 8:
                            		System.out.print("�뽫�����ڸ�Ӧ��...\n\n");
                                	break;

                            	default:
                                	System.out.print("�������:" + Integer.toString(status) +"\n\n");
                                	break;

                        }


		}
		else  if(args[0].equals("6")) 
		{

			int status;//��ŷ���ֵ
                        byte myareano;//����
                        byte authmode;//�������ͣ���A�����B����
                        byte myctrlword;//������
                        byte[] mypiccserial = new byte[4];//�����к�

			byte[] piccoldkey = new byte[6];//������
                        byte[] piccdata = new byte[17]; //������

			//������ָ��,�����ֵĺ�����鿴����˾��վ�ṩ�Ķ�̬��˵��
                        myctrlword = EXTERNKEY;

                        //ָ������
                        myareano = 8;//ָ��Ϊ��8��
                        //��������ģʽ
                        authmode = 1;//����0��ʾ��A������֤���Ƽ���A������֤

			//ָ��������
                        piccoldkey[0] = (byte)0xff;
                        piccoldkey[1] = (byte)0xff;
                        piccoldkey[2] = (byte)0xff;
                        piccoldkey[3] = (byte)0xff;
                        piccoldkey[4] = (byte)0xff;
                        piccoldkey[5] = (byte)0xff;

                        //ָ��������,ע�⣺ָ��������ʱһ��Ҫ��ס�������п����Ҳ������룬���¸ÿ����ϡ�
                        piccdata[0] = (byte)0xff;
                        piccdata[1] = (byte)0xff;
                        piccdata[2] = (byte)0xff;
                        piccdata[3] = (byte)0xff;
                        piccdata[4] = (byte)0xff;
                        piccdata[5] = (byte)0xff;

			//����λFF078069
			piccdata[6] = (byte)0xff;
                        piccdata[7] = (byte)0x07;
                        piccdata[8] = (byte)0x80;
                        piccdata[9] = (byte)0x69;

			piccdata[10] = (byte)0xff;
                        piccdata[11] = (byte)0xff;
                        piccdata[12] = (byte)0xff;
                        piccdata[13] = (byte)0xff;
                        piccdata[14] = (byte)0xff;
                        piccdata[15] = (byte)0xff;

			piccdata[16] = (byte)0x03;//ͬʱ������ͷ���λ

			status=(int)piccchangesinglekeyex(myctrlword,mypiccserial,myareano,authmode,piccoldkey,piccdata);

			System.out.print("\n\n6-�ĵ�������(��չָ��)\n");
                        switch (status)
                        {
				case 0:
					System.out.print("���:�ɹ�!�����к�Ϊ" + Integer.toHexString(mypiccserial[0] & 0xff) + "-" + Integer.toHexString(mypiccserial[1] & 0xff) + "-" + Integer.toHexString(mypiccserial[2] & 0xff) + "-" + Integer.toHexString(mypiccserial[3] & 0xff));
					System.out.print("\n�����ѱ��޸�!");
					System.out.print("\n\n");
					pcdbeep(50);

                                	break;
                            	//......
				case 8:
                            		System.out.print("�뽫�����ڸ�Ӧ��...\n\n");
                                	break;

                            	default:
                                	System.out.print("�������:" + Integer.toString(status) +"\n\n");
                                	break;

                        }


		}



/*

���ش���������

#define ERR_REQUEST 8'Ѱ������
#define ERR_READSERIAL 9'�����������
#define ERR_SELECTCARD 10'ѡ������
#define ERR_LOADKEY 11'װ���������
#define ERR_AUTHKEY 12'������֤����
#define ERR_READ 13'��������
#define ERR_WRITE 14'д������
#define ERR_NONEDLL 21'û�ж�̬��
#define ERR_DRIVERORDLL 22'��̬������������쳣
#define ERR_DRIVERNULL 23'��������������δ��װ
#define ERR_TIMEOUT 24'������ʱ��һ���Ƕ�̬��û�з�ӳ
#define ERR_TXSIZE 25'������������
#define ERR_TXCRC 26'���͵�CRC��
#define ERR_RXSIZE 27'���յ���������
#define ERR_RXCRC 28'���յ�CRC��

*/






	
	}

	




}
