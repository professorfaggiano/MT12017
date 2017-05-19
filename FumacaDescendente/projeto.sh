#!/bin/bash
SAIR(){
dialog	--yesno 'Você quer sair?' 0 0
if [ $? = 1 ]; then
	MENU
fi
}

MENU(){
OPC=$( dialog					\
 	--stdout				\
	--menu 'Escolha a opção desejada'	\
 	0 0 0					\
 	1 'Gerenciador de Arquivos'		\
	2 'Gerenciador de Usuarios'		\
	3 'Gerenciador de Rede'			)

case $OPC in
	1) ./GARQ.sh ;;
	2) ./GUSU.sh ;;
	3) ./GRED.sh ;;
	*) SAIR  ;;
esac
}
MENU
