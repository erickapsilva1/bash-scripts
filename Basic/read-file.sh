#!/bin/bash
# Ler dados de um arquivo de texto.

count=1
cat ~/the-waste-land.txt | while read line
do
  echo Line $count : $line
  count=$[ $count+1 ]
done
