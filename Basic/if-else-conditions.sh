#!/bin/bash
#Testar comparações compostas.

if [ $USER = sophie ] && [ -w $HOME/.bashrc ]
then
	echo "O usuário $USER tem permissão para alterar o arquivo."
else
	echo "O usuário $USER não pode alterar o arquivo agora."
fi

