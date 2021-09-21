#!/bin/bash
#Testa a não-igualdade entre strings
fruta=limão
if [ $fruta != banana ]
then
	echo "A fruta não é banana, é $fruta."
else
	echo "A fruta é $fruta."
fi

