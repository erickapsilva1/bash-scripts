#!/bin/bash
# Verifica permissão de leitura em um arquivo

file=/etc/passwd

if [ -f $file ]
then
	echo "Arquivo existe. Testando se usuário tem permissão de leitura"
	if [ -r $file ]
	then
		echo "Possui permissão de leitura; Mostrando as últimas 5 linhas:"
		tail -5 $file
	else
		echo "Sem permissão de leitura."
	fi
else
	echo "Arquivo não encontrado."
fi
