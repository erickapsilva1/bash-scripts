#!/bin/bash
#Realiza cálculo usando a calculadora do bash
var1=100
var2=30
var3=`echo "scale=4; $var1 / $var2" | bc`
echo "Resultado: " $var3
