#!/bin/bash
clear
echo
echo
echo "Digite um numero"
read NUM
if (( $NUM > 10 )); then
	echo "o $NUM  é maior que 10."
else
	echo "o $NUM nao e maior que 10."
fi
