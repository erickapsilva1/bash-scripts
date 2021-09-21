#!/bin/bash
#Copiar a listagem de um diretório para arquivos únicos
#de acordo com data e hora.
arq=`date +%d%m%y%H%M`
ls -la ~/ > log.$arq
