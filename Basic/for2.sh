#!/bin/bash
# Arquivo que contém uma série de nomes
# um por linha, incluindo nomes com espaço

file=/home/erick/Documents/stars
IFSOLD=$IFS
IFS=$'\n'

for star in `cat $file`
do
	echo The star name is: $star
done
IFS=$IFSOLD

