#!/bin/bash

GRED(){
OPC=$(dialog
	--stdout						\
	--menu	"O que deseja fazer?"			\
	0 0 0						\
	1 "Adicionar IP"				\
	2 "Remover IP"					\
	3 "Alterar nome interno"			\
	4 "Configurar servidor DNS")
case $OPC in
*) dialog --msgbox "Em construção" 0 0
./projeto.sh;;
esac
}
GRED
