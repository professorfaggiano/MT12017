#!/bin/bash
ACSD(){
NOME=$(dialog						\
--stdout						\
--inputbox  'Digite o nome do diretório a ser acessado'	\
0 0 )
cd $NOME
dialog --msgbox "você acessou $NOME" 0 0
GARQ
}

CDIR(){
NOME=$(dialog						\
--stdout						\
--inputbox  'Digite o nome do diretório a ser criado'	\
0 0 )
mkdir $NOME
GARQ
}

ADIR(){
NOME=$(dialog						\
--stdout						\
--inputbox  'Digite o nome do diretório a ser apagado'	\
0 0 )
rm -rf $NOME
GARQ
}

GARQ(){
OPC=$(dialog						\
--stdout						\
--title	'Gerenciador de Arquivos'			\
--menu 'O que deseja realizar'				\
0 0 0							\
1 'Acessar diretórios'					\
2 'Criar diretórios'					\
3 'Apagar diretórios'					)

case $OPC in
1) ACSD ;;
2) CDIR ;;
3) ADIR ;;
*) ./projeto.sh  ;;
esac
}
GARQ
