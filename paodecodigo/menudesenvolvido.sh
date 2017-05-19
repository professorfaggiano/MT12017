#!/bin/bash
GARQ(){
GARQOP=$( dialog				\
	--stdout				\
	--nocancel				\
	--menu 'Gerenciamneto de Arquivos'	\
	0 0 0					\
	1 "Criar Arquivos"			\
	2 "Deletar Arquivos"			\
	3 "Criar Diretorios"			\
	4 "Deletar Diretorios"			\
	5 "Mover Arquivos"			\
	6 "Permissões de Arquivos"		\
	7 "Renomear Arquivos"			\
	8 "Copiar Arquivos"			\
	9 "Voltar")

case $GARQOP in
	1) CARQ ;;
	2) DARQ ;;
	3) CDIR ;;
	4) DDIR ;;
	5) MARQ ;;
	6) ARQP ;;
	7) RNARQ ;;
	8) CPARQ ;;
	9) INICIO ;;
esac
}

CARQ(){
	ARQ=$( dialog						\
	--stdout						\
	--inputbox "Escreva o nome do arquivo a ser criado"	\
	0 0)
	> $ARQ
	GARQ
}
DARQ(){
	RARQ=$( dialog						\
	--stdout						\
	--inputbox "Qual o Arquivo a ser deletado?"		\
	0 0)
	rm $RARQ
	GARQ
}
CDIR(){
	DIR=$( dialog						\
	--stdout						\
	--inputbox "Digite o nome do diretório a ser criado"	\
	0 0)
	mkdir $DIR
	GARQ
}
DDIR(){
	DDIR=$( dialog						\
	--stdout						\
	--inputbox "Qual o diretorio a ser deletado?"		\
	0 0)
	rm -rf $DDIR
	GARQ
}
MARQ(){
	MARQ=$( dialog						\
	--stdout						\
	--inputbox "Qual o arquivo a ser movido?"		\
	0 0)

	MARQDIR=$( dialog					\
	--stdout						\
	--inputbox "Qual o diretorio destino?"			\
	0 0)
	mv $MARQ $MARQDIR
	GARQ
}
ARQP(){
	ARQP=$( dialog						\
	--stdout						\
	--inputbox "Qual arquivo deve ser permissionado?"	\
	0 0)
	PARQ
}
PER1(){
	chmod 754 $ARQP
}
PER2(){
	chmod 755 $ARQP
}
PER3(){
	chmod 777 $ARQP
}
PARQ(){	
	PARQ=$( dialog						\
		--stdout					\
		--menu "Opções de permissão para o usuário"	\
		0 0 0						\
		1 "Leitura"					\
		2 "Leitura e Execução"				\
		3 "Leitura, Execução e Escrita"			\
		4 "Voltar")
case $PARQ in
	1) PER1 ;;
	2) PER2 ;;
	3) PER3 ;;
	4) GARQ ;;
esac
}
RNARQ(){
	RNARQ=$( dialog						\
		--stdout					\
		--inputbox "Qual arquivo será renomeado?"	\
		0 0)

	NNARQ=$( dialog						\
		--stdout					\
		--inputbox "Qual o novo nome do arquivo"	\
		0 0)
mv $RNARQ $NNARQ
}
CPARQ(){
#	dialog								\
#	--msgbox "Desculpe o transtorno, estamos em construção!"	\
#	6 80
#	INICIO
	
	ARQCOP=$( dialog					\
		--stdout					\
		--inputbox "Digite o Arquivo a ser copiado"	\
		0 0)	
	DIRCOP=$( dialog					\
		--stdout					\
		--inputbox "Digite o diretorio destino"		\
		0 0)
cp $ARQCOP $DIRCOP
}

CONSTRU(){
	dialog								\
	--msgbox "Desculpe o transtorno, estamos em construção!"	\
	6 80
	INICIO
}

INICIO(){
	ESCOLHA=$( dialog			\
			--stdout		\
			--nocancel		\
			--menu "Opções iniciais"\
			10 0 0			\
			1 Arquivos		\
			2 Usuários		\
			3 Redes			\
			4 Dispositivos		\
			5 Tarefas		\
			6 SAIR )

case $ESCOLHA in
	1) GARQ ;;
	2) CONSTRU ;;
	3) CONSTRU ;;
	4) CONSTRU ;;
	5) CONSTRU ;;
	6) exit 0 ;;
	*)echo "Opção invalida"; XXX;
esac
}

INICIO

