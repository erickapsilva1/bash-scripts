#!/bin/bash
# Verificação do número de parâmetros
if [ $# -ne 1 ] 
then
  echo "Digite ao menos um valor."
else
  result=$[ $1 * 3 ]
  echo "O triplo de $1 é $result"
fi

