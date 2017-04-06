#!/bin/bash
	#################################################
	#		     Prova			#
	# 	  Desenvolvedor: Grupo Alpha		#
	#     Integrantes: Alexandre, Nicolas, Patrick	#
	#		Sayyid e Tarcisio		#
	#		  Prof° Thales			#
	#	 Disciplina: Fundamentos de Programação #
	#    Data do desenvolvimento: 06/04/17		#
	#################################################
clear
cod=1234
senha=9999
echo "Digite o seu código de acesso:"
read c
if (( $c == $cod )); then
	echo "Agora digite sua senha:"
	read s
	if (( $s == $senha )); then
		echo "Acesso permitido"
	else
		echo "Senha incorreta"
	fi
else
	echo "Usuario invalido"
fi
read x