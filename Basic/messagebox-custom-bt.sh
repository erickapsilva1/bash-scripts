#!/bin/bash
if whiptail --title "Type Installation" --yes-button "Full" --no-button "Custom" --yesno "Choose the type of installation: " --fb 10 50
then
  echo "You chose yes."
else
  echo "You chose no."
fi
