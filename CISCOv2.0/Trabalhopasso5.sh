#!/bin/bash 
#V. Crie um programa para ler salários até que seja informado zero e escreva,
em ordem crescente, os três maiores valores dos salários lidos.
clear
dig=1
pri=0
seg=0
ter=0
clear
while (( $dig != 0 )); do
echo "Digite um Salario"
read dig
sal=$dig
[ $sal == $pri ] && let sal=(ter-1)
[ $sal == $seg ] && let sal=(ter-1)
if (( $sal > $pri )); then
	ter=$seg
	seg=$pri
	pri=$sal
else
	if (( $sal > $seg )); then
		ter=$seg
		seg=$sal
	else
		if (( $sal > $ter )); then
		ter=$sal
		fi
	fi
fi
done
echo "Os 3 maiores Salarios sao respectivamente: $ter, $seg, $pri"
echo "Disponha..."