#!/bin/bash 
#III. Crie um programa para ler os sal�rios indefinidamente para calcular um
aumento, at� que seja informado zero. Sabe-se que os funcion�rios que
possuem sal�rio atual at� R$ 500,00 ter�o um aumento de 20%, os demais
ter�o aumento de 10%.
cont=0 
while (( $cont != 2 )); do 
      echo "Escolha uma opcao:"
      echo "1- Ler salarios"
      echo "2- Sair"
      echo -n "entre com opcao: "
      read cont
            if (($cont ==1 )); then 
               echo "Digite seu salario" 
               read SAL
               if (( $SAL <= $500 )); then 
               SAL=$(echo "scale=20: $SAL*1.20" | bc )
               echo "O seu novo salaro e: " $SAL
           else
               SAL=$(echo "scale=20: $SAL*1.10" | bc )
               echo "O seu novo salario e: $SAL"
               fi
          fi
done 
