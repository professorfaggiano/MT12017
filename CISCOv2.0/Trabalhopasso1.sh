#!/bin/bash
#I. Faça um programa que receba dois números inteiros quaisquer da entrada
de dados e em seguida apresente todos os números impares existentes
entre o intervalo formado pelos números informados.
clear 
echo "Digite um numero"
read n1
echo "Digite mais um numero"
read n2
echo
echo
if (( $n1 < $n2 ));  then
            while (( $n1 < n2  )); do 
            if  (( $n1%2 == 1 )); then 
            VAR=$n1 
            echo "$VAR e o numero impar"
            fi 
            let n1=($n1+1)
            done 
else 
            while (( $n2<n1 )); do 
            if  (( $n2%2==1 )); then 
            VAR=$n2 
            echo "$VAR e o numero impar"
            fi 
            let n2=($n2+1)
            done 
fi 

