#!/bin/bash
#Testar se a variÃvel possui conteÃdo
var1=banana
var2=''

if [ -n $var1 ]
then
	echo "Variável não está vazia, contém o valor $var1"
else
        echo "Variável está vazia."
fi

if [ -z $var2 ]
then
        echo "Variável está vazia."
else
	echo "Variável não está vazia."
fi

