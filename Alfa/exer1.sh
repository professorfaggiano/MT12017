#!/bin/bash
	
	#################################################
	#		Cinco Exercicios		#
	# 	  Desenvolvedor: Grupo Alpha		#
	#     Integrantes: Alexandre, Nicolas, Patrick	#
	#		Sayyid e Tarcisio		#
	#		  Prof° Thales			#
	#	 Disciplina: Fundamentos de Programação #
	#    Data do desenvolvimento: 12/03/17		#
	#################################################

Total=0;
clear
echo  "Bem vindo ao programa da idade em dias :"
sleep 02
clear
echo  "Quantos anos voce tem ?"
read ANOS	
echo "Quantos meses voce tem ?"
read MESES
echo "Quantos dias voce tem ? "
read DIAS

let IDADEA=$((ANOS * 365))
let IDADEB=$((MESES * 30))
TOTAL=$((IDADEA+IDADEB+DIAS))
echo "Sua idade expressa em dias é $TOTAL"
read x