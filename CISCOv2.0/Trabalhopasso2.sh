#!/bin/bash
#II. Faça um programa para solicitar a quantidade de números inteiros a serem
lidos, em seguida ler os números e escrever o maior número dentre os
informados.
clear 
echo "Quantos numeros inteiros voce deseja digitar"
read QNT 
      while (( $QNT <= 0 )); do 
	echo  "Digite um numero positivo > que o 0"
	read QNT
      done
	echo "Digite um numero"
	 read MAIOR
	while (( $QNT > 0 )); do 
		echo "Digite um Numero"
		 read NUMERO
	    	   let QNT=( $QNT-1 ) 
			 if (( $NUMERO > $MAIOR )); then 
			 MAIOR=$NUMERO
		    	
			 fi
			 let QNT=( $QNT-1 ) 
	done 
echo "O maior numero e: $MAIOR"

      