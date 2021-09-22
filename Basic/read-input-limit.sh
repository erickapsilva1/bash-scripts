#!/bin/bash
# Le um caractere 

echo "Do you want to proceed?"
read -n1 anwser
case $anwser in
  Y|y|S|s) echo
    echo "You've choose to continue.";; 
  N|n) echo
    echo "Cancelled.";;
  *) echo "Invalid option. Type only y/s or n"
esac
