#!/bin/bash
clear

INICIO(){
MENU=$(dialog								\
	--stdout							\
	--menu " Gerenciamento de Pacotes! Escolha uma opção: " 0 0 0	\
1 " Instalar um pacote "						\
2 " Atualizar os pacotes "					\
3 " Remover um pacote "						\
4 " Exibir pacotes da máquina "				\
5 "Sair do programa")


case $MENU in

1) INSTALAR ;;
ATUALIZAR) ATUALIZAR ;;
REMOVER) REMOVER ;;
EXIBIR-PACOTES) EXIBIR-PACOTES ;;
SAIR) exit 0 ;;
*) dialog --msgbox " Opção incorreta, tente novamente! " 00 ;;
esac
}
INICIO

INSTALAR(){
INSTALARP=$(dialog
		--stdout					    \
		--title	'Instalar um pacote'			    \
		--inputbox 'Digite o nome do pacote a ser instalado' \
0 0)
apt-get install $INSTALARP


}
INSTALAR

ATUALIZAR(){
ATUALIZARP=$(dialog							\
		--stdout						\
		--title 'Atualizar pacotes'				\
		--infobox 'Atualizando pacotes...'			\
0 0)
apt-get update
}
ATUALIZAR

REMOVER(){
REMOVERP=$(dialog
		--stdout						\
		--title	'Remover Pacotes'				\
		--passwordbox 'Digite o nome do pacote a ser removido'	\
0 0)
dpkg -P
}
REMOVER

EXIBIR(){
EXIBIRP=$(dialog
		--stdout
		--title	'Exibir Pacotes '			\
		--msgbox 'Exibir pacotes presentes na máquina'	\
0 0)
dpkg -l
}
EXIBIR
