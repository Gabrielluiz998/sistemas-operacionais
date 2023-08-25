#!/bin/bash
echo 'Digite a nota do 1° bimestre:';
read nota1
echo 'Digite a nota do 2° bimestre:';
read nota2;

if[$nota1 -lt 6] && [ $nota2 -lt 6]; then
	echo 'Você não alcançou a media';
	echo 'Digite a nota da recuperação:';
	read nota_rs1
		if[$nota1 -ge $nota2]; then
			$nota2 = $nota_rs1
		else 
			$nota1 = $nota_rs1
		fi
fi
elif[$nota1 -lt 6] && [$nota2 -ge 6]; then
	$nota1 = $nota_rs1
fi
elif[$nota2 -lt 6] && [$nota1 -ge 6]; then
	$nota2 = $nota_rs1
fi
else
	echo 'Digite a nota do 3° bimestre:';
	read nota3
	echo 'Digite a nota do 4° bimestre:';
	read nota4

	if[$nota3 -lt 6] && [$nota4 -lt 6]; then
	echo 'Você não alcançou a media';
	echo 'Digite a nota da recuperação:';
	read nota_rs2
		if[$nota3 -ge $nota4]; then
			$nota4 = $nota_rs2
		else
			$nota3 = $nota_rs2
		fi
	elif[$nota3 -lt 6] && [$nota4 -ge 6]; then
		$nota3 = $nota_rs2
	elif[$nota4 -lt 6] && [$nota3 -ge 6]; then
		$nota4 = $nota_rs2
fi
 
