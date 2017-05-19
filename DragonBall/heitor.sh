#!/bin/bash

#------------------------SUB MENU USUÁRIO----------------------------------

GUSR(){
#clear
#echo 
OPCAO=$(dialog								\
	--stdout							\
	--title 'Gerenciamento de usuários'				\
	--menu 'Escolha uma opção:'					\
	0 0 0
	1 'Criar usuário'						\
	2 'Deletar usuário'						\
	3 'Criar grupo'							\
	4 'Deletar grupo'						\
	5 'Adicionar usuário a um grupo'				\
	6 'Remover usuário de um grupo'					\
	7 'Voltar')							\

#read -n 1 -p 'Escolha uma opção:' OPCAO

case $OPCAO in
	1) CUSR ;;
	2) AUSR ;;
	3) CGRU ;;
	4) DGRU ;;
	5) AGRU ;;
	6) RGRU ;;
	7) MENU ;;
	*) clear ; read -p "Opção inválida. Pressione enter para voltar." PPP ;;
esac
}

#---------------------------MENU PRINCIPAL--------------------------------

MENU(){
clear
echo
OPCAO=$(dialog							\
	--stdout						\
	--title 'MENU'						\
	--menu 'Escolha uma opção do menu:'			\
	0 0 0
	1 'Gerenciar arquivos'					\
	2 'Gerenciar usuários'					\
	3 'Gerenciar rede'					\
	4 'Gerenciar dispositivos'				\
	5 'Gerenciar tarefas'					\
	6 'Sair')						\

read -n 1 -p 'Escolha uma opção:' OPCAO

case $OPCAO in
	1) GARQ ;;
	2) GUSR ;;
	3) GRED ;;
	4) GDIS ;;
	5) GTAR ;;
	6) FIM ;;
	*) dialog --title 'Opção inválida.' --msgbox 'Pressione enter para voltar.' 0 0 ; MENU ;;
esac
}
#----------------------------FIM------------------------------------------

FIM(){

clear
	echo "Até breve. Volte sempre!"
    	exit 0
}
#----------------------------USER E SENHA----------------------------------

USER="0"
PASS="0"
#read -p "Digite o usuário:" USUARIO
USUARIO=$(dialog							\
	--stdout							\
	--title 'Usuário'						\
	--inputbox 'Digite o nome do usuário:'				\
	0 0)

#read -s -p "Digite a sua senha:" SENHA
SENHA=$(dialog								\
	--stdout							\
	--title 'Senha'							\
	--passwordbox 'Digite a sua senha:'				\
	0 0)
[ $USUARIO == $USER ] && [ $SENHA == $PASS ] && MENU || FIM










