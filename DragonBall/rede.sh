#!/bin/bash

OPCAO(){
OPC=$(dialog							\
		--stdout					\
		--title 'gerenciamento de rede'			\
		--menu 'escolha uma opção: '			\
		0 0 0						\
		IP  'adicionar IP'				\
		RIP 'apagar IP')				\

case $OPCAO in
	1) IP   ;;
	2) RIP  ;;
esac
dialog						\
	--msgbox "Em construção"		\
	0 0
}
OPCAO
