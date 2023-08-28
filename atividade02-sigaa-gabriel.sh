#!/bin/bash
 
echo 'Digite a nota do 1° bimestre:  ';
read nota1
 
echo 'Digite a nota do 2° bimestre: ';
read nota2
 
soma=$(($nota1 + $nota2))
 
 
if [ $soma -lt 12 ]; then
        echo 'Você não passou no 1° semestre!'
        echo 'Digite sua nota de recuperação: '
        read nota_rs1
 
        if [ $nota1 -lt $nota2 ]; then
                nota1=$nota_rs1
        else
                nota2=$nota_rs1
        fi
fi
 
echo 'Digite a nota do 3° bimestre: ';
read nota3
 
echo 'Digite a nota do 4° bimestre: ';
read nota4
 
soma=$((nota3 + nota4))
if [ $soma -lt 12 ]; then
        echo 'Você não passou no 2° semestre!'
	echo 'Digite a nota da recuperação: '
        read nota_rs1
 
        if [ $nota3 -lt $nota4 ]; then
                nota3=$nota_rs1
        else
                nota4=$nota_rs1
        fi
fi
 
soma=$(($nota1 + $nota2 + $nota3 + $nota4))
media=$(($soma / 4))
 
if [ $soma -ge 24 ]; then
        echo "Média: $media"
        echo "Situação: aprovado"
 
elif [ $soma -ge 16 ] && [ $soma -lt 24 ]; then
        echo "Digite a quantidade de faltas: ";
        read quantFaltas
 
        if [ $quantFaltas -gt 25 ]; then
                echo "Média: $media"
                echo "Situação: reprovado"
        else
                echo "Você foi para a recuperação final!"
                echo "Digite a nota da prova final: "
                read recFinal
 
                mediaFinal=$[(($media * 4) + ($recFinal * 6)) / 10]
 
		if [ $mediaFinal -ge 6 ]; then
                        echo "Média: $mediaFinal"
                        echo "Situação: aprovado"
                else
                        echo "Média: $mediaFinal"
                        echo "Situação: reprovado"
                fi
        fi
else
        echo "Média: $media"
        echo "Situação: reprovado"
fi