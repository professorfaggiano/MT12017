#!/bin/bash 
#IV. Crie um programa para ler n�meros inteiros at� que seja informado o valor 0,
em seguida escrever o menor valor lido e quantas vezes este ocorreu nos
n�meros lidos.
clear
dig=1
qnt=1
echo "Digite um numero"
read dig
menor=$dig
while (( $dig != 0 )); do
	echo "Digite um numero"
	read dig
	if [ $dig != 0 ]; then
		if (( $dig <= $menor )); then
			if (( $dig < $menor )); then
			menor=$dig
			qnt=1
		else
			let qnt=($qnt+1)
			fi
		fi
	fi
done
echo "O menor numero eh $menor e foi digitado $qnt vez(es)"