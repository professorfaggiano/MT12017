#!/bin/bash

function CINT(){
INTERFACE=$(dialog 							\
	--stdout 							\
	--menu "Digite o nome da interface a ser configurada")	
echo"
source /etc/network/interfaces.d/*
auto lo
iface lo inet loo
" > /tmp/interfaces

}

INICIO(){
ESCOLHA=$(dialog 					\
	--stdout					\ 
	--menu "Opções de Gerenciamento" 0 0 0 		\
ARQ "Arquivos"						\
USU "Usuários"						\
RED "Redes"						\
DIS "Dispositivos"					\
PAC "Pacotes"						\
SAI "SAIR")
					
case $ESCOLHA in

GARQ) GARQ ;;
GUSU) GUSU ;;
GRED) GRED ;;
GDIS) GDIS ;;
GPAC) GPAC ;;
SAI) exit 0 ;;
*) dialog --msgbox "Opção não encontrada. Digite novamente." 0 0 ;;
esac
}


function VNV(){
case $1 in
	0)OPCAO $2 ;;
	1|255) dialog --yesno "Tem certeza que quer finalizar" 0 0 && exit 0 || MENU ;;
	*) dialog --msgbox "Erro. $VNV" 0 0 ; clear ;;
esac
}

function GRED(){
VGRED=$(dialog 
	--stdout 
	--menu "Por favor, selecione uma opção" 0 0 0 		\
	CHOST "Configurar Hostname"				\
	CDNS  "Configurar DNS"					\
	CINT  "Configurar Interface"				\
	MENU "Voltar")
VNV $? $VGRED


}

function OPCAO(){
case $1 in 
	GARQ) GARQ ;;
	GUSU) GUSU ;;
	GRED) GRED ;;
	GDIS) GDIS ;;
	GPAC) GPAC ;;
	CHOST) CHOST ;;
	CDNS) CDNS ;;
	CINT) CINT ;;
	MENU) MENU ;;
	*) dialog --msgbox "Opção não encontrada. Digite novamente" 0 0 ;;
esac

}

OPCAO(){
MENU=$(dialog								\
	--stdout							\
	--menu "Por favor,  selecione uma opção" 0 0 0 			\
GARQ "Gerenciar Arquivos"						\
GUSU "Gerenciar Usuários"						\
GRED "Gerenciar Rede"							\
GDIS "Gerenciar Dispositivos"						\
GPAC "Gerenciar Pacotes")

VNV $? $MENU
}
OPCAO
