#!/bin/bash
#script para gerenciar usuario;arquivos;diretorios;rede;dispositivos
#-------------------------------------------------------------------------


-------------------------------------------------------------------------
#----------------CRIA ARQUIVOS--------------------------------------------

CARQ(){
clear

#Criar arquivo
NOME=$(dialog								\
		--stdout						\
		--title 'Criar Arquivo'					\
		--inputbox 'Digite o nome do arquivo: '			\
		0 0)
> $NOME
#------------------------------------------------------------------------

dialog									\
		--title 'Parabéns'					\
		--msgbox 'Criado com sucesso!'				\
		0 0
GARQ
}
#------------------------------------------------------------------------
#--------------------APAGA ARQUIVOS--------------------------------------

AARQ(){
clear

rm -rf $NOME
dialog									\
		--title 'Parabéns'					\
		--msgbox 'Deletado com sucesso!'			\
		0 0
GARQ
}

#-----------------------------------------------------------------------
#------------------------RENOMEAR ARQUIVOS------------------------------

RARQ(){
clear
NOME=$(dialog					\
		--stdout			\
		--inputbox 'Digite um nome: '	\
		0 0)

LOCAL=$(dialog					\
		--stdout			\
		--inputbox 'Digite um local: '	\
		0 0)

NOVONOME=$(dialog				   \
		--stdout			   \
		--inputbox 'Digite um novo nome: ' \
		0 0)

mv $LOCAL/$NOME		mv $LOCAL/$NOVONOME

#---------------------------------------------------------

dialog						\
	--msgbox 'Renomeado com sucesso!' 	\
	0 0

RARQ
}


#-------------------------------------------------------------------------
#---------------------CRIA DIRETORIOS-------------------------------------

CDIR(){
clear
read -p "Digite o nome do diretorio a ser criado: " NOME
USUARIO=$(dialog							\
		--stdout						\
		--title 'Usuário'					\
		--inputbox 'Digite o nome do seu usuário: '		\
		0 0)
mkdir $NOME
echo "Criado com sucesso"
read -p "Pressione [enter] para finalizar" PPP
GARQ
}
#-------------------------------------------------------------------------

#-------------------------------------------------------------------------










#----------------CRIA DIRETORIOS--------------------------------------------
CDIR(){
clear
NOME=$(dialog								\
		--stdout						\
		--title 'Criar Diretório'					\
		--inputbox 'Digite o nome do Diretório: '			\
		0 0)
mkdir $NOME
#---------------------------------------------------------------
dialog									\
		--title 'Parabéns'					\
		--msgbox 'Criado com sucesso!'				\
		0 0
GARQ
}
#------------------------------------------------------------------------
#--------------------APAGA DIRETORIOS--------------------------------------

ADIR(){
clear
NOME=$(dialog								\
		--stdout						\
		--title 'Apagar Diretório'					\
		--inputbox 'Digite o nome do Diretório: '			\
		0 0)

#read -p "Digite o nome do arquivo a ser apagado: " NOME
rm -rf $NOME
#echo "Apagado com sucesso"
dialog									\
		--title 'Parabéns'					\
		--msgbox 'Deletado!'					\
		0 0
GARQ
}

#------------------------LISTA DIRETORIOS--------------------------------

LDIR(){
clear
NOME=$(dialog								\
		--stdout						\
		--title 'Listagem'					\
		--inputbox 'Digite o nome do arquivo: '			\
		0 0)
dialog									\
		--title 'Listagem'					\
		--msgbox '$NOME Listado com sucesso!'				\
		0 0		\
ls -la $NOME
GARQ
}
#-------------------------------------------------------------------------
#------------------------MOVER DIRETORIOS--------------------------------

MDIR(){
clear
NOME=$(dialog									\
		--stdout							\
		--title 'Mover Diretório'					\
		--inputbox 'Digite o nome do Diretório: '			\
		0 0)
dialog										\
		--title 'Mover'							\
		--msgbox 'Feito!'						\
		0 0								\
mv $NOME
GARQ
}
#-----------------------------------------------------------------------------------
#------------------------RENOMEAR DIRETORIOS--------------------------------

