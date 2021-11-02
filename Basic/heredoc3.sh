#!/bin/bash

cat << "mycommands" > file.txt
The current working directory is: $PWD
You're logged in as: $(whoami)
mycommands
