#!/bin/bash
#Show website's feed
if [ -z $1 ]; then 
  echo Please enter a feed URL.;
else
  curl $1 | grep "<title>" | tail -n +2 | sed -e "s/title/p/g"
fi

