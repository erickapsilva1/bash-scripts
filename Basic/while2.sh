#!/bin/bash
# Testando o comando while

var=100
num=''
while [ $var -gt 0 ]
do
	num="$num $var"
	var=$[ $var-1 ]
done
echo $num
