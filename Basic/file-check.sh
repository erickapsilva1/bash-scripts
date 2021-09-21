#!/bin/bash
#Verifica se o diretório HOME do usuário existe e mostra seu conteúdo
if [ -d $HOME ]
then
	echo "Seu diretório HOME existe e o conteúdo é: "
	cd $HOME
	ls -l
else
	echo "Diretório não encontrado"
fi

