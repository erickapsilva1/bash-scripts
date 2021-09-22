#!/bin/bash
name=$(whiptail --title "Username Input" --inputbox "Type your name: " --fb 10 60 3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then
  echo "Typed name: " $name
else
  echo "Entry cancelled by user"
fi
