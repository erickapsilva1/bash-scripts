#!/bin/bash

while true ;do

  tput clear
  echo
  sudo service apache2 status | grep active | sed -e 's/^[[:space:]]*//'
  echo "$(tput setab 7)$(tput setaf 0)                    "
  echo " r - restart        "
  echo " s - start          "
  echo " p - stop           "
  echo " x - exit           "
  echo "                    "
  tput sgr0

  read -n 1 -s option

  case $option in
    p|P)
      sudo service apache2 stop
    ;;
    r|R)
      sudo service apache2 restart
    ;;
    s|S)
      sudo service apache2 start
    ;;
    x|X)
      exit 0
    ;;
    *)
      echo Invalid option. 
      read -n 1 -t 1
    ;;
  esac

done
