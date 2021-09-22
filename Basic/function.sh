#!/bin/bash

function message {
  echo "Bash training."
}

count=1
while [ $count -le 10 ]
do
  message
  count=$[ count+1 ]
done

echo "Function has been executed successfully."
