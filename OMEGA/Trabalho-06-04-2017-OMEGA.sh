#!/bin/bash								  ###
#Grupo OMEGA								  ###
#Integrantes: Gabi, João, Marcos, Matheus Israel, Tiago Leal e Vitor Hugo.###
##############################################################################
sair(){
echo "Digite [ENTER] para sair"
read YYY
}
###########################################################################
exerc01(){
clear 
echo "Voce quer saber quantos dias voce tem em anos (A) ou meses (M)?"
read PER
if [ $PER == "A" ]; then 
	echo "Quantos anos voce tem: "
	read IDADE
	let QNT=($IDADE * 365)
	let MES=($QNT / 30)
	echo "Voce tem $QNT dias e $MES meses de vida. "	
else
	if [ $PER == "M" ]; then
		echo "Quantos meses voce tem: "
		read IDADE
		let QNT=($IDADE * 365)
		let QNT=($QNT / 12)
		echo "Voce tem $QNT dias de vida. "
	fi
fi

sair

}

#########################################################################
exerc02(){ 
clear
echo "digite um numero:"
read NUM
if (( $NUM == 10 )); then
	echo "Eh igual!"
fi
	if (( $NUM > 10 )); then
		echo "Eh maior que 10"
	fi
	if (( $NUM < 10)); then 
		echo "Eh menor que 10"
	fi
echo
sleep 1

sair

}
#########################################################################
exerc03(){ 
clear
echo "Digite um valor: "
read VAL
if (( $VAL >= 0 )); then
	echo "Seu numero eh positivo!"
else 
	if (( $VAL < 0 )); then
	let VAL=($VAL-1)
	echo "Seu numero eh negativo!"
	fi
fi

sair

}

#########################################################################
exerc04(){ 
echo "Em que ano voce está? "
read IDD
echo "Em que ano voce nasceu? "
read NAS
let VOTE=($IDD - $NAS)
if (( $VOTE >= 18 )); then
	echo "Voce tem $VOTE anos!"
	echo "Voce pode votar neste ano!"
else
	echo "Voce tem $VOTE anos!"
	echo "Voce nao tem idade para votar este ano!"
fi

sair

}
#########################################################################
exerc05(){ 
clear
echo -n "Digite o codigo do usuario: "
read COD
if (( $COD != 1234 )); then 
	echo "Usuario invalido"
else
	echo -n "Digite a senha:"
	read -s SEN
	if (( $SEN != 9999 )); then 
		echo "Senha Incorreta."
	else
		echo "Acesso Permitido."
	fi
fi

sair
}

#####################################################################	
VARI=0
while (( $VARI != 6 )); do 
	clear
	echo "Bem vindo!"
	echo "Escolha uma opção"
	echo "01-Exercicio-I"
	echo "02-Exercicio-II"
	echo "03-Exercicio-III"
	echo "04-Exercicio-IV"
	echo "05-Exercicio-V"
	echo "06-Sair"
	read VARI

	(( $VARI == 1 )) && exerc01
	(( $VARI == 2 )) && exerc02
	(( $VARI == 3 )) && exerc03
	(( $VARI == 4 )) && exerc04
	(( $VARI == 5 )) && exerc05

done