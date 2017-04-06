#!/bin/bash
clear
echo
echo
echo "Digite um numero"
read NUM
if (( $NUM <= 0 )); then
	echo "Esse numero e positivo"
else
	echo "Esse numero e negativo"
fi
