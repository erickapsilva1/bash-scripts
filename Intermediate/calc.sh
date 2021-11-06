#!/bin/bash

rand(){
python3 << randomcode 
import random
print(random.randint(0, $1))
randomcode
}

sum(){
  echo $1 + $2 | bc 
}

pi=3.1415926

#let x=2**10
#((y=2**10))
#echo $x
#echo $y

#r=`rand 10`
#echo $((z=r+40))
#echo $((`rand 20` + 66))

#sum 6 6

