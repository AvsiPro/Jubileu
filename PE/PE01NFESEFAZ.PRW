#include "protheus.ch"

/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �PE01NFESEFAZ�Autor  �Alexandre Venancio  Data �  09/05/21   ���
�������������������������������������������������������������������������͹��
���Desc.     � PE para manipulacao dos dados da NFE - nfesefaz	          ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � AP                                                        ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/

USER FUNCTION PE01NFESEFAZ()
//aProd,cMensCli,cMensFis,aDest,aNota,aInfoItem,aDupl,aTransp,aEntrega,aRetirada,aVeiculo,aReboque,aNfVincRur,aEspVol,aNfVinc,aDetPag,aObsCont
Local aProd		:= PARAMIXB[1]
Local cMensCli	:= PARAMIXB[2]
Local cMensFis	:= PARAMIXB[3]
Local aDest		:= PARAMIXB[4] 
Local aNota   	:= PARAMIXB[5]
Local aInfoItem	:= PARAMIXB[6]
Local aDupl		:= PARAMIXB[7]
Local aTransp	:= PARAMIXB[8]
Local aEntrega	:= PARAMIXB[9]
Local aRetirada	:= PARAMIXB[10]
Local aVeiculo	:= PARAMIXB[11]
Local aReboque	:= PARAMIXB[12]
Local aNfVincRur:= PARAMIXB[13]
Local aEspVol	:= PARAMIXB[14]
Local aNfVinc	:= PARAMIXB[15]
Local aDetPag	:= PARAMIXB[16]
Local aObsCont	:= PARAMIXB[17]
Local aProcRef  := PARAMIXB[18]
Local aArea		:= GetArea()
Local aRetorno	:= {}

// mensagem - dados adicionais
If AllTrim( Alias() ) != "SD1"
	
    DbSelectArea("SC5")
	DbSetOrder(1)
	If Dbseek(xFilial("SC5")+SD2->D2_PEDIDO)
		If !Empty(SC5->C5_XIDPOK)
			cMensCli += " ** Numero PEDIDOOK - "+cvaltochar(SC5->C5_XIDPOK)+" **"
		EndIf
	EndIf
EndIf  



aadd(aRetorno,aProd)
aadd(aRetorno,cMensCli)
aadd(aRetorno,cMensFis)
aadd(aRetorno,aDest)
aadd(aRetorno,aNota)
aadd(aRetorno,aInfoItem)
aadd(aRetorno,aDupl)
aadd(aRetorno,aTransp)
aadd(aRetorno,aEntrega)
aadd(aRetorno,aRetirada)
aadd(aRetorno,aVeiculo)
aadd(aRetorno,aReboque)    
aadd(aRetorno,aNfVincRur)  
aadd(aRetorno,aEspVol)
aadd(aRetorno,aNFVinc)  
aadd(aRetorno,aDetPag)
aadd(aRetorno,aObsCont)
aadd(aRetorno,aProcRef)

RestArea(aArea)
              
RETURN aRetorno
