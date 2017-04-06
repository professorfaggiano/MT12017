#!/bin/bash
read IDADE, read D read M 
clear
echo
echo
echo "Que dia vc nasceu?"
read NASCEU
echo "Que mes?"
read MES
echo "Que ano?"
read ANO
echo "Voce nasceu em:", " $NASCEU,"/",$DIAS","$MES","/",$ANO"
$IDADE <- 2012 - $ANO
echo "A quantidade de  mes e:",$M
$D<- $IDADE * 365
echo "A quantidade de Dias sao:",$D

