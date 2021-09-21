#!/bin/bash
# Iterando por todos os itens de um diretório

for item in ~/*
do
	if [ -d "$item" ]
	then
		echo O item $item é um diretório. 
	elif [ -f "$item " ] 
	then
		echo O item $item é um arquivo.
	fi
done

