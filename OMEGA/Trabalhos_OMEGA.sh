#!/bin/bash
#################################################### Grupo OMEGA ####################################################################
########################## Integrantes:Gabi, Jo�o, Marcos, Matheus Israel, Tiago Leal e Vitor Hugo. #################################
########################################### 		Fun��o		 ############################################################
aguarde(){
	echo "Pressione uma tecla para retonar ao menu."
	read presione
}
###########################################	Script dos programas.       ##########################################################
trabalho01(){
clear
DIG=1 
while (($DIG != 0)); do
echo "Digite um numero:"
read N1
echo "Digite outro numero:"
read N2
echo
DIG=$N1
if (($N1<$N2)); then
	while (( $N1<$N2 )); do
	if (( $N1%2==1 )); then
	VAR=$N1
	echo "$VAR eh numero impar" 
	fi 
	let N1=($N1+1)
	done
else 
	while (( $N2<$N1 )); do 
	if (( $N2%2==1 )); then
	VAR= $N2
	echo "$VAR eh numero impar" 
	fi 
	let N2=($N2+1)
	done
fi
	echo "Para sair do programa presione (0)"
	read DIG
	if (($DIG != 0)); then
	N1=0
	N2=0
	fi
done

	aguarde
}
###############################################------------------##########################################################
trabalho02(){
	clear
	echo "Quantos numeros inteiros voce deseja coletar?"
	read QNT
	while (( $QNT <= 0 )); do
		clear
		echo "Digite um numero positivo > que 0"
		read QNT
	done
	echo "Digite um numero"
	read MAIOR
	let QNT=($QNT-1)
	while (( $QNT > 0 )); do
		echo "Digite um numero"
		read NUM
		if (( $NUM > $MAIOR )); then
			MAIOR=$NUM
		fi
		let QNT=($QNT-1)		
	done
	echo "O maior numero eh: $MAIOR"

	aguarde
}
############################################------------------##########################################################
trabalho03(){ 
clear
SALARIO=1
while (($SALARIO !=0)); do
	echo -n "Digite um sal�rio qualquer: "
	read SALARIO
TEMPZ=$(echo "scale=2; $SALARIO >= 500.00" | bc)
	if (($TEMPZ == 1)); then
	TEMPSAL=$(echo "scale=2; $SALARIO*1.10" | bc)
	echo "Seu sal�rio � $TEMPSAL"
	else
	TEMPSAL=$(echo "scale=2; $SALARIO*1.20" | bc)
	echo "Seu sal�rio � $TEMPSAL"
	fi
done
	
	aguarde
}
#############################################------------------##########################################################
trabalho04(){
	CONTAR=1
while (( $CONTAR != 0 )); do
	echo "Digite um numero qualquer."
	read NUMER
	if (( $NUMER > 0 )); then
		let FIRST=($FIRST+1)
		if (( $FIRST == 1 )); then
			NUMBER=$NUMER
		fi
		if (( $NUMBER == $NUMER )); then
			let CONTE=($CONTE+1)
		fi
		if (( $NUMER < $NUMBER )); then
				CONTE=1
			NUMBER=$NUMER	
			fi
		fi
	 CONTAR=$NUMER
	 done
	 echo "O menor n�mero digitado foi $NUMBER,e foi digitado $CONTE vez(es)"

	aguarde
}
###########################################------------------##########################################################
trabalho05(){
	MENOR=0
MAIOR=0
MEDIO=0
NUM=1
while (($NUM != 0)); do
	echo "Digite um sal�rio"
	read SAL
	TEMP=$(echo "scale=2; $SAL > $MENOR || $SAL > $MEDIO || $SAL > $MAIOR" | bc)
	if (($TEMP == 1)); then
		TEMP_S=$SAL

	fi
TEMP=$(echo "scale=2; $TEMP_S > $MAIOR" | bc)
	if (($TEMP == 1)); then
		TEMP_MAIOR=$MAIOR
		MAIOR=$TEMP_S
	else
		TEMP_MAIOR=$TEMP_S
	fi 
TEMP=$(echo "scale=2; $TEMP_MAIOR > $MEDIO && $TEMP_MAIOR < $MAIOR" | bc)
	if (($TEMP == 1)); then
		TEMP_MEDIO=$MEDIO
		MEDIO=$TEMP_MAIOR
	else
		TEMP_MEDIO=$TEMP_MAIOR
	fi
TEMP=$(echo "scale=2; $TEMP_MEDIO > $MENOR && $TEMP_MEDIO < $MEDIO" | bc)
	if (($TEMP == 1)); then
		MENOR=$TEMP_MEDIO
	fi
TEMP=$(echo "scale=2; $SAL > 0.00" | bc) 
	if (($TEMP == 0)); then
		NUM=0
	else
		NUM=1000
	fi
done
TEMP=$(echo "scale=2; $MENOR > 0.00" | bc)
if (($TEMP == 1)); then
	echo "Esse eh o menor numero: $MENOR"
fi
TEMP=$(echo "scale=2; $MEDIO > 0.00" | bc)
if (($TEMP == 1)); then
	echo "Esse eh o medio: $MEDIO"
fi
TEMP=$(echo "scale=2; $MAIOR > 0.00" | bc)	
if (($TEMP == 1)); then
	echo "Esse eh o maior numero: $MAIOR"
fi

	aguarde
}
#########################   Menu de op��es onde o usu�rio seleciona o programa.	##############################
VAR=0
while (( $VAR != 6 )); do
	clear
	echo "Bem vindo ao menu de op��es"
	echo "Digite uma opcao"
	echo "1) Trabalho 01"
	echo "2) Trabalho 02"
	echo "3) Trabalho 03"
	echo "4) Trabalho 04"
	echo "5) Trabalho 05"
	echo "6) Sair"
	read VAR

	(( $VAR == 1 )) && trabalho01
	(( $VAR == 2 )) && trabalho02
	(( $VAR == 3 )) && trabalho03
	(( $VAR == 4 )) && trabalho04
	(( $VAR == 5 )) && trabalho05
done