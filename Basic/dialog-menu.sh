#/bin/bash

system=$(dialog --menu "Choose OS: " 20 35 15 \
1 "Linux" \
2 "BSD" \
3 "Solaris" \
4 "Android" --stdout)

