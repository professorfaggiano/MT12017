#!/bin/bash
	
	#################################################
	#		Cinco Exercicios		#
	# 	  Desenvolvedor: Grupo Alpha		#
	#     Integrantes: Alexandre, Nicolas, Patrick	#
	#		Sayyid e Tarcisio		#
	#		  Prof� Thales			#
	#	 Disciplina: Fundamentos de Programa��o #
	#    Data do desenvolvimento: 12/03/17		#
	#################################################
clear
echo "Digite um numero"
read n
if (( $n > 10 )); then
	echo "O valor � maior que 10"
else
	echo "O valor � menor que 10"
fi
read x