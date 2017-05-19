#!/bin/bash
CU(){
NOME=$(dialog							\
	--stdout						\
	--inputbox 'Digite o nome do usuario a ser criado'	\
	0 0)
useradd $NOME
dialog --msgbox "O usuário $NOME foi criado" 0 0
GUSU
}

AU(){
NOME=$(dialog							\
	--stdout						\
	--inputbox 'Digite o nome do usuario a ser apagado'	\
	0 0)
userdel $NOME
dialog --msgbox "O usuário $NOME foi apagado" 0 0
GUSU
}

CG(){
NOME=$(dialog							\
	--stdout						\
	--inputbox 'Digite o nome do grupo a ser criado'	\
	0 0)
groupadd $NOME
dialog --msgbox "O grupo $NOME foi criado" 0 0
GUSU
}

AG(){
NOME=$(dialog							\
	--stdout						\
	--inputbox 'Digite o nome do grupo a ser apagado'	\
	0 0)
groupdel $NOME
dialog --msgbox "O grupo $NOME foi apagado" 0 0
GUSU
}

GUSU(){
OPC=$(dialog							\
	--stdout						\
	--title 'Gerenciamento de Usuários'			\
	--menu 'Escollha uma opção'				\
	0 0 0							\
	1 'Criar Usuário'					\
	2 'Apagar Usuário'					\
	3 'Criar Grupo'						\
	4 'Apagar Grupo'					)

case $OPC in
	1) CU ;;
	2) AU ;;
	3) CG ;;
	4) AG ;;
 	*) ./projeto.sh ;;
esac
}

GUSU
