#!/bin/bash

# Check if string is an URL

regex='(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'
string='https://visie.com.br/'

if [[ $string =~ $regex ]]
then
  echo 'Valid link'
else
  echo 'Invalid link'
fi
