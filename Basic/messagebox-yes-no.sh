#!/bin/bash
if whiptail --title "Testing Yes/No box" --yesno "Choose option Yes or No." --fb 10 50
then
  echo "You chose Yes! Exit status: $?."
else
  echo "You chose No! Exit status: $?."
fi

