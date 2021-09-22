#!/bin/bash

function square {
  read -p "Type a number between 20 and 30: " number
  echo $[ $number * $number ]
}

svalue=`square`

echo "Square root: $svalue"

