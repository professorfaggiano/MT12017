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

echo "Digite o ano atual:"
read ano_atual
echo

echo "Digite o ano de seu nascimento"
read nasc
echo

let res=( $ano_atual - $nasc )

if (( $res >= 18 && $res <= 70  )); then
		echo "Possui voto obrigatorio"
		echo	
fi
	if (( $res  >= 16 && $res < 18 || $res > 70 )); then
		echo "Voto facultativo"
		echo
	else
		if (( $res < 16 ));then
		echo " Voce nao pode votar"
		echo
		fi
 	fi
read x