RDIR(){
clear
NOMEVEIO=$(dialog									\
		--stdout							\
		--title 'Renomear Diretório'					\
		--inputbox 'Digite o novo nome: '				\
		0 0)
NOMENOVO=$(dialog									\
		--stdout							\
		--title 'Novo nome'						\
		--inputbox 'Digite o novo nome: '				\
		0 0)
										\
mv $NOMEVEIO $NOMENOVO
dialog										\
		--msgbox 'Feito!'						\
		0 0
GARQ
}


#
#-------------------------------------------------------------------------
#------------------------SUB MENU DIRETORIOS--------------------------------
GDIR(){
OPCAO=$(dialog							\
		--stdout					\
		--title 'Gerenciamento de diretórios'		\
		--menu 'Escolha uma opção: '			\
		0 0 0						\
		1 'Criar Diretório'				\
		2 'Apagar Diretório'				\
		3 'Listar Diretorio'				\
		4 'Mover Diretorio'				\
		5 'Renomear Diretório' 				\
		7 'Voltar')

case $OPCAO in
	1) CDIR ;;
	2) ADIR ;;
	3) LDIR ;;
	4) MDIR ;;
	5) RDIR ;;
	6) MENU	;;
	*) clear ; read -p "Opção invalida. Pressione enter para voltar." PPP ;;
esac
}



#------------------------SUB MENU FEH ARQUIVOS--------------------------------
GARQ(){
#clear
#echo "
OPCAO=$(dialog							\
		--stdout					\
		--title 'Gerenciamento de arquivos'		\
		--menu 'Escolha uma opção: '			\
		0 0 0						\
		1 'Criar arquivo'				\
		2 'Apagar arquivo'				\
		3 'Renomear arquivo'				\
		4 'Listar arquivo'				\	
		5 'Mover arquivo'				\
		6 'Voltar')
#read -n 1 -p "Escolha uma opção: " OPCAO
case $OPCAO in
	1) CARQ ;;
	2) AARQ ;;
	3) RARQ ;;
	4) LARQ ;;
	5) MARQ ;;
	6) MENU	;;
	*) clear ; read -p "Opção invalida. Pressione enter para voltar." PPP ;;
esac
}
#-------------------------------FEH---------------------------------------------------


#----------------------------------------------------------------------------------
#---------------------MENU PRINCIPAL-----------------------------------------------

MENU(){
#clear
#echo "
OPCAO=$(dialog						\
	--stdout 					\
	--title 'MENU'					\
	--menu 'Escolha uma opção do menu: '		\
	0 0 0						\
	1 'Gerenciar arquivos'				\
	2 'Gerenciar Diretórios'			\
	3 'Gerenciar usuarios'				\
	4 'Gerenciar rede'				\
	5 'Gerenciar Dispositivos'			\
	6 'Gerenciar pacotes'				\
	7 'Sair')

#read -n 1 -p "Escolha uma opção: " OPCAO

case $OPCAO in
	1) GARQ ;;
	2) GDIR ;;
	3) GUSR ;;
	4) GRED ;;
	5) GDIS ;;
	6) GPAC ;;
	7) FIM	;;
	*) dialog --title 'Opção invalida.' --msgbox ' Pressione enter para voltar.' 0 0 ; MENU ;;
esac
}
#---------------------------------------------------------------------------------------------------
#------------------------------FIM------------------------------------------------------------------
FIM(){
clear
	echo "Até breve. volte sempre !"
	exit 0
}
#-----------------------------USUARIO E SENHA----------------------------
USER="0"
PASS="0"
#read -p "Digite o usuário: " USUARIO
USUARIO=$(dialog							\
		--stdout						\
		--title 'Usuário'					\
		--inputbox 'Digite o nome do seu usuário: '		\
		0 0)

#read -s -p "Digite a sua senha: " SENHA
SENHA=$(dialog								\
		--stdout						\
		--title 'Senha'						\
		--passwordbox ' Digite a sua senha: '			\
		0 0)
[ $USUARIO == $USER ] && [ $SENHA == $PASS ] && MENU || FIM
#-------------------------------------------------------------------------

