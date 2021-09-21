#!/bin/bash
# Teste de if-then aninhado
h="/home/"
var1="erick"
var2="priscila"

if ls /$h$var1
then
	echo "Diretório do usuário $var1 encontrado."
elif ls /$h$var2
then
	echo "Diretório do usuário $var2 encontrado."
else
	"Nenhum dos dois diretórios foi encontrado."
fi
