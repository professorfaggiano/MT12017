#!/bin/bash
clear

VNV(){
case $1 in
	0) OPCAO $2 ;;
	1|255) dialog --yesno "tem certeza que quer finalizar?" 0 0 && exit 0 || MENUSU ;;
	*) dialog --msgbox "Erro. $VNV" 0 0 ; clear ;;
esac
}

CRU(){
CRIARU=$(dialog								\
	--stdout							\
	--title "Criar usuário"						\
	--inputbox "Digite um nome para o usuário"			\
	0 0)

	useradd $CRIARU

VIUS=$(dialog								\
	--stdout							\
	--title "Usuários"						\
	--textbox /etc/passwd						\
	0 0)	

	MENUSU
}

CRG(){
CRIAG=$(dialog								\
	--stdout							\
	--title "Criar grupo"						\
	--inputbox "Digite um nome para o grupo" 			\
	0 0)

	groupadd $CRIAG

VIGR=$(dialog								\
	--stdout							\
	--title "Grupos"						\
	--textbox /etc/group						\
	0 0)

	MENUSU
}

DLU(){
VISUS=$(dialog								\
	--stdout							\
	--title "Opções de usuários"					\
	--textbox /etc/passwd						\
	0 0)


DELGRU=$(dialog								\
	--stdout							\
	--title "Apagar usuário"					\
	--inputbox "Qual nome do usuário que deseja apagar?"		\
	0 0)

	userdel $DELGRU
	MENUSU
}

DLG(){
VIGRU=$(dialog								\
	--stdout							\
	--title "Opções de grupo"					\
	--textbox /etc/group						\
	0 0)


DELGRU=$(dialog								\
	--stdout							\
	--title "Apagar grupo"						\
	--inputbox "Qual nome do grupo que deseja apagar?"		\
	0 0)

	groupdel $DELGRU
	MENUSU
}

#Construção
MSU(){
MODUSU=$(dialog								\
	--stdout							\
	--title "Modificar senha do usuário"				\
	--inputbox "Qual nome do usuário que deseja modificar a senha?"	\
	0 0)


PASSUSU=$(dialog							\
	--stdout							\
	--title "Senha"							\
	--passwordbox "Por favor, digite a senha: "			\
	0 0) 
	
	passwd $MODUSU
	MENUSU
}

OPCAO(){ 
	case $1 in
		CRU) CRU ;;
		CRG) CRG ;;
		DLU) DLU ;;
		DLG) DLG ;;
		MSU) MSU ;;
		SAR) exit 0 ;;
		*) dialog --msgbox "Opção não encontrada. Digite novamente" 0 0 ;;
		esac
}

MENUSU(){
USUARIOS=$(dialog							\
	--stdout	--nocancel					\
	--title "Usuários"						\
	--menu "Escolha a opção que desejar"				\
	0 0 0								\
	CRU 	"Criar usuário"						\
	CRG	"Criar grupo"						\
	DLU	"Deletar usuário"					\
	DLG	"Deletar grupo"						\
	MSU	"Modificação de senha"					\
	SAR	"Sair")

VNV $? $USUARIOS

}

MENUSU


#Criar monitoramento de usuários e grupos
#Permissionamento individual	
