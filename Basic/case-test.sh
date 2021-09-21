#!/bin/bash
# Usando o comando case

local=escritório

case $local in
	quarto)
		echo "Você está no quarto";;
	cozinha)
		echo "Aqui é a cozinha";;
	sala)
		echo "Está na sala agora";;
	banheiro | lavanderia)
		echo "Foi ao banheiro ou à lavanderia";;
	escritório)
		echo "Você está trabalhando";;
	*)
		echo "Você está dentro da casa";;
esac

