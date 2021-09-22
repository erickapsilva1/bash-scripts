#!/bin/bash
# Usando o timer

echo Type your name:
if read -t 4 name
then
  echo "Hi $name, how's it going?"
else
  echo "Sorry, you're late..."
fi

