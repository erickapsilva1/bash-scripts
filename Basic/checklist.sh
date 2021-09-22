#!/bin/bash

cities=$(whiptail --title "Cities List" --checklist --fb "Which cities do you want to visit?" 15 50 5 \
"London" "England" ON \
"Berlin" "Germany" OFF \
"Toronto" "Canada" OFF \
"Abu Dhabi" "United Arab Emirates" OFF\
"Beijing" "China" OFF 3>&1 1>&2 2>&3)
sts=$?
if [ $sts = 0 ]
then
  echo "Chosen cities were: " $cities
else
  echo "Cancelled..."
fi
