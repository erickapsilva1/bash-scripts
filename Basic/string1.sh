#!/bin/bash
# Testa igualdade entre strings
nome=erick
if [ $USER = $nome ]
then
	echo "Olá $nome"
fi
