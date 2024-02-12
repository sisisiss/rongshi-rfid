#ifndef OURMIFAREA_H
#define OURMIFAREA_H

extern "C" unsigned char piccrequest(unsigned char *serial);
extern "C" unsigned char piccrequestex(unsigned char *serial);

extern "C" unsigned char piccreadex(unsigned char ctrlword,unsigned char *serial,unsigned char area,
                                    unsigned char keyA1B0,unsigned char *picckey,unsigned char *piccdata0_2);

extern "C" unsigned char piccwriteex(unsigned char ctrlword,unsigned char *serial,unsigned char area,
                                    unsigned char keyA1B0,unsigned char *picckey,unsigned char *piccdata0_2);

extern "C" unsigned char piccchangesinglekeyex(unsigned char ctrlword,unsigned char *serial,unsigned char area,
                                    unsigned char keyA1B0,unsigned char *piccoldkey,unsigned char *piccnewdata);

extern "C" unsigned char pcdbeep(unsigned long xms);
extern "C" unsigned char pcdgetdevicenumber(unsigned char *devicenumber);


#endif // OURMIFAREA_H
