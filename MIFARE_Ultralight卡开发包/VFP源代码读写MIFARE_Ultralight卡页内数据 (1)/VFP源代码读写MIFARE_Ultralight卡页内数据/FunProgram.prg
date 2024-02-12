FUNCTION DecToBin
PARAMETER InNum
outStr=SPACE(0)
DO WHILE InNum>0
   OutStr=STR(MOD(InNum,2),1,0)+OUTSTR 				
   InNum=INT(InNum/2)
ENDDO
RETURN(OutStr)
***************************************************************************
FUNCTION BinToDec
PARAMETER InStr
PRIVATE ALL LIKE j*
   jnLen=LEN(ALLTRIM(InStr))
   jnSum=0
   FOR nCtr=0 TO jnLen
  	   IF SUBSTR(InStr,jnLen-nCtr,1)='1'
		  jnSum=jnSum+(2^nCtr)
	   ENDIF
   ENDFOR
RETURN(jnSum)	
****************************************************************************
FUNCTION DecToHex
PARAMETER InNum
OutStr=SPACE(0)
DO WHILE InNum>0
   OutStr=FindHex(MOD(InNum,16))+OutStr 				
   InNum=INT(InNum/16)
ENDDO
OutStr=RIGHT('000'+OutStr,4)
OutStr=RIGHT(OutStr,2)+LEFT(OutStr,2)      && 高低字节交换
RETURN(OutStr)
****************************************************************************
FUNCTION FindHex
* Lookup table for conversion of alpha hex chars.
*   Input:  NUMERIC
*   Output: CHAR

        PARAMETERS InVal        && Integer
        PRIVATE ALL LIKE j*

        DO CASE
                CASE InVal=10
                        jOutStr='A'
                CASE InVal=11
                        jOutStr='B'
                CASE InVal=12
                        jOutStr='C'
                CASE InVal=13
                        jOutStr='D'
                CASE InVal=14
                        jOutStr='E'
                CASE InVal=15
                        jOutStr='F'
                OTHERWISE
                        jOutStr=STR(InVal,1,0)
                ENDCASE
RETURN(jOutStr)

********************************************************
FUNCTION HexToDec
* This function converts POSITIVE hex (Char) to decimal.
*   Input:  CHAR
*   Output: NUMERIC

        PARAMETERS InStr
        PRIVATE ALL LIKE J*
        InStr=RIGHT('000'+InStr,4)
        InStr=RIGHT(InStr,2)+LEFT(InStr,2)   && 高低字节交换
        InStr=ALLTRIM(InStr)
        jLen=LEN(InStr)
        nSum=0
        rPtr=0

        FOR nCtr= 1 TO jLen
                cPtr=UPPER(SUBSTR(InStr,jLen-rPtr,1))

                DO CASE
                        CASE cPtr='A'
                                cPtr='10'
                        CASE cPtr='B'
                                cPtr='11'
                        CASE cPtr='C'
                                cPtr='12'
                        CASE cPtr='D'
                                cPtr='13'
                        CASE cPtr='E'
                                cPtr='14'
                        CASE cPtr='F'
                                cPtr='15'
                ENDCASE

                nSum=nSum+(VAL(cPtr) * 16^(nCtr-1))
                rPtr=rPtr+1
        ENDFOR
RETURN(nSum)
***********************************************************************************************
FUNCTION HexToDec1B
PARAMETERS InStr
PRIVATE ALL LIKE J*
InStr=left(InStr+'00',2)
InStr=ALLTRIM(InStr)
jLen=LEN(InStr)
nSum=0
rPtr=0

FOR nCtr= 1 TO 2
        cPtr=UPPER(SUBSTR(InStr,jLen-rPtr,1))
        DO CASE
                CASE cPtr='A'
                        cPtr='10'
                CASE cPtr='B'
                        cPtr='11'
                CASE cPtr='C'
                        cPtr='12'
                CASE cPtr='D'
                        cPtr='13'
                CASE cPtr='E'
                        cPtr='14'
                CASE cPtr='F'
                        cPtr='15'
        ENDCASE

        nSum=nSum+(VAL(cPtr) * 16^(nCtr-1))
        rPtr=rPtr+1
ENDFOR
RETURN(nSum)
************************************************************************************************
FUNCTION Find32Hex
PARAMETERS InVal        && Integer
PRIVATE ALL LIKE j*

DO CASE
        CASE InVal=10
                jOutStr='A'
        CASE InVal=11
                jOutStr='B'
        CASE InVal=12
                jOutStr='C'
        CASE InVal=13
                jOutStr='D'
        CASE InVal=14
                jOutStr='E'
        CASE InVal=15
                jOutStr='F'
        CASE InVal=16
                jOutStr='G'
        CASE InVal=17
                jOutStr='H'
        CASE InVal=18
                jOutStr='I'
        CASE InVal=19
                jOutStr='J'
        CASE InVal=20
                jOutStr='K'
        CASE InVal=21
                jOutStr='L'
        CASE InVal=22
                jOutStr='M'
        CASE InVal=23
                jOutStr='N'
        CASE InVal=24
                jOutStr='o'
        CASE InVal=25
                jOutStr='P'
        CASE InVal=26
                jOutStr='Q'
        CASE InVal=27
                jOutStr='R'
        CASE InVal=28
                jOutStr='S'
        CASE InVal=29
                jOutStr='T'
        CASE InVal=30
                jOutStr='U'
        CASE InVal=31
                jOutStr='V'
        OTHERWISE
                jOutStr=STR(InVal,1,0)
        ENDCASE
RETURN(jOutStr)
*************************************************************************