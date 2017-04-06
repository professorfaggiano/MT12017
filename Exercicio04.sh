#!/bin/bash
clear
echo
echo
echo "Que ano vc esta"
read ATUAL
echo "Que ano vc nasceu "
read ANO
if (( $ANO <= 2001 )); then
	echo "Voce pode votar"
else
	echo "Vc nao pode votar"
fi
