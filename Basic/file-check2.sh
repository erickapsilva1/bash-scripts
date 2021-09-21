#!/bin/bash
# Verifica se um objeto é um arquivo

if [ -e $HOME ]
then
	echo "O objeto existe. Verificando se é arq ou dir..."

	if [ -f $HOME ]
	then
		echo "É um arquivo"
	else
		echo "É um diretório"
	fi
else
	echo "Objeto não encontrado"
fi

