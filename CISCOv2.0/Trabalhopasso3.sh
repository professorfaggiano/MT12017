#!/bin/bash 
#III. Crie um programa para ler os salários indefinidamente para calcular um
aumento, até que seja informado zero. Sabe-se que os funcionários que
possuem salário atual até R$ 500,00 terão um aumento de 20%, os demais
terão aumento de 10%.
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
