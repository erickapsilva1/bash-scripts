#!/bin/bash

items=$(dialog --radiolist "Select the color: " 15 30 4 \
"Green" "" OFF \
"Blue" "" OFF \
"Yellow" "" ON \
"Purple" "" OFF --stdout)

echo $items

